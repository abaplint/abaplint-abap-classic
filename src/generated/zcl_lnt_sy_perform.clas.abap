* TS: src/abap/5_syntax/statements/perform.ts:17:1 Perform
CLASS zcl_lnt_sy_perform DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_parameters IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_actual TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_formal TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_kind TYPE string i_input_967e TYPE REF TO
    zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_perform IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_statement.
    DATA(t6) = CAST zcl_lnt_statement_node( t1 ).
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_perform ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t7.
      DATA t8 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |checkPerform unexpected node type|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcx_lnt_assert_error( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820 ).
    t16 = t17->find_direct_expressions( i_type_9913 = t18 ).
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    LOOP AT t16->items INTO t20.
      t19 ?= t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t22) = CAST zcl_lnt_expression_node( t19 ).
      DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
      t21 = t22->find_direct_expressions( i_type_9913 = t23 ).
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      LOOP AT t21->items INTO t25.
        t24 ?= t25.
        DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
        DATA t27 TYPE REF TO zcl_lnt_sy_perform_parameter.
        DATA(t28) = CAST zcl_lnt_expression_node( t24 ).
        DATA t29 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t30) = CAST zcl_lnt_expression_node( t24 ).
        DATA(t31) = CAST zcl_lnt_syntax_input( t2 ).
        t29 = zcl_lnt_sy_target=>run_syntax( i_node = t30 i_input_967e = t31 ).
        t27 = NEW zcl_lnt_sy_perform_parameter( i_node = t28 i_type_9913 = t29 ).
        APPEND t27 TO t26->items.
      ENDLOOP.
    ENDLOOP.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t35) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d238_a05d3ab5e106 ).
    t34 = t35->find_direct_expressions( i_type_9913 = t36 ).
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t37.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
    LOOP AT t34->items INTO t38.
      t37 ?= t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t40) = CAST zcl_lnt_expression_node( t37 ).
      DATA(t41) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t39 = t40->find_direct_expressions( i_type_9913 = t41 ).
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      DATA t43 TYPE REF TO object.
      CLEAR t43.
      LOOP AT t39->items INTO t43.
        t42 ?= t43.
        DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
        DATA t45 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t45.
        DATA(t46) = CAST zcl_lnt_expression_node( t42 ).
        DATA t47 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = CAST zcl_lnt_expression_node( t42 ).
          t48 = t50.
        ELSE.
          DATA t51 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t51.
          t48 = t51.
        ENDIF.
        DATA(t52) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t53 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t56.
        t47 = zcl_lnt_sy_source=>run_syntax( i_node = t48 i_input_967e = t52 i_target_type = t53 i_write_reference = t54 i_allow_generic_deference = t55 i_read_reference = t56 ).
        t45 = NEW zcl_lnt_sy_perform_parameter( i_node = t46 i_type_9913 = t47 ).
        APPEND t45 TO t44->items.
      ENDLOOP.
    ENDLOOP.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t57 = t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t60) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d239_2b0cd25fcf16 ).
    t59 = t60->find_direct_expressions( i_type_9913 = t61 ).
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t62.
    DATA t63 TYPE REF TO object.
    CLEAR t63.
    LOOP AT t59->items INTO t63.
      t62 ?= t63.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t65) = CAST zcl_lnt_expression_node( t62 ).
      DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
      t64 = t65->find_direct_expressions( i_type_9913 = t66 ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      LOOP AT t64->items INTO t68.
        t67 ?= t68.
        DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
        DATA t70 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t70.
        DATA(t71) = CAST zcl_lnt_expression_node( t67 ).
        DATA t72 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t73.
        DATA(t74) = abap_true.
        IF t74 = abap_true.
          DATA(t75) = CAST zcl_lnt_expression_node( t67 ).
          t73 = t75.
        ELSE.
          DATA t76 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t76.
          t73 = t76.
        ENDIF.
        DATA(t77) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t78 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t80.
        DATA t81 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t81.
        t72 = zcl_lnt_sy_source=>run_syntax( i_node = t73 i_input_967e = t77 i_target_type = t78 i_write_reference = t79 i_allow_generic_deference = t80 i_read_reference = t81 ).
        t70 = NEW zcl_lnt_sy_perform_parameter( i_node = t71 i_type_9913 = t72 ).
        APPEND t70 TO t69->items.
      ENDLOOP.
    ENDLOOP.
    DATA t82 TYPE abap_bool.
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    DATA(t84) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t85) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d83_c58d804fe3d16b ).
    t83 = t84->find_first_expression( i_type_9913 = t85 ).
    t82 = xsdbool( t83 IS BOUND ).
    IF t82 = abap_true.
      RETURN.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_expression_node.
    DATA t87 TYPE REF TO zcl_lnt_expression_node.
    DATA(t88) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t89) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t87 = t88->find_first_expression( i_type_9913 = t89 ).
    t86 = t87.
    DATA t90 TYPE abap_bool.
    DATA(t91) = CAST zcl_lnt_expression_node( t86 ).
    t90 = xsdbool( t91 IS BOUND ).
    IF t90 = abap_true.
      DATA t92 TYPE REF TO zcl_lnt_expression_node.
      DATA(t93) = CAST zcl_lnt_expression_node( t86 ).
      t92 = t93.
      DATA(t94) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t92 i_input_967e = t94 ).
      RETURN.
    ENDIF.
    DATA t95 TYPE REF TO zcl_lnt_expression_node.
    DATA t96 TYPE REF TO zcl_lnt_expression_node.
    DATA(t97) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t98) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82 ).
    t96 = t97->find_first_expression( i_type_9913 = t98 ).
    t95 = t96.
    DATA(t99) = VALUE abap_bool( ).
    DATA t100 TYPE REF TO zcl_lnt_expression_node.
    DATA(t101) = CAST zcl_lnt_expression_node( t95 ).
    t100 = t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    t102 = t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = CAST zcl_lnt_expression_node( t100 ).
    IF t105 IS INITIAL.
      t104 = abap_true.
    ENDIF.
    t99 = t104.
    IF t99 = abap_true.
      RETURN.
    ENDIF.
    DATA t106 TYPE string.
    DATA t107 TYPE string.
    DATA t108 TYPE REF TO zcl_lnt_expression_node.
    DATA(t109) = CAST zcl_lnt_expression_node( t95 ).
    t108 = t109.
    t107 = t108->concat_tokens( ).
    t106 = t107.
    DATA t110 TYPE REF TO zif_lnt_form_definition.
    CLEAR t110.
    DATA t111 TYPE REF TO zif_lnt_form_definition.
    CLEAR t111.
    DATA t112 TYPE REF TO zcl_lnt_current_scope.
    DATA t113 TYPE REF TO zcl_lnt_current_scope.
    DATA(t114) = CAST zcl_lnt_syntax_input( t2 ).
    t113 = t114->scope.
    t112 = t113.
    DATA t115 TYPE string.
    DATA(t116) = t106.
    t115 = t116.
    DATA t117 TYPE REF TO zif_lnt_form_definition.
    CLEAR t117.
    DATA t118 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t120) = CAST zcl_lnt_current_scope( t112 ).
    t119 = t120->current.
    t118 = t119.
    DATA t121 TYPE REF TO zif_lnt_form_definition.
    CLEAR t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = CAST zcl_lnt_spaghetti_scope_node( t118 ).
    IF t123 IS INITIAL.
      t122 = abap_true.
    ENDIF.
    IF t122 = abap_true.
      DATA t124 TYPE REF TO zif_lnt_form_definition.
      CLEAR t124.
      t121 = t124.
    ELSE.
      DATA t125 TYPE REF TO zif_lnt_form_definition.
      DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t127) = CAST zcl_lnt_spaghetti_scope_node( t118 ).
      t126 = t127.
      DATA(t128) = t115.
      t125 = t126->find_form_definition( i_name = t128 ).
      t121 = t125.
    ENDIF.
    t117 = t121.
    t111 = t117.
    t110 = t111.
    DATA(t129) = VALUE abap_bool( ).
    DATA t130 TYPE REF TO zif_lnt_form_definition.
    DATA(t131) = CAST zif_lnt_form_definition( t110 ).
    t130 = t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    t132 = t133.
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = CAST zif_lnt_form_definition( t130 ).
    IF t135 IS INITIAL.
      t134 = abap_true.
    ENDIF.
    t129 = t134.
    IF t129 = abap_true.
      DATA t136 TYPE string.
      DATA t137 TYPE string.
      DATA t138 TYPE string.
      DATA(t139) = |FORM definition "|.
      DATA(t140) = t106.
      DATA(t141) = strlen( t139 ).
      t138 = |{ t139 }{ t140 }|.
      DATA(t142) = |" not found|.
      DATA(t143) = strlen( t138 ).
      t137 = |{ t138 }{ t142 }|.
      t136 = t137.
      DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t145) = CAST zcl_lnt_syntax_input( t2 ).
      t144 = t145->issues.
      DATA t146 TYPE REF TO zcl_lnt_issue.
      DATA(t147) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t148 TYPE REF TO zcl_lnt_abstract_token.
      DATA t149 TYPE REF TO zcl_lnt_expression_node.
      DATA(t150) = CAST zcl_lnt_expression_node( t95 ).
      t149 = t150.
      t148 = t149->get_first_token( ).
      DATA(t151) = t136.
      DATA t152 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t152.
      t146 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t147 i_token = t148 i_message_26cb = t151 i_fix = t152 ).
      APPEND t146 TO t144->items.
      RETURN.
    ENDIF.
    DATA t153 TYPE REF TO zcl_lnt_current_scope.
    DATA(t154) = CAST zcl_lnt_syntax_input( t2 ).
    t153 = t154->scope.
    DATA t155 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t155.
    DATA(t156) = abap_true.
    IF t156 = abap_true.
      DATA t157 TYPE REF TO zcl_lnt_abstract_token.
      DATA t158 TYPE REF TO zcl_lnt_expression_node.
      DATA(t159) = CAST zcl_lnt_expression_node( t95 ).
      t158 = t159.
      t157 = t158->get_first_token( ).
      t155 = t157.
    ELSE.
      DATA t160 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t160.
      t155 = t160.
    ENDIF.
    DATA t161 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t161.
    DATA(t162) = abap_true.
    IF t162 = abap_true.
      DATA t163 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t164 TYPE REF TO zif_lnt_form_definition.
      DATA(t165) = CAST zif_lnt_form_definition( t110 ).
      t164 = t165.
      t163 ?= t164.
      t161 = t163.
    ELSE.
      DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t166.
      t161 = t166.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = |Form|.
    CREATE OBJECT t167.
    t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t167->sval = t168.
    DATA t169 TYPE string.
    DATA(t170) = CAST zcl_lnt_syntax_input( t2 ).
    t169 = t170->filename.
    DATA t171 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t171.
    t153->add_reference( i_usage = t155 i_referencing = t161 i_type_9913 = t167 i_filename = t169 i_extra = t171 ).
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t173) = CAST zcl_lnt_syntax_input( t2 ).
    t172 = t173->deferred.
    DATA t174 TYPE REF TO zcl_lnt_closure_77054774.
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA(t176) = CAST zif_lnt_form_definition( t110 ).
    DATA(t177) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t178) = t106.
    DATA(t179) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    DATA(t182) = CAST zcl_lnt_sy_perform( me ).
    t174 = NEW zcl_lnt_closure_77054774( i_changing = t175 i_found = t176 i_input_967e = t177 i_name = t178 i_node = t179 i_tables_8d5a = t180 i_using = t181 i_outer = t182 ).
    APPEND t174 TO t172->items.
  ENDMETHOD.
  METHOD check_parameters.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_actual ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_formal ).
    DATA(t4) = i_kind.
    DATA(t5) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE i.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t7 = lines( t8->items ).
    DATA t9 TYPE i.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    t9 = lines( t10->items ).
    t6 = xsdbool( t7 <> t9 ).
    IF t6 = abap_true.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA(t18) = |PERFORM, expected |.
      DATA t19 TYPE string.
      DATA t20 TYPE i.
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t20 = lines( t21->items ).
      t19 = |{ t20 }|.
      DATA(t22) = strlen( t18 ).
      t17 = |{ t18 }{ t19 }|.
      DATA(t23) = | |.
      DATA(t24) = strlen( t17 ).
      t16 = |{ t17 }{ t23 }|.
      DATA(t25) = t4.
      DATA(t26) = strlen( t16 ).
      t15 = |{ t16 }{ t25 }|.
      DATA(t27) = | parameters, found |.
      DATA(t28) = strlen( t15 ).
      t14 = |{ t15 }{ t27 }|.
      DATA t29 TYPE string.
      DATA t30 TYPE i.
      DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t30 = lines( t31->items ).
      t29 = |{ t30 }|.
      DATA(t32) = strlen( t14 ).
      t13 = |{ t14 }{ t29 }|.
      DATA(t33) = ||.
      DATA(t34) = strlen( t13 ).
      t12 = |{ t13 }{ t33 }|.
      t11 = t12.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t36) = CAST zcl_lnt_syntax_input( t5 ).
      t35 = t36->issues.
      DATA t37 TYPE REF TO zcl_lnt_issue.
      DATA(t38) = CAST zcl_lnt_syntax_input( t5 ).
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t40) = CAST zcl_lnt_statement_node( t1 ).
      t39 = t40->get_first_token( ).
      DATA(t41) = t11.
      DATA t42 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t42.
      t37 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t38 i_token = t39 i_message_26cb = t41 i_fix = t42 ).
      APPEND t37 TO t35->items.
      DATA(t43) = abap_false.
      result = t43.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_type_utils.
    DATA t45 TYPE REF TO zcl_lnt_type_utils.
    DATA t46 TYPE REF TO zcl_lnt_current_scope.
    DATA(t47) = CAST zcl_lnt_syntax_input( t5 ).
    t46 = t47->scope.
    t45 = NEW zcl_lnt_type_utils( i_scope = t46 ).
    t44 = t45.
    DATA t48 TYPE i.
    DATA(t49) = 0.
    t48 = t49.
    DO.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t48.
      DATA t52 TYPE i.
      DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t52 = lines( t53->items ).
      t50 = xsdbool( t51 < t52 ).
      IF t50 = abap_false.
        EXIT.
      ENDIF.
      DATA t54 TYPE REF TO zcl_lnt_sy_perform_parameter.
      DATA t55 TYPE REF TO zcl_lnt_sy_perform_parameter.
      DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t57) = t48.
      t57 = t57 + 1.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      READ TABLE t56->items INDEX t57 INTO t58.
      t55 ?= t58.
      t54 = t55.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA(t61) = CAST zcl_lnt_sy_perform_parameter( t54 ).
      t60 = t61->node.
      t59 = t60.
      DATA t62 TYPE REF TO zcl_lnt_abstract_type.
      DATA t63 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t64) = CAST zcl_lnt_sy_perform_parameter( t54 ).
      t63 = t64->type_cba0.
      t62 = t63.
      DATA(t65) = VALUE abap_bool( ).
      DATA t66 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t67) = CAST zcl_lnt_abstract_type( t62 ).
      t66 = t67.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t68 = t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = CAST zcl_lnt_abstract_type( t66 ).
      IF t71 IS INITIAL.
        t70 = abap_true.
      ENDIF.
      t65 = t70.
      IF t65 = abap_true.
        DATA t72 TYPE i.
        DATA(t73) = t48.
        DATA(t74) = 1.
        t72 = t73 + t74.
        t48 = t72.
        CONTINUE.
      ENDIF.
      DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA(t78) = t48.
      t78 = t78 + 1.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      READ TABLE t77->items INDEX t78 INTO t79.
      t76 ?= t79.
      t75 = t76.
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t84) = CAST zcl_lnt_typed_identifier( t75 ).
      t83 = t84.
      DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t86) = CAST zcl_lnt_typed_identifier( t83 ).
      t85 = t86->meta.
      t82 = t85.
      DATA(t87) = |form_parameter_structure|.
      t81 = t82->includes( p0 = t87 ).
      t80 = t81.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t80.
      IF t90 = abap_true.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = CAST zcl_lnt_type_utils( t44 ).
        DATA t93 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t93.
        DATA(t94) = abap_true.
        IF t94 = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t96) = CAST zcl_lnt_abstract_type( t62 ).
          t95 = t96.
          t93 = t95.
        ELSE.
          DATA t97 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t97.
          t93 = t97.
        ENDIF.
        DATA t98 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA t100 TYPE REF TO zcl_lnt_abstract_type.
          DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t102) = CAST zcl_lnt_typed_identifier( t75 ).
          t101 = t102.
          DATA t103 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t104) = CAST zcl_lnt_typed_identifier( t101 ).
          t103 = t104->type_cba0.
          t100 = t103.
          t98 = t100.
        ELSE.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t105.
          t98 = t105.
        ENDIF.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA(t108) = CAST zcl_lnt_expression_node( t59 ).
          t106 = t108.
        ELSE.
          DATA t109 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t109.
          t106 = t109.
        ENDIF.
        t91 = t92->is_assignable_structure_typing( i_source_75cf = t93 i_target_5f8a = t98 i_node = t106 ).
        t89 = t91.
      ELSE.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = CAST zcl_lnt_type_utils( t44 ).
        DATA t112 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA t114 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t115) = CAST zcl_lnt_abstract_type( t62 ).
          t114 = t115.
          t112 = t114.
        ELSE.
          DATA t116 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t116.
          t112 = t116.
        ENDIF.
        DATA t117 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA t119 TYPE REF TO zcl_lnt_abstract_type.
          DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t121) = CAST zcl_lnt_typed_identifier( t75 ).
          t120 = t121.
          DATA t122 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t123) = CAST zcl_lnt_typed_identifier( t120 ).
          t122 = t123->type_cba0.
          t119 = t122.
          t117 = t119.
        ELSE.
          DATA t124 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t124.
          t117 = t124.
        ENDIF.
        DATA t125 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t125.
        DATA(t126) = abap_true.
        IF t126 = abap_true.
          DATA(t127) = CAST zcl_lnt_expression_node( t59 ).
          t125 = t127.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t128.
          t125 = t128.
        ENDIF.
        t110 = t111->is_assignable_strict( i_source_75cf = t112 i_target_5f8a = t117 i_node = t125 ).
        t89 = t110.
      ENDIF.
      t88 = t89.
      DATA t129 TYPE abap_bool.
      DATA(t130) = t88.
      DATA(t131) = abap_false.
      t129 = xsdbool( t130 = t131 ).
      IF t129 = abap_true.
        DATA(t132) = VALUE string( ).
        DATA(t133) = VALUE string( ).
        DATA(t134) = VALUE string( ).
        DATA(t135) = |PERFORM parameter type not compatible, |.
        DATA(t136) = VALUE string( ).
        DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t138) = CAST zcl_lnt_typed_identifier( t75 ).
        t137 = t138.
        DATA(t139) = VALUE string( ).
        DATA t140 TYPE string.
        DATA t141 TYPE string.
        DATA t142 TYPE REF TO zcl_lnt_abstract_token.
        DATA t143 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t144) = CAST zcl_lnt_fi_identifier( t137 ).
        t143 = t144->token.
        t142 = t143.
        DATA t145 TYPE string.
        DATA(t146) = CAST zcl_lnt_abstract_token( t142 ).
        t145 = t146->str.
        t141 = t145.
        t140 = t141.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = VALUE string( ).
        DATA(t149) = t140.
        DATA(t150) = 0.
        DATA(t151) = 1.
        DATA(t152) = strlen( t149 ).
        IF t150 < 0.
          t150 = t150 + t152.
          IF t150 < 0.
            t150 = 0.
          ENDIF.
        ENDIF.
        IF t150 > t152 OR t151 <= 0.
          CLEAR t148.
        ELSE.
          IF t151 > t152 - t150.
            t151 = t152 - t150.
          ENDIF.
          t148 = t149+t150(t151).
        ENDIF.
        DATA(t153) = |!|.
        t147 = xsdbool( t148 = t153 ).
        IF t147 = abap_true.
          DATA(t154) = VALUE string( ).
          DATA t155 TYPE string.
          DATA(t156) = t140.
          t155 = t156.
          DATA(t157) = VALUE string( ).
          DATA(t158) = t155.
          DATA(t159) = 1.
          DATA t160 TYPE i.
          DATA(t161) = t155.
          DATA(t162) = strlen( t161 ).
          t160 = t162.
          DATA(t163) = strlen( t158 ).
          IF t159 < 0.
            t159 = t159 + t163.
            IF t159 < 0.
              t159 = 0.
            ENDIF.
          ENDIF.
          IF t159 > t163 OR t160 <= 0.
            CLEAR t157.
          ELSE.
            IF t160 > t163 - t159.
              t160 = t163 - t159.
            ENDIF.
            t157 = t158+t159(t160).
          ENDIF.
          t154 = t157.
          t140 = t154.
        ENDIF.
        DATA(t164) = t140.
        t139 = t164.
        t136 = t139.
        DATA(t165) = strlen( t135 ).
        t134 = |{ t135 }{ t136 }|.
        DATA(t166) = ||.
        DATA(t167) = strlen( t134 ).
        t133 = |{ t134 }{ t166 }|.
        t132 = t133.
        DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t169) = CAST zcl_lnt_syntax_input( t5 ).
        t168 = t169->issues.
        DATA t170 TYPE REF TO zcl_lnt_issue.
        DATA(t171) = CAST zcl_lnt_syntax_input( t5 ).
        DATA t172 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t173) = CAST zcl_lnt_expression_node( t59 ).
        t172 = t173->get_first_token( ).
        DATA(t174) = t132.
        DATA t175 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t175.
        t170 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t171 i_token = t172 i_message_26cb = t174 i_fix = t175 ).
        APPEND t170 TO t168->items.
        DATA(t176) = abap_false.
        result = t176.
        RETURN.
      ENDIF.
      DATA t177 TYPE i.
      DATA(t178) = t48.
      DATA(t179) = 1.
      t177 = t178 + t179.
      t48 = t177.
    ENDDO.
    DATA(t180) = abap_true.
    result = t180.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d919_dbc6715173c8.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
