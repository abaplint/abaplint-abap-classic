CLASS zlnt_runtime_mate_b2d4b840e1d2 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_b2d4b840e1d2 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    result = p0->bval.
  ENDMETHOD.
ENDCLASS.
