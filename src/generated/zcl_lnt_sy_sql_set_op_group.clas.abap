* TS: src/abap/5_syntax/expressions/sql_set_op_group.ts:6:1 SQLSetOpGroup
CLASS zcl_lnt_sy_sql_set_op_group DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_set_op_group IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA(t7) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t8) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = abap_true.
        DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t14.
      zcl_lnt_sy_expres_select=>run_syntax( i_node = t7 i_input_967e = t8 i_skip_implicit_into = t9 i_select_loop_6767 = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49 ).
    t15 = t16->find_direct_expressions( i_type_9913 = t17 ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    LOOP AT t15->items INTO t19.
      t18 ?= t19.
      DATA(t20) = CAST zcl_lnt_expression_node( t18 ).
      DATA(t21) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_sql_set_op_group=>run_syntax( i_node = t20 i_input_967e = t21 ).
    ENDLOOP.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167 ).
    t22 = t23->find_direct_expressions( i_type_9913 = t24 ).
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    LOOP AT t22->items INTO t26.
      t25 ?= t26.
      DATA(t27) = CAST zcl_lnt_expression_node( t25 ).
      DATA(t28) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_sql_set_op_group=>run_syntax( i_node = t27 i_input_967e = t28 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d818_822e44b2803d.
  ENDMETHOD.
ENDCLASS.
