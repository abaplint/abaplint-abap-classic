CLASS zlnt_runtime_mate_bdf12bf746ee DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iconfig.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_bdf12bf746ee IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA field0 TYPE REF TO zcl_lnt_iglobal_config.
    field0 = zlnt_runtime_mate_ad6460c301e9=>project( p0->get( `global` ) ).
    DATA field1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    field1 = zlnt_runtime_mate_509e617926c9=>project( p0->get( `dependencies` ) ).
    DATA field2 TYPE REF TO zcl_lnt_isyntax_settings.
    field2 = zlnt_runtime_mate_4c4d66f9971e=>project( p0->get( `syntax` ) ).
    DATA field3 TYPE REF TO zcl_lnt_irename_settings.
    field3 = zlnt_runtime_mate_25910e80bdfd=>project( p0->get( `rename` ) ).
    DATA field4 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    field4 = zlnt_runtime_mate_5aa77e2d8766=>project( p0->get( `app` ) ).
    DATA field5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    field5 = zlnt_runtime_mate_1731deb81a07=>project( p0->get( `rules` ) ).
    DATA field6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    field6 = zlnt_runtime_mate_5d528fc826f9=>project( p0->get( `targetRules` ) ).
    result = NEW zcl_lnt_iconfig( i_global = field0 i_dependencies = field1 i_syntax = field2 i_rename = field3 i_app = field4 i_rules = field5 i_target_rules = field6 ).
    result->zlnt_builtin_mate_4bfafaf0b5ed = p0.
  ENDMETHOD.
ENDCLASS.
