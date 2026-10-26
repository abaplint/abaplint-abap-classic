CLASS ltd_reader DEFINITION FINAL FOR TESTING.
  PUBLIC SECTION.
    INTERFACES zif_lnt_source_reader.
    DATA mt_files TYPE zif_lnt_source_reader=>ty_files.
    DATA mt_line_map TYPE zif_lnt_source_reader=>ty_line_maps.
ENDCLASS.

CLASS ltd_reader IMPLEMENTATION.
  METHOD zif_lnt_source_reader~read.
    et_files = mt_files.
    et_line_map = mt_line_map.
  ENDMETHOD.
ENDCLASS.

* default syntax settings, without reading the database
CLASS ltd_config_reader DEFINITION FINAL FOR TESTING.
  PUBLIC SECTION.
    INTERFACES zif_lnt_config_reader.
ENDCLASS.

CLASS ltd_config_reader IMPLEMENTATION.
  METHOD zif_lnt_config_reader~read.
    CLEAR rs_syntax.
  ENDMETHOD.
ENDCLASS.

* implemented by subclasses of the generated checks, which collect the INFORM calls
INTERFACE lif_check.
  TYPES:
    BEGIN OF ty_inform,
      test         TYPE sci_chk,
      code         TYPE sci_errc,
      sub_obj_type TYPE string,
      sub_obj_name TYPE string,
      line         TYPE i,
      column       TYPE int2,
      kind         TYPE c LENGTH 1,
      param_1      TYPE string,
    END OF ty_inform,
    ty_informs TYPE STANDARD TABLE OF ty_inform WITH EMPTY KEY.

  DATA mt_informs TYPE ty_informs.

  METHODS run_object
    IMPORTING
      iv_type TYPE csequence
      iv_name TYPE csequence.
ENDINTERFACE.

CLASS ltd_colon_missing_space DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_colon_missing_space.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_colon_missing_space IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_contains_tab DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_contains_tab.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_contains_tab IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_empty_statement DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_empty_statement.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_empty_statement IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_keyword_case DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_keyword_case.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_keyword_case IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_max_one_statement DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_max_one_statement.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_max_one_statement IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_no_yoda_conditions DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_no_yoda_conditions.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_no_yoda_conditions IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_obsolete_statement DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_obsolete_statement.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_obsolete_statement IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_prefer_is_not DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_prefer_is_not.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_prefer_is_not IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_space_before_dot DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_space_before_dot.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_space_before_dot IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltd_whitespace_end DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnc_whitespace_end.
  PUBLIC SECTION.
    INTERFACES lif_check.
  PROTECTED SECTION.
    METHODS inform REDEFINITION.
ENDCLASS.

CLASS ltd_whitespace_end IMPLEMENTATION.
  METHOD lif_check~run_object.
    CLEAR lif_check~mt_informs.
    object_type = iv_type.
    object_name = iv_name.
    run( ).
  ENDMETHOD.

  METHOD inform.
    INSERT VALUE #(
      test         = p_test
      code         = p_code
      sub_obj_type = p_sub_obj_type
      sub_obj_name = p_sub_obj_name
      line         = p_line
      column       = p_column
      kind         = p_kind
      param_1      = p_param_1 ) INTO TABLE lif_check~mt_informs.
  ENDMETHOD.
ENDCLASS.

CLASS ltcl_checks DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    DATA mo_reader TYPE REF TO ltd_reader.

    METHODS setup.
    METHODS colon_missing_space FOR TESTING RAISING cx_static_check.
    METHODS contains_tab FOR TESTING RAISING cx_static_check.
    METHODS empty_statement FOR TESTING RAISING cx_static_check.
    METHODS keyword_case FOR TESTING RAISING cx_static_check.
    METHODS max_one_statement FOR TESTING RAISING cx_static_check.
    METHODS no_yoda_conditions FOR TESTING RAISING cx_static_check.
    METHODS obsolete_statement FOR TESTING RAISING cx_static_check.
    METHODS prefer_is_not FOR TESTING RAISING cx_static_check.
    METHODS space_before_dot FOR TESTING RAISING cx_static_check.
    METHODS whitespace_end FOR TESTING RAISING cx_static_check.

    METHODS given_prog
      IMPORTING
        it_source TYPE string_table.
    METHODS then_one_finding
      IMPORTING
        ii_check  TYPE REF TO lif_check
        iv_test   TYPE sci_chk
        iv_line   TYPE i
        iv_column TYPE int2
        iv_text   TYPE string.
ENDCLASS.

CLASS ltcl_checks IMPLEMENTATION.
  METHOD setup.
    mo_reader = NEW ltd_reader( ).
    zcl_lnt_utils=>set_source_reader( mo_reader ).
    zcl_lnt_utils=>set_config_reader( NEW ltd_config_reader( ) ).
  ENDMETHOD.

  METHOD given_prog.
    mo_reader->mt_files = VALUE #( ( filename = `ztest.prog.abap` source = it_source ) ).
    mo_reader->mt_line_map = VALUE #( (
      filename  = `ztest.prog.abap`
      from_row  = 1
      to_row    = lines( it_source )
      include   = 'ZTEST'
      first_row = 1 ) ).
  ENDMETHOD.

  METHOD then_one_finding.
    ii_check->run_object(
      iv_type = 'PROG'
      iv_name = 'ZTEST' ).

    cl_abap_unit_assert=>assert_equals(
      act = ii_check->mt_informs
      exp = VALUE lif_check=>ty_informs( (
        test         = iv_test
        code         = zcl_lnt_utils=>c_code-issue
        sub_obj_type = `PROG`
        sub_obj_name = `ZTEST`
        line         = iv_line
        column       = iv_column
        kind         = cl_ci_test_root=>c_error
        param_1      = iv_text ) ) ).
  ENDMETHOD.

  METHOD colon_missing_space.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `WRITE:'a'.` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_colon_missing_space( )
      iv_test   = 'ZCL_LNC_COLON_MISSING_SPACE'
      iv_line   = 2
      iv_column = 6
      iv_text   = `Missing space after the colon` ).
  ENDMETHOD.

  METHOD contains_tab.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( |\tWRITE 'a'.| ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_contains_tab( )
      iv_test   = 'ZCL_LNC_CONTAINS_TAB'
      iv_line   = 2
      iv_column = 1
      iv_text   = `Code should not contain tabs` ).
  ENDMETHOD.

  METHOD empty_statement.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `WRITE 'a'. .` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_empty_statement( )
      iv_test   = 'ZCL_LNC_EMPTY_STATEMENT'
      iv_line   = 2
      iv_column = 12
      iv_text   = `Remove empty statement` ).
  ENDMETHOD.

  METHOD keyword_case.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `write 'a'.` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_keyword_case( )
      iv_test   = 'ZCL_LNC_KEYWORD_CASE'
      iv_line   = 2
      iv_column = 1
      iv_text   = `Keyword should be upper case: "write"` ).
  ENDMETHOD.

  METHOD max_one_statement.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `WRITE 'a'. WRITE 'b'.` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_max_one_statement( )
      iv_test   = 'ZCL_LNC_MAX_ONE_STATEMENT'
      iv_line   = 2
      iv_column = 12
      iv_text   = `Only one statement is allowed per line` ).
  ENDMETHOD.

  METHOD no_yoda_conditions.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `DATA lv_foo TYPE i.` )
      ( `IF 2 = lv_foo.` )
      ( `ENDIF.` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_no_yoda_conditions( )
      iv_test   = 'ZCL_LNC_NO_YODA_CONDITIONS'
      iv_line   = 3
      iv_column = 4
      iv_text   = `No Yoda conditions` ).
  ENDMETHOD.

  METHOD obsolete_statement.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `DATA lv_foo TYPE i.` )
      ( `MOVE 2 TO lv_foo.` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_obsolete_statement( )
      iv_test   = 'ZCL_LNC_OBSOLETE_STATEMENT'
      iv_line   = 3
      iv_column = 1
      iv_text   = `Statement "MOVE" is obsolete` ).
  ENDMETHOD.

  METHOD prefer_is_not.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `DATA lv_foo TYPE i.` )
      ( `IF NOT lv_foo IS INITIAL.` )
      ( `ENDIF.` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_prefer_is_not( )
      iv_test   = 'ZCL_LNC_PREFER_IS_NOT'
      iv_line   = 3
      iv_column = 4
      iv_text   = `Prefer IS NOT to NOT IS` ).
  ENDMETHOD.

  METHOD space_before_dot.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `WRITE 'a' .` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_space_before_dot( )
      iv_test   = 'ZCL_LNC_SPACE_BEFORE_DOT'
      iv_line   = 2
      iv_column = 10
      iv_text   = `Remove space before "," or "."` ).
  ENDMETHOD.

  METHOD whitespace_end.
    given_prog( VALUE #(
      ( `REPORT ztest.` )
      ( `WRITE 'a'. ` ) ) ).

    then_one_finding(
      ii_check  = NEW ltd_whitespace_end( )
      iv_test   = 'ZCL_LNC_WHITESPACE_END'
      iv_line   = 2
      iv_column = 11
      iv_text   = `Remove whitespace at end of line` ).
  ENDMETHOD.
ENDCLASS.
