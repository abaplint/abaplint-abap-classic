CLASS zlnt_exception_re_5cab895c5deb DEFINITION PUBLIC INHERITING FROM cx_no_check CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_text REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_exception_re_5cab895c5deb IMPLEMENTATION.
  METHOD get_text.
    result = `ordering input is outside the reviewed ASCII rule-key/object-name domains`.
  ENDMETHOD.
ENDCLASS.
