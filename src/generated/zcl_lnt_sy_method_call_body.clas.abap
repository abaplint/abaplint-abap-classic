* TS: src/abap/5_syntax/expressions/method_call_body.ts:10:1 MethodCallBody
CLASS zcl_lnt_sy_method_call_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zif_lnt_union_8cd68e5e( i_method ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d216_5867c1ce5807 ).
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = CAST zcl_lnt_expression_node( t4 ).
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA(t10) = NEW zcl_lnt_sy_method_parameters( ).
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = CAST zcl_lnt_expression_node( t4 ).
      t11 = t12.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t14) = CAST zif_lnt_union_8cd68e5e( t3 ).
      t10->run_syntax( i_node = t11 i_input_967e = t13 i_method = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d214_4a4b8612d221 ).
    t16 = t17->find_direct_expression( i_type_9913 = t18 ).
    t15 = t16.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_expression_node( t15 ).
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA(t22) = CAST zcl_lnt_expression_node( t15 ).
      t21 = t22.
      DATA(t23) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t24) = CAST zif_lnt_union_8cd68e5e( t3 ).
      zcl_lnt_sy_method_call_param=>run_syntax( i_node = t21 i_input_967e = t23 i_method = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t25 = t26->find_direct_expressions( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    LOOP AT t25->items INTO t29.
      t28 ?= t29.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA(t33) = CAST zcl_lnt_expression_node( t28 ).
        t31 = t33.
      ELSE.
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t34.
        t31 = t34.
      ENDIF.
      DATA(t35) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t39.
      t30 = zcl_lnt_sy_source=>run_syntax( i_node = t31 i_input_967e = t35 i_target_type = t36 i_write_reference = t37 i_allow_generic_deference = t38 i_read_reference = t39 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d796_cdce9c68cd62.
  ENDMETHOD.
ENDCLASS.
