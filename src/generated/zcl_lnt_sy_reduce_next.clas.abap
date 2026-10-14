* TS: src/abap/5_syntax/expressions/reduce_next.ts:7:1 ReduceNext
CLASS zcl_lnt_sy_reduce_next DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_reduce_next IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_expression_node( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = CAST zcl_lnt_expression_node( t1 ).
    t11 = t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t10 = t11->find_direct_expressions( i_type_9913 = t13 ).
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
    LOOP AT t10->items INTO t15.
      t14 ?= t15.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = CAST zcl_lnt_expression_node( t14 ).
        t17 = t19.
      ELSE.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t20.
        t17 = t20.
      ENDIF.
      DATA(t21) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t25.
      t16 = zcl_lnt_sy_source=>run_syntax( i_node = t17 i_input_967e = t21 i_target_type = t22 i_write_reference = t23 i_allow_generic_deference = t24 i_read_reference = t25 ).
    ENDLOOP.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = CAST zcl_lnt_expression_node( t1 ).
    t27 = t28.
    DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c ).
    t26 = t27->find_direct_expressions( i_type_9913 = t29 ).
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    LOOP AT t26->items INTO t31.
      t30 ?= t31.
      DATA t32 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t33) = CAST zcl_lnt_expression_node( t30 ).
      DATA(t34) = CAST zcl_lnt_syntax_input( t2 ).
      t32 = zcl_lnt_sy_target=>run_syntax( i_node = t33 i_input_967e = t34 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d808_902ac2ef73c2.
  ENDMETHOD.
ENDCLASS.
