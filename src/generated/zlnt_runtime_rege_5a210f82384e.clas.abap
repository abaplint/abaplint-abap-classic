CLASS zlnt_runtime_rege_5a210f82384e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA source TYPE string.
    DATA posix TYPE string.
    DATA excluded TYPE string.
    DATA ignore_case TYPE abap_bool.
    DATA global TYPE abap_bool.
    METHODS constructor IMPORTING pattern TYPE string flags TYPE string excluded_pattern TYPE string OPTIONAL.
    METHODS test IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS match_test IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS replace IMPORTING p0 TYPE string p1 TYPE string RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_rege_5a210f82384e IMPLEMENTATION.
  METHOD constructor.
    DATA i TYPE i.
    DATA n TYPE i.
    DATA c TYPE string.
    DATA in_class TYPE abap_bool.
    DATA escaped TYPE abap_bool.
    n = strlen( pattern ).
    WHILE i < n.
      c = pattern+i(1).
      IF escaped = abap_true.
        escaped = abap_false.
        source = source && c.
      ELSEIF c = '\'.
        escaped = abap_true.
        source = source && c.
      ELSEIF c = '/' AND in_class = abap_false.
        source = source && '\/'.
      ELSEIF c = cl_abap_char_utilities=>newline.
        source = source && '\n'.
      ELSE.
        IF c = '['.
          in_class = abap_true.
        ELSEIF c = ']'.
          in_class = abap_false.
        ENDIF.
        source = source && c.
      ENDIF.
      i = i + 1.
    ENDWHILE.
    IF source IS INITIAL.
      source = '(?:)'.
    ENDIF.
    i = 0.
    in_class = abap_false.
    excluded = excluded_pattern.
    n = strlen( pattern ).
    WHILE i < n.
      c = pattern+i(1).
      IF c = '\'.
        i = i + 1.
        IF i >= n.
          EXIT.
        ENDIF.
        c = pattern+i(1).
        CASE c.
          WHEN 'w'.
            IF in_class = abap_true.
              CONCATENATE posix 'A-Za-z0-9_' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[A-Za-z0-9_]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'W'.
            IF in_class = abap_true.
              CONCATENATE posix '\W' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[^A-Za-z0-9_]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'd'.
            IF in_class = abap_true.
              CONCATENATE posix '0-9' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[0-9]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'D'.
            IF in_class = abap_true.
              CONCATENATE posix '\D' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[^0-9]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN OTHERS.
            CONCATENATE posix '\' c INTO posix RESPECTING BLANKS.
        ENDCASE.
      ELSE.
        IF c = '['.
          in_class = abap_true.
        ELSEIF c = ']'.
          in_class = abap_false.
        ENDIF.
        CONCATENATE posix c INTO posix RESPECTING BLANKS.
      ENDIF.
      i = i + 1.
    ENDWHILE.
    n = strlen( flags ).
    i = 0.
    WHILE i < n.
      c = flags+i(1).
      IF c = 'i'.
        ignore_case = abap_true.
      ELSEIF c = 'g'.
        global = abap_true.
      ENDIF.
      i = i + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD test.
    IF excluded IS NOT INITIAL.
      IF ignore_case = abap_true.
        FIND REGEX excluded IN p0 IGNORING CASE.
      ELSE.
        FIND REGEX excluded IN p0.
      ENDIF.
      IF sy-subrc = 0.
        RETURN.
      ENDIF.
    ENDIF.
    IF ignore_case = abap_true.
      FIND REGEX posix IN p0 IGNORING CASE.
    ELSE.
      FIND REGEX posix IN p0.
    ENDIF.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD match_test.
    IF excluded IS NOT INITIAL.
      IF ignore_case = abap_true.
        FIND REGEX excluded IN p0 IGNORING CASE.
      ELSE.
        FIND REGEX excluded IN p0.
      ENDIF.
      IF sy-subrc = 0.
        RETURN.
      ENDIF.
    ENDIF.
    IF ignore_case = abap_true.
      FIND REGEX posix IN p0 IGNORING CASE.
    ELSE.
      FIND REGEX posix IN p0.
    ENDIF.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD replace.
    result = p0.
    IF excluded IS NOT INITIAL.
      IF ignore_case = abap_true.
        FIND REGEX excluded IN p0 IGNORING CASE.
      ELSE.
        FIND REGEX excluded IN p0.
      ENDIF.
      IF sy-subrc = 0.
        RETURN.
      ENDIF.
    ENDIF.

    IF global = abap_true.
      IF ignore_case = abap_true.
        REPLACE ALL OCCURRENCES OF REGEX posix IN result WITH p1 IGNORING CASE.
      ELSE.
        REPLACE ALL OCCURRENCES OF REGEX posix IN result WITH p1.
      ENDIF.
    ELSE.
      IF ignore_case = abap_true.
        REPLACE REGEX posix IN result WITH p1 IGNORING CASE.
      ELSE.
        REPLACE REGEX posix IN result WITH p1.
      ENDIF.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
