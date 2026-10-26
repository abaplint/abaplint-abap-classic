REPORT zlnt_config.

* Maintains table ZLNT_CONFIG, the abaplint syntax settings per package.
* A row applies to its package and all subpackages without a row of their own

PARAMETERS p_devc TYPE devclass.
* the dropdown lists the fixed values of domain ZLNT_VERSION, empty means the default
PARAMETERS p_vers TYPE zlnt_version AS LISTBOX VISIBLE LENGTH 20.
PARAMETERS p_ns TYPE c LENGTH 200 LOWER CASE.
SELECTION-SCREEN SKIP.
PARAMETERS p_list RADIOBUTTON GROUP act DEFAULT 'X'.
PARAMETERS p_save RADIOBUTTON GROUP act.
PARAMETERS p_del RADIOBUTTON GROUP act.

CLASS lcl_app DEFINITION FINAL.
  PUBLIC SECTION.
    METHODS run.

  PRIVATE SECTION.
    METHODS is_authorized
      RETURNING
        VALUE(rv_authorized) TYPE abap_bool.

    METHODS package_exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool.

    METHODS save.
    METHODS delete.
    METHODS list.
ENDCLASS.

CLASS lcl_app IMPLEMENTATION.
  METHOD run.
    IF p_list = abap_true.
      list( ).
      RETURN.
    ENDIF.

    IF is_authorized( ) = abap_false.
      MESSAGE 'No authorization to change table ZLNT_CONFIG' TYPE 'S' DISPLAY LIKE 'E'.
      RETURN.
    ELSEIF package_exists( ) = abap_false.
      MESSAGE 'Enter an existing package' TYPE 'S' DISPLAY LIKE 'E'.
      RETURN.
    ENDIF.

    IF p_save = abap_true.
      save( ).
    ELSE.
      delete( ).
    ENDIF.
  ENDMETHOD.

  METHOD is_authorized.
    AUTHORITY-CHECK OBJECT 'S_TABU_NAM'
      ID 'ACTVT' FIELD '02'
      ID 'TABLE' FIELD 'ZLNT_CONFIG'.
    rv_authorized = xsdbool( sy-subrc = 0 ).
  ENDMETHOD.

  METHOD package_exists.
    SELECT SINGLE devclass FROM tdevc
      WHERE devclass = @p_devc
      INTO @DATA(lv_package).
    rv_exists = xsdbool( sy-subrc = 0 AND lv_package IS NOT INITIAL ).
  ENDMETHOD.

  METHOD save.
    DATA(ls_config) = VALUE zlnt_config(
      devclass        = p_devc
      version         = p_vers
      error_namespace = p_ns ).
    MODIFY zlnt_config FROM @ls_config.
    MESSAGE |Saved the configuration of package { p_devc }| TYPE 'S'.
  ENDMETHOD.

  METHOD delete.
    DELETE FROM zlnt_config WHERE devclass = @p_devc.
    IF sy-subrc = 0.
      MESSAGE |Deleted the configuration of package { p_devc }| TYPE 'S'.
    ELSE.
      MESSAGE |Package { p_devc } has no configuration| TYPE 'S' DISPLAY LIKE 'W'.
    ENDIF.
  ENDMETHOD.

  METHOD list.
    SELECT * FROM zlnt_config
      ORDER BY devclass
      INTO TABLE @DATA(lt_configs).
    IF lt_configs IS INITIAL.
      WRITE / 'No configuration, all packages use the default settings'.
      RETURN.
    ENDIF.

    LOOP AT lt_configs INTO DATA(ls_config).
      WRITE: / ls_config-devclass, ls_config-version, ls_config-error_namespace.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  NEW lcl_app( )->run( ).
