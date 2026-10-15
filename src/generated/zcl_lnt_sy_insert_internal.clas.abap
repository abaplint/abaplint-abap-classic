* TS: src/abap/5_syntax/statements/insert_internal.ts:14:1 InsertInternal
CLASS zcl_lnt_sy_insert_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_insert_internal IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t11.
      DATA(t12) = t4.
      t11 = t12.
      DATA(t13) = t2.
      t10 = zcl_lnt_sy_target=>run_syntax( i_node = t11 i_input_967e = t13 ).
      t3 = t10.
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t3.
    t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t18 = xsdbool( t19 = abap_false ).
    t17 = t18.
    IF t18 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t3.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_void_type ).
      t21 = xsdbool( t22 = abap_false ).
      t17 = t21.
    ENDIF.
    t16 = t17.
    IF t17 = abap_true.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t3.
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_any_type ).
      t24 = xsdbool( t25 = abap_false ).
      t16 = t24.
    ENDIF.
    t15 = t16.
    IF t16 = abap_true.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t3.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ).
      t27 = xsdbool( t28 = abap_false ).
      t15 = t27.
    ENDIF.
    t14 = t15.
    IF t15 = abap_true.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t31.
      DATA(t32) = t3.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t33 = t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t31.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ENDIF.
      t35 = xsdbool( t36 = abap_false ).
      t30 = t35.
      t14 = t30.
    ENDIF.
    IF t14 = abap_true.
      DATA(t38) = VALUE string( ).
      DATA(t39) = |INSERT target must be a table|.
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t40.
      DATA(t41) = t2.
      t40 = t41->issues.
      DATA t42 TYPE REF TO zcl_lnt_issue.
      CLEAR t42.
      DATA(t43) = t2.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t44.
      DATA(t45) = t1.
      t44 = t45->get_first_token( ).
      DATA(t46) = t38.
      DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t47.
      t42 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t43 i_token = t44 i_message_26cb = t46 i_fix = t47 ).
      t40->load( ).
      APPEND t42 TO t40->items.
      t40->save( ).
      RETURN.
    ELSE.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t3.
      t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t48 = t49.
      IF t49 = abap_true.
        DATA(t51) = VALUE abap_bool( ).
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t53.
        DATA(t54) = t1.
        DATA(t55) = |LINES|.
        t53 = t54->find_direct_token_by_text( i_text = t55 ).
        t52 = t53.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        t56 = t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t52.
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
          CLEAR t62.
          DATA t63 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t63.
          DATA t64 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t64.
          DATA(t65) = t3.
          t64 ?= t65.
          t63 = t64.
          DATA t66 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t66.
          DATA(t67) = t63.
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
    CLEAR t71.
    DATA t72 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t72.
    DATA(t73) = t1.
    DATA(t74) = |INITIAL|.
    t72 = t73->find_direct_token_by_text( i_text = t74 ).
    t71 = t72.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    t75 = t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = t71.
    IF t79 IS INITIAL.
      t78 = abap_true.
    ENDIF.
    t77 = xsdbool( t78 = abap_false ).
    t70 = t77.
    t69 = t70.
    DATA t80 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t80.
    DATA(t81) = VALUE abap_bool( ).
    DATA(t82) = t69.
    DATA(t83) = abap_false.
    t81 = xsdbool( t82 = t83 ).
    IF t81 = abap_true.
      DATA t84 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t84.
      DATA(t85) = t1.
      DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
      t84 = t85->find_direct_expression( i_type_9913 = t86 ).
      t80 = t84.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t88.
      DATA(t89) = t80.
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t88.
      IF t93 IS INITIAL.
        t92 = abap_true.
      ENDIF.
      t87 = t92.
      IF t87 = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t94.
        DATA(t95) = t1.
        DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t94 = t95->find_direct_expression( i_type_9913 = t96 ).
        t80 = t94.
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t97.
    DATA t98 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t98.
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = t80.
    t99 = xsdbool( t100 IS BOUND ).
    IF t99 = abap_true.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA(t103) = abap_true.
      IF t103 = abap_true.
        DATA t104 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t104.
        DATA(t105) = t80.
        t104 = t105.
        t102 = t104.
      ELSE.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t106.
        t102 = t106.
      ENDIF.
      DATA(t107) = t2.
      DATA(t108) = t3.
      DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t111.
      t101 = zcl_lnt_sy_source=>run_syntax( i_node = t102 i_input_967e = t107 i_target_type = t108 i_write_reference = t109 i_allow_generic_deference = t110 i_read_reference = t111 ).
      t98 = t101.
    ELSE.
      DATA(t112) = t3.
      t98 = t112.
    ENDIF.
    t97 = t98.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = VALUE abap_bool( ).
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t118.
    DATA(t119) = t3.
    t118 = t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    t120 = t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = t118.
    IF t123 IS INITIAL.
      t122 = abap_true.
    ENDIF.
    t117 = t122.
    t116 = t117.
    IF t117 = abap_true.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      DATA(t126) = t97.
      t125 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t124 = xsdbool( t125 = abap_false ).
      t116 = t124.
    ENDIF.
    t115 = t116.
    IF t116 = abap_true.
      DATA(t127) = VALUE abap_bool( ).
      DATA(t128) = VALUE abap_bool( ).
      DATA(t129) = t97.
      t128 = xsdbool( t129 IS BOUND AND t129 IS INSTANCE OF zcl_lnt_void_type ).
      t127 = xsdbool( t128 = abap_false ).
      t115 = t127.
    ENDIF.
    t114 = t115.
    IF t115 = abap_true.
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = t97.
      t131 = xsdbool( t132 IS BOUND AND t132 IS INSTANCE OF zcl_lnt_any_type ).
      t130 = xsdbool( t131 = abap_false ).
      t114 = t130.
    ENDIF.
    t113 = t114.
    IF t114 = abap_true.
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = VALUE abap_bool( ).
      DATA(t135) = t97.
      t134 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_unknown_type ).
      t133 = xsdbool( t134 = abap_false ).
      t113 = t133.
    ENDIF.
    IF t113 = abap_true.
      DATA(t136) = VALUE string( ).
      DATA(t137) = |INSERT target must be a table|.
      t136 = t137.
      DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t138.
      DATA(t139) = t2.
      t138 = t139->issues.
      DATA t140 TYPE REF TO zcl_lnt_issue.
      CLEAR t140.
      DATA(t141) = t2.
      DATA t142 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t142.
      DATA(t143) = t1.
      t142 = t143->get_first_token( ).
      DATA(t144) = t136.
      DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t145.
      t140 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t141 i_token = t142 i_message_26cb = t144 i_fix = t145 ).
      t138->load( ).
      APPEND t140 TO t138->items.
      t138->save( ).
      RETURN.
    ENDIF.
    DATA t146 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t146.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t147.
    DATA(t148) = t1.
    DATA(t149) = |ASSIGNING|.
    t147 = t148->find_expression_after_token( i_text = t149 ).
    t146 = t147.
    DATA(t150) = VALUE abap_bool( ).
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t152.
    DATA(t153) = t146.
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA(t155) = VALUE abap_bool( ).
    DATA(t156) = t152.
    IF t156 IS INITIAL.
      t155 = abap_true.
    ENDIF.
    IF t155 = abap_true.
      DATA t157 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t157.
      t154 = t157.
    ELSE.
      DATA t158 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t158.
      DATA t159 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t159.
      DATA(t160) = t152.
      t159 = t160.
      t158 = t159->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
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
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t164.
      DATA(t165) = t146.
      t164 = t165.
      t163 = t164.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t166.
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = t163.
      IF t168 IS INITIAL.
        t167 = abap_true.
      ENDIF.
      IF t167 = abap_true.
        DATA t169 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t169.
        t166 = t169.
      ELSE.
        DATA t170 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t170.
        DATA(t171) = t163.
        DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
        t170 = t171->find_direct_expression( i_type_9913 = t172 ).
        t166 = t170.
      ENDIF.
      t162 = t166.
      t161 = t162.
      DATA(t173) = VALUE abap_bool( ).
      DATA(t174) = t161.
      t173 = xsdbool( t174 IS BOUND ).
      IF t173 = abap_true.
        DATA t175 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t175.
        DATA(t176) = t161.
        t175 = t176.
        DATA(t177) = t2.
        DATA(t178) = t97.
        zcl_lnt_sy_inline_fs=>run_syntax( i_node = t175 i_input_967e = t177 i_type_9913 = t178 ).
      ELSE.
        DATA t179 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t179.
        DATA(t180) = t146.
        t179 = t180.
        DATA(t181) = t2.
        DATA(t182) = t97.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t179 i_input_967e = t181 i_type_9913 = t182 ).
      ENDIF.
    ENDIF.
    DATA(t183) = VALUE abap_bool( ).
    DATA(t184) = t69.
    DATA(t185) = abap_false.
    t183 = xsdbool( t184 = t185 ).
    IF t183 = abap_true.
      DATA(t186) = VALUE abap_bool( ).
      DATA(t187) = abap_false.
      t186 = t187.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = VALUE abap_bool( ).
      DATA(t190) = t97.
      t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_integer_type ).
      t188 = t189.
      IF t189 = abap_true.
        DATA(t191) = VALUE abap_bool( ).
        DATA(t192) = t3.
        t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_integer8_type ).
        t188 = t191.
      ENDIF.
      IF t188 = abap_true.
        DATA(t193) = abap_true.
        t186 = t193.
      ELSE.
        DATA(t194) = VALUE abap_bool( ).
        DATA(t195) = VALUE abap_bool( ).
        DATA t196 TYPE REF TO zcl_lnt_type_utils.
        CLEAR t196.
        DATA t197 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t197.
        DATA(t198) = t2.
        t197 = t198->scope.
        t196 = NEW zcl_lnt_type_utils( i_scope = t197 ).
        DATA(t199) = t97.
        DATA(t200) = t3.
        t195 = t196->is_assignable( i_source_75cf = t199 i_target_5f8a = t200 ).
        DATA(t201) = abap_false.
        t194 = xsdbool( t195 = t201 ).
        IF t194 = abap_true.
          DATA(t202) = abap_true.
          t186 = t202.
        ELSE.
          DATA(t203) = VALUE abap_bool( ).
          DATA(t204) = VALUE abap_bool( ).
          DATA(t205) = t97.
          t204 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_character_type ).
          t203 = t204.
          IF t204 = abap_true.
            DATA(t206) = VALUE abap_bool( ).
            DATA(t207) = t3.
            t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_string_type ).
            t203 = t206.
          ENDIF.
          IF t203 = abap_true.
            DATA(t208) = abap_true.
            t186 = t208.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t209) = VALUE abap_bool( ).
      DATA(t210) = t186.
      DATA(t211) = abap_true.
      t209 = xsdbool( t210 = t211 ).
      IF t209 = abap_true.
        DATA(t212) = VALUE string( ).
        DATA(t213) = |Types not compatible|.
        t212 = t213.
        DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t214.
        DATA(t215) = t2.
        t214 = t215->issues.
        DATA t216 TYPE REF TO zcl_lnt_issue.
        CLEAR t216.
        DATA(t217) = t2.
        DATA t218 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t218.
        DATA(t219) = t1.
        t218 = t219->get_first_token( ).
        DATA(t220) = t212.
        DATA t221 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t221.
        t216 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t217 i_token = t218 i_message_26cb = t220 i_fix = t221 ).
        t214->load( ).
        APPEND t216 TO t214->items.
        t214->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t222.
    DATA t223 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t223.
    DATA(t224) = t1.
    DATA(t225) = |INTO|.
    t223 = t224->find_expression_after_token( i_text = t225 ).
    t222 = t223.
    DATA(t226) = VALUE abap_bool( ).
    DATA(t227) = VALUE abap_bool( ).
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t229.
    DATA(t230) = t222.
    t229 = t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA(t232) = VALUE abap_bool( ).
    DATA(t233) = t229.
    IF t233 IS INITIAL.
      t232 = abap_true.
    ENDIF.
    IF t232 = abap_true.
      DATA t234 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t234.
      t231 = t234.
    ELSE.
      DATA t235 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t235.
      DATA t236 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t236.
      DATA(t237) = t229.
      t236 = t237.
      t235 = t236->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t231 = t235.
    ENDIF.
    t228 = t231.
    t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_st_target ).
    t226 = t227.
    IF t227 = abap_true.
      DATA(t238) = VALUE abap_bool( ).
      DATA(t239) = t97.
      t238 = xsdbool( t239 IS BOUND ).
      t226 = t238.
    ENDIF.
    IF t226 = abap_true.
      DATA t240 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t240.
      DATA t241 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t241.
      DATA t242 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t242.
      DATA(t243) = t222.
      t242 = t243.
      DATA(t244) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t241 = t242->find_direct_expression( i_type_9913 = t244 ).
      t240 = t241.
      DATA(t245) = VALUE abap_bool( ).
      DATA(t246) = t240.
      t245 = xsdbool( t246 IS BOUND ).
      IF t245 = abap_true.
        DATA t247 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t247.
        DATA(t248) = t222.
        t247 = t248.
        DATA(t249) = t2.
        DATA t250 TYPE REF TO zcl_lnt_data_reference.
        CLEAR t250.
        DATA t251 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t251.
        DATA(t252) = t97.
        t251 = t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        t250 = NEW zcl_lnt_data_reference( i_type_9913 = t251 i_qualified_name = t253 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t247 i_input_967e = t249 i_type_9913 = t250 ).
      ELSE.
        DATA t254 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t254.
        DATA t255 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t255.
        DATA t256 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t256.
        DATA(t257) = t222.
        t256 = t257.
        DATA(t258) = t2.
        t255 = zcl_lnt_sy_target=>run_syntax( i_node = t256 i_input_967e = t258 ).
        t254 = t255.
        DATA(t259) = VALUE abap_bool( ).
        DATA(t260) = VALUE abap_bool( ).
        DATA(t261) = t254.
        t260 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t259 = t260.
        IF t260 = abap_true.
          DATA(t262) = VALUE abap_bool( ).
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t263.
          DATA t264 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t264.
          DATA t265 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t265.
          DATA(t266) = t254.
          t265 ?= t266.
          t264 = t265.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          DATA t268 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t268.
          DATA t269 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t269.
          DATA t270 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t270.
          DATA(t271) = t264.
          t270 = t271->options.
          t269 = t270->zlnt_view_read_sr_48b89cc62ab9( ).
          t268 = t269.
          DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t272.
          DATA(t273) = VALUE abap_bool( ).
          DATA(t274) = t268.
          IF t274 IS INITIAL.
            t273 = abap_true.
          ENDIF.
          IF t273 = abap_true.
            DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t275.
            t272 = t275.
          ELSE.
            DATA(t276) = VALUE string( ).
            DATA t277 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t277.
            DATA(t278) = t268.
            t277 = t278.
            t276 = t277->zlnt_view_read_sr_f361ef311f50( ).
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
          DATA(t287) = VALUE string( ).
          DATA(t288) = |Implicit or explicit index operation on hashed table is not |.
          t288 = t288 && |possible|.
          t287 = t288.
          DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t289.
          DATA(t290) = t2.
          t289 = t290->issues.
          DATA t291 TYPE REF TO zcl_lnt_issue.
          CLEAR t291.
          DATA(t292) = t2.
          DATA t293 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t293.
          DATA(t294) = t1.
          t293 = t294->get_first_token( ).
          DATA(t295) = t287.
          DATA t296 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t296.
          t291 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t292 i_token = t293 i_message_26cb = t295 i_fix = t296 ).
          t289->load( ).
          APPEND t291 TO t289->items.
          t289->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t297.
    DATA(t298) = t1.
    DATA(t299) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t297 = t298->find_direct_expressions( i_type_9913 = t299 ).
    DATA t300 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t300.
    DATA t301 TYPE REF TO object.
    CLEAR t301.
    DATA(t302) = VALUE i( ).
    DO.
      t297->load( ).
      IF t302 >= lines( t297->items ).
        EXIT.
      ENDIF.
      CLEAR t301.
      READ TABLE t297->items INDEX t302 + 1 INTO t301.
      t302 = t302 + 1.
      DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t303.
      CLEAR t300.
      IF t301 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t303 ?= t301.
        DATA t304 TYPE REF TO object.
        CLEAR t304.
        t304 = t303->as_ref( ).
        t300 ?= t304.
      ELSE.
        t300 ?= t301.
      ENDIF.
      DATA(t305) = VALUE abap_bool( ).
      DATA t306 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t306.
      DATA(t307) = abap_true.
      IF t307 = abap_true.
        DATA(t308) = t300.
        t306 = t308.
      ELSE.
        DATA t309 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t309.
        t306 = t309.
      ENDIF.
      DATA(t310) = t80.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t311.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      CLEAR t311.
      IF t306 IS BOUND.
        CLEAR t311.
        IF t306 IS BOUND.
          DATA t313 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t313.
          DATA t314 TYPE REF TO object.
          CLEAR t314.
          CLEAR t313.
          t314 = t306.
          TRY.
              t311 ?= t314.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t311 IS NOT BOUND.
            TRY.
                t313 ?= t306.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t313 IS BOUND.
              t311 = t313->source( ).
            ENDIF.
            IF t311 IS NOT BOUND.
              CREATE OBJECT t311.
              t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t311->oval = t306.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t312.
      IF t310 IS BOUND.
        CLEAR t312.
        IF t310 IS BOUND.
          DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t315.
          DATA t316 TYPE REF TO object.
          CLEAR t316.
          CLEAR t315.
          t316 = t310.
          TRY.
              t312 ?= t316.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t312 IS NOT BOUND.
            TRY.
                t315 ?= t310.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t315 IS BOUND.
              t312 = t315->source( ).
            ENDIF.
            IF t312 IS NOT BOUND.
              CREATE OBJECT t312.
              t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t312->oval = t310.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t311 IS BOUND.
        t305 = t311->strict_equals( t312 ).
      ELSE.
        t305 = xsdbool( t312 IS NOT BOUND ).
      ENDIF.
      IF t305 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t317 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t317.
      DATA t318 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t318.
      DATA(t319) = abap_true.
      IF t319 = abap_true.
        DATA(t320) = t300.
        t318 = t320.
      ELSE.
        DATA t321 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t321.
        t318 = t321.
      ENDIF.
      DATA(t322) = t2.
      DATA(t323) = t3.
      DATA t324 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t324.
      DATA t325 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t325.
      DATA t326 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t326.
      t317 = zcl_lnt_sy_source=>run_syntax( i_node = t318 i_input_967e = t322 i_target_type = t323 i_write_reference = t324 i_allow_generic_deference = t325 i_read_reference = t326 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d921_b60235c87e2b.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
