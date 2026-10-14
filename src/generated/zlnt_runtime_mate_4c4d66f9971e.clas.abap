CLASS zlnt_runtime_mate_4c4d66f9971e DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_isyntax_settings.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_4c4d66f9971e IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA field0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    field0 = zlnt_runtime_mate_5d528fc826f9=>project( p0->get( `version` ) ).
    DATA field1 TYPE string.
    field1 = zlnt_runtime_mate_6f6f1905947e=>project( p0->get( `errorNamespace` ) ).
    DATA field2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    field2 = zlnt_runtime_mate_9c3cf809b41d=>project( p0->get( `globalConstants` ) ).
    DATA field3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    field3 = zlnt_runtime_mate_9c3cf809b41d=>project( p0->get( `ambigiousVoids` ) ).
    DATA field4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    field4 = zlnt_runtime_mate_9c3cf809b41d=>project( p0->get( `globalMacros` ) ).
    result = NEW zcl_lnt_isyntax_settings( i_version = field0 i_error_namespace = field1 i_global_constants = field2 i_ambigious_voids = field3 i_global_macros_5535 = field4 ).
    result->zlnt_builtin_mate_4bfafaf0b5ed = p0.
  ENDMETHOD.
ENDCLASS.
