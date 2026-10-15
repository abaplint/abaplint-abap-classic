* TS: src/abap/5_syntax/expressions/method_call_chain.ts:22:1 MethodCallChain
CLASS zcl_lnt_sy_method_call_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS check_visibility IMPORTING i_method TYPE REF TO zif_lnt_method_definition i_def TYPE REF TO zif_lnt_interface_definition i_found_def TYPE REF TO zif_lnt_interface_definition i_input_967e TYPE REF TO zcl_lnt_syntax_input
    RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLASS-METHODS find_top IMPORTING i_first TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t6.
    DATA(t7) = t2.
    t6 = t7->scope.
    t5 = NEW zcl_lnt_object_oriented( i_scope = t6 ).
    t4 = t5.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t11.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = t11.
    t13 = t14->children.
    t10 = t13.
    t9 ?= t10.
    t8 = t9.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA(t17) = t8.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    t17->load( ).
    CLEAR t18.
    READ TABLE t17->items INDEX 1 INTO t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    CLEAR t16.
    IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t19 ?= t18.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t20 = t19->as_ref( ).
      t16 ?= t20.
    ELSE.
      t16 ?= t18.
    ENDIF.
    t15 = t16.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t22.
    DATA(t23) = t15.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA(t28) = VALUE string( ).
      DATA(t29) = |MethodCallChain, first child expected|.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t30.
      DATA(t31) = t2.
      t30 = t31->issues.
      DATA t32 TYPE REF TO zcl_lnt_issue.
      CLEAR t32.
      DATA(t33) = t2.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t34.
      DATA(t35) = t1.
      t34 = t35->get_first_token( ).
      DATA(t36) = t28.
      DATA t37 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t37.
      t32 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t33 i_token = t34 i_message_26cb = t36 i_fix = t37 ).
      t30->load( ).
      APPEND t32 TO t30->items.
      t30->save( ).
      DATA t38 TYPE REF TO zcl_lnt_void_type.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA(t41) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = t41.
        t39 = t42.
      ELSE.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t39 = t43.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t38 = zcl_lnt_void_type=>get_db65( i_voided = t39 i_qualified_name = t44 ).
      result = t38.
      RETURN.
    ENDIF.
    DATA(t45) = VALUE int8( ).
    DATA(t46) = CONV int8( 1 ).
    t45 = t46.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_node.
    CLEAR t49.
    DATA(t50) = t15.
    t49 ?= t50.
    DATA(t51) = t2.
    DATA(t52) = t3.
    t48 = zcl_lnt_sy_method_call_chain=>find_top( i_first = t49 i_input_967e = t51 i_target_type = t52 ).
    t47 = t48.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO object.
    CLEAR t54.
    DATA(t55) = t15.
    t54 = t55->get_db65( ).
    t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_method_call ).
    IF t53 = abap_true.
      DATA(t56) = VALUE int8( ).
      DATA(t57) = VALUE i( ).
      DATA(t58) = VALUE int8( ).
      DATA(t59) = t45.
      DATA(t60) = CONV int8( 1 ).
      t58 = t59 - t60.
      t57 = t58.
      t56 = t57.
      t45 = t56.
    ENDIF.
    DATA t61 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t62.
    t61 = t62.
    DO.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t45.
      DATA(t65) = VALUE int8( ).
      DATA(t66) = VALUE i( ).
      DATA(t67) = t8.
      t67->load( ).
      t66 = lines( t67->items ).
      t65 = t66.
      t63 = xsdbool( t64 <= t65 ).
      IF t63 = abap_false.
        EXIT.
      ENDIF.
      DATA t68 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t68.
      DATA t69 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t69.
      DATA(t70) = t8.
      DATA(t71) = VALUE i( ).
      DATA(t72) = t45.
      t71 = t72.
      t71 = t71 + 1.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      t70->load( ).
      CLEAR t73.
      READ TABLE t70->items INDEX t71 INTO t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      CLEAR t69.
      IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t74 ?= t73.
        DATA t75 TYPE REF TO object.
        CLEAR t75.
        t75 = t74->as_ref( ).
        t69 ?= t75.
      ELSE.
        t69 ?= t73.
      ENDIF.
      t68 = t69.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t77.
      DATA(t78) = t68.
      t77 = t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t79 = t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t77.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      t76 = t81.
      IF t76 = abap_true.
        EXIT.
      ENDIF.
      DATA(t83) = VALUE int8( ).
      DATA(t84) = t45.
      DATA(t85) = CONV int8( 1 ).
      t83 = t84 + t85.
      t45 = t83.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t68.
      t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_expression_node ).
      t86 = t87.
      IF t87 = abap_true.
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t90.
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t91.
        DATA(t92) = t68.
        DATA t93 TYPE REF TO object.
        CLEAR t93.
        t93 = t92.
        t91 ?= t93.
        t90 = t91->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_method_call ).
        t86 = t89.
      ENDIF.
      IF t86 = abap_true.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = t47.
        t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t96 = abap_true.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA(t100) = VALUE string( ).
            DATA t101 TYPE REF TO zcl_lnt_object_reference_type.
            CLEAR t101.
            DATA t102 TYPE REF TO zcl_lnt_object_reference_type.
            CLEAR t102.
            DATA(t103) = t47.
            t102 ?= t103.
            t101 = t102.
            DATA(t104) = VALUE string( ).
            DATA t105 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t105.
            DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t106.
            DATA(t107) = t101.
            t106 = t107->identifier.
            t105 = t106.
            DATA(t108) = VALUE string( ).
            DATA(t109) = VALUE string( ).
            DATA(t110) = VALUE string( ).
            DATA t111 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t111.
            DATA t112 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t112.
            DATA(t113) = t105.
            t112 = t113->token.
            t111 = t112.
            DATA(t114) = VALUE string( ).
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
              DATA(t124) = VALUE string( ).
              DATA(t125) = t109.
              t124 = t125.
              DATA(t126) = VALUE string( ).
              DATA(t127) = t124.
              DATA(t128) = 1.
              DATA(t129) = VALUE i( ).
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
            t100 = t104.
            DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t134->has = abap_true.
            t134->value = t100.
            t98 = t134.
          ELSE.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t135.
            t98 = t135.
          ENDIF.
          t95 = t98.
        ELSE.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          t95 = t136.
        ENDIF.
        t94 = t95.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        DATA t138 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t138.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t140.
        DATA t141 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t141.
        DATA(t142) = t68.
        DATA t143 TYPE REF TO object.
        CLEAR t143.
        t143 = t142.
        t141 ?= t143.
        DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t140 = t141->find_direct_expression( i_type_9913 = t144 ).
        t139 = t140.
        DATA t145 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t145.
        DATA(t146) = VALUE abap_bool( ).
        DATA(t147) = t139.
        IF t147 IS INITIAL.
          t146 = abap_true.
        ENDIF.
        IF t146 = abap_true.
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t148.
          t145 = t148.
        ELSE.
          DATA t149 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t149.
          DATA t150 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t150.
          DATA(t151) = t139.
          t150 = t151.
          t149 = t150->get_first_token( ).
          t145 = t149.
        ENDIF.
        t138 = t145.
        t137 = t138.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA t154 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t154.
        DATA(t155) = t137.
        t154 = t155.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        DATA(t157) = VALUE abap_bool( ).
        DATA(t158) = t154.
        IF t158 IS INITIAL.
          t157 = abap_true.
        ENDIF.
        IF t157 = abap_true.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          t156 = t159.
        ELSE.
          DATA(t160) = VALUE string( ).
          DATA t161 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t161.
          DATA t162 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t162.
          DATA(t163) = t154.
          t162 = t163.
          t161 = t162.
          DATA(t164) = VALUE string( ).
          DATA(t165) = t161.
          t164 = t165->str.
          t160 = t164.
          DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t166->has = abap_true.
          t166->value = t160.
          t156 = t166.
        ENDIF.
        t153 = t156.
        t152 = t153.
        DATA t167 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t167.
        DATA t168 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t168.
        DATA t169 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t170.
        DATA(t171) = t2.
        t170 = t171->scope.
        t169 = t170.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA(t173) = t94.
        t172 = t173.
        DATA t174 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t174.
        DATA(t175) = VALUE abap_bool( ).
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA(t177) = t172.
        t176 = t177.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        t178 = t179.
        DATA(t180) = VALUE abap_bool( ).
        DATA(t181) = t176.
        IF t181 IS INITIAL.
          t180 = abap_true.
        ELSEIF t181->has = abap_false.
          t180 = abap_true.
        ENDIF.
        t175 = t180.
        IF t175 = abap_true.
          DATA t182 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t182.
          t174 = t182.
        ELSE.
          DATA t183 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t183.
          DATA t184 TYPE REF TO zif_lnt_class_definition.
          CLEAR t184.
          DATA t185 TYPE REF TO zif_lnt_class_definition.
          CLEAR t185.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA(t188) = abap_true.
          IF t188 = abap_true.
            DATA(t189) = VALUE string( ).
            DATA(t190) = t172.
            t189 = t190->value.
            DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t191->has = abap_true.
            t191->value = t189.
            t187 = t191.
          ELSE.
            DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t192.
            t187 = t192.
          ENDIF.
          t186 = t187.
          DATA t193 TYPE REF TO zif_lnt_class_definition.
          CLEAR t193.
          DATA(t194) = VALUE abap_bool( ).
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t195.
          DATA(t196) = t186.
          t195 = t196.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
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
            DATA t201 TYPE REF TO zif_lnt_class_definition.
            CLEAR t201.
            t193 = t201.
          ELSE.
            DATA t202 TYPE REF TO zif_lnt_class_definition.
            CLEAR t202.
            DATA t203 TYPE REF TO zif_lnt_class_definition.
            CLEAR t203.
            DATA t204 TYPE REF TO zif_lnt_class_definition.
            CLEAR t204.
            DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t205.
            DATA t206 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t206.
            DATA(t207) = t169.
            t206 = t207->current.
            t205 = t206.
            DATA t208 TYPE REF TO zif_lnt_class_definition.
            CLEAR t208.
            DATA(t209) = VALUE abap_bool( ).
            DATA(t210) = t205.
            IF t210 IS INITIAL.
              t209 = abap_true.
            ENDIF.
            IF t209 = abap_true.
              DATA t211 TYPE REF TO zif_lnt_class_definition.
              CLEAR t211.
              t208 = t211.
            ELSE.
              DATA t212 TYPE REF TO zif_lnt_class_definition.
              CLEAR t212.
              DATA t213 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t213.
              DATA(t214) = t205.
              t213 = t214.
              DATA(t215) = VALUE string( ).
              DATA(t216) = t186.
              t215 = t216->value.
              t212 = t213->find_class_definition( i_name = t215 ).
              t208 = t212.
            ENDIF.
            t204 = t208.
            t203 = t204.
            DATA t217 TYPE REF TO zif_lnt_class_definition.
            CLEAR t217.
            DATA(t218) = VALUE abap_bool( ).
            DATA(t219) = t203.
            t218 = xsdbool( t219 IS BOUND ).
            IF t218 = abap_true.
              DATA t220 TYPE REF TO zif_lnt_class_definition.
              CLEAR t220.
              DATA(t221) = abap_true.
              IF t221 = abap_true.
                DATA t222 TYPE REF TO zif_lnt_class_definition.
                CLEAR t222.
                DATA(t223) = t203.
                t222 = t223.
                t220 = t222.
              ELSE.
                DATA t224 TYPE REF TO zif_lnt_class_definition.
                CLEAR t224.
                t220 = t224.
              ENDIF.
              t217 = t220.
            ELSE.
              DATA t225 TYPE REF TO zif_lnt_class_definition.
              CLEAR t225.
              DATA t226 TYPE REF TO zcl_lnt_class.
              CLEAR t226.
              DATA t227 TYPE REF TO zcl_lnt_class.
              CLEAR t227.
              DATA t228 TYPE REF TO zif_lnt_object.
              CLEAR t228.
              DATA t229 TYPE REF TO zif_lnt_registry.
              CLEAR t229.
              DATA(t230) = t169.
              t229 = t230->reg.
              DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t231.
              DATA(t232) = abap_true.
              IF t232 = abap_true.
                DATA(t233) = |CLAS|.
                DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t234->has = abap_true.
                t234->value = t233.
                t231 = t234.
              ELSE.
                DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t235.
                t231 = t235.
              ENDIF.
              DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t236.
              DATA(t237) = abap_true.
              IF t237 = abap_true.
                DATA(t238) = VALUE string( ).
                DATA(t239) = t186.
                t238 = t239->value.
                DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t240->has = abap_true.
                t240->value = t238.
                t236 = t240.
              ELSE.
                DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t241.
                t236 = t241.
              ENDIF.
              t228 = t229->get_object( i_type_9913 = t231 i_name = t236 ).
              DATA t242 TYPE REF TO object.
              CLEAR t242.
              t242 = t228.
              t227 ?= t242.
              t226 = t227.
              DATA t243 TYPE REF TO zif_lnt_class_definition.
              CLEAR t243.
              DATA(t244) = VALUE abap_bool( ).
              DATA(t245) = t226.
              t244 = xsdbool( t245 IS BOUND ).
              IF t244 = abap_true.
                DATA t246 TYPE REF TO zif_lnt_class_definition.
                CLEAR t246.
                DATA t247 TYPE REF TO zcl_lnt_class.
                CLEAR t247.
                DATA(t248) = t226.
                t247 = t248.
                t246 = t247->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t243 = t246.
              ELSE.
                DATA t249 TYPE REF TO zif_lnt_class_definition.
                CLEAR t249.
                t243 = t249.
              ENDIF.
              t225 = t243.
              t217 = t225.
            ENDIF.
            t202 = t217.
            t193 = t202.
          ENDIF.
          t185 = t193.
          t184 = t185.
          DATA t250 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t250.
          DATA(t251) = VALUE abap_bool( ).
          DATA(t252) = t184.
          t251 = xsdbool( t252 IS BOUND ).
          IF t251 = abap_true.
            DATA t253 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t253.
            DATA t254 TYPE REF TO zif_lnt_class_definition.
            CLEAR t254.
            DATA(t255) = t184.
            t254 = t255.
            t253 ?= t254.
            t250 = t253.
          ELSE.
            DATA t256 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t256.
            DATA t257 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t257.
            DATA t258 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t258.
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t259.
            DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t260.
            DATA(t261) = abap_true.
            IF t261 = abap_true.
              DATA(t262) = VALUE string( ).
              DATA(t263) = t172.
              t262 = t263->value.
              DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t264->has = abap_true.
              t264->value = t262.
              t260 = t264.
            ELSE.
              DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t265.
              t260 = t265.
            ENDIF.
            t259 = t260.
            DATA t266 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t266.
            DATA(t267) = VALUE abap_bool( ).
            DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t268.
            DATA(t269) = t259.
            t268 = t269.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t271.
            t270 = t271.
            DATA(t272) = VALUE abap_bool( ).
            DATA(t273) = t268.
            IF t273 IS INITIAL.
              t272 = abap_true.
            ELSEIF t273->has = abap_false.
              t272 = abap_true.
            ENDIF.
            t267 = t272.
            IF t267 = abap_true.
              DATA t274 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t274.
              t266 = t274.
            ELSE.
              DATA t275 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t275.
              DATA t276 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t276.
              DATA t277 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t277.
              DATA t278 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t278.
              DATA t279 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t279.
              DATA(t280) = t169.
              t279 = t280->current.
              t278 = t279.
              DATA t281 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t281.
              DATA(t282) = VALUE abap_bool( ).
              DATA(t283) = t278.
              IF t283 IS INITIAL.
                t282 = abap_true.
              ENDIF.
              IF t282 = abap_true.
                DATA t284 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t284.
                t281 = t284.
              ELSE.
                DATA t285 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t285.
                DATA t286 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t286.
                DATA(t287) = t278.
                t286 = t287.
                DATA(t288) = VALUE string( ).
                DATA(t289) = t259.
                t288 = t289->value.
                t285 = t286->find_interface_definition( i_name = t288 ).
                t281 = t285.
              ENDIF.
              t277 = t281.
              t276 = t277.
              DATA t290 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t290.
              DATA(t291) = VALUE abap_bool( ).
              DATA(t292) = t276.
              t291 = xsdbool( t292 IS BOUND ).
              IF t291 = abap_true.
                DATA t293 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t293.
                DATA(t294) = abap_true.
                IF t294 = abap_true.
                  DATA t295 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t295.
                  DATA(t296) = t276.
                  t295 = t296.
                  t293 = t295.
                ELSE.
                  DATA t297 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t297.
                  t293 = t297.
                ENDIF.
                t290 = t293.
              ELSE.
                DATA t298 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t298.
                DATA t299 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t299.
                DATA t300 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t300.
                DATA t301 TYPE REF TO zif_lnt_object.
                CLEAR t301.
                DATA t302 TYPE REF TO zif_lnt_registry.
                CLEAR t302.
                DATA(t303) = t169.
                t302 = t303->reg.
                DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t304.
                DATA(t305) = abap_true.
                IF t305 = abap_true.
                  DATA(t306) = |INTF|.
                  DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t307->has = abap_true.
                  t307->value = t306.
                  t304 = t307.
                ELSE.
                  DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t308.
                  t304 = t308.
                ENDIF.
                DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t309.
                DATA(t310) = abap_true.
                IF t310 = abap_true.
                  DATA(t311) = VALUE string( ).
                  DATA(t312) = t259.
                  t311 = t312->value.
                  DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t313->has = abap_true.
                  t313->value = t311.
                  t309 = t313.
                ELSE.
                  DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t314.
                  t309 = t314.
                ENDIF.
                t301 = t302->get_object( i_type_9913 = t304 i_name = t309 ).
                DATA t315 TYPE REF TO object.
                CLEAR t315.
                t315 = t301.
                t300 ?= t315.
                t299 = t300.
                DATA t316 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t316.
                DATA(t317) = VALUE abap_bool( ).
                DATA(t318) = t299.
                t317 = xsdbool( t318 IS BOUND ).
                IF t317 = abap_true.
                  DATA t319 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t319.
                  DATA t320 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t320.
                  DATA t321 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t321.
                  DATA(t322) = t299.
                  t321 = t322.
                  t320 = t321.
                  DATA t323 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t323.
                  DATA(t324) = t320.
                  t323 = t324->def.
                  t319 = t323.
                  t316 = t319.
                ELSE.
                  DATA t325 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t325.
                  t316 = t325.
                ENDIF.
                t298 = t316.
                t290 = t298.
              ENDIF.
              t275 = t290.
              t266 = t275.
            ENDIF.
            t258 = t266.
            t257 = t258.
            DATA t326 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t326.
            DATA(t327) = VALUE abap_bool( ).
            DATA(t328) = t257.
            t327 = xsdbool( t328 IS BOUND ).
            IF t327 = abap_true.
              DATA t329 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t329.
              DATA(t330) = abap_true.
              IF t330 = abap_true.
                DATA t331 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t331.
                DATA(t332) = t257.
                t331 = t332.
                t329 = t331.
              ELSE.
                DATA t333 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t333.
                t329 = t333.
              ENDIF.
              t326 = t329.
            ELSE.
              DATA t334 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t334.
              t326 = t334.
            ENDIF.
            t256 = t326.
            t250 = t256.
          ENDIF.
          t183 = t250.
          t174 = t183.
        ENDIF.
        t168 = t174.
        t167 = t168.
        DATA t335 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t335.
        DATA t336 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t336.
        DATA(t337) = t4.
        DATA(t338) = t167.
        DATA(t339) = t152.
        t336 = t337->search_method_name( i_def = t338 i_name = t339 ).
        t335 = t336.
        DATA t340 TYPE REF TO zif_lnt_method_definition.
        CLEAR t340.
        DATA t341 TYPE REF TO zif_lnt_method_definition.
        CLEAR t341.
        DATA(t342) = t335.
        t341 = t342->method.
        t340 = t341.
        DATA t343 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t343.
        DATA t344 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t344.
        DATA(t345) = t335.
        t344 = t345->def.
        t343 = t344.
        DATA(t346) = VALUE abap_bool( ).
        DATA(t347) = VALUE abap_bool( ).
        DATA t348 TYPE REF TO zif_lnt_method_definition.
        CLEAR t348.
        DATA(t349) = t340.
        t348 = t349.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        t350 = t351.
        DATA(t352) = VALUE abap_bool( ).
        DATA(t353) = t348.
        IF t353 IS INITIAL.
          t352 = abap_true.
        ENDIF.
        t347 = t352.
        t346 = t347.
        IF t347 = abap_true.
          DATA(t354) = VALUE abap_bool( ).
          DATA t355 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t355.
          DATA t356 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t356.
          DATA(t357) = t68.
          DATA t358 TYPE REF TO object.
          CLEAR t358.
          t358 = t357.
          t356 ?= t358.
          t355 ?= t356.
          DATA(t359) = t15.
          DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t360.
          DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t361.
          CLEAR t360.
          IF t355 IS BOUND.
            DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t362.
            DATA t363 TYPE REF TO object.
            CLEAR t363.
            CLEAR t362.
            t363 = t355.
            TRY.
                t360 ?= t363.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t360 IS NOT BOUND.
              TRY.
                  t362 ?= t355.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t362 IS BOUND.
                t360 = t362->source( ).
              ENDIF.
              IF t360 IS NOT BOUND.
                CREATE OBJECT t360.
                t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t360->oval = t355.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t361.
          IF t359 IS BOUND.
            DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t364.
            DATA t365 TYPE REF TO object.
            CLEAR t365.
            CLEAR t364.
            t365 = t359.
            TRY.
                t361 ?= t365.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t361 IS NOT BOUND.
              TRY.
                  t364 ?= t359.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t364 IS BOUND.
                t361 = t364->source( ).
              ENDIF.
              IF t361 IS NOT BOUND.
                CREATE OBJECT t361.
                t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t361->oval = t359.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t360 IS BOUND.
            t354 = t360->strict_equals( t361 ).
          ELSE.
            t354 = xsdbool( t361 IS NOT BOUND ).
          ENDIF.
          t346 = t354.
        ENDIF.
        IF t346 = abap_true.
          DATA t366 TYPE REF TO zif_lnt_method_definition.
          CLEAR t366.
          DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t367.
          DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t368.
          DATA(t369) = t152.
          t368 = t369.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA(t371) = VALUE abap_bool( ).
          DATA(t372) = t368.
          IF t372 IS INITIAL.
            t371 = abap_true.
          ELSEIF t372->has = abap_false.
            t371 = abap_true.
          ENDIF.
          IF t371 = abap_true.
            DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t373.
            t370 = t373.
          ELSE.
            DATA(t374) = VALUE string( ).
            DATA(t375) = VALUE string( ).
            DATA(t376) = t368.
            t375 = t376->value.
            DATA(t377) = strlen( t375 ).
            t374 = t375.
            IF t374 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t374 TO UPPER CASE.
            ELSE.
              t374 = zlnt_runtime_uppe_91169605024d=>full( t374 ).
            ENDIF.
            DATA(t378) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t378->has = abap_true.
            t378->value = t374.
            t370 = t378.
          ENDIF.
          t367 = t370.
          t366 = zcl_lnt_built_in=>search_builtin( i_name = t367 ).
          t340 = t366.
          DATA(t379) = VALUE abap_bool( ).
          DATA(t380) = t340.
          t379 = xsdbool( t380 IS BOUND ).
          IF t379 = abap_true.
            DATA t381 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t381.
            DATA(t382) = t2.
            t381 = t382->scope.
            DATA(t383) = t137.
            DATA t384 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t384.
            DATA(t385) = abap_true.
            IF t385 = abap_true.
              DATA t386 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t386.
              DATA t387 TYPE REF TO zif_lnt_method_definition.
              CLEAR t387.
              DATA(t388) = t340.
              t387 = t388.
              t386 ?= t387.
              t384 = t386.
            ELSE.
              DATA t389 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t389.
              t384 = t389.
            ENDIF.
            DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t390.
            DATA(t391) = |Builtin Method|.
            CLEAR t390.
            CREATE OBJECT t390.
            t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t390->sval = t391.
            DATA(t392) = VALUE string( ).
            DATA(t393) = t2.
            t392 = t393->filename.
            DATA t394 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t394.
            t381->add_reference( i_usage = t383 i_referencing = t384 i_type_9913 = t390 i_filename = t392 i_extra = t394 ).
          ENDIF.
        ELSE.
          DATA(t395) = VALUE abap_bool( ).
          DATA(t396) = VALUE abap_bool( ).
          DATA(t397) = VALUE abap_bool( ).
          DATA(t398) = t61.
          t397 = xsdbool( t398 IS BOUND ).
          t396 = t397.
          IF t397 = abap_true.
            DATA(t399) = VALUE abap_bool( ).
            DATA(t400) = VALUE string( ).
            DATA t401 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t401.
            DATA t402 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t402.
            DATA t403 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t403.
            DATA(t404) = t61.
            t403 = t404.
            t402 = t403->get_first_token( ).
            t401 = t402.
            DATA(t405) = VALUE string( ).
            DATA(t406) = t401.
            t405 = t406->str.
            t400 = t405.
            DATA(t407) = |=>|.
            t399 = xsdbool( t400 = t407 ).
            t396 = t399.
          ENDIF.
          t395 = t396.
          IF t396 = abap_true.
            DATA(t408) = VALUE abap_bool( ).
            DATA t409 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t409.
            DATA t410 TYPE REF TO zif_lnt_method_definition.
            CLEAR t410.
            DATA(t411) = t340.
            t410 = t411.
            DATA t412 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t412.
            DATA(t413) = VALUE abap_bool( ).
            DATA(t414) = t410.
            IF t414 IS INITIAL.
              t413 = abap_true.
            ENDIF.
            IF t413 = abap_true.
              DATA t415 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t415.
              t412 = t415.
            ELSE.
              DATA(t416) = VALUE abap_bool( ).
              DATA t417 TYPE REF TO zif_lnt_method_definition.
              CLEAR t417.
              DATA(t418) = t410.
              t417 = t418.
              t416 = t417->is_static_4685( ).
              DATA(t419) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t419->has = abap_true.
              t419->value = t416.
              t412 = t419.
            ENDIF.
            t409 = t412.
            DATA t420 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t420.
            DATA(t421) = abap_true.
            IF t421 = abap_true.
              DATA(t422) = abap_false.
              DATA(t423) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t423->has = abap_true.
              t423->value = t422.
              t420 = t423.
            ELSE.
              DATA t424 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t424.
              t420 = t424.
            ENDIF.
            DATA(t425) = VALUE abap_bool( ).
            DATA(t426) = VALUE abap_bool( ).
            IF t409 IS BOUND.
              t425 = t409->has.
            ENDIF.
            IF t420 IS BOUND.
              t426 = t420->has.
            ENDIF.
            IF t425 = t426.
              IF t425 = abap_false.
                t408 = abap_true.
              ELSEIF t409->value = t420->value.
                t408 = abap_true.
              ENDIF.
            ENDIF.
            t395 = t408.
          ENDIF.
          IF t395 = abap_true.
            DATA(t427) = VALUE string( ).
            DATA(t428) = VALUE string( ).
            DATA(t429) = VALUE string( ).
            DATA(t430) = |Method "|.
            DATA(t431) = VALUE string( ).
            DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t432.
            DATA(t433) = t152.
            t432 = t433.
            DATA(t434) = VALUE string( ).
            DATA(t435) = VALUE abap_bool( ).
            DATA(t436) = t432.
            IF t436 IS INITIAL.
              t435 = abap_true.
            ELSEIF t436->has = abap_false.
              t435 = abap_true.
            ENDIF.
            IF t435 = abap_true.
              DATA(t437) = |undefined|.
              t434 = t437.
            ELSE.
              DATA(t438) = VALUE string( ).
              DATA(t439) = t432.
              t438 = t439->value.
              t434 = t438.
            ENDIF.
            t431 = t434.
            DATA(t440) = strlen( t430 ).
            t429 = |{ t430 }{ t431 }|.
            DATA(t441) = |" not static|.
            DATA(t442) = strlen( t429 ).
            t428 = |{ t429 }{ t441 }|.
            t427 = t428.
            DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t443.
            DATA(t444) = t2.
            t443 = t444->issues.
            DATA t445 TYPE REF TO zcl_lnt_issue.
            CLEAR t445.
            DATA(t446) = t2.
            DATA t447 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t447.
            DATA(t448) = t137.
            t447 = t448.
            DATA(t449) = t427.
            DATA t450 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t450.
            t445 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t446 i_token = t447 i_message_26cb = t449 i_fix = t450 ).
            t443->load( ).
            APPEND t445 TO t443->items.
            t443->save( ).
            DATA t451 TYPE REF TO zcl_lnt_void_type.
            CLEAR t451.
            DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t452.
            DATA(t453) = abap_true.
            IF t453 = abap_true.
              DATA(t454) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t455->has = abap_true.
              t455->value = t454.
              t452 = t455.
            ELSE.
              DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t456.
              t452 = t456.
            ENDIF.
            DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t457.
            t451 = zcl_lnt_void_type=>get_db65( i_voided = t452 i_qualified_name = t457 ).
            result = t451.
            RETURN.
          ENDIF.
          DATA(t458) = VALUE abap_bool( ).
          DATA(t459) = VALUE abap_bool( ).
          DATA(t460) = VALUE abap_bool( ).
          DATA t461 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t461.
          DATA t462 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t462.
          DATA(t463) = t68.
          DATA t464 TYPE REF TO object.
          CLEAR t464.
          t464 = t463.
          t462 ?= t464.
          t461 ?= t462.
          DATA(t465) = t15.
          DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t466.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t467.
          CLEAR t466.
          IF t461 IS BOUND.
            DATA t468 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t468.
            DATA t469 TYPE REF TO object.
            CLEAR t469.
            CLEAR t468.
            t469 = t461.
            TRY.
                t466 ?= t469.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t466 IS NOT BOUND.
              TRY.
                  t468 ?= t461.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t468 IS BOUND.
                t466 = t468->source( ).
              ENDIF.
              IF t466 IS NOT BOUND.
                CREATE OBJECT t466.
                t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t466->oval = t461.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t467.
          IF t465 IS BOUND.
            DATA t470 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t470.
            DATA t471 TYPE REF TO object.
            CLEAR t471.
            CLEAR t470.
            t471 = t465.
            TRY.
                t467 ?= t471.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t467 IS NOT BOUND.
              TRY.
                  t470 ?= t465.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t470 IS BOUND.
                t467 = t470->source( ).
              ENDIF.
              IF t467 IS NOT BOUND.
                CREATE OBJECT t467.
                t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t467->oval = t465.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t466 IS BOUND.
            t460 = t466->strict_equals( t467 ).
          ELSE.
            t460 = xsdbool( t467 IS NOT BOUND ).
          ENDIF.
          t459 = t460.
          IF t460 = abap_true.
            DATA(t472) = VALUE abap_bool( ).
            DATA t473 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t473.
            DATA t474 TYPE REF TO zif_lnt_method_definition.
            CLEAR t474.
            DATA(t475) = t340.
            t474 = t475.
            DATA t476 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t476.
            DATA(t477) = VALUE abap_bool( ).
            DATA(t478) = t474.
            IF t478 IS INITIAL.
              t477 = abap_true.
            ENDIF.
            IF t477 = abap_true.
              DATA t479 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t479.
              t476 = t479.
            ELSE.
              DATA(t480) = VALUE abap_bool( ).
              DATA t481 TYPE REF TO zif_lnt_method_definition.
              CLEAR t481.
              DATA(t482) = t474.
              t481 = t482.
              t480 = t481->is_static_4685( ).
              DATA(t483) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t483->has = abap_true.
              t483->value = t480.
              t476 = t483.
            ENDIF.
            t473 = t476.
            DATA t484 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t484.
            DATA(t485) = abap_true.
            IF t485 = abap_true.
              DATA(t486) = abap_false.
              DATA(t487) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t487->has = abap_true.
              t487->value = t486.
              t484 = t487.
            ELSE.
              DATA t488 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t488.
              t484 = t488.
            ENDIF.
            DATA(t489) = VALUE abap_bool( ).
            DATA(t490) = VALUE abap_bool( ).
            IF t473 IS BOUND.
              t489 = t473->has.
            ENDIF.
            IF t484 IS BOUND.
              t490 = t484->has.
            ENDIF.
            IF t489 = t490.
              IF t489 = abap_false.
                t472 = abap_true.
              ELSEIF t473->value = t484->value.
                t472 = abap_true.
              ENDIF.
            ENDIF.
            t459 = t472.
          ENDIF.
          t458 = t459.
          IF t459 = abap_true.
            DATA(t491) = VALUE abap_bool( ).
            DATA(t492) = VALUE abap_bool( ).
            DATA t493 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t493.
            DATA(t494) = t2.
            t493 = t494->scope.
            t492 = t493->is_in_static_method( ).
            DATA(t495) = abap_true.
            t491 = xsdbool( t492 = t495 ).
            t458 = t491.
          ENDIF.
          IF t458 = abap_true.
            DATA(t496) = VALUE string( ).
            DATA(t497) = VALUE string( ).
            DATA(t498) = VALUE string( ).
            DATA(t499) = |Method "|.
            DATA(t500) = VALUE string( ).
            DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t501.
            DATA(t502) = t152.
            t501 = t502.
            DATA(t503) = VALUE string( ).
            DATA(t504) = VALUE abap_bool( ).
            DATA(t505) = t501.
            IF t505 IS INITIAL.
              t504 = abap_true.
            ELSEIF t505->has = abap_false.
              t504 = abap_true.
            ENDIF.
            IF t504 = abap_true.
              DATA(t506) = |undefined|.
              t503 = t506.
            ELSE.
              DATA(t507) = VALUE string( ).
              DATA(t508) = t501.
              t507 = t508->value.
              t503 = t507.
            ENDIF.
            t500 = t503.
            DATA(t509) = strlen( t499 ).
            t498 = |{ t499 }{ t500 }|.
            DATA(t510) = |" not static|.
            DATA(t511) = strlen( t498 ).
            t497 = |{ t498 }{ t510 }|.
            t496 = t497.
            DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t512.
            DATA(t513) = t2.
            t512 = t513->issues.
            DATA t514 TYPE REF TO zcl_lnt_issue.
            CLEAR t514.
            DATA(t515) = t2.
            DATA t516 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t516.
            DATA(t517) = t137.
            t516 = t517.
            DATA(t518) = t496.
            DATA t519 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t519.
            t514 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t515 i_token = t516 i_message_26cb = t518 i_fix = t519 ).
            t512->load( ).
            APPEND t514 TO t512->items.
            t512->save( ).
            DATA t520 TYPE REF TO zcl_lnt_void_type.
            CLEAR t520.
            DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t521.
            DATA(t522) = abap_true.
            IF t522 = abap_true.
              DATA(t523) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t524) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t524->has = abap_true.
              t524->value = t523.
              t521 = t524.
            ELSE.
              DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t525.
              t521 = t525.
            ENDIF.
            DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t526.
            t520 = zcl_lnt_void_type=>get_db65( i_voided = t521 i_qualified_name = t526 ).
            result = t520.
            RETURN.
          ENDIF.
          DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t527.
          DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t528.
          DATA(t529) = VALUE abap_bool( ).
          DATA(t530) = t340.
          t529 = xsdbool( t530 IS BOUND ).
          IF t529 = abap_true.
            DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t531.
            DATA t532 TYPE REF TO zif_lnt_method_definition.
            CLEAR t532.
            DATA(t533) = t340.
            t532 = t533.
            DATA(t534) = t167.
            DATA(t535) = t343.
            DATA(t536) = t2.
            t531 = zcl_lnt_sy_method_call_chain=>check_visibility( i_method = t532 i_def = t534 i_found_def = t535 i_input_967e = t536 ).
            t528 = t531.
          ELSE.
            DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t537.
            t528 = t537.
          ENDIF.
          t527 = t528.
          DATA(t538) = VALUE abap_bool( ).
          DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t539.
          DATA(t540) = t527.
          t539 = t540.
          DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t541.
          DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t542.
          t541 = t542.
          DATA(t543) = VALUE abap_bool( ).
          DATA(t544) = VALUE abap_bool( ).
          DATA(t545) = t539.
          IF t545 IS INITIAL.
            t544 = abap_true.
          ELSEIF t545->has = abap_false.
            t544 = abap_true.
          ENDIF.
          t543 = xsdbool( t544 = abap_false ).
          t538 = t543.
          IF t538 = abap_true.
            DATA(t546) = VALUE string( ).
            DATA(t547) = VALUE string( ).
            DATA(t548) = VALUE string( ).
            DATA(t549) = VALUE string( ).
            DATA(t550) = VALUE string( ).
            DATA(t551) = |Method "|.
            DATA(t552) = VALUE string( ).
            DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t553.
            DATA(t554) = t152.
            t553 = t554.
            DATA(t555) = VALUE string( ).
            DATA(t556) = VALUE abap_bool( ).
            DATA(t557) = t553.
            IF t557 IS INITIAL.
              t556 = abap_true.
            ELSEIF t557->has = abap_false.
              t556 = abap_true.
            ENDIF.
            IF t556 = abap_true.
              DATA(t558) = |undefined|.
              t555 = t558.
            ELSE.
              DATA(t559) = VALUE string( ).
              DATA(t560) = t553.
              t559 = t560->value.
              t555 = t559.
            ENDIF.
            t552 = t555.
            DATA(t561) = strlen( t551 ).
            t550 = |{ t551 }{ t552 }|.
            DATA(t562) = |" is |.
            DATA(t563) = strlen( t550 ).
            t549 = |{ t550 }{ t562 }|.
            DATA(t564) = VALUE string( ).
            DATA(t565) = t527.
            t564 = t565->value.
            DATA(t566) = strlen( t549 ).
            t548 = |{ t549 }{ t564 }|.
            DATA(t567) = | and cannot be accessed|.
            DATA(t568) = strlen( t548 ).
            t547 = |{ t548 }{ t567 }|.
            t546 = t547.
            DATA t569 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t569.
            DATA(t570) = t2.
            t569 = t570->issues.
            DATA t571 TYPE REF TO zcl_lnt_issue.
            CLEAR t571.
            DATA(t572) = t2.
            DATA t573 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t573.
            DATA(t574) = t137.
            t573 = t574.
            DATA(t575) = t546.
            DATA t576 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t576.
            t571 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t572 i_token = t573 i_message_26cb = t575 i_fix = t576 ).
            t569->load( ).
            APPEND t571 TO t569->items.
            t569->save( ).
            DATA t577 TYPE REF TO zcl_lnt_void_type.
            CLEAR t577.
            DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t578.
            DATA(t579) = abap_true.
            IF t579 = abap_true.
              DATA(t580) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t581) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t581->has = abap_true.
              t581->value = t580.
              t578 = t581.
            ELSE.
              DATA t582 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t582.
              t578 = t582.
            ENDIF.
            DATA t583 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t583.
            t577 = zcl_lnt_void_type=>get_db65( i_voided = t578 i_qualified_name = t583 ).
            result = t577.
            RETURN.
          ENDIF.
          DATA t584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t584.
          DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t585.
          DATA(t586) = VALUE abap_bool( ).
          DATA(t587) = t47.
          t586 = xsdbool( t587 IS BOUND AND t587 IS INSTANCE OF zcl_lnt_void_type ).
          IF t586 = abap_true.
            DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t588.
            DATA t589 TYPE REF TO zcl_lnt_void_type.
            CLEAR t589.
            DATA t590 TYPE REF TO zcl_lnt_void_type.
            CLEAR t590.
            DATA(t591) = t47.
            t590 ?= t591.
            t589 = t590.
            DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t592.
            DATA(t593) = t589.
            t592 = t593->voided.
            t588 = t592.
            t585 = t588.
          ELSE.
            DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t594.
            t585 = t594.
          ENDIF.
          t584 = t585.
          DATA t595 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t595.
          DATA t596 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t596.
          DATA t597 TYPE REF TO zcl_lnt_object_oriented.
          CLEAR t597.
          DATA(t598) = t4.
          t597 = t598.
          DATA t599 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t599.
          DATA(t600) = t343.
          t599 = t600.
          DATA t601 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t601.
          DATA t602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t602.
          DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t603.
          DATA(t604) = t94.
          t603 = t604.
          DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t605.
          DATA(t606) = VALUE abap_bool( ).
          DATA(t607) = t603.
          IF t607 IS BOUND.
            IF t607->has = abap_true.
              t606 = xsdbool( strlen( t607->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t606 = abap_true.
            DATA(t608) = t603.
            t605 = t608.
          ELSE.
            DATA(t609) = t584.
            t605 = t609.
          ENDIF.
          t602 = t605.
          t601 = t602.
          DATA t610 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t610.
          DATA(t611) = VALUE abap_bool( ).
          DATA t612 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t612.
          DATA(t613) = t599.
          t612 = t613.
          DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t614.
          DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t615.
          t614 = t615.
          DATA(t616) = VALUE abap_bool( ).
          DATA(t617) = t612.
          IF t617 IS INITIAL.
            t616 = abap_true.
          ENDIF.
          t611 = t616.
          IF t611 = abap_true.
            DATA t618 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t618.
            DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t619.
            DATA(t620) = t601.
            t619 = t620.
            DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t621.
            DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t622.
            t621 = t622.
            DATA t623 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t623.
            DATA t624 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t624.
            t623 = t624.
            t618 = NEW zcl_lnt_ireference_extras( i_oo_name = t619 i_oo_type = t621 i_found_qualified = t623 ).
            CREATE OBJECT t618->zlnt_view_ownkeys_b0e8086400eb.
            t618->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t625.
            IF t618->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t618->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t625 ).
            ENDIF.
            DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t626.
            IF t618->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t618->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t626 ).
            ENDIF.
            CREATE OBJECT t618->zlnt_json_ownkeys_70e5fd461788.
            t618->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t627) = |ooName|.
            DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t628.
            IF t618->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t618->zlnt_json_ownkeys_70e5fd461788->put( p0 = t627 p1 = t628 ).
            ENDIF.
            DATA(t629) = |ooType|.
            DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t630.
            IF t618->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t618->zlnt_json_ownkeys_70e5fd461788->put( p0 = t629 p1 = t630 ).
            ENDIF.
            t610 = t618.
          ELSE.
            DATA t631 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t631.
            DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t632.
            DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t633.
            DATA t634 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t634.
            DATA t635 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t635.
            DATA(t636) = t599.
            t635 = t636.
            t634 = t635.
            DATA t637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t637.
            DATA(t638) = VALUE abap_bool( ).
            DATA(t639) = t634.
            IF t639 IS INITIAL.
              t638 = abap_true.
            ENDIF.
            IF t638 = abap_true.
              DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t640.
              t637 = t640.
            ELSE.
              DATA(t641) = VALUE string( ).
              DATA(t642) = t634.
              t641 = t642->get_name( ).
              DATA(t643) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t643->has = abap_true.
              t643->value = t641.
              t637 = t643.
            ENDIF.
            t633 = t637.
            t632 = t633.
            DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t644.
            DATA t645 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t645.
            DATA(t646) = abap_true.
            IF t646 = abap_true.
              DATA(t647) = VALUE string( ).
              DATA(t648) = VALUE abap_bool( ).
              DATA(t649) = t599.
              t648 = xsdbool( t649 IS BOUND AND t649 IS INSTANCE OF zcl_lnt_ty_class_definition ).
              IF t648 = abap_true.
                DATA(t650) = |CLAS|.
                t647 = t650.
              ELSE.
                DATA(t651) = |INTF|.
                t647 = t651.
              ENDIF.
              DATA(t652) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t652->has = abap_true.
              t652->value = t647.
              t645 = t652.
            ELSE.
              DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t653.
              t645 = t653.
            ENDIF.
            t644 = t645.
            DATA t654 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t654.
            DATA t655 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t655.
            t654 = t655.
            t631 = NEW zcl_lnt_ireference_extras( i_oo_name = t632 i_oo_type = t644 i_found_qualified = t654 ).
            CREATE OBJECT t631->zlnt_view_ownkeys_b0e8086400eb.
            t631->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t656.
            IF t631->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t631->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t656 ).
            ENDIF.
            DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t657.
            IF t631->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t631->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t657 ).
            ENDIF.
            CREATE OBJECT t631->zlnt_json_ownkeys_70e5fd461788.
            t631->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t658) = |ooName|.
            DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t659.
            IF t631->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t631->zlnt_json_ownkeys_70e5fd461788->put( p0 = t658 p1 = t659 ).
            ENDIF.
            DATA(t660) = |ooType|.
            DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t661.
            IF t631->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t631->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
            ENDIF.
            t610 = t631.
          ENDIF.
          t596 = t610.
          t595 = t596.
          DATA t662 TYPE REF TO zif_lnt_method_definition.
          CLEAR t662.
          DATA(t663) = t340.
          t662 = t663.
          DATA t664 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t664.
          DATA(t665) = t2.
          t664 = t665->scope.
          DATA(t666) = t137.
          DATA t667 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t667.
          DATA(t668) = VALUE abap_bool( ).
          DATA(t669) = t662.
          IF t669 IS INITIAL.
            t668 = abap_true.
          ENDIF.
          IF t668 = abap_true.
            DATA t670 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t670.
            t667 = t670.
          ELSE.
            DATA t671 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t671.
            DATA t672 TYPE REF TO zif_lnt_method_definition.
            CLEAR t672.
            DATA(t673) = t662.
            t672 = t673.
            t671 ?= t672.
            t667 = t671.
          ENDIF.
          DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t674.
          DATA(t675) = |Method|.
          CLEAR t674.
          CREATE OBJECT t674.
          t674->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t674->sval = t675.
          DATA(t676) = VALUE string( ).
          DATA(t677) = t2.
          t676 = t677->filename.
          DATA t678 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t678.
          DATA(t679) = abap_true.
          IF t679 = abap_true.
            DATA(t680) = t595.
            t678 = t680.
          ELSE.
            DATA t681 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t681.
            t678 = t681.
          ENDIF.
          t664->add_reference( i_usage = t666 i_referencing = t667 i_type_9913 = t674 i_filename = t676 i_extra = t678 ).
        ENDIF.
        DATA(t682) = VALUE abap_bool( ).
        DATA t683 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t683.
        DATA t684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t684.
        DATA(t685) = t152.
        t684 = t685.
        DATA t686 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t686.
        DATA(t687) = VALUE abap_bool( ).
        DATA(t688) = t684.
        IF t688 IS INITIAL.
          t687 = abap_true.
        ELSEIF t688->has = abap_false.
          t687 = abap_true.
        ENDIF.
        IF t687 = abap_true.
          DATA t689 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t689.
          t686 = t689.
        ELSE.
          DATA(t690) = VALUE abap_bool( ).
          DATA(t691) = VALUE i( ).
          DATA(t692) = VALUE string( ).
          DATA(t693) = t684.
          t692 = t693->value.
          DATA(t694) = |~|.
          DATA(t695) = strlen( t692 ).
          IF t694 IS INITIAL.
            t691 = 0.
          ELSE.
            FIND t694 IN t692 MATCH OFFSET t691.
            IF sy-subrc <> 0.
              t691 = -1.
            ENDIF.
          ENDIF.
          DATA(t696) = 0.
          t690 = xsdbool( t691 >= t696 ).
          DATA(t697) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t697->has = abap_true.
          t697->value = t690.
          t686 = t697.
        ENDIF.
        t683 = t686.
        IF t683 IS BOUND.
          IF t683->has = abap_true.
            t682 = xsdbool( t683->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t682 = abap_true.
          DATA(t698) = VALUE string( ).
          DATA(t699) = VALUE string( ).
          DATA t700 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t700.
          DATA(t701) = VALUE string( ).
          DATA(t702) = t152.
          t701 = t702->value.
          DATA(t703) = |~|.
          DATA(t704) = strlen( t701 ).
          DATA(t705) = VALUE i( ).
          DATA(t706) = VALUE i( ).
          DATA(t707) = VALUE i( ).
          DATA(t708) = VALUE i( ).
          DATA(t709) = VALUE string( ).
          CREATE OBJECT t700.
          t708 = strlen( t703 ).
          t705 = 0.
          IF t708 = 0.
            WHILE t705 < t704.
              t709 = t701+t705(1).
              APPEND t709 TO t700->items.
              t705 = t705 + 1.
            ENDWHILE.
          ELSE.
            WHILE t705 <= t704.
              FIND FIRST OCCURRENCE OF t703 IN SECTION OFFSET t705 OF t701 MATCH OFFSET t706.
              IF sy-subrc = 0.
                t707 = t706 - t705.
              ELSE.
                t706 = -1.
                t707 = t704 - t705.
              ENDIF.
              CLEAR t709.
              IF t707 > 0.
                t709 = t701+t705(t707).
              ENDIF.
              APPEND t709 TO t700->items.
              IF t706 < 0.
                EXIT.
              ENDIF.
              t705 = t706 + t708.
            ENDWHILE.
          ENDIF.
          IF t700->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t700->load( ).
          CLEAR t699.
          READ TABLE t700->items INDEX 1 INTO t699.
          t698 = t699.
          DATA t710 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t710.
          DATA t711 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t711.
          DATA t712 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t712.
          DATA t713 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t713.
          DATA(t714) = t2.
          t713 = t714->scope.
          t712 = t713.
          DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t715.
          DATA t716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t716.
          DATA(t717) = abap_true.
          IF t717 = abap_true.
            DATA(t718) = t698.
            DATA(t719) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t719->has = abap_true.
            t719->value = t718.
            t716 = t719.
          ELSE.
            DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t720.
            t716 = t720.
          ENDIF.
          t715 = t716.
          DATA t721 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t721.
          DATA(t722) = VALUE abap_bool( ).
          DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t723.
          DATA(t724) = t715.
          t723 = t724.
          DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t725.
          DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t726.
          t725 = t726.
          DATA(t727) = VALUE abap_bool( ).
          DATA(t728) = t723.
          IF t728 IS INITIAL.
            t727 = abap_true.
          ELSEIF t728->has = abap_false.
            t727 = abap_true.
          ENDIF.
          t722 = t727.
          IF t722 = abap_true.
            DATA t729 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t729.
            t721 = t729.
          ELSE.
            DATA t730 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t730.
            DATA t731 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t731.
            DATA t732 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t732.
            DATA t733 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t733.
            DATA t734 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t734.
            DATA(t735) = t712.
            t734 = t735->current.
            t733 = t734.
            DATA t736 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t736.
            DATA(t737) = VALUE abap_bool( ).
            DATA(t738) = t733.
            IF t738 IS INITIAL.
              t737 = abap_true.
            ENDIF.
            IF t737 = abap_true.
              DATA t739 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t739.
              t736 = t739.
            ELSE.
              DATA t740 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t740.
              DATA t741 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t741.
              DATA(t742) = t733.
              t741 = t742.
              DATA(t743) = VALUE string( ).
              DATA(t744) = t715.
              t743 = t744->value.
              t740 = t741->find_interface_definition( i_name = t743 ).
              t736 = t740.
            ENDIF.
            t732 = t736.
            t731 = t732.
            DATA t745 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t745.
            DATA(t746) = VALUE abap_bool( ).
            DATA(t747) = t731.
            t746 = xsdbool( t747 IS BOUND ).
            IF t746 = abap_true.
              DATA t748 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t748.
              DATA(t749) = abap_true.
              IF t749 = abap_true.
                DATA t750 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t750.
                DATA(t751) = t731.
                t750 = t751.
                t748 = t750.
              ELSE.
                DATA t752 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t752.
                t748 = t752.
              ENDIF.
              t745 = t748.
            ELSE.
              DATA t753 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t753.
              DATA t754 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t754.
              DATA t755 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t755.
              DATA t756 TYPE REF TO zif_lnt_object.
              CLEAR t756.
              DATA t757 TYPE REF TO zif_lnt_registry.
              CLEAR t757.
              DATA(t758) = t712.
              t757 = t758->reg.
              DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t759.
              DATA(t760) = abap_true.
              IF t760 = abap_true.
                DATA(t761) = |INTF|.
                DATA(t762) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t762->has = abap_true.
                t762->value = t761.
                t759 = t762.
              ELSE.
                DATA t763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t763.
                t759 = t763.
              ENDIF.
              DATA t764 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t764.
              DATA(t765) = abap_true.
              IF t765 = abap_true.
                DATA(t766) = VALUE string( ).
                DATA(t767) = t715.
                t766 = t767->value.
                DATA(t768) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t768->has = abap_true.
                t768->value = t766.
                t764 = t768.
              ELSE.
                DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t769.
                t764 = t769.
              ENDIF.
              t756 = t757->get_object( i_type_9913 = t759 i_name = t764 ).
              DATA t770 TYPE REF TO object.
              CLEAR t770.
              t770 = t756.
              t755 ?= t770.
              t754 = t755.
              DATA t771 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t771.
              DATA(t772) = VALUE abap_bool( ).
              DATA(t773) = t754.
              t772 = xsdbool( t773 IS BOUND ).
              IF t772 = abap_true.
                DATA t774 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t774.
                DATA t775 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t775.
                DATA t776 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t776.
                DATA(t777) = t754.
                t776 = t777.
                t775 = t776.
                DATA t778 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t778.
                DATA(t779) = t775.
                t778 = t779->def.
                t774 = t778.
                t771 = t774.
              ELSE.
                DATA t780 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t780.
                t771 = t780.
              ENDIF.
              t753 = t771.
              t745 = t753.
            ENDIF.
            t730 = t745.
            t721 = t730.
          ENDIF.
          t711 = t721.
          t710 = t711.
          DATA(t781) = VALUE abap_bool( ).
          DATA(t782) = t710.
          t781 = xsdbool( t782 IS BOUND ).
          IF t781 = abap_true.
            DATA t783 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t783.
            DATA(t784) = t2.
            t783 = t784->scope.
            DATA(t785) = t137.
            DATA t786 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t786.
            DATA(t787) = abap_true.
            IF t787 = abap_true.
              DATA t788 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t788.
              DATA t789 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t789.
              DATA(t790) = t710.
              t789 = t790.
              t788 ?= t789.
              t786 = t788.
            ELSE.
              DATA t791 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t791.
              t786 = t791.
            ENDIF.
            DATA t792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t792.
            DATA(t793) = |Object|.
            CLEAR t792.
            CREATE OBJECT t792.
            t792->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t792->sval = t793.
            DATA(t794) = VALUE string( ).
            DATA(t795) = t2.
            t794 = t795->filename.
            DATA t796 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t796.
            t783->add_reference( i_usage = t785 i_referencing = t786 i_type_9913 = t792 i_filename = t794 i_extra = t796 ).
          ENDIF.
        ENDIF.
        DATA(t797) = VALUE abap_bool( ).
        DATA(t798) = VALUE abap_bool( ).
        DATA t799 TYPE REF TO zif_lnt_method_definition.
        CLEAR t799.
        DATA(t800) = t340.
        t799 = t800.
        DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t801.
        DATA t802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t802.
        t801 = t802.
        DATA(t803) = VALUE abap_bool( ).
        DATA(t804) = t799.
        IF t804 IS INITIAL.
          t803 = abap_true.
        ENDIF.
        t798 = t803.
        t797 = t798.
        IF t798 = abap_true.
          DATA(t805) = VALUE abap_bool( ).
          DATA t806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t806.
          DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t807.
          DATA(t808) = t152.
          t807 = t808.
          DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t809.
          DATA(t810) = VALUE abap_bool( ).
          DATA(t811) = t807.
          IF t811 IS INITIAL.
            t810 = abap_true.
          ELSEIF t811->has = abap_false.
            t810 = abap_true.
          ENDIF.
          IF t810 = abap_true.
            DATA t812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t812.
            t809 = t812.
          ELSE.
            DATA(t813) = VALUE string( ).
            DATA(t814) = VALUE string( ).
            DATA(t815) = t807.
            t814 = t815->value.
            DATA(t816) = strlen( t814 ).
            t813 = t814.
            IF t813 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t813 TO UPPER CASE.
            ELSE.
              t813 = zlnt_runtime_uppe_91169605024d=>full( t813 ).
            ENDIF.
            DATA(t817) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t817->has = abap_true.
            t817->value = t813.
            t809 = t817.
          ENDIF.
          t806 = t809.
          DATA t818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t818.
          DATA(t819) = abap_true.
          IF t819 = abap_true.
            DATA(t820) = |CONSTRUCTOR|.
            DATA(t821) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t821->has = abap_true.
            t821->value = t820.
            t818 = t821.
          ELSE.
            DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t822.
            t818 = t822.
          ENDIF.
          DATA(t823) = VALUE abap_bool( ).
          DATA(t824) = VALUE abap_bool( ).
          IF t806 IS BOUND.
            t823 = t806->has.
          ENDIF.
          IF t818 IS BOUND.
            t824 = t818->has.
          ENDIF.
          IF t823 = t824.
            IF t823 = abap_false.
              t805 = abap_true.
            ELSEIF t806->value = t818->value.
              t805 = abap_true.
            ENDIF.
          ENDIF.
          t797 = t805.
        ENDIF.
        IF t797 = abap_true.
          DATA t825 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t825.
          t47 = t825.
        ELSE.
          DATA(t826) = VALUE abap_bool( ).
          DATA(t827) = VALUE abap_bool( ).
          DATA t828 TYPE REF TO zif_lnt_method_definition.
          CLEAR t828.
          DATA(t829) = t340.
          t828 = t829.
          DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t830.
          DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t831.
          t830 = t831.
          DATA(t832) = VALUE abap_bool( ).
          DATA(t833) = t828.
          IF t833 IS INITIAL.
            t832 = abap_true.
          ENDIF.
          t827 = t832.
          t826 = t827.
          IF t827 = abap_true.
            DATA(t834) = VALUE abap_bool( ).
            DATA(t835) = VALUE abap_bool( ).
            DATA(t836) = t47.
            t835 = xsdbool( t836 IS BOUND AND t836 IS INSTANCE OF zcl_lnt_void_type ).
            t834 = xsdbool( t835 = abap_false ).
            t826 = t834.
          ENDIF.
          IF t826 = abap_true.
            DATA(t837) = VALUE string( ).
            DATA(t838) = VALUE string( ).
            DATA(t839) = VALUE string( ).
            DATA(t840) = |Method "|.
            DATA(t841) = VALUE string( ).
            DATA t842 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t842.
            DATA(t843) = t152.
            t842 = t843.
            DATA(t844) = VALUE string( ).
            DATA(t845) = VALUE abap_bool( ).
            DATA(t846) = t842.
            IF t846 IS INITIAL.
              t845 = abap_true.
            ELSEIF t846->has = abap_false.
              t845 = abap_true.
            ENDIF.
            IF t845 = abap_true.
              DATA(t847) = |undefined|.
              t844 = t847.
            ELSE.
              DATA(t848) = VALUE string( ).
              DATA(t849) = t842.
              t848 = t849->value.
              t844 = t848.
            ENDIF.
            t841 = t844.
            DATA(t850) = strlen( t840 ).
            t839 = |{ t840 }{ t841 }|.
            DATA(t851) = |" not found, methodCallChain|.
            DATA(t852) = strlen( t839 ).
            t838 = |{ t839 }{ t851 }|.
            t837 = t838.
            DATA t853 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t853.
            DATA(t854) = t2.
            t853 = t854->issues.
            DATA t855 TYPE REF TO zcl_lnt_issue.
            CLEAR t855.
            DATA(t856) = t2.
            DATA t857 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t857.
            DATA(t858) = t137.
            t857 = t858.
            DATA(t859) = t837.
            DATA t860 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t860.
            t855 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t856 i_token = t857 i_message_26cb = t859 i_fix = t860 ).
            t853->load( ).
            APPEND t855 TO t853->items.
            t853->save( ).
            DATA t861 TYPE REF TO zcl_lnt_void_type.
            CLEAR t861.
            DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t862.
            DATA(t863) = abap_true.
            IF t863 = abap_true.
              DATA(t864) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t865) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t865->has = abap_true.
              t865->value = t864.
              t862 = t865.
            ELSE.
              DATA t866 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t866.
              t862 = t866.
            ENDIF.
            DATA t867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t867.
            t861 = zcl_lnt_void_type=>get_db65( i_voided = t862 i_qualified_name = t867 ).
            result = t861.
            RETURN.
          ELSE.
            DATA(t868) = VALUE abap_bool( ).
            DATA(t869) = t340.
            t868 = xsdbool( t869 IS BOUND ).
            IF t868 = abap_true.
              DATA t870 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t870.
              DATA t871 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t871.
              DATA t872 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t872.
              DATA t873 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t873.
              DATA t874 TYPE REF TO zif_lnt_method_parameters.
              CLEAR t874.
              DATA t875 TYPE REF TO zif_lnt_method_definition.
              CLEAR t875.
              DATA(t876) = t340.
              t875 = t876.
              t874 = t875->get_parameters( ).
              t873 = t874->get_returning( ).
              t872 = t873.
              DATA t877 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t877.
              DATA(t878) = VALUE abap_bool( ).
              DATA(t879) = t872.
              IF t879 IS INITIAL.
                t878 = abap_true.
              ENDIF.
              IF t878 = abap_true.
                DATA t880 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t880.
                t877 = t880.
              ELSE.
                DATA t881 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t881.
                DATA t882 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t882.
                DATA t883 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t883.
                DATA(t884) = t872.
                t883 = t884.
                t882 = t883.
                DATA t885 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t885.
                DATA(t886) = t882.
                t885 = t886->type_cba0.
                t881 = t885.
                t877 = t881.
              ENDIF.
              t871 = t877.
              t870 = t871.
              DATA(t887) = t870.
              t47 = t887.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t888 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t888.
        DATA t889 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t889.
        DATA t890 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t890.
        DATA(t891) = t68.
        DATA t892 TYPE REF TO object.
        CLEAR t892.
        t892 = t891.
        t890 ?= t892.
        DATA(t893) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
        t889 = t890->find_direct_expression( i_type_9913 = t893 ).
        t888 = t889.
        DATA(t894) = VALUE abap_bool( ).
        DATA(t895) = VALUE abap_bool( ).
        DATA(t896) = t888.
        t895 = xsdbool( t896 IS BOUND ).
        t894 = t895.
        IF t895 = abap_true.
          DATA(t897) = VALUE abap_bool( ).
          DATA(t898) = t340.
          t897 = xsdbool( t898 IS BOUND ).
          t894 = t897.
        ENDIF.
        IF t894 = abap_true.
          DATA t899 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t899.
          DATA(t900) = t888.
          t899 = t900.
          DATA(t901) = t2.
          DATA t902 TYPE REF TO zif_lnt_union_8cd68e5e.
          CLEAR t902.
          DATA t903 TYPE REF TO zif_lnt_method_definition.
          CLEAR t903.
          DATA(t904) = t340.
          t903 = t904.
          t902 ?= t903.
          zcl_lnt_sy_method_call_param=>run_syntax( i_node = t899 i_input_967e = t901 i_method = t902 ).
        ELSE.
          DATA(t905) = VALUE abap_bool( ).
          DATA(t906) = VALUE abap_bool( ).
          DATA(t907) = t888.
          t906 = xsdbool( t907 IS BOUND ).
          t905 = t906.
          IF t906 = abap_true.
            DATA(t908) = VALUE abap_bool( ).
            DATA(t909) = t47.
            t908 = xsdbool( t909 IS BOUND AND t909 IS INSTANCE OF zcl_lnt_void_type ).
            t905 = t908.
          ENDIF.
          IF t905 = abap_true.
            DATA t910 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t910.
            DATA(t911) = t888.
            t910 = t911.
            DATA(t912) = t2.
            DATA t913 TYPE REF TO zcl_lnt_void_type.
            CLEAR t913.
            DATA(t914) = t47.
            t913 ?= t914.
            zcl_lnt_sy_method_call_param=>run_syntax( i_node = t910 i_input_967e = t912 i_method = t913 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t915) = VALUE abap_bool( ).
        DATA(t916) = VALUE abap_bool( ).
        DATA(t917) = t68.
        t916 = xsdbool( t917 IS BOUND AND t917 IS INSTANCE OF zcl_lnt_expression_node ).
        t915 = t916.
        IF t916 = abap_true.
          DATA(t918) = VALUE abap_bool( ).
          DATA t919 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t919.
          DATA t920 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t920.
          DATA(t921) = t68.
          DATA t922 TYPE REF TO object.
          CLEAR t922.
          t922 = t921.
          t920 ?= t922.
          t919 = t920->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t918 = xsdbool( t919 IS BOUND AND t919 IS INSTANCE OF zcl_lnt_st_component_name ).
          t915 = t918.
        ENDIF.
        IF t915 = abap_true.
          DATA t923 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t923.
          DATA(t924) = t47.
          DATA t925 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t925.
          DATA(t926) = t68.
          DATA t927 TYPE REF TO object.
          CLEAR t927.
          t927 = t926.
          t925 ?= t927.
          DATA(t928) = t2.
          t923 = zcl_lnt_sy_component_name=>run_syntax( i_context = t924 i_node = t925 i_input_967e = t928 ).
          t47 = t923.
        ELSE.
          DATA(t929) = VALUE abap_bool( ).
          DATA(t930) = VALUE abap_bool( ).
          DATA(t931) = t68.
          t930 = xsdbool( t931 IS BOUND AND t931 IS INSTANCE OF zcl_lnt_expression_node ).
          t929 = t930.
          IF t930 = abap_true.
            DATA(t932) = VALUE abap_bool( ).
            DATA t933 TYPE REF TO zif_lnt_statement_runnable.
            CLEAR t933.
            DATA t934 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t934.
            DATA(t935) = t68.
            DATA t936 TYPE REF TO object.
            CLEAR t936.
            t936 = t935.
            t934 ?= t936.
            t933 = t934->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t932 = xsdbool( t933 IS BOUND AND t933 IS INSTANCE OF zcl_lnt_st_attribute_name ).
            t929 = t932.
          ENDIF.
          IF t929 = abap_true.
            DATA t937 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t937.
            DATA(t938) = t47.
            DATA t939 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t939.
            DATA(t940) = t68.
            DATA t941 TYPE REF TO object.
            CLEAR t941.
            t941 = t940.
            t939 ?= t941.
            DATA(t942) = t2.
            DATA t943 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t943.
            DATA t944 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t944.
            t937 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t938 i_node = t939 i_input_967e = t942 i_type_9913 = t943 i_error = t944 ).
            t47 = t937.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t945 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t945.
      DATA(t946) = abap_true.
      IF t946 = abap_true.
        DATA(t947) = t68.
        t945 = t947.
      ELSE.
        DATA t948 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t948.
        t945 = t948.
      ENDIF.
      t61 = t945.
    ENDDO.
    DATA(t949) = t47.
    result = t949.

  ENDMETHOD.

  METHOD check_visibility.
    DATA(t1) = i_method.
    DATA(t2) = i_def.
    DATA(t3) = i_found_def.
    DATA(t4) = i_input_967e.
    DATA t5 TYPE f.
    DATA t6 TYPE f.
    DATA(t7) = t1.
    t6 = t7->get_visibility( ).
    t5 = t6.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t5.
    DATA(t11) = CONV f( 3 ).
    t9 = xsdbool( t10 = t11 ).
    t8 = t9.
    IF t9 = abap_false.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zif_lnt_interface_definition.
      DATA(t14) = t3.
      t13 = t14.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      t15 = t16.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t13.
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
      DATA(t22) = t3.
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
    DATA(t29) = t3.
    DATA t30 TYPE REF TO object.
    t30 = t29.
    t28 ?= t30.
    t27 = t28.
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE string.
    DATA t33 TYPE string.
    DATA t34 TYPE REF TO zcl_lnt_abstract_token.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t36) = t27.
    t35 = t36->token.
    t34 = t35.
    DATA t37 TYPE string.
    DATA(t38) = t34.
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
    DATA(t63) = t4.
    t62 = t63->scope.
    t61 = t62->get_enclosing_class_name( ).
    t60 = t61.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t64.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = t60.
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
      DATA(t70) = t60.
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
    DATA(t76) = t58.
    t75 = t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    t77 = t78.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = t75.
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
      DATA(t83) = t58.
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
    DATA(t89) = t4.
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
    DATA(t95) = t2.
    t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    IF t94 = abap_true.
      DATA t96 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t97) = t2.
      DATA t98 TYPE REF TO object.
      t98 = t97.
      t96 ?= t98.
      t93 = t96.
    ELSE.
      DATA t99 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t100) = t3.
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
      DATA(t105) = t92.
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      t106 = t107.
      DATA(t108) = VALUE abap_bool( ).
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = t104.
      IF t110 IS INITIAL.
        t109 = abap_true.
      ENDIF.
      t108 = xsdbool( t109 = abap_false ).
      t103 = t108.
      t102 = t103.
      IF t103 = abap_true.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = t90.
        DATA t114 TYPE string.
        DATA t115 TYPE string.
        DATA t116 TYPE REF TO zif_lnt_class_definition.
        DATA(t117) = t92.
        t116 = t117.
        t115 = t116->get_name( ).
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
      DATA(t120) = t90.
      DATA t121 TYPE string.
      DATA t122 TYPE string.
      DATA t123 TYPE REF TO zif_lnt_class_definition.
      DATA(t124) = t92.
      t123 = t124.
      t122 = t123->get_name( ).
      DATA(t125) = strlen( t122 ).
      t121 = t122.
      IF t121 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t121 TO UPPER CASE.
      ELSE.
        t121 = zlnt_runtime_uppe_91169605024d=>full( t121 ).
      ENDIF.
      t120->load( ).
      APPEND t121 TO t120->items.
      t120->save( ).
      DATA t126 TYPE abap_bool.
      DATA(t127) = t86.
      DATA t128 TYPE REF TO zif_lnt_class_definition.
      DATA(t129) = t92.
      t128 = t129.
      DATA t130 TYPE string.
      DATA(t131) = t58.
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
      DATA(t136) = t92.
      t135 = t136.
      t134 = t135->get_super_class( ).
      t133 = t134.
      DATA t137 TYPE REF TO zif_lnt_class_definition.
      CLEAR t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t140) = t133.
      t139 = t140.
      DATA t141 TYPE REF TO zif_lnt_class_definition.
      DATA t142 TYPE REF TO zif_lnt_class_definition.
      CLEAR t142.
      t141 = t142.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = t139.
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
        DATA(t149) = t4.
        t148 = t149->scope.
        t147 = t148.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA(t152) = abap_true.
        IF t152 = abap_true.
          DATA t153 TYPE string.
          DATA(t154) = t133.
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
        DATA(t160) = t150.
        t159 = t160.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        t161 = t162.
        DATA(t163) = VALUE abap_bool( ).
        DATA(t164) = t159.
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
          DATA(t171) = t147.
          t170 = t171->current.
          t169 = t170.
          DATA t172 TYPE REF TO zif_lnt_class_definition.
          CLEAR t172.
          DATA(t173) = VALUE abap_bool( ).
          DATA(t174) = t169.
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
            DATA(t178) = t169.
            t177 = t178.
            DATA t179 TYPE string.
            DATA(t180) = t150.
            t179 = t180->value.
            t176 = t177->find_class_definition( i_name = t179 ).
            t172 = t176.
          ENDIF.
          t168 = t172.
          t167 = t168.
          DATA t181 TYPE REF TO zif_lnt_class_definition.
          CLEAR t181.
          DATA t182 TYPE abap_bool.
          DATA(t183) = t167.
          t182 = xsdbool( t183 IS BOUND ).
          IF t182 = abap_true.
            DATA t184 TYPE REF TO zif_lnt_class_definition.
            CLEAR t184.
            DATA(t185) = abap_true.
            IF t185 = abap_true.
              DATA t186 TYPE REF TO zif_lnt_class_definition.
              DATA(t187) = t167.
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
            DATA(t194) = t147.
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
              DATA(t203) = t150.
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
            DATA(t209) = t190.
            t208 = xsdbool( t209 IS BOUND ).
            IF t208 = abap_true.
              DATA t210 TYPE REF TO zif_lnt_class_definition.
              DATA t211 TYPE REF TO zcl_lnt_class.
              DATA(t212) = t190.
              t211 = t212.
              t210 = t211->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
    DATA(t216) = CONV f( 2 ).
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
      DATA(t223) = t4.
      t222 = t223->scope.
      t221 = t222.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA(t226) = abap_true.
      IF t226 = abap_true.
        DATA t227 TYPE string.
        DATA(t228) = t58.
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
      DATA(t234) = t224.
      t233 = t234.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t235 = t236.
      DATA(t237) = VALUE abap_bool( ).
      DATA(t238) = t233.
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
        DATA(t245) = t221.
        t244 = t245->current.
        t243 = t244.
        DATA t246 TYPE REF TO zif_lnt_class_definition.
        CLEAR t246.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = t243.
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
          DATA(t252) = t243.
          t251 = t252.
          DATA t253 TYPE string.
          DATA(t254) = t224.
          t253 = t254->value.
          t250 = t251->find_class_definition( i_name = t253 ).
          t246 = t250.
        ENDIF.
        t242 = t246.
        t241 = t242.
        DATA t255 TYPE REF TO zif_lnt_class_definition.
        CLEAR t255.
        DATA t256 TYPE abap_bool.
        DATA(t257) = t241.
        t256 = xsdbool( t257 IS BOUND ).
        IF t256 = abap_true.
          DATA t258 TYPE REF TO zif_lnt_class_definition.
          CLEAR t258.
          DATA(t259) = abap_true.
          IF t259 = abap_true.
            DATA t260 TYPE REF TO zif_lnt_class_definition.
            DATA(t261) = t241.
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
          DATA(t268) = t221.
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
            DATA(t277) = t224.
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
          DATA(t283) = t264.
          t282 = xsdbool( t283 IS BOUND ).
          IF t282 = abap_true.
            DATA t284 TYPE REF TO zif_lnt_class_definition.
            DATA t285 TYPE REF TO zcl_lnt_class.
            DATA(t286) = t264.
            t285 = t286.
            t284 = t285->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
      DATA(t290) = t219.
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
        DATA(t294) = t219.
        t293 = t294.
        t292 = t293->get_super_class( ).
        t288 = t292.
      ENDIF.
      t218 = t288.
      t217 = t218.
      DO.
        DATA(t295) = VALUE abap_bool( ).
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t297) = t217.
        t296 = t297.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t299.
        t298 = t299.
        DATA(t300) = VALUE abap_bool( ).
        DATA(t301) = VALUE abap_bool( ).
        DATA(t302) = t296.
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
        DATA(t306) = t217.
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
        DATA(t315) = t4.
        t314 = t315->scope.
        t313 = t314.
        DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t316.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t317.
        DATA(t318) = abap_true.
        IF t318 = abap_true.
          DATA t319 TYPE string.
          DATA(t320) = t217.
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
        DATA(t326) = t316.
        t325 = t326.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        t327 = t328.
        DATA(t329) = VALUE abap_bool( ).
        DATA(t330) = t325.
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
          DATA(t337) = t313.
          t336 = t337->current.
          t335 = t336.
          DATA t338 TYPE REF TO zif_lnt_class_definition.
          CLEAR t338.
          DATA(t339) = VALUE abap_bool( ).
          DATA(t340) = t335.
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
            DATA(t344) = t335.
            t343 = t344.
            DATA t345 TYPE string.
            DATA(t346) = t316.
            t345 = t346->value.
            t342 = t343->find_class_definition( i_name = t345 ).
            t338 = t342.
          ENDIF.
          t334 = t338.
          t333 = t334.
          DATA t347 TYPE REF TO zif_lnt_class_definition.
          CLEAR t347.
          DATA t348 TYPE abap_bool.
          DATA(t349) = t333.
          t348 = xsdbool( t349 IS BOUND ).
          IF t348 = abap_true.
            DATA t350 TYPE REF TO zif_lnt_class_definition.
            CLEAR t350.
            DATA(t351) = abap_true.
            IF t351 = abap_true.
              DATA t352 TYPE REF TO zif_lnt_class_definition.
              DATA(t353) = t333.
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
            DATA(t360) = t313.
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
              DATA(t369) = t316.
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
            DATA(t375) = t356.
            t374 = xsdbool( t375 IS BOUND ).
            IF t374 = abap_true.
              DATA t376 TYPE REF TO zif_lnt_class_definition.
              DATA t377 TYPE REF TO zcl_lnt_class.
              DATA(t378) = t356.
              t377 = t378.
              t376 = t377->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
        DATA(t382) = t311.
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
          DATA(t386) = t311.
          t385 = t386.
          t384 = t385->get_super_class( ).
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
    DATA(t1) = i_first.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO object.
    DATA(t6) = t1.
    t5 = t6->get_db65( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_class_name ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t9) = t1.
      t8 = t9->get_first_token( ).
      t7 = t8.
      DATA t10 TYPE string.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t13) = t7.
      t12 = t13.
      DATA t14 TYPE string.
      DATA(t15) = t12.
      t14 = t15->str.
      t11 = t14.
      t10 = t11.
      DATA t16 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_current_scope.
      DATA t19 TYPE REF TO zcl_lnt_current_scope.
      DATA(t20) = t2.
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
      DATA(t30) = t21.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      t31 = t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t29.
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
          DATA(t43) = t21.
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
        DATA(t49) = t39.
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        t50 = t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = t48.
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
          DATA(t60) = t18.
          t59 = t60->current.
          t58 = t59.
          DATA t61 TYPE REF TO zif_lnt_class_definition.
          CLEAR t61.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = t58.
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
            DATA(t67) = t58.
            t66 = t67.
            DATA t68 TYPE string.
            DATA(t69) = t39.
            t68 = t69->value.
            t65 = t66->find_class_definition( i_name = t68 ).
            t61 = t65.
          ENDIF.
          t57 = t61.
          t56 = t57.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          CLEAR t70.
          DATA t71 TYPE abap_bool.
          DATA(t72) = t56.
          t71 = xsdbool( t72 IS BOUND ).
          IF t71 = abap_true.
            DATA t73 TYPE REF TO zif_lnt_class_definition.
            CLEAR t73.
            DATA(t74) = abap_true.
            IF t74 = abap_true.
              DATA t75 TYPE REF TO zif_lnt_class_definition.
              DATA(t76) = t56.
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
            DATA(t83) = t18.
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
              DATA(t92) = t39.
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
            DATA(t98) = t79.
            t97 = xsdbool( t98 IS BOUND ).
            IF t97 = abap_true.
              DATA t99 TYPE REF TO zif_lnt_class_definition.
              DATA t100 TYPE REF TO zcl_lnt_class.
              DATA(t101) = t79.
              t100 = t101.
              t99 = t100->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
        DATA(t105) = t37.
        t104 = xsdbool( t105 IS BOUND ).
        IF t104 = abap_true.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          DATA(t108) = t37.
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
            DATA(t116) = t21.
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
          DATA(t122) = t112.
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
            DATA(t133) = t18.
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
              DATA(t142) = t112.
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
              DATA(t156) = t18.
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
                DATA(t165) = t112.
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
          t111 = t119.
          t110 = t111.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t179.
          DATA t180 TYPE abap_bool.
          DATA(t181) = t110.
          t180 = xsdbool( t181 IS BOUND ).
          IF t180 = abap_true.
            DATA t182 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t182.
            DATA(t183) = abap_true.
            IF t183 = abap_true.
              DATA t184 TYPE REF TO zif_lnt_interface_definition.
              DATA(t185) = t110.
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
      DATA(t191) = t16.
      t190 = t191.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      t192 = t193.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = t190.
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
        DATA(t202) = t2.
        t201 = t202->scope.
        t200 = t201.
        DATA t203 TYPE REF TO zcl_lnt_ddic.
        DATA t204 TYPE REF TO zif_lnt_registry.
        DATA(t205) = t200.
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
        DATA(t215) = t206.
        t214 = t215.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        t216 = t217.
        DATA(t218) = VALUE abap_bool( ).
        DATA(t219) = t214.
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
          DATA(t223) = t198.
          t222 = t223->reg.
          DATA t224 TYPE string.
          DATA(t225) = t206.
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
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        DATA(t231) = abap_true.
        IF t231 = abap_true.
          DATA(t232) = t10.
          DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t233->has = abap_true.
          t233->value = t232.
          t230 = t233.
        ELSE.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          t230 = t234.
        ENDIF.
        t229 = t230.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA(t237) = abap_true.
        IF t237 = abap_true.
          DATA(t238) = |Void|.
          DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t239->has = abap_true.
          t239->value = t238.
          t236 = t239.
        ELSE.
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t240.
          t236 = t240.
        ENDIF.
        t235 = t236.
        DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t242 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t242.
        t241 = t242.
        t228 = NEW zcl_lnt_ireference_extras( i_oo_name = t229 i_oo_type = t235 i_found_qualified = t241 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t243 ).
        ENDIF.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t244 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t245) = |ooName|.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
        ENDIF.
        DATA(t247) = |ooType|.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
        ENDIF.
        t227 = t228.
        DATA t249 TYPE REF TO zcl_lnt_current_scope.
        DATA(t250) = t2.
        t249 = t250->scope.
        DATA t251 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t251.
        DATA(t252) = abap_true.
        IF t252 = abap_true.
          DATA(t253) = t7.
          t251 = t253.
        ELSE.
          DATA t254 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t254.
          t251 = t254.
        ENDIF.
        DATA t255 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        DATA(t257) = |Object (Void)|.
        CLEAR t256.
        CREATE OBJECT t256.
        t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t256->sval = t257.
        DATA t258 TYPE string.
        DATA(t259) = t2.
        t258 = t259->filename.
        DATA t260 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t260.
        DATA(t261) = abap_true.
        IF t261 = abap_true.
          DATA(t262) = t227.
          t260 = t262.
        ELSE.
          DATA t263 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t263.
          t260 = t263.
        ENDIF.
        t249->add_reference( i_usage = t251 i_referencing = t255 i_type_9913 = t256 i_filename = t258 i_extra = t260 ).
        DATA t264 TYPE REF TO zcl_lnt_void_type.
        CLEAR t264.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        DATA(t266) = abap_true.
        IF t266 = abap_true.
          DATA(t267) = t10.
          DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t268->has = abap_true.
          t268->value = t267.
          t265 = t268.
        ELSE.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t269.
          t265 = t269.
        ENDIF.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        t264 = zcl_lnt_void_type=>get_db65( i_voided = t265 i_qualified_name = t270 ).
        result = t264.
        RETURN.
      ELSE.
        DATA(t271) = VALUE abap_bool( ).
        DATA t272 TYPE REF TO zif_lnt_interface_definition.
        DATA(t273) = t16.
        t272 = t273.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        t274 = t275.
        DATA(t276) = VALUE abap_bool( ).
        DATA(t277) = t272.
        IF t277 IS INITIAL.
          t276 = abap_true.
        ENDIF.
        t271 = t276.
        IF t271 = abap_true.
          DATA t278 TYPE string.
          DATA t279 TYPE string.
          DATA t280 TYPE string.
          DATA(t281) = |Class |.
          DATA(t282) = t10.
          DATA(t283) = strlen( t281 ).
          t280 = |{ t281 }{ t282 }|.
          DATA(t284) = | not found|.
          DATA(t285) = strlen( t280 ).
          t279 = |{ t280 }{ t284 }|.
          t278 = t279.
          DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t287) = t2.
          t286 = t287->issues.
          DATA t288 TYPE REF TO zcl_lnt_issue.
          DATA(t289) = t2.
          DATA t290 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t291) = t1.
          t290 = t291->get_first_token( ).
          DATA(t292) = t278.
          DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t293.
          t288 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t289 i_token = t290 i_message_26cb = t292 i_fix = t293 ).
          t286->load( ).
          APPEND t288 TO t286->items.
          t286->save( ).
          DATA t294 TYPE REF TO zcl_lnt_void_type.
          CLEAR t294.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          DATA(t296) = abap_true.
          IF t296 = abap_true.
            DATA(t297) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t298->has = abap_true.
            t298->value = t297.
            t295 = t298.
          ELSE.
            DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t299.
            t295 = t299.
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          t294 = zcl_lnt_void_type=>get_db65( i_voided = t295 i_qualified_name = t300 ).
          result = t294.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t301 TYPE REF TO zcl_lnt_current_scope.
      DATA(t302) = t2.
      t301 = t302->scope.
      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t303.
      DATA(t304) = abap_true.
      IF t304 = abap_true.
        DATA t305 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t306) = t1.
        t305 = t306->get_first_token( ).
        t303 = t305.
      ELSE.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t307.
        t303 = t307.
      ENDIF.
      DATA t308 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t308.
      DATA(t309) = abap_true.
      IF t309 = abap_true.
        DATA t310 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t311 TYPE REF TO zif_lnt_interface_definition.
        DATA(t312) = t16.
        t311 = t312.
        t310 ?= t311.
        t308 = t310.
      ELSE.
        DATA t313 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t313.
        t308 = t313.
      ENDIF.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t314.
      DATA(t315) = |Object|.
      CLEAR t314.
      CREATE OBJECT t314.
      t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t314->sval = t315.
      DATA t316 TYPE string.
      DATA(t317) = t2.
      t316 = t317->filename.
      DATA t318 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t318.
      t301->add_reference( i_usage = t303 i_referencing = t308 i_type_9913 = t314 i_filename = t316 i_extra = t318 ).
      DATA t319 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t320 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t321 TYPE REF TO zif_lnt_interface_definition.
      DATA(t322) = t16.
      t321 = t322.
      t320 ?= t321.
      DATA t323 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t323.
      t319 = NEW zcl_lnt_object_reference_type( i_id = t320 i_extra = t323 ).
      result = t319.
      RETURN.
    ELSE.
      DATA t324 TYPE abap_bool.
      DATA t325 TYPE abap_bool.
      DATA(t326) = t1.
      t325 = xsdbool( t326 IS BOUND AND t326 IS INSTANCE OF zcl_lnt_expression_node ).
      t324 = t325.
      IF t325 = abap_true.
        DATA t327 TYPE abap_bool.
        DATA t328 TYPE REF TO zif_lnt_statement_runnable.
        DATA t329 TYPE REF TO zcl_lnt_expression_node.
        DATA(t330) = t1.
        DATA t331 TYPE REF TO object.
        t331 = t330.
        t329 ?= t331.
        t328 = t329->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t327 = xsdbool( t328 IS BOUND AND t328 IS INSTANCE OF zcl_lnt_st_field_chain ).
        t324 = t327.
      ENDIF.
      IF t324 = abap_true.
        DATA t332 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t332.
        DATA t333 TYPE REF TO zcl_lnt_expression_node.
        DATA(t334) = t1.
        DATA t335 TYPE REF TO object.
        t335 = t334.
        t333 ?= t335.
        DATA(t336) = t2.
        DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t337.
        DATA(t338) = abap_true.
        IF t338 = abap_true.
          DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t339.
          DATA(t340) = |Read From|.
          CLEAR t339.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t339->sval = t340.
          t337 = t339.
        ELSE.
          DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t341.
          t337 = t341.
        ENDIF.
        DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t342.
        t332 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t333 i_input_967e = t336 i_ref_type = t337 i_allow_generic_deference = t342 ).
        result = t332.
        RETURN.
      ELSE.
        DATA t343 TYPE abap_bool.
        DATA t344 TYPE abap_bool.
        DATA(t345) = t1.
        t344 = xsdbool( t345 IS BOUND AND t345 IS INSTANCE OF zcl_lnt_expression_node ).
        t343 = t344.
        IF t344 = abap_true.
          DATA t346 TYPE abap_bool.
          DATA t347 TYPE REF TO zif_lnt_statement_runnable.
          DATA t348 TYPE REF TO zcl_lnt_expression_node.
          DATA(t349) = t1.
          DATA t350 TYPE REF TO object.
          t350 = t349.
          t348 ?= t350.
          t347 = t348->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t346 = xsdbool( t347 IS BOUND AND t347 IS INSTANCE OF zcl_lnt_st_new_object ).
          t343 = t346.
        ENDIF.
        IF t343 = abap_true.
          DATA t351 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t351.
          DATA(t352) = abap_true.
          IF t352 = abap_true.
            DATA t353 TYPE REF TO zcl_lnt_abstract_type.
            DATA t354 TYPE REF TO zcl_lnt_expression_node.
            DATA(t355) = t1.
            DATA t356 TYPE REF TO object.
            t356 = t355.
            t354 ?= t356.
            DATA(t357) = t2.
            DATA(t358) = t3.
            t353 = zcl_lnt_sy_new_object=>run_syntax( i_node = t354 i_input_967e = t357 i_target_type = t358 ).
            t351 = t353.
          ELSE.
            DATA t359 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t359.
            t351 = t359.
          ENDIF.
          result = t351.
          RETURN.
        ELSE.
          DATA t360 TYPE abap_bool.
          DATA t361 TYPE abap_bool.
          DATA(t362) = t1.
          t361 = xsdbool( t362 IS BOUND AND t362 IS INSTANCE OF zcl_lnt_expression_node ).
          t360 = t361.
          IF t361 = abap_true.
            DATA t363 TYPE abap_bool.
            DATA t364 TYPE REF TO zif_lnt_statement_runnable.
            DATA t365 TYPE REF TO zcl_lnt_expression_node.
            DATA(t366) = t1.
            DATA t367 TYPE REF TO object.
            t367 = t366.
            t365 ?= t367.
            t364 = t365->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t363 = xsdbool( t364 IS BOUND AND t364 IS INSTANCE OF zcl_lnt_st_cast ).
            t360 = t363.
          ENDIF.
          IF t360 = abap_true.
            DATA t368 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t368.
            DATA(t369) = abap_true.
            IF t369 = abap_true.
              DATA t370 TYPE REF TO zcl_lnt_abstract_type.
              DATA t371 TYPE REF TO zcl_lnt_expression_node.
              DATA(t372) = t1.
              DATA t373 TYPE REF TO object.
              t373 = t372.
              t371 ?= t373.
              DATA(t374) = t2.
              DATA(t375) = t3.
              t370 = zcl_lnt_sy_cast=>run_syntax( i_node = t371 i_input_967e = t374 i_target_type = t375 ).
              t368 = t370.
            ELSE.
              DATA t376 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t376.
              t368 = t376.
            ENDIF.
            result = t368.
            RETURN.
          ELSE.
            DATA t377 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t377.
            DATA t378 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t378.
            DATA t379 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t379.
            DATA t380 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t380.
            DATA t381 TYPE REF TO zcl_lnt_current_scope.
            DATA t382 TYPE REF TO zcl_lnt_current_scope.
            DATA(t383) = t2.
            t382 = t383->scope.
            t381 = t382.
            DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t384.
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t385.
            DATA(t386) = abap_true.
            IF t386 = abap_true.
              DATA(t387) = |me|.
              DATA(t388) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t388->has = abap_true.
              t388->value = t387.
              t385 = t388.
            ELSE.
              DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t389.
              t385 = t389.
            ENDIF.
            t384 = t385.
            DATA t390 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t390.
            DATA(t391) = VALUE abap_bool( ).
            DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t393) = t384.
            t392 = t393.
            DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t395.
            t394 = t395.
            DATA(t396) = VALUE abap_bool( ).
            DATA(t397) = t392.
            IF t397 IS INITIAL.
              t396 = abap_true.
            ELSEIF t397->has = abap_false.
              t396 = abap_true.
            ENDIF.
            t391 = t396.
            IF t391 = abap_true.
              DATA t398 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t398.
              t390 = t398.
            ELSE.
              DATA t399 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t399.
              DATA t400 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t400.
              DATA t401 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t401.
              DATA t402 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t403 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t404) = t381.
              t403 = t404->current.
              t402 = t403.
              DATA t405 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t405.
              DATA(t406) = VALUE abap_bool( ).
              DATA(t407) = t402.
              IF t407 IS INITIAL.
                t406 = abap_true.
              ENDIF.
              IF t406 = abap_true.
                DATA t408 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t408.
                t405 = t408.
              ELSE.
                DATA t409 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t410 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t411) = t402.
                t410 = t411.
                DATA t412 TYPE string.
                DATA(t413) = t384.
                t412 = t413->value.
                t409 = t410->find_variable( i_name = t412 ).
                t405 = t409.
              ENDIF.
              t401 = t405.
              t400 = t401.
              DATA t414 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t414.
              DATA t415 TYPE abap_bool.
              DATA(t416) = t400.
              t415 = xsdbool( t416 IS BOUND ).
              IF t415 = abap_true.
                DATA t417 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t417.
                DATA(t418) = abap_true.
                IF t418 = abap_true.
                  DATA t419 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t420) = t400.
                  t419 = t420.
                  t417 = t419.
                ELSE.
                  DATA t421 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t421.
                  t417 = t421.
                ENDIF.
                t414 = t417.
              ELSE.
                DATA t422 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t422.
                DATA(t423) = t381.
                DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t424.
                DATA(t425) = abap_true.
                IF t425 = abap_true.
                  DATA t426 TYPE string.
                  DATA(t427) = t384.
                  t426 = t427->value.
                  DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t428->has = abap_true.
                  t428->value = t426.
                  t424 = t428.
                ELSE.
                  DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t429.
                  t424 = t429.
                ENDIF.
                t422 = t423->find_type_pool_constant( i_name = t424 ).
                t414 = t422.
              ENDIF.
              t399 = t414.
              t390 = t399.
            ENDIF.
            t380 = t390.
            t379 = t380.
            DATA t430 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t430.
            DATA(t431) = VALUE abap_bool( ).
            DATA(t432) = t379.
            IF t432 IS INITIAL.
              t431 = abap_true.
            ENDIF.
            IF t431 = abap_true.
              DATA t433 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t433.
              t430 = t433.
            ELSE.
              DATA t434 TYPE REF TO zcl_lnt_abstract_type.
              DATA t435 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t436 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t437) = t379.
              t436 = t437.
              t435 = t436.
              DATA t438 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t439) = t435.
              t438 = t439->type_cba0.
              t434 = t438.
              t430 = t434.
            ENDIF.
            t378 = t430.
            t377 = t378.
            DATA t440 TYPE abap_bool.
            DATA(t441) = t377.
            t440 = xsdbool( t441 IS BOUND ).
            IF t440 = abap_true.
              DATA t442 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t442.
              DATA(t443) = abap_true.
              IF t443 = abap_true.
                DATA t444 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t445) = t377.
                t444 = t445.
                t442 = t444.
              ELSE.
                DATA t446 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t446.
                t442 = t446.
              ENDIF.
              result = t442.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t447 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t447.
    result = t447.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d819_d6d6df99a2b9.
  ENDMETHOD.
ENDCLASS.
