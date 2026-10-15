CLASS zlnt_property_tok_17530183905a DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS get RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA value TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
ENDCLASS.
CLASS zlnt_property_tok_17530183905a IMPLEMENTATION.
  METHOD get.
    IF value IS NOT BOUND.
      CREATE OBJECT value.
      value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      DATA parent TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT value->cval EXPORTING name = '' emitted = '' parent = parent static_names = names.
    ENDIF.
    result = value.
  ENDMETHOD.
ENDCLASS.
