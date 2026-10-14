* TS: src/abap/2_statements/result.ts:5:1 ResultNode
CLASS zcl_lnt_result_node DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA node TYPE REF TO zif_lnt_union_4cf1d054.
    DATA previous TYPE REF TO zcl_lnt_result_node.
    METHODS constructor IMPORTING i_node TYPE REF TO zif_lnt_union_4cf1d054 i_previous TYPE REF TO zcl_lnt_result_node OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_result_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_previous.
    DATA(t3) = t1.
    me->node = t3.
    DATA(t4) = t2.
    me->previous = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1744_4383d7e77ea8.
  ENDMETHOD.
ENDCLASS.
