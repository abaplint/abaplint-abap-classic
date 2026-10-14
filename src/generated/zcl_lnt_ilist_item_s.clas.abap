* TS: src/abap/5_syntax/expressions/method_parameters.ts:23:1 IListItemS
CLASS zcl_lnt_ilist_item_s DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA source TYPE REF TO zcl_lnt_expression_node.
    DATA source_type TYPE REF TO zcl_lnt_abstract_type.
    METHODS constructor IMPORTING i_name TYPE string i_source_75cf TYPE REF TO zcl_lnt_expression_node i_source_type TYPE REF TO zcl_lnt_abstract_type OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ilist_item_s IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_source_75cf.
    DATA(t3) = i_source_type.
    DATA(t4) = t1.
    me->name = t4.
    DATA(t5) = t2.
    me->source = t5.
    DATA(t6) = t3.
    me->source_type = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d802_0c6a63100fb5.
  ENDMETHOD.
ENDCLASS.
