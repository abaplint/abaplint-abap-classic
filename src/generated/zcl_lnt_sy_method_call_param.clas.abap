* TS: src/abap/5_syntax/expressions/method_call_param.ts:14:1 MethodCallParam
CLASS zcl_lnt_sy_method_call_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_param IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t7) = t1.
    t6 = t7->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_st_method_call_param ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE string.
      DATA(t9) = |MethodCallParam, unexpected input|.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t11) = t2.
      t10 = t11->issues.
      DATA t12 TYPE REF TO zcl_lnt_issue.
      DATA(t13) = t2.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t15) = t1.
      t14 = t15->get_first_token( ).
      DATA(t16) = t8.
      DATA t17 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t17.
      t12 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t13 i_token = t14 i_message_26cb = t16 i_fix = t17 ).
      APPEND t12 TO t10->items.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t22) = t1.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = t21.
    t23 = t24->children.
    t20 = t23.
    t19 ?= t20.
    t18 = t19.
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE abap_bool.
    DATA t27 TYPE i.
    DATA(t28) = t18.
    t27 = lines( t28->items ).
    DATA(t29) = 2.
    t26 = xsdbool( t27 < t29 ).
    t25 = t26.
    IF t26 = abap_false.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE i.
      DATA(t32) = t18.
      t31 = lines( t32->items ).
      DATA(t33) = 3.
      t30 = xsdbool( t31 > t33 ).
      t25 = t30.
    ENDIF.
    IF t25 = abap_true.
      DATA t34 TYPE string.
      DATA(t35) = |MethodCallParam, unexpected child length|.
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
      APPEND t38 TO t36->items.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t46) = t18.
    DATA t47 TYPE REF TO object.
    CLEAR t47.
    READ TABLE t46->items INDEX 2 INTO t47.
    t45 ?= t47.
    t44 = t45.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE abap_bool.
    DATA t50 TYPE REF TO object.
    DATA(t51) = t44.
    t50 = t51->get_db65( ).
    t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_w_paren_right ).
    t48 = t49.
    IF t49 = abap_false.
      DATA t52 TYPE abap_bool.
      DATA t53 TYPE REF TO object.
      DATA(t54) = t44.
      t53 = t54->get_db65( ).
      t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_w_paren_right_w ).
      t48 = t52.
    ENDIF.
    IF t48 = abap_true.
      DATA t55 TYPE abap_bool.
      DATA t56 TYPE abap_bool.
      DATA(t57) = t3.
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_void_type ).
      t55 = xsdbool( t56 = abap_false ).
      IF t55 = abap_true.
        DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t60 TYPE REF TO zif_lnt_method_parameters.
        DATA t61 TYPE REF TO zif_lnt_method_definition.
        DATA(t62) = t3.
        t61 ?= t62.
        t60 = t61->get_parameters( ).
        t59 = t60->get_required_parameters( ).
        t58 = t59.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE i.
        DATA(t65) = t58.
        t64 = lines( t65->items ).
        DATA(t66) = 0.
        t63 = xsdbool( t64 > t66 ).
        IF t63 = abap_true.
          DATA(t67) = VALUE string( ).
          DATA(t68) = VALUE string( ).
          DATA(t69) = VALUE string( ).
          DATA(t70) = |Parameter "|.
          DATA(t71) = VALUE string( ).
          DATA t72 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t74) = t58.
          DATA t75 TYPE REF TO object.
          CLEAR t75.
          READ TABLE t74->items INDEX 1 INTO t75.
          t73 ?= t75.
          t72 = t73.
          DATA(t76) = VALUE string( ).
          DATA t77 TYPE string.
          DATA t78 TYPE string.
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          DATA t80 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t81) = t72.
          t80 = t81->token.
          t79 = t80.
          DATA t82 TYPE string.
          DATA(t83) = t79.
          t82 = t83->str.
          t78 = t82.
          t77 = t78.
          DATA(t84) = VALUE abap_bool( ).
          DATA(t85) = VALUE string( ).
          DATA(t86) = t77.
          DATA(t87) = 0.
          DATA(t88) = 1.
          DATA(t89) = strlen( t86 ).
          IF t87 < 0.
            t87 = t87 + t89.
            IF t87 < 0.
              t87 = 0.
            ENDIF.
          ENDIF.
          IF t87 > t89 OR t88 <= 0.
            CLEAR t85.
          ELSE.
            IF t88 > t89 - t87.
              t88 = t89 - t87.
            ENDIF.
            t85 = t86+t87(t88).
          ENDIF.
          DATA(t90) = |!|.
          t84 = xsdbool( t85 = t90 ).
          IF t84 = abap_true.
            DATA(t91) = VALUE string( ).
            DATA t92 TYPE string.
            DATA(t93) = t77.
            t92 = t93.
            DATA(t94) = VALUE string( ).
            DATA(t95) = t92.
            DATA(t96) = 1.
            DATA t97 TYPE i.
            DATA(t98) = t92.
            DATA(t99) = strlen( t98 ).
            t97 = t99.
            DATA(t100) = strlen( t95 ).
            IF t96 < 0.
              t96 = t96 + t100.
              IF t96 < 0.
                t96 = 0.
              ENDIF.
            ENDIF.
            IF t96 > t100 OR t97 <= 0.
              CLEAR t94.
            ELSE.
              IF t97 > t100 - t96.
                t97 = t100 - t96.
              ENDIF.
              t94 = t95+t96(t97).
            ENDIF.
            t91 = t94.
            t77 = t91.
          ENDIF.
          DATA(t101) = t77.
          t76 = t101.
          t71 = t76.
          DATA(t102) = strlen( t70 ).
          t69 = |{ t70 }{ t71 }|.
          DATA(t103) = |" must be supplied|.
          DATA(t104) = strlen( t69 ).
          t68 = |{ t69 }{ t103 }|.
          t67 = t68.
          DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t106) = t2.
          t105 = t106->issues.
          DATA t107 TYPE REF TO zcl_lnt_issue.
          DATA(t108) = t2.
          DATA t109 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t110) = t1.
          t109 = t110->get_first_token( ).
          DATA(t111) = t67.
          DATA t112 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t112.
          t107 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t108 i_token = t109 i_message_26cb = t111 i_fix = t112 ).
          APPEND t107 TO t105->items.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t113 TYPE abap_bool.
      DATA t114 TYPE abap_bool.
      DATA(t115) = t44.
      t114 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_expression_node ).
      t113 = t114.
      IF t114 = abap_true.
        DATA t116 TYPE abap_bool.
        DATA t117 TYPE abap_bool.
        DATA t118 TYPE REF TO zif_lnt_statement_runnable.
        DATA t119 TYPE REF TO zcl_lnt_expression_node.
        DATA(t120) = t44.
        DATA t121 TYPE REF TO object.
        t121 = t120.
        t119 ?= t121.
        t118 = t119->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_st_source ).
        t116 = t117.
        IF t117 = abap_false.
          DATA t122 TYPE abap_bool.
          DATA t123 TYPE REF TO zif_lnt_statement_runnable.
          DATA t124 TYPE REF TO zcl_lnt_expression_node.
          DATA(t125) = t44.
          DATA t126 TYPE REF TO object.
          t126 = t125.
          t124 ?= t126.
          t123 = t124->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t122 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_constant_string ).
          t116 = t122.
        ENDIF.
        t113 = t116.
      ENDIF.
      IF t113 = abap_true.
        DATA t127 TYPE abap_bool.
        DATA t128 TYPE abap_bool.
        DATA(t129) = t3.
        t128 = xsdbool( t129 IS BOUND AND t129 IS INSTANCE OF zcl_lnt_void_type ).
        t127 = xsdbool( t128 = abap_false ).
        IF t127 = abap_true.
          DATA t130 TYPE abap_bool.
          DATA t131 TYPE i.
          DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t133 TYPE REF TO zif_lnt_method_parameters.
          DATA t134 TYPE REF TO zif_lnt_method_definition.
          DATA(t135) = t3.
          t134 ?= t135.
          t133 = t134->get_parameters( ).
          t132 = t133->get_importing( ).
          t131 = lines( t132->items ).
          DATA(t136) = 0.
          t130 = xsdbool( t131 = t136 ).
          IF t130 = abap_true.
            DATA t137 TYPE string.
            DATA t138 TYPE string.
            DATA t139 TYPE string.
            DATA(t140) = |Method "|.
            DATA t141 TYPE string.
            DATA t142 TYPE REF TO zif_lnt_method_definition.
            DATA(t143) = t3.
            t142 ?= t143.
            t141 = t142->get_name( ).
            DATA(t144) = strlen( t140 ).
            t139 = |{ t140 }{ t141 }|.
            DATA(t145) = |" has no importing parameters|.
            DATA(t146) = strlen( t139 ).
            t138 = |{ t139 }{ t145 }|.
            t137 = t138.
            DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t148) = t2.
            t147 = t148->issues.
            DATA t149 TYPE REF TO zcl_lnt_issue.
            DATA(t150) = t2.
            DATA t151 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t152) = t1.
            t151 = t152->get_first_token( ).
            DATA(t153) = t137.
            DATA t154 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t154.
            t149 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t150 i_token = t151 i_message_26cb = t153 i_fix = t154 ).
            APPEND t149 TO t147->items.
            RETURN.
          ELSE.
            DATA t155 TYPE abap_bool.
            DATA t156 TYPE i.
            DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t158 TYPE REF TO zif_lnt_method_parameters.
            DATA t159 TYPE REF TO zif_lnt_method_definition.
            DATA(t160) = t3.
            t159 ?= t160.
            t158 = t159->get_parameters( ).
            t157 = t158->get_required_parameters( ).
            t156 = lines( t157->items ).
            DATA(t161) = 1.
            t155 = xsdbool( t156 > t161 ).
            IF t155 = abap_true.
              DATA t162 TYPE string.
              DATA t163 TYPE string.
              DATA t164 TYPE string.
              DATA(t165) = |Method "|.
              DATA t166 TYPE string.
              DATA t167 TYPE REF TO zif_lnt_method_definition.
              DATA(t168) = t3.
              t167 ?= t168.
              t166 = t167->get_name( ).
              DATA(t169) = strlen( t165 ).
              t164 = |{ t165 }{ t166 }|.
              DATA(t170) = |" has more than one importing or changing parameter|.
              DATA(t171) = strlen( t164 ).
              t163 = |{ t164 }{ t170 }|.
              t162 = t163.
              DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t173) = t2.
              t172 = t173->issues.
              DATA t174 TYPE REF TO zcl_lnt_issue.
              DATA(t175) = t2.
              DATA t176 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t177) = t1.
              t176 = t177->get_first_token( ).
              DATA(t178) = t162.
              DATA t179 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t179.
              t174 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t175 i_token = t176 i_message_26cb = t178 i_fix = t179 ).
              APPEND t174 TO t172->items.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t180 TYPE REF TO zcl_lnt_abstract_type.
        DATA t181 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t181.
        t180 = t181.
        DATA t182 TYPE abap_bool.
        DATA t183 TYPE abap_bool.
        DATA(t184) = t3.
        t183 = xsdbool( t184 IS BOUND AND t184 IS INSTANCE OF zcl_lnt_void_type ).
        t182 = xsdbool( t183 = abap_false ).
        IF t182 = abap_true.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t187 TYPE REF TO zif_lnt_method_parameters.
          DATA t188 TYPE REF TO zif_lnt_method_definition.
          DATA(t189) = t3.
          t188 ?= t189.
          t187 = t188->get_parameters( ).
          t186 = t187->get_default_importing( ).
          t185 = t186.
          DATA(t190) = VALUE abap_bool( ).
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t192) = t185.
          t191 = t192.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          t193 = t194.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = t191.
          IF t196 IS INITIAL.
            t195 = abap_true.
          ELSEIF t196->has = abap_false.
            t195 = abap_true.
          ENDIF.
          t190 = t195.
          IF t190 = abap_true.
            DATA t197 TYPE string.
            DATA(t198) = |No default importing parameter|.
            t197 = t198.
            DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t200) = t2.
            t199 = t200->issues.
            DATA t201 TYPE REF TO zcl_lnt_issue.
            DATA(t202) = t2.
            DATA t203 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t204) = t1.
            t203 = t204->get_first_token( ).
            DATA(t205) = t197.
            DATA t206 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t206.
            t201 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t202 i_token = t203 i_message_26cb = t205 i_fix = t206 ).
            APPEND t201 TO t199->items.
            RETURN.
          ENDIF.
          DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t208 TYPE REF TO zif_lnt_method_parameters.
          DATA t209 TYPE REF TO zif_lnt_method_definition.
          DATA(t210) = t3.
          t209 ?= t210.
          t208 = t209->get_parameters( ).
          t207 = t208->get_importing( ).
          DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t211.
          DATA t212 TYPE REF TO object.
          CLEAR t212.
          LOOP AT t207->items INTO t212.
            t211 ?= t212.
            DATA(t213) = VALUE abap_bool( ).
            DATA(t214) = VALUE string( ).
            DATA(t215) = VALUE string( ).
            DATA t216 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t217) = t211.
            t216 = t217.
            DATA(t218) = VALUE string( ).
            DATA t219 TYPE string.
            DATA t220 TYPE string.
            DATA t221 TYPE REF TO zcl_lnt_abstract_token.
            DATA t222 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t223) = t216.
            t222 = t223->token.
            t221 = t222.
            DATA t224 TYPE string.
            DATA(t225) = t221.
            t224 = t225->str.
            t220 = t224.
            t219 = t220.
            DATA(t226) = VALUE abap_bool( ).
            DATA(t227) = VALUE string( ).
            DATA(t228) = t219.
            DATA(t229) = 0.
            DATA(t230) = 1.
            DATA(t231) = strlen( t228 ).
            IF t229 < 0.
              t229 = t229 + t231.
              IF t229 < 0.
                t229 = 0.
              ENDIF.
            ENDIF.
            IF t229 > t231 OR t230 <= 0.
              CLEAR t227.
            ELSE.
              IF t230 > t231 - t229.
                t230 = t231 - t229.
              ENDIF.
              t227 = t228+t229(t230).
            ENDIF.
            DATA(t232) = |!|.
            t226 = xsdbool( t227 = t232 ).
            IF t226 = abap_true.
              DATA(t233) = VALUE string( ).
              DATA t234 TYPE string.
              DATA(t235) = t219.
              t234 = t235.
              DATA(t236) = VALUE string( ).
              DATA(t237) = t234.
              DATA(t238) = 1.
              DATA t239 TYPE i.
              DATA(t240) = t234.
              DATA(t241) = strlen( t240 ).
              t239 = t241.
              DATA(t242) = strlen( t237 ).
              IF t238 < 0.
                t238 = t238 + t242.
                IF t238 < 0.
                  t238 = 0.
                ENDIF.
              ENDIF.
              IF t238 > t242 OR t239 <= 0.
                CLEAR t236.
              ELSE.
                IF t239 > t242 - t238.
                  t239 = t242 - t238.
                ENDIF.
                t236 = t237+t238(t239).
              ENDIF.
              t233 = t236.
              t219 = t233.
            ENDIF.
            DATA(t243) = t219.
            t218 = t243.
            t215 = t218.
            DATA(t244) = strlen( t215 ).
            t214 = t215.
            IF t214 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t214 TO UPPER CASE.
            ELSE.
              t214 = zlnt_runtime_uppe_91169605024d=>full( t214 ).
            ENDIF.
            DATA t245 TYPE string.
            DATA(t246) = t185.
            t245 = t246->value.
            t213 = xsdbool( t214 = t245 ).
            IF t213 = abap_true.
              DATA t247 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t247.
              DATA(t248) = abap_true.
              IF t248 = abap_true.
                DATA t249 TYPE REF TO zcl_lnt_abstract_type.
                DATA t250 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t251) = t211.
                t250 = t251.
                DATA t252 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t253) = t250.
                t252 = t253->type_cba0.
                t249 = t252.
                t247 = t249.
              ELSE.
                DATA t254 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t254.
                t247 = t254.
              ENDIF.
              t180 = t247.
              EXIT.
            ENDIF.
          ENDLOOP.
        ELSE.
          DATA t255 TYPE REF TO zcl_lnt_void_type.
          DATA(t256) = t3.
          DATA t257 TYPE REF TO object.
          t257 = t256.
          t255 ?= t257.
          t180 = t255.
        ENDIF.
        DATA t258 TYPE REF TO zcl_lnt_abstract_type.
        DATA t259 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t259.
        t258 = t259.
        DATA t260 TYPE abap_bool.
        DATA t261 TYPE REF TO zif_lnt_statement_runnable.
        DATA t262 TYPE REF TO zcl_lnt_expression_node.
        DATA(t263) = t44.
        DATA t264 TYPE REF TO object.
        t264 = t263.
        t262 ?= t264.
        t261 = t262->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t260 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_st_source ).
        IF t260 = abap_true.
          DATA t265 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t265.
          DATA t266 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t266.
          DATA(t267) = abap_true.
          IF t267 = abap_true.
            DATA t268 TYPE REF TO zcl_lnt_expression_node.
            DATA(t269) = t44.
            DATA t270 TYPE REF TO object.
            t270 = t269.
            t268 ?= t270.
            t266 = t268.
          ELSE.
            DATA t271 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t271.
            t266 = t271.
          ENDIF.
          DATA(t272) = t2.
          DATA(t273) = t180.
          DATA t274 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t274.
          DATA t275 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t275.
          DATA t276 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t276.
          t265 = zcl_lnt_sy_source=>run_syntax( i_node = t266 i_input_967e = t272 i_target_type = t273 i_write_reference = t274 i_allow_generic_deference = t275 i_read_reference = t276 ).
          t258 = t265.
          DATA t277 TYPE abap_bool.
          DATA t278 TYPE REF TO zcl_lnt_expression_node.
          DATA(t279) = t44.
          DATA t280 TYPE REF TO object.
          t280 = t279.
          t278 ?= t280.
          DATA(t281) = t258.
          DATA(t282) = t3.
          DATA(t283) = t2.
          t277 = zcl_lnt_chck_offst_lngth_mdl=>check_offset_length( i_source_75cf = t278 i_source_type = t281 i_method = t282 i_input_967e = t283 ).
          IF t277 = abap_true.
            RETURN.
          ENDIF.
        ELSE.
          DATA t284 TYPE abap_bool.
          DATA t285 TYPE REF TO zif_lnt_statement_runnable.
          DATA t286 TYPE REF TO zcl_lnt_expression_node.
          DATA(t287) = t44.
          DATA t288 TYPE REF TO object.
          t288 = t287.
          t286 ?= t288.
          t285 = t286->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t284 = xsdbool( t285 IS BOUND AND t285 IS INSTANCE OF zcl_lnt_constant_string ).
          IF t284 = abap_true.
            DATA t289 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t289.
            DATA(t290) = abap_true.
            IF t290 = abap_true.
              DATA t291 TYPE REF TO zcl_lnt_abstract_type.
              DATA t292 TYPE REF TO zcl_lnt_expression_node.
              DATA(t293) = t44.
              DATA t294 TYPE REF TO object.
              t294 = t293.
              t292 ?= t294.
              t291 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t292 ).
              t289 = t291.
            ELSE.
              DATA t295 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t295.
              t289 = t295.
            ENDIF.
            t258 = t289.
          ENDIF.
        ENDIF.
        DATA(t296) = VALUE abap_bool( ).
        DATA t297 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t298) = t258.
        t297 = t298.
        DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t300.
        t299 = t300.
        DATA(t301) = VALUE abap_bool( ).
        DATA(t302) = t297.
        IF t302 IS INITIAL.
          t301 = abap_true.
        ENDIF.
        t296 = t301.
        IF t296 = abap_true.
          DATA t303 TYPE string.
          DATA(t304) = |No source type determined, method source|.
          t303 = t304.
          DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t306) = t2.
          t305 = t306->issues.
          DATA t307 TYPE REF TO zcl_lnt_issue.
          DATA(t308) = t2.
          DATA t309 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t310) = t1.
          t309 = t310->get_first_token( ).
          DATA(t311) = t303.
          DATA t312 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t312.
          t307 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t308 i_token = t309 i_message_26cb = t311 i_fix = t312 ).
          APPEND t307 TO t305->items.
          RETURN.
        ELSE.
          DATA(t313) = VALUE abap_bool( ).
          DATA(t314) = VALUE abap_bool( ).
          DATA t315 TYPE REF TO zcl_lnt_type_utils.
          DATA t316 TYPE REF TO zcl_lnt_current_scope.
          DATA(t317) = t2.
          t316 = t317->scope.
          t315 = NEW zcl_lnt_type_utils( i_scope = t316 ).
          DATA t318 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t318.
          DATA(t319) = abap_true.
          IF t319 = abap_true.
            DATA t320 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t321) = t258.
            t320 = t321.
            t318 = t320.
          ELSE.
            DATA t322 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t322.
            t318 = t322.
          ENDIF.
          DATA(t323) = t180.
          DATA t324 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t324.
          DATA(t325) = abap_true.
          IF t325 = abap_true.
            DATA t326 TYPE REF TO zcl_lnt_expression_node.
            DATA(t327) = t44.
            DATA t328 TYPE REF TO object.
            t328 = t327.
            t326 ?= t328.
            t324 = t326.
          ELSE.
            DATA t329 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t329.
            t324 = t329.
          ENDIF.
          t314 = t315->is_assignable_strict( i_source_75cf = t318 i_target_5f8a = t323 i_node = t324 ).
          DATA(t330) = abap_false.
          t313 = xsdbool( t314 = t330 ).
          IF t313 = abap_true.
            DATA t331 TYPE string.
            DATA(t332) = |Method parameter type not compatible|.
            t331 = t332.
            DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t334) = t2.
            t333 = t334->issues.
            DATA t335 TYPE REF TO zcl_lnt_issue.
            DATA(t336) = t2.
            DATA t337 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t338) = t1.
            t337 = t338->get_first_token( ).
            DATA(t339) = t331.
            DATA t340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t340.
            t335 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t336 i_token = t337 i_message_26cb = t339 i_fix = t340 ).
            APPEND t335 TO t333->items.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t341 TYPE abap_bool.
        DATA t342 TYPE abap_bool.
        DATA(t343) = t44.
        t342 = xsdbool( t343 IS BOUND AND t343 IS INSTANCE OF zcl_lnt_expression_node ).
        t341 = t342.
        IF t342 = abap_true.
          DATA t344 TYPE abap_bool.
          DATA t345 TYPE REF TO zif_lnt_statement_runnable.
          DATA t346 TYPE REF TO zcl_lnt_expression_node.
          DATA(t347) = t44.
          DATA t348 TYPE REF TO object.
          t348 = t347.
          t346 ?= t348.
          t345 = t346->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t344 = xsdbool( t345 IS BOUND AND t345 IS INSTANCE OF zcl_lnt_parameter_list_s ).
          t341 = t344.
        ENDIF.
        IF t341 = abap_true.
          DATA(t349) = NEW zcl_lnt_sy_method_parameters( ).
          DATA t350 TYPE REF TO zcl_lnt_expression_node.
          DATA(t351) = t44.
          DATA t352 TYPE REF TO object.
          t352 = t351.
          t350 ?= t352.
          DATA(t353) = t2.
          DATA(t354) = t3.
          DATA t355 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t355.
          t349->check_exporting( i_node = t350 i_input_967e = t353 i_method = t354 i_errors = t355 ).
        ELSE.
          DATA t356 TYPE abap_bool.
          DATA t357 TYPE REF TO object.
          DATA(t358) = t44.
          t357 = t358->get_db65( ).
          t356 = xsdbool( t357 IS BOUND AND t357 IS INSTANCE OF zcl_lnt_st_method_parameters ).
          IF t356 = abap_true.
            DATA(t359) = NEW zcl_lnt_sy_method_parameters( ).
            DATA t360 TYPE REF TO zif_lnt_node.
            DATA(t361) = t44.
            t360 ?= t361.
            DATA(t362) = t2.
            DATA(t363) = t3.
            t359->run_syntax( i_node = t360 i_input_967e = t362 i_method = t363 ).
          ELSE.
            DATA t364 TYPE string.
            DATA(t365) = |MethodCallParam, unexpected child|.
            t364 = t365.
            DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t367) = t2.
            t366 = t367->issues.
            DATA t368 TYPE REF TO zcl_lnt_issue.
            DATA(t369) = t2.
            DATA t370 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t371) = t1.
            t370 = t371->get_first_token( ).
            DATA(t372) = t364.
            DATA t373 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t373.
            t368 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t369 i_token = t370 i_message_26cb = t372 i_fix = t373 ).
            APPEND t368 TO t366->items.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d798_2f5c96d47058.
  ENDMETHOD.
ENDCLASS.
