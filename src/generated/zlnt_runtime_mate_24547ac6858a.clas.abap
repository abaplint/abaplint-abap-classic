CLASS zlnt_runtime_mate_24547ac6858a DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_24547ac6858a IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    CREATE OBJECT result.
    result->has = abap_true.
    result->value = zlnt_runtime_mate_6f6f1905947e=>project( p0 ).
  ENDMETHOD.
ENDCLASS.
