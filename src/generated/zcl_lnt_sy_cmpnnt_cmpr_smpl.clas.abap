* TS: src/abap/5_syntax/expressions/component_compare_simple.ts:9:1 ComponentCompareSimple
CLASS zcl_lnt_sy_cmpnnt_cmpr_smpl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_row_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cmpnnt_cmpr_smpl IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_row_type ).
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t1 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = CAST zcl_lnt_abstract_node( t8 ).
    t10 = t11->children.
    t7 = t10.
    t6 ?= t7.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    LOOP AT t6->items INTO t13.
      t12 ?= t13.
      DATA t14 TYPE abap_bool.
      DATA(t15) = CAST zif_lnt_union_4cf1d054( t12 ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_expression_node ).
      IF t14 = abap_true.
        DATA t16 TYPE abap_bool.
        DATA t17 TYPE REF TO zif_lnt_statement_runnable.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA(t19) = CAST zif_lnt_union_4cf1d054( t12 ).
        DATA t20 TYPE REF TO object.
        t20 = t19.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_component_chain_simple ).
        IF t16 = abap_true.
          DATA t21 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t21.
          DATA t22 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t22.
          DATA(t23) = abap_true.
          IF t23 = abap_true.
            DATA(t24) = CAST zcl_lnt_abstract_type( t3 ).
            t22 = t24.
          ELSE.
            DATA t25 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t25.
            t22 = t25.
          ENDIF.
          DATA t26 TYPE REF TO zcl_lnt_expression_node.
          DATA(t27) = CAST zif_lnt_union_4cf1d054( t12 ).
          DATA t28 TYPE REF TO object.
          t28 = t27.
          t26 ?= t28.
          DATA(t29) = CAST zcl_lnt_syntax_input( t2 ).
          t21 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t22 i_node = t26 i_input_967e = t29 ).
          t4 = t21.
        ELSE.
          DATA t30 TYPE abap_bool.
          DATA t31 TYPE REF TO zif_lnt_statement_runnable.
          DATA t32 TYPE REF TO zcl_lnt_expression_node.
          DATA(t33) = CAST zif_lnt_union_4cf1d054( t12 ).
          DATA t34 TYPE REF TO object.
          t34 = t33.
          t32 ?= t34.
          t31 = t32->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_dynamic ).
          IF t30 = abap_true.
            DATA t35 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t35.
            t4 = t35.
          ELSE.
            DATA(t36) = VALUE abap_bool( ).
            DATA t37 TYPE abap_bool.
            DATA t38 TYPE abap_bool.
            DATA t39 TYPE REF TO zif_lnt_statement_runnable.
            DATA t40 TYPE REF TO zcl_lnt_expression_node.
            DATA(t41) = CAST zif_lnt_union_4cf1d054( t12 ).
            DATA t42 TYPE REF TO object.
            t42 = t41.
            t40 ?= t42.
            t39 = t40->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_source ).
            t37 = t38.
            IF t38 = abap_false.
              DATA t43 TYPE abap_bool.
              DATA t44 TYPE REF TO zif_lnt_statement_runnable.
              DATA t45 TYPE REF TO zcl_lnt_expression_node.
              DATA(t46) = CAST zif_lnt_union_4cf1d054( t12 ).
              DATA t47 TYPE REF TO object.
              t47 = t46.
              t45 ?= t47.
              t44 = t45->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_simple_source4 ).
              t37 = t43.
            ENDIF.
            t36 = t37.
            IF t37 = abap_false.
              DATA t48 TYPE abap_bool.
              DATA t49 TYPE REF TO zif_lnt_statement_runnable.
              DATA t50 TYPE REF TO zcl_lnt_expression_node.
              DATA(t51) = CAST zif_lnt_union_4cf1d054( t12 ).
              DATA t52 TYPE REF TO object.
              t52 = t51.
              t50 ?= t52.
              t49 = t50->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_simple_source2 ).
              t36 = t48.
            ENDIF.
            IF t36 = abap_true.
              DATA t53 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t53.
              DATA t54 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t54.
              DATA t55 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t55.
              DATA(t56) = abap_true.
              IF t56 = abap_true.
                DATA t57 TYPE REF TO zcl_lnt_expression_node.
                DATA(t58) = CAST zif_lnt_union_4cf1d054( t12 ).
                DATA t59 TYPE REF TO object.
                t59 = t58.
                t57 ?= t59.
                t55 = t57.
              ELSE.
                DATA t60 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t60.
                t55 = t60.
              ENDIF.
              DATA(t61) = CAST zcl_lnt_syntax_input( t2 ).
              DATA(t62) = CAST zcl_lnt_abstract_type( t4 ).
              DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t63.
              DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t64.
              DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t65.
              t54 = zcl_lnt_sy_source=>run_syntax( i_node = t55 i_input_967e = t61 i_target_type = t62 i_write_reference = t63 i_allow_generic_deference = t64 i_read_reference = t65 ).
              t53 = t54.
              DATA t66 TYPE abap_bool.
              DATA t67 TYPE abap_bool.
              DATA(t68) = CAST zcl_lnt_abstract_type( t4 ).
              t67 = xsdbool( t68 IS BOUND ).
              t66 = t67.
              IF t67 = abap_true.
                DATA(t69) = VALUE abap_bool( ).
                DATA(t70) = VALUE abap_bool( ).
                DATA t71 TYPE REF TO zcl_lnt_type_utils.
                DATA t72 TYPE REF TO zcl_lnt_current_scope.
                DATA(t73) = CAST zcl_lnt_syntax_input( t2 ).
                t72 = t73->scope.
                t71 = NEW zcl_lnt_type_utils( i_scope = t72 ).
                DATA(t74) = CAST zcl_lnt_abstract_type( t53 ).
                DATA t75 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t75.
                DATA(t76) = abap_true.
                IF t76 = abap_true.
                  DATA t77 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t78) = CAST zcl_lnt_abstract_type( t4 ).
                  t77 = t78.
                  t75 = t77.
                ELSE.
                  DATA t79 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t79.
                  t75 = t79.
                ENDIF.
                t70 = t71->is_assignable( i_source_75cf = t74 i_target_5f8a = t75 ).
                DATA(t80) = abap_false.
                t69 = xsdbool( t70 = t80 ).
                t66 = t69.
              ENDIF.
              IF t66 = abap_true.
                DATA t81 TYPE string.
                DATA(t82) = |ComponentCompareSimple, incompatible types|.
                t81 = t82.
                DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t84) = CAST zcl_lnt_syntax_input( t2 ).
                t83 = t84->issues.
                DATA t85 TYPE REF TO zcl_lnt_issue.
                DATA(t86) = CAST zcl_lnt_syntax_input( t2 ).
                DATA t87 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t88) = CAST zcl_lnt_expression_node( t1 ).
                t87 = t88->get_first_token( ).
                DATA(t89) = t81.
                DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t90.
                t85 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t86 i_token = t87 i_message_26cb = t89 i_fix = t90 ).
                APPEND t85 TO t83->items.
                RETURN.
              ENDIF.
            ELSE.
              DATA t91 TYPE string.
              DATA(t92) = |ComponentCompareSimple, unexpected node|.
              t91 = t92.
              DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t94) = CAST zcl_lnt_syntax_input( t2 ).
              t93 = t94->issues.
              DATA t95 TYPE REF TO zcl_lnt_issue.
              DATA(t96) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t97 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t98) = CAST zcl_lnt_expression_node( t1 ).
              t97 = t98->get_first_token( ).
              DATA(t99) = t91.
              DATA t100 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t100.
              t95 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t96 i_token = t97 i_message_26cb = t99 i_fix = t100 ).
              APPEND t95 TO t93->items.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d767_dbe691e8327d.
  ENDMETHOD.
ENDCLASS.
