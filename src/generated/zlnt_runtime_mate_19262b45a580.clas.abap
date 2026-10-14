CLASS zlnt_runtime_mate_19262b45a580 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_19262b45a580 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    CREATE OBJECT result.
    result->has = abap_true.
    result->value = zlnt_runtime_mate_b2d4b840e1d2=>project( p0 ).
  ENDMETHOD.
ENDCLASS.
