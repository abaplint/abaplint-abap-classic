# Plan: run abaplint rules from the Code Inspector checks

## Goal

Each of the 140 `ZCL_LNC_*` checks in `src/checks` should run its abaplint rule (`ZCL_LNT_*` in `src/generated`) against the object Code Inspector hands it, and report every abaplint issue as a Code Inspector finding.

The checks stay thin. Everything they share (reading source, building the registry, running the rule, filtering issues, mapping issues back to includes) goes in `ZCL_LNT_UTILS`.

## Current state

- `scripts/checks.mjs` generates the checks. Each one only has a constructor that sets `myname`, `description`, `category`, `c_rule` and the object types from `zcl_lnt_utils=>object_types( )`.
- The checks are regenerated on every `npm run abapiti`, so **all check changes go into the template in `scripts/checks.mjs`**, never into `src/checks/*.abap` by hand.
- `ZCL_LNT_UTILS` has only `object_types( )`: PROG, CLAS, INTF, FUGR.
- Relevant generated API, all supported by the current ABAPiti output:
  - `NEW zcl_lnt_registry( )`, `add_file( )`, `parse( )`, `get_first_object( )` / `find_8f95( )`
  - `NEW zcl_lnt_memory_file( i_filename = ... i_raw = ... )`
  - `zif_lnt_rule~initialize( reg )` and then `zif_lnt_rule~run( obj )`, which returns an array of `zcl_lnt_issue`
  - `NEW zcl_lnt_rules_runner( reg )->exclude_issues( issues )`, which handles pseudo comments, pragmas and `exclude`
  - `zcl_lnt_issue`: `get_message( )`, `get_key( )`, `get_filename( )`, `get_start( )->row/col`, `get_severity( )`
- Not supported (they raise `zlnt_exception_un_5f2d02892fe8`, a subclass of `cx_no_check`): `registry->find_issues_object`, `rules_runner->run_rules`, `config->read_by_rule`. **Every** rule class contains at least one unsupported path, so any rule can raise it at runtime depending on the input.
- In open-abap-ci, `cl_ci_test_root->inform` and `run` are empty stubs (`RETURN`).

## Design

### Call flow

```
Code Inspector
  └─ ZCL_LNC_<rule>->run( )                       (generated, thin)
       └─ zcl_lnt_utils=>run_rule( io_rule        = NEW zcl_lnt_<rule>( )
                                   iv_object_type = object_type
                                   iv_object_name = object_name )
            ├─ read_sources( )     → abapGit-style files plus a line map
            ├─ get_registry( )     → parsed zcl_lnt_registry (cached per object)
            ├─ rule->initialize( reg )->run( obj )
            ├─ rules_runner->exclude_issues( )
            └─ map issues → ty_findings (include, line, column, kind, text)
       └─ LOOP findings → inform( )
```

### `ZCL_LNT_UTILS` public API

```abap
TYPES: BEGIN OF ty_finding,
         include TYPE program,      " sub object, e.g. ZCL_FOO=======CM001
         line    TYPE i,
         column  TYPE i,
         kind    TYPE c LENGTH 1,   " cl_ci_test_root=>c_error / c_warning / c_note
         code    TYPE sci_errc,     " 'ISSUE' or 'DUMP'
         text    TYPE string,
       END OF ty_finding,
       ty_findings TYPE STANDARD TABLE OF ty_finding WITH EMPTY KEY.

CLASS-METHODS object_types RETURNING VALUE(rt_types) TYPE string_table.  " exists
CLASS-METHODS run_rule
  IMPORTING io_rule            TYPE REF TO zif_lnt_rule
            iv_object_type     TYPE csequence
            iv_object_name     TYPE csequence
  RETURNING VALUE(rt_findings) TYPE ty_findings.
CLASS-METHODS set_source_reader                 " test seam
  IMPORTING ii_reader TYPE REF TO zif_lnt_source_reader.
```

Private helpers: `read_sources`, `get_registry`, `to_findings`, `map_severity`, `map_position`.

### Reading source: `ZIF_LNT_SOURCE_READER`

A small interface, so the real system and the transpiled unit tests can each supply source:

```abap
INTERFACE zif_lnt_source_reader PUBLIC.
  TYPES: BEGIN OF ty_file,
           filename TYPE string,         " abapGit name, e.g. zcl_foo.clas.abap
           source   TYPE string_table,
         END OF ty_file,
         ty_files TYPE STANDARD TABLE OF ty_file WITH EMPTY KEY,
         BEGIN OF ty_line_map,
           filename  TYPE string,
           from_row  TYPE i,             " row in the abaplint file (1-based)
           to_row    TYPE i,
           include   TYPE program,
           first_row TYPE i,             " row in the include for from_row
         END OF ty_line_map,
         ty_line_maps TYPE STANDARD TABLE OF ty_line_map WITH EMPTY KEY.
  METHODS read
    IMPORTING iv_object_type TYPE csequence
              iv_object_name TYPE csequence
    EXPORTING et_files       TYPE ty_files
              et_line_map    TYPE ty_line_maps.
ENDINTERFACE.
```

The default implementation is `ZCL_LNT_SOURCE_READER`, which reads from the system with `READ REPORT`. File names follow abapGit: lower case, with `/` replaced by `#`.

| Type | Files built | Line map |
|------|-------------|----------|
| PROG | `<name>.prog.abap` from `READ REPORT <name>` | 1:1 to the program |
| INTF | `<name>.intf.abap` from the clif source, as for CLAS below | all rows to the `IU` include |
| CLAS | see below | see below |
| FUGR | `<name>.fugr.<include>.abap` for each include from `RS_GET_ALL_INCLUDES` on `SAPL<name>`, plus `<name>.fugr.saplname.abap` | 1:1 per include |

#### CLAS: same serialization as abapGit

The reader follows `ZCL_ABAPGIT_OO_SERIALIZER` (abapGit `src/objects/oo/zcl_abapgit_oo_serializer.clas.abap`), so abaplint sees exactly the files it sees when it checks an abapGit repository:

| File | Source | As in abapGit |
|------|--------|---------------|
| `<name>.clas.abap` | `cl_oo_factory=>create_instance( )->create_clif_source( <name> )->get_source( )`. This is the whole class (definition and implementation) in one piece. `CL_OO_FACTORY` is assumed to exist, so it is called statically and there is no fallback. `version = 'A'` is not passed: the open-abap-core signature only has `clif_name`. Check on a real system that leaving it out gives the active version; if not, add `version` to open-abap-core and pass it | `serialize_abap_new` |
| `<name>.clas.locals_def.abap` | `READ REPORT` of the CCDEF include. The name is built from `progstruc`: the class name padded with `=`, plus `seop_ext_class_locals_def`. A missing include is not an error | `read_include`, `serialize_locals_def` |
| `<name>.clas.locals_imp.abap` | the same, for CCIMP (`seop_ext_class_locals_imp`) | `serialize_locals_imp` |
| `<name>.clas.macros.abap` | the same, for CCMAC (`seop_ext_class_macros`) | `serialize_macros` |
| `<name>.clas.testclasses.abap` | the same, for CCAU (`seop_ext_class_testclasses`). abapGit first asks `SEO_CLIF_GET` for `with_unit_tests`. This plan drops that call and relies on `READ REPORT` returning `sy-subrc = 4` plus `calculate_skip_testclass` | `serialize_testclasses` |

The rules for leaving a file out also follow abapGit:

- `locals_def`, `locals_imp` and `macros` are left out when every line starts with `*"*`, i.e. the include only holds the generated comments (`reduce`).
- `testclasses` is left out when `calculate_skip_testclass` would skip it: no lines, a single empty or `*"*` or `*` line, or one `*"*` line followed by an empty line.
- Test classes are otherwise always included (see Decisions).

The reader is a port of these methods into `ZCL_LNT_SOURCE_READER`, not a call into abapGit, because abapGit is not a dependency. abapGit's fallback for releases without `CL_OO_FACTORY` (`serialize_abap_old`, `remove_signatures`) is not ported. Credit abapGit in a comment.

**Line map for `<name>.clas.abap`.** The clif source is generated, so it does not match the include layout line by line. The reader scans it after reading:

- each `METHOD <m>.` … `ENDMETHOD.` block maps to that method's CMxxx include (`cl_oo_classname_service=>get_method_include( )`), with row 1 of the block = row 1 of the include;
- definition rows map by section: from `CLASS ... DEFINITION` to `PROTECTED SECTION.` to CU, from there to `PRIVATE SECTION.` to CO, and from there to the `ENDCLASS.` of the definition to CI. Rows are counted from the start of each section, so they are approximate if the clif source reformats the definition;
- any other row (for example `CLASS ... IMPLEMENTATION.` and the final `ENDCLASS.`) maps to CU row 1.

The other four files map 1:1 to their includes (CCDEF, CCIMP, CCMAC, CCAU).

#### Gaps in open-abap

This repo is syntax checked and unit tested against open-abap-core and open-abap-ci, so every system API the reader calls statically has to exist there:

| API | In open-abap? | Plan |
|-----|---------------|------|
| `CL_OO_FACTORY`, `IF_OO_CLIF_SOURCE` | yes, in open-abap-core (`src/oo`); it reads table `REPOSRC` | use as is |
| `READ REPORT` | yes, in the transpiler runtime; it reads `REPOSRC` | use as is |
| `SEO_CLIF_GET` | no | not needed, see testclasses above |
| `CL_OO_CLASSNAME_SERVICE=>get_method_include` | no | add to open-abap-core; on open-abap it can read `TMDIR`, or build `CMxxx` names |
| `RS_GET_ALL_INCLUDES` (FUGR) | no | add to open-abap-core, or have the reader read `TFDIR` and the `L<name>TOP`/`UXX` naming itself |

Under the transpiler, both `CL_OO_FACTORY` and `READ REPORT` read `REPOSRC`. That means the real `ZCL_LNT_SOURCE_READER` can be unit tested by inserting `REPOSRC` rows in the test setup, and does not need to be faked.

### Registry and caching

Code Inspector runs every check against the same object one after the other. Parsing is the expensive step, so `get_registry` keeps the last parsed object in class data:

```abap
CLASS-DATA: gv_cache_key TYPE string,            " type && name
            go_cache_reg TYPE REF TO zcl_lnt_registry,
            gt_cache_map TYPE zif_lnt_source_reader=>ty_line_maps.
```

- On a cache miss: read the sources, `add_file( NEW zcl_lnt_memory_file( ... ) )` for each file, then `parse( )` and store the result.
- Find the object with `reg->find_8f95( i_name = ... i_type_9913 = ... )`, falling back to `get_first_object( )`.
- Check during step 3 that running a rule does not change the registry. If it does, cache the file list only and reparse each time.

### Running the rule

```abap
TRY.
    DATA(lo_issues) = io_rule->initialize( lo_reg )->run( lo_obj ).
    lo_issues = NEW zcl_lnt_rules_runner( lo_reg )->exclude_issues( lo_issues ).
  CATCH zlnt_exception_un_5f2d02892fe8.
    " unsupported in the ABAPiti output: drop silently, no findings
    RETURN.
  CATCH cx_root INTO DATA(lx_error).
    " one finding, code 'DUMP', kind c_error, text = lx_error->get_text( )
ENDTRY.
```

A failure in one rule must never stop the inspection. Unsupported paths are dropped without a finding, so users never see ABAPiti gaps; step 9 tracks them instead.

The rule keeps the default configuration its constructor creates. `set_config` is not called, because `read_by_rule` is unsupported (see Later).

### Mapping issues to findings

- `get_filename( )` plus `get_start( )->row` are looked up in the line map, giving the include and the row inside that include. `col` passes through unchanged.
- Severity mapping: `Error` → `c_error`, `Warning` → `c_warning`, `Info` → `c_note`, anything else → `c_warning`.
- Text: `get_message( )`.
- Issues whose file has no line map entry are reported on the main include, row 1.

### Generated check template (`scripts/checks.mjs`)

Add `run` and fill `scimessages` in the constructor. One message code, `ISSUE` with text `&1`, carries every abaplint message, plus `DUMP` for unexpected errors:

```abap
CLASS zcl_lnc_abapdoc DEFINITION PUBLIC INHERITING FROM cl_ci_test_root CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS c_rule TYPE string VALUE `abapdoc`.
    METHODS constructor.
    METHODS run REDEFINITION.
ENDCLASS.

CLASS zcl_lnc_abapdoc IMPLEMENTATION.
  METHOD constructor.
    ... existing ...
    scimessages = zcl_lnt_utils=>scimessages( myname ).
  ENDMETHOD.

  METHOD run.
    LOOP AT zcl_lnt_utils=>run_rule(
        io_rule        = NEW zcl_lnt_abapdoc( )
        iv_object_type = object_type
        iv_object_name = object_name ) INTO DATA(ls_finding).
      inform( p_sub_obj_type = 'PROG'
              p_sub_obj_name = ls_finding-include
              p_line         = ls_finding-line
              p_column       = |{ ls_finding-column }|
              p_kind         = ls_finding-kind
              p_test         = myname
              p_code         = ls_finding-code
              p_param_1      = ls_finding-text ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
```

`zcl_lnt_utils=>scimessages( )` returns the two message definitions, so the template stays small. The check's only rule-specific code is `NEW zcl_lnt_<rule>( )`. The script already knows the rule class name, so it can fill that in directly.

## Steps

1. **Utils skeleton:** add `ty_finding(s)`, `run_rule`, `scimessages`, `map_severity`, and the `zif_lnt_source_reader` interface plus `set_source_reader`. Run `abaplint` and confirm it is clean.
2. **Fake reader and first unit test:** add a local test double in `zcl_lnt_utils.clas.testclasses.abap` that returns fixed files. Test `run_rule( NEW zcl_lnt_double_space( ) ... )` on a PROG with a known issue, asserting line, column, kind and text. Run with `npm run unit`.
3. **Registry cache:** add `get_registry` and its cache. Test that two different rules on the same object both report correctly, and that changing the object invalidates the cache.
4. **Error handling:** test that a rule hitting an unsupported path returns no findings instead of raising. Find a rule plus input that triggers it.
5. **Pseudo comments and pragmas:** test that `"#EC` and `##` suppression works through `exclude_issues`.
6. **Real source reader:** add `ZCL_LNT_SOURCE_READER` for PROG, then CLAS (the abapGit port plus the line map), then INTF (reusing the clif source part), then FUGR. Port abapGit's `calculate_skip_testclass` together with its unit tests from `zcl_abapgit_oo_serializer.clas.testclasses.abap`, and add tests for `reduce`, which abapGit does not test. Unit test the reader by inserting class pool, include and method include sources into `REPOSRC`, then asserting the files and the line map. Add the missing open-abap APIs (see Gaps in open-abap) to open-abap-core first.
7. **Template:** update `scripts/checks.mjs`, regenerate with `node scripts/checks.mjs && abaplint --fix`, then run `abaplint` on the whole repo.
8. **End-to-end smoke test:** a unit test that instantiates one generated check, sets `object_type`/`object_name`, and calls `run( )`. Because `inform` is a stub in open-abap-ci, either:
   - contribute a change to open-abap-ci so `inform` raises the `message` event, and assert on it with an event handler, or
   - assert only that `run( )` does not raise, and rely on the utils tests for content.
9. **Survey:** run every rule directly (`initialize( )->run( )`, bypassing `run_rule` so the unsupported exception is visible) against a small set of sample objects in a test, and record which rules raise it or dump. Track the list in this file and feed it back to the ABAPiti scope.

## Later

- **Configuration:** expose the rule's conf fields as Code Inspector attributes (`get_attributes`/`put_attributes`, `if_ci_test~query_attributes`) and push them into the rule. `read_by_rule` is unsupported, so the conf object has to be set directly, either through `set_config` once `zlnt_runtime_dyna_*` can be built, or by writing fields of the `zcl_lnt_<rule>_conf` instance.
- **ABAP version:** pass the system release to `zcl_lnt_config=>get_default( )` so version-dependent rules behave correctly. Check whether the unsupported branch in `get_default` is reachable.
- **XML metadata:** some rules may need `.prog.xml` (program vs include) or `.fugr.xml` (function module list). Generate minimal XML in the reader if the survey in step 9 shows they are needed.
- **Quick fixes:** `get_default_fix( )` is available, but Code Inspector has no use for it yet.

## Decisions

- **One shared message code:** `ISSUE` with text `&1`, carrying the abaplint message. No per-rule-key codes.
- **Unsupported paths are dropped:** a rule that raises `zlnt_exception_un_5f2d02892fe8` produces no findings and no note.
- **Test classes are checked:** the `.clas.testclasses.abap` include (CCAU) is always passed to abaplint, matching abaplint's own behaviour.
