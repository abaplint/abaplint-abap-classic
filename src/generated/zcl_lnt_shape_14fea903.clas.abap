* TS: src/abap/5_syntax/expressions/select.ts:237:37 shape.6787ec6bd565f704fe6c22a21fe4235b1ec166557fa7ab9551cc770f0c5a1c61
CLASS zcl_lnt_shape_14fea903 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA code TYPE string.
    DATA as TYPE string.
    DATA expression TYPE REF TO zcl_lnt_expression_node.
    METHODS constructor IMPORTING i_code TYPE string i_as TYPE string i_expression TYPE REF TO zcl_lnt_expression_node OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_14fea903 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_code.
    DATA(t2) = i_as.
    DATA(t3) = i_expression.
    DATA(t4) = t1.
    me->code = t4.
    DATA(t5) = t2.
    me->as = t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t3.
    t6 = t7.
    me->expression = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1752_0bcde0f0a53e.
  ENDMETHOD.
ENDCLASS.
