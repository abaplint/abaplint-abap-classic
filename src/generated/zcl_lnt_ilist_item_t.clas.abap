* TS: src/abap/5_syntax/expressions/method_parameters.ts:17:1 IListItemT
CLASS zcl_lnt_ilist_item_t DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA target TYPE REF TO zcl_lnt_expression_node.
    DATA target_type TYPE REF TO zcl_lnt_abstract_type.
    METHODS constructor IMPORTING i_name TYPE string i_target_5f8a TYPE REF TO zcl_lnt_expression_node i_target_type TYPE REF TO zcl_lnt_abstract_type OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ilist_item_t IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = i_target_type.
    DATA(t4) = t1.
    me->name = t4.
    DATA(t5) = t2.
    me->target = t5.
    DATA(t6) = t3.
    me->target_type = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d801_ac54d443d5da.
  ENDMETHOD.
ENDCLASS.
