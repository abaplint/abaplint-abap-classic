CLASS zlnt_exception_js_dd4bf8ec1aa1 DEFINITION PUBLIC INHERITING FROM cx_no_check CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_text REDEFINITION.
ENDCLASS.
CLASS zlnt_exception_js_dd4bf8ec1aa1 IMPLEMENTATION.
  METHOD get_text.
    result = `JSON5 input is outside the comments/trailing-comma subset`.
  ENDMETHOD.
ENDCLASS.
