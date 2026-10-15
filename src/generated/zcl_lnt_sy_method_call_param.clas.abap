* TS: src/abap/5_syntax/expressions/method_call_param.ts:14:1 MethodCallParam
CLASS zcl_lnt_sy_method_call_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
      t10->load( ).
      APPEND t12 TO t10->items.
      t10->save( ).
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
    t28->load( ).
    t27 = lines( t28->items ).
    DATA(t29) = 2.
    t26 = xsdbool( t27 < t29 ).
    t25 = t26.
    IF t26 = abap_false.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE i.
      DATA(t32) = t18.
      t32->load( ).
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
      t36->load( ).
      APPEND t38 TO t36->items.
      t36->save( ).
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t45.
    DATA(t46) = t18.
    DATA t47 TYPE REF TO object.
    CLEAR t47.
    t46->load( ).
    CLEAR t47.
    READ TABLE t46->items INDEX 2 INTO t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    CLEAR t45.
    IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t48 ?= t47.
      DATA t49 TYPE REF TO object.
      t49 = t48->as_ref( ).
      t45 ?= t49.
    ELSE.
      t45 ?= t47.
    ENDIF.
    t44 = t45.
    DATA t50 TYPE abap_bool.
    DATA t51 TYPE abap_bool.
    DATA t52 TYPE REF TO object.
    DATA(t53) = t44.
    t52 = t53->get_db65( ).
    t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_w_paren_right ).
    t50 = t51.
    IF t51 = abap_false.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE REF TO object.
      DATA(t56) = t44.
      t55 = t56->get_db65( ).
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_w_paren_right_w ).
      t50 = t54.
    ENDIF.
    IF t50 = abap_true.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE abap_bool.
      DATA(t59) = t3.
      t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_void_type ).
      t57 = xsdbool( t58 = abap_false ).
      IF t57 = abap_true.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t62 TYPE REF TO zif_lnt_method_parameters.
        DATA t63 TYPE REF TO zif_lnt_method_definition.
        DATA(t64) = t3.
        t63 ?= t64.
        t62 = t63->get_parameters( ).
        t61 = t62->get_required_parameters( ).
        t60 = t61.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE i.
        DATA(t67) = t60.
        t67->load( ).
        t66 = lines( t67->items ).
        DATA(t68) = 0.
        t65 = xsdbool( t66 > t68 ).
        IF t65 = abap_true.
          DATA(t69) = VALUE string( ).
          DATA(t70) = VALUE string( ).
          DATA(t71) = VALUE string( ).
          DATA(t72) = |Parameter "|.
          DATA(t73) = VALUE string( ).
          DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t74.
          DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t75.
          DATA(t76) = t60.
          DATA t77 TYPE REF TO object.
          CLEAR t77.
          t76->load( ).
          CLEAR t77.
          READ TABLE t76->items INDEX 1 INTO t77.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          CLEAR t75.
          IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t78 ?= t77.
            DATA t79 TYPE REF TO object.
            t79 = t78->as_ref( ).
            t75 ?= t79.
          ELSE.
            t75 ?= t77.
          ENDIF.
          t74 = t75.
          DATA(t80) = VALUE string( ).
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          DATA t83 TYPE REF TO zcl_lnt_abstract_token.
          DATA t84 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t85) = t74.
          t84 = t85->token.
          t83 = t84.
          DATA t86 TYPE string.
          DATA(t87) = t83.
          t86 = t87->str.
          t82 = t86.
          t81 = t82.
          DATA(t88) = VALUE abap_bool( ).
          DATA(t89) = VALUE string( ).
          DATA(t90) = t81.
          DATA(t91) = 0.
          DATA(t92) = 1.
          DATA(t93) = strlen( t90 ).
          IF t91 < 0.
            t91 = t91 + t93.
            IF t91 < 0.
              t91 = 0.
            ENDIF.
          ENDIF.
          IF t91 > t93 OR t92 <= 0.
            CLEAR t89.
          ELSE.
            IF t92 > t93 - t91.
              t92 = t93 - t91.
            ENDIF.
            t89 = t90+t91(t92).
          ENDIF.
          DATA(t94) = |!|.
          t88 = xsdbool( t89 = t94 ).
          IF t88 = abap_true.
            DATA(t95) = VALUE string( ).
            DATA t96 TYPE string.
            DATA(t97) = t81.
            t96 = t97.
            DATA(t98) = VALUE string( ).
            DATA(t99) = t96.
            DATA(t100) = 1.
            DATA t101 TYPE i.
            DATA(t102) = t96.
            DATA(t103) = strlen( t102 ).
            t101 = t103.
            DATA(t104) = strlen( t99 ).
            IF t100 < 0.
              t100 = t100 + t104.
              IF t100 < 0.
                t100 = 0.
              ENDIF.
            ENDIF.
            IF t100 > t104 OR t101 <= 0.
              CLEAR t98.
            ELSE.
              IF t101 > t104 - t100.
                t101 = t104 - t100.
              ENDIF.
              t98 = t99+t100(t101).
            ENDIF.
            t95 = t98.
            t81 = t95.
          ENDIF.
          DATA(t105) = t81.
          t80 = t105.
          t73 = t80.
          DATA(t106) = strlen( t72 ).
          t71 = |{ t72 }{ t73 }|.
          DATA(t107) = |" must be supplied|.
          DATA(t108) = strlen( t71 ).
          t70 = |{ t71 }{ t107 }|.
          t69 = t70.
          DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t110) = t2.
          t109 = t110->issues.
          DATA t111 TYPE REF TO zcl_lnt_issue.
          DATA(t112) = t2.
          DATA t113 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t114) = t1.
          t113 = t114->get_first_token( ).
          DATA(t115) = t69.
          DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t116.
          t111 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t112 i_token = t113 i_message_26cb = t115 i_fix = t116 ).
          t109->load( ).
          APPEND t111 TO t109->items.
          t109->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t117 TYPE abap_bool.
      DATA t118 TYPE abap_bool.
      DATA(t119) = t44.
      t118 = xsdbool( t119 IS BOUND AND t119 IS INSTANCE OF zcl_lnt_expression_node ).
      t117 = t118.
      IF t118 = abap_true.
        DATA t120 TYPE abap_bool.
        DATA t121 TYPE abap_bool.
        DATA t122 TYPE REF TO zif_lnt_statement_runnable.
        DATA t123 TYPE REF TO zcl_lnt_expression_node.
        DATA(t124) = t44.
        DATA t125 TYPE REF TO object.
        t125 = t124.
        t123 ?= t125.
        t122 = t123->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t121 = xsdbool( t122 IS BOUND AND t122 IS INSTANCE OF zcl_lnt_st_source ).
        t120 = t121.
        IF t121 = abap_false.
          DATA t126 TYPE abap_bool.
          DATA t127 TYPE REF TO zif_lnt_statement_runnable.
          DATA t128 TYPE REF TO zcl_lnt_expression_node.
          DATA(t129) = t44.
          DATA t130 TYPE REF TO object.
          t130 = t129.
          t128 ?= t130.
          t127 = t128->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_constant_string ).
          t120 = t126.
        ENDIF.
        t117 = t120.
      ENDIF.
      IF t117 = abap_true.
        DATA t131 TYPE abap_bool.
        DATA t132 TYPE abap_bool.
        DATA(t133) = t3.
        t132 = xsdbool( t133 IS BOUND AND t133 IS INSTANCE OF zcl_lnt_void_type ).
        t131 = xsdbool( t132 = abap_false ).
        IF t131 = abap_true.
          DATA t134 TYPE abap_bool.
          DATA t135 TYPE i.
          DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t137 TYPE REF TO zif_lnt_method_parameters.
          DATA t138 TYPE REF TO zif_lnt_method_definition.
          DATA(t139) = t3.
          t138 ?= t139.
          t137 = t138->get_parameters( ).
          t136 = t137->get_importing( ).
          t136->load( ).
          t135 = lines( t136->items ).
          DATA(t140) = 0.
          t134 = xsdbool( t135 = t140 ).
          IF t134 = abap_true.
            DATA t141 TYPE string.
            DATA t142 TYPE string.
            DATA t143 TYPE string.
            DATA(t144) = |Method "|.
            DATA t145 TYPE string.
            DATA t146 TYPE REF TO zif_lnt_method_definition.
            DATA(t147) = t3.
            t146 ?= t147.
            t145 = t146->get_name( ).
            DATA(t148) = strlen( t144 ).
            t143 = |{ t144 }{ t145 }|.
            DATA(t149) = |" has no importing parameters|.
            DATA(t150) = strlen( t143 ).
            t142 = |{ t143 }{ t149 }|.
            t141 = t142.
            DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t152) = t2.
            t151 = t152->issues.
            DATA t153 TYPE REF TO zcl_lnt_issue.
            DATA(t154) = t2.
            DATA t155 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t156) = t1.
            t155 = t156->get_first_token( ).
            DATA(t157) = t141.
            DATA t158 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t158.
            t153 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t154 i_token = t155 i_message_26cb = t157 i_fix = t158 ).
            t151->load( ).
            APPEND t153 TO t151->items.
            t151->save( ).
            RETURN.
          ELSE.
            DATA t159 TYPE abap_bool.
            DATA t160 TYPE i.
            DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t162 TYPE REF TO zif_lnt_method_parameters.
            DATA t163 TYPE REF TO zif_lnt_method_definition.
            DATA(t164) = t3.
            t163 ?= t164.
            t162 = t163->get_parameters( ).
            t161 = t162->get_required_parameters( ).
            t161->load( ).
            t160 = lines( t161->items ).
            DATA(t165) = 1.
            t159 = xsdbool( t160 > t165 ).
            IF t159 = abap_true.
              DATA t166 TYPE string.
              DATA t167 TYPE string.
              DATA t168 TYPE string.
              DATA(t169) = |Method "|.
              DATA t170 TYPE string.
              DATA t171 TYPE REF TO zif_lnt_method_definition.
              DATA(t172) = t3.
              t171 ?= t172.
              t170 = t171->get_name( ).
              DATA(t173) = strlen( t169 ).
              t168 = |{ t169 }{ t170 }|.
              DATA(t174) = |" has more than one importing or changing parameter|.
              DATA(t175) = strlen( t168 ).
              t167 = |{ t168 }{ t174 }|.
              t166 = t167.
              DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t177) = t2.
              t176 = t177->issues.
              DATA t178 TYPE REF TO zcl_lnt_issue.
              DATA(t179) = t2.
              DATA t180 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t181) = t1.
              t180 = t181->get_first_token( ).
              DATA(t182) = t166.
              DATA t183 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t183.
              t178 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t179 i_token = t180 i_message_26cb = t182 i_fix = t183 ).
              t176->load( ).
              APPEND t178 TO t176->items.
              t176->save( ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t184 TYPE REF TO zcl_lnt_abstract_type.
        DATA t185 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t185.
        t184 = t185.
        DATA t186 TYPE abap_bool.
        DATA t187 TYPE abap_bool.
        DATA(t188) = t3.
        t187 = xsdbool( t188 IS BOUND AND t188 IS INSTANCE OF zcl_lnt_void_type ).
        t186 = xsdbool( t187 = abap_false ).
        IF t186 = abap_true.
          DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t191 TYPE REF TO zif_lnt_method_parameters.
          DATA t192 TYPE REF TO zif_lnt_method_definition.
          DATA(t193) = t3.
          t192 ?= t193.
          t191 = t192->get_parameters( ).
          t190 = t191->get_default_importing( ).
          t189 = t190.
          DATA(t194) = VALUE abap_bool( ).
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t196) = t189.
          t195 = t196.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          t197 = t198.
          DATA(t199) = VALUE abap_bool( ).
          DATA(t200) = t195.
          IF t200 IS INITIAL.
            t199 = abap_true.
          ELSEIF t200->has = abap_false.
            t199 = abap_true.
          ENDIF.
          t194 = t199.
          IF t194 = abap_true.
            DATA t201 TYPE string.
            DATA(t202) = |No default importing parameter|.
            t201 = t202.
            DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t204) = t2.
            t203 = t204->issues.
            DATA t205 TYPE REF TO zcl_lnt_issue.
            DATA(t206) = t2.
            DATA t207 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t208) = t1.
            t207 = t208->get_first_token( ).
            DATA(t209) = t201.
            DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t210.
            t205 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t206 i_token = t207 i_message_26cb = t209 i_fix = t210 ).
            t203->load( ).
            APPEND t205 TO t203->items.
            t203->save( ).
            RETURN.
          ENDIF.
          DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t212 TYPE REF TO zif_lnt_method_parameters.
          DATA t213 TYPE REF TO zif_lnt_method_definition.
          DATA(t214) = t3.
          t213 ?= t214.
          t212 = t213->get_parameters( ).
          t211 = t212->get_importing( ).
          DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t215.
          DATA t216 TYPE REF TO object.
          CLEAR t216.
          DATA(t217) = VALUE i( ).
          DO.
            t211->load( ).
            IF t217 >= lines( t211->items ).
              EXIT.
            ENDIF.
            CLEAR t216.
            READ TABLE t211->items INDEX t217 + 1 INTO t216.
            t217 = t217 + 1.
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            CLEAR t215.
            IF t216 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t218 ?= t216.
              DATA t219 TYPE REF TO object.
              t219 = t218->as_ref( ).
              t215 ?= t219.
            ELSE.
              t215 ?= t216.
            ENDIF.
            DATA(t220) = VALUE abap_bool( ).
            DATA(t221) = VALUE string( ).
            DATA(t222) = VALUE string( ).
            DATA t223 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t224) = t215.
            t223 = t224.
            DATA(t225) = VALUE string( ).
            DATA t226 TYPE string.
            DATA t227 TYPE string.
            DATA t228 TYPE REF TO zcl_lnt_abstract_token.
            DATA t229 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t230) = t223.
            t229 = t230->token.
            t228 = t229.
            DATA t231 TYPE string.
            DATA(t232) = t228.
            t231 = t232->str.
            t227 = t231.
            t226 = t227.
            DATA(t233) = VALUE abap_bool( ).
            DATA(t234) = VALUE string( ).
            DATA(t235) = t226.
            DATA(t236) = 0.
            DATA(t237) = 1.
            DATA(t238) = strlen( t235 ).
            IF t236 < 0.
              t236 = t236 + t238.
              IF t236 < 0.
                t236 = 0.
              ENDIF.
            ENDIF.
            IF t236 > t238 OR t237 <= 0.
              CLEAR t234.
            ELSE.
              IF t237 > t238 - t236.
                t237 = t238 - t236.
              ENDIF.
              t234 = t235+t236(t237).
            ENDIF.
            DATA(t239) = |!|.
            t233 = xsdbool( t234 = t239 ).
            IF t233 = abap_true.
              DATA(t240) = VALUE string( ).
              DATA t241 TYPE string.
              DATA(t242) = t226.
              t241 = t242.
              DATA(t243) = VALUE string( ).
              DATA(t244) = t241.
              DATA(t245) = 1.
              DATA t246 TYPE i.
              DATA(t247) = t241.
              DATA(t248) = strlen( t247 ).
              t246 = t248.
              DATA(t249) = strlen( t244 ).
              IF t245 < 0.
                t245 = t245 + t249.
                IF t245 < 0.
                  t245 = 0.
                ENDIF.
              ENDIF.
              IF t245 > t249 OR t246 <= 0.
                CLEAR t243.
              ELSE.
                IF t246 > t249 - t245.
                  t246 = t249 - t245.
                ENDIF.
                t243 = t244+t245(t246).
              ENDIF.
              t240 = t243.
              t226 = t240.
            ENDIF.
            DATA(t250) = t226.
            t225 = t250.
            t222 = t225.
            DATA(t251) = strlen( t222 ).
            t221 = t222.
            IF t221 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t221 TO UPPER CASE.
            ELSE.
              t221 = zlnt_runtime_uppe_91169605024d=>full( t221 ).
            ENDIF.
            DATA t252 TYPE string.
            DATA(t253) = t189.
            t252 = t253->value.
            t220 = xsdbool( t221 = t252 ).
            IF t220 = abap_true.
              DATA t254 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t254.
              DATA(t255) = abap_true.
              IF t255 = abap_true.
                DATA t256 TYPE REF TO zcl_lnt_abstract_type.
                DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t258) = t215.
                t257 = t258.
                DATA t259 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t260) = t257.
                t259 = t260->type_cba0.
                t256 = t259.
                t254 = t256.
              ELSE.
                DATA t261 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t261.
                t254 = t261.
              ENDIF.
              t184 = t254.
              EXIT.
            ENDIF.
          ENDDO.
        ELSE.
          DATA t262 TYPE REF TO zcl_lnt_void_type.
          DATA(t263) = t3.
          DATA t264 TYPE REF TO object.
          t264 = t263.
          t262 ?= t264.
          t184 = t262.
        ENDIF.
        DATA t265 TYPE REF TO zcl_lnt_abstract_type.
        DATA t266 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t266.
        t265 = t266.
        DATA t267 TYPE abap_bool.
        DATA t268 TYPE REF TO zif_lnt_statement_runnable.
        DATA t269 TYPE REF TO zcl_lnt_expression_node.
        DATA(t270) = t44.
        DATA t271 TYPE REF TO object.
        t271 = t270.
        t269 ?= t271.
        t268 = t269->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t267 = xsdbool( t268 IS BOUND AND t268 IS INSTANCE OF zcl_lnt_st_source ).
        IF t267 = abap_true.
          DATA t272 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t272.
          DATA t273 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t273.
          DATA(t274) = abap_true.
          IF t274 = abap_true.
            DATA t275 TYPE REF TO zcl_lnt_expression_node.
            DATA(t276) = t44.
            DATA t277 TYPE REF TO object.
            t277 = t276.
            t275 ?= t277.
            t273 = t275.
          ELSE.
            DATA t278 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t278.
            t273 = t278.
          ENDIF.
          DATA(t279) = t2.
          DATA(t280) = t184.
          DATA t281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t281.
          DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t282.
          DATA t283 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t283.
          t272 = zcl_lnt_sy_source=>run_syntax( i_node = t273 i_input_967e = t279 i_target_type = t280 i_write_reference = t281 i_allow_generic_deference = t282 i_read_reference = t283 ).
          t265 = t272.
          DATA t284 TYPE abap_bool.
          DATA t285 TYPE REF TO zcl_lnt_expression_node.
          DATA(t286) = t44.
          DATA t287 TYPE REF TO object.
          t287 = t286.
          t285 ?= t287.
          DATA(t288) = t265.
          DATA(t289) = t3.
          DATA(t290) = t2.
          t284 = zcl_lnt_chck_offst_lngth_mdl=>check_offset_length( i_source_75cf = t285 i_source_type = t288 i_method = t289 i_input_967e = t290 ).
          IF t284 = abap_true.
            RETURN.
          ENDIF.
        ELSE.
          DATA t291 TYPE abap_bool.
          DATA t292 TYPE REF TO zif_lnt_statement_runnable.
          DATA t293 TYPE REF TO zcl_lnt_expression_node.
          DATA(t294) = t44.
          DATA t295 TYPE REF TO object.
          t295 = t294.
          t293 ?= t295.
          t292 = t293->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t291 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_constant_string ).
          IF t291 = abap_true.
            DATA t296 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t296.
            DATA(t297) = abap_true.
            IF t297 = abap_true.
              DATA t298 TYPE REF TO zcl_lnt_abstract_type.
              DATA t299 TYPE REF TO zcl_lnt_expression_node.
              DATA(t300) = t44.
              DATA t301 TYPE REF TO object.
              t301 = t300.
              t299 ?= t301.
              t298 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t299 ).
              t296 = t298.
            ELSE.
              DATA t302 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t302.
              t296 = t302.
            ENDIF.
            t265 = t296.
          ENDIF.
        ENDIF.
        DATA(t303) = VALUE abap_bool( ).
        DATA t304 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t305) = t265.
        t304 = t305.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t307.
        t306 = t307.
        DATA(t308) = VALUE abap_bool( ).
        DATA(t309) = t304.
        IF t309 IS INITIAL.
          t308 = abap_true.
        ENDIF.
        t303 = t308.
        IF t303 = abap_true.
          DATA t310 TYPE string.
          DATA(t311) = |No source type determined, method source|.
          t310 = t311.
          DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t313) = t2.
          t312 = t313->issues.
          DATA t314 TYPE REF TO zcl_lnt_issue.
          DATA(t315) = t2.
          DATA t316 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t317) = t1.
          t316 = t317->get_first_token( ).
          DATA(t318) = t310.
          DATA t319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t319.
          t314 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t315 i_token = t316 i_message_26cb = t318 i_fix = t319 ).
          t312->load( ).
          APPEND t314 TO t312->items.
          t312->save( ).
          RETURN.
        ELSE.
          DATA(t320) = VALUE abap_bool( ).
          DATA(t321) = VALUE abap_bool( ).
          DATA t322 TYPE REF TO zcl_lnt_type_utils.
          DATA t323 TYPE REF TO zcl_lnt_current_scope.
          DATA(t324) = t2.
          t323 = t324->scope.
          t322 = NEW zcl_lnt_type_utils( i_scope = t323 ).
          DATA t325 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t325.
          DATA(t326) = abap_true.
          IF t326 = abap_true.
            DATA t327 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t328) = t265.
            t327 = t328.
            t325 = t327.
          ELSE.
            DATA t329 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t329.
            t325 = t329.
          ENDIF.
          DATA(t330) = t184.
          DATA t331 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t331.
          DATA(t332) = abap_true.
          IF t332 = abap_true.
            DATA t333 TYPE REF TO zcl_lnt_expression_node.
            DATA(t334) = t44.
            DATA t335 TYPE REF TO object.
            t335 = t334.
            t333 ?= t335.
            t331 = t333.
          ELSE.
            DATA t336 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t336.
            t331 = t336.
          ENDIF.
          t321 = t322->is_assignable_strict( i_source_75cf = t325 i_target_5f8a = t330 i_node = t331 ).
          DATA(t337) = abap_false.
          t320 = xsdbool( t321 = t337 ).
          IF t320 = abap_true.
            DATA t338 TYPE string.
            DATA(t339) = |Method parameter type not compatible|.
            t338 = t339.
            DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t341) = t2.
            t340 = t341->issues.
            DATA t342 TYPE REF TO zcl_lnt_issue.
            DATA(t343) = t2.
            DATA t344 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t345) = t1.
            t344 = t345->get_first_token( ).
            DATA(t346) = t338.
            DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t347.
            t342 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t343 i_token = t344 i_message_26cb = t346 i_fix = t347 ).
            t340->load( ).
            APPEND t342 TO t340->items.
            t340->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t348 TYPE abap_bool.
        DATA t349 TYPE abap_bool.
        DATA(t350) = t44.
        t349 = xsdbool( t350 IS BOUND AND t350 IS INSTANCE OF zcl_lnt_expression_node ).
        t348 = t349.
        IF t349 = abap_true.
          DATA t351 TYPE abap_bool.
          DATA t352 TYPE REF TO zif_lnt_statement_runnable.
          DATA t353 TYPE REF TO zcl_lnt_expression_node.
          DATA(t354) = t44.
          DATA t355 TYPE REF TO object.
          t355 = t354.
          t353 ?= t355.
          t352 = t353->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t351 = xsdbool( t352 IS BOUND AND t352 IS INSTANCE OF zcl_lnt_parameter_list_s ).
          t348 = t351.
        ENDIF.
        IF t348 = abap_true.
          DATA(t356) = NEW zcl_lnt_sy_method_parameters( ).
          DATA t357 TYPE REF TO zcl_lnt_expression_node.
          DATA(t358) = t44.
          DATA t359 TYPE REF TO object.
          t359 = t358.
          t357 ?= t359.
          DATA(t360) = t2.
          DATA(t361) = t3.
          DATA t362 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t362.
          t356->check_exporting( i_node = t357 i_input_967e = t360 i_method = t361 i_errors = t362 ).
        ELSE.
          DATA t363 TYPE abap_bool.
          DATA t364 TYPE REF TO object.
          DATA(t365) = t44.
          t364 = t365->get_db65( ).
          t363 = xsdbool( t364 IS BOUND AND t364 IS INSTANCE OF zcl_lnt_st_method_parameters ).
          IF t363 = abap_true.
            DATA(t366) = NEW zcl_lnt_sy_method_parameters( ).
            DATA t367 TYPE REF TO zif_lnt_node.
            DATA(t368) = t44.
            t367 ?= t368.
            DATA(t369) = t2.
            DATA(t370) = t3.
            t366->run_syntax( i_node = t367 i_input_967e = t369 i_method = t370 ).
          ELSE.
            DATA t371 TYPE string.
            DATA(t372) = |MethodCallParam, unexpected child|.
            t371 = t372.
            DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t374) = t2.
            t373 = t374->issues.
            DATA t375 TYPE REF TO zcl_lnt_issue.
            DATA(t376) = t2.
            DATA t377 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t378) = t1.
            t377 = t378->get_first_token( ).
            DATA(t379) = t371.
            DATA t380 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t380.
            t375 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t376 i_token = t377 i_message_26cb = t379 i_fix = t380 ).
            t373->load( ).
            APPEND t375 TO t373->items.
            t373->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d820_8ca0c693815f.
  ENDMETHOD.
ENDCLASS.
