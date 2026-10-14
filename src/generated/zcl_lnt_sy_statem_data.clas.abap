* TS: src/abap/5_syntax/statements/data.ts:9:1 Data
CLASS zcl_lnt_sy_statem_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS is_name_too_long IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_only_digits IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS allow_only_digits_name IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statem_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t1.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    t8 = t9->find_first_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t7.
      t15 = t16.
      DATA(t17) = t2.
      t14 = zcl_lnt_sy_data_definition=>run_syntax( i_node = t15 i_input_967e = t17 ).
      t13 = t14.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t13.
      t20 = xsdbool( t21 IS BOUND ).
      t19 = t20.
      IF t20 = abap_true.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = VALUE string( ).
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t26 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t27) = t13.
        t26 = t27.
        t25 = t26.
        DATA(t28) = VALUE string( ).
        DATA t29 TYPE string.
        DATA t30 TYPE string.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t33) = t25.
        t32 = t33->token.
        t31 = t32.
        DATA t34 TYPE string.
        DATA(t35) = t31.
        t34 = t35->str.
        t30 = t34.
        t29 = t30.
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE string( ).
        DATA(t38) = t29.
        DATA(t39) = 0.
        DATA(t40) = 1.
        DATA(t41) = strlen( t38 ).
        IF t39 < 0.
          t39 = t39 + t41.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t41 OR t40 <= 0.
          CLEAR t37.
        ELSE.
          IF t40 > t41 - t39.
            t40 = t41 - t39.
          ENDIF.
          t37 = t38+t39(t40).
        ENDIF.
        DATA(t42) = |!|.
        t36 = xsdbool( t37 = t42 ).
        IF t36 = abap_true.
          DATA(t43) = VALUE string( ).
          DATA t44 TYPE string.
          DATA(t45) = t29.
          t44 = t45.
          DATA(t46) = VALUE string( ).
          DATA(t47) = t44.
          DATA(t48) = 1.
          DATA t49 TYPE i.
          DATA(t50) = t44.
          DATA(t51) = strlen( t50 ).
          t49 = t51.
          DATA(t52) = strlen( t47 ).
          IF t48 < 0.
            t48 = t48 + t52.
            IF t48 < 0.
              t48 = 0.
            ENDIF.
          ENDIF.
          IF t48 > t52 OR t49 <= 0.
            CLEAR t46.
          ELSE.
            IF t49 > t52 - t48.
              t49 = t52 - t48.
            ENDIF.
            t46 = t47+t48(t49).
          ENDIF.
          t43 = t46.
          t29 = t43.
        ENDIF.
        DATA(t53) = t29.
        t28 = t53.
        t24 = t28.
        t23 = t24.
        DATA t54 TYPE abap_bool.
        DATA t55 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t55.
        DATA(t56) = |^[0-9]+$|.
        DATA(t57) = ||.
        CREATE OBJECT t55 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t56 flags = t57.
        DATA(t58) = t23.
        t54 = t55->test( p0 = t58 ).
        t22 = t54.
        t19 = t22.
      ENDIF.
      t18 = t19.
      IF t19 = abap_true.
        DATA t59 TYPE abap_bool.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t1.
        DATA(t62) = t2.
        t60 = me->allow_only_digits_name( i_node = t61 i_input_967e = t62 ).
        DATA(t63) = abap_false.
        t59 = xsdbool( t60 = t63 ).
        t18 = t59.
      ENDIF.
      IF t18 = abap_true.
        DATA t64 TYPE string.
        DATA(t65) = |not possible to have a name with only digits|.
        t64 = t65.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t67) = t2.
        t66 = t67->issues.
        DATA t68 TYPE REF TO zcl_lnt_issue.
        DATA(t69) = t2.
        DATA t70 TYPE REF TO zcl_lnt_abstract_token.
        DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t73) = t13.
        t72 = t73.
        t71 = t72.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t75) = t71.
        t74 = t75->token.
        t70 = t74.
        DATA(t76) = t64.
        DATA t77 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t77.
        t68 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t69 i_token = t70 i_message_26cb = t76 i_fix = t77 ).
        APPEND t68 TO t66->items.
        DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_abstract_token.
          DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t84) = t13.
          t83 = t84.
          t82 = t83.
          DATA t85 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t86) = t82.
          t85 = t86->token.
          t81 = t85.
          DATA t87 TYPE string.
          DATA(t88) = t2.
          t87 = t88->filename.
          DATA t89 TYPE REF TO zcl_lnt_void_type.
          CLEAR t89.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          DATA(t91) = abap_true.
          IF t91 = abap_true.
            DATA(t92) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t93->has = abap_true.
            t93->value = t92.
            t90 = t93.
          ELSE.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t94.
            t90 = t94.
          ENDIF.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t89 = zcl_lnt_void_type=>get_db65( i_voided = t90 i_qualified_name = t95 ).
          DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          t80 = NEW zcl_lnt_typed_identifier( i_token = t81 i_filename = t87 i_type_9913 = t89 i_meta = t96 i_value = t97 ).
          t78 = t80.
        ELSE.
          DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t98.
          t78 = t98.
        ENDIF.
        result = t78.
        RETURN.
      ENDIF.
      DATA t99 TYPE abap_bool.
      DATA t100 TYPE abap_bool.
      DATA(t101) = t13.
      t100 = xsdbool( t101 IS BOUND ).
      t99 = t100.
      IF t100 = abap_true.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE string( ).
        DATA(t104) = VALUE string( ).
        DATA t105 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t107) = t13.
        t106 = t107.
        t105 = t106.
        DATA(t108) = VALUE string( ).
        DATA t109 TYPE string.
        DATA t110 TYPE string.
        DATA t111 TYPE REF TO zcl_lnt_abstract_token.
        DATA t112 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t113) = t105.
        t112 = t113->token.
        t111 = t112.
        DATA t114 TYPE string.
        DATA(t115) = t111.
        t114 = t115->str.
        t110 = t114.
        t109 = t110.
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = VALUE string( ).
        DATA(t118) = t109.
        DATA(t119) = 0.
        DATA(t120) = 1.
        DATA(t121) = strlen( t118 ).
        IF t119 < 0.
          t119 = t119 + t121.
          IF t119 < 0.
            t119 = 0.
          ENDIF.
        ENDIF.
        IF t119 > t121 OR t120 <= 0.
          CLEAR t117.
        ELSE.
          IF t120 > t121 - t119.
            t120 = t121 - t119.
          ENDIF.
          t117 = t118+t119(t120).
        ENDIF.
        DATA(t122) = |!|.
        t116 = xsdbool( t117 = t122 ).
        IF t116 = abap_true.
          DATA(t123) = VALUE string( ).
          DATA t124 TYPE string.
          DATA(t125) = t109.
          t124 = t125.
          DATA(t126) = VALUE string( ).
          DATA(t127) = t124.
          DATA(t128) = 1.
          DATA t129 TYPE i.
          DATA(t130) = t124.
          DATA(t131) = strlen( t130 ).
          t129 = t131.
          DATA(t132) = strlen( t127 ).
          IF t128 < 0.
            t128 = t128 + t132.
            IF t128 < 0.
              t128 = 0.
            ENDIF.
          ENDIF.
          IF t128 > t132 OR t129 <= 0.
            CLEAR t126.
          ELSE.
            IF t129 > t132 - t128.
              t129 = t132 - t128.
            ENDIF.
            t126 = t127+t128(t129).
          ENDIF.
          t123 = t126.
          t109 = t123.
        ENDIF.
        DATA(t133) = t109.
        t108 = t133.
        t104 = t108.
        t103 = t104.
        DATA t134 TYPE abap_bool.
        DATA t135 TYPE i.
        DATA(t136) = t103.
        DATA(t137) = strlen( t136 ).
        t135 = t137.
        DATA(t138) = 30.
        t134 = xsdbool( t135 > t138 ).
        t102 = t134.
        t99 = t102.
      ENDIF.
      IF t99 = abap_true.
        DATA(t139) = VALUE string( ).
        DATA(t140) = VALUE string( ).
        DATA(t141) = |DATA name too long, |.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t145) = t13.
        t144 = t145.
        t143 = t144.
        DATA(t146) = VALUE string( ).
        DATA t147 TYPE string.
        DATA t148 TYPE string.
        DATA t149 TYPE REF TO zcl_lnt_abstract_token.
        DATA t150 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t151) = t143.
        t150 = t151->token.
        t149 = t150.
        DATA t152 TYPE string.
        DATA(t153) = t149.
        t152 = t153->str.
        t148 = t152.
        t147 = t148.
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = VALUE string( ).
        DATA(t156) = t147.
        DATA(t157) = 0.
        DATA(t158) = 1.
        DATA(t159) = strlen( t156 ).
        IF t157 < 0.
          t157 = t157 + t159.
          IF t157 < 0.
            t157 = 0.
          ENDIF.
        ENDIF.
        IF t157 > t159 OR t158 <= 0.
          CLEAR t155.
        ELSE.
          IF t158 > t159 - t157.
            t158 = t159 - t157.
          ENDIF.
          t155 = t156+t157(t158).
        ENDIF.
        DATA(t160) = |!|.
        t154 = xsdbool( t155 = t160 ).
        IF t154 = abap_true.
          DATA(t161) = VALUE string( ).
          DATA t162 TYPE string.
          DATA(t163) = t147.
          t162 = t163.
          DATA(t164) = VALUE string( ).
          DATA(t165) = t162.
          DATA(t166) = 1.
          DATA t167 TYPE i.
          DATA(t168) = t162.
          DATA(t169) = strlen( t168 ).
          t167 = t169.
          DATA(t170) = strlen( t165 ).
          IF t166 < 0.
            t166 = t166 + t170.
            IF t166 < 0.
              t166 = 0.
            ENDIF.
          ENDIF.
          IF t166 > t170 OR t167 <= 0.
            CLEAR t164.
          ELSE.
            IF t167 > t170 - t166.
              t167 = t170 - t166.
            ENDIF.
            t164 = t165+t166(t167).
          ENDIF.
          t161 = t164.
          t147 = t161.
        ENDIF.
        DATA(t171) = t147.
        t146 = t171.
        t142 = t146.
        DATA(t172) = strlen( t141 ).
        t140 = |{ t141 }{ t142 }|.
        t139 = t140.
        DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t174) = t2.
        t173 = t174->issues.
        DATA t175 TYPE REF TO zcl_lnt_issue.
        DATA(t176) = t2.
        DATA t177 TYPE REF TO zcl_lnt_abstract_token.
        DATA t178 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t179 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t180) = t13.
        t179 = t180.
        t178 = t179.
        DATA t181 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t182) = t178.
        t181 = t182->token.
        t177 = t181.
        DATA(t183) = t139.
        DATA t184 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t184.
        t175 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t176 i_token = t177 i_message_26cb = t183 i_fix = t184 ).
        APPEND t175 TO t173->items.
      ENDIF.
      DATA(t185) = VALUE abap_bool( ).
      DATA(t186) = VALUE abap_bool( ).
      DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t187.
      DATA t188 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t188.
      DATA t189 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t189.
      DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t191) = t13.
      t190 = t191.
      DATA t192 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t192.
      DATA(t193) = VALUE abap_bool( ).
      DATA(t194) = t190.
      IF t194 IS INITIAL.
        t193 = abap_true.
      ENDIF.
      IF t193 = abap_true.
        DATA t195 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t195.
        t192 = t195.
      ELSE.
        DATA t196 TYPE REF TO zcl_lnt_abstract_type.
        DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t198 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t199) = t190.
        t198 = t199.
        t197 = t198.
        DATA t200 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t201) = t197.
        t200 = t201->type_cba0.
        t196 = t200.
        t192 = t196.
      ENDIF.
      t189 = t192.
      t188 = t189.
      DATA t202 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t202.
      DATA(t203) = VALUE abap_bool( ).
      DATA(t204) = t188.
      IF t204 IS INITIAL.
        t203 = abap_true.
      ENDIF.
      IF t203 = abap_true.
        DATA t205 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t205.
        t202 = t205.
      ELSE.
        DATA t206 TYPE abap_bool.
        DATA t207 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t208) = t188.
        t207 = t208.
        t206 = t207->is_generic( ).
        DATA(t209) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t209->has = abap_true.
        t209->value = t206.
        t202 = t209.
      ENDIF.
      t187 = t202.
      DATA t210 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t210.
      DATA(t211) = abap_true.
      IF t211 = abap_true.
        DATA(t212) = abap_true.
        DATA(t213) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t213->has = abap_true.
        t213->value = t212.
        t210 = t213.
      ELSE.
        DATA t214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t214.
        t210 = t214.
      ENDIF.
      DATA(t215) = VALUE abap_bool( ).
      DATA(t216) = VALUE abap_bool( ).
      IF t187 IS BOUND.
        t215 = t187->has.
      ENDIF.
      IF t210 IS BOUND.
        t216 = t210->has.
      ENDIF.
      IF t215 = t216.
        IF t215 = abap_false.
          t186 = abap_true.
        ELSEIF t187->value = t210->value.
          t186 = abap_true.
        ENDIF.
      ENDIF.
      t185 = t186.
      IF t186 = abap_true.
        DATA(t217) = VALUE abap_bool( ).
        DATA t218 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t218.
        DATA t219 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t219.
        DATA t220 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t220.
        DATA t221 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t223) = t13.
        t222 = t223.
        t221 = t222.
        DATA t224 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t224.
        DATA(t225) = VALUE abap_bool( ).
        DATA(t226) = t221.
        IF t226 IS INITIAL.
          t225 = abap_true.
        ENDIF.
        IF t225 = abap_true.
          DATA t227 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t227.
          t224 = t227.
        ELSE.
          DATA t228 TYPE REF TO zcl_lnt_abstract_type.
          DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t230) = t221.
          t229 = t230.
          DATA t231 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t232) = t229.
          t231 = t232->type_cba0.
          t228 = t231.
          t224 = t228.
        ENDIF.
        t220 = t224.
        t219 = t220.
        DATA t233 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t233.
        DATA(t234) = VALUE abap_bool( ).
        DATA(t235) = t219.
        IF t235 IS INITIAL.
          t234 = abap_true.
        ENDIF.
        IF t234 = abap_true.
          DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t236.
          t233 = t236.
        ELSE.
          DATA t237 TYPE abap_bool.
          DATA t238 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t239) = t219.
          t238 = t239.
          t237 = t238->contains_void( ).
          DATA(t240) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t240->has = abap_true.
          t240->value = t237.
          t233 = t240.
        ENDIF.
        t218 = t233.
        DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t241.
        DATA(t242) = abap_true.
        IF t242 = abap_true.
          DATA(t243) = abap_false.
          DATA(t244) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t244->has = abap_true.
          t244->value = t243.
          t241 = t244.
        ELSE.
          DATA t245 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t245.
          t241 = t245.
        ENDIF.
        DATA(t246) = VALUE abap_bool( ).
        DATA(t247) = VALUE abap_bool( ).
        IF t218 IS BOUND.
          t246 = t218->has.
        ENDIF.
        IF t241 IS BOUND.
          t247 = t241->has.
        ENDIF.
        IF t246 = t247.
          IF t246 = abap_false.
            t217 = abap_true.
          ELSEIF t218->value = t241->value.
            t217 = abap_true.
          ENDIF.
        ENDIF.
        t185 = t217.
      ENDIF.
      IF t185 = abap_true.
        DATA(t248) = VALUE string( ).
        DATA(t249) = VALUE string( ).
        DATA(t250) = |DATA definition cannot be generic, |.
        DATA(t251) = VALUE string( ).
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA t254 TYPE REF TO zcl_lnt_expression_node.
        DATA(t255) = t3.
        t254 = t255.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA(t257) = VALUE abap_bool( ).
        DATA(t258) = t254.
        IF t258 IS INITIAL.
          t257 = abap_true.
        ENDIF.
        IF t257 = abap_true.
          DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t259.
          t256 = t259.
        ELSE.
          DATA t260 TYPE string.
          DATA t261 TYPE REF TO zcl_lnt_expression_node.
          DATA(t262) = t254.
          t261 = t262.
          t260 = t261->concat_tokens( ).
          DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t263->has = abap_true.
          t263->value = t260.
          t256 = t263.
        ENDIF.
        t253 = t256.
        t252 = t253.
        DATA(t264) = VALUE string( ).
        DATA(t265) = VALUE abap_bool( ).
        DATA(t266) = t252.
        IF t266 IS INITIAL.
          t265 = abap_true.
        ELSEIF t266->has = abap_false.
          t265 = abap_true.
        ENDIF.
        IF t265 = abap_true.
          DATA(t267) = |undefined|.
          t264 = t267.
        ELSE.
          DATA t268 TYPE string.
          DATA(t269) = t252.
          t268 = t269->value.
          t264 = t268.
        ENDIF.
        t251 = t264.
        DATA(t270) = strlen( t250 ).
        t249 = |{ t250 }{ t251 }|.
        t248 = t249.
        DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t272) = t2.
        t271 = t272->issues.
        DATA t273 TYPE REF TO zcl_lnt_issue.
        DATA(t274) = t2.
        DATA t275 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t276) = t1.
        t275 = t276->get_first_token( ).
        DATA(t277) = t248.
        DATA t278 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t278.
        t273 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t274 i_token = t275 i_message_26cb = t277 i_fix = t278 ).
        APPEND t273 TO t271->items.
        DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t279.
        DATA(t280) = abap_true.
        IF t280 = abap_true.
          DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t281.
          DATA t282 TYPE REF TO zcl_lnt_abstract_token.
          DATA t283 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t284 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t285) = t13.
          t284 = t285.
          t283 = t284.
          DATA t286 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t287) = t283.
          t286 = t287->token.
          t282 = t286.
          DATA t288 TYPE string.
          DATA(t289) = t2.
          t288 = t289->filename.
          DATA t290 TYPE REF TO zcl_lnt_void_type.
          CLEAR t290.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t291.
          DATA(t292) = abap_true.
          IF t292 = abap_true.
            DATA(t293) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t294->has = abap_true.
            t294->value = t293.
            t291 = t294.
          ELSE.
            DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t295.
            t291 = t295.
          ENDIF.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          t290 = zcl_lnt_void_type=>get_db65( i_voided = t291 i_qualified_name = t296 ).
          DATA t297 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t297.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          t281 = NEW zcl_lnt_typed_identifier( i_token = t282 i_filename = t288 i_type_9913 = t290 i_meta = t297 i_value = t298 ).
          t279 = t281.
        ELSE.
          DATA t299 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t299.
          t279 = t299.
        ENDIF.
        result = t279.
        RETURN.
      ENDIF.
      DATA(t300) = t13.
      result = t300.
      RETURN.
    ENDIF.
    DATA t301 TYPE abap_bool.
    DATA(t302) = t3.
    t301 = xsdbool( t302 IS BOUND ).
    IF t301 = abap_true.
      DATA t303 TYPE abap_bool.
      DATA t304 TYPE abap_bool.
      DATA t305 TYPE string.
      DATA t306 TYPE string.
      DATA t307 TYPE REF TO zcl_lnt_expression_node.
      DATA(t308) = t3.
      t307 = t308.
      t306 = t307->concat_tokens( ).
      t305 = t306.
      DATA t309 TYPE abap_bool.
      DATA t310 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t310.
      DATA(t311) = |^[0-9]+$|.
      DATA(t312) = ||.
      CREATE OBJECT t310 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t311 flags = t312.
      DATA(t313) = t305.
      t309 = t310->test( p0 = t313 ).
      t304 = t309.
      t303 = t304.
      IF t304 = abap_true.
        DATA t314 TYPE abap_bool.
        DATA t315 TYPE abap_bool.
        DATA(t316) = t1.
        DATA(t317) = t2.
        t315 = me->allow_only_digits_name( i_node = t316 i_input_967e = t317 ).
        DATA(t318) = abap_false.
        t314 = xsdbool( t315 = t318 ).
        t303 = t314.
      ENDIF.
      IF t303 = abap_true.
        DATA t319 TYPE string.
        DATA(t320) = |not possible to have a name with only digits|.
        t319 = t320.
        DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t322) = t2.
        t321 = t322->issues.
        DATA t323 TYPE REF TO zcl_lnt_issue.
        DATA(t324) = t2.
        DATA t325 TYPE REF TO zcl_lnt_abstract_token.
        DATA t326 TYPE REF TO zcl_lnt_expression_node.
        DATA(t327) = t3.
        t326 = t327.
        t325 = t326->get_first_token( ).
        DATA(t328) = t319.
        DATA t329 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t329.
        t323 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t324 i_token = t325 i_message_26cb = t328 i_fix = t329 ).
        APPEND t323 TO t321->items.
      ENDIF.
      DATA t330 TYPE abap_bool.
      DATA t331 TYPE string.
      DATA t332 TYPE string.
      DATA t333 TYPE REF TO zcl_lnt_expression_node.
      DATA(t334) = t3.
      t333 = t334.
      t332 = t333->concat_tokens( ).
      t331 = t332.
      DATA t335 TYPE abap_bool.
      DATA t336 TYPE i.
      DATA(t337) = t331.
      DATA(t338) = strlen( t337 ).
      t336 = t338.
      DATA(t339) = 30.
      t335 = xsdbool( t336 > t339 ).
      t330 = t335.
      IF t330 = abap_true.
        DATA t340 TYPE string.
        DATA t341 TYPE string.
        DATA(t342) = |DATA name too long, |.
        DATA t343 TYPE string.
        DATA t344 TYPE REF TO zcl_lnt_expression_node.
        DATA(t345) = t3.
        t344 = t345.
        t343 = t344->concat_tokens( ).
        DATA(t346) = strlen( t342 ).
        t341 = |{ t342 }{ t343 }|.
        t340 = t341.
        DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t348) = t2.
        t347 = t348->issues.
        DATA t349 TYPE REF TO zcl_lnt_issue.
        DATA(t350) = t2.
        DATA t351 TYPE REF TO zcl_lnt_abstract_token.
        DATA t352 TYPE REF TO zcl_lnt_expression_node.
        DATA(t353) = t3.
        t352 = t353.
        t351 = t352->get_first_token( ).
        DATA(t354) = t340.
        DATA t355 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t355.
        t349 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t350 i_token = t351 i_message_26cb = t354 i_fix = t355 ).
        APPEND t349 TO t347->items.
      ENDIF.
      DATA t356 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t356.
      DATA(t357) = abap_true.
      IF t357 = abap_true.
        DATA t358 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t359 TYPE REF TO zcl_lnt_abstract_token.
        DATA t360 TYPE REF TO zcl_lnt_expression_node.
        DATA(t361) = t3.
        t360 = t361.
        t359 = t360->get_first_token( ).
        DATA t362 TYPE string.
        DATA(t363) = t2.
        t362 = t363->filename.
        DATA t364 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t365) = |data, fallback|.
        DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t366.
        t364 = NEW zcl_lnt_unknown_type( i_error = t365 i_qualified_name = t366 ).
        DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t367.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        t358 = NEW zcl_lnt_typed_identifier( i_token = t359 i_filename = t362 i_type_9913 = t364 i_meta = t367 i_value = t368 ).
        t356 = t358.
      ELSE.
        DATA t369 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t369.
        t356 = t369.
      ENDIF.
      result = t356.
      RETURN.
    ENDIF.
    DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t370.
    result = t370.

  ENDMETHOD.

  METHOD is_name_too_long.
    DATA(t1) = i_name.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t5.
    DATA(t6) = 30.
    t2 = xsdbool( t3 > t6 ).
    result = t2.

  ENDMETHOD.

  METHOD is_only_digits.
    DATA(t1) = i_name.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = |^[0-9]+$|.
    DATA(t5) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    DATA(t6) = t1.
    t2 = t3->test( p0 = t6 ).
    result = t2.

  ENDMETHOD.

  METHOD allow_only_digits_name.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/statements/data.ts:57|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d864_56076cdd075d.
  ENDMETHOD.
ENDCLASS.
