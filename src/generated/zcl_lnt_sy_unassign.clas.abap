* TS: src/abap/5_syntax/statements/unassign.ts:7:1 Unassign
CLASS zcl_lnt_sy_unassign DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_unassign IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = t5.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t11 = t12->find_direct_expression( i_type_9913 = t13 ).
      t7 = t11.
    ENDIF.
    t4 = t7.
    t3 = t4.
    DATA t14 TYPE abap_bool.
    DATA(t15) = t3.
    t14 = xsdbool( t15 IS BOUND ).
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = t3.
      t18 = t19.
      t17 = t18->get_first_token( ).
      t16 = t17.
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_current_scope.
      DATA t23 TYPE REF TO zcl_lnt_current_scope.
      DATA(t24) = t2.
      t23 = t24->scope.
      t22 = t23.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA(t27) = abap_true.
      IF t27 = abap_true.
        DATA t28 TYPE string.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t30) = t16.
        t29 = t30.
        DATA t31 TYPE string.
        DATA(t32) = t29.
        t31 = t32->str.
        t28 = t31.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t28.
        t26 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t26 = t34.
      ENDIF.
      t25 = t26.
      DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t38) = t25.
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      t39 = t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t37.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ELSEIF t42->has = abap_false.
        t41 = abap_true.
      ENDIF.
      t36 = t41.
      IF t36 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t43.
        t35 = t43.
      ELSE.
        DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t49) = t22.
        t48 = t49->current.
        t47 = t48.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t50.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = t47.
        IF t52 IS INITIAL.
          t51 = abap_true.
        ENDIF.
        IF t51 = abap_true.
          DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t53.
          t50 = t53.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t56) = t47.
          t55 = t56.
          DATA t57 TYPE string.
          DATA(t58) = t25.
          t57 = t58->value.
          t54 = t55->find_variable( i_name = t57 ).
          t50 = t54.
        ENDIF.
        t46 = t50.
        t45 = t46.
        DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t59.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t45.
        t60 = xsdbool( t61 IS BOUND ).
        IF t60 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t62.
          DATA(t63) = abap_true.
          IF t63 = abap_true.
            DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t65) = t45.
            t64 = t65.
            t62 = t64.
          ELSE.
            DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t66.
            t62 = t66.
          ENDIF.
          t59 = t62.
        ELSE.
          DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t67.
          DATA(t68) = t22.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          DATA(t70) = abap_true.
          IF t70 = abap_true.
            DATA t71 TYPE string.
            DATA(t72) = t25.
            t71 = t72->value.
            DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t73->has = abap_true.
            t73->value = t71.
            t69 = t73.
          ELSE.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            t69 = t74.
          ENDIF.
          t67 = t68->find_type_pool_constant( i_name = t69 ).
          t59 = t67.
        ENDIF.
        t44 = t59.
        t35 = t44.
      ENDIF.
      t21 = t35.
      t20 = t21.
      DATA(t75) = VALUE abap_bool( ).
      DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t77) = t20.
      t76 = t77.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t78 = t79.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = t76.
      IF t81 IS INITIAL.
        t80 = abap_true.
      ENDIF.
      t75 = t80.
      IF t75 = abap_true.
        DATA t82 TYPE string.
        DATA t83 TYPE string.
        DATA t84 TYPE string.
        DATA(t85) = |"|.
        DATA t86 TYPE string.
        DATA t87 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t88) = t16.
        t87 = t88.
        DATA t89 TYPE string.
        DATA(t90) = t87.
        t89 = t90->str.
        t86 = t89.
        DATA(t91) = strlen( t85 ).
        t84 = |{ t85 }{ t86 }|.
        DATA(t92) = |" not found, Unassign|.
        DATA(t93) = strlen( t84 ).
        t83 = |{ t84 }{ t92 }|.
        t82 = t83.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t95) = t2.
        t94 = t95->issues.
        DATA t96 TYPE REF TO zcl_lnt_issue.
        DATA(t97) = t2.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t99) = t1.
        t98 = t99->get_first_token( ).
        DATA(t100) = t82.
        DATA t101 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t101.
        t96 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t97 i_token = t98 i_message_26cb = t100 i_fix = t101 ).
        t94->load( ).
        APPEND t96 TO t94->items.
        t94->save( ).
        RETURN.
      ENDIF.
      DATA t102 TYPE REF TO zcl_lnt_current_scope.
      DATA(t103) = t2.
      t102 = t103->scope.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t104.
      DATA(t105) = abap_true.
      IF t105 = abap_true.
        DATA(t106) = t16.
        t104 = t106.
      ELSE.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t107.
        t104 = t107.
      ENDIF.
      DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t109) = t20.
      t108 = t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      DATA(t111) = |Write To|.
      CLEAR t110.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t110->sval = t111.
      DATA t112 TYPE string.
      DATA(t113) = t2.
      t112 = t113->filename.
      DATA t114 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t114.
      t102->add_reference( i_usage = t104 i_referencing = t108 i_type_9913 = t110 i_filename = t112 i_extra = t114 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d980_02fa4094c892.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
