* TS: src/abap/nodes/expression_node.ts:8:1 ExpressionNode
CLASS zcl_lnt_expression_node DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_node CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_bb14dc41.
    INTERFACES zif_lnt_union_4cf1d054.
    INTERFACES zif_lnt_union_1e9858bf.
    INTERFACES zif_lnt_union_734b3529.
    DATA expression TYPE REF TO zif_lnt_statement_runnable.
    DATA token_count TYPE f.
    METHODS constructor IMPORTING i_expression TYPE REF TO zif_lnt_statement_runnable.
    METHODS a_c_in_sr_ab_nd_ex_nd_ts_ex_nd IMPORTING i_n_2941 TYPE REF TO zif_lnt_union_4cf1d054.
    METHODS gt_in_sr_ab_nd_ex_nd_ts_exp_nd RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    METHODS s_c_in_sr_ab_nd_ex_nd_ts_ex_nd IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS count_tokens RETURNING VALUE(result) TYPE f.
    METHODS get_first_token REDEFINITION.
    METHODS concat_tokens_with_linebreaks RETURNING VALUE(result) TYPE string.
    METHODS concat_tokens RETURNING VALUE(result) TYPE string.
    METHODS cnct_tkns_wtht_strng_and_cmmnt RETURNING VALUE(result) TYPE string.
    METHODS get_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS to_tokens IMPORTING i_b TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_last_token REDEFINITION.
    METHODS get_all_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_direct_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_expression_after_token IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_direct_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_token_by_text IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS find_all_expressions_recursive IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_first_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS add_child REDEFINITION.
    METHODS get_db65 REDEFINITION.
    METHODS set_children_value IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS set_children REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_expression_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_expression.
    super->constructor( ).
    DATA(t2) = CONV f( 0 ).
    me->token_count = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokenCount`.
    DATA(t3) = t1.
    me->expression = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `expression`.
  ENDMETHOD.

  METHOD a_c_in_sr_ab_nd_ex_nd_ts_ex_nd.
    DATA(t1) = i_n_2941.
    DATA t2 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = abap_true.
    IF t5 = abap_true.
      DATA(t6) = |ExpressionNode: addChild() must not be called, nodes are imm|.
      t6 = t6 && |utable after setChildren()|.
      DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t7->has = abap_true.
      t7->value = t6.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t4 = t8.
    ENDIF.
    t3 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t4 ).
    t2 = NEW #( ).
    t2->payload = t3.
    CLEAR t2->source_value.
    IF t3 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
      t10 = t3.
      TRY.
          t2->source_value ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t2->source_value IS NOT BOUND.
        TRY.
            t9 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t2->source_value = t9->source( ).
        ENDIF.
        IF t2->source_value IS NOT BOUND.
          CREATE OBJECT t2->source_value.
          t2->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t2->source_value->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_ex_nd_ts_exp_nd.
    DATA(t1) = me->expression.
    result = t1.

  ENDMETHOD.

  METHOD s_c_in_sr_ab_nd_ex_nd_ts_ex_nd.
    DATA(t1) = i_children_9020.
    DATA(t2) = t1.
    DATA t3 TYPE REF TO object.
    t3 = me->set_children( i_children_9020 = t2 ).
    result ?= t3.

  ENDMETHOD.

  METHOD count_tokens.
    DATA(t1) = CONV f( me->token_count ).
    result = t1.

  ENDMETHOD.

  METHOD get_first_token.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t3.
    DATA(t4) = me.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = t3.
    t5 = t6->children.
    t2 = t5.
    t1 ?= t2.
    DATA t7 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        CLEAR t11.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA(t13) = t7.
      t12 = t13->get_first_token( ).
      result = t12.
      RETURN.
    ENDDO.
    DATA t14 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |ExpressionNode, getFirstToken, no children|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
    t15 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t16 ).
    t14 = NEW #( ).
    t14->payload = t15.
    CLEAR t14->source_value.
    IF t15 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      CLEAR t21.
      t22 = t15.
      TRY.
          t14->source_value ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14->source_value IS NOT BOUND.
        TRY.
            t21 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t14->source_value = t21->source( ).
        ENDIF.
        IF t14->source_value IS NOT BOUND.
          CREATE OBJECT t14->source_value.
          t14->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->source_value->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t14.
  ENDMETHOD.

  METHOD concat_tokens_with_linebreaks.
    DATA t1 TYPE string.
    DATA(t2) = ||.
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t5.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_pragma ).
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t1.
      DATA(t14) = ||.
      t12 = xsdbool( t13 = t14 ).
      IF t12 = abap_true.
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t17) = t5.
        t16 = t17.
        DATA t18 TYPE string.
        DATA(t19) = t16.
        t18 = t19->str.
        t15 = t18.
        t1 = t15.
      ELSE.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t3.
        t22 = xsdbool( t23 IS BOUND ).
        t21 = t22.
        IF t22 = abap_true.
          DATA t24 TYPE abap_bool.
          DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t26 TYPE f.
          DATA t27 TYPE i.
          DATA t28 TYPE string.
          DATA t29 TYPE REF TO zcl_lnt_abstract_token.
          DATA t30 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t31) = t3.
          t30 = t31.
          t29 = t30.
          DATA t32 TYPE string.
          DATA(t33) = t29.
          t32 = t33->str.
          t28 = t32.
          DATA(t34) = strlen( t28 ).
          t27 = t34.
          t26 = t27.
          DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t35->has = abap_true.
          t35->value = t26.
          DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t37 TYPE REF TO zcl_lnt_abstract_token.
          DATA t38 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t39) = t3.
          t38 = t39.
          t37 = t38.
          DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t41 TYPE REF TO zcl_lnt_position.
          DATA t42 TYPE REF TO zcl_lnt_position.
          DATA(t43) = t37.
          t42 = t43->start.
          t41 = t42.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t45) = t41.
          t44 = t45->col.
          t40 = t44.
          t36 = t40.
          t25 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t35 right = t36 op = `+` ).
          DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t47 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t48) = t5.
          t47 = t48.
          DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t50 TYPE REF TO zcl_lnt_position.
          DATA t51 TYPE REF TO zcl_lnt_position.
          DATA(t52) = t47.
          t51 = t52->start.
          t50 = t51.
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t54) = t50.
          t53 = t54->col.
          t49 = t53.
          t46 = t49.
          t24 = zlnt_runtime_numb_290eb04a9758=>compare( left = t25 right = t46 op = `==` ).
          t21 = t24.
        ENDIF.
        t20 = t21.
        IF t21 = abap_true.
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE f.
          DATA t57 TYPE REF TO zcl_lnt_abstract_token.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t59) = t3.
          t58 = t59.
          t57 = t58.
          DATA t60 TYPE f.
          DATA t61 TYPE REF TO zcl_lnt_position.
          DATA t62 TYPE REF TO zcl_lnt_position.
          DATA(t63) = t57.
          t62 = t63->start.
          t61 = t62.
          DATA t64 TYPE f.
          DATA(t65) = t61.
          t64 = t65->row.
          t60 = t64.
          t56 = t60.
          DATA t66 TYPE f.
          DATA t67 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t68) = t5.
          t67 = t68.
          DATA t69 TYPE f.
          DATA t70 TYPE REF TO zcl_lnt_position.
          DATA t71 TYPE REF TO zcl_lnt_position.
          DATA(t72) = t67.
          t71 = t72->start.
          t70 = t71.
          DATA t73 TYPE f.
          DATA(t74) = t70.
          t73 = t74->row.
          t69 = t73.
          t66 = t69.
          t55 = xsdbool( t56 = t66 ).
          t20 = t55.
        ENDIF.
        IF t20 = abap_true.
          DATA t75 TYPE string.
          DATA(t76) = t1.
          DATA t77 TYPE string.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t79) = t5.
          t78 = t79.
          DATA t80 TYPE string.
          DATA(t81) = t78.
          t80 = t81->str.
          t77 = t80.
          DATA(t82) = strlen( t76 ).
          t75 = |{ t76 }{ t77 }|.
          t1 = t75.
        ELSE.
          DATA t83 TYPE abap_bool.
          DATA t84 TYPE abap_bool.
          DATA(t85) = t3.
          t84 = xsdbool( t85 IS BOUND ).
          t83 = t84.
          IF t84 = abap_true.
            DATA t86 TYPE abap_bool.
            DATA t87 TYPE f.
            DATA t88 TYPE REF TO zcl_lnt_abstract_token.
            DATA t89 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t90) = t3.
            t89 = t90.
            t88 = t89.
            DATA t91 TYPE f.
            DATA t92 TYPE REF TO zcl_lnt_position.
            DATA t93 TYPE REF TO zcl_lnt_position.
            DATA(t94) = t88.
            t93 = t94->start.
            t92 = t93.
            DATA t95 TYPE f.
            DATA(t96) = t92.
            t95 = t96->row.
            t91 = t95.
            t87 = t91.
            DATA t97 TYPE f.
            DATA t98 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t99) = t5.
            t98 = t99.
            DATA t100 TYPE f.
            DATA t101 TYPE REF TO zcl_lnt_position.
            DATA t102 TYPE REF TO zcl_lnt_position.
            DATA(t103) = t98.
            t102 = t103->start.
            t101 = t102.
            DATA t104 TYPE f.
            DATA(t105) = t101.
            t104 = t105->row.
            t100 = t104.
            t97 = t100.
            t86 = xsdbool( t87 <> t97 ).
            t83 = t86.
          ENDIF.
          IF t83 = abap_true.
            DATA t106 TYPE string.
            DATA t107 TYPE string.
            DATA(t108) = t1.
            DATA(t109) = |\n|.
            DATA(t110) = strlen( t108 ).
            t107 = |{ t108 }{ t109 }|.
            DATA t111 TYPE string.
            DATA t112 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t113) = t5.
            t112 = t113.
            DATA t114 TYPE string.
            DATA(t115) = t112.
            t114 = t115->str.
            t111 = t114.
            DATA(t116) = strlen( t107 ).
            t106 = |{ t107 }{ t111 }|.
            t1 = t106.
          ELSE.
            DATA t117 TYPE string.
            DATA t118 TYPE string.
            DATA(t119) = t1.
            DATA(t120) = | |.
            DATA(t121) = strlen( t119 ).
            t118 = |{ t119 }{ t120 }|.
            DATA t122 TYPE string.
            DATA t123 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t124) = t5.
            t123 = t124.
            DATA t125 TYPE string.
            DATA(t126) = t123.
            t125 = t126->str.
            t122 = t125.
            DATA(t127) = strlen( t118 ).
            t117 = |{ t118 }{ t122 }|.
            t1 = t117.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t128 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t128.
      DATA(t129) = abap_true.
      IF t129 = abap_true.
        DATA(t130) = t5.
        t128 = t130.
      ELSE.
        DATA t131 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t131.
        t128 = t131.
      ENDIF.
      t3 = t128.
    ENDDO.
    DATA(t132) = t1.
    result = t132.

  ENDMETHOD.

  METHOD concat_tokens.
    DATA t1 TYPE string.
    DATA(t2) = ||.
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t5.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_pragma ).
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t1.
      DATA(t14) = ||.
      t12 = xsdbool( t13 = t14 ).
      IF t12 = abap_true.
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t17) = t5.
        t16 = t17.
        DATA t18 TYPE string.
        DATA(t19) = t16.
        t18 = t19->str.
        t15 = t18.
        t1 = t15.
      ELSE.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t3.
        t22 = xsdbool( t23 IS BOUND ).
        t21 = t22.
        IF t22 = abap_true.
          DATA t24 TYPE abap_bool.
          DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t26 TYPE f.
          DATA t27 TYPE i.
          DATA t28 TYPE string.
          DATA t29 TYPE REF TO zcl_lnt_abstract_token.
          DATA t30 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t31) = t3.
          t30 = t31.
          t29 = t30.
          DATA t32 TYPE string.
          DATA(t33) = t29.
          t32 = t33->str.
          t28 = t32.
          DATA(t34) = strlen( t28 ).
          t27 = t34.
          t26 = t27.
          DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t35->has = abap_true.
          t35->value = t26.
          DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t37 TYPE REF TO zcl_lnt_abstract_token.
          DATA t38 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t39) = t3.
          t38 = t39.
          t37 = t38.
          DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t41 TYPE REF TO zcl_lnt_position.
          DATA t42 TYPE REF TO zcl_lnt_position.
          DATA(t43) = t37.
          t42 = t43->start.
          t41 = t42.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t45) = t41.
          t44 = t45->col.
          t40 = t44.
          t36 = t40.
          t25 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t35 right = t36 op = `+` ).
          DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t47 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t48) = t5.
          t47 = t48.
          DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t50 TYPE REF TO zcl_lnt_position.
          DATA t51 TYPE REF TO zcl_lnt_position.
          DATA(t52) = t47.
          t51 = t52->start.
          t50 = t51.
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t54) = t50.
          t53 = t54->col.
          t49 = t53.
          t46 = t49.
          t24 = zlnt_runtime_numb_290eb04a9758=>compare( left = t25 right = t46 op = `==` ).
          t21 = t24.
        ENDIF.
        t20 = t21.
        IF t21 = abap_true.
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE f.
          DATA t57 TYPE REF TO zcl_lnt_abstract_token.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t59) = t3.
          t58 = t59.
          t57 = t58.
          DATA t60 TYPE f.
          DATA t61 TYPE REF TO zcl_lnt_position.
          DATA t62 TYPE REF TO zcl_lnt_position.
          DATA(t63) = t57.
          t62 = t63->start.
          t61 = t62.
          DATA t64 TYPE f.
          DATA(t65) = t61.
          t64 = t65->row.
          t60 = t64.
          t56 = t60.
          DATA t66 TYPE f.
          DATA t67 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t68) = t5.
          t67 = t68.
          DATA t69 TYPE f.
          DATA t70 TYPE REF TO zcl_lnt_position.
          DATA t71 TYPE REF TO zcl_lnt_position.
          DATA(t72) = t67.
          t71 = t72->start.
          t70 = t71.
          DATA t73 TYPE f.
          DATA(t74) = t70.
          t73 = t74->row.
          t69 = t73.
          t66 = t69.
          t55 = xsdbool( t56 = t66 ).
          t20 = t55.
        ENDIF.
        IF t20 = abap_true.
          DATA t75 TYPE string.
          DATA(t76) = t1.
          DATA t77 TYPE string.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t79) = t5.
          t78 = t79.
          DATA t80 TYPE string.
          DATA(t81) = t78.
          t80 = t81->str.
          t77 = t80.
          DATA(t82) = strlen( t76 ).
          t75 = |{ t76 }{ t77 }|.
          t1 = t75.
        ELSE.
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = t1.
          DATA(t86) = | |.
          DATA(t87) = strlen( t85 ).
          t84 = |{ t85 }{ t86 }|.
          DATA t88 TYPE string.
          DATA t89 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t90) = t5.
          t89 = t90.
          DATA t91 TYPE string.
          DATA(t92) = t89.
          t91 = t92->str.
          t88 = t91.
          DATA(t93) = strlen( t84 ).
          t83 = |{ t84 }{ t88 }|.
          t1 = t83.
        ENDIF.
      ENDIF.
      DATA t94 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = t5.
        t94 = t96.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        t94 = t97.
      ENDIF.
      t3 = t94.
    ENDDO.
    DATA(t98) = t1.
    result = t98.

  ENDMETHOD.

  METHOD cnct_tkns_wtht_strng_and_cmmnt.
    DATA t1 TYPE string.
    DATA(t2) = ||.
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t5.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_lx_comment ).
      t14 = t15.
      IF t15 = abap_false.
        DATA t17 TYPE abap_bool.
        DATA(t18) = t5.
        t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_string_token ).
        t14 = t17.
      ENDIF.
      t13 = t14.
      IF t14 = abap_false.
        DATA t19 TYPE abap_bool.
        DATA(t20) = t5.
        t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_lx_string_template ).
        t13 = t19.
      ENDIF.
      t12 = t13.
      IF t13 = abap_false.
        DATA t21 TYPE abap_bool.
        DATA(t22) = t5.
        t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_string_template_begin ).
        t12 = t21.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA(t24) = t5.
        t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_string_template_middle ).
        t11 = t23.
      ENDIF.
      t10 = t11.
      IF t11 = abap_false.
        DATA t25 TYPE abap_bool.
        DATA(t26) = t5.
        t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_string_template_end ).
        t10 = t25.
      ENDIF.
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t1.
      DATA(t29) = ||.
      t27 = xsdbool( t28 = t29 ).
      IF t27 = abap_true.
        DATA t30 TYPE string.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t32) = t5.
        t31 = t32.
        DATA t33 TYPE string.
        DATA(t34) = t31.
        t33 = t34->str.
        t30 = t33.
        t1 = t30.
      ELSE.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE abap_bool.
        DATA(t38) = t3.
        t37 = xsdbool( t38 IS BOUND ).
        t36 = t37.
        IF t37 = abap_true.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t41 TYPE f.
          DATA t42 TYPE i.
          DATA t43 TYPE string.
          DATA t44 TYPE REF TO zcl_lnt_abstract_token.
          DATA t45 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t46) = t3.
          t45 = t46.
          t44 = t45.
          DATA t47 TYPE string.
          DATA(t48) = t44.
          t47 = t48->str.
          t43 = t47.
          DATA(t49) = strlen( t43 ).
          t42 = t49.
          t41 = t42.
          DATA(t50) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t50->has = abap_true.
          t50->value = t41.
          DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          DATA t53 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t54) = t3.
          t53 = t54.
          t52 = t53.
          DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t56 TYPE REF TO zcl_lnt_position.
          DATA t57 TYPE REF TO zcl_lnt_position.
          DATA(t58) = t52.
          t57 = t58->start.
          t56 = t57.
          DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t60) = t56.
          t59 = t60->col.
          t55 = t59.
          t51 = t55.
          t40 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t50 right = t51 op = `+` ).
          DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t63) = t5.
          t62 = t63.
          DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t65 TYPE REF TO zcl_lnt_position.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA(t67) = t62.
          t66 = t67->start.
          t65 = t66.
          DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t69) = t65.
          t68 = t69->col.
          t64 = t68.
          t61 = t64.
          t39 = zlnt_runtime_numb_290eb04a9758=>compare( left = t40 right = t61 op = `==` ).
          t36 = t39.
        ENDIF.
        t35 = t36.
        IF t36 = abap_true.
          DATA t70 TYPE abap_bool.
          DATA t71 TYPE f.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          DATA t73 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t74) = t3.
          t73 = t74.
          t72 = t73.
          DATA t75 TYPE f.
          DATA t76 TYPE REF TO zcl_lnt_position.
          DATA t77 TYPE REF TO zcl_lnt_position.
          DATA(t78) = t72.
          t77 = t78->start.
          t76 = t77.
          DATA t79 TYPE f.
          DATA(t80) = t76.
          t79 = t80->row.
          t75 = t79.
          t71 = t75.
          DATA t81 TYPE f.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t5.
          t82 = t83.
          DATA t84 TYPE f.
          DATA t85 TYPE REF TO zcl_lnt_position.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA(t87) = t82.
          t86 = t87->start.
          t85 = t86.
          DATA t88 TYPE f.
          DATA(t89) = t85.
          t88 = t89->row.
          t84 = t88.
          t81 = t84.
          t70 = xsdbool( t71 = t81 ).
          t35 = t70.
        ENDIF.
        IF t35 = abap_true.
          DATA t90 TYPE string.
          DATA(t91) = t1.
          DATA t92 TYPE string.
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t94) = t5.
          t93 = t94.
          DATA t95 TYPE string.
          DATA(t96) = t93.
          t95 = t96->str.
          t92 = t95.
          DATA(t97) = strlen( t91 ).
          t90 = |{ t91 }{ t92 }|.
          t1 = t90.
        ELSE.
          DATA t98 TYPE string.
          DATA t99 TYPE string.
          DATA(t100) = t1.
          DATA(t101) = | |.
          DATA(t102) = strlen( t100 ).
          t99 = |{ t100 }{ t101 }|.
          DATA t103 TYPE string.
          DATA t104 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t105) = t5.
          t104 = t105.
          DATA t106 TYPE string.
          DATA(t107) = t104.
          t106 = t107->str.
          t103 = t106.
          DATA(t108) = strlen( t99 ).
          t98 = |{ t99 }{ t103 }|.
          t1 = t98.
        ENDIF.
      ENDIF.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t109.
      DATA(t110) = abap_true.
      IF t110 = abap_true.
        DATA(t111) = t5.
        t109 = t111.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t112.
        t109 = t112.
      ENDIF.
      t3 = t109.
    ENDDO.
    DATA(t113) = t1.
    result = t113.

  ENDMETHOD.

  METHOD get_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = me.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE i( ).
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zif_lnt_node.
      DATA(t17) = t9.
      t16 ?= t17.
      t15 = me->to_tokens( i_b = t16 ).
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      DATA(t20) = VALUE i( ).
      DO.
        t15->load( ).
        IF t20 >= lines( t15->items ).
          EXIT.
        ENDIF.
        CLEAR t19.
        READ TABLE t15->items INDEX t20 + 1 INTO t19.
        t20 = t20 + 1.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        CLEAR t18.
        IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t21 ?= t19.
          DATA t22 TYPE REF TO object.
          t22 = t21->as_ref( ).
          t18 ?= t22.
        ELSE.
          t18 ?= t19.
        ENDIF.
        DATA(t23) = t1.
        DATA(t24) = t18.
        t23->load( ).
        APPEND t24 TO t23->items.
        t23->save( ).
      ENDDO.
      DATA t25 TYPE i.
      DATA(t26) = t1.
      t26->load( ).
      t25 = lines( t26->items ).
      t14 = t25.
    ENDDO.
    DATA(t27) = t1.
    result = t27.

  ENDMETHOD.

  METHOD to_tokens.
    DATA(t1) = i_b.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_token_node ).
    IF t4 = abap_true.
      DATA(t6) = t2.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_token_node.
      DATA(t9) = t1.
      DATA t10 TYPE REF TO object.
      t10 = t9.
      t8 ?= t10.
      t7 = t8->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      t6->load( ).
      APPEND t7 TO t6->items.
      t6->save( ).
      DATA(t11) = t2.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = t1.
    t12 = t13->get_children( ).
    DATA t14 TYPE REF TO zif_lnt_node.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
    DATA(t16) = VALUE i( ).
    DO.
      t12->load( ).
      IF t16 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t12->items INDEX t16 + 1 INTO t15.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t14.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t15.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t14 ?= t18.
      ELSE.
        t14 ?= t15.
      ENDIF.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t14.
      t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_token_node ).
      IF t19 = abap_true.
        DATA(t21) = t2.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        DATA t23 TYPE REF TO zcl_lnt_token_node.
        DATA(t24) = t14.
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        t22 = t23->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t21->load( ).
        APPEND t22 TO t21->items.
        t21->save( ).
      ELSE.
        DATA(t26) = VALUE i( ).
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t28) = t14.
        t27 = me->to_tokens( i_b = t28 ).
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t29.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        DATA(t31) = VALUE i( ).
        DO.
          t27->load( ).
          IF t31 >= lines( t27->items ).
            EXIT.
          ENDIF.
          CLEAR t30.
          READ TABLE t27->items INDEX t31 + 1 INTO t30.
          t31 = t31 + 1.
          DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t32.
          CLEAR t29.
          IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t32 ?= t30.
            DATA t33 TYPE REF TO object.
            t33 = t32->as_ref( ).
            t29 ?= t33.
          ELSE.
            t29 ?= t30.
          ENDIF.
          DATA(t34) = t2.
          DATA(t35) = t29.
          t34->load( ).
          APPEND t35 TO t34->items.
          t34->save( ).
        ENDDO.
        DATA t36 TYPE i.
        DATA(t37) = t2.
        t37->load( ).
        t36 = lines( t37->items ).
        t26 = t36.
      ENDIF.
    ENDDO.
    DATA(t38) = t2.
    result = t38.

  ENDMETHOD.

  METHOD get_last_token.
    DATA t1 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t4.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_node.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      DATA(t10) = t4.
      t9 = t10->children.
      DATA(t11) = VALUE i( ).
      DATA(t12) = VALUE i( ).
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      DATA(t14) = t4.
      t13 = t14->children.
      t13->load( ).
      t12 = lines( t13->items ).
      DATA(t15) = 1.
      t11 = t12 - t15.
      t11 = t11 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      t9->load( ).
      CLEAR t16.
      READ TABLE t9->items INDEX t11 INTO t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t8.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t16.
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        t18 = t17->as_ref( ).
        t8 ?= t18.
      ELSE.
        t8 ?= t16.
      ENDIF.
      t6 = t8.
    ELSE.
      DATA t19 TYPE REF TO zif_lnt_node.
      CLEAR t19.
      t6 = t19.
    ENDIF.
    t3 = t6.
    t2 ?= t3.
    t1 = t2.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t1.
    t20 = xsdbool( t21 IS BOUND ).
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t23.
      DATA(t24) = t1.
      t23 = t24.
      t22 = t23->get_last_token( ).
      result = t22.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |ExpressionNode, getLastToken, no children|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t27 ).
    t25 = NEW #( ).
    t25->payload = t26.
    CLEAR t25->source_value.
    IF t26 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      CLEAR t32.
      t33 = t26.
      TRY.
          t25->source_value ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25->source_value IS NOT BOUND.
        TRY.
            t32 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t25->source_value = t32->source( ).
        ENDIF.
        IF t25->source_value IS NOT BOUND.
          CREATE OBJECT t25->source_value.
          t25->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->source_value->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t25.
  ENDMETHOD.

  METHOD get_all_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = me.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t9.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_token_node ).
      IF t14 = abap_true.
        DATA(t16) = t1.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_token_node.
        DATA(t19) = t9.
        DATA t20 TYPE REF TO object.
        t20 = t19.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t16->load( ).
        APPEND t17 TO t16->items.
        t16->save( ).
      ELSE.
        DATA(t21) = VALUE i( ).
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = t9.
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        t22 = t23->get_all_tokens( ).
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t26.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        DATA(t28) = VALUE i( ).
        DO.
          t22->load( ).
          IF t28 >= lines( t22->items ).
            EXIT.
          ENDIF.
          CLEAR t27.
          READ TABLE t22->items INDEX t28 + 1 INTO t27.
          t28 = t28 + 1.
          DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t29.
          CLEAR t26.
          IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t29 ?= t27.
            DATA t30 TYPE REF TO object.
            t30 = t29->as_ref( ).
            t26 ?= t30.
          ELSE.
            t26 ?= t27.
          ENDIF.
          DATA(t31) = t1.
          DATA(t32) = t26.
          t31->load( ).
          APPEND t32 TO t31->items.
          t31->save( ).
        ENDDO.
        DATA t33 TYPE i.
        DATA(t34) = t1.
        t34->load( ).
        t33 = lines( t34->items ).
        t21 = t33.
      ENDIF.
    ENDDO.
    DATA(t35) = t1.
    result = t35.

  ENDMETHOD.

  METHOD get_direct_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = me.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t9.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_token_node ).
      IF t14 = abap_true.
        DATA(t16) = t1.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_token_node.
        DATA(t19) = t9.
        DATA t20 TYPE REF TO object.
        t20 = t19.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t16->load( ).
        APPEND t17 TO t16->items.
        t16->save( ).
      ENDIF.
    ENDDO.
    DATA(t21) = t1.
    result = t21.

  ENDMETHOD.

  METHOD find_direct_expression.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t8.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_expression_node ).
      t13 = t14.
      IF t14 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zif_lnt_statement_runnable.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA(t19) = t8.
        DATA t20 TYPE REF TO object.
        t20 = t19.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t21) = t1.
        DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t22.
        IF t17 IS BOUND.
          t22 = t17->zlnt_builtin_clas_3f891b097658( ).
          WHILE t22 IS BOUND.
            IF t22 = t21.
              t16 = abap_true.
              EXIT.
            ENDIF.
            t22 = t22->parent.
          ENDWHILE.
        ENDIF.
        t13 = t16.
      ENDIF.
      IF t13 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t23.
        DATA(t24) = abap_true.
        IF t24 = abap_true.
          DATA t25 TYPE REF TO zcl_lnt_expression_node.
          DATA(t26) = t8.
          DATA t27 TYPE REF TO object.
          t27 = t26.
          t25 ?= t27.
          t23 = t25.
        ELSE.
          DATA t28 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t28.
          t23 = t28.
        ENDIF.
        result = t23.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    result = t29.

  ENDMETHOD.

  METHOD find_expression_after_token.
    DATA(t1) = i_text.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = me.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      DATA(t15) = t2.
      t15->load( ).
      t14 = lines( t15->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t18.
      DATA(t19) = t2.
      DATA(t20) = t9.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t19->load( ).
      CLEAR t21.
      READ TABLE t19->items INDEX t20 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t18.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t18 ?= t23.
      ELSE.
        t18 ?= t21.
      ENDIF.
      t17 = t18.
      DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t24.
      DATA t25 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t25.
      DATA(t26) = t2.
      DATA t27 TYPE i.
      DATA(t28) = t9.
      DATA(t29) = 1.
      t27 = t28 + t29.
      t27 = t27 + 1.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      t26->load( ).
      CLEAR t30.
      READ TABLE t26->items INDEX t27 INTO t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t25.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t30.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t25 ?= t32.
      ELSE.
        t25 ?= t30.
      ENDIF.
      t24 = t25.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t17.
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_token_node ).
      t34 = t35.
      IF t35 = abap_true.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA t42 TYPE REF TO zcl_lnt_token_node.
        DATA(t43) = t17.
        DATA t44 TYPE REF TO object.
        t44 = t43.
        t42 ?= t44.
        t41 = t42->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t40 = t41.
        DATA t45 TYPE string.
        DATA(t46) = t40.
        t45 = t46->str.
        t39 = t45.
        DATA(t47) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        DATA t48 TYPE string.
        DATA(t49) = t1.
        DATA(t50) = strlen( t49 ).
        t48 = t49.
        IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t48 TO UPPER CASE.
        ELSE.
          t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
        ENDIF.
        t37 = xsdbool( t38 = t48 ).
        t34 = t37.
      ENDIF.
      t33 = t34.
      IF t34 = abap_true.
        DATA t51 TYPE abap_bool.
        DATA(t52) = t24.
        t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_expression_node ).
        t33 = t51.
      ENDIF.
      IF t33 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        DATA(t54) = abap_true.
        IF t54 = abap_true.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          DATA(t56) = t24.
          DATA t57 TYPE REF TO object.
          t57 = t56.
          t55 ?= t57.
          t53 = t55.
        ELSE.
          DATA t58 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t58.
          t53 = t58.
        ENDIF.
        result = t53.
        RETURN.
      ENDIF.
      DATA t59 TYPE i.
      DATA(t60) = t9.
      DATA(t61) = 1.
      t59 = t60 + t61.
      t9 = t59.
    ENDDO.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t62.
    result = t62.

  ENDMETHOD.

  METHOD find_direct_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t10.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_expression_node ).
      t15 = t16.
      IF t16 = abap_true.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zif_lnt_statement_runnable.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA(t21) = t10.
        DATA t22 TYPE REF TO object.
        t22 = t21.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t23) = t1.
        DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t24.
        IF t19 IS BOUND.
          t24 = t19->zlnt_builtin_clas_3f891b097658( ).
          WHILE t24 IS BOUND.
            IF t24 = t23.
              t18 = abap_true.
              EXIT.
            ENDIF.
            t24 = t24->parent.
          ENDWHILE.
        ENDIF.
        t15 = t18.
      ENDIF.
      IF t15 = abap_true.
        DATA(t25) = t2.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA(t27) = t10.
        DATA t28 TYPE REF TO object.
        t28 = t27.
        t26 ?= t28.
        t25->load( ).
        APPEND t26 TO t25->items.
        t25->save( ).
      ENDIF.
    ENDDO.
    DATA(t29) = t2.
    result = t29.

  ENDMETHOD.

  METHOD find_direct_expressions_multi.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t10.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_expression_node ).
      IF t15 = abap_true.
        DATA(t17) = t1.
        DATA t18 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        DATA(t20) = VALUE i( ).
        DO.
          t17->load( ).
          IF t20 >= lines( t17->items ).
            EXIT.
          ENDIF.
          CLEAR t19.
          READ TABLE t17->items INDEX t20 + 1 INTO t19.
          t20 = t20 + 1.
          DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t21.
          CLEAR t18.
          IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t21 ?= t19.
            t18 = t21->as_classvalue( ).
          ELSE.
            t18 ?= t19.
          ENDIF.
          DATA(t22) = VALUE abap_bool( ).
          DATA t23 TYPE REF TO zif_lnt_statement_runnable.
          DATA t24 TYPE REF TO zcl_lnt_expression_node.
          DATA(t25) = t10.
          DATA t26 TYPE REF TO object.
          t26 = t25.
          t24 ?= t26.
          t23 = t24->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          DATA(t27) = t18.
          DATA t28 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t28.
          IF t23 IS BOUND.
            t28 = t23->zlnt_builtin_clas_3f891b097658( ).
            WHILE t28 IS BOUND.
              IF t28 = t27.
                t22 = abap_true.
                EXIT.
              ENDIF.
              t28 = t28->parent.
            ENDWHILE.
          ENDIF.
          IF t22 = abap_true.
            DATA(t29) = t2.
            DATA t30 TYPE REF TO zcl_lnt_expression_node.
            DATA(t31) = t10.
            DATA t32 TYPE REF TO object.
            t32 = t31.
            t30 ?= t32.
            t29->load( ).
            APPEND t30 TO t29->items.
            t29->save( ).
            EXIT.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t33) = t2.
    result = t33.

  ENDMETHOD.

  METHOD find_direct_token_by_text.
    DATA(t1) = i_text.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t9) = me.
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
      DATA t18 TYPE abap_bool.
      DATA(t19) = t12.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_token_node ).
      t17 = t18.
      IF t18 = abap_true.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE string.
        DATA t22 TYPE string.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_token_node.
        DATA(t26) = t12.
        DATA t27 TYPE REF TO object.
        t27 = t26.
        t25 ?= t27.
        t24 = t25->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t23 = t24.
        DATA t28 TYPE string.
        DATA(t29) = t23.
        t28 = t29->str.
        t22 = t28.
        DATA(t30) = strlen( t22 ).
        t21 = t22.
        IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t21 TO UPPER CASE.
        ELSE.
          t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
        ENDIF.
        DATA(t31) = t2.
        t20 = xsdbool( t21 = t31 ).
        t17 = t20.
      ENDIF.
      IF t17 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE REF TO zcl_lnt_abstract_token.
          DATA t35 TYPE REF TO zcl_lnt_token_node.
          DATA(t36) = t12.
          DATA t37 TYPE REF TO object.
          t37 = t36.
          t35 ?= t37.
          t34 = t35->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t32 = t34.
        ELSE.
          DATA t38 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t38.
          t32 = t38.
        ENDIF.
        result = t32.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t39 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t39.
    result = t39.

  ENDMETHOD.

  METHOD find_all_expressions_recursive.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t10.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_token_node ).
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE REF TO zif_lnt_statement_runnable.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = t10.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        t18 = t19->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t22) = t1.
        DATA t23 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t23.
        IF t18 IS BOUND.
          t23 = t18->zlnt_builtin_clas_3f891b097658( ).
          WHILE t23 IS BOUND.
            IF t23 = t22.
              t17 = abap_true.
              EXIT.
            ENDIF.
            t23 = t23->parent.
          ENDWHILE.
        ENDIF.
        IF t17 = abap_true.
          DATA(t24) = t2.
          DATA t25 TYPE REF TO zcl_lnt_expression_node.
          DATA(t26) = t10.
          DATA t27 TYPE REF TO object.
          t27 = t26.
          t25 ?= t27.
          t24->load( ).
          APPEND t25 TO t24->items.
          t24->save( ).
        ENDIF.
      ENDIF.
      DATA(t28) = VALUE i( ).
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = t10.
      DATA t32 TYPE REF TO object.
      t32 = t31.
      t30 ?= t32.
      DATA(t33) = t1.
      t29 = t30->find_all_expressions_recursive( i_type_9913 = t33 ).
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      DATA(t36) = VALUE i( ).
      DO.
        t29->load( ).
        IF t36 >= lines( t29->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t29->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA(t39) = t2.
        DATA(t40) = t34.
        t39->load( ).
        APPEND t40 TO t39->items.
        t39->save( ).
      ENDDO.
      DATA t41 TYPE i.
      DATA(t42) = t2.
      t42->load( ).
      t41 = lines( t42->items ).
      t28 = t41.
    ENDDO.
    DATA(t43) = t2.
    result = t43.

  ENDMETHOD.

  METHOD find_all_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t10.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_token_node ).
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE REF TO zif_lnt_statement_runnable.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = t10.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        t18 = t19->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t22) = t1.
        DATA t23 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t23.
        IF t18 IS BOUND.
          t23 = t18->zlnt_builtin_clas_3f891b097658( ).
          WHILE t23 IS BOUND.
            IF t23 = t22.
              t17 = abap_true.
              EXIT.
            ENDIF.
            t23 = t23->parent.
          ENDWHILE.
        ENDIF.
        IF t17 = abap_true.
          DATA(t24) = t2.
          DATA t25 TYPE REF TO zcl_lnt_expression_node.
          DATA(t26) = t10.
          DATA t27 TYPE REF TO object.
          t27 = t26.
          t25 ?= t27.
          t24->load( ).
          APPEND t25 TO t24->items.
          t24->save( ).
        ELSE.
          DATA(t28) = VALUE i( ).
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t30 TYPE REF TO zcl_lnt_expression_node.
          DATA(t31) = t10.
          DATA t32 TYPE REF TO object.
          t32 = t31.
          t30 ?= t32.
          DATA(t33) = t1.
          t29 = t30->find_all_expressions( i_type_9913 = t33 ).
          DATA t34 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t34.
          DATA t35 TYPE REF TO object.
          CLEAR t35.
          DATA(t36) = VALUE i( ).
          DO.
            t29->load( ).
            IF t36 >= lines( t29->items ).
              EXIT.
            ENDIF.
            CLEAR t35.
            READ TABLE t29->items INDEX t36 + 1 INTO t35.
            t36 = t36 + 1.
            DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t37.
            CLEAR t34.
            IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t37 ?= t35.
              DATA t38 TYPE REF TO object.
              t38 = t37->as_ref( ).
              t34 ?= t38.
            ELSE.
              t34 ?= t35.
            ENDIF.
            DATA(t39) = t2.
            DATA(t40) = t34.
            t39->load( ).
            APPEND t40 TO t39->items.
            t39->save( ).
          ENDDO.
          DATA t41 TYPE i.
          DATA(t42) = t2.
          t42->load( ).
          t41 = lines( t42->items ).
          t28 = t41.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t43) = t2.
    result = t43.

  ENDMETHOD.

  METHOD find_all_expressions_multi.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_recursive.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA(t7) = abap_false.
        DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t8->has = abap_true.
        t8->value = t7.
        t5 = t8.
      ELSE.
        DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t9.
        t5 = t9.
      ENDIF.
      t2 = t5.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t15) = me.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = t14.
    t16 = t17->children.
    t13 = t16.
    t12 ?= t13.
    DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t12->load( ).
      IF t20 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t12->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA t23 TYPE abap_bool.
      DATA(t24) = t18.
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_token_node ).
      IF t23 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t25 TYPE i.
      DATA t26 TYPE i.
      DATA(t27) = t10.
      t27->load( ).
      t26 = lines( t27->items ).
      t25 = t26.
      DATA(t28) = t1.
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      DATA(t31) = VALUE i( ).
      DO.
        t28->load( ).
        IF t31 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t30.
        READ TABLE t28->items INDEX t31 + 1 INTO t30.
        t31 = t31 + 1.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        CLEAR t29.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t32 ?= t30.
          t29 = t32->as_classvalue( ).
        ELSE.
          t29 ?= t30.
        ENDIF.
        DATA(t33) = VALUE abap_bool( ).
        DATA t34 TYPE REF TO zif_lnt_statement_runnable.
        DATA t35 TYPE REF TO zcl_lnt_expression_node.
        DATA(t36) = t18.
        DATA t37 TYPE REF TO object.
        t37 = t36.
        t35 ?= t37.
        t34 = t35->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t38) = t29.
        DATA t39 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t39.
        IF t34 IS BOUND.
          t39 = t34->zlnt_builtin_clas_3f891b097658( ).
          WHILE t39 IS BOUND.
            IF t39 = t38.
              t33 = abap_true.
              EXIT.
            ENDIF.
            t39 = t39->parent.
          ENDWHILE.
        ENDIF.
        IF t33 = abap_true.
          DATA(t40) = t10.
          DATA t41 TYPE REF TO zcl_lnt_expression_node.
          DATA(t42) = t18.
          DATA t43 TYPE REF TO object.
          t43 = t42.
          t41 ?= t43.
          t40->load( ).
          APPEND t41 TO t40->items.
          t40->save( ).
        ENDIF.
      ENDDO.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t46) = t25.
      DATA t47 TYPE i.
      DATA(t48) = t10.
      t48->load( ).
      t47 = lines( t48->items ).
      t45 = xsdbool( t46 = t47 ).
      t44 = t45.
      IF t45 = abap_false.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t2.
        t50 = t51->value.
        DATA(t52) = abap_true.
        t49 = xsdbool( t50 = t52 ).
        t44 = t49.
      ENDIF.
      IF t44 = abap_true.
        DATA(t53) = VALUE i( ).
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA(t56) = t18.
        DATA t57 TYPE REF TO object.
        t57 = t56.
        t55 ?= t57.
        DATA(t58) = t1.
        DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE abap_bool.
          DATA(t62) = t2.
          t61 = t62->value.
          DATA(t63) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t63->has = abap_true.
          t63->value = t61.
          t59 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t64.
          t59 = t64.
        ENDIF.
        t54 = t55->find_all_expressions_multi( i_type_9913 = t58 i_recursive = t59 ).
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        DATA t66 TYPE REF TO object.
        CLEAR t66.
        DATA(t67) = VALUE i( ).
        DO.
          t54->load( ).
          IF t67 >= lines( t54->items ).
            EXIT.
          ENDIF.
          CLEAR t66.
          READ TABLE t54->items INDEX t67 + 1 INTO t66.
          t67 = t67 + 1.
          DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t68.
          CLEAR t65.
          IF t66 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t68 ?= t66.
            DATA t69 TYPE REF TO object.
            t69 = t68->as_ref( ).
            t65 ?= t69.
          ELSE.
            t65 ?= t66.
          ENDIF.
          DATA(t70) = t10.
          DATA(t71) = t65.
          t70->load( ).
          APPEND t71 TO t70->items.
          t70->save( ).
        ENDDO.
        DATA t72 TYPE i.
        DATA(t73) = t10.
        t73->load( ).
        t72 = lines( t73->items ).
        t53 = t72.
      ENDIF.
    ENDDO.
    DATA(t74) = t10.
    result = t74.

  ENDMETHOD.

  METHOD find_first_expression.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_statement_runnable( me->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ) ).
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t5.
    IF t3 IS BOUND.
      t5 = t3->zlnt_builtin_clas_3f891b097658( ).
      WHILE t5 IS BOUND.
        IF t5 = t4.
          t2 = abap_true.
          EXIT.
        ENDIF.
        t5 = t5->parent.
      ENDWHILE.
    ENDIF.
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = me.
        t6 = t8.
      ELSE.
        DATA t9 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t9.
        t6 = t9.
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t13) = me.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t12.
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t10->load( ).
      IF t18 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t10->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t16.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_token_node ).
      IF t21 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zif_lnt_statement_runnable.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA(t26) = t16.
        DATA t27 TYPE REF TO object.
        t27 = t26.
        t25 ?= t27.
        t24 = t25->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t28) = t1.
        DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t29.
        IF t24 IS BOUND.
          t29 = t24->zlnt_builtin_clas_3f891b097658( ).
          WHILE t29 IS BOUND.
            IF t29 = t28.
              t23 = abap_true.
              EXIT.
            ENDIF.
            t29 = t29->parent.
          ENDWHILE.
        ENDIF.
        IF t23 = abap_true.
          DATA t30 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t30.
          DATA(t31) = abap_true.
          IF t31 = abap_true.
            DATA t32 TYPE REF TO zcl_lnt_expression_node.
            DATA(t33) = t16.
            DATA t34 TYPE REF TO object.
            t34 = t33.
            t32 ?= t34.
            t30 = t32.
          ELSE.
            DATA t35 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t35.
            t30 = t35.
          ENDIF.
          result = t30.
          RETURN.
        ELSE.
          DATA t36 TYPE REF TO zcl_lnt_expression_node.
          DATA t37 TYPE REF TO zcl_lnt_expression_node.
          DATA t38 TYPE REF TO zcl_lnt_expression_node.
          DATA(t39) = t16.
          DATA t40 TYPE REF TO object.
          t40 = t39.
          t38 ?= t40.
          DATA(t41) = t1.
          t37 = t38->find_first_expression( i_type_9913 = t41 ).
          t36 = t37.
          DATA t42 TYPE abap_bool.
          DATA(t43) = t36.
          t42 = xsdbool( t43 IS BOUND ).
          IF t42 = abap_true.
            DATA t44 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t44.
            DATA(t45) = abap_true.
            IF t45 = abap_true.
              DATA t46 TYPE REF TO zcl_lnt_expression_node.
              DATA(t47) = t36.
              t46 = t47.
              t44 = t46.
            ELSE.
              DATA t48 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t48.
              t44 = t48.
            ENDIF.
            result = t44.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t49.
    result = t49.

  ENDMETHOD.

  METHOD add_child.
    DATA t1 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t1.
    t1 ?= i_n_0c97.
    me->a_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_n_2941 = t1 ).

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = CAST zif_lnt_statement_runnable( me->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_children_value.
    DATA(t1) = i_children_9020.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 ?= t4.
    t2 = me->s_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_children_9020 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_children.
    DATA(t1) = i_children_9020.
    DATA(t2) = t1.
    super->set_children( i_children_9020 = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = me.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE f.
      DATA(t15) = CONV f( me->token_count ).
      DATA t16 TYPE f.
      DATA(t17) = t9.
      t16 = t17->count_tokens( ).
      t14 = t15 + t16.
      me->token_count = t14.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokenCount`.
    ENDDO.
    DATA(t18) = me.
    result = t18.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1007_3086b49acaf2.
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~cnct_tkns_wtht_strng_and_cmmnt.
    result = me->cnct_tkns_wtht_strng_and_cmmnt( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_all_expressions.
    result = me->find_all_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_all_expressions_multi.
    result = me->find_all_expressions_multi( i_type_9913 = i_type_9913 i_recursive = i_recursive ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_all_expressions_recursive.
    result = me->find_all_expressions_recursive( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_direct_expression.
    result = me->find_direct_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_direct_expressions.
    result = me->find_direct_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_direct_expressions_multi.
    result = me->find_direct_expressions_multi( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_direct_token_by_text.
    result = me->find_direct_token_by_text( i_text = i_text ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_expression_after_token.
    result = me->find_expression_after_token( i_text = i_text ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~find_first_expression.
    result = me->find_first_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~get_last_child.
    result = me->get_last_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~get_tokens.
    result = me->get_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.

  METHOD zif_lnt_union_bb14dc41~set_children_value.
    result = me->set_children_value( i_children_9020 = i_children_9020 ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~count_tokens.
    result = me->count_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_4cf1d054~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions.
    result = me->find_all_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions_multi.
    result = me->find_all_expressions_multi( i_type_9913 = i_type_9913 i_recursive = i_recursive ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions_recursive.
    result = me->find_all_expressions_recursive( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_first_expression.
    result = me->find_first_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_last_child.
    result = me->get_last_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.
ENDCLASS.
