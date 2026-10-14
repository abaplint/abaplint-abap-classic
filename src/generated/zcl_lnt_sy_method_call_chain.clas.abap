* TS: src/abap/5_syntax/expressions/method_call_chain.ts:22:1 MethodCallChain
CLASS zcl_lnt_sy_method_call_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS check_visibility IMPORTING i_method TYPE REF TO zif_lnt_method_definition i_def TYPE REF TO zif_lnt_interface_definition i_found_def TYPE REF TO zif_lnt_interface_definition i_input_967e TYPE REF TO zcl_lnt_syntax_input
    RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLASS-METHODS find_top IMPORTING i_first TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_chain IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_object_oriented.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    DATA(t7) = CAST zcl_lnt_syntax_input( t2 ).
    t6 = t7->scope.
    t5 = NEW zcl_lnt_object_oriented( i_scope = t6 ).
    t4 = t5.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t12) = CAST zcl_lnt_expression_node( t1 ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = CAST zcl_lnt_abstract_node( t11 ).
    t13 = t14->children.
    t10 = t13.
    t9 ?= t10.
    t8 = t9.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    READ TABLE t17->items INDEX 1 INTO t18.
    t16 ?= t18.
    t15 = t16.
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t21) = CAST zif_lnt_union_4cf1d054( t15 ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = CAST zif_lnt_union_4cf1d054( t20 ).
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    IF t19 = abap_true.
      DATA t26 TYPE string.
      DATA(t27) = |MethodCallChain, first child expected|.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = CAST zcl_lnt_syntax_input( t2 ).
      t28 = t29->issues.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      DATA(t31) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = CAST zcl_lnt_expression_node( t1 ).
      t32 = t33->get_first_token(  ).
      DATA(t34) = t26.
      DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t35.
      t30 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t31 i_token = t32 i_message_26cb = t34 i_fix = t35 ).
      APPEND t30 TO t28->items.
      DATA t36 TYPE REF TO zcl_lnt_void_type.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = abap_true.
      IF t38 = abap_true.
        DATA(t39) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t40->has = abap_true.
        t40->value = t39.
        t37 = t40.
      ELSE.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        t37 = t41.
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      t36 = zcl_lnt_void_type=>get_db65( i_voided = t37 i_qualified_name = t42 ).
      result = t36.
      RETURN.
    ENDIF.
    DATA t43 TYPE int8.
    DATA(t44) = CONV int8( 1 ).
    t43 = t44.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    DATA t46 TYPE REF TO zcl_lnt_abstract_type.
    DATA t47 TYPE REF TO zif_lnt_node.
    DATA(t48) = CAST zif_lnt_union_4cf1d054( t15 ).
    t47 ?= t48.
    DATA(t49) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t50) = CAST zcl_lnt_abstract_type( t3 ).
    t46 = zcl_lnt_sy_method_call_chain=>find_top( i_first = t47 i_input_967e = t49 i_target_type = t50 ).
    t45 = t46.
    DATA t51 TYPE abap_bool.
    DATA t52 TYPE REF TO object.
    DATA(t53) = CAST zif_lnt_union_4cf1d054( t15 ).
    t52 = t53->get_db65(  ).
    t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_method_call ).
    IF t51 = abap_true.
      DATA(t54) = VALUE int8( ).
      DATA(t55) = VALUE i( ).
      DATA t56 TYPE int8.
      DATA(t57) = t43.
      DATA(t58) = CONV int8( 1 ).
      t56 = t57 - t58.
      IF t56 < range_int8_bound_min OR t56 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t55 = t56.
      t54 = t55.
      t43 = t54.
    ENDIF.
    DATA t59 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t60 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t60.
    t59 = t60.
    DO.
      DATA t61 TYPE abap_bool.
      DATA(t62) = t43.
      DATA t63 TYPE int8.
      DATA t64 TYPE i.
      DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      t64 = lines( t65->items ).
      t63 = t64.
      t61 = xsdbool( t62 <= t63 ).
      IF t61 = abap_false.
        EXIT.
      ENDIF.
      DATA t66 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t67 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      DATA t69 TYPE i.
      DATA(t70) = t43.
      t69 = t70.
      t69 = t69 + 1.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      READ TABLE t68->items INDEX t69 INTO t71.
      t67 ?= t71.
      t66 = t67.
      DATA(t72) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t74) = CAST zif_lnt_union_4cf1d054( t66 ).
      t73 = t74.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t75 = t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = CAST zif_lnt_union_4cf1d054( t73 ).
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      t72 = t77.
      IF t72 = abap_true.
        EXIT.
      ENDIF.
      DATA t79 TYPE int8.
      DATA(t80) = t43.
      DATA(t81) = CONV int8( 1 ).
      t79 = t80 + t81.
      IF t79 < range_int8_bound_min OR t79 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t43 = t79.
      DATA t82 TYPE abap_bool.
      DATA t83 TYPE abap_bool.
      DATA(t84) = CAST zif_lnt_union_4cf1d054( t66 ).
      t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_expression_node ).
      t82 = t83.
      IF t83 = abap_true.
        DATA t85 TYPE abap_bool.
        DATA t86 TYPE REF TO zif_lnt_statement_runnable.
        DATA t87 TYPE REF TO zcl_lnt_expression_node.
        DATA(t88) = CAST zif_lnt_union_4cf1d054( t66 ).
        DATA t89 TYPE REF TO object.
        t89 = t88.
        t87 ?= t89.
        t86 = t87->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
        t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_method_call ).
        t82 = t85.
      ENDIF.
      IF t82 = abap_true.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA t92 TYPE abap_bool.
        DATA(t93) = CAST zcl_lnt_abstract_type( t45 ).
        t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t92 = abap_true.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          DATA(t95) = abap_true.
          IF t95 = abap_true.
            DATA(t96) = VALUE string( ).
            DATA t97 TYPE REF TO zcl_lnt_object_reference_type.
            DATA t98 TYPE REF TO zcl_lnt_object_reference_type.
            DATA(t99) = CAST zcl_lnt_abstract_type( t45 ).
            t98 ?= t99.
            t97 = t98.
            DATA(t100) = VALUE string( ).
            DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t102 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t103) = CAST zcl_lnt_object_reference_type( t97 ).
            t102 = t103->identifier.
            t101 = t102.
            DATA(t104) = VALUE string( ).
            DATA t105 TYPE string.
            DATA t106 TYPE string.
            DATA t107 TYPE REF TO zcl_lnt_abstract_token.
            DATA t108 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t109) = CAST zcl_lnt_fi_identifier( t101 ).
            t108 = t109->token.
            t107 = t108.
            DATA t110 TYPE string.
            DATA(t111) = CAST zcl_lnt_abstract_token( t107 ).
            t110 = t111->str.
            t106 = t110.
            t105 = t106.
            DATA(t112) = VALUE abap_bool( ).
            DATA(t113) = VALUE string( ).
            DATA(t114) = t105.
            DATA(t115) = 0.
            DATA(t116) = 1.
            DATA(t117) = strlen( t114 ).
            IF t115 < 0.
              t115 = t115 + t117.
              IF t115 < 0.
                t115 = 0.
              ENDIF.
            ENDIF.
            IF t115 > t117 OR t116 <= 0.
              CLEAR t113.
            ELSE.
              IF t116 > t117 - t115.
                t116 = t117 - t115.
              ENDIF.
              t113 = t114+t115(t116).
            ENDIF.
            DATA(t118) = |!|.
            t112 = xsdbool( t113 = t118 ).
            IF t112 = abap_true.
              DATA(t119) = VALUE string( ).
              DATA t120 TYPE string.
              DATA(t121) = t105.
              t120 = t121.
              DATA(t122) = VALUE string( ).
              DATA(t123) = t120.
              DATA(t124) = 1.
              DATA t125 TYPE i.
              DATA(t126) = t120.
              DATA(t127) = strlen( t126 ).
              t125 = t127.
              DATA(t128) = strlen( t123 ).
              IF t124 < 0.
                t124 = t124 + t128.
                IF t124 < 0.
                  t124 = 0.
                ENDIF.
              ENDIF.
              IF t124 > t128 OR t125 <= 0.
                CLEAR t122.
              ELSE.
                IF t125 > t128 - t124.
                  t125 = t128 - t124.
                ENDIF.
                t122 = t123+t124(t125).
              ENDIF.
              t119 = t122.
              t105 = t119.
            ENDIF.
            DATA(t129) = t105.
            t104 = t129.
            t100 = t104.
            t96 = t100.
            DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t130->has = abap_true.
            t130->value = t96.
            t94 = t130.
          ELSE.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            t94 = t131.
          ENDIF.
          t91 = t94.
        ELSE.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          t91 = t132.
        ENDIF.
        t90 = t91.
        DATA t133 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t133.
        DATA t134 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t134.
        DATA t135 TYPE REF TO zcl_lnt_expression_node.
        DATA t136 TYPE REF TO zcl_lnt_expression_node.
        DATA t137 TYPE REF TO zcl_lnt_expression_node.
        DATA(t138) = CAST zif_lnt_union_4cf1d054( t66 ).
        DATA t139 TYPE REF TO object.
        t139 = t138.
        t137 ?= t139.
        DATA(t140) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
        t136 = t137->find_direct_expression( i_type_9913 = t140 ).
        t135 = t136.
        DATA t141 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t141.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = CAST zcl_lnt_expression_node( t135 ).
        IF t143 IS INITIAL.
          t142 = abap_true.
        ENDIF.
        IF t142 = abap_true.
          DATA t144 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t144.
          t141 = t144.
        ELSE.
          DATA t145 TYPE REF TO zcl_lnt_abstract_token.
          DATA t146 TYPE REF TO zcl_lnt_expression_node.
          DATA(t147) = CAST zcl_lnt_expression_node( t135 ).
          t146 = t147.
          t145 = t146->get_first_token(  ).
          t141 = t145.
        ENDIF.
        t134 = t141.
        t133 = t134.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA t150 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t151) = CAST zcl_lnt_abstract_token( t133 ).
        t150 = t151.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA(t153) = VALUE abap_bool( ).
        DATA(t154) = CAST zcl_lnt_abstract_token( t150 ).
        IF t154 IS INITIAL.
          t153 = abap_true.
        ENDIF.
        IF t153 = abap_true.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t152 = t155.
        ELSE.
          DATA t156 TYPE string.
          DATA t157 TYPE REF TO zcl_lnt_abstract_token.
          DATA t158 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t159) = CAST zcl_lnt_abstract_token( t150 ).
          t158 = t159.
          t157 = t158.
          DATA t160 TYPE string.
          DATA(t161) = CAST zcl_lnt_abstract_token( t157 ).
          t160 = t161->str.
          t156 = t160.
          DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t162->has = abap_true.
          t162->value = t156.
          t152 = t162.
        ENDIF.
        t149 = t152.
        t148 = t149.
        DATA t163 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t163.
        DATA t164 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t164.
        DATA t165 TYPE REF TO zcl_lnt_current_scope.
        DATA t166 TYPE REF TO zcl_lnt_current_scope.
        DATA(t167) = CAST zcl_lnt_syntax_input( t2 ).
        t166 = t167->scope.
        t165 = t166.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t169) = CAST zlnt_runtime_opti_4ba3bdccd169( t90 ).
        t168 = t169.
        DATA t170 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t170.
        DATA(t171) = VALUE abap_bool( ).
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t173) = CAST zlnt_runtime_opti_4ba3bdccd169( t168 ).
        t172 = t173.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        t174 = t175.
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = CAST zlnt_runtime_opti_4ba3bdccd169( t172 ).
        IF t177 IS INITIAL.
          t176 = abap_true.
        ELSEIF t177->has = abap_false.
          t176 = abap_true.
        ENDIF.
        t171 = t176.
        IF t171 = abap_true.
          DATA t178 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t178.
          t170 = t178.
        ELSE.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t179.
          DATA t180 TYPE REF TO zif_lnt_class_definition.
          CLEAR t180.
          DATA t181 TYPE REF TO zif_lnt_class_definition.
          CLEAR t181.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          DATA(t184) = abap_true.
          IF t184 = abap_true.
            DATA t185 TYPE string.
            DATA(t186) = CAST zlnt_runtime_opti_4ba3bdccd169( t168 ).
            t185 = t186->value.
            DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t187->has = abap_true.
            t187->value = t185.
            t183 = t187.
          ELSE.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t188.
            t183 = t188.
          ENDIF.
          t182 = t183.
          DATA t189 TYPE REF TO zif_lnt_class_definition.
          CLEAR t189.
          DATA(t190) = VALUE abap_bool( ).
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t192) = CAST zlnt_runtime_opti_4ba3bdccd169( t182 ).
          t191 = t192.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          t193 = t194.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = CAST zlnt_runtime_opti_4ba3bdccd169( t191 ).
          IF t196 IS INITIAL.
            t195 = abap_true.
          ELSEIF t196->has = abap_false.
            t195 = abap_true.
          ENDIF.
          t190 = t195.
          IF t190 = abap_true.
            DATA t197 TYPE REF TO zif_lnt_class_definition.
            CLEAR t197.
            t189 = t197.
          ELSE.
            DATA t198 TYPE REF TO zif_lnt_class_definition.
            CLEAR t198.
            DATA t199 TYPE REF TO zif_lnt_class_definition.
            CLEAR t199.
            DATA t200 TYPE REF TO zif_lnt_class_definition.
            CLEAR t200.
            DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t203) = CAST zcl_lnt_current_scope( t165 ).
            t202 = t203->current.
            t201 = t202.
            DATA t204 TYPE REF TO zif_lnt_class_definition.
            CLEAR t204.
            DATA(t205) = VALUE abap_bool( ).
            DATA(t206) = CAST zcl_lnt_spaghetti_scope_node( t201 ).
            IF t206 IS INITIAL.
              t205 = abap_true.
            ENDIF.
            IF t205 = abap_true.
              DATA t207 TYPE REF TO zif_lnt_class_definition.
              CLEAR t207.
              t204 = t207.
            ELSE.
              DATA t208 TYPE REF TO zif_lnt_class_definition.
              DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t210) = CAST zcl_lnt_spaghetti_scope_node( t201 ).
              t209 = t210.
              DATA t211 TYPE string.
              DATA(t212) = CAST zlnt_runtime_opti_4ba3bdccd169( t182 ).
              t211 = t212->value.
              t208 = t209->find_class_definition( i_name = t211 ).
              t204 = t208.
            ENDIF.
            t200 = t204.
            t199 = t200.
            DATA t213 TYPE REF TO zif_lnt_class_definition.
            CLEAR t213.
            DATA t214 TYPE abap_bool.
            DATA(t215) = CAST zif_lnt_class_definition( t199 ).
            t214 = xsdbool( t215 IS BOUND ).
            IF t214 = abap_true.
              DATA t216 TYPE REF TO zif_lnt_class_definition.
              CLEAR t216.
              DATA(t217) = abap_true.
              IF t217 = abap_true.
                DATA t218 TYPE REF TO zif_lnt_class_definition.
                DATA(t219) = CAST zif_lnt_class_definition( t199 ).
                t218 = t219.
                t216 = t218.
              ELSE.
                DATA t220 TYPE REF TO zif_lnt_class_definition.
                CLEAR t220.
                t216 = t220.
              ENDIF.
              t213 = t216.
            ELSE.
              DATA t221 TYPE REF TO zif_lnt_class_definition.
              CLEAR t221.
              DATA t222 TYPE REF TO zcl_lnt_class.
              CLEAR t222.
              DATA t223 TYPE REF TO zcl_lnt_class.
              CLEAR t223.
              DATA t224 TYPE REF TO zif_lnt_object.
              CLEAR t224.
              DATA t225 TYPE REF TO zif_lnt_registry.
              DATA(t226) = CAST zcl_lnt_current_scope( t165 ).
              t225 = t226->reg.
              DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t227.
              DATA(t228) = abap_true.
              IF t228 = abap_true.
                DATA(t229) = |CLAS|.
                DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t230->has = abap_true.
                t230->value = t229.
                t227 = t230.
              ELSE.
                DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t231.
                t227 = t231.
              ENDIF.
              DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t232.
              DATA(t233) = abap_true.
              IF t233 = abap_true.
                DATA t234 TYPE string.
                DATA(t235) = CAST zlnt_runtime_opti_4ba3bdccd169( t182 ).
                t234 = t235->value.
                DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t236->has = abap_true.
                t236->value = t234.
                t232 = t236.
              ELSE.
                DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t237.
                t232 = t237.
              ENDIF.
              t224 = t225->get_object( i_type_9913 = t227 i_name = t232 ).
              DATA t238 TYPE REF TO object.
              t238 = t224.
              t223 ?= t238.
              t222 = t223.
              DATA t239 TYPE REF TO zif_lnt_class_definition.
              CLEAR t239.
              DATA t240 TYPE abap_bool.
              DATA(t241) = CAST zcl_lnt_class( t222 ).
              t240 = xsdbool( t241 IS BOUND ).
              IF t240 = abap_true.
                DATA t242 TYPE REF TO zif_lnt_class_definition.
                DATA t243 TYPE REF TO zcl_lnt_class.
                DATA(t244) = CAST zcl_lnt_class( t222 ).
                t243 = t244.
                t242 = t243->gt_dfn_ins_src_obj_cls_ts_clss(  ).
                t239 = t242.
              ELSE.
                DATA t245 TYPE REF TO zif_lnt_class_definition.
                CLEAR t245.
                t239 = t245.
              ENDIF.
              t221 = t239.
              t213 = t221.
            ENDIF.
            t198 = t213.
            t189 = t198.
          ENDIF.
          t181 = t189.
          t180 = t181.
          DATA t246 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t246.
          DATA t247 TYPE abap_bool.
          DATA(t248) = CAST zif_lnt_class_definition( t180 ).
          t247 = xsdbool( t248 IS BOUND ).
          IF t247 = abap_true.
            DATA t249 TYPE REF TO zif_lnt_interface_definition.
            DATA t250 TYPE REF TO zif_lnt_class_definition.
            DATA(t251) = CAST zif_lnt_class_definition( t180 ).
            t250 = t251.
            t249 ?= t250.
            t246 = t249.
          ELSE.
            DATA t252 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t252.
            DATA t253 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t253.
            DATA t254 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t254.
            DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t255.
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t256.
            DATA(t257) = abap_true.
            IF t257 = abap_true.
              DATA t258 TYPE string.
              DATA(t259) = CAST zlnt_runtime_opti_4ba3bdccd169( t168 ).
              t258 = t259->value.
              DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t260->has = abap_true.
              t260->value = t258.
              t256 = t260.
            ELSE.
              DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t261.
              t256 = t261.
            ENDIF.
            t255 = t256.
            DATA t262 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t262.
            DATA(t263) = VALUE abap_bool( ).
            DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t265) = CAST zlnt_runtime_opti_4ba3bdccd169( t255 ).
            t264 = t265.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t267.
            t266 = t267.
            DATA(t268) = VALUE abap_bool( ).
            DATA(t269) = CAST zlnt_runtime_opti_4ba3bdccd169( t264 ).
            IF t269 IS INITIAL.
              t268 = abap_true.
            ELSEIF t269->has = abap_false.
              t268 = abap_true.
            ENDIF.
            t263 = t268.
            IF t263 = abap_true.
              DATA t270 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t270.
              t262 = t270.
            ELSE.
              DATA t271 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t271.
              DATA t272 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t272.
              DATA t273 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t273.
              DATA t274 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t275 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t276) = CAST zcl_lnt_current_scope( t165 ).
              t275 = t276->current.
              t274 = t275.
              DATA t277 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t277.
              DATA(t278) = VALUE abap_bool( ).
              DATA(t279) = CAST zcl_lnt_spaghetti_scope_node( t274 ).
              IF t279 IS INITIAL.
                t278 = abap_true.
              ENDIF.
              IF t278 = abap_true.
                DATA t280 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t280.
                t277 = t280.
              ELSE.
                DATA t281 TYPE REF TO zif_lnt_interface_definition.
                DATA t282 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t283) = CAST zcl_lnt_spaghetti_scope_node( t274 ).
                t282 = t283.
                DATA t284 TYPE string.
                DATA(t285) = CAST zlnt_runtime_opti_4ba3bdccd169( t255 ).
                t284 = t285->value.
                t281 = t282->find_interface_definition( i_name = t284 ).
                t277 = t281.
              ENDIF.
              t273 = t277.
              t272 = t273.
              DATA t286 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t286.
              DATA t287 TYPE abap_bool.
              DATA(t288) = CAST zif_lnt_interface_definition( t272 ).
              t287 = xsdbool( t288 IS BOUND ).
              IF t287 = abap_true.
                DATA t289 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t289.
                DATA(t290) = abap_true.
                IF t290 = abap_true.
                  DATA t291 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t292) = CAST zif_lnt_interface_definition( t272 ).
                  t291 = t292.
                  t289 = t291.
                ELSE.
                  DATA t293 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t293.
                  t289 = t293.
                ENDIF.
                t286 = t289.
              ELSE.
                DATA t294 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t294.
                DATA t295 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t295.
                DATA t296 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t296.
                DATA t297 TYPE REF TO zif_lnt_object.
                CLEAR t297.
                DATA t298 TYPE REF TO zif_lnt_registry.
                DATA(t299) = CAST zcl_lnt_current_scope( t165 ).
                t298 = t299->reg.
                DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t300.
                DATA(t301) = abap_true.
                IF t301 = abap_true.
                  DATA(t302) = |INTF|.
                  DATA(t303) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t303->has = abap_true.
                  t303->value = t302.
                  t300 = t303.
                ELSE.
                  DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t304.
                  t300 = t304.
                ENDIF.
                DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t305.
                DATA(t306) = abap_true.
                IF t306 = abap_true.
                  DATA t307 TYPE string.
                  DATA(t308) = CAST zlnt_runtime_opti_4ba3bdccd169( t255 ).
                  t307 = t308->value.
                  DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t309->has = abap_true.
                  t309->value = t307.
                  t305 = t309.
                ELSE.
                  DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t310.
                  t305 = t310.
                ENDIF.
                t297 = t298->get_object( i_type_9913 = t300 i_name = t305 ).
                DATA t311 TYPE REF TO object.
                t311 = t297.
                t296 ?= t311.
                t295 = t296.
                DATA t312 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t312.
                DATA t313 TYPE abap_bool.
                DATA(t314) = CAST zcl_lnt_ob_interface( t295 ).
                t313 = xsdbool( t314 IS BOUND ).
                IF t313 = abap_true.
                  DATA t315 TYPE REF TO zif_lnt_interface_definition.
                  DATA t316 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t317 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t318) = CAST zcl_lnt_ob_interface( t295 ).
                  t317 = t318.
                  t316 = t317.
                  DATA t319 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t320) = CAST zcl_lnt_ob_interface( t316 ).
                  t319 = t320->def.
                  t315 = t319.
                  t312 = t315.
                ELSE.
                  DATA t321 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t321.
                  t312 = t321.
                ENDIF.
                t294 = t312.
                t286 = t294.
              ENDIF.
              t271 = t286.
              t262 = t271.
            ENDIF.
            t254 = t262.
            t253 = t254.
            DATA t322 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t322.
            DATA t323 TYPE abap_bool.
            DATA(t324) = CAST zif_lnt_interface_definition( t253 ).
            t323 = xsdbool( t324 IS BOUND ).
            IF t323 = abap_true.
              DATA t325 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t325.
              DATA(t326) = abap_true.
              IF t326 = abap_true.
                DATA t327 TYPE REF TO zif_lnt_interface_definition.
                DATA(t328) = CAST zif_lnt_interface_definition( t253 ).
                t327 = t328.
                t325 = t327.
              ELSE.
                DATA t329 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t329.
                t325 = t329.
              ENDIF.
              t322 = t325.
            ELSE.
              DATA t330 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t330.
              t322 = t330.
            ENDIF.
            t252 = t322.
            t246 = t252.
          ENDIF.
          t179 = t246.
          t170 = t179.
        ENDIF.
        t164 = t170.
        t163 = t164.
        DATA t331 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t332 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA(t333) = CAST zcl_lnt_object_oriented( t4 ).
        DATA(t334) = CAST zif_lnt_interface_definition( t163 ).
        DATA(t335) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
        t332 = t333->search_method_name( i_def = t334 i_name = t335 ).
        t331 = t332.
        DATA t336 TYPE REF TO zif_lnt_method_definition.
        DATA t337 TYPE REF TO zif_lnt_method_definition.
        DATA(t338) = CAST zcl_lnt_shape_a38e878f( t331 ).
        t337 = t338->method.
        t336 = t337.
        DATA t339 TYPE REF TO zif_lnt_interface_definition.
        DATA t340 TYPE REF TO zif_lnt_interface_definition.
        DATA(t341) = CAST zcl_lnt_shape_a38e878f( t331 ).
        t340 = t341->def.
        t339 = t340.
        DATA(t342) = VALUE abap_bool( ).
        DATA(t343) = VALUE abap_bool( ).
        DATA t344 TYPE REF TO zif_lnt_method_definition.
        DATA(t345) = CAST zif_lnt_method_definition( t336 ).
        t344 = t345.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        t346 = t347.
        DATA(t348) = VALUE abap_bool( ).
        DATA(t349) = CAST zif_lnt_method_definition( t344 ).
        IF t349 IS INITIAL.
          t348 = abap_true.
        ENDIF.
        t343 = t348.
        t342 = t343.
        IF t343 = abap_true.
          DATA t350 TYPE abap_bool.
          DATA t351 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA t352 TYPE REF TO zcl_lnt_expression_node.
          DATA(t353) = CAST zif_lnt_union_4cf1d054( t66 ).
          DATA t354 TYPE REF TO object.
          t354 = t353.
          t352 ?= t354.
          t351 ?= t352.
          DATA(t355) = CAST zif_lnt_union_4cf1d054( t15 ).
          t350 = xsdbool( t351 = t355 ).
          t342 = t350.
        ENDIF.
        IF t342 = abap_true.
          DATA t356 TYPE REF TO zif_lnt_method_definition.
          CLEAR t356.
          DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t357.
          DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t359) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
          t358 = t359.
          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t360.
          DATA(t361) = VALUE abap_bool( ).
          DATA(t362) = CAST zlnt_runtime_opti_4ba3bdccd169( t358 ).
          IF t362 IS INITIAL.
            t361 = abap_true.
          ELSEIF t362->has = abap_false.
            t361 = abap_true.
          ENDIF.
          IF t361 = abap_true.
            DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t363.
            t360 = t363.
          ELSE.
            DATA t364 TYPE string.
            DATA t365 TYPE string.
            DATA(t366) = CAST zlnt_runtime_opti_4ba3bdccd169( t358 ).
            t365 = t366->value.
            DATA(t367) = strlen( t365 ).
            t364 = t365.
            IF t364 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t364 TO UPPER CASE.
            ELSE.
              t364 = zlnt_runtime_uppe_91169605024d=>full( t364 ).
            ENDIF.
            DATA(t368) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t368->has = abap_true.
            t368->value = t364.
            t360 = t368.
          ENDIF.
          t357 = t360.
          t356 = zcl_lnt_built_in=>search_builtin( i_name = t357 ).
          t336 = t356.
          DATA t369 TYPE abap_bool.
          DATA(t370) = CAST zif_lnt_method_definition( t336 ).
          t369 = xsdbool( t370 IS BOUND ).
          IF t369 = abap_true.
            DATA t371 TYPE REF TO zcl_lnt_current_scope.
            DATA(t372) = CAST zcl_lnt_syntax_input( t2 ).
            t371 = t372->scope.
            DATA(t373) = CAST zcl_lnt_abstract_token( t133 ).
            DATA t374 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t374.
            DATA(t375) = abap_true.
            IF t375 = abap_true.
              DATA t376 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t377 TYPE REF TO zif_lnt_method_definition.
              DATA(t378) = CAST zif_lnt_method_definition( t336 ).
              t377 = t378.
              t376 ?= t377.
              t374 = t376.
            ELSE.
              DATA t379 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t379.
              t374 = t379.
            ENDIF.
            DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t381) = |Builtin Method|.
            CREATE OBJECT t380.
            t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t380->sval = t381.
            DATA t382 TYPE string.
            DATA(t383) = CAST zcl_lnt_syntax_input( t2 ).
            t382 = t383->filename.
            DATA t384 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t384.
            t371->add_reference( i_usage = t373 i_referencing = t374 i_type_9913 = t380 i_filename = t382 i_extra = t384 ).
          ENDIF.
        ELSE.
          DATA(t385) = VALUE abap_bool( ).
          DATA t386 TYPE abap_bool.
          DATA t387 TYPE abap_bool.
          DATA(t388) = CAST zif_lnt_union_4cf1d054( t59 ).
          t387 = xsdbool( t388 IS BOUND ).
          t386 = t387.
          IF t387 = abap_true.
            DATA t389 TYPE abap_bool.
            DATA t390 TYPE string.
            DATA t391 TYPE REF TO zcl_lnt_abstract_token.
            DATA t392 TYPE REF TO zcl_lnt_abstract_token.
            DATA t393 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t394) = CAST zif_lnt_union_4cf1d054( t59 ).
            t393 = t394.
            t392 = t393->get_first_token(  ).
            t391 = t392.
            DATA t395 TYPE string.
            DATA(t396) = CAST zcl_lnt_abstract_token( t391 ).
            t395 = t396->str.
            t390 = t395.
            DATA(t397) = |=>|.
            t389 = xsdbool( t390 = t397 ).
            t386 = t389.
          ENDIF.
          t385 = t386.
          IF t386 = abap_true.
            DATA(t398) = VALUE abap_bool( ).
            DATA t399 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t399.
            DATA t400 TYPE REF TO zif_lnt_method_definition.
            DATA(t401) = CAST zif_lnt_method_definition( t336 ).
            t400 = t401.
            DATA t402 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t402.
            DATA(t403) = VALUE abap_bool( ).
            DATA(t404) = CAST zif_lnt_method_definition( t400 ).
            IF t404 IS INITIAL.
              t403 = abap_true.
            ENDIF.
            IF t403 = abap_true.
              DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t405.
              t402 = t405.
            ELSE.
              DATA t406 TYPE abap_bool.
              DATA t407 TYPE REF TO zif_lnt_method_definition.
              DATA(t408) = CAST zif_lnt_method_definition( t400 ).
              t407 = t408.
              t406 = t407->is_static_4685(  ).
              DATA(t409) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t409->has = abap_true.
              t409->value = t406.
              t402 = t409.
            ENDIF.
            t399 = t402.
            DATA t410 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t410.
            DATA(t411) = abap_true.
            IF t411 = abap_true.
              DATA(t412) = abap_false.
              DATA(t413) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t413->has = abap_true.
              t413->value = t412.
              t410 = t413.
            ELSE.
              DATA t414 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t414.
              t410 = t414.
            ENDIF.
            DATA(t415) = VALUE abap_bool( ).
            DATA(t416) = VALUE abap_bool( ).
            IF t399 IS BOUND.
              t415 = t399->has.
            ENDIF.
            IF t410 IS BOUND.
              t416 = t410->has.
            ENDIF.
            IF t415 = t416.
              IF t415 = abap_false.
                t398 = abap_true.
              ELSEIF t399->value = t410->value.
                t398 = abap_true.
              ENDIF.
            ENDIF.
            t385 = t398.
          ENDIF.
          IF t385 = abap_true.
            DATA(t417) = VALUE string( ).
            DATA(t418) = VALUE string( ).
            DATA(t419) = VALUE string( ).
            DATA(t420) = |Method "|.
            DATA(t421) = VALUE string( ).
            DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t423) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
            t422 = t423.
            DATA(t424) = VALUE string( ).
            DATA(t425) = VALUE abap_bool( ).
            DATA(t426) = CAST zlnt_runtime_opti_4ba3bdccd169( t422 ).
            IF t426 IS INITIAL.
              t425 = abap_true.
            ELSEIF t426->has = abap_false.
              t425 = abap_true.
            ENDIF.
            IF t425 = abap_true.
              DATA(t427) = |undefined|.
              t424 = t427.
            ELSE.
              DATA t428 TYPE string.
              DATA(t429) = CAST zlnt_runtime_opti_4ba3bdccd169( t422 ).
              t428 = t429->value.
              t424 = t428.
            ENDIF.
            t421 = t424.
            DATA(t430) = strlen( t420 ).
            t419 = |{ t420 }{ t421 }|.
            DATA(t431) = |" not static|.
            DATA(t432) = strlen( t419 ).
            t418 = |{ t419 }{ t431 }|.
            t417 = t418.
            DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t434) = CAST zcl_lnt_syntax_input( t2 ).
            t433 = t434->issues.
            DATA t435 TYPE REF TO zcl_lnt_issue.
            DATA(t436) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t437 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t438) = CAST zcl_lnt_abstract_token( t133 ).
            t437 = t438.
            DATA(t439) = t417.
            DATA t440 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t440.
            t435 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t436 i_token = t437 i_message_26cb = t439 i_fix = t440 ).
            APPEND t435 TO t433->items.
            DATA t441 TYPE REF TO zcl_lnt_void_type.
            CLEAR t441.
            DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t442.
            DATA(t443) = abap_true.
            IF t443 = abap_true.
              DATA(t444) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t445) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t445->has = abap_true.
              t445->value = t444.
              t442 = t445.
            ELSE.
              DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t446.
              t442 = t446.
            ENDIF.
            DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t447.
            t441 = zcl_lnt_void_type=>get_db65( i_voided = t442 i_qualified_name = t447 ).
            result = t441.
            RETURN.
          ENDIF.
          DATA(t448) = VALUE abap_bool( ).
          DATA t449 TYPE abap_bool.
          DATA t450 TYPE abap_bool.
          DATA t451 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA t452 TYPE REF TO zcl_lnt_expression_node.
          DATA(t453) = CAST zif_lnt_union_4cf1d054( t66 ).
          DATA t454 TYPE REF TO object.
          t454 = t453.
          t452 ?= t454.
          t451 ?= t452.
          DATA(t455) = CAST zif_lnt_union_4cf1d054( t15 ).
          t450 = xsdbool( t451 = t455 ).
          t449 = t450.
          IF t450 = abap_true.
            DATA(t456) = VALUE abap_bool( ).
            DATA t457 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t457.
            DATA t458 TYPE REF TO zif_lnt_method_definition.
            DATA(t459) = CAST zif_lnt_method_definition( t336 ).
            t458 = t459.
            DATA t460 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t460.
            DATA(t461) = VALUE abap_bool( ).
            DATA(t462) = CAST zif_lnt_method_definition( t458 ).
            IF t462 IS INITIAL.
              t461 = abap_true.
            ENDIF.
            IF t461 = abap_true.
              DATA t463 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t463.
              t460 = t463.
            ELSE.
              DATA t464 TYPE abap_bool.
              DATA t465 TYPE REF TO zif_lnt_method_definition.
              DATA(t466) = CAST zif_lnt_method_definition( t458 ).
              t465 = t466.
              t464 = t465->is_static_4685(  ).
              DATA(t467) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t467->has = abap_true.
              t467->value = t464.
              t460 = t467.
            ENDIF.
            t457 = t460.
            DATA t468 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t468.
            DATA(t469) = abap_true.
            IF t469 = abap_true.
              DATA(t470) = abap_false.
              DATA(t471) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t471->has = abap_true.
              t471->value = t470.
              t468 = t471.
            ELSE.
              DATA t472 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t472.
              t468 = t472.
            ENDIF.
            DATA(t473) = VALUE abap_bool( ).
            DATA(t474) = VALUE abap_bool( ).
            IF t457 IS BOUND.
              t473 = t457->has.
            ENDIF.
            IF t468 IS BOUND.
              t474 = t468->has.
            ENDIF.
            IF t473 = t474.
              IF t473 = abap_false.
                t456 = abap_true.
              ELSEIF t457->value = t468->value.
                t456 = abap_true.
              ENDIF.
            ENDIF.
            t449 = t456.
          ENDIF.
          t448 = t449.
          IF t449 = abap_true.
            DATA t475 TYPE abap_bool.
            DATA t476 TYPE abap_bool.
            DATA t477 TYPE REF TO zcl_lnt_current_scope.
            DATA(t478) = CAST zcl_lnt_syntax_input( t2 ).
            t477 = t478->scope.
            t476 = t477->is_in_static_method(  ).
            DATA(t479) = abap_true.
            t475 = xsdbool( t476 = t479 ).
            t448 = t475.
          ENDIF.
          IF t448 = abap_true.
            DATA(t480) = VALUE string( ).
            DATA(t481) = VALUE string( ).
            DATA(t482) = VALUE string( ).
            DATA(t483) = |Method "|.
            DATA(t484) = VALUE string( ).
            DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t486) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
            t485 = t486.
            DATA(t487) = VALUE string( ).
            DATA(t488) = VALUE abap_bool( ).
            DATA(t489) = CAST zlnt_runtime_opti_4ba3bdccd169( t485 ).
            IF t489 IS INITIAL.
              t488 = abap_true.
            ELSEIF t489->has = abap_false.
              t488 = abap_true.
            ENDIF.
            IF t488 = abap_true.
              DATA(t490) = |undefined|.
              t487 = t490.
            ELSE.
              DATA t491 TYPE string.
              DATA(t492) = CAST zlnt_runtime_opti_4ba3bdccd169( t485 ).
              t491 = t492->value.
              t487 = t491.
            ENDIF.
            t484 = t487.
            DATA(t493) = strlen( t483 ).
            t482 = |{ t483 }{ t484 }|.
            DATA(t494) = |" not static|.
            DATA(t495) = strlen( t482 ).
            t481 = |{ t482 }{ t494 }|.
            t480 = t481.
            DATA t496 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t497) = CAST zcl_lnt_syntax_input( t2 ).
            t496 = t497->issues.
            DATA t498 TYPE REF TO zcl_lnt_issue.
            DATA(t499) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t500 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t501) = CAST zcl_lnt_abstract_token( t133 ).
            t500 = t501.
            DATA(t502) = t480.
            DATA t503 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t503.
            t498 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t499 i_token = t500 i_message_26cb = t502 i_fix = t503 ).
            APPEND t498 TO t496->items.
            DATA t504 TYPE REF TO zcl_lnt_void_type.
            CLEAR t504.
            DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t505.
            DATA(t506) = abap_true.
            IF t506 = abap_true.
              DATA(t507) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t508->has = abap_true.
              t508->value = t507.
              t505 = t508.
            ELSE.
              DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t509.
              t505 = t509.
            ENDIF.
            DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t510.
            t504 = zcl_lnt_void_type=>get_db65( i_voided = t505 i_qualified_name = t510 ).
            result = t504.
            RETURN.
          ENDIF.
          DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t511.
          DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t512.
          DATA t513 TYPE abap_bool.
          DATA(t514) = CAST zif_lnt_method_definition( t336 ).
          t513 = xsdbool( t514 IS BOUND ).
          IF t513 = abap_true.
            DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t516 TYPE REF TO zif_lnt_method_definition.
            DATA(t517) = CAST zif_lnt_method_definition( t336 ).
            t516 = t517.
            DATA(t518) = CAST zif_lnt_interface_definition( t163 ).
            DATA(t519) = CAST zif_lnt_interface_definition( t339 ).
            DATA(t520) = CAST zcl_lnt_syntax_input( t2 ).
            t515 = zcl_lnt_sy_method_call_chain=>check_visibility( i_method = t516 i_def = t518 i_found_def = t519 i_input_967e = t520 ).
            t512 = t515.
          ELSE.
            DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t521.
            t512 = t521.
          ENDIF.
          t511 = t512.
          DATA(t522) = VALUE abap_bool( ).
          DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t524) = CAST zlnt_runtime_opti_4ba3bdccd169( t511 ).
          t523 = t524.
          DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t526.
          t525 = t526.
          DATA(t527) = VALUE abap_bool( ).
          DATA(t528) = VALUE abap_bool( ).
          DATA(t529) = CAST zlnt_runtime_opti_4ba3bdccd169( t523 ).
          IF t529 IS INITIAL.
            t528 = abap_true.
          ELSEIF t529->has = abap_false.
            t528 = abap_true.
          ENDIF.
          t527 = xsdbool( t528 = abap_false ).
          t522 = t527.
          IF t522 = abap_true.
            DATA(t530) = VALUE string( ).
            DATA(t531) = VALUE string( ).
            DATA(t532) = VALUE string( ).
            DATA(t533) = VALUE string( ).
            DATA(t534) = VALUE string( ).
            DATA(t535) = |Method "|.
            DATA(t536) = VALUE string( ).
            DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t538) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
            t537 = t538.
            DATA(t539) = VALUE string( ).
            DATA(t540) = VALUE abap_bool( ).
            DATA(t541) = CAST zlnt_runtime_opti_4ba3bdccd169( t537 ).
            IF t541 IS INITIAL.
              t540 = abap_true.
            ELSEIF t541->has = abap_false.
              t540 = abap_true.
            ENDIF.
            IF t540 = abap_true.
              DATA(t542) = |undefined|.
              t539 = t542.
            ELSE.
              DATA t543 TYPE string.
              DATA(t544) = CAST zlnt_runtime_opti_4ba3bdccd169( t537 ).
              t543 = t544->value.
              t539 = t543.
            ENDIF.
            t536 = t539.
            DATA(t545) = strlen( t535 ).
            t534 = |{ t535 }{ t536 }|.
            DATA(t546) = |" is |.
            DATA(t547) = strlen( t534 ).
            t533 = |{ t534 }{ t546 }|.
            DATA t548 TYPE string.
            DATA(t549) = CAST zlnt_runtime_opti_4ba3bdccd169( t511 ).
            t548 = t549->value.
            DATA(t550) = strlen( t533 ).
            t532 = |{ t533 }{ t548 }|.
            DATA(t551) = | and cannot be accessed|.
            DATA(t552) = strlen( t532 ).
            t531 = |{ t532 }{ t551 }|.
            t530 = t531.
            DATA t553 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t554) = CAST zcl_lnt_syntax_input( t2 ).
            t553 = t554->issues.
            DATA t555 TYPE REF TO zcl_lnt_issue.
            DATA(t556) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t557 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t558) = CAST zcl_lnt_abstract_token( t133 ).
            t557 = t558.
            DATA(t559) = t530.
            DATA t560 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t560.
            t555 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t556 i_token = t557 i_message_26cb = t559 i_fix = t560 ).
            APPEND t555 TO t553->items.
            DATA t561 TYPE REF TO zcl_lnt_void_type.
            CLEAR t561.
            DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t562.
            DATA(t563) = abap_true.
            IF t563 = abap_true.
              DATA(t564) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t565) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t565->has = abap_true.
              t565->value = t564.
              t562 = t565.
            ELSE.
              DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t566.
              t562 = t566.
            ENDIF.
            DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t567.
            t561 = zcl_lnt_void_type=>get_db65( i_voided = t562 i_qualified_name = t567 ).
            result = t561.
            RETURN.
          ENDIF.
          DATA t568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t568.
          DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t569.
          DATA t570 TYPE abap_bool.
          DATA(t571) = CAST zcl_lnt_abstract_type( t45 ).
          t570 = xsdbool( t571 IS BOUND AND t571 IS INSTANCE OF zcl_lnt_void_type ).
          IF t570 = abap_true.
            DATA t572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t573 TYPE REF TO zcl_lnt_void_type.
            DATA t574 TYPE REF TO zcl_lnt_void_type.
            DATA(t575) = CAST zcl_lnt_abstract_type( t45 ).
            t574 ?= t575.
            t573 = t574.
            DATA t576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t577) = CAST zcl_lnt_void_type( t573 ).
            t576 = t577->voided.
            t572 = t576.
            t569 = t572.
          ELSE.
            DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t578.
            t569 = t578.
          ENDIF.
          t568 = t569.
          DATA t579 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t579.
          DATA t580 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t580.
          DATA t581 TYPE REF TO zcl_lnt_object_oriented.
          DATA(t582) = CAST zcl_lnt_object_oriented( t4 ).
          t581 = t582.
          DATA t583 TYPE REF TO zif_lnt_interface_definition.
          DATA(t584) = CAST zif_lnt_interface_definition( t339 ).
          t583 = t584.
          DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t585.
          DATA t586 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t586.
          DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t588) = CAST zlnt_runtime_opti_4ba3bdccd169( t90 ).
          t587 = t588.
          DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t589.
          DATA(t590) = VALUE abap_bool( ).
          DATA(t591) = CAST zlnt_runtime_opti_4ba3bdccd169( t587 ).
          IF t591 IS BOUND.
            IF t591->has = abap_true.
              t590 = xsdbool( strlen( t591->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t590 = abap_true.
            DATA(t592) = CAST zlnt_runtime_opti_4ba3bdccd169( t587 ).
            t589 = t592.
          ELSE.
            DATA(t593) = CAST zlnt_runtime_opti_4ba3bdccd169( t568 ).
            t589 = t593.
          ENDIF.
          t586 = t589.
          t585 = t586.
          DATA t594 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t594.
          DATA(t595) = VALUE abap_bool( ).
          DATA t596 TYPE REF TO zif_lnt_interface_definition.
          DATA(t597) = CAST zif_lnt_interface_definition( t583 ).
          t596 = t597.
          DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t599.
          t598 = t599.
          DATA(t600) = VALUE abap_bool( ).
          DATA(t601) = CAST zif_lnt_interface_definition( t596 ).
          IF t601 IS INITIAL.
            t600 = abap_true.
          ENDIF.
          t595 = t600.
          IF t595 = abap_true.
            DATA t602 TYPE REF TO zcl_lnt_ireference_extras.
            DATA(t603) = CAST zlnt_runtime_opti_4ba3bdccd169( t585 ).
            DATA t604 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t604.
            DATA t605 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t605.
            t602 = NEW zcl_lnt_ireference_extras( i_oo_name = t603 i_oo_type = t604 i_found_qualified = t605 ).
            t594 = t602.
          ELSE.
            DATA t606 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t606.
            DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t607.
            DATA t608 TYPE REF TO zif_lnt_interface_definition.
            DATA t609 TYPE REF TO zif_lnt_interface_definition.
            DATA(t610) = CAST zif_lnt_interface_definition( t583 ).
            t609 = t610.
            t608 = t609.
            DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t611.
            DATA(t612) = VALUE abap_bool( ).
            DATA(t613) = CAST zif_lnt_interface_definition( t608 ).
            IF t613 IS INITIAL.
              t612 = abap_true.
            ENDIF.
            IF t612 = abap_true.
              DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t614.
              t611 = t614.
            ELSE.
              DATA t615 TYPE string.
              DATA(t616) = CAST zif_lnt_interface_definition( t608 ).
              t615 = t616->get_name(  ).
              DATA(t617) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t617->has = abap_true.
              t617->value = t615.
              t611 = t617.
            ENDIF.
            t607 = t611.
            DATA t618 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t618.
            DATA(t619) = abap_true.
            IF t619 = abap_true.
              DATA(t620) = VALUE string( ).
              DATA t621 TYPE abap_bool.
              DATA(t622) = CAST zif_lnt_interface_definition( t583 ).
              t621 = xsdbool( t622 IS BOUND AND t622 IS INSTANCE OF zcl_lnt_ty_class_definition ).
              IF t621 = abap_true.
                DATA(t623) = |CLAS|.
                t620 = t623.
              ELSE.
                DATA(t624) = |INTF|.
                t620 = t624.
              ENDIF.
              DATA(t625) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t625->has = abap_true.
              t625->value = t620.
              t618 = t625.
            ELSE.
              DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t626.
              t618 = t626.
            ENDIF.
            DATA t627 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t627.
            t606 = NEW zcl_lnt_ireference_extras( i_oo_name = t607 i_oo_type = t618 i_found_qualified = t627 ).
            t594 = t606.
          ENDIF.
          t580 = t594.
          t579 = t580.
          DATA t628 TYPE REF TO zif_lnt_method_definition.
          DATA(t629) = CAST zif_lnt_method_definition( t336 ).
          t628 = t629.
          DATA t630 TYPE REF TO zcl_lnt_current_scope.
          DATA(t631) = CAST zcl_lnt_syntax_input( t2 ).
          t630 = t631->scope.
          DATA(t632) = CAST zcl_lnt_abstract_token( t133 ).
          DATA t633 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t633.
          DATA(t634) = VALUE abap_bool( ).
          DATA(t635) = CAST zif_lnt_method_definition( t628 ).
          IF t635 IS INITIAL.
            t634 = abap_true.
          ENDIF.
          IF t634 = abap_true.
            DATA t636 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t636.
            t633 = t636.
          ELSE.
            DATA t637 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t638 TYPE REF TO zif_lnt_method_definition.
            DATA(t639) = CAST zif_lnt_method_definition( t628 ).
            t638 = t639.
            t637 ?= t638.
            t633 = t637.
          ENDIF.
          DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t641) = |Method|.
          CREATE OBJECT t640.
          t640->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t640->sval = t641.
          DATA t642 TYPE string.
          DATA(t643) = CAST zcl_lnt_syntax_input( t2 ).
          t642 = t643->filename.
          DATA t644 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t644.
          DATA(t645) = abap_true.
          IF t645 = abap_true.
            DATA(t646) = CAST zcl_lnt_ireference_extras( t579 ).
            t644 = t646.
          ELSE.
            DATA t647 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t647.
            t644 = t647.
          ENDIF.
          t630->add_reference( i_usage = t632 i_referencing = t633 i_type_9913 = t640 i_filename = t642 i_extra = t644 ).
        ENDIF.
        DATA(t648) = VALUE abap_bool( ).
        DATA t649 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t649.
        DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t651) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
        t650 = t651.
        DATA t652 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t652.
        DATA(t653) = VALUE abap_bool( ).
        DATA(t654) = CAST zlnt_runtime_opti_4ba3bdccd169( t650 ).
        IF t654 IS INITIAL.
          t653 = abap_true.
        ELSEIF t654->has = abap_false.
          t653 = abap_true.
        ENDIF.
        IF t653 = abap_true.
          DATA t655 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t655.
          t652 = t655.
        ELSE.
          DATA(t656) = VALUE abap_bool( ).
          DATA(t657) = VALUE i( ).
          DATA t658 TYPE string.
          DATA(t659) = CAST zlnt_runtime_opti_4ba3bdccd169( t650 ).
          t658 = t659->value.
          DATA(t660) = |~|.
          DATA(t661) = strlen( t658 ).
          IF t660 IS INITIAL.
            t657 = 0.
          ELSE.
            FIND t660 IN t658 MATCH OFFSET t657.
            IF sy-subrc <> 0.
              t657 = -1.
            ENDIF.
          ENDIF.
          DATA(t662) = 0.
          t656 = xsdbool( t657 >= t662 ).
          DATA(t663) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t663->has = abap_true.
          t663->value = t656.
          t652 = t663.
        ENDIF.
        t649 = t652.
        IF t649 IS BOUND.
          IF t649->has = abap_true.
            t648 = xsdbool( t649->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t648 = abap_true.
          DATA(t664) = VALUE string( ).
          DATA(t665) = VALUE string( ).
          DATA t666 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t667 TYPE string.
          DATA(t668) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
          t667 = t668->value.
          DATA(t669) = |~|.
          DATA(t670) = strlen( t667 ).
          DATA t671 TYPE i.
          DATA(t672) = VALUE i( ).
          DATA(t673) = VALUE i( ).
          DATA t674 TYPE i.
          DATA(t675) = VALUE string( ).
          CREATE OBJECT t666.
          t674 = strlen( t669 ).
          t671 = 0.
          IF t674 = 0.
            WHILE t671 < t670.
              t675 = t667+t671(1).
              APPEND t675 TO t666->items.
              t671 = t671 + 1.
            ENDWHILE.
          ELSE.
            WHILE t671 <= t670.
              FIND FIRST OCCURRENCE OF t669 IN SECTION OFFSET t671 OF t667 MATCH OFFSET t672.
              IF sy-subrc = 0.
                t673 = t672 - t671.
              ELSE.
                t672 = -1.
                t673 = t670 - t671.
              ENDIF.
              CLEAR t675.
              IF t673 > 0.
                t675 = t667+t671(t673).
              ENDIF.
              APPEND t675 TO t666->items.
              IF t672 < 0.
                EXIT.
              ENDIF.
              t671 = t672 + t674.
            ENDWHILE.
          ENDIF.
          READ TABLE t666->items INDEX 1 INTO t665.
          t664 = t665.
          DATA t676 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t676.
          DATA t677 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t677.
          DATA t678 TYPE REF TO zcl_lnt_current_scope.
          DATA t679 TYPE REF TO zcl_lnt_current_scope.
          DATA(t680) = CAST zcl_lnt_syntax_input( t2 ).
          t679 = t680->scope.
          t678 = t679.
          DATA t681 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t681.
          DATA t682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t682.
          DATA(t683) = abap_true.
          IF t683 = abap_true.
            DATA(t684) = t664.
            DATA(t685) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t685->has = abap_true.
            t685->value = t684.
            t682 = t685.
          ELSE.
            DATA t686 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t686.
            t682 = t686.
          ENDIF.
          t681 = t682.
          DATA t687 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t687.
          DATA(t688) = VALUE abap_bool( ).
          DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t690) = CAST zlnt_runtime_opti_4ba3bdccd169( t681 ).
          t689 = t690.
          DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t692.
          t691 = t692.
          DATA(t693) = VALUE abap_bool( ).
          DATA(t694) = CAST zlnt_runtime_opti_4ba3bdccd169( t689 ).
          IF t694 IS INITIAL.
            t693 = abap_true.
          ELSEIF t694->has = abap_false.
            t693 = abap_true.
          ENDIF.
          t688 = t693.
          IF t688 = abap_true.
            DATA t695 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t695.
            t687 = t695.
          ELSE.
            DATA t696 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t696.
            DATA t697 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t697.
            DATA t698 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t698.
            DATA t699 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t700 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t701) = CAST zcl_lnt_current_scope( t678 ).
            t700 = t701->current.
            t699 = t700.
            DATA t702 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t702.
            DATA(t703) = VALUE abap_bool( ).
            DATA(t704) = CAST zcl_lnt_spaghetti_scope_node( t699 ).
            IF t704 IS INITIAL.
              t703 = abap_true.
            ENDIF.
            IF t703 = abap_true.
              DATA t705 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t705.
              t702 = t705.
            ELSE.
              DATA t706 TYPE REF TO zif_lnt_interface_definition.
              DATA t707 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t708) = CAST zcl_lnt_spaghetti_scope_node( t699 ).
              t707 = t708.
              DATA t709 TYPE string.
              DATA(t710) = CAST zlnt_runtime_opti_4ba3bdccd169( t681 ).
              t709 = t710->value.
              t706 = t707->find_interface_definition( i_name = t709 ).
              t702 = t706.
            ENDIF.
            t698 = t702.
            t697 = t698.
            DATA t711 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t711.
            DATA t712 TYPE abap_bool.
            DATA(t713) = CAST zif_lnt_interface_definition( t697 ).
            t712 = xsdbool( t713 IS BOUND ).
            IF t712 = abap_true.
              DATA t714 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t714.
              DATA(t715) = abap_true.
              IF t715 = abap_true.
                DATA t716 TYPE REF TO zif_lnt_interface_definition.
                DATA(t717) = CAST zif_lnt_interface_definition( t697 ).
                t716 = t717.
                t714 = t716.
              ELSE.
                DATA t718 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t718.
                t714 = t718.
              ENDIF.
              t711 = t714.
            ELSE.
              DATA t719 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t719.
              DATA t720 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t720.
              DATA t721 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t721.
              DATA t722 TYPE REF TO zif_lnt_object.
              CLEAR t722.
              DATA t723 TYPE REF TO zif_lnt_registry.
              DATA(t724) = CAST zcl_lnt_current_scope( t678 ).
              t723 = t724->reg.
              DATA t725 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t725.
              DATA(t726) = abap_true.
              IF t726 = abap_true.
                DATA(t727) = |INTF|.
                DATA(t728) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t728->has = abap_true.
                t728->value = t727.
                t725 = t728.
              ELSE.
                DATA t729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t729.
                t725 = t729.
              ENDIF.
              DATA t730 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t730.
              DATA(t731) = abap_true.
              IF t731 = abap_true.
                DATA t732 TYPE string.
                DATA(t733) = CAST zlnt_runtime_opti_4ba3bdccd169( t681 ).
                t732 = t733->value.
                DATA(t734) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t734->has = abap_true.
                t734->value = t732.
                t730 = t734.
              ELSE.
                DATA t735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t735.
                t730 = t735.
              ENDIF.
              t722 = t723->get_object( i_type_9913 = t725 i_name = t730 ).
              DATA t736 TYPE REF TO object.
              t736 = t722.
              t721 ?= t736.
              t720 = t721.
              DATA t737 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t737.
              DATA t738 TYPE abap_bool.
              DATA(t739) = CAST zcl_lnt_ob_interface( t720 ).
              t738 = xsdbool( t739 IS BOUND ).
              IF t738 = abap_true.
                DATA t740 TYPE REF TO zif_lnt_interface_definition.
                DATA t741 TYPE REF TO zcl_lnt_ob_interface.
                DATA t742 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t743) = CAST zcl_lnt_ob_interface( t720 ).
                t742 = t743.
                t741 = t742.
                DATA t744 TYPE REF TO zif_lnt_interface_definition.
                DATA(t745) = CAST zcl_lnt_ob_interface( t741 ).
                t744 = t745->def.
                t740 = t744.
                t737 = t740.
              ELSE.
                DATA t746 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t746.
                t737 = t746.
              ENDIF.
              t719 = t737.
              t711 = t719.
            ENDIF.
            t696 = t711.
            t687 = t696.
          ENDIF.
          t677 = t687.
          t676 = t677.
          DATA t747 TYPE abap_bool.
          DATA(t748) = CAST zif_lnt_interface_definition( t676 ).
          t747 = xsdbool( t748 IS BOUND ).
          IF t747 = abap_true.
            DATA t749 TYPE REF TO zcl_lnt_current_scope.
            DATA(t750) = CAST zcl_lnt_syntax_input( t2 ).
            t749 = t750->scope.
            DATA(t751) = CAST zcl_lnt_abstract_token( t133 ).
            DATA t752 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t752.
            DATA(t753) = abap_true.
            IF t753 = abap_true.
              DATA t754 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t755 TYPE REF TO zif_lnt_interface_definition.
              DATA(t756) = CAST zif_lnt_interface_definition( t676 ).
              t755 = t756.
              t754 ?= t755.
              t752 = t754.
            ELSE.
              DATA t757 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t757.
              t752 = t757.
            ENDIF.
            DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t759) = |Object|.
            CREATE OBJECT t758.
            t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t758->sval = t759.
            DATA t760 TYPE string.
            DATA(t761) = CAST zcl_lnt_syntax_input( t2 ).
            t760 = t761->filename.
            DATA t762 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t762.
            t749->add_reference( i_usage = t751 i_referencing = t752 i_type_9913 = t758 i_filename = t760 i_extra = t762 ).
          ENDIF.
        ENDIF.
        DATA(t763) = VALUE abap_bool( ).
        DATA(t764) = VALUE abap_bool( ).
        DATA t765 TYPE REF TO zif_lnt_method_definition.
        DATA(t766) = CAST zif_lnt_method_definition( t336 ).
        t765 = t766.
        DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t768.
        t767 = t768.
        DATA(t769) = VALUE abap_bool( ).
        DATA(t770) = CAST zif_lnt_method_definition( t765 ).
        IF t770 IS INITIAL.
          t769 = abap_true.
        ENDIF.
        t764 = t769.
        t763 = t764.
        IF t764 = abap_true.
          DATA(t771) = VALUE abap_bool( ).
          DATA t772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t772.
          DATA t773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t774) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
          t773 = t774.
          DATA t775 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t775.
          DATA(t776) = VALUE abap_bool( ).
          DATA(t777) = CAST zlnt_runtime_opti_4ba3bdccd169( t773 ).
          IF t777 IS INITIAL.
            t776 = abap_true.
          ELSEIF t777->has = abap_false.
            t776 = abap_true.
          ENDIF.
          IF t776 = abap_true.
            DATA t778 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t778.
            t775 = t778.
          ELSE.
            DATA t779 TYPE string.
            DATA t780 TYPE string.
            DATA(t781) = CAST zlnt_runtime_opti_4ba3bdccd169( t773 ).
            t780 = t781->value.
            DATA(t782) = strlen( t780 ).
            t779 = t780.
            IF t779 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t779 TO UPPER CASE.
            ELSE.
              t779 = zlnt_runtime_uppe_91169605024d=>full( t779 ).
            ENDIF.
            DATA(t783) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t783->has = abap_true.
            t783->value = t779.
            t775 = t783.
          ENDIF.
          t772 = t775.
          DATA t784 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t784.
          DATA(t785) = abap_true.
          IF t785 = abap_true.
            DATA(t786) = |CONSTRUCTOR|.
            DATA(t787) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t787->has = abap_true.
            t787->value = t786.
            t784 = t787.
          ELSE.
            DATA t788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t788.
            t784 = t788.
          ENDIF.
          DATA(t789) = VALUE abap_bool( ).
          DATA(t790) = VALUE abap_bool( ).
          IF t772 IS BOUND.
            t789 = t772->has.
          ENDIF.
          IF t784 IS BOUND.
            t790 = t784->has.
          ENDIF.
          IF t789 = t790.
            IF t789 = abap_false.
              t771 = abap_true.
            ELSEIF t772->value = t784->value.
              t771 = abap_true.
            ENDIF.
          ENDIF.
          t763 = t771.
        ENDIF.
        IF t763 = abap_true.
          DATA t791 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t791.
          t45 = t791.
        ELSE.
          DATA(t792) = VALUE abap_bool( ).
          DATA(t793) = VALUE abap_bool( ).
          DATA t794 TYPE REF TO zif_lnt_method_definition.
          DATA(t795) = CAST zif_lnt_method_definition( t336 ).
          t794 = t795.
          DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t797.
          t796 = t797.
          DATA(t798) = VALUE abap_bool( ).
          DATA(t799) = CAST zif_lnt_method_definition( t794 ).
          IF t799 IS INITIAL.
            t798 = abap_true.
          ENDIF.
          t793 = t798.
          t792 = t793.
          IF t793 = abap_true.
            DATA t800 TYPE abap_bool.
            DATA t801 TYPE abap_bool.
            DATA(t802) = CAST zcl_lnt_abstract_type( t45 ).
            t801 = xsdbool( t802 IS BOUND AND t802 IS INSTANCE OF zcl_lnt_void_type ).
            t800 = xsdbool( t801 = abap_false ).
            t792 = t800.
          ENDIF.
          IF t792 = abap_true.
            DATA(t803) = VALUE string( ).
            DATA(t804) = VALUE string( ).
            DATA(t805) = VALUE string( ).
            DATA(t806) = |Method "|.
            DATA(t807) = VALUE string( ).
            DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t809) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
            t808 = t809.
            DATA(t810) = VALUE string( ).
            DATA(t811) = VALUE abap_bool( ).
            DATA(t812) = CAST zlnt_runtime_opti_4ba3bdccd169( t808 ).
            IF t812 IS INITIAL.
              t811 = abap_true.
            ELSEIF t812->has = abap_false.
              t811 = abap_true.
            ENDIF.
            IF t811 = abap_true.
              DATA(t813) = |undefined|.
              t810 = t813.
            ELSE.
              DATA t814 TYPE string.
              DATA(t815) = CAST zlnt_runtime_opti_4ba3bdccd169( t808 ).
              t814 = t815->value.
              t810 = t814.
            ENDIF.
            t807 = t810.
            DATA(t816) = strlen( t806 ).
            t805 = |{ t806 }{ t807 }|.
            DATA(t817) = |" not found, methodCallChain|.
            DATA(t818) = strlen( t805 ).
            t804 = |{ t805 }{ t817 }|.
            t803 = t804.
            DATA t819 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t820) = CAST zcl_lnt_syntax_input( t2 ).
            t819 = t820->issues.
            DATA t821 TYPE REF TO zcl_lnt_issue.
            DATA(t822) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t823 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t824) = CAST zcl_lnt_abstract_token( t133 ).
            t823 = t824.
            DATA(t825) = t803.
            DATA t826 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t826.
            t821 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t822 i_token = t823 i_message_26cb = t825 i_fix = t826 ).
            APPEND t821 TO t819->items.
            DATA t827 TYPE REF TO zcl_lnt_void_type.
            CLEAR t827.
            DATA t828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t828.
            DATA(t829) = abap_true.
            IF t829 = abap_true.
              DATA(t830) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t831) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t831->has = abap_true.
              t831->value = t830.
              t828 = t831.
            ELSE.
              DATA t832 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t832.
              t828 = t832.
            ENDIF.
            DATA t833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t833.
            t827 = zcl_lnt_void_type=>get_db65( i_voided = t828 i_qualified_name = t833 ).
            result = t827.
            RETURN.
          ELSE.
            DATA t834 TYPE abap_bool.
            DATA(t835) = CAST zif_lnt_method_definition( t336 ).
            t834 = xsdbool( t835 IS BOUND ).
            IF t834 = abap_true.
              DATA t836 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t836.
              DATA t837 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t837.
              DATA t838 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t839 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t840 TYPE REF TO zif_lnt_method_parameters.
              DATA t841 TYPE REF TO zif_lnt_method_definition.
              DATA(t842) = CAST zif_lnt_method_definition( t336 ).
              t841 = t842.
              t840 = t841->get_parameters(  ).
              t839 = t840->get_returning(  ).
              t838 = t839.
              DATA t843 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t843.
              DATA(t844) = VALUE abap_bool( ).
              DATA(t845) = CAST zcl_lnt_typed_identifier( t838 ).
              IF t845 IS INITIAL.
                t844 = abap_true.
              ENDIF.
              IF t844 = abap_true.
                DATA t846 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t846.
                t843 = t846.
              ELSE.
                DATA t847 TYPE REF TO zcl_lnt_abstract_type.
                DATA t848 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t849 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t850) = CAST zcl_lnt_typed_identifier( t838 ).
                t849 = t850.
                t848 = t849.
                DATA t851 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t852) = CAST zcl_lnt_typed_identifier( t848 ).
                t851 = t852->type_cba0.
                t847 = t851.
                t843 = t847.
              ENDIF.
              t837 = t843.
              t836 = t837.
              DATA(t853) = CAST zcl_lnt_abstract_type( t836 ).
              t45 = t853.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t854 TYPE REF TO zcl_lnt_expression_node.
        DATA t855 TYPE REF TO zcl_lnt_expression_node.
        DATA t856 TYPE REF TO zcl_lnt_expression_node.
        DATA(t857) = CAST zif_lnt_union_4cf1d054( t66 ).
        DATA t858 TYPE REF TO object.
        t858 = t857.
        t856 ?= t858.
        DATA(t859) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d214_4a4b8612d221 ).
        t855 = t856->find_direct_expression( i_type_9913 = t859 ).
        t854 = t855.
        DATA t860 TYPE abap_bool.
        DATA t861 TYPE abap_bool.
        DATA(t862) = CAST zcl_lnt_expression_node( t854 ).
        t861 = xsdbool( t862 IS BOUND ).
        t860 = t861.
        IF t861 = abap_true.
          DATA t863 TYPE abap_bool.
          DATA(t864) = CAST zif_lnt_method_definition( t336 ).
          t863 = xsdbool( t864 IS BOUND ).
          t860 = t863.
        ENDIF.
        IF t860 = abap_true.
          DATA t865 TYPE REF TO zcl_lnt_expression_node.
          DATA(t866) = CAST zcl_lnt_expression_node( t854 ).
          t865 = t866.
          DATA(t867) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t868 TYPE REF TO zif_lnt_union_8cd68e5e.
          DATA t869 TYPE REF TO zif_lnt_method_definition.
          DATA(t870) = CAST zif_lnt_method_definition( t336 ).
          t869 = t870.
          t868 ?= t869.
          zcl_lnt_sy_method_call_param=>run_syntax( i_node = t865 i_input_967e = t867 i_method = t868 ).
        ELSE.
          DATA t871 TYPE abap_bool.
          DATA t872 TYPE abap_bool.
          DATA(t873) = CAST zcl_lnt_expression_node( t854 ).
          t872 = xsdbool( t873 IS BOUND ).
          t871 = t872.
          IF t872 = abap_true.
            DATA t874 TYPE abap_bool.
            DATA(t875) = CAST zcl_lnt_abstract_type( t45 ).
            t874 = xsdbool( t875 IS BOUND AND t875 IS INSTANCE OF zcl_lnt_void_type ).
            t871 = t874.
          ENDIF.
          IF t871 = abap_true.
            DATA t876 TYPE REF TO zcl_lnt_expression_node.
            DATA(t877) = CAST zcl_lnt_expression_node( t854 ).
            t876 = t877.
            DATA(t878) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t879 TYPE REF TO zcl_lnt_void_type.
            DATA(t880) = CAST zcl_lnt_abstract_type( t45 ).
            t879 ?= t880.
            zcl_lnt_sy_method_call_param=>run_syntax( i_node = t876 i_input_967e = t878 i_method = t879 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA t881 TYPE abap_bool.
        DATA t882 TYPE abap_bool.
        DATA(t883) = CAST zif_lnt_union_4cf1d054( t66 ).
        t882 = xsdbool( t883 IS BOUND AND t883 IS INSTANCE OF zcl_lnt_expression_node ).
        t881 = t882.
        IF t882 = abap_true.
          DATA t884 TYPE abap_bool.
          DATA t885 TYPE REF TO zif_lnt_statement_runnable.
          DATA t886 TYPE REF TO zcl_lnt_expression_node.
          DATA(t887) = CAST zif_lnt_union_4cf1d054( t66 ).
          DATA t888 TYPE REF TO object.
          t888 = t887.
          t886 ?= t888.
          t885 = t886->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
          t884 = xsdbool( t885 IS BOUND AND t885 IS INSTANCE OF zcl_lnt_st_component_name ).
          t881 = t884.
        ENDIF.
        IF t881 = abap_true.
          DATA t889 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t890) = CAST zcl_lnt_abstract_type( t45 ).
          DATA t891 TYPE REF TO zcl_lnt_expression_node.
          DATA(t892) = CAST zif_lnt_union_4cf1d054( t66 ).
          DATA t893 TYPE REF TO object.
          t893 = t892.
          t891 ?= t893.
          DATA(t894) = CAST zcl_lnt_syntax_input( t2 ).
          t889 = zcl_lnt_sy_component_name=>run_syntax( i_context = t890 i_node = t891 i_input_967e = t894 ).
          t45 = t889.
        ELSE.
          DATA t895 TYPE abap_bool.
          DATA t896 TYPE abap_bool.
          DATA(t897) = CAST zif_lnt_union_4cf1d054( t66 ).
          t896 = xsdbool( t897 IS BOUND AND t897 IS INSTANCE OF zcl_lnt_expression_node ).
          t895 = t896.
          IF t896 = abap_true.
            DATA t898 TYPE abap_bool.
            DATA t899 TYPE REF TO zif_lnt_statement_runnable.
            DATA t900 TYPE REF TO zcl_lnt_expression_node.
            DATA(t901) = CAST zif_lnt_union_4cf1d054( t66 ).
            DATA t902 TYPE REF TO object.
            t902 = t901.
            t900 ?= t902.
            t899 = t900->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
            t898 = xsdbool( t899 IS BOUND AND t899 IS INSTANCE OF zcl_lnt_st_attribute_name ).
            t895 = t898.
          ENDIF.
          IF t895 = abap_true.
            DATA t903 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t904) = CAST zcl_lnt_abstract_type( t45 ).
            DATA t905 TYPE REF TO zcl_lnt_expression_node.
            DATA(t906) = CAST zif_lnt_union_4cf1d054( t66 ).
            DATA t907 TYPE REF TO object.
            t907 = t906.
            t905 ?= t907.
            DATA(t908) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t909.
            DATA t910 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t910.
            t903 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t904 i_node = t905 i_input_967e = t908 i_type_9913 = t909 i_error = t910 ).
            t45 = t903.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t911 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t911.
      DATA(t912) = abap_true.
      IF t912 = abap_true.
        DATA(t913) = CAST zif_lnt_union_4cf1d054( t66 ).
        t911 = t913.
      ELSE.
        DATA t914 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t914.
        t911 = t914.
      ENDIF.
      t59 = t911.
    ENDDO.
    DATA(t915) = CAST zcl_lnt_abstract_type( t45 ).
    result = t915.
    
  ENDMETHOD.
  METHOD check_visibility.
    DATA(t1) = CAST zif_lnt_method_definition( i_method ).
    DATA(t2) = CAST zif_lnt_interface_definition( i_def ).
    DATA(t3) = CAST zif_lnt_interface_definition( i_found_def ).
    DATA(t4) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t5 TYPE int8.
    DATA t6 TYPE int8.
    DATA(t7) = CAST zif_lnt_method_definition( t1 ).
    t6 = t7->get_visibility(  ).
    t5 = t6.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t5.
    DATA(t11) = CONV int8( 3 ).
    t9 = xsdbool( t10 = t11 ).
    t8 = t9.
    IF t9 = abap_false.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zif_lnt_interface_definition.
      DATA(t14) = CAST zif_lnt_interface_definition( t3 ).
      t13 = t14.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      t15 = t16.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = CAST zif_lnt_interface_definition( t13 ).
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t12 = t17.
      t8 = t12.
    ENDIF.
    IF t8 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      result = t19.
      RETURN.
    ELSE.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE abap_bool.
      DATA(t22) = CAST zif_lnt_interface_definition( t3 ).
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      t20 = xsdbool( t21 = abap_false ).
      IF t20 = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        result = t23.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t24) = VALUE string( ).
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE string( ).
    DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t28 TYPE REF TO zcl_lnt_ty_class_definition.
    DATA(t29) = CAST zif_lnt_interface_definition( t3 ).
    DATA t30 TYPE REF TO object.
    t30 = t29.
    t28 ?= t30.
    t27 = t28.
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE string.
    DATA t33 TYPE string.
    DATA t34 TYPE REF TO zcl_lnt_abstract_token.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t36) = CAST zcl_lnt_fi_identifier( t27 ).
    t35 = t36->token.
    t34 = t35.
    DATA t37 TYPE string.
    DATA(t38) = CAST zcl_lnt_abstract_token( t34 ).
    t37 = t38->str.
    t33 = t37.
    t32 = t33.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE string( ).
    DATA(t41) = t32.
    DATA(t42) = 0.
    DATA(t43) = 1.
    DATA(t44) = strlen( t41 ).
    IF t42 < 0.
      t42 = t42 + t44.
      IF t42 < 0.
        t42 = 0.
      ENDIF.
    ENDIF.
    IF t42 > t44 OR t43 <= 0.
      CLEAR t40.
    ELSE.
      IF t43 > t44 - t42.
        t43 = t44 - t42.
      ENDIF.
      t40 = t41+t42(t43).
    ENDIF.
    DATA(t45) = |!|.
    t39 = xsdbool( t40 = t45 ).
    IF t39 = abap_true.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE string.
      DATA(t48) = t32.
      t47 = t48.
      DATA(t49) = VALUE string( ).
      DATA(t50) = t47.
      DATA(t51) = 1.
      DATA t52 TYPE i.
      DATA(t53) = t47.
      DATA(t54) = strlen( t53 ).
      t52 = t54.
      DATA(t55) = strlen( t50 ).
      IF t51 < 0.
        t51 = t51 + t55.
        IF t51 < 0.
          t51 = 0.
        ENDIF.
      ENDIF.
      IF t51 > t55 OR t52 <= 0.
        CLEAR t49.
      ELSE.
        IF t52 > t55 - t51.
          t52 = t55 - t51.
        ENDIF.
        t49 = t50+t51(t52).
      ENDIF.
      t46 = t49.
      t32 = t46.
    ENDIF.
    DATA(t56) = t32.
    t31 = t56.
    t26 = t31.
    DATA(t57) = strlen( t26 ).
    t25 = t26.
    IF t25 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t25 TO UPPER CASE.
    ELSE.
      t25 = zlnt_runtime_uppe_91169605024d=>full( t25 ).
    ENDIF.
    t24 = t25.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t62 TYPE REF TO zcl_lnt_current_scope.
    DATA(t63) = CAST zcl_lnt_syntax_input( t4 ).
    t62 = t63->scope.
    t61 = t62->get_enclosing_class_name(  ).
    t60 = t61.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t64.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = CAST zlnt_runtime_opti_4ba3bdccd169( t60 ).
    IF t66 IS INITIAL.
      t65 = abap_true.
    ELSEIF t66->has = abap_false.
      t65 = abap_true.
    ENDIF.
    IF t65 = abap_true.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      t64 = t67.
    ELSE.
      DATA t68 TYPE string.
      DATA t69 TYPE string.
      DATA(t70) = CAST zlnt_runtime_opti_4ba3bdccd169( t60 ).
      t69 = t70->value.
      DATA(t71) = strlen( t69 ).
      t68 = t69.
      IF t68 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t68 TO UPPER CASE.
      ELSE.
        t68 = zlnt_runtime_uppe_91169605024d=>full( t68 ).
      ENDIF.
      DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t72->has = abap_true.
      t72->value = t68.
      t64 = t72.
    ENDIF.
    t59 = t64.
    t58 = t59.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = VALUE abap_bool( ).
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t76) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
    t75 = t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    t77 = t78.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
    IF t80 IS INITIAL.
      t79 = abap_true.
    ELSEIF t80->has = abap_false.
      t79 = abap_true.
    ENDIF.
    t74 = t79.
    t73 = t74.
    IF t74 = abap_false.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE string.
      DATA(t83) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
      t82 = t83->value.
      DATA(t84) = t24.
      t81 = xsdbool( t82 = t84 ).
      t73 = t81.
    ENDIF.
    IF t73 = abap_true.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      result = t85.
      RETURN.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_object_oriented.
    DATA t87 TYPE REF TO zcl_lnt_object_oriented.
    DATA t88 TYPE REF TO zcl_lnt_current_scope.
    DATA(t89) = CAST zcl_lnt_syntax_input( t4 ).
    t88 = t89->scope.
    t87 = NEW zcl_lnt_object_oriented( i_scope = t88 ).
    t86 = t87.
    DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t91.
    t90 = t91.
    DATA t92 TYPE REF TO zif_lnt_class_definition.
    CLEAR t92.
    DATA t93 TYPE REF TO zcl_lnt_ty_class_definition.
    CLEAR t93.
    DATA t94 TYPE abap_bool.
    DATA(t95) = CAST zif_lnt_interface_definition( t2 ).
    t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    IF t94 = abap_true.
      DATA t96 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t97) = CAST zif_lnt_interface_definition( t2 ).
      DATA t98 TYPE REF TO object.
      t98 = t97.
      t96 ?= t98.
      t93 = t96.
    ELSE.
      DATA t99 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t100) = CAST zif_lnt_interface_definition( t3 ).
      DATA t101 TYPE REF TO object.
      t101 = t100.
      t99 ?= t101.
      t93 = t99.
    ENDIF.
    t92 = t93.
    DO.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = VALUE abap_bool( ).
      DATA t104 TYPE REF TO zif_lnt_class_definition.
      DATA(t105) = CAST zif_lnt_class_definition( t92 ).
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      t106 = t107.
      DATA(t108) = VALUE abap_bool( ).
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = CAST zif_lnt_class_definition( t104 ).
      IF t110 IS INITIAL.
        t109 = abap_true.
      ENDIF.
      t108 = xsdbool( t109 = abap_false ).
      t103 = t108.
      t102 = t103.
      IF t103 = abap_true.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = CAST zlnt_runtime_arra_8ecd6afe19e0( t90 ).
        DATA t114 TYPE string.
        DATA t115 TYPE string.
        DATA t116 TYPE REF TO zif_lnt_class_definition.
        DATA(t117) = CAST zif_lnt_class_definition( t92 ).
        t116 = t117.
        t115 = t116->get_name(  ).
        DATA(t118) = strlen( t115 ).
        t114 = t115.
        IF t114 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t114 TO UPPER CASE.
        ELSE.
          t114 = zlnt_runtime_uppe_91169605024d=>full( t114 ).
        ENDIF.
        t112 = t113->includes( p0 = t114 ).
        DATA(t119) = abap_false.
        t111 = xsdbool( t112 = t119 ).
        t102 = t111.
      ENDIF.
      IF t102 = abap_false.
        EXIT.
      ENDIF.
      DATA(t120) = CAST zlnt_runtime_arra_8ecd6afe19e0( t90 ).
      DATA t121 TYPE string.
      DATA t122 TYPE string.
      DATA t123 TYPE REF TO zif_lnt_class_definition.
      DATA(t124) = CAST zif_lnt_class_definition( t92 ).
      t123 = t124.
      t122 = t123->get_name(  ).
      DATA(t125) = strlen( t122 ).
      t121 = t122.
      IF t121 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t121 TO UPPER CASE.
      ELSE.
        t121 = zlnt_runtime_uppe_91169605024d=>full( t121 ).
      ENDIF.
      APPEND t121 TO t120->items.
      DATA t126 TYPE abap_bool.
      DATA(t127) = CAST zcl_lnt_object_oriented( t86 ).
      DATA t128 TYPE REF TO zif_lnt_class_definition.
      DATA(t129) = CAST zif_lnt_class_definition( t92 ).
      t128 = t129.
      DATA t130 TYPE string.
      DATA(t131) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
      t130 = t131->value.
      t126 = t127->has_friendship( i_cd = t128 i_friend_name = t130 ).
      IF t126 = abap_true.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        result = t132.
        RETURN.
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t135 TYPE REF TO zif_lnt_class_definition.
      DATA(t136) = CAST zif_lnt_class_definition( t92 ).
      t135 = t136.
      t134 = t135->get_super_class(  ).
      t133 = t134.
      DATA t137 TYPE REF TO zif_lnt_class_definition.
      CLEAR t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t140) = CAST zlnt_runtime_opti_4ba3bdccd169( t133 ).
      t139 = t140.
      DATA t141 TYPE REF TO zif_lnt_class_definition.
      DATA t142 TYPE REF TO zif_lnt_class_definition.
      CLEAR t142.
      t141 = t142.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = CAST zlnt_runtime_opti_4ba3bdccd169( t139 ).
      IF t144 IS INITIAL.
        t143 = abap_true.
      ELSEIF t144->has = abap_false.
        t143 = abap_true.
      ENDIF.
      t138 = t143.
      IF t138 = abap_true.
        DATA t145 TYPE REF TO zif_lnt_class_definition.
        CLEAR t145.
        t137 = t145.
      ELSE.
        DATA t146 TYPE REF TO zif_lnt_class_definition.
        CLEAR t146.
        DATA t147 TYPE REF TO zcl_lnt_current_scope.
        DATA t148 TYPE REF TO zcl_lnt_current_scope.
        DATA(t149) = CAST zcl_lnt_syntax_input( t4 ).
        t148 = t149->scope.
        t147 = t148.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA(t152) = abap_true.
        IF t152 = abap_true.
          DATA t153 TYPE string.
          DATA(t154) = CAST zlnt_runtime_opti_4ba3bdccd169( t133 ).
          t153 = t154->value.
          DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t155->has = abap_true.
          t155->value = t153.
          t151 = t155.
        ELSE.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          t151 = t156.
        ENDIF.
        t150 = t151.
        DATA t157 TYPE REF TO zif_lnt_class_definition.
        CLEAR t157.
        DATA(t158) = VALUE abap_bool( ).
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t160) = CAST zlnt_runtime_opti_4ba3bdccd169( t150 ).
        t159 = t160.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        t161 = t162.
        DATA(t163) = VALUE abap_bool( ).
        DATA(t164) = CAST zlnt_runtime_opti_4ba3bdccd169( t159 ).
        IF t164 IS INITIAL.
          t163 = abap_true.
        ELSEIF t164->has = abap_false.
          t163 = abap_true.
        ENDIF.
        t158 = t163.
        IF t158 = abap_true.
          DATA t165 TYPE REF TO zif_lnt_class_definition.
          CLEAR t165.
          t157 = t165.
        ELSE.
          DATA t166 TYPE REF TO zif_lnt_class_definition.
          CLEAR t166.
          DATA t167 TYPE REF TO zif_lnt_class_definition.
          CLEAR t167.
          DATA t168 TYPE REF TO zif_lnt_class_definition.
          CLEAR t168.
          DATA t169 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t170 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t171) = CAST zcl_lnt_current_scope( t147 ).
          t170 = t171->current.
          t169 = t170.
          DATA t172 TYPE REF TO zif_lnt_class_definition.
          CLEAR t172.
          DATA(t173) = VALUE abap_bool( ).
          DATA(t174) = CAST zcl_lnt_spaghetti_scope_node( t169 ).
          IF t174 IS INITIAL.
            t173 = abap_true.
          ENDIF.
          IF t173 = abap_true.
            DATA t175 TYPE REF TO zif_lnt_class_definition.
            CLEAR t175.
            t172 = t175.
          ELSE.
            DATA t176 TYPE REF TO zif_lnt_class_definition.
            DATA t177 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t178) = CAST zcl_lnt_spaghetti_scope_node( t169 ).
            t177 = t178.
            DATA t179 TYPE string.
            DATA(t180) = CAST zlnt_runtime_opti_4ba3bdccd169( t150 ).
            t179 = t180->value.
            t176 = t177->find_class_definition( i_name = t179 ).
            t172 = t176.
          ENDIF.
          t168 = t172.
          t167 = t168.
          DATA t181 TYPE REF TO zif_lnt_class_definition.
          CLEAR t181.
          DATA t182 TYPE abap_bool.
          DATA(t183) = CAST zif_lnt_class_definition( t167 ).
          t182 = xsdbool( t183 IS BOUND ).
          IF t182 = abap_true.
            DATA t184 TYPE REF TO zif_lnt_class_definition.
            CLEAR t184.
            DATA(t185) = abap_true.
            IF t185 = abap_true.
              DATA t186 TYPE REF TO zif_lnt_class_definition.
              DATA(t187) = CAST zif_lnt_class_definition( t167 ).
              t186 = t187.
              t184 = t186.
            ELSE.
              DATA t188 TYPE REF TO zif_lnt_class_definition.
              CLEAR t188.
              t184 = t188.
            ENDIF.
            t181 = t184.
          ELSE.
            DATA t189 TYPE REF TO zif_lnt_class_definition.
            CLEAR t189.
            DATA t190 TYPE REF TO zcl_lnt_class.
            CLEAR t190.
            DATA t191 TYPE REF TO zcl_lnt_class.
            CLEAR t191.
            DATA t192 TYPE REF TO zif_lnt_object.
            CLEAR t192.
            DATA t193 TYPE REF TO zif_lnt_registry.
            DATA(t194) = CAST zcl_lnt_current_scope( t147 ).
            t193 = t194->reg.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            DATA(t196) = abap_true.
            IF t196 = abap_true.
              DATA(t197) = |CLAS|.
              DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t198->has = abap_true.
              t198->value = t197.
              t195 = t198.
            ELSE.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t199.
              t195 = t199.
            ENDIF.
            DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t200.
            DATA(t201) = abap_true.
            IF t201 = abap_true.
              DATA t202 TYPE string.
              DATA(t203) = CAST zlnt_runtime_opti_4ba3bdccd169( t150 ).
              t202 = t203->value.
              DATA(t204) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t204->has = abap_true.
              t204->value = t202.
              t200 = t204.
            ELSE.
              DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t205.
              t200 = t205.
            ENDIF.
            t192 = t193->get_object( i_type_9913 = t195 i_name = t200 ).
            DATA t206 TYPE REF TO object.
            t206 = t192.
            t191 ?= t206.
            t190 = t191.
            DATA t207 TYPE REF TO zif_lnt_class_definition.
            CLEAR t207.
            DATA t208 TYPE abap_bool.
            DATA(t209) = CAST zcl_lnt_class( t190 ).
            t208 = xsdbool( t209 IS BOUND ).
            IF t208 = abap_true.
              DATA t210 TYPE REF TO zif_lnt_class_definition.
              DATA t211 TYPE REF TO zcl_lnt_class.
              DATA(t212) = CAST zcl_lnt_class( t190 ).
              t211 = t212.
              t210 = t211->gt_dfn_ins_src_obj_cls_ts_clss(  ).
              t207 = t210.
            ELSE.
              DATA t213 TYPE REF TO zif_lnt_class_definition.
              CLEAR t213.
              t207 = t213.
            ENDIF.
            t189 = t207.
            t181 = t189.
          ENDIF.
          t166 = t181.
          t157 = t166.
        ENDIF.
        t146 = t157.
        t137 = t146.
      ENDIF.
      t92 = t137.
    ENDDO.
    DATA t214 TYPE abap_bool.
    DATA(t215) = t5.
    DATA(t216) = CONV int8( 2 ).
    t214 = xsdbool( t215 = t216 ).
    IF t214 = abap_true.
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t217.
      DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t218.
      DATA t219 TYPE REF TO zif_lnt_class_definition.
      CLEAR t219.
      DATA t220 TYPE REF TO zif_lnt_class_definition.
      CLEAR t220.
      DATA t221 TYPE REF TO zcl_lnt_current_scope.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      DATA(t223) = CAST zcl_lnt_syntax_input( t4 ).
      t222 = t223->scope.
      t221 = t222.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA(t226) = abap_true.
      IF t226 = abap_true.
        DATA t227 TYPE string.
        DATA(t228) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
        t227 = t228->value.
        DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t229->has = abap_true.
        t229->value = t227.
        t225 = t229.
      ELSE.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        t225 = t230.
      ENDIF.
      t224 = t225.
      DATA t231 TYPE REF TO zif_lnt_class_definition.
      CLEAR t231.
      DATA(t232) = VALUE abap_bool( ).
      DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t234) = CAST zlnt_runtime_opti_4ba3bdccd169( t224 ).
      t233 = t234.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t235 = t236.
      DATA(t237) = VALUE abap_bool( ).
      DATA(t238) = CAST zlnt_runtime_opti_4ba3bdccd169( t233 ).
      IF t238 IS INITIAL.
        t237 = abap_true.
      ELSEIF t238->has = abap_false.
        t237 = abap_true.
      ENDIF.
      t232 = t237.
      IF t232 = abap_true.
        DATA t239 TYPE REF TO zif_lnt_class_definition.
        CLEAR t239.
        t231 = t239.
      ELSE.
        DATA t240 TYPE REF TO zif_lnt_class_definition.
        CLEAR t240.
        DATA t241 TYPE REF TO zif_lnt_class_definition.
        CLEAR t241.
        DATA t242 TYPE REF TO zif_lnt_class_definition.
        CLEAR t242.
        DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t244 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t245) = CAST zcl_lnt_current_scope( t221 ).
        t244 = t245->current.
        t243 = t244.
        DATA t246 TYPE REF TO zif_lnt_class_definition.
        CLEAR t246.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = CAST zcl_lnt_spaghetti_scope_node( t243 ).
        IF t248 IS INITIAL.
          t247 = abap_true.
        ENDIF.
        IF t247 = abap_true.
          DATA t249 TYPE REF TO zif_lnt_class_definition.
          CLEAR t249.
          t246 = t249.
        ELSE.
          DATA t250 TYPE REF TO zif_lnt_class_definition.
          DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t252) = CAST zcl_lnt_spaghetti_scope_node( t243 ).
          t251 = t252.
          DATA t253 TYPE string.
          DATA(t254) = CAST zlnt_runtime_opti_4ba3bdccd169( t224 ).
          t253 = t254->value.
          t250 = t251->find_class_definition( i_name = t253 ).
          t246 = t250.
        ENDIF.
        t242 = t246.
        t241 = t242.
        DATA t255 TYPE REF TO zif_lnt_class_definition.
        CLEAR t255.
        DATA t256 TYPE abap_bool.
        DATA(t257) = CAST zif_lnt_class_definition( t241 ).
        t256 = xsdbool( t257 IS BOUND ).
        IF t256 = abap_true.
          DATA t258 TYPE REF TO zif_lnt_class_definition.
          CLEAR t258.
          DATA(t259) = abap_true.
          IF t259 = abap_true.
            DATA t260 TYPE REF TO zif_lnt_class_definition.
            DATA(t261) = CAST zif_lnt_class_definition( t241 ).
            t260 = t261.
            t258 = t260.
          ELSE.
            DATA t262 TYPE REF TO zif_lnt_class_definition.
            CLEAR t262.
            t258 = t262.
          ENDIF.
          t255 = t258.
        ELSE.
          DATA t263 TYPE REF TO zif_lnt_class_definition.
          CLEAR t263.
          DATA t264 TYPE REF TO zcl_lnt_class.
          CLEAR t264.
          DATA t265 TYPE REF TO zcl_lnt_class.
          CLEAR t265.
          DATA t266 TYPE REF TO zif_lnt_object.
          CLEAR t266.
          DATA t267 TYPE REF TO zif_lnt_registry.
          DATA(t268) = CAST zcl_lnt_current_scope( t221 ).
          t267 = t268->reg.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t269.
          DATA(t270) = abap_true.
          IF t270 = abap_true.
            DATA(t271) = |CLAS|.
            DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t272->has = abap_true.
            t272->value = t271.
            t269 = t272.
          ELSE.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t273.
            t269 = t273.
          ENDIF.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          DATA(t275) = abap_true.
          IF t275 = abap_true.
            DATA t276 TYPE string.
            DATA(t277) = CAST zlnt_runtime_opti_4ba3bdccd169( t224 ).
            t276 = t277->value.
            DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t278->has = abap_true.
            t278->value = t276.
            t274 = t278.
          ELSE.
            DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t279.
            t274 = t279.
          ENDIF.
          t266 = t267->get_object( i_type_9913 = t269 i_name = t274 ).
          DATA t280 TYPE REF TO object.
          t280 = t266.
          t265 ?= t280.
          t264 = t265.
          DATA t281 TYPE REF TO zif_lnt_class_definition.
          CLEAR t281.
          DATA t282 TYPE abap_bool.
          DATA(t283) = CAST zcl_lnt_class( t264 ).
          t282 = xsdbool( t283 IS BOUND ).
          IF t282 = abap_true.
            DATA t284 TYPE REF TO zif_lnt_class_definition.
            DATA t285 TYPE REF TO zcl_lnt_class.
            DATA(t286) = CAST zcl_lnt_class( t264 ).
            t285 = t286.
            t284 = t285->gt_dfn_ins_src_obj_cls_ts_clss(  ).
            t281 = t284.
          ELSE.
            DATA t287 TYPE REF TO zif_lnt_class_definition.
            CLEAR t287.
            t281 = t287.
          ENDIF.
          t263 = t281.
          t255 = t263.
        ENDIF.
        t240 = t255.
        t231 = t240.
      ENDIF.
      t220 = t231.
      t219 = t220.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t288.
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = CAST zif_lnt_class_definition( t219 ).
      IF t290 IS INITIAL.
        t289 = abap_true.
      ENDIF.
      IF t289 = abap_true.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t291.
        t288 = t291.
      ELSE.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t293 TYPE REF TO zif_lnt_class_definition.
        DATA(t294) = CAST zif_lnt_class_definition( t219 ).
        t293 = t294.
        t292 = t293->get_super_class(  ).
        t288 = t292.
      ENDIF.
      t218 = t288.
      t217 = t218.
      DO.
        DATA(t295) = VALUE abap_bool( ).
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t297) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
        t296 = t297.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t299.
        t298 = t299.
        DATA(t300) = VALUE abap_bool( ).
        DATA(t301) = VALUE abap_bool( ).
        DATA(t302) = CAST zlnt_runtime_opti_4ba3bdccd169( t296 ).
        IF t302 IS INITIAL.
          t301 = abap_true.
        ELSEIF t302->has = abap_false.
          t301 = abap_true.
        ENDIF.
        t300 = xsdbool( t301 = abap_false ).
        t295 = t300.
        IF t295 = abap_false.
          EXIT.
        ENDIF.
        DATA(t303) = VALUE abap_bool( ).
        DATA t304 TYPE string.
        DATA t305 TYPE string.
        DATA(t306) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
        t305 = t306->value.
        DATA(t307) = strlen( t305 ).
        t304 = t305.
        IF t304 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t304 TO UPPER CASE.
        ELSE.
          t304 = zlnt_runtime_uppe_91169605024d=>full( t304 ).
        ENDIF.
        DATA(t308) = t24.
        t303 = xsdbool( t304 = t308 ).
        IF t303 = abap_true.
          DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t309.
          result = t309.
          RETURN.
        ENDIF.
        DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t310.
        DATA t311 TYPE REF TO zif_lnt_class_definition.
        CLEAR t311.
        DATA t312 TYPE REF TO zif_lnt_class_definition.
        CLEAR t312.
        DATA t313 TYPE REF TO zcl_lnt_current_scope.
        DATA t314 TYPE REF TO zcl_lnt_current_scope.
        DATA(t315) = CAST zcl_lnt_syntax_input( t4 ).
        t314 = t315->scope.
        t313 = t314.
        DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t316.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t317.
        DATA(t318) = abap_true.
        IF t318 = abap_true.
          DATA t319 TYPE string.
          DATA(t320) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
          t319 = t320->value.
          DATA(t321) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t321->has = abap_true.
          t321->value = t319.
          t317 = t321.
        ELSE.
          DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t322.
          t317 = t322.
        ENDIF.
        t316 = t317.
        DATA t323 TYPE REF TO zif_lnt_class_definition.
        CLEAR t323.
        DATA(t324) = VALUE abap_bool( ).
        DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t326) = CAST zlnt_runtime_opti_4ba3bdccd169( t316 ).
        t325 = t326.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        t327 = t328.
        DATA(t329) = VALUE abap_bool( ).
        DATA(t330) = CAST zlnt_runtime_opti_4ba3bdccd169( t325 ).
        IF t330 IS INITIAL.
          t329 = abap_true.
        ELSEIF t330->has = abap_false.
          t329 = abap_true.
        ENDIF.
        t324 = t329.
        IF t324 = abap_true.
          DATA t331 TYPE REF TO zif_lnt_class_definition.
          CLEAR t331.
          t323 = t331.
        ELSE.
          DATA t332 TYPE REF TO zif_lnt_class_definition.
          CLEAR t332.
          DATA t333 TYPE REF TO zif_lnt_class_definition.
          CLEAR t333.
          DATA t334 TYPE REF TO zif_lnt_class_definition.
          CLEAR t334.
          DATA t335 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t336 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t337) = CAST zcl_lnt_current_scope( t313 ).
          t336 = t337->current.
          t335 = t336.
          DATA t338 TYPE REF TO zif_lnt_class_definition.
          CLEAR t338.
          DATA(t339) = VALUE abap_bool( ).
          DATA(t340) = CAST zcl_lnt_spaghetti_scope_node( t335 ).
          IF t340 IS INITIAL.
            t339 = abap_true.
          ENDIF.
          IF t339 = abap_true.
            DATA t341 TYPE REF TO zif_lnt_class_definition.
            CLEAR t341.
            t338 = t341.
          ELSE.
            DATA t342 TYPE REF TO zif_lnt_class_definition.
            DATA t343 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t344) = CAST zcl_lnt_spaghetti_scope_node( t335 ).
            t343 = t344.
            DATA t345 TYPE string.
            DATA(t346) = CAST zlnt_runtime_opti_4ba3bdccd169( t316 ).
            t345 = t346->value.
            t342 = t343->find_class_definition( i_name = t345 ).
            t338 = t342.
          ENDIF.
          t334 = t338.
          t333 = t334.
          DATA t347 TYPE REF TO zif_lnt_class_definition.
          CLEAR t347.
          DATA t348 TYPE abap_bool.
          DATA(t349) = CAST zif_lnt_class_definition( t333 ).
          t348 = xsdbool( t349 IS BOUND ).
          IF t348 = abap_true.
            DATA t350 TYPE REF TO zif_lnt_class_definition.
            CLEAR t350.
            DATA(t351) = abap_true.
            IF t351 = abap_true.
              DATA t352 TYPE REF TO zif_lnt_class_definition.
              DATA(t353) = CAST zif_lnt_class_definition( t333 ).
              t352 = t353.
              t350 = t352.
            ELSE.
              DATA t354 TYPE REF TO zif_lnt_class_definition.
              CLEAR t354.
              t350 = t354.
            ENDIF.
            t347 = t350.
          ELSE.
            DATA t355 TYPE REF TO zif_lnt_class_definition.
            CLEAR t355.
            DATA t356 TYPE REF TO zcl_lnt_class.
            CLEAR t356.
            DATA t357 TYPE REF TO zcl_lnt_class.
            CLEAR t357.
            DATA t358 TYPE REF TO zif_lnt_object.
            CLEAR t358.
            DATA t359 TYPE REF TO zif_lnt_registry.
            DATA(t360) = CAST zcl_lnt_current_scope( t313 ).
            t359 = t360->reg.
            DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t361.
            DATA(t362) = abap_true.
            IF t362 = abap_true.
              DATA(t363) = |CLAS|.
              DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t364->has = abap_true.
              t364->value = t363.
              t361 = t364.
            ELSE.
              DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t365.
              t361 = t365.
            ENDIF.
            DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t366.
            DATA(t367) = abap_true.
            IF t367 = abap_true.
              DATA t368 TYPE string.
              DATA(t369) = CAST zlnt_runtime_opti_4ba3bdccd169( t316 ).
              t368 = t369->value.
              DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t370->has = abap_true.
              t370->value = t368.
              t366 = t370.
            ELSE.
              DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t371.
              t366 = t371.
            ENDIF.
            t358 = t359->get_object( i_type_9913 = t361 i_name = t366 ).
            DATA t372 TYPE REF TO object.
            t372 = t358.
            t357 ?= t372.
            t356 = t357.
            DATA t373 TYPE REF TO zif_lnt_class_definition.
            CLEAR t373.
            DATA t374 TYPE abap_bool.
            DATA(t375) = CAST zcl_lnt_class( t356 ).
            t374 = xsdbool( t375 IS BOUND ).
            IF t374 = abap_true.
              DATA t376 TYPE REF TO zif_lnt_class_definition.
              DATA t377 TYPE REF TO zcl_lnt_class.
              DATA(t378) = CAST zcl_lnt_class( t356 ).
              t377 = t378.
              t376 = t377->gt_dfn_ins_src_obj_cls_ts_clss(  ).
              t373 = t376.
            ELSE.
              DATA t379 TYPE REF TO zif_lnt_class_definition.
              CLEAR t379.
              t373 = t379.
            ENDIF.
            t355 = t373.
            t347 = t355.
          ENDIF.
          t332 = t347.
          t323 = t332.
        ENDIF.
        t312 = t323.
        t311 = t312.
        DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t380.
        DATA(t381) = VALUE abap_bool( ).
        DATA(t382) = CAST zif_lnt_class_definition( t311 ).
        IF t382 IS INITIAL.
          t381 = abap_true.
        ENDIF.
        IF t381 = abap_true.
          DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t383.
          t380 = t383.
        ELSE.
          DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t385 TYPE REF TO zif_lnt_class_definition.
          DATA(t386) = CAST zif_lnt_class_definition( t311 ).
          t385 = t386.
          t384 = t385->get_super_class(  ).
          t380 = t384.
        ENDIF.
        t310 = t380.
        t217 = t310.
      ENDDO.
      DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t387.
      DATA(t388) = abap_true.
      IF t388 = abap_true.
        DATA(t389) = |protected|.
        DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t390->has = abap_true.
        t390->value = t389.
        t387 = t390.
      ELSE.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
        t387 = t391.
      ENDIF.
      result = t387.
      RETURN.
    ENDIF.
    DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t392.
    DATA(t393) = abap_true.
    IF t393 = abap_true.
      DATA(t394) = |private|.
      DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t395->has = abap_true.
      t395->value = t394.
      t392 = t395.
    ELSE.
      DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t396.
      t392 = t396.
    ENDIF.
    result = t392.
    
  ENDMETHOD.
  METHOD find_top.
    DATA(t1) = CAST zif_lnt_node( i_first ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO object.
    DATA(t6) = CAST zif_lnt_node( t1 ).
    t5 = t6->get_db65(  ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_class_name ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t9) = CAST zif_lnt_node( t1 ).
      t8 = t9->get_first_token(  ).
      t7 = t8.
      DATA t10 TYPE string.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t13) = CAST zcl_lnt_abstract_token( t7 ).
      t12 = t13.
      DATA t14 TYPE string.
      DATA(t15) = CAST zcl_lnt_abstract_token( t12 ).
      t14 = t15->str.
      t11 = t14.
      t10 = t11.
      DATA t16 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_current_scope.
      DATA t19 TYPE REF TO zcl_lnt_current_scope.
      DATA(t20) = CAST zcl_lnt_syntax_input( t2 ).
      t19 = t20->scope.
      t18 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA(t24) = t10.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = t24.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      t21 = t22.
      DATA t27 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t30) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      t31 = t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t29 ).
      IF t34 IS INITIAL.
        t33 = abap_true.
      ELSEIF t34->has = abap_false.
        t33 = abap_true.
      ENDIF.
      t28 = t33.
      IF t28 = abap_true.
        DATA t35 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t35.
        t27 = t35.
      ELSE.
        DATA t36 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t36.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_class_definition.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA t42 TYPE string.
          DATA(t43) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
          t42 = t43->value.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t42.
          t40 = t44.
        ELSE.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          t40 = t45.
        ENDIF.
        t39 = t40.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        CLEAR t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t49) = CAST zlnt_runtime_opti_4ba3bdccd169( t39 ).
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        t50 = t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
        IF t53 IS INITIAL.
          t52 = abap_true.
        ELSEIF t53->has = abap_false.
          t52 = abap_true.
        ENDIF.
        t47 = t52.
        IF t47 = abap_true.
          DATA t54 TYPE REF TO zif_lnt_class_definition.
          CLEAR t54.
          t46 = t54.
        ELSE.
          DATA t55 TYPE REF TO zif_lnt_class_definition.
          CLEAR t55.
          DATA t56 TYPE REF TO zif_lnt_class_definition.
          CLEAR t56.
          DATA t57 TYPE REF TO zif_lnt_class_definition.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t60) = CAST zcl_lnt_current_scope( t18 ).
          t59 = t60->current.
          t58 = t59.
          DATA t61 TYPE REF TO zif_lnt_class_definition.
          CLEAR t61.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = CAST zcl_lnt_spaghetti_scope_node( t58 ).
          IF t63 IS INITIAL.
            t62 = abap_true.
          ENDIF.
          IF t62 = abap_true.
            DATA t64 TYPE REF TO zif_lnt_class_definition.
            CLEAR t64.
            t61 = t64.
          ELSE.
            DATA t65 TYPE REF TO zif_lnt_class_definition.
            DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t67) = CAST zcl_lnt_spaghetti_scope_node( t58 ).
            t66 = t67.
            DATA t68 TYPE string.
            DATA(t69) = CAST zlnt_runtime_opti_4ba3bdccd169( t39 ).
            t68 = t69->value.
            t65 = t66->find_class_definition( i_name = t68 ).
            t61 = t65.
          ENDIF.
          t57 = t61.
          t56 = t57.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          CLEAR t70.
          DATA t71 TYPE abap_bool.
          DATA(t72) = CAST zif_lnt_class_definition( t56 ).
          t71 = xsdbool( t72 IS BOUND ).
          IF t71 = abap_true.
            DATA t73 TYPE REF TO zif_lnt_class_definition.
            CLEAR t73.
            DATA(t74) = abap_true.
            IF t74 = abap_true.
              DATA t75 TYPE REF TO zif_lnt_class_definition.
              DATA(t76) = CAST zif_lnt_class_definition( t56 ).
              t75 = t76.
              t73 = t75.
            ELSE.
              DATA t77 TYPE REF TO zif_lnt_class_definition.
              CLEAR t77.
              t73 = t77.
            ENDIF.
            t70 = t73.
          ELSE.
            DATA t78 TYPE REF TO zif_lnt_class_definition.
            CLEAR t78.
            DATA t79 TYPE REF TO zcl_lnt_class.
            CLEAR t79.
            DATA t80 TYPE REF TO zcl_lnt_class.
            CLEAR t80.
            DATA t81 TYPE REF TO zif_lnt_object.
            CLEAR t81.
            DATA t82 TYPE REF TO zif_lnt_registry.
            DATA(t83) = CAST zcl_lnt_current_scope( t18 ).
            t82 = t83->reg.
            DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t84.
            DATA(t85) = abap_true.
            IF t85 = abap_true.
              DATA(t86) = |CLAS|.
              DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t87->has = abap_true.
              t87->value = t86.
              t84 = t87.
            ELSE.
              DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t88.
              t84 = t88.
            ENDIF.
            DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t89.
            DATA(t90) = abap_true.
            IF t90 = abap_true.
              DATA t91 TYPE string.
              DATA(t92) = CAST zlnt_runtime_opti_4ba3bdccd169( t39 ).
              t91 = t92->value.
              DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t93->has = abap_true.
              t93->value = t91.
              t89 = t93.
            ELSE.
              DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t94.
              t89 = t94.
            ENDIF.
            t81 = t82->get_object( i_type_9913 = t84 i_name = t89 ).
            DATA t95 TYPE REF TO object.
            t95 = t81.
            t80 ?= t95.
            t79 = t80.
            DATA t96 TYPE REF TO zif_lnt_class_definition.
            CLEAR t96.
            DATA t97 TYPE abap_bool.
            DATA(t98) = CAST zcl_lnt_class( t79 ).
            t97 = xsdbool( t98 IS BOUND ).
            IF t97 = abap_true.
              DATA t99 TYPE REF TO zif_lnt_class_definition.
              DATA t100 TYPE REF TO zcl_lnt_class.
              DATA(t101) = CAST zcl_lnt_class( t79 ).
              t100 = t101.
              t99 = t100->gt_dfn_ins_src_obj_cls_ts_clss(  ).
              t96 = t99.
            ELSE.
              DATA t102 TYPE REF TO zif_lnt_class_definition.
              CLEAR t102.
              t96 = t102.
            ENDIF.
            t78 = t96.
            t70 = t78.
          ENDIF.
          t55 = t70.
          t46 = t55.
        ENDIF.
        t38 = t46.
        t37 = t38.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t103.
        DATA t104 TYPE abap_bool.
        DATA(t105) = CAST zif_lnt_class_definition( t37 ).
        t104 = xsdbool( t105 IS BOUND ).
        IF t104 = abap_true.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          DATA(t108) = CAST zif_lnt_class_definition( t37 ).
          t107 = t108.
          t106 ?= t107.
          t103 = t106.
        ELSE.
          DATA t109 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t109.
          DATA t110 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t110.
          DATA t111 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t111.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA t115 TYPE string.
            DATA(t116) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
            t115 = t116->value.
            DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t117->has = abap_true.
            t117->value = t115.
            t113 = t117.
          ELSE.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t118.
            t113 = t118.
          ENDIF.
          t112 = t113.
          DATA t119 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t119.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t122) = CAST zlnt_runtime_opti_4ba3bdccd169( t112 ).
          t121 = t122.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          t123 = t124.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = CAST zlnt_runtime_opti_4ba3bdccd169( t121 ).
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
            DATA(t133) = CAST zcl_lnt_current_scope( t18 ).
            t132 = t133->current.
            t131 = t132.
            DATA t134 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t134.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = CAST zcl_lnt_spaghetti_scope_node( t131 ).
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
              DATA(t140) = CAST zcl_lnt_spaghetti_scope_node( t131 ).
              t139 = t140.
              DATA t141 TYPE string.
              DATA(t142) = CAST zlnt_runtime_opti_4ba3bdccd169( t112 ).
              t141 = t142->value.
              t138 = t139->find_interface_definition( i_name = t141 ).
              t134 = t138.
            ENDIF.
            t130 = t134.
            t129 = t130.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t143.
            DATA t144 TYPE abap_bool.
            DATA(t145) = CAST zif_lnt_interface_definition( t129 ).
            t144 = xsdbool( t145 IS BOUND ).
            IF t144 = abap_true.
              DATA t146 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t146.
              DATA(t147) = abap_true.
              IF t147 = abap_true.
                DATA t148 TYPE REF TO zif_lnt_interface_definition.
                DATA(t149) = CAST zif_lnt_interface_definition( t129 ).
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
              DATA(t156) = CAST zcl_lnt_current_scope( t18 ).
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
                DATA(t165) = CAST zlnt_runtime_opti_4ba3bdccd169( t112 ).
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
              DATA(t171) = CAST zcl_lnt_ob_interface( t152 ).
              t170 = xsdbool( t171 IS BOUND ).
              IF t170 = abap_true.
                DATA t172 TYPE REF TO zif_lnt_interface_definition.
                DATA t173 TYPE REF TO zcl_lnt_ob_interface.
                DATA t174 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t175) = CAST zcl_lnt_ob_interface( t152 ).
                t174 = t175.
                t173 = t174.
                DATA t176 TYPE REF TO zif_lnt_interface_definition.
                DATA(t177) = CAST zcl_lnt_ob_interface( t173 ).
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
          t111 = t119.
          t110 = t111.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t179.
          DATA t180 TYPE abap_bool.
          DATA(t181) = CAST zif_lnt_interface_definition( t110 ).
          t180 = xsdbool( t181 IS BOUND ).
          IF t180 = abap_true.
            DATA t182 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t182.
            DATA(t183) = abap_true.
            IF t183 = abap_true.
              DATA t184 TYPE REF TO zif_lnt_interface_definition.
              DATA(t185) = CAST zif_lnt_interface_definition( t110 ).
              t184 = t185.
              t182 = t184.
            ELSE.
              DATA t186 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t186.
              t182 = t186.
            ENDIF.
            t179 = t182.
          ELSE.
            DATA t187 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t187.
            t179 = t187.
          ENDIF.
          t109 = t179.
          t103 = t109.
        ENDIF.
        t36 = t103.
        t27 = t36.
      ENDIF.
      t17 = t27.
      t16 = t17.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = VALUE abap_bool( ).
      DATA t190 TYPE REF TO zif_lnt_interface_definition.
      DATA(t191) = CAST zif_lnt_interface_definition( t16 ).
      t190 = t191.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      t192 = t193.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = CAST zif_lnt_interface_definition( t190 ).
      IF t195 IS INITIAL.
        t194 = abap_true.
      ENDIF.
      t189 = t194.
      t188 = t189.
      IF t189 = abap_true.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = VALUE abap_bool( ).
        DATA t198 TYPE REF TO zcl_lnt_ddic.
        DATA t199 TYPE REF TO zcl_lnt_ddic.
        DATA t200 TYPE REF TO zcl_lnt_current_scope.
        DATA t201 TYPE REF TO zcl_lnt_current_scope.
        DATA(t202) = CAST zcl_lnt_syntax_input( t2 ).
        t201 = t202->scope.
        t200 = t201.
        DATA t203 TYPE REF TO zcl_lnt_ddic.
        DATA t204 TYPE REF TO zif_lnt_registry.
        DATA(t205) = CAST zcl_lnt_current_scope( t200 ).
        t204 = t205->reg.
        t203 = NEW zcl_lnt_ddic( i_reg_f149 = t204 ).
        t199 = t203.
        t198 = t199.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        DATA(t208) = abap_true.
        IF t208 = abap_true.
          DATA(t209) = t10.
          DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t210->has = abap_true.
          t210->value = t209.
          t207 = t210.
        ELSE.
          DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t211.
          t207 = t211.
        ENDIF.
        t206 = t207.
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = VALUE abap_bool( ).
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t215) = CAST zlnt_runtime_opti_4ba3bdccd169( t206 ).
        t214 = t215.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        t216 = t217.
        DATA(t218) = VALUE abap_bool( ).
        DATA(t219) = CAST zlnt_runtime_opti_4ba3bdccd169( t214 ).
        IF t219 IS INITIAL.
          t218 = abap_true.
        ELSEIF t219->has = abap_false.
          t218 = abap_true.
        ENDIF.
        t213 = t218.
        IF t213 = abap_true.
          DATA(t220) = abap_true.
          t212 = t220.
        ELSE.
          DATA t221 TYPE abap_bool.
          DATA t222 TYPE REF TO zif_lnt_registry.
          DATA(t223) = CAST zcl_lnt_ddic( t198 ).
          t222 = t223->reg.
          DATA t224 TYPE string.
          DATA(t225) = CAST zlnt_runtime_opti_4ba3bdccd169( t206 ).
          t224 = t225->value.
          t221 = t222->in_error_namespace( i_name = t224 ).
          t212 = t221.
        ENDIF.
        t197 = t212.
        DATA(t226) = abap_false.
        t196 = xsdbool( t197 = t226 ).
        t188 = t196.
      ENDIF.
      IF t188 = abap_true.
        DATA t227 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t227.
        DATA t228 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t228.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        DATA(t230) = abap_true.
        IF t230 = abap_true.
          DATA(t231) = t10.
          DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t232->has = abap_true.
          t232->value = t231.
          t229 = t232.
        ELSE.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          t229 = t233.
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        DATA(t235) = abap_true.
        IF t235 = abap_true.
          DATA(t236) = |Void|.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t236.
          t234 = t237.
        ELSE.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t238.
          t234 = t238.
        ENDIF.
        DATA t239 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t239.
        t228 = NEW zcl_lnt_ireference_extras( i_oo_name = t229 i_oo_type = t234 i_found_qualified = t239 ).
        t227 = t228.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
        t240 = t241->scope.
        DATA t242 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t242.
        DATA(t243) = abap_true.
        IF t243 = abap_true.
          DATA(t244) = CAST zcl_lnt_abstract_token( t7 ).
          t242 = t244.
        ELSE.
          DATA t245 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t245.
          t242 = t245.
        ENDIF.
        DATA t246 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t246.
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t248) = |Object (Void)|.
        CREATE OBJECT t247.
        t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t247->sval = t248.
        DATA t249 TYPE string.
        DATA(t250) = CAST zcl_lnt_syntax_input( t2 ).
        t249 = t250->filename.
        DATA t251 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t251.
        DATA(t252) = abap_true.
        IF t252 = abap_true.
          DATA(t253) = CAST zcl_lnt_ireference_extras( t227 ).
          t251 = t253.
        ELSE.
          DATA t254 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t254.
          t251 = t254.
        ENDIF.
        t240->add_reference( i_usage = t242 i_referencing = t246 i_type_9913 = t247 i_filename = t249 i_extra = t251 ).
        DATA t255 TYPE REF TO zcl_lnt_void_type.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA(t257) = abap_true.
        IF t257 = abap_true.
          DATA(t258) = t10.
          DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t259->has = abap_true.
          t259->value = t258.
          t256 = t259.
        ELSE.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          t256 = t260.
        ENDIF.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        t255 = zcl_lnt_void_type=>get_db65( i_voided = t256 i_qualified_name = t261 ).
        result = t255.
        RETURN.
      ELSE.
        DATA(t262) = VALUE abap_bool( ).
        DATA t263 TYPE REF TO zif_lnt_interface_definition.
        DATA(t264) = CAST zif_lnt_interface_definition( t16 ).
        t263 = t264.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        t265 = t266.
        DATA(t267) = VALUE abap_bool( ).
        DATA(t268) = CAST zif_lnt_interface_definition( t263 ).
        IF t268 IS INITIAL.
          t267 = abap_true.
        ENDIF.
        t262 = t267.
        IF t262 = abap_true.
          DATA t269 TYPE string.
          DATA t270 TYPE string.
          DATA t271 TYPE string.
          DATA(t272) = |Class |.
          DATA(t273) = t10.
          DATA(t274) = strlen( t272 ).
          t271 = |{ t272 }{ t273 }|.
          DATA(t275) = | not found|.
          DATA(t276) = strlen( t271 ).
          t270 = |{ t271 }{ t275 }|.
          t269 = t270.
          DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t278) = CAST zcl_lnt_syntax_input( t2 ).
          t277 = t278->issues.
          DATA t279 TYPE REF TO zcl_lnt_issue.
          DATA(t280) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t281 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t282) = CAST zif_lnt_node( t1 ).
          t281 = t282->get_first_token(  ).
          DATA(t283) = t269.
          DATA t284 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t284.
          t279 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t280 i_token = t281 i_message_26cb = t283 i_fix = t284 ).
          APPEND t279 TO t277->items.
          DATA t285 TYPE REF TO zcl_lnt_void_type.
          CLEAR t285.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA(t287) = abap_true.
          IF t287 = abap_true.
            DATA(t288) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t289->has = abap_true.
            t289->value = t288.
            t286 = t289.
          ELSE.
            DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t290.
            t286 = t290.
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t291.
          t285 = zcl_lnt_void_type=>get_db65( i_voided = t286 i_qualified_name = t291 ).
          result = t285.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t292 TYPE REF TO zcl_lnt_current_scope.
      DATA(t293) = CAST zcl_lnt_syntax_input( t2 ).
      t292 = t293->scope.
      DATA t294 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t294.
      DATA(t295) = abap_true.
      IF t295 = abap_true.
        DATA t296 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t297) = CAST zif_lnt_node( t1 ).
        t296 = t297->get_first_token(  ).
        t294 = t296.
      ELSE.
        DATA t298 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t298.
        t294 = t298.
      ENDIF.
      DATA t299 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t299.
      DATA(t300) = abap_true.
      IF t300 = abap_true.
        DATA t301 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t302 TYPE REF TO zif_lnt_interface_definition.
        DATA(t303) = CAST zif_lnt_interface_definition( t16 ).
        t302 = t303.
        t301 ?= t302.
        t299 = t301.
      ELSE.
        DATA t304 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t304.
        t299 = t304.
      ENDIF.
      DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t306) = |Object|.
      CREATE OBJECT t305.
      t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t305->sval = t306.
      DATA t307 TYPE string.
      DATA(t308) = CAST zcl_lnt_syntax_input( t2 ).
      t307 = t308->filename.
      DATA t309 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t309.
      t292->add_reference( i_usage = t294 i_referencing = t299 i_type_9913 = t305 i_filename = t307 i_extra = t309 ).
      DATA t310 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t311 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t312 TYPE REF TO zif_lnt_interface_definition.
      DATA(t313) = CAST zif_lnt_interface_definition( t16 ).
      t312 = t313.
      t311 ?= t312.
      DATA t314 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t314.
      t310 = NEW zcl_lnt_object_reference_type( i_id = t311 i_extra = t314 ).
      result = t310.
      RETURN.
    ELSE.
      DATA t315 TYPE abap_bool.
      DATA t316 TYPE abap_bool.
      DATA(t317) = CAST zif_lnt_node( t1 ).
      t316 = xsdbool( t317 IS BOUND AND t317 IS INSTANCE OF zcl_lnt_expression_node ).
      t315 = t316.
      IF t316 = abap_true.
        DATA t318 TYPE abap_bool.
        DATA t319 TYPE REF TO zif_lnt_statement_runnable.
        DATA t320 TYPE REF TO zcl_lnt_expression_node.
        DATA(t321) = CAST zif_lnt_node( t1 ).
        DATA t322 TYPE REF TO object.
        t322 = t321.
        t320 ?= t322.
        t319 = t320->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
        t318 = xsdbool( t319 IS BOUND AND t319 IS INSTANCE OF zcl_lnt_st_field_chain ).
        t315 = t318.
      ENDIF.
      IF t315 = abap_true.
        DATA t323 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t323.
        DATA t324 TYPE REF TO zcl_lnt_expression_node.
        DATA(t325) = CAST zif_lnt_node( t1 ).
        DATA t326 TYPE REF TO object.
        t326 = t325.
        t324 ?= t326.
        DATA(t327) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        DATA(t329) = abap_true.
        IF t329 = abap_true.
          DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t331) = |Read From|.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t330->sval = t331.
          t328 = t330.
        ELSE.
          DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t332.
          t328 = t332.
        ENDIF.
        DATA t333 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t333.
        t323 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t324 i_input_967e = t327 i_ref_type = t328 i_allow_generic_deference = t333 ).
        result = t323.
        RETURN.
      ELSE.
        DATA t334 TYPE abap_bool.
        DATA t335 TYPE abap_bool.
        DATA(t336) = CAST zif_lnt_node( t1 ).
        t335 = xsdbool( t336 IS BOUND AND t336 IS INSTANCE OF zcl_lnt_expression_node ).
        t334 = t335.
        IF t335 = abap_true.
          DATA t337 TYPE abap_bool.
          DATA t338 TYPE REF TO zif_lnt_statement_runnable.
          DATA t339 TYPE REF TO zcl_lnt_expression_node.
          DATA(t340) = CAST zif_lnt_node( t1 ).
          DATA t341 TYPE REF TO object.
          t341 = t340.
          t339 ?= t341.
          t338 = t339->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
          t337 = xsdbool( t338 IS BOUND AND t338 IS INSTANCE OF zcl_lnt_st_new_object ).
          t334 = t337.
        ENDIF.
        IF t334 = abap_true.
          DATA t342 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t342.
          DATA(t343) = abap_true.
          IF t343 = abap_true.
            DATA t344 TYPE REF TO zcl_lnt_abstract_type.
            DATA t345 TYPE REF TO zcl_lnt_expression_node.
            DATA(t346) = CAST zif_lnt_node( t1 ).
            DATA t347 TYPE REF TO object.
            t347 = t346.
            t345 ?= t347.
            DATA(t348) = CAST zcl_lnt_syntax_input( t2 ).
            DATA(t349) = CAST zcl_lnt_abstract_type( t3 ).
            t344 = zcl_lnt_sy_new_object=>run_syntax( i_node = t345 i_input_967e = t348 i_target_type = t349 ).
            t342 = t344.
          ELSE.
            DATA t350 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t350.
            t342 = t350.
          ENDIF.
          result = t342.
          RETURN.
        ELSE.
          DATA t351 TYPE abap_bool.
          DATA t352 TYPE abap_bool.
          DATA(t353) = CAST zif_lnt_node( t1 ).
          t352 = xsdbool( t353 IS BOUND AND t353 IS INSTANCE OF zcl_lnt_expression_node ).
          t351 = t352.
          IF t352 = abap_true.
            DATA t354 TYPE abap_bool.
            DATA t355 TYPE REF TO zif_lnt_statement_runnable.
            DATA t356 TYPE REF TO zcl_lnt_expression_node.
            DATA(t357) = CAST zif_lnt_node( t1 ).
            DATA t358 TYPE REF TO object.
            t358 = t357.
            t356 ?= t358.
            t355 = t356->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
            t354 = xsdbool( t355 IS BOUND AND t355 IS INSTANCE OF zcl_lnt_st_cast ).
            t351 = t354.
          ENDIF.
          IF t351 = abap_true.
            DATA t359 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t359.
            DATA(t360) = abap_true.
            IF t360 = abap_true.
              DATA t361 TYPE REF TO zcl_lnt_abstract_type.
              DATA t362 TYPE REF TO zcl_lnt_expression_node.
              DATA(t363) = CAST zif_lnt_node( t1 ).
              DATA t364 TYPE REF TO object.
              t364 = t363.
              t362 ?= t364.
              DATA(t365) = CAST zcl_lnt_syntax_input( t2 ).
              DATA(t366) = CAST zcl_lnt_abstract_type( t3 ).
              t361 = zcl_lnt_sy_cast=>run_syntax( i_node = t362 i_input_967e = t365 i_target_type = t366 ).
              t359 = t361.
            ELSE.
              DATA t367 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t367.
              t359 = t367.
            ENDIF.
            result = t359.
            RETURN.
          ELSE.
            DATA t368 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t368.
            DATA t369 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t369.
            DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t370.
            DATA t371 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t371.
            DATA t372 TYPE REF TO zcl_lnt_current_scope.
            DATA t373 TYPE REF TO zcl_lnt_current_scope.
            DATA(t374) = CAST zcl_lnt_syntax_input( t2 ).
            t373 = t374->scope.
            t372 = t373.
            DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t375.
            DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t376.
            DATA(t377) = abap_true.
            IF t377 = abap_true.
              DATA(t378) = |me|.
              DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t379->has = abap_true.
              t379->value = t378.
              t376 = t379.
            ELSE.
              DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t380.
              t376 = t380.
            ENDIF.
            t375 = t376.
            DATA t381 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t381.
            DATA(t382) = VALUE abap_bool( ).
            DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t384) = CAST zlnt_runtime_opti_4ba3bdccd169( t375 ).
            t383 = t384.
            DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t386.
            t385 = t386.
            DATA(t387) = VALUE abap_bool( ).
            DATA(t388) = CAST zlnt_runtime_opti_4ba3bdccd169( t383 ).
            IF t388 IS INITIAL.
              t387 = abap_true.
            ELSEIF t388->has = abap_false.
              t387 = abap_true.
            ENDIF.
            t382 = t387.
            IF t382 = abap_true.
              DATA t389 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t389.
              t381 = t389.
            ELSE.
              DATA t390 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t390.
              DATA t391 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t391.
              DATA t392 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t392.
              DATA t393 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t394 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t395) = CAST zcl_lnt_current_scope( t372 ).
              t394 = t395->current.
              t393 = t394.
              DATA t396 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t396.
              DATA(t397) = VALUE abap_bool( ).
              DATA(t398) = CAST zcl_lnt_spaghetti_scope_node( t393 ).
              IF t398 IS INITIAL.
                t397 = abap_true.
              ENDIF.
              IF t397 = abap_true.
                DATA t399 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t399.
                t396 = t399.
              ELSE.
                DATA t400 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t401 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t402) = CAST zcl_lnt_spaghetti_scope_node( t393 ).
                t401 = t402.
                DATA t403 TYPE string.
                DATA(t404) = CAST zlnt_runtime_opti_4ba3bdccd169( t375 ).
                t403 = t404->value.
                t400 = t401->find_variable( i_name = t403 ).
                t396 = t400.
              ENDIF.
              t392 = t396.
              t391 = t392.
              DATA t405 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t405.
              DATA t406 TYPE abap_bool.
              DATA(t407) = CAST zcl_lnt_typed_identifier( t391 ).
              t406 = xsdbool( t407 IS BOUND ).
              IF t406 = abap_true.
                DATA t408 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t408.
                DATA(t409) = abap_true.
                IF t409 = abap_true.
                  DATA t410 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t411) = CAST zcl_lnt_typed_identifier( t391 ).
                  t410 = t411.
                  t408 = t410.
                ELSE.
                  DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t412.
                  t408 = t412.
                ENDIF.
                t405 = t408.
              ELSE.
                DATA t413 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t413.
                DATA(t414) = CAST zcl_lnt_current_scope( t372 ).
                DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t415.
                DATA(t416) = abap_true.
                IF t416 = abap_true.
                  DATA t417 TYPE string.
                  DATA(t418) = CAST zlnt_runtime_opti_4ba3bdccd169( t375 ).
                  t417 = t418->value.
                  DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t419->has = abap_true.
                  t419->value = t417.
                  t415 = t419.
                ELSE.
                  DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t420.
                  t415 = t420.
                ENDIF.
                t413 = t414->find_type_pool_constant( i_name = t415 ).
                t405 = t413.
              ENDIF.
              t390 = t405.
              t381 = t390.
            ENDIF.
            t371 = t381.
            t370 = t371.
            DATA t421 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t421.
            DATA(t422) = VALUE abap_bool( ).
            DATA(t423) = CAST zcl_lnt_typed_identifier( t370 ).
            IF t423 IS INITIAL.
              t422 = abap_true.
            ENDIF.
            IF t422 = abap_true.
              DATA t424 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t424.
              t421 = t424.
            ELSE.
              DATA t425 TYPE REF TO zcl_lnt_abstract_type.
              DATA t426 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t427 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t428) = CAST zcl_lnt_typed_identifier( t370 ).
              t427 = t428.
              t426 = t427.
              DATA t429 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t430) = CAST zcl_lnt_typed_identifier( t426 ).
              t429 = t430->type_cba0.
              t425 = t429.
              t421 = t425.
            ENDIF.
            t369 = t421.
            t368 = t369.
            DATA t431 TYPE abap_bool.
            DATA(t432) = CAST zcl_lnt_abstract_type( t368 ).
            t431 = xsdbool( t432 IS BOUND ).
            IF t431 = abap_true.
              DATA t433 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t433.
              DATA(t434) = abap_true.
              IF t434 = abap_true.
                DATA t435 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t436) = CAST zcl_lnt_abstract_type( t368 ).
                t435 = t436.
                t433 = t435.
              ELSE.
                DATA t437 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t437.
                t433 = t437.
              ENDIF.
              result = t433.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t438 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t438.
    result = t438.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d797_7c876f6e1490.
  ENDMETHOD.
ENDCLASS.
