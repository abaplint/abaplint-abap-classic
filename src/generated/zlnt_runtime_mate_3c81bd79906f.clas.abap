CLASS zlnt_runtime_mate_3c81bd79906f DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabaplint_app_settings.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_3c81bd79906f IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA field0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field0 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `observations` ) ).
    result = NEW zcl_lnt_iabaplint_app_settings( i_observations = field0 ).
    result->zlnt_builtin_mate_4bfafaf0b5ed = p0.
  ENDMETHOD.
ENDCLASS.
