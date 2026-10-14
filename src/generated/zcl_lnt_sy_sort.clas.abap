* TS: src/abap/5_syntax/statements/sort.ts:10:1 Sort
CLASS zcl_lnt_sy_sort DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sort IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA(t8) = CAST zcl_lnt_expression_node( t6 ).
      DATA(t9) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t8 i_input_967e = t9 ).
    ENDLOOP.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t11 = t12->find_direct_expression( i_type_9913 = t13 ).
    t10 = t11.
    DATA t14 TYPE abap_bool.
    DATA(t15) = CAST zcl_lnt_expression_node( t10 ).
    t14 = xsdbool( t15 IS BOUND ).
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = CAST zcl_lnt_expression_node( t10 ).
      t18 = t19.
      DATA(t20) = CAST zcl_lnt_syntax_input( t2 ).
      t17 = zcl_lnt_sy_target=>run_syntax( i_node = t18 i_input_967e = t20 ).
      t16 = t17.
      DATA t21 TYPE abap_bool.
      DATA(t22) = CAST zcl_lnt_abstract_type( t16 ).
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t21 = abap_true.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t25.
        DATA t26 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t26.
        DATA t27 TYPE REF TO zcl_lnt_itable_options.
        DATA t28 TYPE REF TO zcl_lnt_itable_options.
        DATA t29 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t30 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t31) = CAST zcl_lnt_abstract_type( t16 ).
        t30 ?= t31.
        t29 = t30.
        DATA t32 TYPE REF TO zcl_lnt_itable_options.
        DATA(t33) = CAST zcl_lnt_ty_table_type( t29 ).
        t32 = t33->options.
        t28 = t32.
        t27 = t28.
        DATA t34 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t34.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = CAST zcl_lnt_itable_options( t27 ).
        IF t36 IS INITIAL.
          t35 = abap_true.
        ENDIF.
        IF t35 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t37.
          t34 = t37.
        ELSE.
          DATA t38 TYPE REF TO zcl_lnt_itable_key.
          DATA(t39) = CAST zcl_lnt_itable_options( t27 ).
          t38 = t39->primary_key.
          t34 = t38.
        ENDIF.
        t26 = t34.
        t25 = t26.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = CAST zcl_lnt_itable_key( t25 ).
        IF t42 IS INITIAL.
          t41 = abap_true.
        ENDIF.
        IF t41 = abap_true.
          DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t43.
          t40 = t43.
        ELSE.
          DATA t44 TYPE string.
          DATA t45 TYPE REF TO zcl_lnt_itable_key.
          DATA(t46) = CAST zcl_lnt_itable_key( t25 ).
          t45 = t46.
          t44 = t45->type_cba0.
          DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t47->has = abap_true.
          t47->value = t44.
          t40 = t47.
        ENDIF.
        t24 = t40.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = |SORTED|.
          DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t51->has = abap_true.
          t51->value = t50.
          t48 = t51.
        ELSE.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t48 = t52.
        ENDIF.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        IF t24 IS BOUND.
          t53 = t24->has.
        ENDIF.
        IF t48 IS BOUND.
          t54 = t48->has.
        ENDIF.
        IF t53 = t54.
          IF t53 = abap_false.
            t23 = abap_true.
          ELSEIF t24->value = t48->value.
            t23 = abap_true.
          ENDIF.
        ENDIF.
        IF t23 = abap_true.
          DATA t55 TYPE string.
          DATA(t56) = |Sorted table, already sorted|.
          t55 = t56.
          DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t58) = CAST zcl_lnt_syntax_input( t2 ).
          t57 = t58->issues.
          DATA t59 TYPE REF TO zcl_lnt_issue.
          DATA(t60) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          DATA(t63) = CAST zcl_lnt_expression_node( t10 ).
          t62 = t63.
          t61 = t62->get_first_token(  ).
          DATA(t64) = t55.
          DATA t65 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t65.
          t59 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t60 i_token = t61 i_message_26cb = t64 i_fix = t65 ).
          APPEND t59 TO t57->items.
          RETURN.
        ENDIF.
        DATA t66 TYPE REF TO zcl_lnt_abstract_type.
        DATA t67 TYPE REF TO zcl_lnt_abstract_type.
        DATA t68 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t69 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t70) = CAST zcl_lnt_abstract_type( t16 ).
        t69 ?= t70.
        t68 = t69.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t72) = CAST zcl_lnt_ty_table_type( t68 ).
        t71 = t72->row_type.
        t67 = t71.
        t66 = t67.
        DATA(t73) = VALUE abap_bool( ).
        DATA t74 TYPE abap_bool.
        DATA t75 TYPE abap_bool.
        DATA t76 TYPE abap_bool.
        DATA(t77) = CAST zcl_lnt_abstract_type( t66 ).
        t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_void_type ).
        t75 = xsdbool( t76 = abap_false ).
        t74 = t75.
        IF t75 = abap_true.
          DATA t78 TYPE abap_bool.
          DATA t79 TYPE abap_bool.
          DATA(t80) = CAST zcl_lnt_abstract_type( t66 ).
          t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_unknown_type ).
          t78 = xsdbool( t79 = abap_false ).
          t74 = t78.
        ENDIF.
        t73 = t74.
        IF t74 = abap_true.
          DATA t81 TYPE abap_bool.
          DATA t82 TYPE abap_bool.
          DATA(t83) = CAST zcl_lnt_abstract_type( t66 ).
          t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_any_type ).
          t81 = xsdbool( t82 = abap_false ).
          t73 = t81.
        ENDIF.
        IF t73 = abap_true.
          DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t85) = CAST zcl_lnt_statement_node( t1 ).
          DATA(t86) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d124_1ce9c8f13c80 ).
          t84 = t85->find_all_expressions( i_type_9913 = t86 ).
          DATA t87 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t87.
          DATA t88 TYPE REF TO object.
          CLEAR t88.
          LOOP AT t84->items INTO t88.
            t87 ?= t88.
            DATA t89 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t89.
            DATA t90 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t90.
            DATA(t91) = abap_true.
            IF t91 = abap_true.
              DATA(t92) = CAST zcl_lnt_abstract_type( t66 ).
              t90 = t92.
            ELSE.
              DATA t93 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t93.
              t90 = t93.
            ENDIF.
            DATA(t94) = CAST zcl_lnt_expression_node( t87 ).
            DATA(t95) = CAST zcl_lnt_syntax_input( t2 ).
            t89 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t90 i_node = t94 i_input_967e = t95 ).
          ENDLOOP.
        ENDIF.
      ELSE.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE abap_bool( ).
        DATA t100 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t101) = CAST zcl_lnt_abstract_type( t16 ).
        t100 = t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        t102 = t103.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE abap_bool( ).
        DATA(t106) = CAST zcl_lnt_abstract_type( t100 ).
        IF t106 IS INITIAL.
          t105 = abap_true.
        ENDIF.
        t104 = xsdbool( t105 = abap_false ).
        t99 = t104.
        t98 = t99.
        IF t99 = abap_true.
          DATA t107 TYPE abap_bool.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t110) = CAST zcl_lnt_abstract_type( t16 ).
          t109 = t110.
          t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_void_type ).
          t107 = xsdbool( t108 = abap_false ).
          t98 = t107.
        ENDIF.
        t97 = t98.
        IF t98 = abap_true.
          DATA t111 TYPE abap_bool.
          DATA t112 TYPE abap_bool.
          DATA(t113) = CAST zcl_lnt_abstract_type( t16 ).
          t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_unknown_type ).
          t111 = xsdbool( t112 = abap_false ).
          t97 = t111.
        ENDIF.
        t96 = t97.
        IF t97 = abap_true.
          DATA t114 TYPE abap_bool.
          DATA t115 TYPE abap_bool.
          DATA(t116) = CAST zcl_lnt_abstract_type( t16 ).
          t115 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_any_type ).
          t114 = xsdbool( t115 = abap_false ).
          t96 = t114.
        ENDIF.
        IF t96 = abap_true.
          DATA t117 TYPE string.
          DATA(t118) = |SORT, must be a internal table|.
          t117 = t118.
          DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t120) = CAST zcl_lnt_syntax_input( t2 ).
          t119 = t120->issues.
          DATA t121 TYPE REF TO zcl_lnt_issue.
          DATA(t122) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          DATA t124 TYPE REF TO zcl_lnt_expression_node.
          DATA(t125) = CAST zcl_lnt_expression_node( t10 ).
          t124 = t125.
          t123 = t124->get_first_token(  ).
          DATA(t126) = t117.
          DATA t127 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t127.
          t121 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t122 i_token = t123 i_message_26cb = t126 i_fix = t127 ).
          APPEND t121 TO t119->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d945_ac088dad3cfc.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
