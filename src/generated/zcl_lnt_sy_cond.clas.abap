* TS: src/abap/5_syntax/expressions/cond.ts:6:1 Cond
CLASS zcl_lnt_sy_cond DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cond IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a ).
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_expression_node.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA(t10) = CAST zcl_lnt_expression_node( t6 ).
      DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421 ).
      t9 = t10->find_direct_expression( i_type_9913 = t11 ).
      t8 = t9.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zcl_lnt_expression_node( t8 ).
      t12 = xsdbool( t13 IS BOUND ).
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zcl_lnt_expression_node.
        DATA(t15) = CAST zcl_lnt_expression_node( t8 ).
        t14 = t15.
        DATA(t16) = CAST zcl_lnt_syntax_input( t2 ).
        zcl_lnt_sy_cond=>run_syntax( i_node = t14 i_input_967e = t16 ).
      ENDIF.
    ENDLOOP.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e ).
    t17 = t18->find_direct_expressions( i_type_9913 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t17->items INTO t21.
      t20 ?= t21.
      DATA(t22) = CAST zcl_lnt_expression_node( t20 ).
      DATA(t23) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_compare=>run_syntax( i_node = t22 i_input_967e = t23 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d770_90fdda94af24.
  ENDMETHOD.
ENDCLASS.
