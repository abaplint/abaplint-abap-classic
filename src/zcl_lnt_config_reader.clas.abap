* Reads the syntax settings from table ZLNT_CONFIG, using the row of the object's package,
* or else the row of its closest parent package, like one abaplint.json per abapGit repository
CLASS zcl_lnt_config_reader DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_config_reader.

  PROTECTED SECTION.
    METHODS select_package
      IMPORTING
        iv_object_type    TYPE csequence
        iv_object_name    TYPE csequence
      RETURNING
        VALUE(rv_package) TYPE devclass.

    METHODS select_parent
      IMPORTING
        iv_package       TYPE devclass
      RETURNING
        VALUE(rv_parent) TYPE devclass.

    "! Returns an initial structure if the package has no row
    METHODS select_config
      IMPORTING
        iv_package       TYPE devclass
      RETURNING
        VALUE(rs_config) TYPE zlnt_config.

  PRIVATE SECTION.
* guards against cycles in the package hierarchy
    CONSTANTS c_max_levels TYPE i VALUE 50.
ENDCLASS.

CLASS zcl_lnt_config_reader IMPLEMENTATION.
  METHOD zif_lnt_config_reader~read.
    DATA ls_config TYPE zlnt_config.

    DATA(lv_package) = select_package(
      iv_object_type = iv_object_type
      iv_object_name = iv_object_name ).

    DO c_max_levels TIMES.
      IF lv_package IS INITIAL.
        RETURN.
      ENDIF.
      ls_config = select_config( lv_package ).
      IF ls_config IS NOT INITIAL.
        rs_syntax = VALUE #(
          version         = ls_config-version
          error_namespace = ls_config-error_namespace ).
        RETURN.
      ENDIF.
      lv_package = select_parent( lv_package ).
    ENDDO.
  ENDMETHOD.

  METHOD select_package.
    SELECT SINGLE devclass FROM tadir
      WHERE pgmid = 'R3TR'
      AND object = @iv_object_type
      AND obj_name = @iv_object_name
      INTO @rv_package.
  ENDMETHOD.

  METHOD select_parent.
    SELECT SINGLE parentcl FROM tdevc
      WHERE devclass = @iv_package
      INTO @rv_parent.
  ENDMETHOD.

  METHOD select_config.
    SELECT SINGLE * FROM zlnt_config
      WHERE devclass = @iv_package
      INTO @rs_config.
  ENDMETHOD.
ENDCLASS.
