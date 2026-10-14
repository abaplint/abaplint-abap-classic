CLASS zlnt_runtime_mate_5d528fc826f9 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_5d528fc826f9 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    result = zlnt_runtime_mate_1731deb81a07=>project( p0 ).
  ENDMETHOD.
ENDCLASS.
