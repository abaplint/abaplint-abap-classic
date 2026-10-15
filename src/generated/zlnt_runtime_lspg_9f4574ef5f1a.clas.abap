CLASS zlnt_runtime_lspg_9f4574ef5f1a DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS text_document IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS resource IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 kind TYPE string option1 TYPE string option2 TYPE string condition TYPE abap_bool RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS rename IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 condition TYPE abap_bool RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS string_value IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS boolean_value IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS integer_value IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS candidate IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 condition TYPE abap_bool RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS tail IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 option1 TYPE string option2 TYPE string RETURNING VALUE(result) TYPE abap_bool.
ENDCLASS.
CLASS zlnt_runtime_lspg_9f4574ef5f1a IMPLEMENTATION.
  METHOD string_value.
    IF p0 IS BOUND.
      result = xsdbool( p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string ).
    ENDIF.
  ENDMETHOD.

  METHOD boolean_value.
    IF p0 IS BOUND.
      result = xsdbool( p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean ).
    ENDIF.
  ENDMETHOD.

  METHOD integer_value.
    IF p0 IS BOUND AND p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      result = xsdbool( p0->number_special = 0 AND p0->nval >= '-2147483648' AND p0->nval <= '2147483647' ).
    ENDIF.
  ENDMETHOD.

  METHOD text_document.
    DATA td TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA v TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    td = p0->get( 'textDocument' ).
    IF td IS NOT BOUND.
      RETURN.
    ENDIF.
    v = td->get( 'uri' ).
    IF string_value( v ) = abap_false.
      RETURN.
    ENDIF.
    v = td->get( 'version' ).
    IF v IS NOT BOUND.
      RETURN.
    ENDIF.
    IF v->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_null AND integer_value( v ) = abap_false.
      RETURN.
    ENDIF.
    v = p0->get( 'edits' ).
    IF v IS BOUND.
      result = xsdbool( v->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array ).
      IF v->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA marker TYPE REF TO zlnt_runtime_arra_6c31174d6e02.
        TRY.
            marker ?= v->oval.
            result = abap_true.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD candidate.
    DATA falsy TYPE abap_bool.
    falsy = abap_true.
    IF p0 IS BOUND.
      falsy = xsdbool( p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null OR p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string AND p0->sval IS INITIAL OR p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number AND p0->number_special = 1
      OR p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number AND p0->number_special = 0 AND p0->nval = 0 ).
    ENDIF.
    IF falsy = abap_true.
      IF condition = abap_false.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = 'lsp_guards.go: matches: conditional proof absent'.
      ENDIF.
      RETURN.
    ENDIF.
    IF p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean AND p0->bval = abap_false.
      RETURN.
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD tail.
    DATA v TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA options TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    options = p0->get( 'options' ).
    IF options IS BOUND.
      v = options->get( option1 ).
      IF v IS BOUND AND boolean_value( v ) = abap_false.
        RETURN.
      ENDIF.
      v = options->get( option2 ).
      IF v IS BOUND AND boolean_value( v ) = abap_false.
        RETURN.
      ENDIF.
    ENDIF.
    v = p0->get( 'annotationId' ).
    result = xsdbool( v IS NOT BOUND OR string_value( v ) = abap_true ).
  ENDMETHOD.

  METHOD resource.
    DATA v TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF candidate( p0 = p0 condition = condition ) = abap_false.
      RETURN.
    ENDIF.
    IF p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
      RETURN.
    ENDIF.
    v = p0->get( 'kind' ).
    IF string_value( v ) = abap_false.
      RETURN.
    ENDIF.
    IF v->sval <> kind.
      RETURN.
    ENDIF.
    v = p0->get( 'uri' ).
    IF string_value( v ) = abap_false.
      RETURN.
    ENDIF.
    result = tail( p0 = p0 option1 = option1 option2 = option2 ).
  ENDMETHOD.

  METHOD rename.
    DATA v TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF candidate( p0 = p0 condition = condition ) = abap_false.
      RETURN.
    ENDIF.
    IF p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
      RETURN.
    ENDIF.
    v = p0->get( 'kind' ).
    IF string_value( v ) = abap_false.
      RETURN.
    ENDIF.
    IF v->sval <> 'rename'.
      RETURN.
    ENDIF.
    v = p0->get( 'oldUri' ).
    IF string_value( v ) = abap_false.
      RETURN.
    ENDIF.
    v = p0->get( 'newUri' ).
    IF string_value( v ) = abap_false.
      RETURN.
    ENDIF.
    result = tail( p0 = p0 option1 = 'overwrite' option2 = 'ignoreIfExists' ).
  ENDMETHOD.
ENDCLASS.
