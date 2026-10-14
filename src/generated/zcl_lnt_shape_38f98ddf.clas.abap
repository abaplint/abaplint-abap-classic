* TS: src/lsp/_interfaces.ts:5:13 shape.c15878f84f899e72c82f27c14ffef66e5332f7d67fdee83849462140a23723e5
CLASS zcl_lnt_shape_38f98ddf DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA line TYPE int8.
    DATA character TYPE int8.
    METHODS constructor IMPORTING i_line TYPE int8 i_character TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_38f98ddf IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_line.
    DATA(t2) = i_character.
    DATA(t3) = t1.
    me->line = t3.
    DATA(t4) = t2.
    me->character = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1716_8e55c1afb772.
  ENDMETHOD.
ENDCLASS.
