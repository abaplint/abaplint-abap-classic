* TS: src/abap/5_syntax/expressions/fstarget.ts:8:1 FSTarget
CLASS zcl_lnt_sy_fs_target DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_fs_target IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t13) = t6.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
      t12 = t13->find_direct_expression( i_type_9913 = t14 ).
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t15 TYPE abap_bool.
    DATA(t16) = t4.
    t15 = xsdbool( t16 IS BOUND ).
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t18) = t4.
      t17 = t18.
      DATA(t19) = t2.
      DATA(t20) = t3.
      zcl_lnt_sy_inline_fs=>run_syntax( i_node = t17 i_input_967e = t19 i_type_9913 = t20 ).
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = t1.
    t23 = t24.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t23.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t28.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = t23.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t29 = t30->find_direct_expression( i_type_9913 = t31 ).
      t25 = t29.
    ENDIF.
    t22 = t25.
    t21 = t22.
    DATA t32 TYPE abap_bool.
    DATA(t33) = t21.
    t32 = xsdbool( t33 IS BOUND ).
    IF t32 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = t21.
      t36 = t37.
      t35 = t36->get_first_token( ).
      t34 = t35.
      DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_current_scope.
      DATA t41 TYPE REF TO zcl_lnt_current_scope.
      DATA(t42) = t2.
      t41 = t42->scope.
      t40 = t41.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA t46 TYPE string.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t48) = t34.
        t47 = t48.
        DATA t49 TYPE string.
        DATA(t50) = t47.
        t49 = t50->str.
        t46 = t49.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t46.
        t44 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t44 = t52.
      ENDIF.
      t43 = t44.
      DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t53.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t56) = t43.
      t55 = t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      t57 = t58.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = t55.
      IF t60 IS INITIAL.
        t59 = abap_true.
      ELSEIF t60->has = abap_false.
        t59 = abap_true.
      ENDIF.
      t54 = t59.
      IF t54 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t61.
        t53 = t61.
      ELSE.
        DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t67) = t40.
        t66 = t67->current.
        t65 = t66.
        DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t68.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t65.
        IF t70 IS INITIAL.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t71.
          t68 = t71.
        ELSE.
          DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t74) = t65.
          t73 = t74.
          DATA t75 TYPE string.
          DATA(t76) = t43.
          t75 = t76->value.
          t72 = t73->find_variable( i_name = t75 ).
          t68 = t72.
        ENDIF.
        t64 = t68.
        t63 = t64.
        DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t77.
        DATA t78 TYPE abap_bool.
        DATA(t79) = t63.
        t78 = xsdbool( t79 IS BOUND ).
        IF t78 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t83) = t63.
            t82 = t83.
            t80 = t82.
          ELSE.
            DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t84.
            t80 = t84.
          ENDIF.
          t77 = t80.
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t85.
          DATA(t86) = t40.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA(t88) = abap_true.
          IF t88 = abap_true.
            DATA t89 TYPE string.
            DATA(t90) = t43.
            t89 = t90->value.
            DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t91->has = abap_true.
            t91->value = t89.
            t87 = t91.
          ELSE.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            t87 = t92.
          ENDIF.
          t85 = t86->find_type_pool_constant( i_name = t87 ).
          t77 = t85.
        ENDIF.
        t62 = t77.
        t53 = t62.
      ENDIF.
      t39 = t53.
      t38 = t39.
      DATA(t93) = VALUE abap_bool( ).
      DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t95) = t38.
      t94 = t95.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      t96 = t97.
      DATA(t98) = VALUE abap_bool( ).
      DATA(t99) = t94.
      IF t99 IS INITIAL.
        t98 = abap_true.
      ENDIF.
      t93 = t98.
      IF t93 = abap_true.
        DATA t100 TYPE string.
        DATA t101 TYPE string.
        DATA t102 TYPE string.
        DATA(t103) = |"|.
        DATA t104 TYPE string.
        DATA t105 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t106) = t34.
        t105 = t106.
        DATA t107 TYPE string.
        DATA(t108) = t105.
        t107 = t108->str.
        t104 = t107.
        DATA(t109) = strlen( t103 ).
        t102 = |{ t103 }{ t104 }|.
        DATA(t110) = |" not found, FSTarget|.
        DATA(t111) = strlen( t102 ).
        t101 = |{ t102 }{ t110 }|.
        t100 = t101.
        DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t113) = t2.
        t112 = t113->issues.
        DATA t114 TYPE REF TO zcl_lnt_issue.
        DATA(t115) = t2.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t117) = t1.
        t116 = t117->get_first_token( ).
        DATA(t118) = t100.
        DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t119.
        t114 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t115 i_token = t116 i_message_26cb = t118 i_fix = t119 ).
        t112->load( ).
        APPEND t114 TO t112->items.
        t112->save( ).
        RETURN.
      ENDIF.
      DATA t120 TYPE REF TO zcl_lnt_current_scope.
      DATA(t121) = t2.
      t120 = t121->scope.
      DATA t122 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t122.
      DATA(t123) = abap_true.
      IF t123 = abap_true.
        DATA(t124) = t34.
        t122 = t124.
      ELSE.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t125.
        t122 = t125.
      ENDIF.
      DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t127) = t38.
      t126 = t127.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      DATA(t129) = |Write To|.
      CLEAR t128.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t128->sval = t129.
      DATA t130 TYPE string.
      DATA(t131) = t2.
      t130 = t131->filename.
      DATA t132 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t132.
      t120->add_reference( i_usage = t122 i_referencing = t126 i_type_9913 = t128 i_filename = t130 i_extra = t132 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d809_d949ed5547d5.
  ENDMETHOD.
ENDCLASS.
