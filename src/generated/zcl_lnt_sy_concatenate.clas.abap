* TS: src/abap/5_syntax/statements/concatenate.ts:11:1 Concatenate
CLASS zcl_lnt_sy_concatenate DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_concatenate IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = |BYTE|.
    t6 = t7->find_direct_token_by_text( i_text = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_abstract_token( t5 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t11 = xsdbool( t12 = abap_false ).
    t4 = t11.
    t3 = t4.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t19) = |LINES|.
    t17 = t18->find_direct_token_by_text( i_text = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zcl_lnt_abstract_token( t16 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t22 = xsdbool( t23 = abap_false ).
    t15 = t22.
    t14 = t15.
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d99_35801e5718dec9 ).
    t27 = t28->find_first_expression( i_type_9913 = t29 ).
    t26 = t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zcl_lnt_expression_node( t26 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t32 = xsdbool( t33 = abap_false ).
    t25 = t32.
    IF t25 = abap_true.
      DATA t35 TYPE string.
      DATA(t36) = |CONCATENATE with table expression not possible|.
      t35 = t36.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t38) = CAST zcl_lnt_syntax_input( t2 ).
      t37 = t38->issues.
      DATA t39 TYPE REF TO zcl_lnt_issue.
      DATA(t40) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = CAST zcl_lnt_statement_node( t1 ).
      t41 = t42->get_first_token( ).
      DATA(t43) = t35.
      DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t44.
      t39 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t40 i_token = t41 i_message_26cb = t43 i_fix = t44 ).
      APPEND t39 TO t37->items.
      RETURN.
    ENDIF.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA(t47) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t48) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t46 = t47->find_first_expression( i_type_9913 = t48 ).
    t45 = t46.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_expression_node.
    DATA(t52) = CAST zcl_lnt_expression_node( t45 ).
    t51 = t52.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = CAST zcl_lnt_expression_node( t51 ).
    IF t55 IS INITIAL.
      t54 = abap_true.
    ENDIF.
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      t53 = t56.
    ELSE.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      DATA(t59) = CAST zcl_lnt_expression_node( t51 ).
      t58 = t59.
      DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t57 = t58->find_direct_expression( i_type_9913 = t60 ).
      t53 = t57.
    ENDIF.
    t50 = t53.
    t49 = t50.
    DATA t61 TYPE abap_bool.
    DATA(t62) = CAST zcl_lnt_expression_node( t49 ).
    t61 = xsdbool( t62 IS BOUND ).
    IF t61 = abap_true.
      DATA(t63) = t3.
      IF t63 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA(t65) = CAST zcl_lnt_expression_node( t49 ).
        t64 = t65.
        DATA(t66) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t67 TYPE REF TO zcl_lnt_x_string_type.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t68.
        t67 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t68 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t64 i_input_967e = t66 i_type_9913 = t67 ).
      ELSE.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        DATA(t70) = CAST zcl_lnt_expression_node( t49 ).
        t69 = t70.
        DATA(t71) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t72 TYPE REF TO zcl_lnt_string_type.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t73.
        t72 = zcl_lnt_string_type=>get_db65( i_input_967e = t73 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t69 i_input_967e = t71 i_type_9913 = t72 ).
      ENDIF.
    ELSE.
      DATA t74 TYPE abap_bool.
      DATA(t75) = CAST zcl_lnt_expression_node( t45 ).
      t74 = xsdbool( t75 IS BOUND ).
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zcl_lnt_abstract_type.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        DATA(t79) = CAST zcl_lnt_expression_node( t45 ).
        t78 = t79.
        DATA(t80) = CAST zcl_lnt_syntax_input( t2 ).
        t77 = zcl_lnt_sy_target=>run_syntax( i_node = t78 i_input_967e = t80 ).
        t76 = t77.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = t3.
        IF t83 = abap_true.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE REF TO zcl_lnt_type_utils.
          DATA t86 TYPE REF TO zcl_lnt_current_scope.
          DATA(t87) = CAST zcl_lnt_syntax_input( t2 ).
          t86 = t87->scope.
          t85 = NEW zcl_lnt_type_utils( i_scope = t86 ).
          DATA(t88) = CAST zcl_lnt_abstract_type( t76 ).
          t84 = t85->is_hex_like( i_type_9913 = t88 ).
          t82 = t84.
        ELSE.
          DATA t89 TYPE abap_bool.
          DATA t90 TYPE REF TO zcl_lnt_type_utils.
          DATA t91 TYPE REF TO zcl_lnt_current_scope.
          DATA(t92) = CAST zcl_lnt_syntax_input( t2 ).
          t91 = t92->scope.
          t90 = NEW zcl_lnt_type_utils( i_scope = t91 ).
          DATA(t93) = CAST zcl_lnt_abstract_type( t76 ).
          t89 = t90->is_char_like_strict( i_type_9913 = t93 ).
          t82 = t89.
        ENDIF.
        t81 = t82.
        DATA t94 TYPE abap_bool.
        DATA(t95) = t81.
        DATA(t96) = abap_false.
        t94 = xsdbool( t95 = t96 ).
        IF t94 = abap_true.
          DATA t97 TYPE string.
          DATA(t98) = |Target type not compatible|.
          t97 = t98.
          DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t100) = CAST zcl_lnt_syntax_input( t2 ).
          t99 = t100->issues.
          DATA t101 TYPE REF TO zcl_lnt_issue.
          DATA(t102) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t103 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t104) = CAST zcl_lnt_statement_node( t1 ).
          t103 = t104->get_first_token( ).
          DATA(t105) = t97.
          DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t106.
          t101 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t102 i_token = t103 i_message_26cb = t105 i_fix = t106 ).
          APPEND t101 TO t99->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t107) = t14.
    IF t107 = abap_true.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t109) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t110) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t108 = t109->find_direct_expressions( i_type_9913 = t110 ).
      DATA t111 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t111.
      DATA t112 TYPE REF TO object.
      CLEAR t112.
      LOOP AT t108->items INTO t112.
        t111 ?= t112.
        DATA t113 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t113.
        DATA t114 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t114.
        DATA t115 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = CAST zcl_lnt_expression_node( t111 ).
          t115 = t117.
        ELSE.
          DATA t118 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t118.
          t115 = t118.
        ENDIF.
        DATA(t119) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t120 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t120.
        DATA t121 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t123.
        t114 = zcl_lnt_sy_source=>run_syntax( i_node = t115 i_input_967e = t119 i_target_type = t120 i_write_reference = t121 i_allow_generic_deference = t122 i_read_reference = t123 ).
        t113 = t114.
        DATA(t124) = VALUE abap_bool( ).
        DATA t125 TYPE abap_bool.
        DATA t126 TYPE abap_bool.
        DATA t127 TYPE abap_bool.
        DATA(t128) = CAST zcl_lnt_abstract_type( t113 ).
        t127 = xsdbool( t128 IS BOUND AND t128 IS INSTANCE OF zcl_lnt_unknown_type ).
        t126 = xsdbool( t127 = abap_false ).
        t125 = t126.
        IF t126 = abap_true.
          DATA t129 TYPE abap_bool.
          DATA t130 TYPE abap_bool.
          DATA(t131) = CAST zcl_lnt_abstract_type( t113 ).
          t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_void_type ).
          t129 = xsdbool( t130 = abap_false ).
          t125 = t129.
        ENDIF.
        t124 = t125.
        IF t125 = abap_true.
          DATA t132 TYPE abap_bool.
          DATA t133 TYPE abap_bool.
          DATA(t134) = CAST zcl_lnt_abstract_type( t113 ).
          t133 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t132 = xsdbool( t133 = abap_false ).
          t124 = t132.
        ENDIF.
        IF t124 = abap_true.
          DATA t135 TYPE string.
          DATA(t136) = |Source must be an internal table|.
          t135 = t136.
          DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t138) = CAST zcl_lnt_syntax_input( t2 ).
          t137 = t138->issues.
          DATA t139 TYPE REF TO zcl_lnt_issue.
          DATA(t140) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t141 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t142) = CAST zcl_lnt_statement_node( t1 ).
          t141 = t142->get_first_token( ).
          DATA(t143) = t135.
          DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t144.
          t139 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t140 i_token = t141 i_message_26cb = t143 i_fix = t144 ).
          APPEND t139 TO t137->items.
          RETURN.
        ENDIF.
        DATA(t145) = VALUE abap_bool( ).
        DATA(t146) = VALUE abap_bool( ).
        DATA t147 TYPE abap_bool.
        DATA t148 TYPE abap_bool.
        DATA(t149) = t14.
        DATA(t150) = abap_true.
        t148 = xsdbool( t149 = t150 ).
        t147 = t148.
        IF t148 = abap_true.
          DATA t151 TYPE abap_bool.
          DATA(t152) = t3.
          DATA(t153) = abap_true.
          t151 = xsdbool( t152 = t153 ).
          t147 = t151.
        ENDIF.
        t146 = t147.
        IF t147 = abap_true.
          DATA t154 TYPE abap_bool.
          DATA(t155) = CAST zcl_lnt_abstract_type( t113 ).
          t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t146 = t154.
        ENDIF.
        t145 = t146.
        IF t146 = abap_true.
          DATA t156 TYPE abap_bool.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          DATA t158 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t159 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t160) = CAST zcl_lnt_abstract_type( t113 ).
          t159 ?= t160.
          t158 = t159.
          DATA t161 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t162) = CAST zcl_lnt_ty_table_type( t158 ).
          t161 = t162->row_type.
          t157 = t161.
          t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_structure_type ).
          t145 = t156.
        ENDIF.
        IF t145 = abap_true.
          DATA t163 TYPE string.
          DATA(t164) = |Source row type must not be a structure in BYTE mode|.
          t163 = t164.
          DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t166) = CAST zcl_lnt_syntax_input( t2 ).
          t165 = t166->issues.
          DATA t167 TYPE REF TO zcl_lnt_issue.
          DATA(t168) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t169 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t170) = CAST zcl_lnt_statement_node( t1 ).
          t169 = t170->get_first_token( ).
          DATA(t171) = t163.
          DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t172.
          t167 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t168 i_token = t169 i_message_26cb = t171 i_fix = t172 ).
          APPEND t167 TO t165->items.
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t174) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t175) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t173 = t174->find_direct_expressions( i_type_9913 = t175 ).
    DATA t176 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t176.
    DATA t177 TYPE REF TO object.
    CLEAR t177.
    LOOP AT t173->items INTO t177.
      t176 ?= t177.
      DATA t178 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t178.
      DATA t179 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t179.
      DATA t180 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t180.
      DATA(t181) = abap_true.
      IF t181 = abap_true.
        DATA(t182) = CAST zcl_lnt_expression_node( t176 ).
        t180 = t182.
      ELSE.
        DATA t183 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t183.
        t180 = t183.
      ENDIF.
      DATA(t184) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t185 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t185.
      DATA t186 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t186.
      DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t187.
      DATA t188 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t188.
      t179 = zcl_lnt_sy_source=>run_syntax( i_node = t180 i_input_967e = t184 i_target_type = t185 i_write_reference = t186 i_allow_generic_deference = t187 i_read_reference = t188 ).
      t178 = t179.
      DATA(t189) = VALUE abap_bool( ).
      DATA(t190) = VALUE abap_bool( ).
      DATA(t191) = t3.
      IF t191 = abap_true.
        DATA t192 TYPE abap_bool.
        DATA t193 TYPE REF TO zcl_lnt_type_utils.
        DATA t194 TYPE REF TO zcl_lnt_current_scope.
        DATA(t195) = CAST zcl_lnt_syntax_input( t2 ).
        t194 = t195->scope.
        t193 = NEW zcl_lnt_type_utils( i_scope = t194 ).
        DATA(t196) = CAST zcl_lnt_abstract_type( t178 ).
        t192 = t193->is_hex_like( i_type_9913 = t196 ).
        t190 = t192.
      ELSE.
        DATA t197 TYPE abap_bool.
        DATA t198 TYPE REF TO zcl_lnt_type_utils.
        DATA t199 TYPE REF TO zcl_lnt_current_scope.
        DATA(t200) = CAST zcl_lnt_syntax_input( t2 ).
        t199 = t200->scope.
        t198 = NEW zcl_lnt_type_utils( i_scope = t199 ).
        DATA(t201) = CAST zcl_lnt_abstract_type( t178 ).
        t197 = t198->is_char_like_strict( i_type_9913 = t201 ).
        t190 = t197.
      ENDIF.
      t189 = t190.
      DATA t202 TYPE abap_bool.
      DATA(t203) = t189.
      DATA(t204) = abap_false.
      t202 = xsdbool( t203 = t204 ).
      IF t202 = abap_true.
        DATA t205 TYPE string.
        DATA(t206) = |Source type not compatible|.
        t205 = t206.
        DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t208) = CAST zcl_lnt_syntax_input( t2 ).
        t207 = t208->issues.
        DATA t209 TYPE REF TO zcl_lnt_issue.
        DATA(t210) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t211 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t212) = CAST zcl_lnt_statement_node( t1 ).
        t211 = t212->get_first_token( ).
        DATA(t213) = t205.
        DATA t214 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t214.
        t209 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t210 i_token = t211 i_message_26cb = t213 i_fix = t214 ).
        APPEND t209 TO t207->items.
        RETURN.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d857_8f4cc3b8bf4f.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
