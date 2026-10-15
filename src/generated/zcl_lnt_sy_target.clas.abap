* TS: src/abap/5_syntax/expressions/target.ts:18:1 Target
CLASS zcl_lnt_sy_target DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_top IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_target IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = t1.
    t4 = t5->concat_tokens( ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE i( ).
    DATA(t8) = t3.
    DATA(t9) = |-|.
    DATA(t10) = strlen( t8 ).
    IF t9 IS INITIAL.
      t7 = 0.
    ELSE.
      FIND t9 IN t8 MATCH OFFSET t7.
      IF sy-subrc <> 0.
        t7 = -1.
      ENDIF.
    ENDIF.
    DATA(t11) = 0.
    t6 = xsdbool( t7 >= t11 ).
    IF t6 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t15.
      DATA(t16) = t2.
      t15 = t16->scope.
      t14 = t15.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = t3.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17 = t18.
      DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA(t26) = t17.
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      t27 = t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t25.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ELSEIF t30->has = abap_false.
        t29 = abap_true.
      ENDIF.
      t24 = t29.
      IF t24 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t31.
        t23 = t31.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t36.
        DATA(t37) = t14.
        t36 = t37->current.
        t35 = t36.
        DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t38.
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = t35.
        IF t40 IS INITIAL.
          t39 = abap_true.
        ENDIF.
        IF t39 = abap_true.
          DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t41.
          t38 = t41.
        ELSE.
          DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t42.
          DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t43.
          DATA(t44) = t35.
          t43 = t44.
          DATA(t45) = VALUE string( ).
          DATA(t46) = t17.
          t45 = t46->value.
          t42 = t43->find_variable( i_name = t45 ).
          t38 = t42.
        ENDIF.
        t34 = t38.
        t33 = t34.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = t33.
        t48 = xsdbool( t49 IS BOUND ).
        IF t48 = abap_true.
          DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t50.
          DATA(t51) = abap_true.
          IF t51 = abap_true.
            DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t52.
            DATA(t53) = t33.
            t52 = t53.
            t50 = t52.
          ELSE.
            DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t54.
            t50 = t54.
          ENDIF.
          t47 = t50.
        ELSE.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t55.
          DATA(t56) = t14.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          DATA(t58) = abap_true.
          IF t58 = abap_true.
            DATA(t59) = VALUE string( ).
            DATA(t60) = t17.
            t59 = t60->value.
            DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t61->has = abap_true.
            t61->value = t59.
            t57 = t61.
          ELSE.
            DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t62.
            t57 = t62.
          ENDIF.
          t55 = t56->find_type_pool_constant( i_name = t57 ).
          t47 = t55.
        ENDIF.
        t32 = t47.
        t23 = t32.
      ENDIF.
      t13 = t23.
      t12 = t13.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t12.
      t63 = xsdbool( t64 IS BOUND ).
      IF t63 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t65.
        DATA(t66) = t2.
        t65 = t66->scope.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t69.
          DATA(t70) = t1.
          t69 = t70->get_first_token( ).
          t67 = t69.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t71.
          t67 = t71.
        ENDIF.
        DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t72.
        DATA(t73) = t12.
        t72 = t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        DATA(t75) = |Write To|.
        CLEAR t74.
        CREATE OBJECT t74.
        t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t74->sval = t75.
        DATA(t76) = VALUE string( ).
        DATA(t77) = t2.
        t76 = t77->filename.
        DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t78.
        t65->add_reference( i_usage = t67 i_referencing = t72 i_type_9913 = t74 i_filename = t76 i_extra = t78 ).
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t82.
          DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t83.
          DATA(t84) = t12.
          t83 = t84.
          t82 = t83.
          DATA t85 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t85.
          DATA(t86) = t82.
          t85 = t86->type_cba0.
          t81 = t85.
          t79 = t81.
        ELSE.
          DATA t87 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t87.
          t79 = t87.
        ENDIF.
        result = t79.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t91.
    DATA(t92) = t1.
    t91 = t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    DATA(t94) = t91.
    t93 = t94->children.
    t90 = t93.
    t89 ?= t90.
    t88 = t89.
    DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t96.
    DATA(t97) = t88.
    DATA t98 TYPE REF TO object.
    CLEAR t98.
    t97->load( ).
    CLEAR t98.
    READ TABLE t97->items INDEX 1 INTO t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    CLEAR t96.
    IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t99 ?= t98.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      t100 = t99->as_ref( ).
      t96 ?= t100.
    ELSE.
      t96 ?= t98.
    ENDIF.
    t95 = t96.
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = VALUE abap_bool( ).
    DATA t103 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t103.
    DATA(t104) = t95.
    t103 = t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    t105 = t106.
    DATA(t107) = VALUE abap_bool( ).
    DATA(t108) = t103.
    IF t108 IS INITIAL.
      t107 = abap_true.
    ENDIF.
    t102 = t107.
    t101 = t102.
    IF t102 = abap_false.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = t95.
      t110 = xsdbool( t111 IS BOUND AND t111 IS INSTANCE OF zcl_lnt_expression_node ).
      t109 = xsdbool( t110 = abap_false ).
      t101 = t109.
    ENDIF.
    IF t101 = abap_true.
      DATA t112 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t112.
      result = t112.
      RETURN.
    ENDIF.
    DATA t113 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t113.
    DATA t114 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t114.
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t115.
    DATA(t116) = t95.
    DATA t117 TYPE REF TO object.
    CLEAR t117.
    t117 = t116.
    t115 ?= t117.
    DATA(t118) = t2.
    t114 = zcl_lnt_sy_target=>find_top( i_node = t115 i_input_967e = t118 ).
    t113 = t114.
    DATA(t119) = VALUE abap_bool( ).
    DATA t120 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t120.
    DATA(t121) = t113.
    t120 = t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    t122 = t123.
    DATA(t124) = VALUE abap_bool( ).
    DATA(t125) = t120.
    IF t125 IS INITIAL.
      t124 = abap_true.
    ENDIF.
    t119 = t124.
    IF t119 = abap_true.
      DATA(t126) = VALUE string( ).
      DATA(t127) = VALUE string( ).
      DATA(t128) = VALUE string( ).
      DATA(t129) = |"|.
      DATA(t130) = VALUE string( ).
      DATA t131 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t131.
      DATA t132 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t132.
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t133.
      DATA(t134) = t95.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      t135 = t134.
      t133 ?= t135.
      t132 = t133->get_first_token( ).
      t131 = t132.
      DATA(t136) = VALUE string( ).
      DATA(t137) = t131.
      t136 = t137->str.
      t130 = t136.
      DATA(t138) = strlen( t129 ).
      t128 = |{ t129 }{ t130 }|.
      DATA(t139) = |" not found, Target|.
      DATA(t140) = strlen( t128 ).
      t127 = |{ t128 }{ t139 }|.
      t126 = t127.
      DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t141.
      DATA(t142) = t2.
      t141 = t142->issues.
      DATA t143 TYPE REF TO zcl_lnt_issue.
      CLEAR t143.
      DATA(t144) = t2.
      DATA t145 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t145.
      DATA(t146) = t1.
      t145 = t146->get_first_token( ).
      DATA(t147) = t126.
      DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t148.
      t143 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t144 i_token = t145 i_message_26cb = t147 i_fix = t148 ).
      t141->load( ).
      APPEND t143 TO t141->items.
      t141->save( ).
      DATA t149 TYPE REF TO zcl_lnt_void_type.
      CLEAR t149.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t150.
      DATA(t151) = abap_true.
      IF t151 = abap_true.
        DATA(t152) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t152.
        t150 = t153.
      ELSE.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        t150 = t154.
      ENDIF.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t155.
      t149 = zcl_lnt_void_type=>get_db65( i_voided = t150 i_qualified_name = t155 ).
      result = t149.
      RETURN.
    ENDIF.
    DATA(t156) = VALUE int8( ).
    DATA(t157) = CONV int8( 1 ).
    t156 = t157.
    DO.
      DATA(t158) = VALUE abap_bool( ).
      DATA(t159) = t156.
      DATA(t160) = VALUE int8( ).
      DATA(t161) = VALUE i( ).
      DATA(t162) = t88.
      t162->load( ).
      t161 = lines( t162->items ).
      t160 = t161.
      t158 = xsdbool( t159 <= t160 ).
      IF t158 = abap_false.
        EXIT.
      ENDIF.
      DATA t163 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t163.
      DATA t164 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t164.
      DATA(t165) = t88.
      DATA(t166) = VALUE i( ).
      DATA(t167) = t156.
      t166 = t167.
      t166 = t166 + 1.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      t165->load( ).
      CLEAR t168.
      READ TABLE t165->items INDEX t166 INTO t168.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      CLEAR t164.
      IF t168 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t169 ?= t168.
        DATA t170 TYPE REF TO object.
        CLEAR t170.
        t170 = t169->as_ref( ).
        t164 ?= t170.
      ELSE.
        t164 ?= t168.
      ENDIF.
      t163 = t164.
      DATA(t171) = VALUE abap_bool( ).
      DATA t172 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t172.
      DATA(t173) = t163.
      t172 = t173.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      t174 = t175.
      DATA(t176) = VALUE abap_bool( ).
      DATA(t177) = t172.
      IF t177 IS INITIAL.
        t176 = abap_true.
      ENDIF.
      t171 = t176.
      IF t171 = abap_true.
        EXIT.
      ENDIF.
      DATA(t178) = VALUE int8( ).
      DATA(t179) = t156.
      DATA(t180) = CONV int8( 1 ).
      t178 = t179 + t180.
      t156 = t178.
      DATA(t181) = VALUE abap_bool( ).
      DATA t182 TYPE REF TO object.
      CLEAR t182.
      DATA(t183) = t163.
      t182 = t183->get_db65( ).
      t181 = xsdbool( t182 IS BOUND AND t182 IS INSTANCE OF zcl_lnt_dash ).
      IF t181 = abap_true.
        DATA(t184) = VALUE abap_bool( ).
        DATA(t185) = t113.
        t184 = xsdbool( t185 IS BOUND AND t185 IS INSTANCE OF zcl_lnt_unknown_type ).
        IF t184 = abap_true.
          DATA t186 TYPE REF TO zcl_lnt_void_type.
          CLEAR t186.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA(t188) = abap_true.
          IF t188 = abap_true.
            DATA(t189) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t190->has = abap_true.
            t190->value = t189.
            t187 = t190.
          ELSE.
            DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t191.
            t187 = t191.
          ENDIF.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t192.
          t186 = zcl_lnt_void_type=>get_db65( i_voided = t187 i_qualified_name = t192 ).
          result = t186.
          RETURN.
        ELSE.
          DATA(t193) = VALUE abap_bool( ).
          DATA(t194) = VALUE abap_bool( ).
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = t113.
          t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t194 = t195.
          IF t195 = abap_true.
            DATA(t197) = VALUE abap_bool( ).
            DATA t198 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t198.
            DATA t199 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t199.
            DATA(t200) = t113.
            t199 ?= t200.
            t198 = t199.
            DATA(t201) = VALUE abap_bool( ).
            DATA t202 TYPE REF TO zcl_lnt_itable_options.
            CLEAR t202.
            DATA(t203) = t198.
            t202 = t203->options.
            t201 = t202->zlnt_view_read_sr_ec4602663c93( ).
            t197 = t201.
            t194 = t197.
          ENDIF.
          t193 = t194.
          IF t194 = abap_true.
            DATA(t204) = VALUE abap_bool( ).
            DATA t205 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t205.
            DATA t206 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t206.
            DATA t207 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t207.
            DATA(t208) = t113.
            t207 ?= t208.
            t206 = t207.
            DATA t209 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t209.
            DATA(t210) = t206.
            t209 = t210->row_type.
            t205 = t209.
            t204 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_unknown_type ).
            t193 = t204.
          ENDIF.
          IF t193 = abap_true.
            DATA t211 TYPE REF TO zcl_lnt_void_type.
            CLEAR t211.
            DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t212.
            DATA(t213) = abap_true.
            IF t213 = abap_true.
              DATA(t214) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t215->has = abap_true.
              t215->value = t214.
              t212 = t215.
            ELSE.
              DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t216.
              t212 = t216.
            ENDIF.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            t211 = zcl_lnt_void_type=>get_db65( i_voided = t212 i_qualified_name = t217 ).
            result = t211.
            RETURN.
          ELSE.
            DATA(t218) = VALUE abap_bool( ).
            DATA(t219) = VALUE abap_bool( ).
            DATA(t220) = VALUE abap_bool( ).
            DATA(t221) = t113.
            t220 = xsdbool( t221 IS BOUND AND t221 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t219 = t220.
            IF t220 = abap_true.
              DATA(t222) = VALUE abap_bool( ).
              DATA t223 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t223.
              DATA t224 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t224.
              DATA(t225) = t113.
              t224 ?= t225.
              t223 = t224.
              DATA(t226) = VALUE abap_bool( ).
              DATA t227 TYPE REF TO zcl_lnt_itable_options.
              CLEAR t227.
              DATA(t228) = t223.
              t227 = t228->options.
              t226 = t227->zlnt_view_read_sr_ec4602663c93( ).
              t222 = t226.
              t219 = t222.
            ENDIF.
            t218 = t219.
            IF t219 = abap_true.
              DATA(t229) = VALUE abap_bool( ).
              DATA t230 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t230.
              DATA t231 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t231.
              DATA t232 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t232.
              DATA(t233) = t113.
              t232 ?= t233.
              t231 = t232.
              DATA t234 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t234.
              DATA(t235) = t231.
              t234 = t235->row_type.
              t230 = t234.
              t229 = xsdbool( t230 IS BOUND AND t230 IS INSTANCE OF zcl_lnt_void_type ).
              t218 = t229.
            ENDIF.
            IF t218 = abap_true.
              DATA t236 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t236.
              DATA(t237) = abap_true.
              IF t237 = abap_true.
                DATA t238 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t238.
                DATA t239 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t239.
                DATA t240 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t240.
                DATA(t241) = t113.
                t240 ?= t241.
                t239 = t240.
                DATA t242 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t242.
                DATA(t243) = t239.
                t242 = t243->row_type.
                t238 = t242.
                t236 = t238.
              ELSE.
                DATA t244 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t244.
                t236 = t244.
              ENDIF.
              result = t236.
              RETURN.
            ELSE.
              DATA(t245) = VALUE abap_bool( ).
              DATA(t246) = VALUE abap_bool( ).
              DATA(t247) = VALUE abap_bool( ).
              DATA(t248) = VALUE abap_bool( ).
              DATA(t249) = t113.
              t248 = xsdbool( t249 IS BOUND AND t249 IS INSTANCE OF zcl_lnt_structure_type ).
              t247 = xsdbool( t248 = abap_false ).
              t246 = t247.
              IF t247 = abap_true.
                DATA(t250) = VALUE abap_bool( ).
                DATA(t251) = VALUE abap_bool( ).
                DATA(t252) = VALUE abap_bool( ).
                DATA(t253) = VALUE abap_bool( ).
                DATA(t254) = t113.
                t253 = xsdbool( t254 IS BOUND AND t254 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t252 = t253.
                IF t253 = abap_true.
                  DATA(t255) = VALUE abap_bool( ).
                  DATA t256 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t256.
                  DATA t257 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t257.
                  DATA(t258) = t113.
                  t257 ?= t258.
                  t256 = t257.
                  DATA(t259) = VALUE abap_bool( ).
                  DATA t260 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t260.
                  DATA(t261) = t256.
                  t260 = t261->options.
                  t259 = t260->zlnt_view_read_sr_ec4602663c93( ).
                  t255 = t259.
                  t252 = t255.
                ENDIF.
                t251 = t252.
                IF t252 = abap_true.
                  DATA(t262) = VALUE abap_bool( ).
                  DATA t263 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t263.
                  DATA t264 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t264.
                  DATA t265 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t265.
                  DATA(t266) = t113.
                  t265 ?= t266.
                  t264 = t265.
                  DATA t267 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t267.
                  DATA(t268) = t264.
                  t267 = t268->row_type.
                  t263 = t267.
                  t262 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_structure_type ).
                  t251 = t262.
                ENDIF.
                t250 = xsdbool( t251 = abap_false ).
                t246 = t250.
              ENDIF.
              t245 = t246.
              IF t246 = abap_true.
                DATA(t269) = VALUE abap_bool( ).
                DATA(t270) = VALUE abap_bool( ).
                DATA(t271) = t113.
                t270 = xsdbool( t271 IS BOUND AND t271 IS INSTANCE OF zcl_lnt_void_type ).
                t269 = xsdbool( t270 = abap_false ).
                t245 = t269.
              ENDIF.
              IF t245 = abap_true.
                DATA(t272) = VALUE string( ).
                DATA(t273) = VALUE string( ).
                DATA(t274) = VALUE string( ).
                DATA(t275) = VALUE string( ).
                DATA(t276) = |Not a structure, target, |.
                DATA(t277) = VALUE string( ).
                DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t278.
                DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t279.
                DATA t280 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t280.
                DATA t281 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t281.
                DATA t282 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t282.
                DATA(t283) = t113.
                t282 = t283.
                DATA t284 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t284.
                DATA(t285) = VALUE abap_bool( ).
                DATA(t286) = t282.
                IF t286 IS INITIAL.
                  t285 = abap_true.
                ENDIF.
                IF t285 = abap_true.
                  DATA t287 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t287.
                  t284 = t287.
                ELSE.
                  DATA t288 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t288.
                  DATA t289 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t289.
                  DATA(t290) = t282.
                  t289 = t290.
                  t288 = t289->zlnt_builtin_clas_3f891b097658( ).
                  t284 = t288.
                ENDIF.
                t281 = t284.
                t280 = t281.
                DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t291.
                DATA(t292) = VALUE abap_bool( ).
                DATA(t293) = t280.
                IF t293 IS INITIAL.
                  t292 = abap_true.
                ENDIF.
                IF t292 = abap_true.
                  DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t294.
                  t291 = t294.
                ELSE.
                  DATA(t295) = VALUE string( ).
                  DATA t296 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t296.
                  DATA(t297) = t280.
                  t296 = t297.
                  t295 = t296->name.
                  DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t298->has = abap_true.
                  t298->value = t295.
                  t291 = t298.
                ENDIF.
                t279 = t291.
                t278 = t279.
                DATA(t299) = VALUE string( ).
                DATA(t300) = VALUE abap_bool( ).
                DATA(t301) = t278.
                IF t301 IS INITIAL.
                  t300 = abap_true.
                ELSEIF t301->has = abap_false.
                  t300 = abap_true.
                ENDIF.
                IF t300 = abap_true.
                  DATA(t302) = |undefined|.
                  t299 = t302.
                ELSE.
                  DATA(t303) = VALUE string( ).
                  DATA(t304) = t278.
                  t303 = t304->value.
                  t299 = t303.
                ENDIF.
                t277 = t299.
                DATA(t305) = strlen( t276 ).
                t275 = |{ t276 }{ t277 }|.
                DATA(t306) = |, |.
                DATA(t307) = strlen( t275 ).
                t274 = |{ t275 }{ t306 }|.
                DATA(t308) = VALUE string( ).
                DATA(t309) = t163.
                t308 = t309->concat_tokens( ).
                DATA(t310) = strlen( t274 ).
                t273 = |{ t274 }{ t308 }|.
                t272 = t273.
                DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t311.
                DATA(t312) = t2.
                t311 = t312->issues.
                DATA t313 TYPE REF TO zcl_lnt_issue.
                CLEAR t313.
                DATA(t314) = t2.
                DATA t315 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t315.
                DATA(t316) = t1.
                t315 = t316->get_first_token( ).
                DATA(t317) = t272.
                DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t318.
                t313 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t314 i_token = t315 i_message_26cb = t317 i_fix = t318 ).
                t311->load( ).
                APPEND t313 TO t311->items.
                t311->save( ).
                DATA t319 TYPE REF TO zcl_lnt_void_type.
                CLEAR t319.
                DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t320.
                DATA(t321) = abap_true.
                IF t321 = abap_true.
                  DATA(t322) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t323->has = abap_true.
                  t323->value = t322.
                  t320 = t323.
                ELSE.
                  DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t324.
                  t320 = t324.
                ENDIF.
                DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t325.
                t319 = zcl_lnt_void_type=>get_db65( i_voided = t320 i_qualified_name = t325 ).
                result = t319.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t326) = VALUE abap_bool( ).
        DATA t327 TYPE REF TO object.
        CLEAR t327.
        DATA(t328) = t163.
        t327 = t328->get_db65( ).
        t326 = xsdbool( t327 IS BOUND AND t327 IS INSTANCE OF zcl_lnt_instance_arrow ).
        IF t326 = abap_true.
          DATA(t329) = VALUE abap_bool( ).
          DATA(t330) = VALUE abap_bool( ).
          DATA(t331) = VALUE abap_bool( ).
          DATA(t332) = VALUE abap_bool( ).
          DATA(t333) = t113.
          t332 = xsdbool( t333 IS BOUND AND t333 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t331 = xsdbool( t332 = abap_false ).
          t330 = t331.
          IF t331 = abap_true.
            DATA(t334) = VALUE abap_bool( ).
            DATA(t335) = VALUE abap_bool( ).
            DATA(t336) = t113.
            t335 = xsdbool( t336 IS BOUND AND t336 IS INSTANCE OF zcl_lnt_data_reference ).
            t334 = xsdbool( t335 = abap_false ).
            t330 = t334.
          ENDIF.
          t329 = t330.
          IF t330 = abap_true.
            DATA(t337) = VALUE abap_bool( ).
            DATA(t338) = VALUE abap_bool( ).
            DATA(t339) = t113.
            t338 = xsdbool( t339 IS BOUND AND t339 IS INSTANCE OF zcl_lnt_void_type ).
            t337 = xsdbool( t338 = abap_false ).
            t329 = t337.
          ENDIF.
          IF t329 = abap_true.
            DATA(t340) = VALUE string( ).
            DATA(t341) = |Not an object reference, target|.
            t340 = t341.
            DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t342.
            DATA(t343) = t2.
            t342 = t343->issues.
            DATA t344 TYPE REF TO zcl_lnt_issue.
            CLEAR t344.
            DATA(t345) = t2.
            DATA t346 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t346.
            DATA(t347) = t1.
            t346 = t347->get_first_token( ).
            DATA(t348) = t340.
            DATA t349 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t349.
            t344 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t345 i_token = t346 i_message_26cb = t348 i_fix = t349 ).
            t342->load( ).
            APPEND t344 TO t342->items.
            t342->save( ).
            DATA t350 TYPE REF TO zcl_lnt_void_type.
            CLEAR t350.
            DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t351.
            DATA(t352) = abap_true.
            IF t352 = abap_true.
              DATA(t353) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t354->has = abap_true.
              t354->value = t353.
              t351 = t354.
            ELSE.
              DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t355.
              t351 = t355.
            ENDIF.
            DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t356.
            t350 = zcl_lnt_void_type=>get_db65( i_voided = t351 i_qualified_name = t356 ).
            result = t350.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t357) = VALUE abap_bool( ).
          DATA t358 TYPE REF TO object.
          CLEAR t358.
          DATA(t359) = t163.
          t358 = t359->get_db65( ).
          t357 = xsdbool( t358 IS BOUND AND t358 IS INSTANCE OF zcl_lnt_st_dereference ).
          IF t357 = abap_true.
            DATA(t360) = VALUE abap_bool( ).
            DATA(t361) = VALUE abap_bool( ).
            DATA(t362) = VALUE abap_bool( ).
            DATA(t363) = t113.
            t362 = xsdbool( t363 IS BOUND AND t363 IS INSTANCE OF zcl_lnt_data_reference ).
            t361 = xsdbool( t362 = abap_false ).
            t360 = t361.
            IF t361 = abap_true.
              DATA(t364) = VALUE abap_bool( ).
              DATA(t365) = VALUE abap_bool( ).
              DATA(t366) = t113.
              t365 = xsdbool( t366 IS BOUND AND t366 IS INSTANCE OF zcl_lnt_void_type ).
              t364 = xsdbool( t365 = abap_false ).
              t360 = t364.
            ENDIF.
            IF t360 = abap_true.
              DATA(t367) = VALUE string( ).
              DATA(t368) = |Not an object reference, target|.
              t367 = t368.
              DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t369.
              DATA(t370) = t2.
              t369 = t370->issues.
              DATA t371 TYPE REF TO zcl_lnt_issue.
              CLEAR t371.
              DATA(t372) = t2.
              DATA t373 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t373.
              DATA(t374) = t1.
              t373 = t374->get_first_token( ).
              DATA(t375) = t367.
              DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t376.
              t371 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t372 i_token = t373 i_message_26cb = t375 i_fix = t376 ).
              t369->load( ).
              APPEND t371 TO t369->items.
              t369->save( ).
              DATA t377 TYPE REF TO zcl_lnt_void_type.
              CLEAR t377.
              DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t378.
              DATA(t379) = abap_true.
              IF t379 = abap_true.
                DATA(t380) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t381->has = abap_true.
                t381->value = t380.
                t378 = t381.
              ELSE.
                DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t382.
                t378 = t382.
              ENDIF.
              DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t383.
              t377 = zcl_lnt_void_type=>get_db65( i_voided = t378 i_qualified_name = t383 ).
              result = t377.
              RETURN.
            ENDIF.
            DATA(t384) = VALUE abap_bool( ).
            DATA(t385) = VALUE abap_bool( ).
            DATA(t386) = t113.
            t385 = xsdbool( t386 IS BOUND AND t386 IS INSTANCE OF zcl_lnt_void_type ).
            t384 = xsdbool( t385 = abap_false ).
            IF t384 = abap_true.
              DATA t387 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t387.
              DATA(t388) = abap_true.
              IF t388 = abap_true.
                DATA t389 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t389.
                DATA t390 TYPE REF TO zcl_lnt_data_reference.
                CLEAR t390.
                DATA t391 TYPE REF TO zcl_lnt_data_reference.
                CLEAR t391.
                DATA(t392) = t113.
                t391 ?= t392.
                t390 = t391.
                DATA t393 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t393.
                DATA(t394) = t390.
                t393 = t394->type_cba0.
                t389 = t393.
                t387 = t389.
              ELSE.
                DATA t395 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t395.
                t387 = t395.
              ENDIF.
              t113 = t387.
            ENDIF.
          ELSE.
            DATA(t396) = VALUE abap_bool( ).
            DATA t397 TYPE REF TO object.
            CLEAR t397.
            DATA(t398) = t163.
            t397 = t398->get_db65( ).
            t396 = xsdbool( t397 IS BOUND AND t397 IS INSTANCE OF zcl_lnt_st_component_name ).
            IF t396 = abap_true.
              DATA t399 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t399.
              DATA(t400) = t113.
              DATA t401 TYPE REF TO zif_lnt_node.
              CLEAR t401.
              DATA(t402) = t163.
              t401 ?= t402.
              DATA(t403) = t2.
              t399 = zcl_lnt_sy_component_name=>run_syntax( i_context = t400 i_node = t401 i_input_967e = t403 ).
              t113 = t399.
            ELSE.
              DATA(t404) = VALUE abap_bool( ).
              DATA t405 TYPE REF TO object.
              CLEAR t405.
              DATA(t406) = t163.
              t405 = t406->get_db65( ).
              t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_table_body ).
              IF t404 = abap_true.
                DATA(t407) = VALUE abap_bool( ).
                DATA(t408) = VALUE abap_bool( ).
                DATA(t409) = VALUE abap_bool( ).
                DATA(t410) = VALUE abap_bool( ).
                DATA(t411) = VALUE abap_bool( ).
                DATA(t412) = t113.
                t411 = xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t410 = xsdbool( t411 = abap_false ).
                t409 = t410.
                IF t410 = abap_true.
                  DATA(t413) = VALUE abap_bool( ).
                  DATA(t414) = VALUE abap_bool( ).
                  DATA(t415) = t113.
                  t414 = xsdbool( t415 IS BOUND AND t415 IS INSTANCE OF zcl_lnt_void_type ).
                  t413 = xsdbool( t414 = abap_false ).
                  t409 = t413.
                ENDIF.
                t408 = t409.
                IF t409 = abap_true.
                  DATA(t416) = VALUE abap_bool( ).
                  DATA(t417) = VALUE abap_bool( ).
                  DATA(t418) = t113.
                  t417 = xsdbool( t418 IS BOUND AND t418 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t416 = xsdbool( t417 = abap_false ).
                  t408 = t416.
                ENDIF.
                t407 = t408.
                IF t408 = abap_true.
                  DATA(t419) = VALUE abap_bool( ).
                  DATA(t420) = VALUE abap_bool( ).
                  DATA(t421) = t113.
                  t420 = xsdbool( t421 IS BOUND AND t421 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t419 = xsdbool( t420 = abap_false ).
                  t407 = t419.
                ENDIF.
                IF t407 = abap_true.
                  DATA(t422) = VALUE string( ).
                  DATA(t423) = VALUE string( ).
                  DATA(t424) = VALUE string( ).
                  DATA(t425) = |Not an internal table, "|.
                  DATA(t426) = VALUE string( ).
                  DATA(t427) = t1.
                  t426 = t427->concat_tokens( ).
                  DATA(t428) = strlen( t425 ).
                  t424 = |{ t425 }{ t426 }|.
                  DATA(t429) = |"|.
                  DATA(t430) = strlen( t424 ).
                  t423 = |{ t424 }{ t429 }|.
                  t422 = t423.
                  DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t431.
                  DATA(t432) = t2.
                  t431 = t432->issues.
                  DATA t433 TYPE REF TO zcl_lnt_issue.
                  CLEAR t433.
                  DATA(t434) = t2.
                  DATA t435 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t435.
                  DATA(t436) = t1.
                  t435 = t436->get_first_token( ).
                  DATA(t437) = t422.
                  DATA t438 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t438.
                  t433 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t434 i_token = t435 i_message_26cb = t437 i_fix = t438 ).
                  t431->load( ).
                  APPEND t433 TO t431->items.
                  t431->save( ).
                  DATA t439 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t439.
                  DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t440.
                  DATA(t441) = abap_true.
                  IF t441 = abap_true.
                    DATA(t442) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t443->has = abap_true.
                    t443->value = t442.
                    t440 = t443.
                  ELSE.
                    DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t444.
                    t440 = t444.
                  ENDIF.
                  DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t445.
                  t439 = zcl_lnt_void_type=>get_db65( i_voided = t440 i_qualified_name = t445 ).
                  result = t439.
                  RETURN.
                ENDIF.
                DATA(t446) = VALUE abap_bool( ).
                DATA(t447) = VALUE abap_bool( ).
                DATA(t448) = t113.
                t447 = xsdbool( t448 IS BOUND AND t448 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t446 = t447.
                IF t447 = abap_true.
                  DATA(t449) = VALUE abap_bool( ).
                  DATA t450 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t450.
                  DATA t451 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t451.
                  DATA(t452) = t113.
                  t451 ?= t452.
                  t450 = t451.
                  DATA(t453) = VALUE abap_bool( ).
                  DATA t454 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t454.
                  DATA(t455) = t450.
                  t454 = t455->options.
                  t453 = t454->zlnt_view_read_sr_ec4602663c93( ).
                  t449 = t453.
                  t446 = t449.
                ENDIF.
                IF t446 = abap_true.
                  DATA t456 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t456.
                  DATA t457 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t457.
                  DATA t458 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t458.
                  DATA t459 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t459.
                  DATA(t460) = t113.
                  t459 ?= t460.
                  t458 = t459.
                  DATA t461 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t461.
                  DATA(t462) = t458.
                  t461 = t462->row_type.
                  t457 = t461.
                  DATA t463 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t463.
                  DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t464.
                  DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t465.
                  DATA(t466) = |\{\}|.
                  TRY.
                      t465 = zlnt_runtime_json_7c6b3012af76=>parse( t466 ).
                    CATCH zlnt_exception_js_ebcc2df7d5e4.
                      DATA(t467) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t467->has = abap_true.
                      t467->value = `Invalid JSON`.
                      DATA(t468) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t467 ).
                      DATA(t469) = NEW zlnt_exception_cl_30eec8e8805d( ).
                      t469->payload = t468.
                      DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t470.
                      CLEAR t470.
                      IF t468 IS BOUND.
                        DATA t471 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t471.
                        DATA t472 TYPE REF TO object.
                        CLEAR t472.
                        CLEAR t471.
                        t472 = t468.
                        TRY.
                            t470 ?= t472.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                        IF t470 IS NOT BOUND.
                          TRY.
                              t471 ?= t468.
                            CATCH cx_sy_move_cast_error.
                          ENDTRY.
                          IF t471 IS BOUND.
                            t470 = t471->source( ).
                          ENDIF.
                          IF t470 IS NOT BOUND.
                            CREATE OBJECT t470.
                            t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            t470->oval = t468.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                      t469->source_value = t470.
                      RAISE EXCEPTION t469.
                  ENDTRY.
                  t464 = t465.
                  DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t473.
                  DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t474.
                  DATA t475 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t475.
                  DATA t476 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t476.
                  DATA t477 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t477.
                  DATA(t478) = t113.
                  t477 ?= t478.
                  t476 = t477.
                  DATA t479 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t479.
                  DATA(t480) = t476.
                  t479 = t480->options.
                  t475 = t479.
                  CLEAR t474.
                  IF t475 IS BOUND.
                    DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t481.
                    DATA t482 TYPE REF TO object.
                    CLEAR t482.
                    CLEAR t481.
                    t482 = t475.
                    TRY.
                        t474 ?= t482.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t474 IS NOT BOUND.
                      TRY.
                          t481 ?= t475.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t481 IS BOUND.
                        t474 = t481->source( ).
                      ENDIF.
                      IF t474 IS NOT BOUND.
                        CREATE OBJECT t474.
                        t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t474->oval = t475.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                  t473 = t474.
                  DATA(t483) = VALUE abap_bool( ).
                  DATA(t484) = VALUE abap_bool( ).
                  DATA(t485) = t473.
                  IF t485 IS NOT BOUND.
                    t484 = abap_true.
                  ELSE.
                    t484 = xsdbool( t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                  ENDIF.
                  t483 = xsdbool( t484 = abap_false ).
                  IF t483 = abap_true.
                    DATA t486 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t486.
                    DATA(t487) = t473.
                    t486 = zlnt_runtime_ownk_4497b85e405d=>keys( t487 ).
                    DATA(t488) = VALUE string( ).
                    t486->dense( ).
                    DATA(t489) = VALUE i( ).
                    DO.
                      t486->load( ).
                      IF t489 >= lines( t486->items ).
                        EXIT.
                      ENDIF.
                      CLEAR t488.
                      READ TABLE t486->items INDEX t489 + 1 INTO t488.
                      IF t486->has( t489 ) = abap_false.
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      t489 = t489 + 1.
                      DATA(t490) = t464.
                      DATA(t491) = t488.
                      DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t492.
                      DATA(t493) = t473.
                      DATA(t494) = t488.
                      t492 = t493->get( p0 = t494 ).
                      t490->put( p0 = t491 p1 = t492 ).
                    ENDDO.
                  ENDIF.
                  DATA(t495) = t464.
                  DATA(t496) = |withHeader|.
                  DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t497.
                  DATA(t498) = abap_false.
                  CLEAR t497.
                  CREATE OBJECT t497.
                  t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  t497->bval = t498.
                  t495->put( p0 = t496 p1 = t497 ).
                  DATA t499 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t499.
                  DATA(t500) = t464.
                  CLEAR t499.
                  IF t500 IS BOUND.
                    IF t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t499 ?= t500->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t499 IS NOT BOUND.
                      IF t500->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t501 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t501.
                        IF t500->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t501 ?= t500->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t501->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t502) = VALUE abap_bool( ).
                      DATA(t503) = VALUE string( ).
                      DATA t504 TYPE REF TO zcl_lnt_itable_key.
                      CLEAR t504.
                      DATA t505 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t505.
                      t499 = NEW zcl_lnt_itable_options( view_source = t500 i_with_header = t502 i_key_type = t503 i_primary_key = t504 i_secondary = t505 ).
                    ENDIF.
                  ENDIF.
                  t463 = t499.
                  DATA t506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t506.
                  DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t507.
                  t456 = NEW zcl_lnt_ty_table_type( i_row_type = t457 i_options = t463 i_qualified_name = t506 i_description = t507 ).
                  t113 = t456.
                ENDIF.
              ELSE.
                DATA(t508) = VALUE abap_bool( ).
                DATA(t509) = VALUE abap_bool( ).
                DATA(t510) = t163.
                t509 = xsdbool( t510 IS BOUND AND t510 IS INSTANCE OF zcl_lnt_expression_node ).
                t508 = t509.
                IF t509 = abap_true.
                  DATA(t511) = VALUE abap_bool( ).
                  DATA t512 TYPE REF TO zif_lnt_statement_runnable.
                  CLEAR t512.
                  DATA t513 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t513.
                  DATA(t514) = t163.
                  DATA t515 TYPE REF TO object.
                  CLEAR t515.
                  t515 = t514.
                  t513 ?= t515.
                  t512 = t513->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t511 = xsdbool( t512 IS BOUND AND t512 IS INSTANCE OF zcl_lnt_st_table_expression ).
                  t508 = t511.
                ENDIF.
                IF t508 = abap_true.
                  DATA(t516) = VALUE abap_bool( ).
                  DATA(t517) = VALUE abap_bool( ).
                  DATA(t518) = VALUE abap_bool( ).
                  DATA(t519) = VALUE abap_bool( ).
                  DATA(t520) = t113.
                  t519 = xsdbool( t520 IS BOUND AND t520 IS INSTANCE OF zcl_lnt_ty_table_type ).
                  t518 = xsdbool( t519 = abap_false ).
                  t517 = t518.
                  IF t518 = abap_true.
                    DATA(t521) = VALUE abap_bool( ).
                    DATA(t522) = VALUE abap_bool( ).
                    DATA(t523) = t113.
                    t522 = xsdbool( t523 IS BOUND AND t523 IS INSTANCE OF zcl_lnt_void_type ).
                    t521 = xsdbool( t522 = abap_false ).
                    t517 = t521.
                  ENDIF.
                  t516 = t517.
                  IF t517 = abap_true.
                    DATA(t524) = VALUE abap_bool( ).
                    DATA(t525) = VALUE abap_bool( ).
                    DATA(t526) = t113.
                    t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t524 = xsdbool( t525 = abap_false ).
                    t516 = t524.
                  ENDIF.
                  IF t516 = abap_true.
                    DATA(t527) = VALUE string( ).
                    DATA(t528) = |Table expression, expected table|.
                    t527 = t528.
                    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t529.
                    DATA(t530) = t2.
                    t529 = t530->issues.
                    DATA t531 TYPE REF TO zcl_lnt_issue.
                    CLEAR t531.
                    DATA(t532) = t2.
                    DATA t533 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t533.
                    DATA(t534) = t1.
                    t533 = t534->get_first_token( ).
                    DATA(t535) = t527.
                    DATA t536 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t536.
                    t531 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t532 i_token = t533 i_message_26cb = t535 i_fix = t536 ).
                    t529->load( ).
                    APPEND t531 TO t529->items.
                    t529->save( ).
                    DATA t537 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t537.
                    DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t538.
                    DATA(t539) = abap_true.
                    IF t539 = abap_true.
                      DATA(t540) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t541->has = abap_true.
                      t541->value = t540.
                      t538 = t541.
                    ELSE.
                      DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t542.
                      t538 = t542.
                    ENDIF.
                    DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t543.
                    t537 = zcl_lnt_void_type=>get_db65( i_voided = t538 i_qualified_name = t543 ).
                    result = t537.
                    RETURN.
                  ENDIF.
                  DATA t544 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t544.
                  DATA(t545) = abap_true.
                  IF t545 = abap_true.
                    DATA t546 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t546.
                    DATA(t547) = t163.
                    DATA t548 TYPE REF TO object.
                    CLEAR t548.
                    t548 = t547.
                    t546 ?= t548.
                    t544 = t546.
                  ELSE.
                    DATA t549 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t549.
                    t544 = t549.
                  ENDIF.
                  DATA(t550) = t2.
                  DATA t551 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t551.
                  DATA(t552) = abap_true.
                  IF t552 = abap_true.
                    DATA t553 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t553.
                    DATA t554 TYPE REF TO zif_lnt_union_297610d4.
                    CLEAR t554.
                    DATA t555 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t555.
                    DATA(t556) = t113.
                    t555 = t556.
                    t554 ?= t555.
                    t553 ?= t554.
                    t551 = t553.
                  ELSE.
                    DATA t557 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t557.
                    t551 = t557.
                  ENDIF.
                  zcl_lnt_sy_table_expression=>run_syntax( i_node = t544 i_input_967e = t550 i_row_type = t551 ).
                  DATA(t558) = VALUE abap_bool( ).
                  DATA(t559) = VALUE abap_bool( ).
                  DATA(t560) = VALUE abap_bool( ).
                  DATA(t561) = t113.
                  t560 = xsdbool( t561 IS BOUND AND t561 IS INSTANCE OF zcl_lnt_void_type ).
                  t559 = xsdbool( t560 = abap_false ).
                  t558 = t559.
                  IF t559 = abap_true.
                    DATA(t562) = VALUE abap_bool( ).
                    DATA(t563) = VALUE abap_bool( ).
                    DATA(t564) = t113.
                    t563 = xsdbool( t564 IS BOUND AND t564 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t562 = xsdbool( t563 = abap_false ).
                    t558 = t562.
                  ENDIF.
                  IF t558 = abap_true.
                    DATA t565 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t565.
                    DATA(t566) = abap_true.
                    IF t566 = abap_true.
                      DATA t567 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t567.
                      DATA t568 TYPE REF TO zcl_lnt_ty_table_type.
                      CLEAR t568.
                      DATA t569 TYPE REF TO zcl_lnt_ty_table_type.
                      CLEAR t569.
                      DATA(t570) = t113.
                      t569 ?= t570.
                      t568 = t569.
                      DATA t571 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t571.
                      DATA(t572) = t568.
                      t571 = t572->row_type.
                      t567 = t571.
                      t565 = t567.
                    ELSE.
                      DATA t573 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t573.
                      t565 = t573.
                    ENDIF.
                    t113 = t565.
                  ENDIF.
                ELSE.
                  DATA(t574) = VALUE abap_bool( ).
                  DATA t575 TYPE REF TO object.
                  CLEAR t575.
                  DATA(t576) = t163.
                  t575 = t576->get_db65( ).
                  t574 = xsdbool( t575 IS BOUND AND t575 IS INSTANCE OF zcl_lnt_st_attribute_name ).
                  IF t574 = abap_true.
                    DATA(t577) = VALUE string( ).
                    DATA(t578) = VALUE string( ).
                    DATA(t579) = VALUE abap_bool( ).
                    DATA(t580) = VALUE i( ).
                    DATA(t581) = t88.
                    t581->load( ).
                    t580 = lines( t581->items ).
                    DATA(t582) = 0.
                    t579 = xsdbool( t580 = t582 ).
                    IF t579 = abap_true.
                      DATA(t583) = |Write To|.
                      t578 = t583.
                    ELSE.
                      DATA(t584) = |Read From|.
                      t578 = t584.
                    ENDIF.
                    t577 = t578.
                    DATA t585 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t585.
                    DATA(t586) = t113.
                    DATA t587 TYPE REF TO zif_lnt_node.
                    CLEAR t587.
                    DATA(t588) = t163.
                    t587 ?= t588.
                    DATA(t589) = t2.
                    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t590.
                    DATA(t591) = abap_true.
                    IF t591 = abap_true.
                      DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t592.
                      DATA(t593) = t577.
                      CLEAR t592.
                      CREATE OBJECT t592.
                      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                      t592->sval = t593.
                      t590 = t592.
                    ELSE.
                      DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t594.
                      t590 = t594.
                    ENDIF.
                    DATA t595 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t595.
                    t585 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t586 i_node = t587 i_input_967e = t589 i_type_9913 = t590 i_error = t595 ).
                    t113 = t585.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t596 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t596.
    DATA t597 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t597.
    DATA(t598) = t1.
    DATA(t599) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    t597 = t598->find_direct_expression( i_type_9913 = t599 ).
    t596 = t597.
    DATA(t600) = VALUE abap_bool( ).
    DATA(t601) = t596.
    t600 = xsdbool( t601 IS BOUND ).
    IF t600 = abap_true.
      DATA(t602) = VALUE abap_bool( ).
      DATA(t603) = VALUE abap_bool( ).
      DATA(t604) = t113.
      t603 = xsdbool( t604 IS BOUND AND t604 IS INSTANCE OF zcl_lnt_x_string_type ).
      t602 = t603.
      IF t603 = abap_false.
        DATA(t605) = VALUE abap_bool( ).
        DATA(t606) = t113.
        t605 = xsdbool( t606 IS BOUND AND t606 IS INSTANCE OF zcl_lnt_string_type ).
        t602 = t605.
      ENDIF.
      IF t602 = abap_true.
        DATA(t607) = VALUE string( ).
        DATA(t608) = |xstring/string offset/length in writer position not possible|.
        t607 = t608.
        DATA t609 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t609.
        DATA(t610) = t2.
        t609 = t610->issues.
        DATA t611 TYPE REF TO zcl_lnt_issue.
        CLEAR t611.
        DATA(t612) = t2.
        DATA t613 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t613.
        DATA(t614) = t1.
        t613 = t614->get_first_token( ).
        DATA(t615) = t607.
        DATA t616 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t616.
        t611 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t612 i_token = t613 i_message_26cb = t615 i_fix = t616 ).
        t609->load( ).
        APPEND t611 TO t609->items.
        t609->save( ).
        DATA t617 TYPE REF TO zcl_lnt_void_type.
        CLEAR t617.
        DATA t618 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t618.
        DATA(t619) = abap_true.
        IF t619 = abap_true.
          DATA(t620) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t621) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t621->has = abap_true.
          t621->value = t620.
          t618 = t621.
        ELSE.
          DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t622.
          t618 = t622.
        ENDIF.
        DATA t623 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t623.
        t617 = zcl_lnt_void_type=>get_db65( i_voided = t618 i_qualified_name = t623 ).
        result = t617.
        RETURN.
      ENDIF.
      DATA t624 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t624.
      DATA t625 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t625.
      DATA(t626) = t596.
      t625 = t626.
      DATA(t627) = t2.
      t624 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t625 i_input_967e = t627 ).
    ENDIF.
    DATA t628 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t628.
    DATA t629 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t629.
    DATA(t630) = t1.
    DATA(t631) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    t629 = t630->find_direct_expression( i_type_9913 = t631 ).
    t628 = t629.
    DATA(t632) = VALUE abap_bool( ).
    DATA(t633) = t628.
    t632 = xsdbool( t633 IS BOUND ).
    IF t632 = abap_true.
      DATA(t634) = VALUE abap_bool( ).
      DATA(t635) = VALUE abap_bool( ).
      DATA(t636) = t113.
      t635 = xsdbool( t636 IS BOUND AND t636 IS INSTANCE OF zcl_lnt_x_string_type ).
      t634 = t635.
      IF t635 = abap_false.
        DATA(t637) = VALUE abap_bool( ).
        DATA(t638) = t113.
        t637 = xsdbool( t638 IS BOUND AND t638 IS INSTANCE OF zcl_lnt_string_type ).
        t634 = t637.
      ENDIF.
      IF t634 = abap_true.
        DATA(t639) = VALUE string( ).
        DATA(t640) = |xstring/string offset/length in writer position not possible|.
        t639 = t640.
        DATA t641 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t641.
        DATA(t642) = t2.
        t641 = t642->issues.
        DATA t643 TYPE REF TO zcl_lnt_issue.
        CLEAR t643.
        DATA(t644) = t2.
        DATA t645 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t645.
        DATA(t646) = t1.
        t645 = t646->get_first_token( ).
        DATA(t647) = t639.
        DATA t648 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t648.
        t643 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t644 i_token = t645 i_message_26cb = t647 i_fix = t648 ).
        t641->load( ).
        APPEND t643 TO t641->items.
        t641->save( ).
        DATA t649 TYPE REF TO zcl_lnt_void_type.
        CLEAR t649.
        DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t650.
        DATA(t651) = abap_true.
        IF t651 = abap_true.
          DATA(t652) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t653) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t653->has = abap_true.
          t653->value = t652.
          t650 = t653.
        ELSE.
          DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t654.
          t650 = t654.
        ENDIF.
        DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t655.
        t649 = zcl_lnt_void_type=>get_db65( i_voided = t650 i_qualified_name = t655 ).
        result = t649.
        RETURN.
      ENDIF.
      DATA t656 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t656.
      DATA t657 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t657.
      DATA(t658) = t628.
      t657 = t658.
      DATA(t659) = t2.
      t656 = zcl_lnt_sy_field_length=>run_syntax( i_node = t657 i_input_967e = t659 ).
    ENDIF.
    DATA(t660) = t113.
    result = t660.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_node.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zif_lnt_node.
    DATA(t14) = t1.
    t13 = t14.
    t12 = t13->get_first_token( ).
    t11 = t12.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t11.
    t17 = t18.
    DATA t19 TYPE string.
    DATA(t20) = t17.
    t19 = t20->str.
    t16 = t19.
    t15 = t16.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE REF TO object.
    DATA t24 TYPE REF TO zif_lnt_node.
    DATA(t25) = t1.
    t24 = t25.
    t23 = t24->get_db65( ).
    t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_target_field ).
    t21 = t22.
    IF t22 = abap_false.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO object.
      DATA t28 TYPE REF TO zif_lnt_node.
      DATA(t29) = t1.
      t28 = t29.
      t27 = t28->get_db65( ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_target_field_symbol ).
      t21 = t26.
    ENDIF.
    IF t21 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_current_scope.
      DATA t33 TYPE REF TO zcl_lnt_current_scope.
      DATA(t34) = t2.
      t33 = t34->scope.
      t32 = t33.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = t15.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t38.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t36 = t40.
      ENDIF.
      t35 = t36.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = t35.
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t45 = t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t43.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ELSEIF t48->has = abap_false.
        t47 = abap_true.
      ENDIF.
      t42 = t47.
      IF t42 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t49.
        t41 = t49.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t55) = t32.
        t54 = t55->current.
        t53 = t54.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t56.
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = t53.
        IF t58 IS INITIAL.
          t57 = abap_true.
        ENDIF.
        IF t57 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t59.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t62) = t53.
          t61 = t62.
          DATA t63 TYPE string.
          DATA(t64) = t35.
          t63 = t64->value.
          t60 = t61->find_variable( i_name = t63 ).
          t56 = t60.
        ENDIF.
        t52 = t56.
        t51 = t52.
        DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t65.
        DATA t66 TYPE abap_bool.
        DATA(t67) = t51.
        t66 = xsdbool( t67 IS BOUND ).
        IF t66 = abap_true.
          DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t71) = t51.
            t70 = t71.
            t68 = t70.
          ELSE.
            DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t72.
            t68 = t72.
          ENDIF.
          t65 = t68.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t73.
          DATA(t74) = t32.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA t77 TYPE string.
            DATA(t78) = t35.
            t77 = t78->value.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t77.
            t75 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t75 = t80.
          ENDIF.
          t73 = t74->find_type_pool_constant( i_name = t75 ).
          t65 = t73.
        ENDIF.
        t50 = t65.
        t41 = t50.
      ENDIF.
      t31 = t41.
      t30 = t31.
      DATA t81 TYPE abap_bool.
      DATA(t82) = t30.
      t81 = xsdbool( t82 IS BOUND ).
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_current_scope.
        DATA(t84) = t2.
        t83 = t84->scope.
        DATA t85 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t85.
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA(t87) = t11.
          t85 = t87.
        ELSE.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t88.
          t85 = t88.
        ENDIF.
        DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t90) = t30.
        t89 = t90.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        DATA(t92) = |Write To|.
        CLEAR t91.
        CREATE OBJECT t91.
        t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t91->sval = t92.
        DATA t93 TYPE string.
        DATA(t94) = t2.
        t93 = t94->filename.
        DATA t95 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t95.
        t83->add_reference( i_usage = t85 i_referencing = t89 i_type_9913 = t91 i_filename = t93 i_extra = t95 ).
      ENDIF.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = VALUE i( ).
      DATA(t98) = t15.
      DATA(t99) = |~|.
      DATA(t100) = strlen( t98 ).
      IF t99 IS INITIAL.
        t97 = 0.
      ELSE.
        FIND t99 IN t98 MATCH OFFSET t97.
        IF sy-subrc <> 0.
          t97 = -1.
        ENDIF.
      ENDIF.
      DATA(t101) = 0.
      t96 = xsdbool( t97 >= t101 ).
      IF t96 = abap_true.
        DATA t102 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t102.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t103.
        DATA t104 TYPE REF TO zcl_lnt_current_scope.
        DATA t105 TYPE REF TO zcl_lnt_current_scope.
        DATA(t106) = t2.
        t105 = t106->scope.
        t104 = t105.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t110) = t15.
        DATA(t111) = |~|.
        DATA(t112) = strlen( t110 ).
        DATA t113 TYPE i.
        DATA(t114) = VALUE i( ).
        DATA(t115) = VALUE i( ).
        DATA t116 TYPE i.
        DATA(t117) = VALUE string( ).
        CREATE OBJECT t109.
        t116 = strlen( t111 ).
        t113 = 0.
        IF t116 = 0.
          WHILE t113 < t112.
            t117 = t110+t113(1).
            APPEND t117 TO t109->items.
            t113 = t113 + 1.
          ENDWHILE.
        ELSE.
          WHILE t113 <= t112.
            FIND FIRST OCCURRENCE OF t111 IN SECTION OFFSET t113 OF t110 MATCH OFFSET t114.
            IF sy-subrc = 0.
              t115 = t114 - t113.
            ELSE.
              t114 = -1.
              t115 = t112 - t113.
            ENDIF.
            CLEAR t117.
            IF t115 > 0.
              t117 = t110+t113(t115).
            ENDIF.
            APPEND t117 TO t109->items.
            IF t114 < 0.
              EXIT.
            ENDIF.
            t113 = t114 + t116.
          ENDWHILE.
        ENDIF.
        DATA(t118) = 0.
        t108 = t109->get( p0 = t118 ).
        t107 = t108.
        DATA t119 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t119.
        DATA(t120) = VALUE abap_bool( ).
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t122) = t107.
        t121 = t122.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        t123 = t124.
        DATA(t125) = VALUE abap_bool( ).
        DATA(t126) = t121.
        IF t126 IS INITIAL.
          t125 = abap_true.
        ELSEIF t126->has = abap_false.
          t125 = abap_true.
        ENDIF.
        t120 = t125.
        IF t120 = abap_true.
          DATA t127 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t127.
          t119 = t127.
        ELSE.
          DATA t128 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t128.
          DATA t129 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t129.
          DATA t130 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t130.
          DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t133) = t104.
          t132 = t133->current.
          t131 = t132.
          DATA t134 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t134.
          DATA(t135) = VALUE abap_bool( ).
          DATA(t136) = t131.
          IF t136 IS INITIAL.
            t135 = abap_true.
          ENDIF.
          IF t135 = abap_true.
            DATA t137 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t137.
            t134 = t137.
          ELSE.
            DATA t138 TYPE REF TO zif_lnt_interface_definition.
            DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t140) = t131.
            t139 = t140.
            DATA t141 TYPE string.
            DATA(t142) = t107.
            t141 = t142->value.
            t138 = t139->find_interface_definition( i_name = t141 ).
            t134 = t138.
          ENDIF.
          t130 = t134.
          t129 = t130.
          DATA t143 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t143.
          DATA t144 TYPE abap_bool.
          DATA(t145) = t129.
          t144 = xsdbool( t145 IS BOUND ).
          IF t144 = abap_true.
            DATA t146 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t146.
            DATA(t147) = abap_true.
            IF t147 = abap_true.
              DATA t148 TYPE REF TO zif_lnt_interface_definition.
              DATA(t149) = t129.
              t148 = t149.
              t146 = t148.
            ELSE.
              DATA t150 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t150.
              t146 = t150.
            ENDIF.
            t143 = t146.
          ELSE.
            DATA t151 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t151.
            DATA t152 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t152.
            DATA t153 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t153.
            DATA t154 TYPE REF TO zif_lnt_object.
            CLEAR t154.
            DATA t155 TYPE REF TO zif_lnt_registry.
            DATA(t156) = t104.
            t155 = t156->reg.
            DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t157.
            DATA(t158) = abap_true.
            IF t158 = abap_true.
              DATA(t159) = |INTF|.
              DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t160->has = abap_true.
              t160->value = t159.
              t157 = t160.
            ELSE.
              DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t161.
              t157 = t161.
            ENDIF.
            DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t162.
            DATA(t163) = abap_true.
            IF t163 = abap_true.
              DATA t164 TYPE string.
              DATA(t165) = t107.
              t164 = t165->value.
              DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t166->has = abap_true.
              t166->value = t164.
              t162 = t166.
            ELSE.
              DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t167.
              t162 = t167.
            ENDIF.
            t154 = t155->get_object( i_type_9913 = t157 i_name = t162 ).
            DATA t168 TYPE REF TO object.
            t168 = t154.
            t153 ?= t168.
            t152 = t153.
            DATA t169 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t169.
            DATA t170 TYPE abap_bool.
            DATA(t171) = t152.
            t170 = xsdbool( t171 IS BOUND ).
            IF t170 = abap_true.
              DATA t172 TYPE REF TO zif_lnt_interface_definition.
              DATA t173 TYPE REF TO zcl_lnt_ob_interface.
              DATA t174 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t175) = t152.
              t174 = t175.
              t173 = t174.
              DATA t176 TYPE REF TO zif_lnt_interface_definition.
              DATA(t177) = t173.
              t176 = t177->def.
              t172 = t176.
              t169 = t172.
            ELSE.
              DATA t178 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t178.
              t169 = t178.
            ENDIF.
            t151 = t169.
            t143 = t151.
          ENDIF.
          t128 = t143.
          t119 = t128.
        ENDIF.
        t103 = t119.
        t102 = t103.
        DATA t179 TYPE abap_bool.
        DATA(t180) = t102.
        t179 = xsdbool( t180 IS BOUND ).
        IF t179 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_current_scope.
          DATA(t182) = t2.
          t181 = t182->scope.
          DATA t183 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t183.
          DATA(t184) = abap_true.
          IF t184 = abap_true.
            DATA(t185) = t11.
            t183 = t185.
          ELSE.
            DATA t186 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t186.
            t183 = t186.
          ENDIF.
          DATA t187 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t187.
          DATA(t188) = abap_true.
          IF t188 = abap_true.
            DATA t189 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t190 TYPE REF TO zif_lnt_interface_definition.
            DATA(t191) = t102.
            t190 = t191.
            t189 ?= t190.
            t187 = t189.
          ELSE.
            DATA t192 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t192.
            t187 = t192.
          ENDIF.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          DATA(t194) = |Object|.
          CLEAR t193.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t193->sval = t194.
          DATA t195 TYPE string.
          DATA(t196) = t2.
          t195 = t196->filename.
          DATA t197 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t197.
          t181->add_reference( i_usage = t183 i_referencing = t187 i_type_9913 = t193 i_filename = t195 i_extra = t197 ).
        ENDIF.
      ENDIF.
      DATA t198 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t198.
      DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t200) = t30.
      t199 = t200.
      DATA t201 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t201.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = t199.
      IF t203 IS INITIAL.
        t202 = abap_true.
      ENDIF.
      IF t202 = abap_true.
        DATA t204 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t204.
        t201 = t204.
      ELSE.
        DATA t205 TYPE REF TO zcl_lnt_abstract_type.
        DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t207 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t208) = t199.
        t207 = t208.
        t206 = t207.
        DATA t209 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t210) = t206.
        t209 = t210->type_cba0.
        t205 = t209.
        t201 = t205.
      ENDIF.
      t198 = t201.
      result = t198.
      RETURN.
    ELSE.
      DATA t211 TYPE abap_bool.
      DATA t212 TYPE REF TO object.
      DATA t213 TYPE REF TO zif_lnt_node.
      DATA(t214) = t1.
      t213 = t214.
      t212 = t213->get_db65( ).
      t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_class_name ).
      IF t211 = abap_true.
        DATA t215 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t215.
        DATA t216 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t216.
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        DATA t218 TYPE REF TO zcl_lnt_current_scope.
        DATA(t219) = t2.
        t218 = t219->scope.
        t217 = t218.
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t220.
        DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t221.
        DATA(t222) = abap_true.
        IF t222 = abap_true.
          DATA(t223) = t15.
          DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t224->has = abap_true.
          t224->value = t223.
          t221 = t224.
        ELSE.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t225.
          t221 = t225.
        ENDIF.
        t220 = t221.
        DATA t226 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t226.
        DATA(t227) = VALUE abap_bool( ).
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t229) = t220.
        t228 = t229.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t231.
        t230 = t231.
        DATA(t232) = VALUE abap_bool( ).
        DATA(t233) = t228.
        IF t233 IS INITIAL.
          t232 = abap_true.
        ELSEIF t233->has = abap_false.
          t232 = abap_true.
        ENDIF.
        t227 = t232.
        IF t227 = abap_true.
          DATA t234 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t234.
          t226 = t234.
        ELSE.
          DATA t235 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t235.
          DATA t236 TYPE REF TO zif_lnt_class_definition.
          CLEAR t236.
          DATA t237 TYPE REF TO zif_lnt_class_definition.
          CLEAR t237.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t238.
          DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t239.
          DATA(t240) = abap_true.
          IF t240 = abap_true.
            DATA t241 TYPE string.
            DATA(t242) = t220.
            t241 = t242->value.
            DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t243->has = abap_true.
            t243->value = t241.
            t239 = t243.
          ELSE.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            t239 = t244.
          ENDIF.
          t238 = t239.
          DATA t245 TYPE REF TO zif_lnt_class_definition.
          CLEAR t245.
          DATA(t246) = VALUE abap_bool( ).
          DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t248) = t238.
          t247 = t248.
          DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          t249 = t250.
          DATA(t251) = VALUE abap_bool( ).
          DATA(t252) = t247.
          IF t252 IS INITIAL.
            t251 = abap_true.
          ELSEIF t252->has = abap_false.
            t251 = abap_true.
          ENDIF.
          t246 = t251.
          IF t246 = abap_true.
            DATA t253 TYPE REF TO zif_lnt_class_definition.
            CLEAR t253.
            t245 = t253.
          ELSE.
            DATA t254 TYPE REF TO zif_lnt_class_definition.
            CLEAR t254.
            DATA t255 TYPE REF TO zif_lnt_class_definition.
            CLEAR t255.
            DATA t256 TYPE REF TO zif_lnt_class_definition.
            CLEAR t256.
            DATA t257 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t258 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t259) = t217.
            t258 = t259->current.
            t257 = t258.
            DATA t260 TYPE REF TO zif_lnt_class_definition.
            CLEAR t260.
            DATA(t261) = VALUE abap_bool( ).
            DATA(t262) = t257.
            IF t262 IS INITIAL.
              t261 = abap_true.
            ENDIF.
            IF t261 = abap_true.
              DATA t263 TYPE REF TO zif_lnt_class_definition.
              CLEAR t263.
              t260 = t263.
            ELSE.
              DATA t264 TYPE REF TO zif_lnt_class_definition.
              DATA t265 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t266) = t257.
              t265 = t266.
              DATA t267 TYPE string.
              DATA(t268) = t238.
              t267 = t268->value.
              t264 = t265->find_class_definition( i_name = t267 ).
              t260 = t264.
            ENDIF.
            t256 = t260.
            t255 = t256.
            DATA t269 TYPE REF TO zif_lnt_class_definition.
            CLEAR t269.
            DATA t270 TYPE abap_bool.
            DATA(t271) = t255.
            t270 = xsdbool( t271 IS BOUND ).
            IF t270 = abap_true.
              DATA t272 TYPE REF TO zif_lnt_class_definition.
              CLEAR t272.
              DATA(t273) = abap_true.
              IF t273 = abap_true.
                DATA t274 TYPE REF TO zif_lnt_class_definition.
                DATA(t275) = t255.
                t274 = t275.
                t272 = t274.
              ELSE.
                DATA t276 TYPE REF TO zif_lnt_class_definition.
                CLEAR t276.
                t272 = t276.
              ENDIF.
              t269 = t272.
            ELSE.
              DATA t277 TYPE REF TO zif_lnt_class_definition.
              CLEAR t277.
              DATA t278 TYPE REF TO zcl_lnt_class.
              CLEAR t278.
              DATA t279 TYPE REF TO zcl_lnt_class.
              CLEAR t279.
              DATA t280 TYPE REF TO zif_lnt_object.
              CLEAR t280.
              DATA t281 TYPE REF TO zif_lnt_registry.
              DATA(t282) = t217.
              t281 = t282->reg.
              DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t283.
              DATA(t284) = abap_true.
              IF t284 = abap_true.
                DATA(t285) = |CLAS|.
                DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t286->has = abap_true.
                t286->value = t285.
                t283 = t286.
              ELSE.
                DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t287.
                t283 = t287.
              ENDIF.
              DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t288.
              DATA(t289) = abap_true.
              IF t289 = abap_true.
                DATA t290 TYPE string.
                DATA(t291) = t238.
                t290 = t291->value.
                DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t292->has = abap_true.
                t292->value = t290.
                t288 = t292.
              ELSE.
                DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t293.
                t288 = t293.
              ENDIF.
              t280 = t281->get_object( i_type_9913 = t283 i_name = t288 ).
              DATA t294 TYPE REF TO object.
              t294 = t280.
              t279 ?= t294.
              t278 = t279.
              DATA t295 TYPE REF TO zif_lnt_class_definition.
              CLEAR t295.
              DATA t296 TYPE abap_bool.
              DATA(t297) = t278.
              t296 = xsdbool( t297 IS BOUND ).
              IF t296 = abap_true.
                DATA t298 TYPE REF TO zif_lnt_class_definition.
                DATA t299 TYPE REF TO zcl_lnt_class.
                DATA(t300) = t278.
                t299 = t300.
                t298 = t299->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t295 = t298.
              ELSE.
                DATA t301 TYPE REF TO zif_lnt_class_definition.
                CLEAR t301.
                t295 = t301.
              ENDIF.
              t277 = t295.
              t269 = t277.
            ENDIF.
            t254 = t269.
            t245 = t254.
          ENDIF.
          t237 = t245.
          t236 = t237.
          DATA t302 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t302.
          DATA t303 TYPE abap_bool.
          DATA(t304) = t236.
          t303 = xsdbool( t304 IS BOUND ).
          IF t303 = abap_true.
            DATA t305 TYPE REF TO zif_lnt_interface_definition.
            DATA t306 TYPE REF TO zif_lnt_class_definition.
            DATA(t307) = t236.
            t306 = t307.
            t305 ?= t306.
            t302 = t305.
          ELSE.
            DATA t308 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t308.
            DATA t309 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t309.
            DATA t310 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t310.
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t311.
            DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t312.
            DATA(t313) = abap_true.
            IF t313 = abap_true.
              DATA t314 TYPE string.
              DATA(t315) = t220.
              t314 = t315->value.
              DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t316->has = abap_true.
              t316->value = t314.
              t312 = t316.
            ELSE.
              DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t317.
              t312 = t317.
            ENDIF.
            t311 = t312.
            DATA t318 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t318.
            DATA(t319) = VALUE abap_bool( ).
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t321) = t311.
            t320 = t321.
            DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t323.
            t322 = t323.
            DATA(t324) = VALUE abap_bool( ).
            DATA(t325) = t320.
            IF t325 IS INITIAL.
              t324 = abap_true.
            ELSEIF t325->has = abap_false.
              t324 = abap_true.
            ENDIF.
            t319 = t324.
            IF t319 = abap_true.
              DATA t326 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t326.
              t318 = t326.
            ELSE.
              DATA t327 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t327.
              DATA t328 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t328.
              DATA t329 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t329.
              DATA t330 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t331 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t332) = t217.
              t331 = t332->current.
              t330 = t331.
              DATA t333 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t333.
              DATA(t334) = VALUE abap_bool( ).
              DATA(t335) = t330.
              IF t335 IS INITIAL.
                t334 = abap_true.
              ENDIF.
              IF t334 = abap_true.
                DATA t336 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t336.
                t333 = t336.
              ELSE.
                DATA t337 TYPE REF TO zif_lnt_interface_definition.
                DATA t338 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t339) = t330.
                t338 = t339.
                DATA t340 TYPE string.
                DATA(t341) = t311.
                t340 = t341->value.
                t337 = t338->find_interface_definition( i_name = t340 ).
                t333 = t337.
              ENDIF.
              t329 = t333.
              t328 = t329.
              DATA t342 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t342.
              DATA t343 TYPE abap_bool.
              DATA(t344) = t328.
              t343 = xsdbool( t344 IS BOUND ).
              IF t343 = abap_true.
                DATA t345 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t345.
                DATA(t346) = abap_true.
                IF t346 = abap_true.
                  DATA t347 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t348) = t328.
                  t347 = t348.
                  t345 = t347.
                ELSE.
                  DATA t349 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t349.
                  t345 = t349.
                ENDIF.
                t342 = t345.
              ELSE.
                DATA t350 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t350.
                DATA t351 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t351.
                DATA t352 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t352.
                DATA t353 TYPE REF TO zif_lnt_object.
                CLEAR t353.
                DATA t354 TYPE REF TO zif_lnt_registry.
                DATA(t355) = t217.
                t354 = t355->reg.
                DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t356.
                DATA(t357) = abap_true.
                IF t357 = abap_true.
                  DATA(t358) = |INTF|.
                  DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t359->has = abap_true.
                  t359->value = t358.
                  t356 = t359.
                ELSE.
                  DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t360.
                  t356 = t360.
                ENDIF.
                DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t361.
                DATA(t362) = abap_true.
                IF t362 = abap_true.
                  DATA t363 TYPE string.
                  DATA(t364) = t311.
                  t363 = t364->value.
                  DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t365->has = abap_true.
                  t365->value = t363.
                  t361 = t365.
                ELSE.
                  DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t366.
                  t361 = t366.
                ENDIF.
                t353 = t354->get_object( i_type_9913 = t356 i_name = t361 ).
                DATA t367 TYPE REF TO object.
                t367 = t353.
                t352 ?= t367.
                t351 = t352.
                DATA t368 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t368.
                DATA t369 TYPE abap_bool.
                DATA(t370) = t351.
                t369 = xsdbool( t370 IS BOUND ).
                IF t369 = abap_true.
                  DATA t371 TYPE REF TO zif_lnt_interface_definition.
                  DATA t372 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t373 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t374) = t351.
                  t373 = t374.
                  t372 = t373.
                  DATA t375 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t376) = t372.
                  t375 = t376->def.
                  t371 = t375.
                  t368 = t371.
                ELSE.
                  DATA t377 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t377.
                  t368 = t377.
                ENDIF.
                t350 = t368.
                t342 = t350.
              ENDIF.
              t327 = t342.
              t318 = t327.
            ENDIF.
            t310 = t318.
            t309 = t310.
            DATA t378 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t378.
            DATA t379 TYPE abap_bool.
            DATA(t380) = t309.
            t379 = xsdbool( t380 IS BOUND ).
            IF t379 = abap_true.
              DATA t381 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t381.
              DATA(t382) = abap_true.
              IF t382 = abap_true.
                DATA t383 TYPE REF TO zif_lnt_interface_definition.
                DATA(t384) = t309.
                t383 = t384.
                t381 = t383.
              ELSE.
                DATA t385 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t385.
                t381 = t385.
              ENDIF.
              t378 = t381.
            ELSE.
              DATA t386 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t386.
              t378 = t386.
            ENDIF.
            t308 = t378.
            t302 = t308.
          ENDIF.
          t235 = t302.
          t226 = t235.
        ENDIF.
        t216 = t226.
        t215 = t216.
        DATA t387 TYPE abap_bool.
        DATA(t388) = t215.
        t387 = xsdbool( t388 IS BOUND ).
        IF t387 = abap_true.
          DATA t389 TYPE REF TO zcl_lnt_current_scope.
          DATA(t390) = t2.
          t389 = t390->scope.
          DATA t391 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t391.
          DATA(t392) = abap_true.
          IF t392 = abap_true.
            DATA(t393) = t11.
            t391 = t393.
          ELSE.
            DATA t394 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t394.
            t391 = t394.
          ENDIF.
          DATA t395 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t395.
          DATA(t396) = abap_true.
          IF t396 = abap_true.
            DATA t397 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t398 TYPE REF TO zif_lnt_interface_definition.
            DATA(t399) = t215.
            t398 = t399.
            t397 ?= t398.
            t395 = t397.
          ELSE.
            DATA t400 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t400.
            t395 = t400.
          ENDIF.
          DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t401.
          DATA(t402) = |Object|.
          CLEAR t401.
          CREATE OBJECT t401.
          t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t401->sval = t402.
          DATA t403 TYPE string.
          DATA(t404) = t2.
          t403 = t404->filename.
          DATA t405 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t405.
          t389->add_reference( i_usage = t391 i_referencing = t395 i_type_9913 = t401 i_filename = t403 i_extra = t405 ).
          DATA t406 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t407 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t408 TYPE REF TO zif_lnt_interface_definition.
          DATA(t409) = t215.
          t408 = t409.
          t407 ?= t408.
          DATA t410 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t410.
          t406 = NEW zcl_lnt_object_reference_type( i_id = t407 i_extra = t410 ).
          result = t406.
          RETURN.
        ELSE.
          DATA(t411) = VALUE abap_bool( ).
          DATA(t412) = VALUE abap_bool( ).
          DATA t413 TYPE REF TO zcl_lnt_ddic.
          DATA t414 TYPE REF TO zcl_lnt_ddic.
          DATA t415 TYPE REF TO zcl_lnt_current_scope.
          DATA t416 TYPE REF TO zcl_lnt_current_scope.
          DATA(t417) = t2.
          t416 = t417->scope.
          t415 = t416.
          DATA t418 TYPE REF TO zcl_lnt_ddic.
          DATA t419 TYPE REF TO zif_lnt_registry.
          DATA(t420) = t415.
          t419 = t420->reg.
          t418 = NEW zcl_lnt_ddic( i_reg_f149 = t419 ).
          t414 = t418.
          t413 = t414.
          DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t421.
          DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t422.
          DATA(t423) = abap_true.
          IF t423 = abap_true.
            DATA(t424) = t15.
            DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t425->has = abap_true.
            t425->value = t424.
            t422 = t425.
          ELSE.
            DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t426.
            t422 = t426.
          ENDIF.
          t421 = t422.
          DATA(t427) = VALUE abap_bool( ).
          DATA(t428) = VALUE abap_bool( ).
          DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t430) = t421.
          t429 = t430.
          DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t432.
          t431 = t432.
          DATA(t433) = VALUE abap_bool( ).
          DATA(t434) = t429.
          IF t434 IS INITIAL.
            t433 = abap_true.
          ELSEIF t434->has = abap_false.
            t433 = abap_true.
          ENDIF.
          t428 = t433.
          IF t428 = abap_true.
            DATA(t435) = abap_true.
            t427 = t435.
          ELSE.
            DATA t436 TYPE abap_bool.
            DATA t437 TYPE REF TO zif_lnt_registry.
            DATA(t438) = t413.
            t437 = t438->reg.
            DATA t439 TYPE string.
            DATA(t440) = t421.
            t439 = t440->value.
            t436 = t437->in_error_namespace( i_name = t439 ).
            t427 = t436.
          ENDIF.
          t412 = t427.
          DATA(t441) = abap_false.
          t411 = xsdbool( t412 = t441 ).
          IF t411 = abap_true.
            DATA t442 TYPE REF TO zcl_lnt_current_scope.
            DATA(t443) = t2.
            t442 = t443->scope.
            DATA t444 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t444.
            DATA(t445) = abap_true.
            IF t445 = abap_true.
              DATA(t446) = t11.
              t444 = t446.
            ELSE.
              DATA t447 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t447.
              t444 = t447.
            ENDIF.
            DATA t448 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t448.
            DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t449.
            DATA(t450) = |Object (Void)|.
            CLEAR t449.
            CREATE OBJECT t449.
            t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t449->sval = t450.
            DATA t451 TYPE string.
            DATA(t452) = t2.
            t451 = t452->filename.
            DATA t453 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t453.
            DATA(t454) = abap_true.
            IF t454 = abap_true.
              DATA t455 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t455.
              DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t456.
              DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t457.
              DATA(t458) = abap_true.
              IF t458 = abap_true.
                DATA(t459) = t15.
                DATA(t460) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t460->has = abap_true.
                t460->value = t459.
                t457 = t460.
              ELSE.
                DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t461.
                t457 = t461.
              ENDIF.
              t456 = t457.
              DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t462.
              DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t463.
              DATA(t464) = abap_true.
              IF t464 = abap_true.
                DATA(t465) = |CLAS|.
                DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t466->has = abap_true.
                t466->value = t465.
                t463 = t466.
              ELSE.
                DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t467.
                t463 = t467.
              ENDIF.
              t462 = t463.
              DATA t468 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t469 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t469.
              t468 = t469.
              t455 = NEW zcl_lnt_ireference_extras( i_oo_name = t456 i_oo_type = t462 i_found_qualified = t468 ).
              CREATE OBJECT t455->zlnt_view_ownkeys_b0e8086400eb.
              t455->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t470.
              IF t455->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t455->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t470 ).
              ENDIF.
              DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t471.
              IF t455->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t455->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t471 ).
              ENDIF.
              CREATE OBJECT t455->zlnt_json_ownkeys_70e5fd461788.
              t455->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t472) = |ooName|.
              DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t473.
              IF t455->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t455->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
              ENDIF.
              DATA(t474) = |ooType|.
              DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t475.
              IF t455->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t455->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
              ENDIF.
              t453 = t455.
            ELSE.
              DATA t476 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t476.
              t453 = t476.
            ENDIF.
            t442->add_reference( i_usage = t444 i_referencing = t448 i_type_9913 = t449 i_filename = t451 i_extra = t453 ).
            DATA t477 TYPE REF TO zcl_lnt_void_type.
            CLEAR t477.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t478.
            DATA(t479) = abap_true.
            IF t479 = abap_true.
              DATA(t480) = t15.
              DATA(t481) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t481->has = abap_true.
              t481->value = t480.
              t478 = t481.
            ELSE.
              DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t482.
              t478 = t482.
            ENDIF.
            DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t483.
            t477 = zcl_lnt_void_type=>get_db65( i_voided = t478 i_qualified_name = t483 ).
            result = t477.
            RETURN.
          ELSE.
            DATA t484 TYPE REF TO zcl_lnt_unknown_type.
            DATA t485 TYPE string.
            DATA(t486) = t15.
            DATA(t487) = | unknown, Target|.
            DATA(t488) = strlen( t486 ).
            t485 = |{ t486 }{ t487 }|.
            DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t489.
            t484 = NEW zcl_lnt_unknown_type( i_error = t485 i_qualified_name = t489 ).
            result = t484.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t490 TYPE abap_bool.
        DATA t491 TYPE abap_bool.
        DATA t492 TYPE REF TO object.
        DATA t493 TYPE REF TO zif_lnt_node.
        DATA(t494) = t1.
        t493 = t494.
        t492 = t493->get_db65( ).
        t491 = xsdbool( t492 IS BOUND AND t492 IS INSTANCE OF zcl_lnt_st_cast ).
        t490 = t491.
        IF t491 = abap_true.
          DATA t495 TYPE abap_bool.
          DATA(t496) = t1.
          t495 = xsdbool( t496 IS BOUND AND t496 IS INSTANCE OF zcl_lnt_expression_node ).
          t490 = t495.
        ENDIF.
        IF t490 = abap_true.
          DATA t497 TYPE REF TO zcl_lnt_abstract_type.
          DATA t498 TYPE REF TO zcl_lnt_abstract_type.
          DATA t499 TYPE REF TO zcl_lnt_expression_node.
          DATA(t500) = t1.
          DATA t501 TYPE REF TO object.
          t501 = t500.
          t499 ?= t501.
          DATA(t502) = t2.
          DATA t503 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t503.
          t498 = zcl_lnt_sy_cast=>run_syntax( i_node = t499 i_input_967e = t502 i_target_type = t503 ).
          t497 = t498.
          DATA t504 TYPE abap_bool.
          DATA(t505) = t497.
          t504 = xsdbool( t505 IS BOUND AND t505 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t504 = abap_true.
            DATA t506 TYPE string.
            DATA(t507) = |CAST, uknown type|.
            t506 = t507.
            DATA t508 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t509) = t2.
            t508 = t509->issues.
            DATA t510 TYPE REF TO zcl_lnt_issue.
            DATA(t511) = t2.
            DATA t512 TYPE REF TO zcl_lnt_abstract_token.
            DATA t513 TYPE REF TO zcl_lnt_expression_node.
            DATA(t514) = t1.
            DATA t515 TYPE REF TO object.
            t515 = t514.
            t513 ?= t515.
            t512 = t513->get_first_token( ).
            DATA(t516) = t506.
            DATA t517 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t517.
            t510 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t511 i_token = t512 i_message_26cb = t516 i_fix = t517 ).
            t508->load( ).
            APPEND t510 TO t508->items.
            t508->save( ).
            DATA t518 TYPE REF TO zcl_lnt_void_type.
            CLEAR t518.
            DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t519.
            DATA(t520) = abap_true.
            IF t520 = abap_true.
              DATA(t521) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t522) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t522->has = abap_true.
              t522->value = t521.
              t519 = t522.
            ELSE.
              DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t523.
              t519 = t523.
            ENDIF.
            DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t524.
            t518 = zcl_lnt_void_type=>get_db65( i_voided = t519 i_qualified_name = t524 ).
            result = t518.
            RETURN.
          ENDIF.
          DATA t525 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t525.
          DATA(t526) = abap_true.
          IF t526 = abap_true.
            DATA(t527) = t497.
            t525 = t527.
          ELSE.
            DATA t528 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t528.
            t525 = t528.
          ENDIF.
          result = t525.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t529 TYPE REF TO zcl_lnt_unknown_type.
    DATA(t530) = |unknown target type|.
    DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t531.
    t529 = NEW zcl_lnt_unknown_type( i_error = t530 i_qualified_name = t531 ).
    result = t529.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d845_5ce110a6991c.
  ENDMETHOD.
ENDCLASS.
