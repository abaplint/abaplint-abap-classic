* TS: src/abap/5_syntax/expressions/for.ts:15:1 For
CLASS zcl_lnt_sy_for DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_for IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    DATA(t4) = abap_false.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d195_e320b2253f20.
    t6 = t7->find_direct_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t10 = t11->find_direct_expressions( i_type_9913 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    DATA(t18) = |GROUPS|.
    t16 = t17->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t15.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = t15.
      t24 = t25.
      t23 = t24->get_first_token( ).
      t19 = t23.
    ENDIF.
    t14 = t19.
    t13 = t14.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = t1.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9.
    t27 = t28->find_direct_expression( i_type_9913 = t29 ).
    t26 = t27.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE i.
    DATA(t36) = t5.
    t35 = lines( t36->items ).
    DATA(t37) = 0.
    t34 = xsdbool( t35 > t37 ).
    t33 = t34.
    IF t34 = abap_false.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE i.
      DATA(t40) = t9.
      t39 = lines( t40->items ).
      DATA(t41) = 0.
      t38 = xsdbool( t39 > t41 ).
      t33 = t38.
    ENDIF.
    t32 = t33.
    IF t33 = abap_false.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = t26.
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t45 = t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t43.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      t47 = xsdbool( t48 = abap_false ).
      t42 = t47.
      t32 = t42.
    ENDIF.
    t31 = t32.
    IF t32 = abap_false.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t52) = t13.
      t51 = t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      t53 = t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t51.
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      t55 = xsdbool( t56 = abap_false ).
      t50 = t55.
      t31 = t50.
    ENDIF.
    t30 = t31.
    DATA(t58) = t30.
    IF t58 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_current_scope.
      DATA t60 TYPE REF TO zcl_lnt_current_scope.
      DATA(t61) = t2.
      t60 = t61->scope.
      t59 = t60.
      DATA t62 TYPE REF TO zcl_lnt_position.
      DATA t63 TYPE REF TO zcl_lnt_position.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t66) = t1.
      t65 = t66->get_first_token( ).
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_position.
      DATA(t68) = t64.
      t67 = t68->start.
      t63 = t67.
      t62 = t63.
      DATA t69 TYPE string.
      DATA t70 TYPE string.
      DATA(t71) = t2.
      t70 = t71->filename.
      t69 = t70.
      DATA t72 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t73 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t74) = |for|.
      DATA(t75) = |FOR|.
      DATA(t76) = t69.
      DATA(t77) = t62.
      DATA t78 TYPE REF TO zcl_lnt_position.
      CLEAR t78.
      t73 = NEW zcl_lnt_iscope_identifier( i_stype = t74 i_sname = t75 i_filename = t76 i_start = t77 i_end = t78 ).
      t72 = t73.
      DATA(t79) = VALUE abap_bool( ).
      DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t82) = t59.
      t81 = t82->current.
      t80 = t81.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      t83 = t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t80.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ENDIF.
      t79 = t85.
      IF t79 = abap_true.
        DATA(t87) = t59.
        DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t88.
        DATA(t89) = abap_true.
        IF t89 = abap_true.
          DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t91) = t72.
          DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t92.
          t90 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t91 i_parent = t92 ).
          t88 = t90.
        ELSE.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t93.
          t88 = t93.
        ENDIF.
        t87->current = t88.
      ELSE.
        DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t97) = t59.
        t96 = t97->current.
        t95 = t96.
        t94 = t95.
        DATA(t98) = t59.
        DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t101.
          DATA(t102) = t72.
          DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t103.
          DATA(t104) = abap_true.
          IF t104 = abap_true.
            DATA(t105) = t94.
            t103 = t105.
          ELSE.
            DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t106.
            t103 = t106.
          ENDIF.
          t101 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t102 i_parent = t103 ).
          t99 = t101.
        ELSE.
          DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t107.
          t99 = t107.
        ENDIF.
        t98->current = t99.
        DATA(t108) = t94.
        DATA t109 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t111) = t59.
        t110 = t111->current.
        t109 = t110.
        t108->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t109 ).
      ENDIF.
      DATA(t112) = abap_true.
      t3 = t112.
    ENDIF.
    DATA(t113) = t5.
    DATA t114 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t114.
    DATA t115 TYPE REF TO object.
    CLEAR t115.
    LOOP AT t113->items INTO t115.
      t114 ?= t115.
      DATA t116 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t116.
      DATA(t117) = abap_true.
      IF t117 = abap_true.
        DATA(t118) = t114.
        t116 = t118.
      ELSE.
        DATA t119 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t119.
        t116 = t119.
      ENDIF.
      DATA(t120) = t2.
      zcl_lnt_sy_inln_lp_dfntn=>run_syntax( i_node = t116 i_input_967e = t120 ).
    ENDLOOP.
    DATA(t121) = t9.
    DATA t122 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t122.
    DATA t123 TYPE REF TO object.
    CLEAR t123.
    LOOP AT t121->items INTO t123.
      t122 ?= t123.
      DATA t124 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t125) = t122.
      DATA(t126) = t2.
      DATA t127 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t127.
      t124 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t125 i_input_967e = t126 i_target_type = t127 ).
    ENDLOOP.
    DATA(t128) = VALUE abap_bool( ).
    DATA t129 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t130) = t13.
    t129 = t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    t131 = t132.
    DATA(t133) = VALUE abap_bool( ).
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = t129.
    IF t135 IS INITIAL.
      t134 = abap_true.
    ENDIF.
    t133 = xsdbool( t134 = abap_false ).
    t128 = t133.
    IF t128 = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_void_type.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_void_type.
      CLEAR t137.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t138.
      DATA(t139) = abap_true.
      IF t139 = abap_true.
        DATA(t140) = |todoGroupBy|.
        DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t141->has = abap_true.
        t141->value = t140.
        t138 = t141.
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t138 = t142.
      ENDIF.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      t137 = zcl_lnt_void_type=>get_db65( i_voided = t138 i_qualified_name = t143 ).
      t136 = t137.
      DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t144.
      DATA t145 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t145.
      DATA t146 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t147) = t13.
      t146 = t147.
      DATA t148 TYPE string.
      DATA(t149) = t2.
      t148 = t149->filename.
      DATA(t150) = t136.
      DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t151.
      DATA(t152) = abap_true.
      IF t152 = abap_true.
        DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t155.
        t154 = t155.
        DATA(t156) = t154.
        DATA(t157) = |inline|.
        APPEND t157 TO t156->items.
        DATA(t158) = t154.
        t153 = t158.
        t151 = t153.
      ELSE.
        DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t159.
        t151 = t159.
      ENDIF.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      t145 = NEW zcl_lnt_typed_identifier( i_token = t146 i_filename = t148 i_type_9913 = t150 i_meta = t151 i_value = t160 ).
      t144 = t145.
      DATA t161 TYPE REF TO zcl_lnt_current_scope.
      DATA t162 TYPE REF TO zcl_lnt_current_scope.
      DATA(t163) = t2.
      t162 = t163->scope.
      t161 = t162.
      DATA t164 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t165.
      DATA(t166) = abap_true.
      IF t166 = abap_true.
        DATA(t167) = t144.
        t165 = t167.
      ELSE.
        DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t168.
        t165 = t168.
      ENDIF.
      t164 = t165.
      DATA(t169) = VALUE abap_bool( ).
      DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t171) = t164.
      t170 = t171.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      t172 = t173.
      DATA(t174) = VALUE abap_bool( ).
      DATA(t175) = t170.
      IF t175 IS INITIAL.
        t174 = abap_true.
      ENDIF.
      t169 = t174.
      IF t169 = abap_true.
      ELSE.
        DATA(t176) = t161.
        DATA(t177) = VALUE string( ).
        DATA t178 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t179 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t180) = t164.
        t179 = t180.
        t178 = t179.
        DATA(t181) = VALUE string( ).
        DATA t182 TYPE string.
        DATA t183 TYPE string.
        DATA t184 TYPE REF TO zcl_lnt_abstract_token.
        DATA t185 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t186) = t178.
        t185 = t186->token.
        t184 = t185.
        DATA t187 TYPE string.
        DATA(t188) = t184.
        t187 = t188->str.
        t183 = t187.
        t182 = t183.
        DATA(t189) = VALUE abap_bool( ).
        DATA(t190) = VALUE string( ).
        DATA(t191) = t182.
        DATA(t192) = 0.
        DATA(t193) = 1.
        DATA(t194) = strlen( t191 ).
        IF t192 < 0.
          t192 = t192 + t194.
          IF t192 < 0.
            t192 = 0.
          ENDIF.
        ENDIF.
        IF t192 > t194 OR t193 <= 0.
          CLEAR t190.
        ELSE.
          IF t193 > t194 - t192.
            t193 = t194 - t192.
          ENDIF.
          t190 = t191+t192(t193).
        ENDIF.
        DATA(t195) = |!|.
        t189 = xsdbool( t190 = t195 ).
        IF t189 = abap_true.
          DATA(t196) = VALUE string( ).
          DATA t197 TYPE string.
          DATA(t198) = t182.
          t197 = t198.
          DATA(t199) = VALUE string( ).
          DATA(t200) = t197.
          DATA(t201) = 1.
          DATA t202 TYPE i.
          DATA(t203) = t197.
          DATA(t204) = strlen( t203 ).
          t202 = t204.
          DATA(t205) = strlen( t200 ).
          IF t201 < 0.
            t201 = t201 + t205.
            IF t201 < 0.
              t201 = 0.
            ENDIF.
          ENDIF.
          IF t201 > t205 OR t202 <= 0.
            CLEAR t199.
          ELSE.
            IF t202 > t205 - t201.
              t202 = t205 - t201.
            ENDIF.
            t199 = t200+t201(t202).
          ENDIF.
          t196 = t199.
          t182 = t196.
        ENDIF.
        DATA(t206) = t182.
        t181 = t206.
        t177 = t181.
        DATA t207 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t208) = t164.
        t207 = t208.
        t176->add_named_identifier( i_name = t177 i_identifier = t207 ).
      ENDIF.
      DATA t209 TYPE REF TO zcl_lnt_current_scope.
      DATA(t210) = t2.
      t209 = t210->scope.
      DATA t211 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t211.
      DATA(t212) = abap_true.
      IF t212 = abap_true.
        DATA t213 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t214) = t13.
        t213 = t214.
        t211 = t213.
      ELSE.
        DATA t215 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t215.
        t211 = t215.
      ENDIF.
      DATA(t216) = t144.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t218) = |Write To|.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t217->sval = t218.
      DATA t219 TYPE string.
      DATA(t220) = t2.
      t219 = t220->filename.
      DATA t221 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t221.
      t209->add_reference( i_usage = t211 i_referencing = t216 i_type_9913 = t217 i_filename = t219 i_extra = t221 ).
    ENDIF.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t223) = t1.
    DATA(t224) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t222 = t223->find_direct_expressions( i_type_9913 = t224 ).
    DATA t225 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t225.
    DATA t226 TYPE REF TO object.
    CLEAR t226.
    LOOP AT t222->items INTO t226.
      t225 ?= t226.
      DATA t227 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t227.
      DATA t228 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t228.
      DATA(t229) = abap_true.
      IF t229 = abap_true.
        DATA(t230) = t225.
        t228 = t230.
      ELSE.
        DATA t231 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t231.
        t228 = t231.
      ENDIF.
      DATA(t232) = t2.
      DATA t233 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t233.
      DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t234.
      DATA t235 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t236.
      t227 = zcl_lnt_sy_source=>run_syntax( i_node = t228 i_input_967e = t232 i_target_type = t233 i_write_reference = t234 i_allow_generic_deference = t235 i_read_reference = t236 ).
    ENDLOOP.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t238) = t1.
    DATA(t239) = zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56.
    t237 = t238->find_direct_expressions( i_type_9913 = t239 ).
    DATA t240 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t240.
    DATA t241 TYPE REF TO object.
    CLEAR t241.
    LOOP AT t237->items INTO t241.
      t240 ?= t241.
      DATA(t242) = t240.
      DATA(t243) = t2.
      DATA t244 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t244.
      DATA t245 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t245.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t242 i_input_967e = t243 i_left_type = t244 i_right_type = t245 ).
    ENDLOOP.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t247) = t1.
    DATA(t248) = zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421.
    t246 = t247->find_direct_expressions( i_type_9913 = t248 ).
    DATA t249 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t249.
    DATA t250 TYPE REF TO object.
    CLEAR t250.
    LOOP AT t246->items INTO t250.
      t249 ?= t250.
      DATA(t251) = t249.
      DATA(t252) = t2.
      zcl_lnt_sy_cond=>run_syntax( i_node = t251 i_input_967e = t252 ).
    ENDLOOP.
    DATA t253 TYPE abap_bool.
    DATA(t254) = t26.
    t253 = xsdbool( t254 IS BOUND ).
    IF t253 = abap_true.
      DATA(t255) = VALUE abap_bool( ).
      DATA t256 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t256.
      DATA(t257) = abap_true.
      IF t257 = abap_true.
        DATA t258 TYPE REF TO zcl_lnt_expression_node.
        DATA(t259) = t26.
        t258 = t259.
        t256 = t258.
      ELSE.
        DATA t260 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t260.
        t256 = t260.
      ENDIF.
      DATA(t261) = t2.
      DATA t262 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t262.
      DATA(t263) = abap_true.
      IF t263 = abap_true.
        DATA(t264) = abap_true.
        DATA(t265) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t265->has = abap_true.
        t265->value = t264.
        t262 = t265.
      ELSE.
        DATA t266 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t266.
        t262 = t266.
      ENDIF.
      t255 = zcl_lnt_sy_let=>run_syntax( i_node = t256 i_input_967e = t261 i_skip_scope = t262 ).
    ENDIF.
    DATA(t267) = t3.
    result = t267.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d785_a836bd58ff2c.
  ENDMETHOD.
ENDCLASS.
