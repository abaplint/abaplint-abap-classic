CLASS zlnt_exception_re_bb8cb5bb6246 DEFINITION PUBLIC INHERITING FROM cx_no_check CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_text REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_exception_re_bb8cb5bb6246 IMPLEMENTATION.
  METHOD get_text.
    result = `input is outside the reviewed abapGit XML subset`.
  ENDMETHOD.
ENDCLASS.
