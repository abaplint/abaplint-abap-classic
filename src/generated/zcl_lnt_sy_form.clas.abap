* TS: src/abap/5_syntax/statements/form.ts:8:1 Form
CLASS zcl_lnt_sy_form DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_form IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t9 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = CAST zcl_lnt_expression_node( t9 ).
      t16 = t17.
      t15 = t16->concat_tokens(  ).
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t15.
      t11 = t18.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = CAST zcl_lnt_expression_node( t3 ).
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = CAST zcl_lnt_expression_node( t21 ).
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    t19 = t20.
    IF t20 = abap_false.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t29) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t30 = t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = CAST zlnt_runtime_opti_4ba3bdccd169( t28 ).
      IF t33 IS INITIAL.
        t32 = abap_true.
      ELSEIF t33->has = abap_false.
        t32 = abap_true.
      ENDIF.
      t27 = t32.
      t19 = t27.
    ENDIF.
    IF t19 = abap_true.
      DATA t34 TYPE string.
      DATA(t35) = |Form, could not find name|.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = CAST zcl_lnt_syntax_input( t2 ).
      t36 = t37->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA(t39) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = CAST zcl_lnt_statement_node( t1 ).
      t40 = t41->get_first_token(  ).
      DATA(t42) = t34.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t43.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t39 i_token = t40 i_message_26cb = t42 i_fix = t43 ).
      APPEND t38 TO t36->items.
      RETURN.
    ENDIF.
    DATA t44 TYPE abap_bool.
    DATA t45 TYPE i.
    DATA t46 TYPE string.
    DATA(t47) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t46 = t47->value.
    DATA(t48) = strlen( t46 ).
    t45 = t48.
    DATA(t49) = 30.
    t44 = xsdbool( t45 > t49 ).
    IF t44 = abap_true.
      DATA t50 TYPE string.
      DATA(t51) = |FORM name longer than 30 characters|.
      t50 = t51.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t53) = CAST zcl_lnt_syntax_input( t2 ).
      t52 = t53->issues.
      DATA t54 TYPE REF TO zcl_lnt_issue.
      DATA(t55) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t58) = CAST zcl_lnt_expression_node( t3 ).
      t57 = t58.
      t56 = t57->get_first_token(  ).
      DATA(t59) = t50.
      DATA t60 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t60.
      t54 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t55 i_token = t56 i_message_26cb = t59 i_fix = t60 ).
      APPEND t54 TO t52->items.
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_current_scope.
    DATA t62 TYPE REF TO zcl_lnt_current_scope.
    DATA(t63) = CAST zcl_lnt_syntax_input( t2 ).
    t62 = t63->scope.
    t61 = t62.
    DATA t64 TYPE string.
    DATA t65 TYPE string.
    DATA(t66) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t65 = t66->value.
    t64 = t65.
    DATA t67 TYPE REF TO zcl_lnt_position.
    DATA t68 TYPE REF TO zcl_lnt_position.
    DATA t69 TYPE REF TO zcl_lnt_abstract_token.
    DATA t70 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t71) = CAST zcl_lnt_statement_node( t1 ).
    t70 = t71->get_first_token(  ).
    t69 = t70.
    DATA t72 TYPE REF TO zcl_lnt_position.
    DATA(t73) = CAST zcl_lnt_abstract_token( t69 ).
    t72 = t73->start.
    t68 = t72.
    t67 = t68.
    DATA t74 TYPE string.
    DATA t75 TYPE string.
    DATA(t76) = CAST zcl_lnt_syntax_input( t2 ).
    t75 = t76->filename.
    t74 = t75.
    DATA t77 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t78 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t79) = |form|.
    DATA(t80) = t64.
    DATA(t81) = t74.
    DATA(t82) = CAST zcl_lnt_position( t67 ).
    DATA t83 TYPE REF TO zcl_lnt_position.
    CLEAR t83.
    t78 = NEW zcl_lnt_iscope_identifier( i_stype = t79 i_sname = t80 i_filename = t81 i_start = t82 i_end = t83 ).
    t77 = t78.
    DATA(t84) = VALUE abap_bool( ).
    DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t87) = CAST zcl_lnt_current_scope( t61 ).
    t86 = t87->current.
    t85 = t86.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    t88 = t89.
    DATA(t90) = VALUE abap_bool( ).
    DATA(t91) = CAST zcl_lnt_spaghetti_scope_node( t85 ).
    IF t91 IS INITIAL.
      t90 = abap_true.
    ENDIF.
    t84 = t90.
    IF t84 = abap_true.
      DATA(t92) = CAST zcl_lnt_current_scope( t61 ).
      DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t93.
      DATA(t94) = abap_true.
      IF t94 = abap_true.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t96) = CAST zcl_lnt_iscope_identifier( t77 ).
        DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t97.
        t95 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t96 i_parent = t97 ).
        t93 = t95.
      ELSE.
        DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t98.
        t93 = t98.
      ENDIF.
      t92->current = t93.
    ELSE.
      DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t102) = CAST zcl_lnt_current_scope( t61 ).
      t101 = t102->current.
      t100 = t101.
      t99 = t100.
      DATA(t103) = CAST zcl_lnt_current_scope( t61 ).
      DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t104.
      DATA(t105) = abap_true.
      IF t105 = abap_true.
        DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t106.
        DATA(t107) = CAST zcl_lnt_iscope_identifier( t77 ).
        DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t108.
        DATA(t109) = abap_true.
        IF t109 = abap_true.
          DATA(t110) = CAST zcl_lnt_spaghetti_scope_node( t99 ).
          t108 = t110.
        ELSE.
          DATA t111 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t111.
          t108 = t111.
        ENDIF.
        t106 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t107 i_parent = t108 ).
        t104 = t106.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t112.
        t104 = t112.
      ENDIF.
      t103->current = t104.
      DATA(t113) = CAST zcl_lnt_spaghetti_scope_node( t99 ).
      DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t116) = CAST zcl_lnt_current_scope( t61 ).
      t115 = t116->current.
      t114 = t115.
      t113->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t114 ).
    ENDIF.
    DATA t117 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA t118 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t119) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t120) = CAST zcl_lnt_syntax_input( t2 ).
    t118 = NEW zcl_lnt_ty_form_definition( i_node = t119 i_input_967e = t120 ).
    t117 = t118.
    DATA t121 TYPE REF TO zcl_lnt_current_scope.
    DATA(t122) = CAST zcl_lnt_syntax_input( t2 ).
    t121 = t122->scope.
    DATA(t123) = CAST zcl_lnt_ty_form_definition( t117 ).
    t121->update_form_definition( i_f = t123 ).
    DATA t124 TYPE REF TO zcl_lnt_current_scope.
    DATA(t125) = CAST zcl_lnt_syntax_input( t2 ).
    t124 = t125->scope.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t127 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t128) = CAST zcl_lnt_ty_form_definition( t117 ).
    t127 = t128.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t130) = CAST zcl_lnt_ty_form_definition( t127 ).
    t129 = t130->using_parameters.
    t126 = t129.
    t124->add_list( i_identifiers = t126 ).
    DATA t131 TYPE REF TO zcl_lnt_current_scope.
    DATA(t132) = CAST zcl_lnt_syntax_input( t2 ).
    t131 = t132->scope.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t134 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t135) = CAST zcl_lnt_ty_form_definition( t117 ).
    t134 = t135.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t137) = CAST zcl_lnt_ty_form_definition( t134 ).
    t136 = t137->changing_parameters.
    t133 = t136.
    t131->add_list( i_identifiers = t133 ).
    DATA t138 TYPE REF TO zcl_lnt_current_scope.
    DATA(t139) = CAST zcl_lnt_syntax_input( t2 ).
    t138 = t139->scope.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t141 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t142) = CAST zcl_lnt_ty_form_definition( t117 ).
    t141 = t142.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t144) = CAST zcl_lnt_ty_form_definition( t141 ).
    t143 = t144->table_parameters.
    t140 = t143.
    t138->add_list( i_identifiers = t140 ).
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d880_8e73a02a435c.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
