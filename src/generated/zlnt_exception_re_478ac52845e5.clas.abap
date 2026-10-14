CLASS zlnt_exception_re_478ac52845e5 DEFINITION PUBLIC INHERITING FROM cx_no_check CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_text REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_exception_re_478ac52845e5 IMPLEMENTATION.
  METHOD get_text.
    result = `input is outside the supported strict JSON subset`.
  ENDMETHOD.
ENDCLASS.
