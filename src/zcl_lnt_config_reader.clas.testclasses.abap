* replaces the database reads with internal tables
CLASS ltd_reader DEFINITION FINAL FOR TESTING INHERITING FROM zcl_lnt_config_reader.
  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_package,
        devclass TYPE devclass,
        parentcl TYPE devclass,
      END OF ty_package,
      ty_packages TYPE STANDARD TABLE OF ty_package WITH EMPTY KEY,
      ty_configs  TYPE STANDARD TABLE OF zlnt_config WITH EMPTY KEY.
    DATA mv_package TYPE devclass.
    DATA mt_packages TYPE ty_packages.
    DATA mt_configs TYPE ty_configs.

  PROTECTED SECTION.
    METHODS select_package REDEFINITION.
    METHODS select_parent REDEFINITION.
    METHODS select_config REDEFINITION.
ENDCLASS.

CLASS ltd_reader IMPLEMENTATION.
  METHOD select_package.
    rv_package = mv_package.
  ENDMETHOD.

  METHOD select_parent.
    READ TABLE mt_packages INTO DATA(ls_package) WITH KEY devclass = iv_package.
    IF sy-subrc = 0.
      rv_parent = ls_package-parentcl.
    ENDIF.
  ENDMETHOD.

  METHOD select_config.
    READ TABLE mt_configs INTO rs_config WITH KEY devclass = iv_package.
    IF sy-subrc <> 0.
      CLEAR rs_config.
    ENDIF.
  ENDMETHOD.
ENDCLASS.

CLASS ltcl_read DEFINITION FINAL FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    DATA mo_reader TYPE REF TO ltd_reader.

    METHODS setup.
    METHODS own_package FOR TESTING RAISING cx_static_check.
    METHODS parent_package FOR TESTING RAISING cx_static_check.
    METHODS closest_package_wins FOR TESTING RAISING cx_static_check.
    METHODS no_row FOR TESTING RAISING cx_static_check.
    METHODS object_not_found FOR TESTING RAISING cx_static_check.
    METHODS package_cycle FOR TESTING RAISING cx_static_check.

    METHODS read
      RETURNING
        VALUE(rs_syntax) TYPE zif_lnt_config_reader=>ty_syntax.
ENDCLASS.

CLASS ltcl_read IMPLEMENTATION.
  METHOD setup.
    mo_reader = NEW ltd_reader( ).
    mo_reader->mv_package = 'ZCHILD'.
    mo_reader->mt_packages = VALUE #(
      ( devclass = 'ZCHILD' parentcl = 'ZPARENT' )
      ( devclass = 'ZPARENT' parentcl = 'ZROOT' )
      ( devclass = 'ZROOT' ) ).
  ENDMETHOD.

  METHOD read.
    rs_syntax = CAST zif_lnt_config_reader( mo_reader )->read(
      iv_object_type = 'PROG'
      iv_object_name = 'ZTEST' ).
  ENDMETHOD.

  METHOD own_package.
    mo_reader->mt_configs = VALUE #( ( devclass = 'ZCHILD' version = 'v740sp08' error_namespace = `^(Z|Y)` ) ).

    cl_abap_unit_assert=>assert_equals(
      act = read( )
      exp = VALUE zif_lnt_config_reader=>ty_syntax( version = `v740sp08` error_namespace = `^(Z|Y)` ) ).
  ENDMETHOD.

  METHOD parent_package.
    mo_reader->mt_configs = VALUE #( ( devclass = 'ZROOT' version = 'v702' ) ).

    cl_abap_unit_assert=>assert_equals(
      act = read( )-version
      exp = `v702` ).
  ENDMETHOD.

  METHOD closest_package_wins.
    mo_reader->mt_configs = VALUE #(
      ( devclass = 'ZROOT' version = 'v702' )
      ( devclass = 'ZPARENT' version = 'v750' ) ).

    cl_abap_unit_assert=>assert_equals(
      act = read( )-version
      exp = `v750` ).
  ENDMETHOD.

  METHOD no_row.
    cl_abap_unit_assert=>assert_initial( read( ) ).
  ENDMETHOD.

  METHOD object_not_found.
    mo_reader->mt_configs = VALUE #( ( devclass = 'ZCHILD' version = 'v702' ) ).
    CLEAR mo_reader->mv_package.

    cl_abap_unit_assert=>assert_initial( read( ) ).
  ENDMETHOD.

  METHOD package_cycle.
    mo_reader->mt_packages = VALUE #(
      ( devclass = 'ZCHILD' parentcl = 'ZPARENT' )
      ( devclass = 'ZPARENT' parentcl = 'ZCHILD' ) ).

    cl_abap_unit_assert=>assert_initial( read( ) ).
  ENDMETHOD.
ENDCLASS.
