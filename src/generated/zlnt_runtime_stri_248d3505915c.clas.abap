CLASS zlnt_runtime_stri_248d3505915c DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS pad IMPORTING text TYPE string target TYPE f fill TYPE string RETURNING VALUE(result) TYPE string.
    CLASS-METHODS float_prefix IMPORTING text TYPE string RETURNING VALUE(result) TYPE f.
    CLASS-METHODS float_optional IMPORTING text TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLASS-METHODS int_optional IMPORTING text TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLASS-METHODS sha1 IMPORTING text TYPE string RETURNING VALUE(result) TYPE string.
    CLASS-METHODS split IMPORTING text TYPE string pattern TYPE REF TO zlnt_runtime_rege_5a210f82384e limit TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS whitespace IMPORTING ch TYPE string RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS code_unit IMPORTING ch TYPE string RETURNING VALUE(result) TYPE i.
ENDCLASS.
CLASS zlnt_runtime_stri_248d3505915c IMPLEMENTATION.
  METHOD code_unit.
    DATA converter TYPE REF TO cl_abap_conv_out_ce.
    DATA bytes TYPE xstring.
    DATA low TYPE x LENGTH 1.
    DATA high TYPE x LENGTH 1.
    DATA hi TYPE i.
    result = cl_abap_conv_out_ce=>uccpi( ch ).
    IF result >= 255.
      converter = cl_abap_conv_out_ce=>create( encoding = '4103' ).
      converter->convert( EXPORTING data = ch IMPORTING buffer = bytes ).
      low = bytes+0(1).
      high = bytes+1(1).
      result = low.
      hi = high.
      result = result + hi * 256.
    ENDIF.
  ENDMETHOD.

  METHOD whitespace.
    DATA code TYPE i.
    code = code_unit( ch ).
    result = xsdbool( code >= 8192 AND code <= 8202 OR code = 9 OR code = 10 OR code = 11 OR code = 12 OR code = 13 OR code = 32 OR code = 160 OR code = 5760 OR code = 8232 OR code = 8233 OR code = 8239 OR code = 8287 OR code = 12288 OR code = 65279 ).
  ENDMETHOD.

  METHOD pad.
    DATA count TYPE f.
    DATA needed TYPE i.
    DATA take TYPE i.
    DATA padding TYPE string.
    DATA fragments TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
    result = text.
    count = trunc( target ).
    IF count <= strlen( text ) OR fill = ``.
      RETURN.
    ENDIF.
    IF count > 1048576.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    needed = count - strlen( text ).
    WHILE needed > 0.
      take = nmin( val1 = needed val2 = strlen( fill ) ).
      padding = fill+0(take).
      APPEND padding TO fragments.
      needed = needed - take.
    ENDWHILE.
    APPEND text TO fragments.
    CONCATENATE LINES OF fragments INTO result RESPECTING BLANKS.
  ENDMETHOD.

  METHOD float_optional.
    DATA start TYPE i.
    DATA count TYPE i.
    DATA ch TYPE string.
    DATA input TYPE string.
    DATA token TYPE string.
    result = NEW #( ).
    result->has = abap_true.
    WHILE start < strlen( text ).
      ch = text+start(1).
      IF whitespace( ch ) = abap_false.
        EXIT.
      ENDIF.
      start = start + 1.
    ENDWHILE.
    input = substring( val = text off = start ).
    FIND REGEX '^[+-]?Infinity' IN input MATCH LENGTH count.
    IF sy-subrc = 0.
      result->number_special = 2.
      IF input+0(1) = '-'.
        result->number_special = 3.
      ENDIF.
      RETURN.
    ENDIF.
    FIND REGEX '^[+-]?([0-9]+(\.[0-9]*)?|\.[0-9]+)([eE][+-]?[0-9]+)?' IN input MATCH LENGTH count.
    IF sy-subrc <> 0 OR count = 0.
      result->number_special = 1.
      RETURN.
    ENDIF.
    token = input+0(count).
    TRY.
        result->value = token.
      CATCH cx_sy_conversion_overflow.
        result->number_special = 2.
        IF token+0(1) = '-'.
          result->number_special = 3.
        ENDIF.
    ENDTRY.
  ENDMETHOD.

  METHOD int_optional.
    DATA start TYPE i.
    DATA count TYPE i.
    DATA ch TYPE string.
    DATA input TYPE string.
    DATA token TYPE string.
    result = NEW #( ).
    result->has = abap_true.
    WHILE start < strlen( text ).
      ch = text+start(1).
      IF whitespace( ch ) = abap_false.
        EXIT.
      ENDIF.
      start = start + 1.
    ENDWHILE.
    input = substring( val = text off = start ).
    FIND REGEX '^[+-]?[0-9]+' IN input MATCH LENGTH count.
    IF sy-subrc <> 0 OR count = 0.
      result->number_special = 1.
      RETURN.
    ENDIF.
    token = input+0(count).
    TRY.
        result->value = token.
      CATCH cx_sy_conversion_overflow.
        result->number_special = 2.
        IF token+0(1) = '-'.
          result->number_special = 3.
        ENDIF.
    ENDTRY.
  ENDMETHOD.

  METHOD float_prefix.
    DATA start TYPE i.
    DATA count TYPE i.
    DATA ch TYPE string.
    DATA input TYPE string.
    DATA token TYPE string.
    WHILE start < strlen( text ).
      ch = text+start(1).
      IF whitespace( ch ) = abap_false.
        EXIT.
      ENDIF.
      start = start + 1.
    ENDWHILE.
    input = substring( val = text off = start ).
    FIND FIRST OCCURRENCE OF REGEX '^[+-]?([0-9]+(\.[0-9]*)?|\.[0-9]+)([eE][+-]?[0-9]+)?' IN input MATCH LENGTH count.
    IF sy-subrc <> 0 OR count = 0.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    token = input+0(count).
    TRY.
        result = token.
      CATCH cx_sy_conversion_error cx_sy_arithmetic_error.
        RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDTRY.
    IF result = 0 AND token+0(1) = '-'.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
  ENDMETHOD.

  METHOD sha1.
    DATA cursor TYPE i.
    DATA ch TYPE string.
    DATA code TYPE i.
    DATA low TYPE i.
    WHILE cursor < strlen( text ).
      ch = text+cursor(1).
      code = code_unit( ch ).
      IF code >= 55296 AND code <= 56319.
        cursor = cursor + 1.
        IF cursor >= strlen( text ).
          RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
        ENDIF.
        ch = text+cursor(1).
        low = code_unit( ch ).
        IF low < 56320 OR low > 57343.
          RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
        ENDIF.
      ELSEIF code >= 56320 AND code <= 57343.
        RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
      ENDIF.
      cursor = cursor + 1.
    ENDWHILE.
    cl_abap_message_digest=>calculate_hash_for_char( EXPORTING if_algorithm = 'SHA1' if_data = text IMPORTING ef_hashstring = result ).
    TRANSLATE result TO LOWER CASE.
  ENDMETHOD.

  METHOD split.
    DATA lim TYPE f.
    DATA quotient TYPE f.
    DATA cursor TYPE i.
    DATA start TYPE i.
    DATA count TYPE i.
    DATA ch TYPE string.
    DATA part TYPE string.
    DATA separator TYPE abap_bool.
    DATA punct TYPE abap_bool.
    CREATE OBJECT result.
    lim = trunc( limit ).
    IF abs( lim ) > 9007199254740991.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    quotient = lim / 4294967296.
    quotient = trunc( quotient ).
    lim = lim - quotient * 4294967296.
    IF lim < 0.
      lim = lim + 4294967296.
    ENDIF.
    IF lim = 0.
      RETURN.
    ENDIF.
    IF pattern IS NOT BOUND OR pattern->excluded <> `` OR pattern->flags CN 'gy'.
      RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDIF.
    CASE pattern->source.
      WHEN '\s+'.
      WHEN '[\s.,:(]+'.
        punct = abap_true.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_exception_st_3209c6b944d9.
    ENDCASE.
    WHILE cursor < strlen( text ).
      ch = text+cursor(1).
      separator = whitespace( ch ).
      IF punct = abap_true AND ( ch = '.' OR ch = ',' OR ch = ':' OR ch = '(' ).
        separator = abap_true.
      ENDIF.
      IF separator = abap_false.
        cursor = cursor + 1.
        CONTINUE.
      ENDIF.
      count = cursor - start.
      part = substring( val = text off = start len = count ).
      APPEND part TO result->items.
      IF lines( result->items ) >= lim.
        RETURN.
      ENDIF.
      DO.
        cursor = cursor + 1.
        IF cursor >= strlen( text ).
          EXIT.
        ENDIF.
        ch = text+cursor(1).
        separator = whitespace( ch ).
        IF punct = abap_true AND ( ch = '.' OR ch = ',' OR ch = ':' OR ch = '(' ).
          separator = abap_true.
        ENDIF.
        IF separator = abap_false.
          EXIT.
        ENDIF.
      ENDDO.
      start = cursor.
    ENDWHILE.
    part = substring( val = text off = start ).
    APPEND part TO result->items.
  ENDMETHOD.
ENDCLASS.
