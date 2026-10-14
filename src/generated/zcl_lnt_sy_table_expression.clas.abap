* TS: src/abap/5_syntax/expressions/table_expression.ts:9:1 TableExpression
CLASS zcl_lnt_sy_table_expression DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_row_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_table_expression IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_row_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t11.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t15.
      DATA(t16) = abap_true.
      IF t16 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_type.
        DATA t18 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t19 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t20) = t11.
        t19 ?= t20.
        t18 = t19.
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t22) = t18.
        t21 = t22->row_type.
        t17 = t21.
        t15 = t17.
      ELSE.
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t23.
        t15 = t23.
      ENDIF.
      t11 = t15.
    ENDIF.
    DATA t24 TYPE abap_bool.
    DATA t25 TYPE i.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_abstract_node.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = t1.
    t29 = t30.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t32) = t28.
    t31 = t32->children.
    t27 = t31.
    t26 ?= t27.
    t25 = lines( t26->items ).
    DATA(t33) = 3.
    t24 = xsdbool( t25 = t33 ).
    IF t24 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = t1.
      t36 = t37.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
      t35 = t36->find_direct_expression( i_type_9913 = t38 ).
      t34 = t35.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t40) = t34.
      DATA(t41) = t2.
      DATA(t42) = t11.
      DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      t39 = zcl_lnt_sy_source=>run_syntax( i_node = t40 i_input_967e = t41 i_target_type = t42 i_write_reference = t43 i_allow_generic_deference = t44 i_read_reference = t45 ).
    ELSE.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      DATA t48 TYPE REF TO zcl_lnt_expression_node.
      DATA(t49) = t1.
      t48 = t49.
      DATA(t50) = |INDEX|.
      t47 = t48->find_direct_token_by_text( i_text = t50 ).
      t46 = xsdbool( t47 IS BOUND ).
      IF t46 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        DATA(t54) = t1.
        t53 = t54.
        DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
        t52 = t53->find_direct_expression( i_type_9913 = t55 ).
        t51 = t52.
        DATA t56 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t57) = t51.
        DATA(t58) = t2.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t62.
        t56 = zcl_lnt_sy_source=>run_syntax( i_node = t57 i_input_967e = t58 i_target_type = t59 i_write_reference = t60 i_allow_generic_deference = t61 i_read_reference = t62 ).
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_abstract_type.
        DATA t64 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t64.
        t63 = t64.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t67 TYPE REF TO zcl_lnt_abstract_node.
        DATA t68 TYPE REF TO zcl_lnt_expression_node.
        DATA(t69) = t1.
        t68 = t69.
        t67 = t68.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t71) = t67.
        t70 = t71->children.
        t66 = t70.
        t65 ?= t66.
        DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t72.
        DATA t73 TYPE REF TO object.
        CLEAR t73.
        LOOP AT t65->items INTO t73.
          t72 ?= t73.
          DATA t74 TYPE abap_bool.
          DATA t75 TYPE abap_bool.
          DATA(t76) = t72.
          t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_expression_node ).
          t74 = t75.
          IF t75 = abap_true.
            DATA t77 TYPE abap_bool.
            DATA t78 TYPE REF TO zif_lnt_statement_runnable.
            DATA t79 TYPE REF TO zcl_lnt_expression_node.
            DATA(t80) = t72.
            DATA t81 TYPE REF TO object.
            t81 = t80.
            t79 ?= t81.
            t78 = t79->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t77 = xsdbool( t78 IS BOUND AND t78 IS INSTANCE OF zcl_lnt_component_chain_simple ).
            t74 = t77.
          ENDIF.
          IF t74 = abap_true.
            DATA t82 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t83) = t11.
            DATA t84 TYPE REF TO zcl_lnt_expression_node.
            DATA(t85) = t72.
            DATA t86 TYPE REF TO object.
            t86 = t85.
            t84 ?= t86.
            DATA(t87) = t2.
            t82 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t83 i_node = t84 i_input_967e = t87 ).
            t63 = t82.
          ELSE.
            DATA t88 TYPE abap_bool.
            DATA t89 TYPE abap_bool.
            DATA(t90) = t72.
            t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_expression_node ).
            t88 = t89.
            IF t89 = abap_true.
              DATA t91 TYPE abap_bool.
              DATA t92 TYPE REF TO zif_lnt_statement_runnable.
              DATA t93 TYPE REF TO zcl_lnt_expression_node.
              DATA(t94) = t72.
              DATA t95 TYPE REF TO object.
              t95 = t94.
              t93 ?= t95.
              t92 = t93->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_source ).
              t88 = t91.
            ENDIF.
            IF t88 = abap_true.
              DATA t96 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t96.
              DATA t97 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t97.
              DATA(t98) = abap_true.
              IF t98 = abap_true.
                DATA t99 TYPE REF TO zcl_lnt_expression_node.
                DATA(t100) = t72.
                DATA t101 TYPE REF TO object.
                t101 = t100.
                t99 ?= t101.
                t97 = t99.
              ELSE.
                DATA t102 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t102.
                t97 = t102.
              ENDIF.
              DATA(t103) = t2.
              DATA(t104) = t63.
              DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t105.
              DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t106.
              DATA t107 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t107.
              t96 = zcl_lnt_sy_source=>run_syntax( i_node = t97 i_input_967e = t103 i_target_type = t104 i_write_reference = t105 i_allow_generic_deference = t106 i_read_reference = t107 ).
            ENDIF.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d822_2b8f8a4e40c9.
  ENDMETHOD.
ENDCLASS.
