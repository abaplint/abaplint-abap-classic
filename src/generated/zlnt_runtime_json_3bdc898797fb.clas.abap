CLASS zlnt_runtime_json_3bdc898797fb DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS normalize IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE string.
    CLASS-METHODS parse IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  PRIVATE SECTION.
    TYPES: BEGIN OF edit,
    offset      TYPE i,
    count       TYPE i,
    replacement TYPE string,
    END OF edit.
    TYPES edits TYPE STANDARD TABLE OF edit WITH DEFAULT KEY.
ENDCLASS.
CLASS zlnt_runtime_json_3bdc898797fb IMPLEMENTATION.
  METHOD parse.
    DATA normalized TYPE string.
    normalized = normalize( p0 ).
    TRY.
        result = zlnt_runtime_json_7c6b3012af76=>parse( normalized ).
      CATCH zlnt_exception_re_478ac52845e5.
        RAISE EXCEPTION TYPE zlnt_exception_js_dd4bf8ec1aa1.
    ENDTRY.
  ENDMETHOD.

  METHOD normalize.
    DATA length TYPE i.
    DATA cursor TYPE i.
    DATA state TYPE i.
    DATA start TYPE i.
    DATA span TYPE i.
    DATA run TYPE i.
    DATA count TYPE i.
    DATA comma TYPE i VALUE -1.
    DATA can_end TYPE abap_bool.
    DATA comma_can_end TYPE abap_bool.
    DATA ch TYPE string.
    DATA last TYPE string.
    DATA window TYPE string.
    DATA white TYPE string.
    DATA line_end TYPE string.
    DATA cr TYPE string.
    DATA ls TYPE string.
    DATA ps TYPE string.
    DATA plain TYPE string VALUE '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz{}[]:._$+-*'.
    DATA string_end TYPE string VALUE '"\'.
    DATA changes TYPE edits.
    DATA change TYPE edit.
    DATA fragments TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
    DATA copied TYPE i.
    cr = cl_abap_conv_in_ce=>uccpi( 13 ).
    ls = cl_abap_conv_in_ce=>uccpi( 8232 ).
    ps = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE ` ` cl_abap_char_utilities=>horizontal_tab cr cl_abap_char_utilities=>newline INTO white RESPECTING BLANKS.
    CONCATENATE cr cl_abap_char_utilities=>newline ls ps INTO line_end RESPECTING BLANKS.
    length = strlen( p0 ).
    WHILE cursor < length.
      span = length - cursor.
      IF span > 128.
        span = 128.
      ENDIF.
      window = p0+cursor(span).
      ch = p0+cursor(1).
      CASE state.
        WHEN 0.
          IF ch CO white.
            IF window CO white.
              run = span.
            ELSE.
              run = sy-fdpos.
            ENDIF.
            cursor = cursor + run.
            CONTINUE.
          ENDIF.
          IF ch = '/'.
            start = cursor.
            state = 3.
            cursor = cursor + 1.
            CONTINUE.
          ENDIF.
          IF comma >= 0.
            IF comma_can_end = abap_true AND ( ch = ']' OR ch = '}' ).
              APPEND VALUE #( offset = comma count = 1 ) TO changes.
            ENDIF.
            comma = -1.
          ENDIF.
          CASE ch.
            WHEN '"'.
              state = 1.
              can_end = abap_false.
              cursor = cursor + 1.
            WHEN ','.
              comma = cursor.
              comma_can_end = can_end.
              can_end = abap_false.
              cursor = cursor + 1.
            WHEN OTHERS.
              IF ch CO plain.
                IF window CN plain.
                  run = sy-fdpos.
                ELSE.
                  run = span.
                ENDIF.
                cursor = cursor + run.
                count = cursor - 1.
                last = p0+count(1).
              ELSE.
                last = ch.
                cursor = cursor + 1.
              ENDIF.
              can_end = xsdbool( last CO '0123456789' OR last = ']' OR last = '}' OR last = 'e' OR last = 'l' ).
          ENDCASE.
        WHEN 1.
          IF window CA string_end.
            run = sy-fdpos.
          ELSE.
            run = span.
          ENDIF.
          IF run > 0.
            cursor = cursor + run.
            CONTINUE.
          ENDIF.
          IF ch = '"'.
            state = 0.
            can_end = abap_true.
          ELSE.
            state = 2.
          ENDIF.
          cursor = cursor + 1.
        WHEN 2.
          state = 1.
          cursor = cursor + 1.
        WHEN 3.
          CASE ch.
            WHEN '/'.
              state = 4.
              cursor = cursor + 1.
            WHEN '*'.
              state = 5.
              cursor = cursor + 1.
            WHEN OTHERS.
              state = 0.
              can_end = abap_false.
              comma = -1.
          ENDCASE.
        WHEN 4.
          IF window CA line_end.
            run = sy-fdpos.
          ELSE.
            run = span.
          ENDIF.
          IF run > 0.
            cursor = cursor + run.
            CONTINUE.
          ENDIF.
          count = cursor - start.
          APPEND VALUE #( offset = start count = count replacement = ` ` ) TO changes.
          IF ch = ls OR ch = ps.
            APPEND VALUE #( offset = cursor count = 1 replacement = cl_abap_char_utilities=>newline ) TO changes.
            cursor = cursor + 1.
          ENDIF.
          state = 0.
        WHEN 5.
          IF window CA '*'.
            run = sy-fdpos.
          ELSE.
            run = span.
          ENDIF.
          IF run > 0.
            cursor = cursor + run.
            CONTINUE.
          ENDIF.
          state = 6.
          cursor = cursor + 1.
        WHEN 6.
          IF ch = '/'.
            cursor = cursor + 1.
            count = cursor - start.
            APPEND VALUE #( offset = start count = count replacement = ` ` ) TO changes.
            state = 0.
          ELSEIF ch = '*'.
            IF window CO '*'.
              run = span.
            ELSE.
              run = sy-fdpos.
            ENDIF.
            cursor = cursor + run.
          ELSE.
            state = 5.
          ENDIF.
      ENDCASE.
    ENDWHILE.
    IF state = 1 OR state = 2 OR state = 5 OR state = 6.
      RAISE EXCEPTION TYPE zlnt_exception_js_dd4bf8ec1aa1.
    ENDIF.
    IF state = 4.
      count = length - start.
      APPEND VALUE #( offset = start count = count replacement = ` ` ) TO changes.
    ENDIF.
    IF changes IS INITIAL.
      result = p0.
      RETURN.
    ENDIF.
    SORT changes BY offset.
    LOOP AT changes INTO change.
      count = change-offset - copied.
      IF count > 0.
        APPEND p0+copied(count) TO fragments.
      ENDIF.
      IF change-replacement IS NOT INITIAL.
        APPEND change-replacement TO fragments.
      ENDIF.
      copied = change-offset + change-count.
    ENDLOOP.
    count = length - copied.
    IF count > 0.
      APPEND p0+copied(count) TO fragments.
    ENDIF.
    CONCATENATE LINES OF fragments INTO result RESPECTING BLANKS.
  ENDMETHOD.
ENDCLASS.
