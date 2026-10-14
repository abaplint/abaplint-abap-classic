* TS: src/abap/5_syntax/statements/modify_database.ts:10:1 ModifyDatabase
CLASS zcl_lnt_sy_modify_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_modify_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA(t8) = t6.
      DATA(t9) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t8 i_input_967e = t9 ).
    ENDLOOP.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = t1.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t11 = t12->find_first_expression( i_type_9913 = t13 ).
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = t10.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t15.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    t19 = xsdbool( t20 = abap_false ).
    t14 = t19.
    IF t14 = abap_true.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE i.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t27) = t1.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = t26.
      t28 = t29->children.
      t25 = t28.
      t24 ?= t25.
      t23 = lines( t24->items ).
      DATA(t30) = 5.
      t22 = xsdbool( t23 = t30 ).
      IF t22 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_current_scope.
        DATA t34 TYPE REF TO zcl_lnt_current_scope.
        DATA(t35) = t2.
        t34 = t35->scope.
        t33 = t34.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA t39 TYPE string.
          DATA t40 TYPE REF TO zcl_lnt_expression_node.
          DATA(t41) = t10.
          t40 = t41.
          t39 = t40->concat_tokens( ).
          DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t42->has = abap_true.
          t42->value = t39.
          t37 = t42.
        ELSE.
          DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t43.
          t37 = t43.
        ENDIF.
        t36 = t37.
        DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t44.
        DATA(t45) = VALUE abap_bool( ).
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t47) = t36.
        t46 = t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        t48 = t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = t46.
        IF t51 IS INITIAL.
          t50 = abap_true.
        ELSEIF t51->has = abap_false.
          t50 = abap_true.
        ENDIF.
        t45 = t50.
        IF t45 = abap_true.
          DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t52.
          t44 = t52.
        ELSE.
          DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t58) = t33.
          t57 = t58->current.
          t56 = t57.
          DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t59.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = t56.
          IF t61 IS INITIAL.
            t60 = abap_true.
          ENDIF.
          IF t60 = abap_true.
            DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t62.
            t59 = t62.
          ELSE.
            DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t65) = t56.
            t64 = t65.
            DATA t66 TYPE string.
            DATA(t67) = t36.
            t66 = t67->value.
            t63 = t64->find_variable( i_name = t66 ).
            t59 = t63.
          ENDIF.
          t55 = t59.
          t54 = t55.
          DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t68.
          DATA t69 TYPE abap_bool.
          DATA(t70) = t54.
          t69 = xsdbool( t70 IS BOUND ).
          IF t69 = abap_true.
            DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t71.
            DATA(t72) = abap_true.
            IF t72 = abap_true.
              DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t74) = t54.
              t73 = t74.
              t71 = t73.
            ELSE.
              DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t75.
              t71 = t75.
            ENDIF.
            t68 = t71.
          ELSE.
            DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t76.
            DATA(t77) = t33.
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            DATA(t79) = abap_true.
            IF t79 = abap_true.
              DATA t80 TYPE string.
              DATA(t81) = t36.
              t80 = t81->value.
              DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t82->has = abap_true.
              t82->value = t80.
              t78 = t82.
            ELSE.
              DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t83.
              t78 = t83.
            ENDIF.
            t76 = t77->find_type_pool_constant( i_name = t78 ).
            t68 = t76.
          ENDIF.
          t53 = t68.
          t44 = t53.
        ENDIF.
        t32 = t44.
        t31 = t32.
        DATA t84 TYPE abap_bool.
        DATA(t85) = t31.
        t84 = xsdbool( t85 IS BOUND ).
        IF t84 = abap_true.
          DATA t86 TYPE REF TO zcl_lnt_current_scope.
          DATA(t87) = t2.
          t86 = t87->scope.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA t90 TYPE REF TO zcl_lnt_abstract_token.
            DATA t91 TYPE REF TO zcl_lnt_expression_node.
            DATA(t92) = t10.
            t91 = t92.
            t90 = t91->get_first_token( ).
            t88 = t90.
          ELSE.
            DATA t93 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t93.
            t88 = t93.
          ENDIF.
          DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t95) = t31.
          t94 = t95.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t97) = |Write To|.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t96->sval = t97.
          DATA t98 TYPE string.
          DATA(t99) = t2.
          t98 = t99->filename.
          DATA t100 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t100.
          t86->add_reference( i_usage = t88 i_referencing = t94 i_type_9913 = t96 i_filename = t98 i_extra = t100 ).
        ELSE.
          DATA t101 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t102 TYPE REF TO zcl_lnt_expression_node.
          DATA(t103) = t10.
          t102 = t103.
          DATA(t104) = t2.
          t101 = zcl_lnt_sy_database_table=>run_syntax( i_node = t102 i_input_967e = t104 ).
        ENDIF.
      ELSE.
        DATA t105 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        DATA(t107) = t10.
        t106 = t107.
        DATA(t108) = t2.
        t105 = zcl_lnt_sy_database_table=>run_syntax( i_node = t106 i_input_967e = t108 ).
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t110) = t1.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t109 = t110->find_all_expressions( i_type_9913 = t111 ).
    DATA t112 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t112.
    DATA t113 TYPE REF TO object.
    CLEAR t113.
    LOOP AT t109->items INTO t113.
      t112 ?= t113.
      DATA t114 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t114.
      DATA t115 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t115.
      DATA(t116) = abap_true.
      IF t116 = abap_true.
        DATA(t117) = t112.
        t115 = t117.
      ELSE.
        DATA t118 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t118.
        t115 = t118.
      ENDIF.
      DATA(t119) = t2.
      DATA t120 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t121.
      DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t122.
      DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t123.
      t114 = zcl_lnt_sy_source=>run_syntax( i_node = t115 i_input_967e = t119 i_target_type = t120 i_write_reference = t121 i_allow_generic_deference = t122 i_read_reference = t123 ).
    ENDLOOP.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t125) = t1.
    DATA(t126) = zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb.
    t124 = t125->find_all_expressions( i_type_9913 = t126 ).
    DATA t127 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t127.
    DATA t128 TYPE REF TO object.
    CLEAR t128.
    LOOP AT t124->items INTO t128.
      t127 ?= t128.
      DATA t129 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t130.
      DATA(t131) = abap_true.
      IF t131 = abap_true.
        DATA(t132) = t127.
        t130 = t132.
      ELSE.
        DATA t133 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t133.
        t130 = t133.
      ENDIF.
      DATA(t134) = t2.
      DATA t135 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t135.
      DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t136.
      DATA t137 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t137.
      DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t138.
      t129 = zcl_lnt_sy_source=>run_syntax( i_node = t130 i_input_967e = t134 i_target_type = t135 i_write_reference = t136 i_allow_generic_deference = t137 i_read_reference = t138 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d908_53562b92ff8b.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
