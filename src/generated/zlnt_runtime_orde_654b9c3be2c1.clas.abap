CLASS zlnt_runtime_orde_654b9c3be2c1 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS rule_key IMPORTING p0 TYPE string p1 TYPE string RETURNING VALUE(result) TYPE i.
    CLASS-METHODS object_name IMPORTING p0 TYPE string p1 TYPE string RETURNING VALUE(result) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS compare IMPORTING p0 TYPE string p1 TYPE string alphabet TYPE string pattern TYPE string RETURNING VALUE(result) TYPE i.
ENDCLASS.
CLASS zlnt_runtime_orde_654b9c3be2c1 IMPLEMENTATION.
  METHOD rule_key.
    result = compare( p0 = p0 p1 = p1 alphabet = `_0123456789abcdefghijklmnopqrstuvwxyz` pattern = `[^a-z0-9_]` ).
  ENDMETHOD.

  METHOD object_name.
    result = compare( p0 = p0 p1 = p1 alphabet = `_/0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ` pattern = `[^A-Z0-9_/]` ).
  ENDMETHOD.

  METHOD compare.
    DATA index TYPE i.
    DATA left_rank TYPE i.
    DATA right_rank TYPE i.
    DATA left_char TYPE string.
    DATA right_char TYPE string.
    FIND FIRST OCCURRENCE OF REGEX pattern IN p0.
    IF sy-subrc = 0.
      RAISE EXCEPTION TYPE zlnt_exception_re_5cab895c5deb.
    ENDIF.
    FIND FIRST OCCURRENCE OF REGEX pattern IN p1.
    IF sy-subrc = 0.
      RAISE EXCEPTION TYPE zlnt_exception_re_5cab895c5deb.
    ENDIF.
    WHILE index < strlen( p0 ) AND index < strlen( p1 ).
      left_char = p0+index(1).
      right_char = p1+index(1).
      FIND FIRST OCCURRENCE OF left_char IN alphabet MATCH OFFSET left_rank.
      FIND FIRST OCCURRENCE OF right_char IN alphabet MATCH OFFSET right_rank.
      IF left_rank < right_rank.
        result = -1.
        RETURN.
      ELSEIF left_rank > right_rank.
        result = 1.
        RETURN.
      ENDIF.
      index = index + 1.
    ENDWHILE.
    IF strlen( p0 ) < strlen( p1 ).
      result = -1.
    ELSEIF strlen( p0 ) > strlen( p1 ).
      result = 1.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
