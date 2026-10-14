* TS: src/abap/5_syntax/expressions/sql_order_by.ts:6:1 SQLOrderBy
CLASS zcl_lnt_sy_sql_order_by DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_order_by IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
      t9 = t10.
      DATA(t11) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t9 i_input_967e = t11 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d817_cd5ad42efa97.
  ENDMETHOD.
ENDCLASS.
