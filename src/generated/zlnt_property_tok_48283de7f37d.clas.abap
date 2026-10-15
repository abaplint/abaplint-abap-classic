CLASS zlnt_property_tok_48283de7f37d DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS get RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA value TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
ENDCLASS.
CLASS zlnt_property_tok_48283de7f37d IMPLEMENTATION.
  METHOD get.
    IF value IS NOT BOUND.
      CREATE OBJECT value.
      value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    ENDIF.
    result = value.
  ENDMETHOD.
ENDCLASS.
