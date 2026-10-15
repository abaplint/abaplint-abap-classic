CLASS zlnt_runtime_json_5744959ea211 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS format IMPORTING p0 TYPE string p1 TYPE string RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_json_5744959ea211 IMPLEMENTATION.
  METHOD format.
    DATA gap TYPE string.
    DATA depth TYPE i.
    DATA pos TYPE i.
    DATA previous TYPE string.
    DATA next TYPE string.
    DATA ch TYPE string.
    DATA quoted TYPE abap_bool.
    DATA escaped TYPE abap_bool.
    DATA newline TYPE abap_bool.
    DATA padding TYPE string.
    DATA count TYPE i.
    gap = p1.
    IF strlen( gap ) > 10.
      gap = gap+0(10).
    ENDIF.
    IF gap IS INITIAL.
      result = p0.
      RETURN.
    ENDIF.
    WHILE pos < strlen( p0 ).
      ch = p0+pos(1).
      IF quoted = abap_true.
        CONCATENATE result ch INTO result RESPECTING BLANKS.
        IF escaped = abap_true.
          escaped = abap_false.
        ELSEIF ch = `\`.
          escaped = abap_true.
        ELSEIF ch = `"`.
          quoted = abap_false.
        ENDIF.
      ELSE.
        CLEAR newline.
        CASE ch.
          WHEN `"`.
            quoted = abap_true.
            CONCATENATE result ch INTO result RESPECTING BLANKS.
          WHEN `{` OR `[`.
            CONCATENATE result ch INTO result RESPECTING BLANKS.
            depth = depth + 1.
            count = pos + 1.
            IF count < strlen( p0 ).
              next = p0+count(1).
              IF next <> `}` AND next <> `]`.
                newline = abap_true.
              ENDIF.
            ENDIF.
          WHEN `}` OR `]`.
            depth = depth - 1.
            IF pos > 0 AND previous <> `{` AND previous <> `[`.
              newline = abap_true.
            ENDIF.
          WHEN `,`.
            CONCATENATE result ch INTO result RESPECTING BLANKS.
            newline = abap_true.
          WHEN `:`.
            CONCATENATE result ch ` ` INTO result RESPECTING BLANKS.
          WHEN OTHERS.
            CONCATENATE result ch INTO result RESPECTING BLANKS.
        ENDCASE.
        IF newline = abap_true.
          CLEAR padding.
          count = 0.
          WHILE count < depth.
            CONCATENATE padding gap INTO padding RESPECTING BLANKS.
            count = count + 1.
          ENDWHILE.
          CONCATENATE result cl_abap_char_utilities=>newline padding INTO result RESPECTING BLANKS.
        ENDIF.
        IF ch = `}` OR ch = `]`.
          CONCATENATE result ch INTO result RESPECTING BLANKS.
        ENDIF.
      ENDIF.
      previous = ch.
      pos = pos + 1.
    ENDWHILE.
  ENDMETHOD.
ENDCLASS.
