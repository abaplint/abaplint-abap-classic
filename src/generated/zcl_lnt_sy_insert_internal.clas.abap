* TS: src/abap/5_syntax/statements/insert_internal.ts:14:1 InsertInternal
CLASS zcl_lnt_sy_insert_internal DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_insert_internal IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = CAST zcl_lnt_expression_node( t4 ).
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = CAST zcl_lnt_expression_node( t4 ).
      t11 = t12.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      t10 = zcl_lnt_sy_target=>run_syntax( i_node = t11 i_input_967e = t13 ).
      t3 = t10.
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_abstract_type( t3 ).
    t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t18 = xsdbool( t19 = abap_false ).
    t17 = t18.
    IF t18 = abap_true.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA(t23) = CAST zcl_lnt_abstract_type( t3 ).
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_void_type ).
      t21 = xsdbool( t22 = abap_false ).
      t17 = t21.
    ENDIF.
    t16 = t17.
    IF t17 = abap_true.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA(t26) = CAST zcl_lnt_abstract_type( t3 ).
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_any_type ).
      t24 = xsdbool( t25 = abap_false ).
      t16 = t24.
    ENDIF.
    t15 = t16.
    IF t16 = abap_true.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA(t29) = CAST zcl_lnt_abstract_type( t3 ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ).
      t27 = xsdbool( t28 = abap_false ).
      t15 = t27.
    ENDIF.
    t14 = t15.
    IF t15 = abap_true.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t32) = CAST zcl_lnt_abstract_type( t3 ).
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t33 = t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = CAST zcl_lnt_abstract_type( t31 ).
      IF t37 IS INITIAL.
        t36 = abap_true.
      ENDIF.
      t35 = xsdbool( t36 = abap_false ).
      t30 = t35.
      t14 = t30.
    ENDIF.
    IF t14 = abap_true.
      DATA t38 TYPE string.
      DATA(t39) = |INSERT target must be a table|.
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = CAST zcl_lnt_syntax_input( t2 ).
      t40 = t41->issues.
      DATA t42 TYPE REF TO zcl_lnt_issue.
      DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = CAST zcl_lnt_statement_node( t1 ).
      t44 = t45->get_first_token(  ).
      DATA(t46) = t38.
      DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t47.
      t42 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t43 i_token = t44 i_message_26cb = t46 i_fix = t47 ).
      APPEND t42 TO t40->items.
      RETURN.
    ELSE.
      DATA t48 TYPE abap_bool.
      DATA t49 TYPE abap_bool.
      DATA(t50) = CAST zcl_lnt_abstract_type( t3 ).
      t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t48 = t49.
      IF t49 = abap_true.
        DATA(t51) = VALUE abap_bool( ).
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t55) = |LINES|.
        t53 = t54->find_direct_token_by_text( i_text = t55 ).
        t52 = t53.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        t56 = t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = CAST zcl_lnt_abstract_token( t52 ).
        IF t59 IS INITIAL.
          t58 = abap_true.
        ENDIF.
        t51 = t58.
        t48 = t51.
      ENDIF.
      IF t48 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_abstract_type.
          DATA t63 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t64 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t65) = CAST zcl_lnt_abstract_type( t3 ).
          t64 ?= t65.
          t63 = t64.
          DATA t66 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t67) = CAST zcl_lnt_ty_table_type( t63 ).
          t66 = t67->row_type.
          t62 = t66.
          t60 = t62.
        ELSE.
          DATA t68 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t68.
          t60 = t68.
        ENDIF.
        t3 = t60.
      ENDIF.
    ENDIF.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = VALUE abap_bool( ).
    DATA t71 TYPE REF TO zcl_lnt_abstract_token.
    DATA t72 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t73) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t74) = |INITIAL|.
    t72 = t73->find_direct_token_by_text( i_text = t74 ).
    t71 = t72.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    t75 = t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = CAST zcl_lnt_abstract_token( t71 ).
    IF t79 IS INITIAL.
      t78 = abap_true.
    ENDIF.
    t77 = xsdbool( t78 = abap_false ).
    t70 = t77.
    t69 = t70.
    DATA t80 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t80.
    DATA t81 TYPE abap_bool.
    DATA(t82) = t69.
    DATA(t83) = abap_false.
    t81 = xsdbool( t82 = t83 ).
    IF t81 = abap_true.
      DATA t84 TYPE REF TO zcl_lnt_expression_node.
      DATA(t85) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t86) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390 ).
      t84 = t85->find_direct_expression( i_type_9913 = t86 ).
      t80 = t84.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zcl_lnt_expression_node.
      DATA(t89) = CAST zcl_lnt_expression_node( t80 ).
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = CAST zcl_lnt_expression_node( t88 ).
      IF t93 IS INITIAL.
        t92 = abap_true.
      ENDIF.
      t87 = t92.
      IF t87 = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_expression_node.
        DATA(t95) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t96) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
        t94 = t95->find_direct_expression( i_type_9913 = t96 ).
        t80 = t94.
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t97.
    DATA t98 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t98.
    DATA t99 TYPE abap_bool.
    DATA(t100) = CAST zcl_lnt_expression_node( t80 ).
    t99 = xsdbool( t100 IS BOUND ).
    IF t99 = abap_true.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA(t103) = abap_true.
      IF t103 = abap_true.
        DATA t104 TYPE REF TO zcl_lnt_expression_node.
        DATA(t105) = CAST zcl_lnt_expression_node( t80 ).
        t104 = t105.
        t102 = t104.
      ELSE.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t106.
        t102 = t106.
      ENDIF.
      DATA(t107) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t108) = CAST zcl_lnt_abstract_type( t3 ).
      DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t111.
      t101 = zcl_lnt_sy_source=>run_syntax( i_node = t102 i_input_967e = t107 i_target_type = t108 i_write_reference = t109 i_allow_generic_deference = t110 i_read_reference = t111 ).
      t98 = t101.
    ELSE.
      DATA(t112) = CAST zcl_lnt_abstract_type( t3 ).
      t98 = t112.
    ENDIF.
    t97 = t98.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = VALUE abap_bool( ).
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t119) = CAST zcl_lnt_abstract_type( t3 ).
    t118 = t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    t120 = t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = CAST zcl_lnt_abstract_type( t118 ).
    IF t123 IS INITIAL.
      t122 = abap_true.
    ENDIF.
    t117 = t122.
    t116 = t117.
    IF t117 = abap_true.
      DATA t124 TYPE abap_bool.
      DATA t125 TYPE abap_bool.
      DATA(t126) = CAST zcl_lnt_abstract_type( t97 ).
      t125 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t124 = xsdbool( t125 = abap_false ).
      t116 = t124.
    ENDIF.
    t115 = t116.
    IF t116 = abap_true.
      DATA t127 TYPE abap_bool.
      DATA t128 TYPE abap_bool.
      DATA(t129) = CAST zcl_lnt_abstract_type( t97 ).
      t128 = xsdbool( t129 IS BOUND AND t129 IS INSTANCE OF zcl_lnt_void_type ).
      t127 = xsdbool( t128 = abap_false ).
      t115 = t127.
    ENDIF.
    t114 = t115.
    IF t115 = abap_true.
      DATA t130 TYPE abap_bool.
      DATA t131 TYPE abap_bool.
      DATA(t132) = CAST zcl_lnt_abstract_type( t97 ).
      t131 = xsdbool( t132 IS BOUND AND t132 IS INSTANCE OF zcl_lnt_any_type ).
      t130 = xsdbool( t131 = abap_false ).
      t114 = t130.
    ENDIF.
    t113 = t114.
    IF t114 = abap_true.
      DATA t133 TYPE abap_bool.
      DATA t134 TYPE abap_bool.
      DATA(t135) = CAST zcl_lnt_abstract_type( t97 ).
      t134 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_unknown_type ).
      t133 = xsdbool( t134 = abap_false ).
      t113 = t133.
    ENDIF.
    IF t113 = abap_true.
      DATA t136 TYPE string.
      DATA(t137) = |INSERT target must be a table|.
      t136 = t137.
      DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t139) = CAST zcl_lnt_syntax_input( t2 ).
      t138 = t139->issues.
      DATA t140 TYPE REF TO zcl_lnt_issue.
      DATA(t141) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t142 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t143) = CAST zcl_lnt_statement_node( t1 ).
      t142 = t143->get_first_token(  ).
      DATA(t144) = t136.
      DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t145.
      t140 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t141 i_token = t142 i_message_26cb = t144 i_fix = t145 ).
      APPEND t140 TO t138->items.
      RETURN.
    ENDIF.
    DATA t146 TYPE REF TO zcl_lnt_expression_node.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    DATA(t148) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t149) = |ASSIGNING|.
    t147 = t148->find_expression_after_token( i_text = t149 ).
    t146 = t147.
    DATA(t150) = VALUE abap_bool( ).
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    DATA(t153) = CAST zcl_lnt_expression_node( t146 ).
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA(t155) = VALUE abap_bool( ).
    DATA(t156) = CAST zcl_lnt_expression_node( t152 ).
    IF t156 IS INITIAL.
      t155 = abap_true.
    ENDIF.
    IF t155 = abap_true.
      DATA t157 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t157.
      t154 = t157.
    ELSE.
      DATA t158 TYPE REF TO zif_lnt_statement_runnable.
      DATA t159 TYPE REF TO zcl_lnt_expression_node.
      DATA(t160) = CAST zcl_lnt_expression_node( t152 ).
      t159 = t160.
      t158 = t159->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t154 = t158.
    ENDIF.
    t151 = t154.
    t150 = xsdbool( t151 IS BOUND AND t151 IS INSTANCE OF zcl_lnt_st_fs_target ).
    IF t150 = abap_true.
      DATA t161 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_expression_node.
      DATA t164 TYPE REF TO zcl_lnt_expression_node.
      DATA(t165) = CAST zcl_lnt_expression_node( t146 ).
      t164 = t165.
      t163 = t164.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t166.
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = CAST zcl_lnt_expression_node( t163 ).
      IF t168 IS INITIAL.
        t167 = abap_true.
      ENDIF.
      IF t167 = abap_true.
        DATA t169 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t169.
        t166 = t169.
      ELSE.
        DATA t170 TYPE REF TO zcl_lnt_expression_node.
        DATA(t171) = CAST zcl_lnt_expression_node( t163 ).
        DATA(t172) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c ).
        t170 = t171->find_direct_expression( i_type_9913 = t172 ).
        t166 = t170.
      ENDIF.
      t162 = t166.
      t161 = t162.
      DATA t173 TYPE abap_bool.
      DATA(t174) = CAST zcl_lnt_expression_node( t161 ).
      t173 = xsdbool( t174 IS BOUND ).
      IF t173 = abap_true.
        DATA t175 TYPE REF TO zcl_lnt_expression_node.
        DATA(t176) = CAST zcl_lnt_expression_node( t161 ).
        t175 = t176.
        DATA(t177) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t178) = CAST zcl_lnt_abstract_type( t97 ).
        zcl_lnt_sy_inline_fs=>run_syntax( i_node = t175 i_input_967e = t177 i_type_9913 = t178 ).
      ELSE.
        DATA t179 TYPE REF TO zcl_lnt_expression_node.
        DATA(t180) = CAST zcl_lnt_expression_node( t146 ).
        t179 = t180.
        DATA(t181) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t182) = CAST zcl_lnt_abstract_type( t97 ).
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t179 i_input_967e = t181 i_type_9913 = t182 ).
      ENDIF.
    ENDIF.
    DATA t183 TYPE abap_bool.
    DATA(t184) = t69.
    DATA(t185) = abap_false.
    t183 = xsdbool( t184 = t185 ).
    IF t183 = abap_true.
      DATA t186 TYPE abap_bool.
      DATA(t187) = abap_false.
      t186 = t187.
      DATA t188 TYPE abap_bool.
      DATA t189 TYPE abap_bool.
      DATA(t190) = CAST zcl_lnt_abstract_type( t97 ).
      t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_integer_type ).
      t188 = t189.
      IF t189 = abap_true.
        DATA t191 TYPE abap_bool.
        DATA(t192) = CAST zcl_lnt_abstract_type( t3 ).
        t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_integer8_type ).
        t188 = t191.
      ENDIF.
      IF t188 = abap_true.
        DATA(t193) = abap_true.
        t186 = t193.
      ELSE.
        DATA t194 TYPE abap_bool.
        DATA t195 TYPE abap_bool.
        DATA t196 TYPE REF TO zcl_lnt_type_utils.
        DATA t197 TYPE REF TO zcl_lnt_current_scope.
        DATA(t198) = CAST zcl_lnt_syntax_input( t2 ).
        t197 = t198->scope.
        t196 = NEW zcl_lnt_type_utils( i_scope = t197 ).
        DATA(t199) = CAST zcl_lnt_abstract_type( t97 ).
        DATA(t200) = CAST zcl_lnt_abstract_type( t3 ).
        t195 = t196->is_assignable( i_source_75cf = t199 i_target_5f8a = t200 ).
        DATA(t201) = abap_false.
        t194 = xsdbool( t195 = t201 ).
        IF t194 = abap_true.
          DATA(t202) = abap_true.
          t186 = t202.
        ELSE.
          DATA t203 TYPE abap_bool.
          DATA t204 TYPE abap_bool.
          DATA(t205) = CAST zcl_lnt_abstract_type( t97 ).
          t204 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_character_type ).
          t203 = t204.
          IF t204 = abap_true.
            DATA t206 TYPE abap_bool.
            DATA(t207) = CAST zcl_lnt_abstract_type( t3 ).
            t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_string_type ).
            t203 = t206.
          ENDIF.
          IF t203 = abap_true.
            DATA(t208) = abap_true.
            t186 = t208.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t209 TYPE abap_bool.
      DATA(t210) = t186.
      DATA(t211) = abap_true.
      t209 = xsdbool( t210 = t211 ).
      IF t209 = abap_true.
        DATA t212 TYPE string.
        DATA(t213) = |Types not compatible|.
        t212 = t213.
        DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t215) = CAST zcl_lnt_syntax_input( t2 ).
        t214 = t215->issues.
        DATA t216 TYPE REF TO zcl_lnt_issue.
        DATA(t217) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t218 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t219) = CAST zcl_lnt_statement_node( t1 ).
        t218 = t219->get_first_token(  ).
        DATA(t220) = t212.
        DATA t221 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t221.
        t216 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t217 i_token = t218 i_message_26cb = t220 i_fix = t221 ).
        APPEND t216 TO t214->items.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_expression_node.
    DATA t223 TYPE REF TO zcl_lnt_expression_node.
    DATA(t224) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t225) = |INTO|.
    t223 = t224->find_expression_after_token( i_text = t225 ).
    t222 = t223.
    DATA(t226) = VALUE abap_bool( ).
    DATA(t227) = VALUE abap_bool( ).
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zcl_lnt_expression_node.
    DATA(t230) = CAST zcl_lnt_expression_node( t222 ).
    t229 = t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA(t232) = VALUE abap_bool( ).
    DATA(t233) = CAST zcl_lnt_expression_node( t229 ).
    IF t233 IS INITIAL.
      t232 = abap_true.
    ENDIF.
    IF t232 = abap_true.
      DATA t234 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t234.
      t231 = t234.
    ELSE.
      DATA t235 TYPE REF TO zif_lnt_statement_runnable.
      DATA t236 TYPE REF TO zcl_lnt_expression_node.
      DATA(t237) = CAST zcl_lnt_expression_node( t229 ).
      t236 = t237.
      t235 = t236->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t231 = t235.
    ENDIF.
    t228 = t231.
    t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_st_target ).
    t226 = t227.
    IF t227 = abap_true.
      DATA t238 TYPE abap_bool.
      DATA(t239) = CAST zcl_lnt_abstract_type( t97 ).
      t238 = xsdbool( t239 IS BOUND ).
      t226 = t238.
    ENDIF.
    IF t226 = abap_true.
      DATA t240 TYPE REF TO zcl_lnt_expression_node.
      DATA t241 TYPE REF TO zcl_lnt_expression_node.
      DATA t242 TYPE REF TO zcl_lnt_expression_node.
      DATA(t243) = CAST zcl_lnt_expression_node( t222 ).
      t242 = t243.
      DATA(t244) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t241 = t242->find_direct_expression( i_type_9913 = t244 ).
      t240 = t241.
      DATA t245 TYPE abap_bool.
      DATA(t246) = CAST zcl_lnt_expression_node( t240 ).
      t245 = xsdbool( t246 IS BOUND ).
      IF t245 = abap_true.
        DATA t247 TYPE REF TO zcl_lnt_expression_node.
        DATA(t248) = CAST zcl_lnt_expression_node( t222 ).
        t247 = t248.
        DATA(t249) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t250 TYPE REF TO zcl_lnt_data_reference.
        DATA t251 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t252) = CAST zcl_lnt_abstract_type( t97 ).
        t251 = t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        t250 = NEW zcl_lnt_data_reference( i_type_9913 = t251 i_qualified_name = t253 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t247 i_input_967e = t249 i_type_9913 = t250 ).
      ELSE.
        DATA t254 TYPE REF TO zcl_lnt_abstract_type.
        DATA t255 TYPE REF TO zcl_lnt_abstract_type.
        DATA t256 TYPE REF TO zcl_lnt_expression_node.
        DATA(t257) = CAST zcl_lnt_expression_node( t222 ).
        t256 = t257.
        DATA(t258) = CAST zcl_lnt_syntax_input( t2 ).
        t255 = zcl_lnt_sy_target=>run_syntax( i_node = t256 i_input_967e = t258 ).
        t254 = t255.
        DATA t259 TYPE abap_bool.
        DATA t260 TYPE abap_bool.
        DATA(t261) = CAST zcl_lnt_abstract_type( t254 ).
        t260 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t259 = t260.
        IF t260 = abap_true.
          DATA(t262) = VALUE abap_bool( ).
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t263.
          DATA t264 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t265 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t266) = CAST zcl_lnt_abstract_type( t254 ).
          t265 ?= t266.
          t264 = t265.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          DATA t268 TYPE REF TO zcl_lnt_itable_key.
          DATA t269 TYPE REF TO zcl_lnt_itable_key.
          DATA t270 TYPE REF TO zcl_lnt_itable_options.
          DATA(t271) = CAST zcl_lnt_ty_table_type( t264 ).
          t270 = t271->options.
          t269 = t270->primary_key.
          t268 = t269.
          DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t272.
          DATA(t273) = VALUE abap_bool( ).
          DATA(t274) = CAST zcl_lnt_itable_key( t268 ).
          IF t274 IS INITIAL.
            t273 = abap_true.
          ENDIF.
          IF t273 = abap_true.
            DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t275.
            t272 = t275.
          ELSE.
            DATA t276 TYPE string.
            DATA t277 TYPE REF TO zcl_lnt_itable_key.
            DATA(t278) = CAST zcl_lnt_itable_key( t268 ).
            t277 = t278.
            t276 = t277->type_cba0.
            DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t279->has = abap_true.
            t279->value = t276.
            t272 = t279.
          ENDIF.
          t267 = t272.
          t263 = t267.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA(t281) = abap_true.
          IF t281 = abap_true.
            DATA(t282) = |HASHED|.
            DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t283->has = abap_true.
            t283->value = t282.
            t280 = t283.
          ELSE.
            DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t284.
            t280 = t284.
          ENDIF.
          DATA(t285) = VALUE abap_bool( ).
          DATA(t286) = VALUE abap_bool( ).
          IF t263 IS BOUND.
            t285 = t263->has.
          ENDIF.
          IF t280 IS BOUND.
            t286 = t280->has.
          ENDIF.
          IF t285 = t286.
            IF t285 = abap_false.
              t262 = abap_true.
            ELSEIF t263->value = t280->value.
              t262 = abap_true.
            ENDIF.
          ENDIF.
          t259 = t262.
        ENDIF.
        IF t259 = abap_true.
          DATA t287 TYPE string.
          DATA(t288) = |Implicit or explicit index operation on hashed table is not |.
          t288 = t288 && |possible|.
          t287 = t288.
          DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t290) = CAST zcl_lnt_syntax_input( t2 ).
          t289 = t290->issues.
          DATA t291 TYPE REF TO zcl_lnt_issue.
          DATA(t292) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t293 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t294) = CAST zcl_lnt_statement_node( t1 ).
          t293 = t294->get_first_token(  ).
          DATA(t295) = t287.
          DATA t296 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t296.
          t291 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t292 i_token = t293 i_message_26cb = t295 i_fix = t296 ).
          APPEND t291 TO t289->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t298) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t299) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t297 = t298->find_direct_expressions( i_type_9913 = t299 ).
    DATA t300 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t300.
    DATA t301 TYPE REF TO object.
    CLEAR t301.
    LOOP AT t297->items INTO t301.
      t300 ?= t301.
      DATA(t302) = VALUE abap_bool( ).
      DATA t303 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t303.
      DATA(t304) = abap_true.
      IF t304 = abap_true.
        DATA(t305) = CAST zcl_lnt_expression_node( t300 ).
        t303 = t305.
      ELSE.
        DATA t306 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t306.
        t303 = t306.
      ENDIF.
      DATA(t307) = CAST zcl_lnt_expression_node( t80 ).
      t302 = xsdbool( t303 = t307 ).
      IF t302 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t308 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t308.
      DATA t309 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t309.
      DATA(t310) = abap_true.
      IF t310 = abap_true.
        DATA(t311) = CAST zcl_lnt_expression_node( t300 ).
        t309 = t311.
      ELSE.
        DATA t312 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t312.
        t309 = t312.
      ENDIF.
      DATA(t313) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t314) = CAST zcl_lnt_abstract_type( t3 ).
      DATA t315 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t315.
      DATA t316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t316.
      DATA t317 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t317.
      t308 = zcl_lnt_sy_source=>run_syntax( i_node = t309 i_input_967e = t313 i_target_type = t314 i_write_reference = t315 i_allow_generic_deference = t316 i_read_reference = t317 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d899_8547f2fa8c35.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
