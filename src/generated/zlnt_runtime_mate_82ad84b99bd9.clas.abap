CLASS zlnt_runtime_mate_82ad84b99bd9 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_settings.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_82ad84b99bd9 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA field0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    field0 = zlnt_runtime_mate_24547ac6858a=>project( p0->get( `output` ) ).
    DATA field1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    field1 = zlnt_runtime_mate_9c3cf809b41d=>project( p0->get( `skip` ) ).
    DATA field2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    field2 = zlnt_runtime_mate_069e057d654f=>project( p0->get( `patterns` ) ).
    result = NEW zcl_lnt_irename_settings( i_output = field0 i_skip_34cc = field1 i_patterns = field2 ).
    result->zlnt_builtin_mate_4bfafaf0b5ed = p0.
  ENDMETHOD.
ENDCLASS.
