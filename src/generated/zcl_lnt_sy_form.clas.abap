* TS: src/abap/5_syntax/statements/form.ts:8:1 Form
CLASS zcl_lnt_sy_form DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_form IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t3.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
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
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->concat_tokens( ).
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
    DATA(t22) = t3.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    t19 = t20.
    IF t20 = abap_false.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t29) = t7.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t30 = t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t28.
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
      DATA(t37) = t2.
      t36 = t37->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA(t39) = t2.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = t1.
      t40 = t41->get_first_token( ).
      DATA(t42) = t34.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t43.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t39 i_token = t40 i_message_26cb = t42 i_fix = t43 ).
      t36->load( ).
      APPEND t38 TO t36->items.
      t36->save( ).
      RETURN.
    ENDIF.
    DATA t44 TYPE abap_bool.
    DATA t45 TYPE i.
    DATA t46 TYPE string.
    DATA(t47) = t7.
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
      DATA(t53) = t2.
      t52 = t53->issues.
      DATA t54 TYPE REF TO zcl_lnt_issue.
      DATA(t55) = t2.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t58) = t3.
      t57 = t58.
      t56 = t57->get_first_token( ).
      DATA(t59) = t50.
      DATA t60 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t60.
      t54 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t55 i_token = t56 i_message_26cb = t59 i_fix = t60 ).
      t52->load( ).
      APPEND t54 TO t52->items.
      t52->save( ).
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_current_scope.
    DATA t62 TYPE REF TO zcl_lnt_current_scope.
    DATA(t63) = t2.
    t62 = t63->scope.
    t61 = t62.
    DATA t64 TYPE string.
    DATA t65 TYPE string.
    DATA(t66) = t7.
    t65 = t66->value.
    t64 = t65.
    DATA t67 TYPE REF TO zcl_lnt_position.
    DATA t68 TYPE REF TO zcl_lnt_position.
    DATA t69 TYPE REF TO zcl_lnt_abstract_token.
    DATA t70 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t71) = t1.
    t70 = t71->get_first_token( ).
    t69 = t70.
    DATA t72 TYPE REF TO zcl_lnt_position.
    DATA(t73) = t69.
    t72 = t73->start.
    t68 = t72.
    t67 = t68.
    DATA t74 TYPE string.
    DATA t75 TYPE string.
    DATA(t76) = t2.
    t75 = t76->filename.
    t74 = t75.
    DATA t77 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t77.
    DATA t78 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t79 TYPE string.
    DATA(t80) = |form|.
    t79 = t80.
    DATA t81 TYPE string.
    DATA(t82) = t64.
    t81 = t82.
    DATA t83 TYPE REF TO zcl_lnt_position.
    DATA(t84) = t67.
    t83 = t84.
    DATA t85 TYPE string.
    DATA(t86) = t74.
    t85 = t86.
    DATA t87 TYPE REF TO zcl_lnt_position.
    DATA t88 TYPE REF TO zcl_lnt_position.
    CLEAR t88.
    t87 = t88.
    t78 = NEW zcl_lnt_iscope_identifier( i_stype = t79 i_sname = t81 i_filename = t85 i_start = t83 i_end = t87 ).
    CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
    t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t89 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t90 ).
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t91 ).
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t92 ).
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t93 ).
    ENDIF.
    CREATE OBJECT t78->zlnt_json_ownkeys_70e5fd461788.
    t78->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t94) = |stype|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
    ENDIF.
    DATA(t96) = |sname|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
    ENDIF.
    DATA(t98) = |start|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
    ENDIF.
    DATA(t100) = |filename|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    DATA(t102) = |end|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
    ENDIF.
    t77 = t78.
    DATA(t104) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t107) = t61.
    t106 = t107->current.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    t108 = t109.
    DATA(t110) = VALUE abap_bool( ).
    DATA(t111) = t105.
    IF t111 IS INITIAL.
      t110 = abap_true.
    ENDIF.
    t104 = t110.
    IF t104 = abap_true.
      DATA(t112) = t61.
      DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t116) = t77.
        DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t117.
        t115 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t116 i_parent = t117 ).
        t113 = t115.
      ELSE.
        DATA t118 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t118.
        t113 = t118.
      ENDIF.
      t112->current = t113.
      DELETE t112->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t122) = t61.
      t121 = t122->current.
      t120 = t121.
      t119 = t120.
      DATA(t123) = t61.
      DATA t124 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t124.
      DATA(t125) = abap_true.
      IF t125 = abap_true.
        DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t126.
        DATA(t127) = t77.
        DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = t119.
          t128 = t130.
        ELSE.
          DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t131.
          t128 = t131.
        ENDIF.
        t126 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t127 i_parent = t128 ).
        t124 = t126.
      ELSE.
        DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t132.
        t124 = t132.
      ENDIF.
      t123->current = t124.
      DELETE t123->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t133) = t119.
      DATA t134 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t135 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t136) = t61.
      t135 = t136->current.
      t134 = t135.
      t133->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t134 ).
    ENDIF.
    DATA t137 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA t138 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t139) = t1.
    DATA(t140) = t2.
    t138 = NEW zcl_lnt_ty_form_definition( i_node = t139 i_input_967e = t140 ).
    t137 = t138.
    DATA t141 TYPE REF TO zcl_lnt_current_scope.
    DATA(t142) = t2.
    t141 = t142->scope.
    DATA(t143) = t137.
    t141->update_form_definition( i_f = t143 ).
    DATA t144 TYPE REF TO zcl_lnt_current_scope.
    DATA(t145) = t2.
    t144 = t145->scope.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t147 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t148) = t137.
    t147 = t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t150) = t147.
    t149 = t150->using_parameters.
    t146 = t149.
    t144->add_list( i_identifiers = t146 ).
    DATA t151 TYPE REF TO zcl_lnt_current_scope.
    DATA(t152) = t2.
    t151 = t152->scope.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t154 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t155) = t137.
    t154 = t155.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t157) = t154.
    t156 = t157->changing_parameters.
    t153 = t156.
    t151->add_list( i_identifiers = t153 ).
    DATA t158 TYPE REF TO zcl_lnt_current_scope.
    DATA(t159) = t2.
    t158 = t159->scope.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t161 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA(t162) = t137.
    t161 = t162.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t164) = t161.
    t163 = t164->table_parameters.
    t160 = t163.
    t158->add_list( i_identifiers = t160 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d902_e823d7f8c705.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
