CLASS ltcl_skip_testclass DEFINITION DEFERRED.
CLASS ltcl_reduce DEFINITION DEFERRED.
CLASS ltcl_clif_source DEFINITION DEFERRED.
CLASS ltcl_includes DEFINITION DEFERRED.
CLASS zcl_lnt_source_reader DEFINITION LOCAL FRIENDS ltcl_skip_testclass ltcl_reduce ltcl_clif_source ltcl_includes.

* ported from the ZCL_ABAPGIT_OO_SERIALIZER unit tests, https://github.com/abapGit/abapGit
CLASS ltcl_skip_testclass DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    DATA mt_source TYPE string_table.

    METHODS empty_include FOR TESTING RAISING cx_static_check.
    METHODS one_line_include FOR TESTING RAISING cx_static_check.
    METHODS one_line_include_2 FOR TESTING RAISING cx_static_check.
    METHODS one_line_include_3 FOR TESTING RAISING cx_static_check.
    METHODS two_line_include FOR TESTING RAISING cx_static_check.
    METHODS two_line_include_2 FOR TESTING RAISING cx_static_check.
    METHODS two_line_include_3 FOR TESTING RAISING cx_static_check.
    METHODS more_than_two_lines FOR TESTING RAISING cx_static_check.

    METHODS given_source_is
      IMPORTING
        iv_source TYPE string.
    METHODS then_should_be_skipped.
    METHODS then_should_not_be_skipped.
ENDCLASS.

CLASS ltcl_skip_testclass IMPLEMENTATION.
  METHOD empty_include.
    then_should_be_skipped( ).
  ENDMETHOD.

  METHOD one_line_include.
    given_source_is( `*"* use this source file for your ABAP unit test classes` ).
    then_should_be_skipped( ).
  ENDMETHOD.

  METHOD one_line_include_2.
    given_source_is( `*` ).
    then_should_be_skipped( ).
  ENDMETHOD.

  METHOD one_line_include_3.
    given_source_is( `write: 'This is ABAP'.` ).
    then_should_not_be_skipped( ).
  ENDMETHOD.

  METHOD two_line_include.
    given_source_is( `*"* use this source file for your ABAP unit test classes` ).
    given_source_is( `` ).
    then_should_be_skipped( ).
  ENDMETHOD.

  METHOD two_line_include_2.
    given_source_is( `*"* use this source file for your ABAP unit test classes` ).
    given_source_is( `write: 'This is ABAP'.` ).
    then_should_not_be_skipped( ).
  ENDMETHOD.

  METHOD two_line_include_3.
    given_source_is( ` ` ).
    given_source_is( `*"* use this source file for your ABAP unit test classes` ).
    then_should_not_be_skipped( ).
  ENDMETHOD.

  METHOD more_than_two_lines.
    given_source_is( `*"* use this source file for your ABAP unit test classes` ).
    given_source_is( `CLASS ltcl_test DEFINITION FINAL FOR TESTING` ).
    given_source_is( `  DURATION SHORT` ).
    given_source_is( `  RISK LEVEL HARMLESS.` ).
    given_source_is( ` ` ).
    given_source_is( `  PRIVATE SECTION.` ).
    given_source_is( `    METHODS:` ).
    given_source_is( `      first_test FOR TESTING RAISING cx_static_check.` ).
    given_source_is( `ENDCLASS.` ).
    given_source_is( ` ` ).
    given_source_is( `CLASS ltcl_test IMPLEMENTATION.` ).
    given_source_is( ` ` ).
    given_source_is( `  METHOD first_test.` ).
    given_source_is( `    cl_abap_unit_assert=>fail( 'This is a real test' ).` ).
    given_source_is( `  ENDMETHOD.` ).
    given_source_is( ` ` ).
    given_source_is( `ENDCLASS.` ).
    then_should_not_be_skipped( ).
  ENDMETHOD.

  METHOD given_source_is.
    INSERT iv_source INTO TABLE mt_source.
  ENDMETHOD.

  METHOD then_should_be_skipped.
    cl_abap_unit_assert=>assert_equals(
      act = zcl_lnt_source_reader=>calculate_skip_testclass( mt_source )
      exp = abap_true
      msg = |Testclass should be skipped| ).
  ENDMETHOD.

  METHOD then_should_not_be_skipped.
    cl_abap_unit_assert=>assert_equals(
      act = zcl_lnt_source_reader=>calculate_skip_testclass( mt_source )
      exp = abap_false
      msg = |Testclass should not be skipped| ).
  ENDMETHOD.
ENDCLASS.

CLASS ltcl_reduce DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    METHODS empty FOR TESTING RAISING cx_static_check.
    METHODS only_generated_comments FOR TESTING RAISING cx_static_check.
    METHODS short_lines_ignored FOR TESTING RAISING cx_static_check.
    METHODS code_kept FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS ltcl_reduce IMPLEMENTATION.
  METHOD empty.
    DATA lt_source TYPE string_table.

    zcl_lnt_source_reader=>reduce( CHANGING ct_source = lt_source ).

    cl_abap_unit_assert=>assert_initial( lt_source ).
  ENDMETHOD.

  METHOD only_generated_comments.
    DATA(lt_source) = VALUE string_table(
      ( `*"* use this source file for any type of declarations (class` )
      ( `*"* definitions, interfaces or type declarations) you need for` )
      ( `*"* components in the private section` ) ).

    zcl_lnt_source_reader=>reduce( CHANGING ct_source = lt_source ).

    cl_abap_unit_assert=>assert_initial( lt_source ).
  ENDMETHOD.

  METHOD short_lines_ignored.
* lines shorter than three characters do not count as code
    DATA(lt_source) = VALUE string_table(
      ( `*"* use this source file for your ABAP unit test classes` )
      ( `` )
      ( `* ` ) ).

    zcl_lnt_source_reader=>reduce( CHANGING ct_source = lt_source ).

    cl_abap_unit_assert=>assert_initial( lt_source ).
  ENDMETHOD.

  METHOD code_kept.
    DATA(lt_source) = VALUE string_table(
      ( `*"* use this source file for the definition and implementation of` )
      ( `CLASS lcl_foo DEFINITION.` )
      ( `ENDCLASS.` ) ).
    DATA(lt_expected) = lt_source.

    zcl_lnt_source_reader=>reduce( CHANGING ct_source = lt_source ).

    cl_abap_unit_assert=>assert_equals(
      act = lt_source
      exp = lt_expected ).
  ENDMETHOD.
ENDCLASS.

CLASS ltcl_clif_source DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    CONSTANTS c_filename TYPE string VALUE `zcl_lnt_test_clas.clas.abap`.

    METHODS line_map FOR TESTING RAISING cx_static_check.

    METHODS source
      RETURNING
        VALUE(rt_source) TYPE string_table.
ENDCLASS.

CLASS ltcl_clif_source IMPLEMENTATION.
  METHOD source.
    rt_source = VALUE #(
      ( `CLASS zcl_lnt_test_clas DEFINITION PUBLIC CREATE PUBLIC.` )
      ( `  PUBLIC SECTION.` )
      ( `    INTERFACES zif_lnt_test_intf.` )
      ( `    METHODS constructor.` )
      ( `  PROTECTED SECTION.` )
      ( `    DATA mv_protected TYPE i.` )
      ( `  PRIVATE SECTION.` )
      ( `    DATA mv_private TYPE i.` )
      ( `    DATA mv_other TYPE i.` )
      ( `ENDCLASS.` )
      ( `` )
      ( `CLASS zcl_lnt_test_clas IMPLEMENTATION.` )
      ( `  METHOD constructor.` )
      ( `    mv_private = 2.` )
      ( `  ENDMETHOD.` )
      ( `` )
      ( `  METHOD zif_lnt_test_intf~bar.` )
      ( `    RETURN.` )
      ( `  ENDMETHOD.` )
      ( `ENDCLASS.` ) ).
  ENDMETHOD.

  METHOD line_map.
    DATA lt_expected TYPE zif_lnt_source_reader=>ty_line_maps.

    DATA(lt_line_map) = NEW zcl_lnt_source_reader( )->map_clif_source(
      iv_filename   = c_filename
      iv_class_name = 'ZCL_LNT_TEST_CLAS'
      it_source     = source( ) ).

* the implementation part, rows 12 to 20, is not mapped
    lt_expected = VALUE #( filename = c_filename first_row = 1
      ( from_row = 1 to_row = 4 include = 'ZCL_LNT_TEST_CLAS=============CU' )
      ( from_row = 5 to_row = 6 include = 'ZCL_LNT_TEST_CLAS=============CO' )
      ( from_row = 7 to_row = 10 include = 'ZCL_LNT_TEST_CLAS=============CI' ) ).
    cl_abap_unit_assert=>assert_equals(
      act = lt_line_map
      exp = lt_expected ).
  ENDMETHOD.
ENDCLASS.

CLASS ltcl_includes DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    METHODS find_includes FOR TESTING RAISING cx_static_check.
    METHODS filenames FOR TESTING RAISING cx_static_check.
    METHODS class_include FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS ltcl_includes IMPLEMENTATION.
  METHOD find_includes.
    DATA(lt_includes) = NEW zcl_lnt_source_reader( )->find_includes(
      iv_prefix = 'LZLNT_TEST'
      it_source = VALUE #(
        ( `*******************************************************************` )
        ( `*   INCLUDE lzlnt_testcomment.` )
        ( `  INCLUDE LZLNT_TESTTOP.                     " Global Declarations` )
        ( `  include lzlnt_testuxx.` )
        ( `  INCLUDE zlnt_test_other_include.` )
        ( `  INCLUDE STRUCTURE t100.` )
        ( `  INCLUDE TYPE ty_foo.` )
        ( `  INCLUDE lzlnt_testf01 IF FOUND.` ) ) ).

    cl_abap_unit_assert=>assert_equals(
      act = lt_includes
      exp = VALUE string_table(
        ( `LZLNT_TESTTOP` )
        ( `LZLNT_TESTUXX` )
        ( `LZLNT_TESTF01` ) ) ).
  ENDMETHOD.

  METHOD filenames.
    cl_abap_unit_assert=>assert_equals(
      act = zcl_lnt_source_reader=>to_filename( iv_name = '/LNT/TEST_PROG' iv_extension = 'prog.abap' )
      exp = `#lnt#test_prog.prog.abap` ).
    cl_abap_unit_assert=>assert_equals(
      act = zcl_lnt_source_reader=>to_filename( iv_name = 'ZCL_FOO' iv_extension = 'clas.locals_imp.abap' )
      exp = `zcl_foo.clas.locals_imp.abap` ).
  ENDMETHOD.

  METHOD class_include.
    cl_abap_unit_assert=>assert_equals(
      act = zcl_lnt_source_reader=>class_include( iv_class_name = 'zcl_foo' iv_suffix = 'CCIMP' )
      exp = 'ZCL_FOO=======================CCIMP' ).
  ENDMETHOD.
ENDCLASS.
