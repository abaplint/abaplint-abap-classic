CLASS ltd_reader DEFINITION FINAL FOR TESTING.
  PUBLIC SECTION.
    INTERFACES zif_lnt_source_reader.
    DATA mt_files TYPE zif_lnt_source_reader=>ty_files.
    DATA mt_line_map TYPE zif_lnt_source_reader=>ty_line_maps.
    METHODS set_prog
      IMPORTING
        iv_name   TYPE string
        it_source TYPE string_table.
ENDCLASS.

CLASS ltd_reader IMPLEMENTATION.
  METHOD zif_lnt_source_reader~read.
    et_files = mt_files.
    et_line_map = mt_line_map.
  ENDMETHOD.

  METHOD set_prog.
    DATA(lv_filename) = |{ to_lower( iv_name ) }.prog.abap|.
    mt_files = VALUE #( ( filename = lv_filename source = it_source ) ).
    mt_line_map = VALUE #( (
      filename  = lv_filename
      from_row  = 1
      to_row    = lines( it_source )
      include   = iv_name
      first_row = 1 ) ).
  ENDMETHOD.
ENDCLASS.

CLASS ltd_config_reader DEFINITION FINAL FOR TESTING.
  PUBLIC SECTION.
    INTERFACES zif_lnt_config_reader.
    DATA ms_syntax TYPE zif_lnt_config_reader=>ty_syntax.
ENDCLASS.

CLASS ltd_config_reader IMPLEMENTATION.
  METHOD zif_lnt_config_reader~read.
    rs_syntax = ms_syntax.
  ENDMETHOD.
ENDCLASS.

* returns fixed issues, or raises
CLASS ltd_rule DEFINITION FINAL FOR TESTING.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    TYPES:
      BEGIN OF ty_issue,
        filename TYPE string,
        row      TYPE f,
        col      TYPE f,
        severity TYPE string,
        message  TYPE string,
      END OF ty_issue,
      ty_issues TYPE STANDARD TABLE OF ty_issue WITH EMPTY KEY.
    DATA mt_issues TYPE ty_issues.
    DATA mv_raise_error TYPE abap_bool.
    DATA mv_raise_unsupported TYPE abap_bool.
    DATA mi_reg TYPE REF TO zif_lnt_registry.
ENDCLASS.

CLASS ltd_rule IMPLEMENTATION.
  METHOD zif_lnt_rule~get_metadata.
    result = NEW zcl_lnt_irule_metadata(
      i_key               = `test_rule`
      i_title             = `Test rule`
      i_short_description = `Test rule` ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    mi_reg = i_reg_f149.
    result = me.
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    IF mv_raise_unsupported = abap_true.
      RAISE EXCEPTION NEW zlnt_exception_un_5f2d02892fe8( ).
    ELSEIF mv_raise_error = abap_true.
      RAISE EXCEPTION NEW cx_sy_zerodivide( ).
    ENDIF.

    result = NEW #( ).
    LOOP AT mt_issues INTO DATA(ls_issue).
      DATA(lo_start_col) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      lo_start_col->value = ls_issue-col.
      lo_start_col->has = abap_true.
      DATA(lo_end_col) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      lo_end_col->value = ls_issue-col + 1.
      lo_end_col->has = abap_true.
      INSERT NEW zcl_lnt_issue( NEW zcl_lnt_iissue_data(
        i_filename     = ls_issue-filename
        i_message_26cb = ls_issue-message
        i_key          = `test_rule`
        i_start        = NEW zcl_lnt_position( i_row = ls_issue-row i_col = lo_start_col )
        i_end          = NEW zcl_lnt_position( i_row = ls_issue-row i_col = lo_end_col )
        i_severity     = ls_issue-severity ) ) INTO TABLE result->items.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.

CLASS ltcl_run_rule DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    DATA mo_reader TYPE REF TO ltd_reader.
    DATA mo_config_reader TYPE REF TO ltd_config_reader.

    METHODS setup.
    METHODS parser_error FOR TESTING RAISING cx_static_check.
    METHODS config_version FOR TESTING RAISING cx_static_check.
    METHODS config_change_invalidates FOR TESTING RAISING cx_static_check.
    METHODS config_namespace_escaped FOR TESTING RAISING cx_static_check.
    METHODS no_issues FOR TESTING RAISING cx_static_check.
    METHODS not_found FOR TESTING RAISING cx_static_check.
    METHODS unknown_object_type FOR TESTING RAISING cx_static_check.
    METHODS unsupported_exception FOR TESTING RAISING cx_static_check.
    METHODS error_gives_dump FOR TESTING RAISING cx_static_check.
    METHODS severity FOR TESTING RAISING cx_static_check.
    METHODS line_map FOR TESTING RAISING cx_static_check.
    METHODS cache_reused FOR TESTING RAISING cx_static_check.
    METHODS cache_invalidated FOR TESTING RAISING cx_static_check.
    METHODS rules_share_registry FOR TESTING RAISING cx_static_check.
    METHODS scimessages FOR TESTING RAISING cx_static_check.

    METHODS set_broken_prog.
    METHODS set_add_assign_prog.
    METHODS run
      IMPORTING
        io_rule            TYPE REF TO zif_lnt_rule
        iv_object_type     TYPE csequence DEFAULT 'PROG'
        iv_object_name     TYPE csequence DEFAULT 'ZTEST'
      RETURNING
        VALUE(rt_findings) TYPE zcl_lnt_utils=>ty_findings.
ENDCLASS.

CLASS ltcl_run_rule IMPLEMENTATION.
  METHOD setup.
    mo_reader = NEW ltd_reader( ).
    zcl_lnt_utils=>set_source_reader( mo_reader ).
    mo_config_reader = NEW ltd_config_reader( ).
    zcl_lnt_utils=>set_config_reader( mo_config_reader ).
  ENDMETHOD.

* += does not exist before 754
  METHOD set_add_assign_prog.
    mo_reader->set_prog(
      iv_name   = 'ZTEST'
      it_source = VALUE #(
        ( `REPORT ztest.` )
        ( `DATA lv_foo TYPE i.` )
        ( `lv_foo += 1.` ) ) ).
  ENDMETHOD.

  METHOD config_version.
    set_add_assign_prog( ).
    cl_abap_unit_assert=>assert_initial( run( NEW zcl_lnt_parser_error( ) ) ).

    mo_config_reader->ms_syntax-version = `v702`.
    DATA(lt_findings) = run( NEW zcl_lnt_parser_error( ) ).

    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_findings )
      exp = 1 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 1 ]-line
      exp = 3 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 1 ]-code
      exp = zcl_lnt_utils=>c_code-issue ).
  ENDMETHOD.

  METHOD config_change_invalidates.
    set_add_assign_prog( ).
    DATA(lo_first) = NEW ltd_rule( ).
    run( lo_first ).

    mo_config_reader->ms_syntax-version = `v702`.
    DATA(lo_second) = NEW ltd_rule( ).
    run( lo_second ).

    cl_abap_unit_assert=>assert_true( xsdbool( lo_second->mi_reg <> lo_first->mi_reg ) ).
  ENDMETHOD.

  METHOD config_namespace_escaped.
    set_broken_prog( ).
    mo_config_reader->ms_syntax-error_namespace = `^(Z|Y|\/FOO\/|"BAR")`.

    DATA(lt_findings) = run( NEW zcl_lnt_parser_error( ) ).

    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_findings )
      exp = 1 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 1 ]-code
      exp = zcl_lnt_utils=>c_code-issue ).
  ENDMETHOD.

  METHOD set_broken_prog.
    mo_reader->set_prog(
      iv_name   = 'ZTEST'
      it_source = VALUE #(
        ( `REPORT ztest.` )
        ( `DATA lv_foo TYPE i.` )
        ( `  foo bar moo.` )
        ( `WRITE lv_foo.` ) ) ).
  ENDMETHOD.

  METHOD run.
    rt_findings = zcl_lnt_utils=>run_rule(
      io_rule        = io_rule
      iv_object_type = iv_object_type
      iv_object_name = iv_object_name ).
  ENDMETHOD.

  METHOD parser_error.
    set_broken_prog( ).

    DATA(lt_findings) = run( NEW zcl_lnt_parser_error( ) ).

    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_findings )
      exp = 1 ).
    DATA(ls_finding) = lt_findings[ 1 ].
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-include
      exp = 'ZTEST' ).
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-line
      exp = 3 ).
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-column
      exp = 3 ).
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-kind
      exp = cl_ci_test_root=>c_error ).
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-code
      exp = zcl_lnt_utils=>c_code-issue ).
    cl_abap_unit_assert=>assert_char_cp(
      act = ls_finding-text
      exp = '*Statement does not exist*' ).
  ENDMETHOD.

  METHOD no_issues.
    mo_reader->set_prog(
      iv_name   = 'ZTEST'
      it_source = VALUE #(
        ( `REPORT ztest.` )
        ( `WRITE 'hello'.` ) ) ).

    cl_abap_unit_assert=>assert_initial( run( NEW zcl_lnt_parser_error( ) ) ).
  ENDMETHOD.

  METHOD not_found.
    cl_abap_unit_assert=>assert_initial( run( NEW zcl_lnt_parser_error( ) ) ).
  ENDMETHOD.

  METHOD unknown_object_type.
    set_broken_prog( ).
    DATA(lo_rule) = NEW ltd_rule( ).

    cl_abap_unit_assert=>assert_initial( run(
      io_rule        = lo_rule
      iv_object_type = 'TABL' ) ).
    cl_abap_unit_assert=>assert_not_bound( lo_rule->mi_reg ).
  ENDMETHOD.

  METHOD unsupported_exception.
    set_broken_prog( ).
    DATA(lo_rule) = NEW ltd_rule( ).
    lo_rule->mv_raise_unsupported = abap_true.

    TRY.
        run( lo_rule ).
        cl_abap_unit_assert=>fail( 'expected exception' ).
      CATCH zlnt_exception_un_5f2d02892fe8.
        RETURN.
    ENDTRY.
  ENDMETHOD.

  METHOD error_gives_dump.
    set_broken_prog( ).
    DATA(lo_rule) = NEW ltd_rule( ).
    lo_rule->mv_raise_error = abap_true.

    DATA(lt_findings) = run( lo_rule ).

    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_findings )
      exp = 1 ).
    DATA(ls_finding) = lt_findings[ 1 ].
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-code
      exp = zcl_lnt_utils=>c_code-dump ).
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-kind
      exp = cl_ci_test_root=>c_error ).
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-include
      exp = 'ZTEST' ).
    cl_abap_unit_assert=>assert_equals(
      act = ls_finding-line
      exp = 1 ).
  ENDMETHOD.

  METHOD severity.
    set_broken_prog( ).
    DATA(lo_rule) = NEW ltd_rule( ).
    lo_rule->mt_issues = VALUE #(
      ( filename = `ztest.prog.abap` row = 1 col = 1 severity = `Error` message = `a` )
      ( filename = `ztest.prog.abap` row = 2 col = 1 severity = `Warning` message = `b` )
      ( filename = `ztest.prog.abap` row = 3 col = 1 severity = `Info` message = `c` )
      ( filename = `ztest.prog.abap` row = 4 col = 1 severity = `Other` message = `d` ) ).

    DATA(lt_findings) = run( lo_rule ).

    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_findings )
      exp = 4 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 1 ]-kind
      exp = cl_ci_test_root=>c_error ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 2 ]-kind
      exp = cl_ci_test_root=>c_warning ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 3 ]-kind
      exp = cl_ci_test_root=>c_note ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 4 ]-kind
      exp = cl_ci_test_root=>c_warning ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 2 ]-text
      exp = `b` ).
  ENDMETHOD.

  METHOD line_map.
    mo_reader->mt_files = VALUE #( (
      filename = `zcl_foo.clas.abap`
      source   = VALUE #(
        ( `CLASS zcl_foo DEFINITION PUBLIC.` )
        ( `  PUBLIC SECTION.` )
        ( `    METHODS bar.` )
        ( `ENDCLASS.` )
        ( `CLASS zcl_foo IMPLEMENTATION.` )
        ( `  METHOD bar.` )
        ( `    WRITE 'hello'.` )
        ( `  ENDMETHOD.` )
        ( `ENDCLASS.` ) ) ) ).
    mo_reader->mt_line_map = VALUE #(
      ( filename = `zcl_foo.clas.abap` from_row = 1 to_row = 4 include = 'ZCL_FOO=======================CU' first_row = 1 )
      ( filename = `zcl_foo.clas.abap` from_row = 6 to_row = 8 include = 'ZCL_FOO=======================CM001' first_row = 1 ) ).
    DATA(lo_rule) = NEW ltd_rule( ).
    lo_rule->mt_issues = VALUE #(
      ( filename = `zcl_foo.clas.abap` row = 7 col = 5 severity = `Error` message = `in method` )
      ( filename = `zcl_foo.clas.abap` row = 9 col = 1 severity = `Error` message = `not mapped` )
      ( filename = `zcl_foo.clas.locals_imp.abap` row = 3 col = 1 severity = `Error` message = `unknown file` ) ).

    DATA(lt_findings) = run(
      io_rule        = lo_rule
      iv_object_type = 'CLAS'
      iv_object_name = 'ZCL_FOO' ).

    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_findings )
      exp = 3 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 1 ]-include
      exp = 'ZCL_FOO=======================CM001' ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 1 ]-line
      exp = 2 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 1 ]-column
      exp = 5 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 2 ]-include
      exp = 'ZCL_FOO=======================CU' ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 2 ]-line
      exp = 1 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 3 ]-include
      exp = 'ZCL_FOO=======================CU' ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_findings[ 3 ]-line
      exp = 1 ).
  ENDMETHOD.

  METHOD cache_reused.
    set_broken_prog( ).
    DATA(lo_first) = NEW ltd_rule( ).
    DATA(lo_second) = NEW ltd_rule( ).

    run( lo_first ).
    run( lo_second ).

    cl_abap_unit_assert=>assert_bound( lo_first->mi_reg ).
    cl_abap_unit_assert=>assert_equals(
      act = lo_second->mi_reg
      exp = lo_first->mi_reg ).
  ENDMETHOD.

  METHOD cache_invalidated.
    set_broken_prog( ).
    DATA(lo_first) = NEW ltd_rule( ).
    run( lo_first ).
    cl_abap_unit_assert=>assert_equals(
      act = lines( run( NEW zcl_lnt_parser_error( ) ) )
      exp = 1 ).

    mo_reader->set_prog(
      iv_name   = 'ZOTHER'
      it_source = VALUE #( ( `REPORT zother.` ) ) ).
    DATA(lo_second) = NEW ltd_rule( ).
    run(
      io_rule        = lo_second
      iv_object_name = 'ZOTHER' ).

    cl_abap_unit_assert=>assert_true( xsdbool( lo_second->mi_reg <> lo_first->mi_reg ) ).
    cl_abap_unit_assert=>assert_initial( run(
      io_rule        = NEW zcl_lnt_parser_error( )
      iv_object_name = 'ZOTHER' ) ).

* same object, changed source
    set_broken_prog( ).
    run( lo_first ).
    mo_reader->mt_files[ 1 ]-source[ 3 ] = `WRITE lv_foo.`.
    run( lo_second ).

    cl_abap_unit_assert=>assert_true( xsdbool( lo_second->mi_reg <> lo_first->mi_reg ) ).
    cl_abap_unit_assert=>assert_initial( run( NEW zcl_lnt_parser_error( ) ) ).
  ENDMETHOD.

  METHOD rules_share_registry.
* running rules on the cached registry must not change the result of the next rule
    set_broken_prog( ).

    DATA(lt_first) = run( NEW zcl_lnt_parser_error( ) ).
    run( NEW zcl_lnt_double_space( ) ).
    run( NEW zcl_lnt_allowed_object_naming( ) ).

    cl_abap_unit_assert=>assert_equals(
      act = run( NEW zcl_lnt_parser_error( ) )
      exp = lt_first ).
  ENDMETHOD.

  METHOD scimessages.
    DATA lt_messages TYPE scimessages.

    zcl_lnt_utils=>add_scimessages(
      EXPORTING
        iv_test        = 'ZCL_LNC_FOO'
      CHANGING
        ct_scimessages = lt_messages ).

    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_messages )
      exp = 2 ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_messages[ 1 ]
      exp = VALUE scimessage(
        test = 'ZCL_LNC_FOO'
        code = 'ISSUE'
        kind = cl_ci_test_root=>c_warning
        text = '&1' ) ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_messages[ 2 ]-code
      exp = 'DUMP' ).
  ENDMETHOD.
ENDCLASS.

* OBJECT_TYPE and OBJECT_NAME are READ-ONLY, subclasses can set them
CLASS ltd_parser_error DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_parser_error.
  PUBLIC SECTION.
    METHODS set_object
      IMPORTING
        iv_type TYPE csequence
        iv_name TYPE csequence.
ENDCLASS.

CLASS ltd_parser_error IMPLEMENTATION.
  METHOD set_object.
    object_type = iv_type.
    object_name = iv_name.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_double_space DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_double_space.
  PUBLIC SECTION.
    METHODS set_object
      IMPORTING
        iv_type TYPE csequence
        iv_name TYPE csequence.
ENDCLASS.

CLASS ltd_double_space IMPLEMENTATION.
  METHOD set_object.
    object_type = iv_type.
    object_name = iv_name.
  ENDMETHOD.
ENDCLASS.

* end to end through generated checks, INFORM is a stub in open-abap-ci so only check nothing is raised
CLASS ltcl_checks DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    METHODS setup.
    METHODS parser_error FOR TESTING RAISING cx_static_check.
    METHODS double_space FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS ltcl_checks IMPLEMENTATION.
  METHOD setup.
    DATA(lo_reader) = NEW ltd_reader( ).
    lo_reader->set_prog(
      iv_name   = 'ZTEST'
      it_source = VALUE #(
        ( `REPORT ztest.` )
        ( `  foo bar moo.` ) ) ).
    zcl_lnt_utils=>set_source_reader( lo_reader ).
    zcl_lnt_utils=>set_config_reader( NEW ltd_config_reader( ) ).
  ENDMETHOD.

  METHOD parser_error.
    DATA(lo_check) = NEW ltd_parser_error( ).
    cl_abap_unit_assert=>assert_equals(
      act = lines( lo_check->scimessages )
      exp = 2 ).

    lo_check->set_object( iv_type = 'PROG' iv_name = 'ZTEST' ).
    lo_check->run( ).
  ENDMETHOD.

  METHOD double_space.
    DATA(lo_check) = NEW ltd_double_space( ).

    lo_check->set_object( iv_type = 'PROG' iv_name = 'ZTEST' ).
    lo_check->run( ).
  ENDMETHOD.
ENDCLASS.
