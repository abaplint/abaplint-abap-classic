* TS: src/lsp/language_server.ts:114:41 shape.d0f4aed5c4d453a959c5eaafcd9258ff8df87f8ba5ac4873d42fa4d9dba1ad96
CLASS zcl_lnt_shape_2d2f513b DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA token_types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA token_modifiers TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_token_types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_token_modifiers TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_2d2f513b IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_token_types ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_token_modifiers ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    t3 = t4.
    me->token_types = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t5 = t6.
    me->token_modifiers = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1772_842befae63be.
  ENDMETHOD.
ENDCLASS.
