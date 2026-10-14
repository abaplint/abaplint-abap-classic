* TS: src/abap/5_syntax/statements/move.ts:14:1 Move
CLASS zcl_lnt_sy_move DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_move IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t4 = t5->find_direct_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    READ TABLE t9->items INDEX 1 INTO t10.
    t8 ?= t10.
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = CAST zcl_lnt_expression_node( t7 ).
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zcl_lnt_expression_node( t13 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = CAST zcl_lnt_expression_node( t13 ).
      DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t19 = t20->find_direct_expression( i_type_9913 = t21 ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t22 TYPE REF TO zcl_lnt_abstract_type.
    DATA t23 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t26) = CAST zcl_lnt_expression_node( t11 ).
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = CAST zcl_lnt_expression_node( t25 ).
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    t24 = t29.
    IF t24 = abap_true.
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t31.
      DATA t32 TYPE abap_bool.
      DATA(t33) = CAST zcl_lnt_expression_node( t7 ).
      t32 = xsdbool( t33 IS BOUND ).
      IF t32 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t35) = CAST zcl_lnt_expression_node( t7 ).
        DATA(t36) = CAST zcl_lnt_syntax_input( t2 ).
        t34 = zcl_lnt_sy_target=>run_syntax( i_node = t35 i_input_967e = t36 ).
        t31 = t34.
      ELSE.
        DATA t37 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t37.
        t31 = t37.
      ENDIF.
      t22 = t31.
      DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      LOOP AT t38->items INTO t40.
        t39 ?= t40.
        DATA t41 TYPE abap_bool.
        DATA(t42) = CAST zcl_lnt_expression_node( t39 ).
        DATA(t43) = CAST zcl_lnt_expression_node( t7 ).
        t41 = xsdbool( t42 = t43 ).
        IF t41 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t45) = CAST zcl_lnt_expression_node( t39 ).
        DATA(t46) = CAST zcl_lnt_syntax_input( t2 ).
        t44 = zcl_lnt_sy_target=>run_syntax( i_node = t45 i_input_967e = t46 ).
      ENDLOOP.
    ENDIF.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    DATA(t50) = CAST zcl_lnt_expression_node( t11 ).
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    t51 = t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = CAST zcl_lnt_expression_node( t49 ).
    IF t54 IS INITIAL.
      t53 = abap_true.
    ENDIF.
    t48 = t53.
    t47 = t48.
    IF t48 = abap_true.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = CAST zcl_lnt_expression_node( t7 ).
      t56 = t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      t58 = t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = CAST zcl_lnt_expression_node( t56 ).
      IF t62 IS INITIAL.
        t61 = abap_true.
      ENDIF.
      t60 = xsdbool( t61 = abap_false ).
      t55 = t60.
      t47 = t55.
    ENDIF.
    IF t47 = abap_true.
      DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t63.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_current_scope.
      DATA t66 TYPE REF TO zcl_lnt_current_scope.
      DATA(t67) = CAST zcl_lnt_syntax_input( t2 ).
      t66 = t67->scope.
      t65 = t66.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      DATA(t70) = abap_true.
      IF t70 = abap_true.
        DATA t71 TYPE string.
        DATA(t72) = CAST zcl_lnt_expression_node( t7 ).
        t71 = t72->concat_tokens(  ).
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = t71.
        t69 = t73.
      ELSE.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t69 = t74.
      ENDIF.
      t68 = t69.
      DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t78) = CAST zlnt_runtime_opti_4ba3bdccd169( t68 ).
      t77 = t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t79 = t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = CAST zlnt_runtime_opti_4ba3bdccd169( t77 ).
      IF t82 IS INITIAL.
        t81 = abap_true.
      ELSEIF t82->has = abap_false.
        t81 = abap_true.
      ENDIF.
      t76 = t81.
      IF t76 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t83.
        t75 = t83.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t84.
        DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t86.
        DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t89) = CAST zcl_lnt_current_scope( t65 ).
        t88 = t89->current.
        t87 = t88.
        DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t90.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = CAST zcl_lnt_spaghetti_scope_node( t87 ).
        IF t92 IS INITIAL.
          t91 = abap_true.
        ENDIF.
        IF t91 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t93.
          t90 = t93.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t96) = CAST zcl_lnt_spaghetti_scope_node( t87 ).
          t95 = t96.
          DATA t97 TYPE string.
          DATA(t98) = CAST zlnt_runtime_opti_4ba3bdccd169( t68 ).
          t97 = t98->value.
          t94 = t95->find_variable( i_name = t97 ).
          t90 = t94.
        ENDIF.
        t86 = t90.
        t85 = t86.
        DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t99.
        DATA t100 TYPE abap_bool.
        DATA(t101) = CAST zcl_lnt_typed_identifier( t85 ).
        t100 = xsdbool( t101 IS BOUND ).
        IF t100 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t105) = CAST zcl_lnt_typed_identifier( t85 ).
            t104 = t105.
            t102 = t104.
          ELSE.
            DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t106.
            t102 = t106.
          ENDIF.
          t99 = t102.
        ELSE.
          DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t107.
          DATA(t108) = CAST zcl_lnt_current_scope( t65 ).
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t110) = abap_true.
          IF t110 = abap_true.
            DATA t111 TYPE string.
            DATA(t112) = CAST zlnt_runtime_opti_4ba3bdccd169( t68 ).
            t111 = t112->value.
            DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t113->has = abap_true.
            t113->value = t111.
            t109 = t113.
          ELSE.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            t109 = t114.
          ENDIF.
          t107 = t108->find_type_pool_constant( i_name = t109 ).
          t99 = t107.
        ENDIF.
        t84 = t99.
        t75 = t84.
      ENDIF.
      t64 = t75.
      t63 = t64.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE abap_bool.
      DATA(t117) = CAST zcl_lnt_typed_identifier( t63 ).
      t116 = xsdbool( t117 IS BOUND ).
      t115 = t116.
      IF t116 = abap_true.
        DATA t118 TYPE abap_bool.
        DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t122) = CAST zcl_lnt_typed_identifier( t63 ).
        t121 = t122.
        t120 = t121.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t124) = CAST zcl_lnt_typed_identifier( t120 ).
        t123 = t124->meta.
        t119 = t123.
        DATA(t125) = |read_only|.
        t118 = t119->includes( p0 = t125 ).
        t115 = t118.
      ENDIF.
      IF t115 = abap_true.
        DATA t126 TYPE string.
        DATA t127 TYPE string.
        DATA t128 TYPE string.
        DATA(t129) = |"|.
        DATA t130 TYPE string.
        DATA(t131) = CAST zcl_lnt_expression_node( t7 ).
        t130 = t131->concat_tokens(  ).
        DATA(t132) = strlen( t129 ).
        t128 = |{ t129 }{ t130 }|.
        DATA(t133) = |" cannot be modified, it is readonly|.
        DATA(t134) = strlen( t128 ).
        t127 = |{ t128 }{ t133 }|.
        t126 = t127.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t136) = CAST zcl_lnt_syntax_input( t2 ).
        t135 = t136->issues.
        DATA t137 TYPE REF TO zcl_lnt_issue.
        DATA(t138) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t140) = CAST zcl_lnt_expression_node( t7 ).
        t139 = t140->get_first_token(  ).
        DATA(t141) = t126.
        DATA t142 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t142.
        t137 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t138 i_token = t139 i_message_26cb = t141 i_fix = t142 ).
        APPEND t137 TO t135->items.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t143 TYPE REF TO zcl_lnt_expression_node.
    DATA t144 TYPE REF TO zcl_lnt_expression_node.
    DATA(t145) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t146) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t144 = t145->find_direct_expression( i_type_9913 = t146 ).
    t143 = t144.
    DATA t147 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t147.
    DATA t148 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t148.
    DATA t149 TYPE abap_bool.
    DATA(t150) = CAST zcl_lnt_expression_node( t143 ).
    t149 = xsdbool( t150 IS BOUND ).
    IF t149 = abap_true.
      DATA t151 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t152.
      DATA(t153) = abap_true.
      IF t153 = abap_true.
        DATA t154 TYPE REF TO zcl_lnt_expression_node.
        DATA(t155) = CAST zcl_lnt_expression_node( t143 ).
        t154 = t155.
        t152 = t154.
      ELSE.
        DATA t156 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t156.
        t152 = t156.
      ENDIF.
      DATA(t157) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t158) = CAST zcl_lnt_abstract_type( t22 ).
      DATA t159 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t159.
      DATA t160 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t160.
      DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t161.
      t151 = zcl_lnt_sy_source=>run_syntax( i_node = t152 i_input_967e = t157 i_target_type = t158 i_write_reference = t159 i_allow_generic_deference = t160 i_read_reference = t161 ).
      t148 = t151.
    ELSE.
      DATA t162 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t162.
      t148 = t162.
    ENDIF.
    t147 = t148.
    DATA(t163) = VALUE abap_bool( ).
    DATA t164 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t165) = CAST zcl_lnt_abstract_type( t147 ).
    t164 = t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    t166 = t167.
    DATA(t168) = VALUE abap_bool( ).
    DATA(t169) = CAST zcl_lnt_abstract_type( t164 ).
    IF t169 IS INITIAL.
      t168 = abap_true.
    ENDIF.
    t163 = t168.
    IF t163 = abap_true.
      DATA t170 TYPE string.
      DATA(t171) = |No source type determined|.
      t170 = t171.
      DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t173) = CAST zcl_lnt_syntax_input( t2 ).
      t172 = t173->issues.
      DATA t174 TYPE REF TO zcl_lnt_issue.
      DATA(t175) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t176 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t177) = CAST zcl_lnt_statement_node( t1 ).
      t176 = t177->get_first_token(  ).
      DATA(t178) = t170.
      DATA t179 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t179.
      t174 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t175 i_token = t176 i_message_26cb = t178 i_fix = t179 ).
      APPEND t174 TO t172->items.
      RETURN.
    ENDIF.
    DATA t180 TYPE abap_bool.
    DATA t181 TYPE REF TO zcl_lnt_expression_node.
    DATA(t182) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t183) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf ).
    t181 = t182->find_direct_expression( i_type_9913 = t183 ).
    t180 = xsdbool( t181 IS BOUND ).
    IF t180 = abap_true.
      DATA t184 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t184.
      DATA(t185) = CAST zcl_lnt_statement_node( t1 ).
      DATA t186 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t186.
      DATA(t187) = abap_true.
      IF t187 = abap_true.
        DATA t188 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t189) = CAST zcl_lnt_abstract_type( t147 ).
        t188 = t189.
        t186 = t188.
      ELSE.
        DATA t190 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t190.
        t186 = t190.
      ENDIF.
      DATA(t191) = CAST zcl_lnt_syntax_input( t2 ).
      t184 = zcl_lnt_sy_dereference=>run_syntax( i_node = t185 i_type_9913 = t186 i_input_967e = t191 ).
      t147 = t184.
    ENDIF.
    DATA t192 TYPE abap_bool.
    DATA(t193) = CAST zcl_lnt_expression_node( t11 ).
    t192 = xsdbool( t193 IS BOUND ).
    IF t192 = abap_true.
      DATA t194 TYPE abap_bool.
      DATA t195 TYPE abap_bool.
      DATA(t196) = CAST zcl_lnt_abstract_type( t147 ).
      t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_packed_type ).
      t194 = t195.
      IF t195 = abap_true.
        DATA(t197) = VALUE abap_bool( ).
        DATA t198 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t198.
        DATA t199 TYPE REF TO zcl_lnt_expression_node.
        DATA(t200) = CAST zcl_lnt_expression_node( t143 ).
        t199 = t200.
        DATA t201 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t201.
        DATA(t202) = VALUE abap_bool( ).
        DATA(t203) = CAST zcl_lnt_expression_node( t199 ).
        IF t203 IS INITIAL.
          t202 = abap_true.
        ENDIF.
        IF t202 = abap_true.
          DATA t204 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t204.
          t201 = t204.
        ELSE.
          DATA t205 TYPE REF TO zcl_lnt_expression_node.
          DATA t206 TYPE REF TO zcl_lnt_expression_node.
          DATA(t207) = CAST zcl_lnt_expression_node( t199 ).
          t206 = t207.
          DATA(t208) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3 ).
          t205 = t206->find_direct_expression( i_type_9913 = t208 ).
          t201 = t205.
        ENDIF.
        t198 = t201.
        t197 = xsdbool( t198 IS BOUND ).
        t194 = t197.
      ENDIF.
      IF t194 = abap_true.
        DATA t209 TYPE REF TO zcl_lnt_packed_type.
        DATA(t210) = CONV int8( 8 ).
        DATA(t211) = CONV int8( 0 ).
        DATA t212 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t212.
        t209 = NEW zcl_lnt_packed_type( i_length = t210 i_decimals_2eed = t211 i_extra = t212 ).
        t147 = t209.
      ENDIF.
      DATA t213 TYPE REF TO zcl_lnt_expression_node.
      DATA(t214) = CAST zcl_lnt_expression_node( t11 ).
      t213 = t214.
      DATA(t215) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t216) = CAST zcl_lnt_abstract_type( t147 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t213 i_input_967e = t215 i_type_9913 = t216 ).
      DATA(t217) = CAST zcl_lnt_abstract_type( t147 ).
      t22 = t217.
    ENDIF.
    DATA t218 TYPE abap_bool.
    DATA t219 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t220) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t221) = |?=|.
    t219 = t220->find_direct_token_by_text( i_text = t221 ).
    t218 = xsdbool( t219 IS BOUND ).
    IF t218 = abap_true.
      DATA t222 TYPE abap_bool.
      DATA t223 TYPE abap_bool.
      DATA t224 TYPE REF TO zcl_lnt_type_utils.
      DATA t225 TYPE REF TO zcl_lnt_type_utils.
      DATA t226 TYPE REF TO zcl_lnt_current_scope.
      DATA(t227) = CAST zcl_lnt_syntax_input( t2 ).
      t226 = t227->scope.
      t225 = NEW zcl_lnt_type_utils( i_scope = t226 ).
      t224 = t225.
      DATA t228 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t229) = CAST zcl_lnt_abstract_type( t147 ).
      t228 = t229.
      DATA t230 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t231) = CAST zcl_lnt_abstract_type( t22 ).
      t230 = t231.
      DATA(t232) = abap_true.
      t223 = t232.
      DATA(t233) = abap_false.
      t222 = xsdbool( t223 = t233 ).
      IF t222 = abap_true.
        DATA t234 TYPE string.
        DATA(t235) = |Incompatible types|.
        t234 = t235.
        DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t237) = CAST zcl_lnt_syntax_input( t2 ).
        t236 = t237->issues.
        DATA t238 TYPE REF TO zcl_lnt_issue.
        DATA(t239) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t240 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t241) = CAST zcl_lnt_statement_node( t1 ).
        t240 = t241->get_first_token(  ).
        DATA(t242) = t234.
        DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t243.
        t238 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t239 i_token = t240 i_message_26cb = t242 i_fix = t243 ).
        APPEND t238 TO t236->items.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t244) = VALUE abap_bool( ).
      DATA(t245) = VALUE abap_bool( ).
      DATA t246 TYPE REF TO zcl_lnt_type_utils.
      DATA t247 TYPE REF TO zcl_lnt_type_utils.
      DATA t248 TYPE REF TO zcl_lnt_current_scope.
      DATA(t249) = CAST zcl_lnt_syntax_input( t2 ).
      t248 = t249->scope.
      t247 = NEW zcl_lnt_type_utils( i_scope = t248 ).
      t246 = t247.
      DATA t250 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t251) = CAST zcl_lnt_abstract_type( t147 ).
      t250 = t251.
      DATA t252 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t253) = CAST zcl_lnt_abstract_type( t22 ).
      t252 = t253.
      DATA t254 TYPE REF TO zcl_lnt_expression_node.
      DATA(t255) = CAST zcl_lnt_expression_node( t143 ).
      t254 = t255.
      DATA(t256) = VALUE abap_bool( ).
      DATA(t257) = VALUE abap_bool( ).
      DATA(t258) = VALUE abap_bool( ).
      DATA t259 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t259.
      DATA t260 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t260.
      DATA t261 TYPE REF TO zcl_lnt_expression_node.
      DATA(t262) = CAST zcl_lnt_expression_node( t254 ).
      t261 = t262.
      DATA t263 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t263.
      DATA(t264) = VALUE abap_bool( ).
      DATA(t265) = CAST zcl_lnt_expression_node( t261 ).
      IF t265 IS INITIAL.
        t264 = abap_true.
      ENDIF.
      IF t264 = abap_true.
        DATA t266 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t266.
        t263 = t266.
      ELSE.
        DATA t267 TYPE REF TO zcl_lnt_expression_node.
        DATA t268 TYPE REF TO zcl_lnt_expression_node.
        DATA(t269) = CAST zcl_lnt_expression_node( t261 ).
        t268 = t269.
        DATA(t270) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3 ).
        t267 = t268->find_first_expression( i_type_9913 = t270 ).
        t263 = t267.
      ENDIF.
      t260 = t263.
      t259 = t260.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      t271 = t272.
      DATA(t273) = VALUE abap_bool( ).
      DATA(t274) = VALUE abap_bool( ).
      DATA(t275) = CAST zcl_lnt_expression_node( t259 ).
      IF t275 IS INITIAL.
        t274 = abap_true.
      ENDIF.
      t273 = xsdbool( t274 = abap_false ).
      t258 = t273.
      t257 = t258.
      DATA(t276) = VALUE abap_bool( ).
      DATA(t277) = VALUE abap_bool( ).
      DATA t278 TYPE abap_bool.
      DATA(t279) = t257.
      t278 = t279.
      IF t279 = abap_true.
        DATA t280 TYPE abap_bool.
        DATA(t281) = CAST zcl_lnt_abstract_type( t250 ).
        t280 = xsdbool( t281 IS BOUND AND t281 IS INSTANCE OF zcl_lnt_hex_type ).
        t278 = t280.
      ENDIF.
      t277 = t278.
      IF t278 = abap_true.
        DATA t282 TYPE abap_bool.
        DATA(t283) = CAST zcl_lnt_abstract_type( t252 ).
        t282 = xsdbool( t283 IS BOUND AND t283 IS INSTANCE OF zcl_lnt_integer_type ).
        t277 = t282.
      ENDIF.
      IF t277 = abap_true.
        DATA(t284) = abap_false.
        t276 = t284.
      ELSE.
        DATA t285 TYPE abap_bool.
        DATA(t286) = CAST zcl_lnt_type_utils( t246 ).
        DATA(t287) = CAST zcl_lnt_abstract_type( t250 ).
        DATA(t288) = CAST zcl_lnt_abstract_type( t252 ).
        t285 = t286->is_assignable( i_source_75cf = t287 i_target_5f8a = t288 ).
        t276 = t285.
      ENDIF.
      t256 = t276.
      t245 = t256.
      DATA(t289) = abap_false.
      t244 = xsdbool( t245 = t289 ).
      IF t244 = abap_true.
        DATA t290 TYPE string.
        DATA(t291) = |Incompatible types|.
        t290 = t291.
        DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t293) = CAST zcl_lnt_syntax_input( t2 ).
        t292 = t293->issues.
        DATA t294 TYPE REF TO zcl_lnt_issue.
        DATA(t295) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t296 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t297) = CAST zcl_lnt_statement_node( t1 ).
        t296 = t297->get_first_token(  ).
        DATA(t298) = t290.
        DATA t299 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t299.
        t294 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t295 i_token = t296 i_message_26cb = t298 i_fix = t299 ).
        APPEND t294 TO t292->items.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d912_191cc66f9dba.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
