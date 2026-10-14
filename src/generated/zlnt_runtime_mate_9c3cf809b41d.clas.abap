CLASS zlnt_runtime_mate_9c3cf809b41d DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_9c3cf809b41d IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    result = zlnt_runtime_mate_84a03a15abdd=>project( p0 ).
  ENDMETHOD.
ENDCLASS.
