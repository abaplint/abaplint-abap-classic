* TS: src/abap/5_syntax/expressions/component_cond.ts:7:1 ComponentCond
CLASS zcl_lnt_sy_component_cond DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_left_type TYPE REF TO zcl_lnt_abstract_type i_right_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_cond IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_left_type ).
    DATA(t4) = CAST zcl_lnt_abstract_type( i_right_type ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d130_b1d921bbb09b ).
    t5 = t6->find_direct_expressions( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t5->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = CAST zcl_lnt_expression_node( t8 ).
      DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56 ).
      t11 = t12->find_direct_expression( i_type_9913 = t13 ).
      t10 = t11.
      DATA t14 TYPE abap_bool.
      DATA(t15) = CAST zcl_lnt_expression_node( t10 ).
      t14 = xsdbool( t15 IS BOUND ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_expression_node.
        DATA(t17) = CAST zcl_lnt_expression_node( t10 ).
        t16 = t17.
        DATA(t18) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t19) = CAST zcl_lnt_abstract_type( t3 ).
        DATA(t20) = CAST zcl_lnt_abstract_type( t4 ).
        zcl_lnt_sy_component_cond=>run_syntax( i_node = t16 i_input_967e = t18 i_left_type = t19 i_right_type = t20 ).
      ENDIF.
    ENDLOOP.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d126_c330c74d8713 ).
    t21 = t22->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    LOOP AT t21->items INTO t25.
      t24 ?= t25.
      DATA(t26) = CAST zcl_lnt_expression_node( t24 ).
      DATA(t27) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t28) = CAST zcl_lnt_abstract_type( t3 ).
      DATA(t29) = CAST zcl_lnt_abstract_type( t4 ).
      zcl_lnt_sy_component_compare=>run_syntax( i_node = t26 i_input_967e = t27 i_left_type = t28 i_right_type = t29 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d768_ed7266ec55fb.
  ENDMETHOD.
ENDCLASS.
