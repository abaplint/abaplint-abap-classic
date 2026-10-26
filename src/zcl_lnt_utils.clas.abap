CLASS zcl_lnt_utils DEFINITION PUBLIC.
  PUBLIC SECTION.
    TYPES ty_object_types TYPE STANDARD TABLE OF tadir-object WITH EMPTY KEY.
    TYPES:
      BEGIN OF ty_finding,
        include TYPE progname,
        line    TYPE i,
        column  TYPE int2,
        kind    TYPE c LENGTH 1,
        code    TYPE sci_errc,
        text    TYPE string,
      END OF ty_finding,
      ty_findings TYPE STANDARD TABLE OF ty_finding WITH EMPTY KEY.

    CONSTANTS:
      BEGIN OF c_code,
        issue TYPE sci_errc VALUE 'ISSUE',
        dump  TYPE sci_errc VALUE 'DUMP',
      END OF c_code.

    CLASS-METHODS object_types RETURNING VALUE(rt_types) TYPE ty_object_types.

    "! Runs one abaplint rule on an object, raises zlnt_exception_un_5f2d02892fe8
    "! for paths not supported by the ABAPiti output, other errors give a DUMP finding
    CLASS-METHODS run_rule
      IMPORTING
        io_rule            TYPE REF TO zif_lnt_rule
        iv_object_type     TYPE csequence
        iv_object_name     TYPE csequence
      RETURNING
        VALUE(rt_findings) TYPE ty_findings.

    "! Adds the message codes used by run_rule to the SCIMESSAGES of a check
    CLASS-METHODS add_scimessages
      IMPORTING
        iv_test        TYPE csequence
      CHANGING
        ct_scimessages TYPE scimessages.

    "! Opens the documentation of an abaplint rule on rules.abaplint.org
    CLASS-METHODS display_documentation
      IMPORTING
        iv_rule TYPE csequence.

    CLASS-METHODS set_source_reader
      IMPORTING
        ii_reader TYPE REF TO zif_lnt_source_reader.

    CLASS-METHODS set_config_reader
      IMPORTING
        ii_reader TYPE REF TO zif_lnt_config_reader.

  PRIVATE SECTION.
    CLASS-DATA gi_reader TYPE REF TO zif_lnt_source_reader.
    CLASS-DATA gi_config_reader TYPE REF TO zif_lnt_config_reader.
    CLASS-DATA gt_cache_files TYPE zif_lnt_source_reader=>ty_files.
    CLASS-DATA gs_cache_syntax TYPE zif_lnt_config_reader=>ty_syntax.
    CLASS-DATA go_cache_reg TYPE REF TO zcl_lnt_registry.

    CLASS-METHODS get_config
      IMPORTING
        is_syntax        TYPE zif_lnt_config_reader=>ty_syntax
      RETURNING
        VALUE(ro_config) TYPE REF TO zcl_lnt_config.

    CLASS-METHODS read_config
      IMPORTING
        iv_object_type   TYPE csequence
        iv_object_name   TYPE csequence
      RETURNING
        VALUE(rs_syntax) TYPE zif_lnt_config_reader=>ty_syntax.

    CLASS-METHODS read_sources
      IMPORTING
        iv_object_type TYPE csequence
        iv_object_name TYPE csequence
      EXPORTING
        et_files       TYPE zif_lnt_source_reader=>ty_files
        et_line_map    TYPE zif_lnt_source_reader=>ty_line_maps.

    CLASS-METHODS get_registry
      IMPORTING
        it_files      TYPE zif_lnt_source_reader=>ty_files
        is_syntax     TYPE zif_lnt_config_reader=>ty_syntax
      RETURNING
        VALUE(ro_reg) TYPE REF TO zcl_lnt_registry.

    CLASS-METHODS find_object
      IMPORTING
        io_reg         TYPE REF TO zcl_lnt_registry
        iv_object_type TYPE csequence
        iv_object_name TYPE csequence
      RETURNING
        VALUE(ri_obj)  TYPE REF TO zif_lnt_object.

    CLASS-METHODS to_findings
      IMPORTING
        io_issues          TYPE REF TO zlnt_runtime_arra_c22708faf2e3
        it_line_map        TYPE zif_lnt_source_reader=>ty_line_maps
        iv_object_name     TYPE csequence
      RETURNING
        VALUE(rt_findings) TYPE ty_findings.

    CLASS-METHODS map_severity
      IMPORTING
        iv_severity    TYPE string
      RETURNING
        VALUE(rv_kind) TYPE ty_finding-kind.

    CLASS-METHODS map_position
      IMPORTING
        iv_filename    TYPE string
        iv_row         TYPE i
        it_line_map    TYPE zif_lnt_source_reader=>ty_line_maps
        iv_object_name TYPE csequence
      EXPORTING
        ev_include     TYPE progname
        ev_line        TYPE i.
ENDCLASS.

CLASS zcl_lnt_utils IMPLEMENTATION.
  METHOD object_types.
    rt_types = VALUE #(
      ( 'PROG' )
      ( 'CLAS' )
      ( 'INTF' )
      ( 'FUGR' ) ).
  ENDMETHOD.

  METHOD set_source_reader.
    gi_reader = ii_reader.
    CLEAR gt_cache_files.
    CLEAR go_cache_reg.
  ENDMETHOD.

  METHOD set_config_reader.
    gi_config_reader = ii_reader.
    CLEAR gt_cache_files.
    CLEAR gs_cache_syntax.
    CLEAR go_cache_reg.
  ENDMETHOD.

  METHOD add_scimessages.
    INSERT VALUE #(
      test = iv_test
      code = c_code-issue
      kind = cl_ci_test_root=>c_warning
      text = '&1' ) INTO TABLE ct_scimessages.
    INSERT VALUE #(
      test = iv_test
      code = c_code-dump
      kind = cl_ci_test_root=>c_error
      text = 'abaplint failed: &1' ) INTO TABLE ct_scimessages.
  ENDMETHOD.

  METHOD display_documentation.


    cl_gui_frontend_services=>execute(
      EXPORTING
        document               = |https://rules.abaplint.org/{ iv_rule }/|
      EXCEPTIONS
        cntl_error             = 1
        error_no_gui           = 2
        bad_parameter          = 3
        file_not_found         = 4
        path_not_found         = 5
        file_extension_unknown = 6
        error_execute_failed   = 7
        synchronous_failed     = 8
        not_supported_by_gui   = 9
        OTHERS                 = 10 ) ##SUBRC_OK.
  ENDMETHOD.

  METHOD run_rule.
    DATA lt_files TYPE zif_lnt_source_reader=>ty_files.
    DATA lt_line_map TYPE zif_lnt_source_reader=>ty_line_maps.
    DATA lv_include TYPE progname.
    DATA lv_line TYPE i.

    DATA(lt_types) = object_types( ).
    IF NOT line_exists( lt_types[ table_line = iv_object_type ] ).
      RETURN.
    ENDIF.

    TRY.
        read_sources(
          EXPORTING
            iv_object_type = iv_object_type
            iv_object_name = iv_object_name
          IMPORTING
            et_files       = lt_files
            et_line_map    = lt_line_map ).
        IF lt_files IS INITIAL.
          RETURN.
        ENDIF.

        DATA(lo_reg) = get_registry(
          it_files  = lt_files
          is_syntax = read_config(
            iv_object_type = iv_object_type
            iv_object_name = iv_object_name ) ).
        DATA(li_obj) = find_object(
          io_reg         = lo_reg
          iv_object_type = iv_object_type
          iv_object_name = iv_object_name ).
        IF li_obj IS NOT BOUND.
          RETURN.
        ENDIF.

        DATA(lo_issues) = io_rule->initialize( lo_reg )->run( li_obj ).
        lo_issues = NEW zcl_lnt_rules_runner( lo_reg )->exclude_issues( lo_issues ).

        rt_findings = to_findings(
          io_issues      = lo_issues
          it_line_map    = lt_line_map
          iv_object_name = iv_object_name ).
      CATCH cx_root INTO DATA(lx_error).
        IF lx_error IS INSTANCE OF zlnt_exception_un_5f2d02892fe8.
* not supported by the ABAPiti output, pass on to the caller
          RAISE EXCEPTION lx_error.
        ENDIF.
        map_position(
          EXPORTING
            iv_filename    = ``
            iv_row         = 1
            it_line_map    = lt_line_map
            iv_object_name = iv_object_name
          IMPORTING
            ev_include     = lv_include
            ev_line        = lv_line ).
        rt_findings = VALUE #( (
          include = lv_include
          line    = lv_line
          kind    = cl_ci_test_root=>c_error
          code    = c_code-dump
          text    = lx_error->get_text( ) ) ).
    ENDTRY.
  ENDMETHOD.

  METHOD read_sources.
    IF gi_reader IS NOT BOUND.
      gi_reader = NEW zcl_lnt_source_reader( ).
    ENDIF.

    gi_reader->read(
      EXPORTING
        iv_object_type = iv_object_type
        iv_object_name = iv_object_name
      IMPORTING
        et_files       = et_files
        et_line_map    = et_line_map ).
  ENDMETHOD.

  METHOD read_config.
    IF gi_config_reader IS NOT BOUND.
      gi_config_reader = NEW zcl_lnt_config_reader( ).
    ENDIF.

    rs_syntax = gi_config_reader->read(
      iv_object_type = iv_object_type
      iv_object_name = iv_object_name ).
  ENDMETHOD.

  METHOD get_registry.
* Code Inspector runs all checks on one object before moving on to the next,
* so keep the last parsed registry, parsing is the expensive part
    IF go_cache_reg IS BOUND AND gt_cache_files = it_files AND gs_cache_syntax = is_syntax.
      ro_reg = go_cache_reg.
      RETURN.
    ENDIF.

    CLEAR go_cache_reg.
    CLEAR gt_cache_files.
    CLEAR gs_cache_syntax.

    ro_reg = NEW zcl_lnt_registry( get_config( is_syntax ) ).
    LOOP AT it_files INTO DATA(ls_file).
      ro_reg->add_file( NEW zcl_lnt_memory_file(
        i_filename = ls_file-filename
        i_raw      = concat_lines_of( table = ls_file-source sep = |\n| ) ) ).
    ENDLOOP.
    ro_reg->parse( ).

    go_cache_reg = ro_reg.
    gt_cache_files = it_files.
    gs_cache_syntax = is_syntax.
  ENDMETHOD.

  METHOD get_config.
    DATA(lv_version) = COND string(
      WHEN is_syntax-version IS INITIAL THEN `v758`
      ELSE is_syntax-version ).
    DATA(lv_namespace) = COND string(
      WHEN is_syntax-error_namespace IS INITIAL THEN `^(Z|Y|LCL_|TY_|LIF_)`
      ELSE is_syntax-error_namespace ).

* the full configuration must be given, as building the default configuration is not supported
* by the ABAPiti output. Rules keep the default configuration set in their constructors
    ro_config = NEW zcl_lnt_config(
      `{"global": {"files": "/src/**/*.*", "exclude": [], "noIssues": [],` &&
      ` "skipGeneratedGatewayClasses": true, "skipGeneratedPersistentClasses": true,` &&
      ` "skipGeneratedFunctionGroups": true, "useApackDependencies": false, "skipIncludesWithoutMain": false},` &&
      ` "dependencies": [],` &&
      | "syntax": \{"version": "{ escape( val = lv_version format = cl_abap_format=>e_json_string ) }",| &&
      | "errorNamespace": "{ escape( val = lv_namespace format = cl_abap_format=>e_json_string ) }",| &&
      ` "globalConstants": [], "globalMacros": []},` &&
      ` "rules": {}}` ).
  ENDMETHOD.

  METHOD find_object.
    DATA(lo_type) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    lo_type->value = iv_object_type.
    lo_type->has = abap_true.

    ri_obj = io_reg->find_8f95(
      i_name      = to_upper( iv_object_name )
      i_type_9913 = lo_type ).
    IF ri_obj IS NOT BOUND.
      ri_obj = io_reg->get_first_object( ).
    ENDIF.
  ENDMETHOD.

  METHOD to_findings.
    DATA lo_issue TYPE REF TO zcl_lnt_issue.
    DATA ls_finding TYPE ty_finding.

    IF io_issues IS NOT BOUND.
      RETURN.
    ENDIF.

    LOOP AT io_issues->items INTO DATA(lo_item).
      lo_issue ?= lo_item.
      DATA(lo_start) = lo_issue->get_start( ).

      CLEAR ls_finding.
      map_position(
        EXPORTING
          iv_filename    = lo_issue->get_filename( )
          iv_row         = CONV #( lo_start->row )
          it_line_map    = it_line_map
          iv_object_name = iv_object_name
        IMPORTING
          ev_include     = ls_finding-include
          ev_line        = ls_finding-line ).
      DATA(lo_col) = lo_start->get_col( ).
      IF lo_col IS BOUND AND lo_col->has = abap_true.
        ls_finding-column = lo_col->value.
      ENDIF.
      ls_finding-kind = map_severity( lo_issue->get_severity( ) ).
      ls_finding-code = c_code-issue.
      ls_finding-text = lo_issue->get_message( ).
      INSERT ls_finding INTO TABLE rt_findings.
    ENDLOOP.
  ENDMETHOD.

  METHOD map_severity.
    CASE iv_severity.
      WHEN `Error`.
        rv_kind = cl_ci_test_root=>c_error.
      WHEN `Info`.
        rv_kind = cl_ci_test_root=>c_note.
      WHEN OTHERS.
        rv_kind = cl_ci_test_root=>c_warning.
    ENDCASE.
  ENDMETHOD.

  METHOD map_position.
    LOOP AT it_line_map INTO DATA(ls_map)
        WHERE filename = iv_filename AND from_row <= iv_row AND to_row >= iv_row.
      ev_include = ls_map-include.
      ev_line = ls_map-first_row + iv_row - ls_map-from_row.
      RETURN.
    ENDLOOP.

* not mapped, report on the main include
    READ TABLE it_line_map INDEX 1 INTO ls_map.
    IF sy-subrc = 0.
      ev_include = ls_map-include.
    ELSE.
      ev_include = to_upper( iv_object_name ).
    ENDIF.
    ev_line = 1.
  ENDMETHOD.
ENDCLASS.
