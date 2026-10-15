CLASS zlnt_runtime_rege_5a210f82384e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA source TYPE string.
    DATA flags TYPE string.
    DATA last_index TYPE i.
    DATA posix TYPE string.
    DATA excluded TYPE string.
    DATA ignore_case TYPE abap_bool.
    DATA global TYPE abap_bool.
    METHODS constructor IMPORTING pattern TYPE string flags TYPE string excluded_pattern TYPE string OPTIONAL.
    METHODS match IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS test IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS match_test IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS replace IMPORTING p0 TYPE string p1 TYPE string RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS class_hyphens IMPORTING pattern TYPE string RETURNING VALUE(result) TYPE string.
ENDCLASS.
CLASS zlnt_runtime_rege_5a210f82384e IMPLEMENTATION.
  METHOD constructor.
    DATA i TYPE i.
    DATA n TYPE i.
    DATA c TYPE string.
    DATA in_class TYPE abap_bool.
    DATA escaped TYPE abap_bool.
    DATA whitespace TYPE string.
    DATA dot_class TYPE string.
    DATA normalized TYPE string.
    whitespace = cl_abap_conv_in_ce=>uccpi( 9 ) &&
    cl_abap_conv_in_ce=>uccpi( 10 ) &&
    cl_abap_conv_in_ce=>uccpi( 11 ) &&
    cl_abap_conv_in_ce=>uccpi( 12 ) &&
    cl_abap_conv_in_ce=>uccpi( 13 ) &&
    `    - ` &&
    cl_abap_conv_in_ce=>uccpi( 8232 ) &&
    cl_abap_conv_in_ce=>uccpi( 8233 ) &&
    `  　` &&
    cl_abap_conv_in_ce=>uccpi( 65279 ).
    dot_class = `[^` &&
    cl_abap_conv_in_ce=>uccpi( 10 ) &&
    cl_abap_conv_in_ce=>uccpi( 13 ) &&
    cl_abap_conv_in_ce=>uccpi( 8232 ) &&
    cl_abap_conv_in_ce=>uccpi( 8233 ) &&
    `]`.
    me->flags = flags.
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
    normalized = class_hyphens( pattern ).
    n = strlen( normalized ).
    WHILE i < n.
      c = normalized+i(1).
      IF c = '\'.
        i = i + 1.
        IF i >= n.
          EXIT.
        ENDIF.
        c = normalized+i(1).
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
          WHEN 's'.
            IF in_class = abap_true.
              CONCATENATE posix whitespace INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[' whitespace ']' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'S'.
            IF in_class = abap_true.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ELSE.
              CONCATENATE posix '[^' whitespace ']' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN OTHERS.
            CONCATENATE posix '\' c INTO posix RESPECTING BLANKS.
        ENDCASE.
      ELSEIF in_class = abap_false AND c = '.' AND flags NA 's'.
        CONCATENATE posix dot_class INTO posix RESPECTING BLANKS.
      ELSEIF in_class = abap_false AND c = '^' AND flags NA 'm'.
        CONCATENATE posix '\A' INTO posix RESPECTING BLANKS.
      ELSEIF in_class = abap_false AND c = '$' AND flags NA 'm'.
        CONCATENATE posix '\z' INTO posix RESPECTING BLANKS.
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
    IF posix IS INITIAL.
      posix = '(?:)'.
    ENDIF.
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
    IF p1 CS '$'.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
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

  METHOD match.
    DATA matches TYPE match_result_tab.
    DATA hit TYPE match_result.
    DATA group TYPE submatch_result.
    DATA groups TYPE submatch_result_tab.
    DATA part TYPE string.
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
        FIND ALL OCCURRENCES OF REGEX posix IN p0 IGNORING CASE RESULTS matches.
      ELSE.
        FIND ALL OCCURRENCES OF REGEX posix IN p0 RESULTS matches.
      ENDIF.
    ELSE.
      IF ignore_case = abap_true.
        FIND FIRST OCCURRENCE OF REGEX posix IN p0 IGNORING CASE RESULTS hit.
        IF sy-subrc = 0.
          APPEND hit TO matches.
        ENDIF.
      ELSE.
        FIND FIRST OCCURRENCE OF REGEX posix IN p0 RESULTS hit.
        IF sy-subrc = 0.
          APPEND hit TO matches.
        ENDIF.
      ENDIF.
    ENDIF.
    IF matches IS INITIAL.
      RETURN.
    ENDIF.
    CREATE OBJECT result.
    LOOP AT matches INTO hit.
      IF global = abap_false.
        result->match_index = hit-offset.
        result->match_has_index = abap_true.
      ENDIF.
      part = p0+hit-offset(hit-length).
      APPEND part TO result->items.
      IF global = abap_false.
        groups = hit-submatches.
        LOOP AT groups INTO group.
          IF group-offset < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          part = p0+group-offset(group-length).
          APPEND part TO result->items.
        ENDLOOP.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD class_hyphens.
    TYPES: BEGIN OF atom,
    text   TYPE string,
    is_set TYPE abap_bool,
    END OF atom.
    DATA atoms TYPE STANDARD TABLE OF atom WITH DEFAULT KEY.
    DATA item TYPE atom.
    DATA middle TYPE atom.
    DATA last TYPE atom.
    DATA i TYPE i.
    DATA start TYPE i.
    DATA count TYPE i.
    DATA j TYPE i.
    DATA next_atom TYPE i.
    DATA c TYPE string.
    DATA body TYPE string.
    DATA negative TYPE abap_bool.
    DATA hyphen TYPE abap_bool.
    WHILE i < strlen( pattern ).
      c = pattern+i(1).
      IF c = '\' AND i + 1 < strlen( pattern ).
        CONCATENATE result pattern+i(2) INTO result RESPECTING BLANKS.
        i = i + 2.
        CONTINUE.
      ENDIF.
      IF c <> '['.
        CONCATENATE result c INTO result RESPECTING BLANKS.
        i = i + 1.
        CONTINUE.
      ENDIF.
      start = i.
      i = i + 1.
      CLEAR: negative, hyphen, body, atoms.
      IF i < strlen( pattern ) AND pattern+i(1) = '^'.
        negative = abap_true.
        i = i + 1.
      ENDIF.
      WHILE i < strlen( pattern ) AND pattern+i(1) <> ']'.
        CLEAR item.
        count = 1.
        IF pattern+i(1) = '\' AND i + 1 < strlen( pattern ).
          j = i + 1.
          c = pattern+j(1).
          count = 2.
          item-is_set = xsdbool( c CA 'dDsSwW' ).
          IF c = 'x' AND i + 4 <= strlen( pattern ).
            count = 4.
          ELSEIF c = 'u' AND i + 6 <= strlen( pattern ).
            count = 6.
          ENDIF.
        ENDIF.
        item-text = pattern+i(count).
        APPEND item TO atoms.
        i = i + count.
      ENDWHILE.
      IF i >= strlen( pattern ).
        body = substring( val = pattern off = start ).
        CONCATENATE result body INTO result RESPECTING BLANKS.
        RETURN.
      ENDIF.
      j = 1.
      WHILE j <= lines( atoms ).
        READ TABLE atoms INDEX j INTO item.
        CLEAR: middle, last.
        next_atom = j + 1.
        READ TABLE atoms INDEX next_atom INTO middle.
        next_atom = j + 2.
        READ TABLE atoms INDEX next_atom INTO last.
        IF middle-text = '-' AND last-text IS NOT INITIAL AND item-is_set = abap_false AND last-is_set = abap_false.
          CONCATENATE body item-text '-' last-text INTO body RESPECTING BLANKS.
          j = j + 3.
        ELSE.
          IF item-text = '-' OR item-text = '\-'.
            hyphen = abap_true.
          ELSE.
            CONCATENATE body item-text INTO body RESPECTING BLANKS.
          ENDIF.
          j = j + 1.
        ENDIF.
      ENDWHILE.
      CONCATENATE result '[' INTO result RESPECTING BLANKS.
      IF negative = abap_true.
        CONCATENATE result '^' INTO result RESPECTING BLANKS.
      ENDIF.
      IF hyphen = abap_true AND body NP '-*'.
        CONCATENATE result '-' INTO result RESPECTING BLANKS.
      ENDIF.
      CONCATENATE result body INTO result RESPECTING BLANKS.
      IF hyphen = abap_true AND body CP '-*'.
        CONCATENATE result '-' INTO result RESPECTING BLANKS.
      ENDIF.
      CONCATENATE result ']' INTO result RESPECTING BLANKS.
      i = i + 1.
    ENDWHILE.
  ENDMETHOD.
ENDCLASS.
