CLASS zlnt_runtime_mate_5aa77e2d8766 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabaplint_app_settings.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_5aa77e2d8766 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    result = zlnt_runtime_mate_3c81bd79906f=>project( p0 ).
  ENDMETHOD.
ENDCLASS.
