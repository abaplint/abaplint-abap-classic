* TS: src/abap/5_syntax/expressions/component_compare_simple.ts:9:1 ComponentCompareSimple
CLASS zcl_lnt_sy_cmpnnt_cmpr_smpl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_row_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cmpnnt_cmpr_smpl IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_row_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t8.
    t10 = t11->children.
    t7 = t10.
    t6 ?= t7.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t12.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_expression_node ).
      IF t17 = abap_true.
        DATA t19 TYPE abap_bool.
        DATA t20 TYPE REF TO zif_lnt_statement_runnable.
        DATA t21 TYPE REF TO zcl_lnt_expression_node.
        DATA(t22) = t12.
        DATA t23 TYPE REF TO object.
        t23 = t22.
        t21 ?= t23.
        t20 = t21->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_component_chain_simple ).
        IF t19 = abap_true.
          DATA t24 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t24.
          DATA t25 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t25.
          DATA(t26) = abap_true.
          IF t26 = abap_true.
            DATA(t27) = t3.
            t25 = t27.
          ELSE.
            DATA t28 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t28.
            t25 = t28.
          ENDIF.
          DATA t29 TYPE REF TO zcl_lnt_expression_node.
          DATA(t30) = t12.
          DATA t31 TYPE REF TO object.
          t31 = t30.
          t29 ?= t31.
          DATA(t32) = t2.
          t24 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t25 i_node = t29 i_input_967e = t32 ).
          t4 = t24.
        ELSE.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zif_lnt_statement_runnable.
          DATA t35 TYPE REF TO zcl_lnt_expression_node.
          DATA(t36) = t12.
          DATA t37 TYPE REF TO object.
          t37 = t36.
          t35 ?= t37.
          t34 = t35->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_dynamic ).
          IF t33 = abap_true.
            DATA t38 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t38.
            t4 = t38.
          ELSE.
            DATA(t39) = VALUE abap_bool( ).
            DATA t40 TYPE abap_bool.
            DATA t41 TYPE abap_bool.
            DATA t42 TYPE REF TO zif_lnt_statement_runnable.
            DATA t43 TYPE REF TO zcl_lnt_expression_node.
            DATA(t44) = t12.
            DATA t45 TYPE REF TO object.
            t45 = t44.
            t43 ?= t45.
            t42 = t43->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_st_source ).
            t40 = t41.
            IF t41 = abap_false.
              DATA t46 TYPE abap_bool.
              DATA t47 TYPE REF TO zif_lnt_statement_runnable.
              DATA t48 TYPE REF TO zcl_lnt_expression_node.
              DATA(t49) = t12.
              DATA t50 TYPE REF TO object.
              t50 = t49.
              t48 ?= t50.
              t47 = t48->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_simple_source4 ).
              t40 = t46.
            ENDIF.
            t39 = t40.
            IF t40 = abap_false.
              DATA t51 TYPE abap_bool.
              DATA t52 TYPE REF TO zif_lnt_statement_runnable.
              DATA t53 TYPE REF TO zcl_lnt_expression_node.
              DATA(t54) = t12.
              DATA t55 TYPE REF TO object.
              t55 = t54.
              t53 ?= t55.
              t52 = t53->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_simple_source2 ).
              t39 = t51.
            ENDIF.
            IF t39 = abap_true.
              DATA t56 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t56.
              DATA t57 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t57.
              DATA t58 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t58.
              DATA(t59) = abap_true.
              IF t59 = abap_true.
                DATA t60 TYPE REF TO zcl_lnt_expression_node.
                DATA(t61) = t12.
                DATA t62 TYPE REF TO object.
                t62 = t61.
                t60 ?= t62.
                t58 = t60.
              ELSE.
                DATA t63 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t63.
                t58 = t63.
              ENDIF.
              DATA(t64) = t2.
              DATA(t65) = t4.
              DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t66.
              DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t67.
              DATA t68 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t68.
              t57 = zcl_lnt_sy_source=>run_syntax( i_node = t58 i_input_967e = t64 i_target_type = t65 i_write_reference = t66 i_allow_generic_deference = t67 i_read_reference = t68 ).
              t56 = t57.
              DATA t69 TYPE abap_bool.
              DATA t70 TYPE abap_bool.
              DATA(t71) = t4.
              t70 = xsdbool( t71 IS BOUND ).
              t69 = t70.
              IF t70 = abap_true.
                DATA(t72) = VALUE abap_bool( ).
                DATA(t73) = VALUE abap_bool( ).
                DATA t74 TYPE REF TO zcl_lnt_type_utils.
                DATA t75 TYPE REF TO zcl_lnt_current_scope.
                DATA(t76) = t2.
                t75 = t76->scope.
                t74 = NEW zcl_lnt_type_utils( i_scope = t75 ).
                DATA(t77) = t56.
                DATA t78 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t78.
                DATA(t79) = abap_true.
                IF t79 = abap_true.
                  DATA t80 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t81) = t4.
                  t80 = t81.
                  t78 = t80.
                ELSE.
                  DATA t82 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t82.
                  t78 = t82.
                ENDIF.
                t73 = t74->is_assignable( i_source_75cf = t77 i_target_5f8a = t78 ).
                DATA(t83) = abap_false.
                t72 = xsdbool( t73 = t83 ).
                t69 = t72.
              ENDIF.
              IF t69 = abap_true.
                DATA t84 TYPE string.
                DATA(t85) = |ComponentCompareSimple, incompatible types|.
                t84 = t85.
                DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t87) = t2.
                t86 = t87->issues.
                DATA t88 TYPE REF TO zcl_lnt_issue.
                DATA(t89) = t2.
                DATA t90 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t91) = t1.
                t90 = t91->get_first_token( ).
                DATA(t92) = t84.
                DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t93.
                t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t89 i_token = t90 i_message_26cb = t92 i_fix = t93 ).
                t86->load( ).
                APPEND t88 TO t86->items.
                t86->save( ).
                RETURN.
              ENDIF.
            ELSE.
              DATA t94 TYPE string.
              DATA(t95) = |ComponentCompareSimple, unexpected node|.
              t94 = t95.
              DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t97) = t2.
              t96 = t97->issues.
              DATA t98 TYPE REF TO zcl_lnt_issue.
              DATA(t99) = t2.
              DATA t100 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t101) = t1.
              t100 = t101->get_first_token( ).
              DATA(t102) = t94.
              DATA t103 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t103.
              t98 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t99 i_token = t100 i_message_26cb = t102 i_fix = t103 ).
              t96->load( ).
              APPEND t98 TO t96->items.
              t96->save( ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d789_c1253e72ade8.
  ENDMETHOD.
ENDCLASS.
