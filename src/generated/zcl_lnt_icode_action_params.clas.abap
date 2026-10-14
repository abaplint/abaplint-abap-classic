* TS: src/lsp/_interfaces.ts:14:1 ICodeActionParams
CLASS zcl_lnt_icode_action_params DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text_document TYPE REF TO zcl_lnt_shape_9e00b1e6.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA context TYPE REF TO zcl_lnt_shape_be772522.
    METHODS constructor IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 i_range TYPE REF TO zcl_lnt_shape_9ead17bd i_context TYPE REF TO zcl_lnt_shape_be772522.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_icode_action_params IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_text_document.
    DATA(t2) = i_range.
    DATA(t3) = i_context.
    DATA(t4) = t1.
    me->text_document = t4.
    DATA(t5) = t2.
    me->range = t5.
    DATA(t6) = t3.
    me->context = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1064_6bad8e66fdb3.
  ENDMETHOD.
ENDCLASS.
