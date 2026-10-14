# Plan: run abaplint rules from the Code Inspector checks

## Goal

Each of the 140 `ZCL_LNC_*` checks in `src/checks` should run its abaplint rule (`ZCL_LNT_*` in `src/generated`) against the object Code Inspector hands it, and report every abaplint issue as a Code Inspector finding.

The checks stay thin. Everything they share (reading source, building the registry, running the rule, filtering issues, mapping issues back to includes) goes in `ZCL_LNT_UTILS`.

## Status

Steps 1 to 9 are implemented. `npm run unit` runs 31 tests and `abaplint` is clean. Changes from the design below:

- **Registry config:** `NEW zcl_lnt_registry( )` without a config fails, because `zcl_lnt_config=>get_default` is unsupported (`src/config.ts:69`). `get_registry` passes `NEW zcl_lnt_config( <json> )` with complete `global` and `syntax` sections (version `v758`), so the default is never built. `zcl_lnt_config->get_version` is unsupported too, but parsing does not call it.
- **Cache:** the sources are read on every call, and the parsed registry is reused when the files are equal to the cached ones. This catches source changes under the same name. Running rules on a cached registry does not change later results (test `rules_share_registry`).
- **`scimessages`:** `zcl_lnt_utils=>add_scimessages( )` appends the two message definitions to the check's `scimessages` through a `CHANGING` parameter typed with the DDIC table type `SCIMESSAGES`, which open-abap-ci also has now. The `DUMP` text is `abaplint failed: &1`.
- **Include type:** `ty_finding-include` and `ty_line_map-include` are `progname`. `program` does not exist in open-abap.
- **Method includes:** method implementations are not mapped to their CMxxx includes, so findings in methods are reported on CU row 1. `CL_OO_CLASSNAME_SERVICE` is not called. See Later.
- **FUGR:** instead of `RS_GET_ALL_INCLUDES`, the reader follows the `INCLUDE` statements from `SAPL<name>`, keeping includes that start with `L<name>` (or `/NS/L<name>`) and exist.
- **Object types:** `run_rule` returns no findings right away for types not in `object_types( )`.
- **Unmapped rows:** any row without a line map entry, not just a file without one, is reported on the first line map entry's include, row 1. For CLAS that is the CU include.
- **Reader tests:** no test writes to `REPOSRC`. `map_clif_source`, `find_includes`, `to_filename`, `class_include`, `reduce` and `calculate_skip_testclass` are tested directly, through local friends.
- **Step 5:** pseudo comments and pragmas are filtered in `zcl_lnt_abap_rule->run`, not in `exclude_issues`. Neither rule that runs (`parser_error`, `allowed_object_naming`) has a pseudo comment or pragma, so suppression is untested.
- **Step 8:** `inform` is a stub, so the smoke test (`ltcl_checks`) only checks that `run( )` does not raise.

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
- any other row, including the method implementations, maps to CU row 1.

The other four files map 1:1 to their includes (CCDEF, CCIMP, CCMAC, CCAU).

#### Gaps in open-abap

This repo is syntax checked and unit tested against open-abap-core and open-abap-ci, so every system API the reader calls statically has to exist there:

| API | In open-abap? | Plan |
|-----|---------------|------|
| `CL_OO_FACTORY`, `IF_OO_CLIF_SOURCE` | yes, in open-abap-core (`src/oo`); it reads table `REPOSRC` | use as is |
| `READ REPORT` | yes, in the transpiler runtime; it reads `REPOSRC` | use as is |
| `SEO_CLIF_GET` | no | not needed, see testclasses above |
| `CL_OO_CLASSNAME_SERVICE=>get_method_include` | no | not used, method rows are not mapped (see Later) |
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
              p_column       = ls_finding-column
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

- **Method includes:** map each `METHOD <m>.` … `ENDMETHOD.` block of the clif source to its CMxxx include, so findings in methods navigate to the right line. Options: call `CL_OO_CLASSNAME_SERVICE=>get_method_include` (dynamically, or statically once it is in open-abap-core), or read `TMDIR`.
- **Configuration:** expose the rule's conf fields as Code Inspector attributes (`get_attributes`/`put_attributes`, `if_ci_test~query_attributes`) and push them into the rule. `read_by_rule` is unsupported, so the conf object has to be set directly, either through `set_config` once `zlnt_runtime_dyna_*` can be built, or by writing fields of the `zcl_lnt_<rule>_conf` instance.
- **ABAP version:** pass the system release to `zcl_lnt_config=>get_default( )` so version-dependent rules behave correctly. Check whether the unsupported branch in `get_default` is reachable.
- **XML metadata:** some rules may need `.prog.xml` (program vs include) or `.fugr.xml` (function module list). Generate minimal XML in the reader if the survey in step 9 shows they are needed.
- **Quick fixes:** `get_default_fix( )` is available, but Code Inspector has no use for it yet.

## Decisions

- **One shared message code:** `ISSUE` with text `&1`, carrying the abaplint message. No per-rule-key codes.
- **Unsupported paths are dropped:** a rule that raises `zlnt_exception_un_5f2d02892fe8` produces no findings and no note.
- **Test classes are checked:** the `.clas.testclasses.abap` include (CCAU) is always passed to abaplint, matching abaplint's own behaviour.

## Survey (step 9)

Every rule run directly on a small PROG and a small CLAS, with ABAPiti output as of 2026-10-14:

- `zcl_lnt_parser_error`: runs on both.
- `zcl_lnt_allowed_object_naming`: runs on PROG, unsupported on CLAS at `src/objects/class.ts:41`.
- The other 138 rules raise the unsupported exception on both objects, at the same location. Each location is inside the rule itself, mostly `runParsed`, so their Code Inspector checks report nothing for now:

| Rule class | First unsupported location |
|------------|----------------------------|
| `zcl_lnt_abapdoc` | `src/rules/abapdoc.ts:45` |
| `zcl_lnt_add_test_attributes` | `src/rules/add_test_attributes.ts:55` |
| `zcl_lnt_align_parameters` | `src/rules/align_parameters.ts:90` |
| `zcl_lnt_align_pseudo_comments` | `src/rules/align_pseudo_comments.ts:35` |
| `zcl_lnt_align_type_expressions` | `src/rules/align_type_expressions.ts:74` |
| `zcl_lnt_allowed_object_types` | `src/rules/allowed_object_types.ts:29` |
| `zcl_lnt_ambiguous_statement` | `src/rules/ambiguous_statement.ts:49` |
| `zcl_lnt_avoid_use` | `src/rules/avoid_use.ts:72` |
| `zcl_lnt_begin_end_names` | `src/rules/begin_end_names.ts:43` |
| `zcl_lnt_begin_single_include` | `src/rules/begin_single_include.ts:48` |
| `zcl_lnt_catch_and_raise` | `src/rules/catch_and_raise.ts:35` |
| `zcl_lnt_cds_association_name` | `src/rules/cds_association_name.ts:41` |
| `zcl_lnt_cds_comment_style` | `src/rules/cds_comment_style.ts:40` |
| `zcl_lnt_cds_field_order` | `src/rules/cds_field_order.ts:47` |
| `zcl_lnt_cds_legacy_view` | `src/rules/cds_legacy_view.ts:39` |
| `zcl_lnt_cds_naming` | `src/rules/cds_naming.ts:65` |
| `zcl_lnt_cds_parser_error` | `src/rules/cds_parser_error.ts:32` |
| `zcl_lnt_change_if_to_case` | `src/rules/change_if_to_case.ts:50` |
| `zcl_lnt_check_abstract` | `src/rules/check_abstract.ts:51` |
| `zcl_lnt_check_comments` | `src/rules/check_comments.ts:51` |
| `zcl_lnt_check_subrc` | `src/rules/check_subrc.ts:64` |
| `zcl_lnt_chn_mnly_dclrtns` | `src/rules/chain_mainly_declarations.ts:65` |
| `zcl_lnt_class_attribute_names` | `src/rules/class_attribute_names.ts:62` |
| `zcl_lnt_cll_trnsct_athrty_chck` | `src/rules/call_transaction_authority_check.ts:44` |
| `zcl_lnt_cloud_types` | `src/rules/cloud_types.ts:38` |
| `zcl_lnt_clssc_excptns_ovrlp` | `src/rules/classic_exceptions_overlap.ts:44` |
| `zcl_lnt_cnstrctr_vsblty_pblc` | `src/rules/constructor_visibility_public.ts:46` |
| `zcl_lnt_colon_missing_space` | `src/rules/colon_missing_space.ts:40` |
| `zcl_lnt_commented_code` | `src/rules/commented_code.ts:48` |
| `zcl_lnt_contains_tab` | `src/rules/contains_tab.ts:47` |
| `zcl_lnt_cyclomatic_complexity` | `src/rules/cyclomatic_complexity.ts:36` |
| `zcl_lnt_dangerous_statement` | `src/rules/dangerous_statement.ts:63` |
| `zcl_lnt_db_operation_in_loop` | `src/rules/db_operation_in_loop.ts:45` |
| `zcl_lnt_definitions_top` | `src/rules/definitions_top.ts:60` |
| `zcl_lnt_double_space` | `src/rules/double_space.ts:57` |
| `zcl_lnt_empty_event` | `src/rules/empty_event.ts:45` |
| `zcl_lnt_empty_linein_statement` | `src/rules/empty_line_in_statement.ts:46` |
| `zcl_lnt_empty_statement` | `src/rules/empty_statement.ts:36` |
| `zcl_lnt_empty_structure` | `src/rules/empty_structure.ts:68` |
| `zcl_lnt_exit_or_check` | `src/rules/exit_or_check.ts:46` |
| `zcl_lnt_exporting` | `src/rules/exporting.ts:36` |
| `zcl_lnt_fnctn_mdl_rcmmndtns` | `src/rules/function_module_recommendations.ts:125` |
| `zcl_lnt_forbidden_identifier` | `src/rules/forbidden_identifier.ts:43` |
| `zcl_lnt_form_tables_obsolete` | `src/rules/form_tables_obsolete.ts:43` |
| `zcl_lnt_frbddn_psd_and_prgm` | `src/rules/forbidden_pseudo_and_pragma.ts:55` |
| `zcl_lnt_fully_type_constants` | `src/rules/fully_type_constants.ts:41` |
| `zcl_lnt_fully_type_i_tabs` | `src/rules/fully_type_itabs.ts:37` |
| `zcl_lnt_functional_writing` | `src/rules/functional_writing.ts:65` |
| `zcl_lnt_identical_conditions` | `src/rules/identical_conditions.ts:65` |
| `zcl_lnt_identical_contents` | `src/rules/identical_contents.ts:50` |
| `zcl_lnt_identical_move` | `src/rules/identical_move.ts:38` |
| `zcl_lnt_if_in_if` | `src/rules/if_in_if.ts:73` |
| `zcl_lnt_implct_strt_of_slctn` | `src/rules/implicit_start_of_selection.ts:43` |
| `zcl_lnt_in_sttmnt_indnttn` | `src/rules/in_statement_indentation.ts:60` |
| `zcl_lnt_indentation` | `src/rules/indentation.ts:70` |
| `zcl_lnt_indx_cmpltly_cntnd` | `src/rules/index_completely_contained.ts:23` |
| `zcl_lnt_inln_dt_old_vrsns` | `src/rules/inline_data_old_versions.ts:32` |
| `zcl_lnt_invalid_table_index` | `src/rules/invalid_table_index.ts:38` |
| `zcl_lnt_keyword_case` | `src/rules/keyword_case.ts:142` |
| `zcl_lnt_kp_sn_prm_cll_on_on_ln` | `src/rules/keep_single_parameter_on_one_line.ts:39` |
| `zcl_lnt_line_break_style` | `src/rules/line_break_style.ts:26` |
| `zcl_lnt_line_length` | `src/rules/line_length.ts:39` |
| `zcl_lnt_line_only_punc` | `src/rules/line_only_punc.ts:46` |
| `zcl_lnt_ln_brk_mltpl_prmtrs` | `src/rules/line_break_multiple_parameters.ts:40` |
| `zcl_lnt_local_class_naming` | `src/rules/local_class_naming.ts:50` |
| `zcl_lnt_local_variable_names` | `src/rules/local_variable_names.ts:57` |
| `zcl_lnt_macro_naming` | `src/rules/macro_naming.ts:42` |
| `zcl_lnt_many_parentheses` | `src/rules/many_parentheses.ts:47` |
| `zcl_lnt_max_one_statement` | `src/rules/max_one_statement.ts:47` |
| `zcl_lnt_method_length` | `src/rules/method_length.ts:67` |
| `zcl_lnt_method_parameter_names` | `src/rules/method_parameter_names.ts:58` |
| `zcl_lnt_mix_returning` | `src/rules/mix_returning.ts:48` |
| `zcl_lnt_mthd_implmntd_twc` | `src/rules/method_implemented_twice.ts:31` |
| `zcl_lnt_mthd_ovrwrts_blt_in` | `src/rules/method_overwrites_builtin.ts:47` |
| `zcl_lnt_mx_on_mthd_prmtr_pr_ln` | `src/rules/max_one_method_parameter_per_line.ts:42` |
| `zcl_lnt_n_cmmnts_btwn_mthds` | `src/rules/no_comments_between_methods.ts:49` |
| `zcl_lnt_n_inln_in_optnl_brnchs` | `src/rules/no_inline_in_optional_branches.ts:45` |
| `zcl_lnt_n_mndt_in_dtbs_oprtns` | `src/rules/no_mandt_in_database_operations.ts:40` |
| `zcl_lnt_names_no_dash` | `src/rules/names_no_dash.ts:42` |
| `zcl_lnt_nesting` | `src/rules/nesting.ts:40` |
| `zcl_lnt_no_aliases` | `src/rules/no_aliases.ts:41` |
| `zcl_lnt_no_chained_assignment` | `src/rules/no_chained_assignment.ts:39` |
| `zcl_lnt_no_dynamic_stuff` | `src/rules/no_dynamic_stuff.ts:79` |
| `zcl_lnt_no_exclamation_escape` | `src/rules/no_exclamation_escape.ts:36` |
| `zcl_lnt_no_external_form_calls` | `src/rules/no_external_form_calls.ts:36` |
| `zcl_lnt_no_macros` | `src/rules/no_macros.ts:39` |
| `zcl_lnt_no_prefixes` | `src/rules/no_prefixes.ts:66` |
| `zcl_lnt_no_public_attributes` | `src/rules/no_public_attributes.ts:55` |
| `zcl_lnt_no_yoda_conditions` | `src/rules/no_yoda_conditions.ts:42` |
| `zcl_lnt_nrob_consistency` | `src/rules/nrob_consistency.ts:35` |
| `zcl_lnt_nwln_btwn_mthds` | `src/rules/newline_between_methods.ts:53` |
| `zcl_lnt_obsolete_statement` | `src/rules/obsolete_statement.ts:157` |
| `zcl_lnt_omit_preceding_zeros` | `src/rules/omit_preceding_zeros.ts:36` |
| `zcl_lnt_omit_receiving` | `src/rules/omit_receiving.ts:47` |
| `zcl_lnt_parser702_chaining` | `src/rules/parser_702_chaining.ts:37` |
| `zcl_lnt_parser_bad_exceptions` | `src/rules/parser_bad_exceptions.ts:35` |
| `zcl_lnt_parser_missing_space` | `src/rules/parser_missing_space.ts:38` |
| `zcl_lnt_pragma_style` | `src/rules/pragma_style.ts:38` |
| `zcl_lnt_prefer_abap_bool` | `src/rules/prefer_abap_bool.ts:39` |
| `zcl_lnt_prefer_corresponding` | `src/rules/prefer_corresponding.ts:36` |
| `zcl_lnt_prefer_is_not` | `src/rules/prefer_is_not.ts:47` |
| `zcl_lnt_prefer_pragmas` | `src/rules/prefer_pragmas.ts:52` |
| `zcl_lnt_prefer_xsdbool` | `src/rules/prefer_xsdbool.ts:39` |
| `zcl_lnt_prfr_insrt_int_tbl` | `src/rules/prefer_insert_into_table.ts:31` |
| `zcl_lnt_prfr_rs_excptn_nw` | `src/rules/prefer_raise_exception_new.ts:43` |
| `zcl_lnt_prfr_rtrnng_t_exprtng` | `src/rules/prefer_returning_to_exporting.ts:39` |
| `zcl_lnt_prfrrd_cmpr_oprtr` | `src/rules/preferred_compare_operator.ts:46` |
| `zcl_lnt_prfx_is_crrnt_clss` | `src/rules/prefix_is_current_class.ts:51` |
| `zcl_lnt_rdc_strng_tmplts` | `src/rules/reduce_string_templates.ts:35` |
| `zcl_lnt_reduce_procedural_code` | `src/rules/reduce_procedural_code.ts:54` |
| `zcl_lnt_rfc_error_handling` | `src/rules/rfc_error_handling.ts:46` |
| `zcl_lnt_select_add_order_by` | `src/rules/select_add_order_by.ts:45` |
| `zcl_lnt_select_performance` | `src/rules/select_performance.ts:51` |
| `zcl_lnt_sequential_blank` | `src/rules/sequential_blank.ts:46` |
| `zcl_lnt_seven_bit_ascii` | `src/rules/7bit_ascii.ts:30` |
| `zcl_lnt_short_case` | `src/rules/short_case.ts:48` |
| `zcl_lnt_slctn_scrn_nmng` | `src/rules/selection_screen_naming.ts:48` |
| `zcl_lnt_space_before_colon` | `src/rules/space_before_colon.ts:42` |
| `zcl_lnt_space_before_dot` | `src/rules/space_before_dot.ts:50` |
| `zcl_lnt_start_at_tab` | `src/rules/start_at_tab.ts:42` |
| `zcl_lnt_superfluous_value` | `src/rules/superfluous_value.ts:36` |
| `zcl_lnt_sy_modification` | `src/rules/sy_modification.ts:41` |
| `zcl_lnt_sy_read_restriction` | `src/rules/sy_read_restriction.ts:73` |
| `zcl_lnt_tbls_dclrd_lclly` | `src/rules/tables_declared_locally.ts:37` |
| `zcl_lnt_try_without_catch` | `src/rules/try_without_catch.ts:36` |
| `zcl_lnt_type_form_parameters` | `src/rules/type_form_parameters.ts:42` |
| `zcl_lnt_types_naming` | `src/rules/types_naming.ts:41` |
| `zcl_lnt_unnecessary_chaining` | `src/rules/unnecessary_chaining.ts:43` |
| `zcl_lnt_unnecessary_pragma` | `src/rules/unnecessary_pragma.ts:71` |
| `zcl_lnt_unnecessary_return` | `src/rules/unnecessary_return.ts:49` |
| `zcl_lnt_unreachable_code` | `src/rules/unreachable_code.ts:40` |
| `zcl_lnt_us_clss_bsd_excptns` | `src/rules/use_class_based_exceptions.ts:47` |
| `zcl_lnt_use_bool_expression` | `src/rules/use_bool_expression.ts:50` |
| `zcl_lnt_use_line_exists` | `src/rules/use_line_exists.ts:45` |
| `zcl_lnt_use_new` | `src/rules/use_new.ts:48` |
| `zcl_lnt_when_others_last` | `src/rules/when_others_last.ts:37` |
| `zcl_lnt_whitespace_end` | `src/rules/whitespace_end.ts:41` |
| `zcl_lnt_wrong_abapdoc_position` | `src/rules/wrong_abapdoc_position.ts:59` |
