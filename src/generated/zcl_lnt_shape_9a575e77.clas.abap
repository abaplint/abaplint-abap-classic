* TS: src/abap/5_syntax/_spaghetti_scope.ts:43:18 shape.9a2880cecfba4feed82205266048b869927e166885e968a525748e506407e01a
CLASS zcl_lnt_shape_9a575e77 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA field_name TYPE string.
    DATA message_25cb TYPE string.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    METHODS constructor IMPORTING i_field_name TYPE string i_message_26cb TYPE string i_token TYPE REF TO zcl_lnt_abstract_token OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9a575e77 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_field_name.
    DATA(t2) = i_message_26cb.
    DATA(t3) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t4) = t1.
    me->field_name = t4.
    DATA(t5) = t2.
    me->message_25cb = t5.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t7) = CAST zcl_lnt_abstract_token( t3 ).
    t6 = t7.
    me->token = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1712_e00d364f7f6f.
  ENDMETHOD.
ENDCLASS.
