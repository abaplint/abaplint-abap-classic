* TS: src/abap/5_syntax/expressions/loop_group_by.ts:11:1 LoopGroupBy
CLASS zcl_lnt_sy_loop_group_by DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_loop_group_by IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_expression_node.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA(t10) = t6.
      DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t9 = t10->find_direct_expression( i_type_9913 = t11 ).
      t8 = t9.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t8.
      t12 = xsdbool( t13 IS BOUND ).
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zcl_lnt_expression_node.
        DATA(t15) = t8.
        t14 = t15.
        DATA(t16) = t2.
        DATA t17 TYPE REF TO zcl_lnt_void_type.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA(t20) = |todoGroupBy|.
          DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t21->has = abap_true.
          t21->value = t20.
          t18 = t21.
        ELSE.
          DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t22.
          t18 = t22.
        ENDIF.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t17 = zcl_lnt_void_type=>get_db65( i_voided = t18 i_qualified_name = t23 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t14 i_input_967e = t16 i_type_9913 = t17 ).
      ELSE.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t25) = t6.
        DATA(t26) = t2.
        t24 = zcl_lnt_sy_target=>run_syntax( i_node = t25 i_input_967e = t26 ).
      ENDIF.
    ENDLOOP.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t28) = t1.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t27 = t28->find_all_expressions( i_type_9913 = t29 ).
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    LOOP AT t27->items INTO t31.
      t30 ?= t31.
      DATA(t32) = t30.
      DATA(t33) = t2.
      DATA t34 TYPE REF TO zcl_lnt_void_type.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA(t37) = |todoGroupBy|.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t37.
        t35 = t38.
      ELSE.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        t35 = t39.
      ENDIF.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      t34 = zcl_lnt_void_type=>get_db65( i_voided = t35 i_qualified_name = t40 ).
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t32 i_input_967e = t33 i_type_9913 = t34 ).
    ENDLOOP.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t42) = t1.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t41 = t42->find_direct_expressions( i_type_9913 = t43 ).
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t44.
    DATA t45 TYPE REF TO object.
    CLEAR t45.
    LOOP AT t41->items INTO t45.
      t44 ?= t45.
      DATA t46 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = t44.
        t47 = t49.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t50.
        t47 = t50.
      ENDIF.
      DATA(t51) = t2.
      DATA t52 TYPE REF TO zcl_lnt_void_type.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA(t55) = |todoGroupBy|.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t55.
        t53 = t56.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t53 = t57.
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t52 = zcl_lnt_void_type=>get_db65( i_voided = t53 i_qualified_name = t58 ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t61.
      t46 = zcl_lnt_sy_source=>run_syntax( i_node = t47 i_input_967e = t51 i_target_type = t52 i_write_reference = t59 i_allow_generic_deference = t60 i_read_reference = t61 ).
    ENDLOOP.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = t1.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t62 = t63->find_direct_expressions( i_type_9913 = t64 ).
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t65.
    DATA t66 TYPE REF TO object.
    CLEAR t66.
    LOOP AT t62->items INTO t66.
      t65 ?= t66.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t68) = t65.
      DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
      t67 = t68->find_direct_expressions( i_type_9913 = t69 ).
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      LOOP AT t67->items INTO t71.
        t70 ?= t71.
        DATA(t72) = t70.
        DATA(t73) = t2.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA t75 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t75.
        zcl_lnt_sy_component_compare=>run_syntax( i_node = t72 i_input_967e = t73 i_left_type = t74 i_right_type = t75 ).
      ENDLOOP.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d794_0f024dad6ad6.
  ENDMETHOD.
ENDCLASS.
