* TS: src/lsp/semantic.ts:14:1 Token
CLASS zcl_lnt_ls_token DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA line TYPE int8.
    DATA start_char TYPE int8.
    DATA length TYPE int8.
    DATA token_type TYPE string.
    DATA token_modifiers TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_line TYPE int8 i_start_char TYPE int8 i_length TYPE int8 i_token_type TYPE string i_token_modifiers TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ls_token IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_line.
    DATA(t2) = i_start_char.
    DATA(t3) = i_length.
    DATA(t4) = i_token_type.
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_token_modifiers ).
    DATA(t6) = t1.
    me->line = t6.
    DATA(t7) = t2.
    me->start_char = t7.
    DATA(t8) = t3.
    me->length = t8.
    DATA(t9) = t4.
    me->token_type = t9.
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
    me->token_modifiers = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1079_de691b322bdd.
  ENDMETHOD.
ENDCLASS.
