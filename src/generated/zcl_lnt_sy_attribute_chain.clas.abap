* TS: src/abap/5_syntax/expressions/attribute_chain.ts:18:1 AttributeChain
CLASS zcl_lnt_sy_attribute_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_input_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_attribute_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_input_context.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_type_9913.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_void_type ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_void_type.
      CLEAR t7.
      DATA(t8) = t1.
      t7 ?= t8.
      result = t7.
      RETURN.
    ELSE.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t1.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_object_reference_type ).
      t9 = xsdbool( t10 = abap_false ).
      IF t9 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t12.
        DATA(t13) = t3.
        t12 = t13->issues.
        DATA t14 TYPE REF TO zcl_lnt_issue.
        CLEAR t14.
        DATA(t15) = t3.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t16.
        DATA(t17) = t2.
        t16 = t17->get_first_token( ).
        DATA(t18) = |Not an object reference(AttributeChain)|.
        DATA t19 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t19.
        t14 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t15 i_token = t16 i_message_26cb = t18 i_fix = t19 ).
        t12->load( ).
        APPEND t14 TO t12->items.
        t12->save( ).
        DATA t20 TYPE REF TO zcl_lnt_void_type.
        CLEAR t20.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA(t22) = abap_true.
        IF t22 = abap_true.
          DATA(t23) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t24->has = abap_true.
          t24->value = t23.
          t21 = t24.
        ELSE.
          DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t25.
          t21 = t25.
        ENDIF.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t20 = zcl_lnt_void_type=>get_db65( i_voided = t21 i_qualified_name = t26 ).
        result = t20.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zif_lnt_node.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_node.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA(t30) = t2.
    t29 = t30->get_children( ).
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    t29->load( ).
    CLEAR t31.
    READ TABLE t29->items INDEX 1 INTO t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    CLEAR t28.
    IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t32 ?= t31.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      t33 = t32->as_ref( ).
      t28 ?= t33.
    ELSE.
      t28 ?= t31.
    ENDIF.
    t27 = t28.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = t27.
    t36 = t37->get_db65( ).
    t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_attribute_name ).
    t34 = xsdbool( t35 = abap_false ).
    IF t34 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      DATA(t39) = t3.
      t38 = t39->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      CLEAR t40.
      DATA(t41) = t3.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t42.
      DATA(t43) = t2.
      t42 = t43->get_first_token( ).
      DATA(t44) = |AttributeChain, unexpected first child|.
      DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t45.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t41 i_token = t42 i_message_26cb = t44 i_fix = t45 ).
      t38->load( ).
      APPEND t40 TO t38->items.
      t38->save( ).
      DATA t46 TYPE REF TO zcl_lnt_void_type.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t50->has = abap_true.
        t50->value = t49.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        t47 = t51.
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      t46 = zcl_lnt_void_type=>get_db65( i_voided = t47 i_qualified_name = t52 ).
      result = t46.
      RETURN.
    ENDIF.
    DATA t53 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t55.
    DATA t56 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t56.
    DATA(t57) = t3.
    t56 = t57->scope.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t59.
    DATA(t60) = abap_true.
    IF t60 = abap_true.
      DATA(t61) = VALUE string( ).
      DATA t62 TYPE REF TO zcl_lnt_object_reference_type.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_object_reference_type.
      CLEAR t63.
      DATA(t64) = t1.
      t63 ?= t64.
      t62 = t63.
      DATA(t65) = VALUE string( ).
      DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t66.
      DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t67.
      DATA(t68) = t62.
      t67 = t68->identifier.
      t66 = t67.
      DATA(t69) = VALUE string( ).
      DATA(t70) = VALUE string( ).
      DATA(t71) = VALUE string( ).
      DATA t72 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t73.
      DATA(t74) = t66.
      t73 = t74->token.
      t72 = t73.
      DATA(t75) = VALUE string( ).
      DATA(t76) = t72.
      t75 = t76->str.
      t71 = t75.
      t70 = t71.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE string( ).
      DATA(t79) = t70.
      DATA(t80) = 0.
      DATA(t81) = 1.
      DATA(t82) = strlen( t79 ).
      IF t80 < 0.
        t80 = t80 + t82.
        IF t80 < 0.
          t80 = 0.
        ENDIF.
      ENDIF.
      IF t80 > t82 OR t81 <= 0.
        CLEAR t78.
      ELSE.
        IF t81 > t82 - t80.
          t81 = t82 - t80.
        ENDIF.
        t78 = t79+t80(t81).
      ENDIF.
      DATA(t83) = |!|.
      t77 = xsdbool( t78 = t83 ).
      IF t77 = abap_true.
        DATA(t84) = VALUE string( ).
        DATA(t85) = VALUE string( ).
        DATA(t86) = t70.
        t85 = t86.
        DATA(t87) = VALUE string( ).
        DATA(t88) = t85.
        DATA(t89) = 1.
        DATA(t90) = VALUE i( ).
        DATA(t91) = t85.
        DATA(t92) = strlen( t91 ).
        t90 = t92.
        DATA(t93) = strlen( t88 ).
        IF t89 < 0.
          t89 = t89 + t93.
          IF t89 < 0.
            t89 = 0.
          ENDIF.
        ENDIF.
        IF t89 > t93 OR t90 <= 0.
          CLEAR t87.
        ELSE.
          IF t90 > t93 - t89.
            t90 = t93 - t89.
          ENDIF.
          t87 = t88+t89(t90).
        ENDIF.
        t84 = t87.
        t70 = t84.
      ENDIF.
      DATA(t94) = t70.
      t69 = t94.
      t65 = t69.
      t61 = t65.
      DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t95->has = abap_true.
      t95->value = t61.
      t59 = t95.
    ELSE.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      t59 = t96.
    ENDIF.
    t58 = t59.
    DATA t97 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t97.
    DATA(t98) = VALUE abap_bool( ).
    DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t99.
    DATA(t100) = t58.
    t99 = t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    t101 = t102.
    DATA(t103) = VALUE abap_bool( ).
    DATA(t104) = t99.
    IF t104 IS INITIAL.
      t103 = abap_true.
    ELSEIF t104->has = abap_false.
      t103 = abap_true.
    ENDIF.
    t98 = t103.
    IF t98 = abap_true.
      DATA t105 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t105.
      t97 = t105.
    ELSE.
      DATA t106 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t106.
      DATA t107 TYPE REF TO zif_lnt_class_definition.
      CLEAR t107.
      DATA t108 TYPE REF TO zif_lnt_class_definition.
      CLEAR t108.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t110.
      DATA(t111) = abap_true.
      IF t111 = abap_true.
        DATA(t112) = VALUE string( ).
        DATA(t113) = t58.
        t112 = t113->value.
        DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t114->has = abap_true.
        t114->value = t112.
        t110 = t114.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t110 = t115.
      ENDIF.
      t109 = t110.
      DATA t116 TYPE REF TO zif_lnt_class_definition.
      CLEAR t116.
      DATA(t117) = VALUE abap_bool( ).
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t118.
      DATA(t119) = t109.
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
      ELSEIF t123->has = abap_false.
        t122 = abap_true.
      ENDIF.
      t117 = t122.
      IF t117 = abap_true.
        DATA t124 TYPE REF TO zif_lnt_class_definition.
        CLEAR t124.
        t116 = t124.
      ELSE.
        DATA t125 TYPE REF TO zif_lnt_class_definition.
        CLEAR t125.
        DATA t126 TYPE REF TO zif_lnt_class_definition.
        CLEAR t126.
        DATA t127 TYPE REF TO zif_lnt_class_definition.
        CLEAR t127.
        DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t128.
        DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t129.
        DATA(t130) = t55.
        t129 = t130->current.
        t128 = t129.
        DATA t131 TYPE REF TO zif_lnt_class_definition.
        CLEAR t131.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = t128.
        IF t133 IS INITIAL.
          t132 = abap_true.
        ENDIF.
        IF t132 = abap_true.
          DATA t134 TYPE REF TO zif_lnt_class_definition.
          CLEAR t134.
          t131 = t134.
        ELSE.
          DATA t135 TYPE REF TO zif_lnt_class_definition.
          CLEAR t135.
          DATA t136 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t136.
          DATA(t137) = t128.
          t136 = t137.
          DATA(t138) = VALUE string( ).
          DATA(t139) = t109.
          t138 = t139->value.
          t135 = t136->find_class_definition( i_name = t138 ).
          t131 = t135.
        ENDIF.
        t127 = t131.
        t126 = t127.
        DATA t140 TYPE REF TO zif_lnt_class_definition.
        CLEAR t140.
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = t126.
        t141 = xsdbool( t142 IS BOUND ).
        IF t141 = abap_true.
          DATA t143 TYPE REF TO zif_lnt_class_definition.
          CLEAR t143.
          DATA(t144) = abap_true.
          IF t144 = abap_true.
            DATA t145 TYPE REF TO zif_lnt_class_definition.
            CLEAR t145.
            DATA(t146) = t126.
            t145 = t146.
            t143 = t145.
          ELSE.
            DATA t147 TYPE REF TO zif_lnt_class_definition.
            CLEAR t147.
            t143 = t147.
          ENDIF.
          t140 = t143.
        ELSE.
          DATA t148 TYPE REF TO zif_lnt_class_definition.
          CLEAR t148.
          DATA t149 TYPE REF TO zcl_lnt_class.
          CLEAR t149.
          DATA t150 TYPE REF TO zcl_lnt_class.
          CLEAR t150.
          DATA t151 TYPE REF TO zif_lnt_object.
          CLEAR t151.
          DATA t152 TYPE REF TO zif_lnt_registry.
          CLEAR t152.
          DATA(t153) = t55.
          t152 = t153->reg.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          DATA(t155) = abap_true.
          IF t155 = abap_true.
            DATA(t156) = |CLAS|.
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = t156.
            t154 = t157.
          ELSE.
            DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t158.
            t154 = t158.
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t160) = abap_true.
          IF t160 = abap_true.
            DATA(t161) = VALUE string( ).
            DATA(t162) = t109.
            t161 = t162->value.
            DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t163->has = abap_true.
            t163->value = t161.
            t159 = t163.
          ELSE.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t164.
            t159 = t164.
          ENDIF.
          t151 = t152->get_object( i_type_9913 = t154 i_name = t159 ).
          DATA t165 TYPE REF TO object.
          CLEAR t165.
          t165 = t151.
          t150 ?= t165.
          t149 = t150.
          DATA t166 TYPE REF TO zif_lnt_class_definition.
          CLEAR t166.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = t149.
          t167 = xsdbool( t168 IS BOUND ).
          IF t167 = abap_true.
            DATA t169 TYPE REF TO zif_lnt_class_definition.
            CLEAR t169.
            DATA t170 TYPE REF TO zcl_lnt_class.
            CLEAR t170.
            DATA(t171) = t149.
            t170 = t171.
            t169 = t170->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t166 = t169.
          ELSE.
            DATA t172 TYPE REF TO zif_lnt_class_definition.
            CLEAR t172.
            t166 = t172.
          ENDIF.
          t148 = t166.
          t140 = t148.
        ENDIF.
        t125 = t140.
        t116 = t125.
      ENDIF.
      t108 = t116.
      t107 = t108.
      DATA t173 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t173.
      DATA(t174) = VALUE abap_bool( ).
      DATA(t175) = t107.
      t174 = xsdbool( t175 IS BOUND ).
      IF t174 = abap_true.
        DATA t176 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t176.
        DATA t177 TYPE REF TO zif_lnt_class_definition.
        CLEAR t177.
        DATA(t178) = t107.
        t177 = t178.
        t176 ?= t177.
        t173 = t176.
      ELSE.
        DATA t179 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t179.
        DATA t180 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t180.
        DATA t181 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t181.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        DATA(t184) = abap_true.
        IF t184 = abap_true.
          DATA(t185) = VALUE string( ).
          DATA(t186) = t58.
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
        DATA t189 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t189.
        DATA(t190) = VALUE abap_bool( ).
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        DATA(t192) = t182.
        t191 = t192.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
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
          DATA t197 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t197.
          t189 = t197.
        ELSE.
          DATA t198 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t198.
          DATA t199 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t199.
          DATA t200 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t200.
          DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t201.
          DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t202.
          DATA(t203) = t55.
          t202 = t203->current.
          t201 = t202.
          DATA t204 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t204.
          DATA(t205) = VALUE abap_bool( ).
          DATA(t206) = t201.
          IF t206 IS INITIAL.
            t205 = abap_true.
          ENDIF.
          IF t205 = abap_true.
            DATA t207 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t207.
            t204 = t207.
          ELSE.
            DATA t208 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t208.
            DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t209.
            DATA(t210) = t201.
            t209 = t210.
            DATA(t211) = VALUE string( ).
            DATA(t212) = t182.
            t211 = t212->value.
            t208 = t209->find_interface_definition( i_name = t211 ).
            t204 = t208.
          ENDIF.
          t200 = t204.
          t199 = t200.
          DATA t213 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t213.
          DATA(t214) = VALUE abap_bool( ).
          DATA(t215) = t199.
          t214 = xsdbool( t215 IS BOUND ).
          IF t214 = abap_true.
            DATA t216 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t216.
            DATA(t217) = abap_true.
            IF t217 = abap_true.
              DATA t218 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t218.
              DATA(t219) = t199.
              t218 = t219.
              t216 = t218.
            ELSE.
              DATA t220 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t220.
              t216 = t220.
            ENDIF.
            t213 = t216.
          ELSE.
            DATA t221 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t221.
            DATA t222 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t222.
            DATA t223 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t223.
            DATA t224 TYPE REF TO zif_lnt_object.
            CLEAR t224.
            DATA t225 TYPE REF TO zif_lnt_registry.
            CLEAR t225.
            DATA(t226) = t55.
            t225 = t226->reg.
            DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t227.
            DATA(t228) = abap_true.
            IF t228 = abap_true.
              DATA(t229) = |INTF|.
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
              DATA(t234) = VALUE string( ).
              DATA(t235) = t182.
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
            CLEAR t238.
            t238 = t224.
            t223 ?= t238.
            t222 = t223.
            DATA t239 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t239.
            DATA(t240) = VALUE abap_bool( ).
            DATA(t241) = t222.
            t240 = xsdbool( t241 IS BOUND ).
            IF t240 = abap_true.
              DATA t242 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t242.
              DATA t243 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t243.
              DATA t244 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t244.
              DATA(t245) = t222.
              t244 = t245.
              t243 = t244.
              DATA t246 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t246.
              DATA(t247) = t243.
              t246 = t247->def.
              t242 = t246.
              t239 = t242.
            ELSE.
              DATA t248 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t248.
              t239 = t248.
            ENDIF.
            t221 = t239.
            t213 = t221.
          ENDIF.
          t198 = t213.
          t189 = t198.
        ENDIF.
        t181 = t189.
        t180 = t181.
        DATA t249 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t249.
        DATA(t250) = VALUE abap_bool( ).
        DATA(t251) = t180.
        t250 = xsdbool( t251 IS BOUND ).
        IF t250 = abap_true.
          DATA t252 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t252.
          DATA(t253) = abap_true.
          IF t253 = abap_true.
            DATA t254 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t254.
            DATA(t255) = t180.
            t254 = t255.
            t252 = t254.
          ELSE.
            DATA t256 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t256.
            t252 = t256.
          ENDIF.
          t249 = t252.
        ELSE.
          DATA t257 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t257.
          t249 = t257.
        ENDIF.
        t179 = t249.
        t173 = t179.
      ENDIF.
      t106 = t173.
      t97 = t106.
    ENDIF.
    t54 = t97.
    t53 = t54.
    DATA(t258) = VALUE abap_bool( ).
    DATA t259 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t259.
    DATA(t260) = t53.
    t259 = t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    t261 = t262.
    DATA(t263) = VALUE abap_bool( ).
    DATA(t264) = t259.
    IF t264 IS INITIAL.
      t263 = abap_true.
    ENDIF.
    t258 = t263.
    IF t258 = abap_true.
      DATA(t265) = VALUE string( ).
      DATA(t266) = VALUE string( ).
      DATA(t267) = VALUE string( ).
      DATA(t268) = |Definition for "|.
      DATA(t269) = VALUE string( ).
      DATA t270 TYPE REF TO zcl_lnt_object_reference_type.
      CLEAR t270.
      DATA t271 TYPE REF TO zcl_lnt_object_reference_type.
      CLEAR t271.
      DATA(t272) = t1.
      t271 ?= t272.
      t270 = t271.
      DATA(t273) = VALUE string( ).
      DATA t274 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t274.
      DATA t275 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t275.
      DATA(t276) = t270.
      t275 = t276->identifier.
      t274 = t275.
      DATA(t277) = VALUE string( ).
      DATA(t278) = VALUE string( ).
      DATA(t279) = VALUE string( ).
      DATA t280 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t280.
      DATA t281 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t281.
      DATA(t282) = t274.
      t281 = t282->token.
      t280 = t281.
      DATA(t283) = VALUE string( ).
      DATA(t284) = t280.
      t283 = t284->str.
      t279 = t283.
      t278 = t279.
      DATA(t285) = VALUE abap_bool( ).
      DATA(t286) = VALUE string( ).
      DATA(t287) = t278.
      DATA(t288) = 0.
      DATA(t289) = 1.
      DATA(t290) = strlen( t287 ).
      IF t288 < 0.
        t288 = t288 + t290.
        IF t288 < 0.
          t288 = 0.
        ENDIF.
      ENDIF.
      IF t288 > t290 OR t289 <= 0.
        CLEAR t286.
      ELSE.
        IF t289 > t290 - t288.
          t289 = t290 - t288.
        ENDIF.
        t286 = t287+t288(t289).
      ENDIF.
      DATA(t291) = |!|.
      t285 = xsdbool( t286 = t291 ).
      IF t285 = abap_true.
        DATA(t292) = VALUE string( ).
        DATA(t293) = VALUE string( ).
        DATA(t294) = t278.
        t293 = t294.
        DATA(t295) = VALUE string( ).
        DATA(t296) = t293.
        DATA(t297) = 1.
        DATA(t298) = VALUE i( ).
        DATA(t299) = t293.
        DATA(t300) = strlen( t299 ).
        t298 = t300.
        DATA(t301) = strlen( t296 ).
        IF t297 < 0.
          t297 = t297 + t301.
          IF t297 < 0.
            t297 = 0.
          ENDIF.
        ENDIF.
        IF t297 > t301 OR t298 <= 0.
          CLEAR t295.
        ELSE.
          IF t298 > t301 - t297.
            t298 = t301 - t297.
          ENDIF.
          t295 = t296+t297(t298).
        ENDIF.
        t292 = t295.
        t278 = t292.
      ENDIF.
      DATA(t302) = t278.
      t277 = t302.
      t273 = t277.
      t269 = t273.
      DATA(t303) = strlen( t268 ).
      t267 = |{ t268 }{ t269 }|.
      DATA(t304) = |" not found in scope(AttributeChain)|.
      DATA(t305) = strlen( t267 ).
      t266 = |{ t267 }{ t304 }|.
      t265 = t266.
      DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t306.
      DATA(t307) = t3.
      t306 = t307->issues.
      DATA t308 TYPE REF TO zcl_lnt_issue.
      CLEAR t308.
      DATA(t309) = t3.
      DATA t310 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t310.
      DATA(t311) = t2.
      t310 = t311->get_first_token( ).
      DATA(t312) = t265.
      DATA t313 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t313.
      t308 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t309 i_token = t310 i_message_26cb = t312 i_fix = t313 ).
      t306->load( ).
      APPEND t308 TO t306->items.
      t306->save( ).
      DATA t314 TYPE REF TO zcl_lnt_void_type.
      CLEAR t314.
      DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t315.
      DATA(t316) = abap_true.
      IF t316 = abap_true.
        DATA(t317) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t318) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t318->has = abap_true.
        t318->value = t317.
        t315 = t318.
      ELSE.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t319.
        t315 = t319.
      ENDIF.
      DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t320.
      t314 = zcl_lnt_void_type=>get_db65( i_voided = t315 i_qualified_name = t320 ).
      result = t314.
      RETURN.
    ENDIF.
    DATA t321 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t321.
    DATA t322 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t322.
    DATA(t323) = t27.
    t322 = t323->get_first_token( ).
    t321 = t322.
    DATA(t324) = VALUE string( ).
    DATA(t325) = VALUE string( ).
    DATA t326 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t326.
    DATA(t327) = t321.
    t326 = t327.
    DATA(t328) = VALUE string( ).
    DATA(t329) = t326.
    t328 = t329->str.
    t325 = t328.
    t324 = t325.
    DATA t330 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t330.
    DATA t331 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t331.
    DATA t332 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t332.
    DATA(t333) = t3.
    t332 = t333->scope.
    t331 = NEW zcl_lnt_object_oriented( i_scope = t332 ).
    t330 = t331.
    DATA t334 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t334.
    DATA t335 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t335.
    DATA(t336) = t330.
    DATA t337 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t337.
    DATA(t338) = abap_true.
    IF t338 = abap_true.
      DATA t339 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t339.
      DATA(t340) = t53.
      t339 = t340.
      t337 = t339.
    ELSE.
      DATA t341 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t341.
      t337 = t341.
    ENDIF.
    DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t342.
    DATA(t343) = abap_true.
    IF t343 = abap_true.
      DATA(t344) = t324.
      DATA(t345) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t345->has = abap_true.
      t345->value = t344.
      t342 = t345.
    ELSE.
      DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t346.
      t342 = t346.
    ENDIF.
    t335 = t336->search_attribute_name( i_def = t337 i_name = t342 ).
    t334 = t335.
    DATA(t347) = VALUE abap_bool( ).
    DATA t348 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t348.
    DATA(t349) = t334.
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
    IF t347 = abap_true.
      DATA t354 TYPE REF TO zcl_lnt_class_constant.
      CLEAR t354.
      DATA(t355) = t330.
      DATA t356 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t356.
      DATA(t357) = abap_true.
      IF t357 = abap_true.
        DATA t358 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t358.
        DATA(t359) = t53.
        t358 = t359.
        t356 = t358.
      ELSE.
        DATA t360 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t360.
        t356 = t360.
      ENDIF.
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t361.
      DATA(t362) = abap_true.
      IF t362 = abap_true.
        DATA(t363) = t324.
        DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t364->has = abap_true.
        t364->value = t363.
        t361 = t364.
      ELSE.
        DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t365.
        t361 = t365.
      ENDIF.
      t354 = t355->search_constant_name( i_def = t356 i_name = t361 ).
      t334 = t354.
    ENDIF.
    DATA(t366) = VALUE abap_bool( ).
    DATA t367 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t367.
    DATA(t368) = t334.
    t367 = t368.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    t369 = t370.
    DATA(t371) = VALUE abap_bool( ).
    DATA(t372) = t367.
    IF t372 IS INITIAL.
      t371 = abap_true.
    ENDIF.
    t366 = t371.
    IF t366 = abap_true.
      DATA(t373) = VALUE string( ).
      DATA(t374) = VALUE string( ).
      DATA(t375) = VALUE string( ).
      DATA(t376) = VALUE string( ).
      DATA(t377) = VALUE string( ).
      DATA(t378) = |Attribute or constant "|.
      DATA(t379) = t324.
      DATA(t380) = strlen( t378 ).
      t377 = |{ t378 }{ t379 }|.
      DATA(t381) = |" not found in "|.
      DATA(t382) = strlen( t377 ).
      t376 = |{ t377 }{ t381 }|.
      DATA(t383) = VALUE string( ).
      DATA t384 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t384.
      DATA(t385) = t53.
      t384 = t385.
      t383 = t384->get_name( ).
      DATA(t386) = strlen( t376 ).
      t375 = |{ t376 }{ t383 }|.
      DATA(t387) = |"|.
      DATA(t388) = strlen( t375 ).
      t374 = |{ t375 }{ t387 }|.
      t373 = t374.
      DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t389.
      DATA(t390) = t3.
      t389 = t390->issues.
      DATA t391 TYPE REF TO zcl_lnt_issue.
      CLEAR t391.
      DATA(t392) = t3.
      DATA(t393) = t321.
      DATA(t394) = t373.
      DATA t395 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t395.
      t391 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t392 i_token = t393 i_message_26cb = t394 i_fix = t395 ).
      t389->load( ).
      APPEND t391 TO t389->items.
      t389->save( ).
      DATA t396 TYPE REF TO zcl_lnt_void_type.
      CLEAR t396.
      DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t397.
      DATA(t398) = abap_true.
      IF t398 = abap_true.
        DATA(t399) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t400) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t400->has = abap_true.
        t400->value = t399.
        t397 = t400.
      ELSE.
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t401.
        t397 = t401.
      ENDIF.
      DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t402.
      t396 = zcl_lnt_void_type=>get_db65( i_voided = t397 i_qualified_name = t402 ).
      result = t396.
      RETURN.
    ENDIF.
    DATA(t403) = t4.
    DATA(t404) = VALUE string( ).
    t403->dense( ).
    DATA(t405) = VALUE i( ).
    DO.
      t403->load( ).
      IF t405 >= lines( t403->items ).
        EXIT.
      ENDIF.
      CLEAR t404.
      READ TABLE t403->items INDEX t405 + 1 INTO t404.
      IF t403->has( t405 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t405 = t405 + 1.
      DATA t406 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t406.
      DATA(t407) = t3.
      t406 = t407->scope.
      DATA t408 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t408.
      DATA(t409) = abap_true.
      IF t409 = abap_true.
        DATA(t410) = t321.
        t408 = t410.
      ELSE.
        DATA t411 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t411.
        t408 = t411.
      ENDIF.
      DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t412.
      DATA(t413) = t334.
      t412 = t413.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      DATA(t415) = t404.
      CLEAR t414.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t414->sval = t415.
      DATA(t416) = VALUE string( ).
      DATA(t417) = t3.
      t416 = t417->filename.
      DATA t418 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t418.
      t406->add_reference( i_usage = t408 i_referencing = t412 i_type_9913 = t414 i_filename = t416 i_extra = t418 ).
    ENDDO.
    DATA t419 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t419.
    DATA t420 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t420.
    DATA(t421) = abap_true.
    IF t421 = abap_true.
      DATA t422 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t422.
      DATA t423 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t423.
      DATA t424 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t424.
      DATA(t425) = t334.
      t424 = t425.
      t423 = t424.
      DATA t426 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t426.
      DATA(t427) = t423.
      t426 = t427->type_cba0.
      t422 = t426.
      t420 = t422.
    ELSE.
      DATA t428 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t428.
      t420 = t428.
    ENDIF.
    t419 = t420.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t430.
    DATA(t431) = t2.
    t430 = t431->get_children( ).
    t429 = t430.
    DATA(t432) = VALUE i( ).
    DATA(t433) = 1.
    t432 = t433.
    DO.
      DATA(t434) = VALUE abap_bool( ).
      DATA(t435) = t432.
      DATA(t436) = VALUE i( ).
      DATA(t437) = t429.
      t437->load( ).
      t436 = lines( t437->items ).
      t434 = xsdbool( t435 < t436 ).
      IF t434 = abap_false.
        EXIT.
      ENDIF.
      DATA t438 TYPE REF TO zif_lnt_node.
      CLEAR t438.
      DATA t439 TYPE REF TO zif_lnt_node.
      CLEAR t439.
      DATA(t440) = t429.
      DATA(t441) = t432.
      t441 = t441 + 1.
      DATA t442 TYPE REF TO object.
      CLEAR t442.
      t440->load( ).
      CLEAR t442.
      READ TABLE t440->items INDEX t441 INTO t442.
      DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t443.
      CLEAR t439.
      IF t442 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t443 ?= t442.
        DATA t444 TYPE REF TO object.
        CLEAR t444.
        t444 = t443->as_ref( ).
        t439 ?= t444.
      ELSE.
        t439 ?= t442.
      ENDIF.
      t438 = t439.
      DATA(t445) = VALUE abap_bool( ).
      DATA(t446) = VALUE abap_bool( ).
      DATA(t447) = t419.
      t446 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_void_type ).
      t445 = t446.
      IF t446 = abap_false.
        DATA(t448) = VALUE abap_bool( ).
        DATA(t449) = t419.
        t448 = xsdbool( t449 IS BOUND AND t449 IS INSTANCE OF zcl_lnt_unknown_type ).
        t445 = t448.
      ENDIF.
      IF t445 = abap_true.
        DATA t450 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t450.
        DATA(t451) = abap_true.
        IF t451 = abap_true.
          DATA t452 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t452.
          DATA t453 TYPE REF TO zif_lnt_union_adffe656.
          CLEAR t453.
          DATA t454 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t454.
          DATA(t455) = t419.
          t454 = t455.
          t453 ?= t454.
          t452 ?= t453.
          t450 = t452.
        ELSE.
          DATA t456 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t456.
          t450 = t456.
        ENDIF.
        result = t450.
        RETURN.
      ELSE.
        DATA(t457) = VALUE abap_bool( ).
        DATA t458 TYPE REF TO object.
        CLEAR t458.
        DATA(t459) = t438.
        t458 = t459->get_db65( ).
        t457 = xsdbool( t458 IS BOUND AND t458 IS INSTANCE OF zcl_lnt_arrow_or_dash ).
        IF t457 = abap_true.
          DATA(t460) = VALUE string( ).
          DATA(t461) = VALUE string( ).
          DATA t462 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t462.
          DATA t463 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t463.
          DATA(t464) = t438.
          t463 = t464->get_first_token( ).
          t462 = t463.
          DATA(t465) = VALUE string( ).
          DATA(t466) = t462.
          t465 = t466->str.
          t461 = t465.
          t460 = t461.
          DATA(t467) = VALUE abap_bool( ).
          DATA(t468) = VALUE abap_bool( ).
          DATA(t469) = t460.
          DATA(t470) = |-|.
          t468 = xsdbool( t469 = t470 ).
          t467 = t468.
          IF t468 = abap_true.
            DATA(t471) = VALUE abap_bool( ).
            DATA(t472) = VALUE abap_bool( ).
            DATA(t473) = t419.
            t472 = xsdbool( t473 IS BOUND AND t473 IS INSTANCE OF zcl_lnt_structure_type ).
            t471 = xsdbool( t472 = abap_false ).
            t467 = t471.
          ENDIF.
          IF t467 = abap_true.
            DATA t474 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t474.
            DATA(t475) = t3.
            t474 = t475->issues.
            DATA t476 TYPE REF TO zcl_lnt_issue.
            CLEAR t476.
            DATA(t477) = t3.
            DATA t478 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t478.
            DATA(t479) = t438.
            t478 = t479->get_first_token( ).
            DATA(t480) = |AttributeChain, not a structure|.
            DATA t481 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t481.
            t476 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t477 i_token = t478 i_message_26cb = t480 i_fix = t481 ).
            t474->load( ).
            APPEND t476 TO t474->items.
            t474->save( ).
            DATA t482 TYPE REF TO zcl_lnt_void_type.
            CLEAR t482.
            DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t483.
            DATA(t484) = abap_true.
            IF t484 = abap_true.
              DATA(t485) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t486) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t486->has = abap_true.
              t486->value = t485.
              t483 = t486.
            ELSE.
              DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t487.
              t483 = t487.
            ENDIF.
            DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t488.
            t482 = zcl_lnt_void_type=>get_db65( i_voided = t483 i_qualified_name = t488 ).
            result = t482.
            RETURN.
          ELSE.
            DATA(t489) = VALUE abap_bool( ).
            DATA(t490) = VALUE abap_bool( ).
            DATA(t491) = VALUE abap_bool( ).
            DATA(t492) = VALUE abap_bool( ).
            DATA(t493) = t460.
            DATA(t494) = |->|.
            t492 = xsdbool( t493 = t494 ).
            t491 = t492.
            IF t492 = abap_false.
              DATA(t495) = VALUE abap_bool( ).
              DATA(t496) = t460.
              DATA(t497) = |=>|.
              t495 = xsdbool( t496 = t497 ).
              t491 = t495.
            ENDIF.
            t490 = t491.
            IF t491 = abap_true.
              DATA(t498) = VALUE abap_bool( ).
              DATA(t499) = VALUE abap_bool( ).
              DATA(t500) = t419.
              t499 = xsdbool( t500 IS BOUND AND t500 IS INSTANCE OF zcl_lnt_object_reference_type ).
              t498 = xsdbool( t499 = abap_false ).
              t490 = t498.
            ENDIF.
            t489 = t490.
            IF t490 = abap_true.
              DATA(t501) = VALUE abap_bool( ).
              DATA(t502) = VALUE abap_bool( ).
              DATA(t503) = t419.
              t502 = xsdbool( t503 IS BOUND AND t503 IS INSTANCE OF zcl_lnt_data_reference ).
              t501 = xsdbool( t502 = abap_false ).
              t489 = t501.
            ENDIF.
            IF t489 = abap_true.
              DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t504.
              DATA(t505) = t3.
              t504 = t505->issues.
              DATA t506 TYPE REF TO zcl_lnt_issue.
              CLEAR t506.
              DATA(t507) = t3.
              DATA t508 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t508.
              DATA(t509) = t438.
              t508 = t509->get_first_token( ).
              DATA(t510) = |AttributeChain, not a reference|.
              DATA t511 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t511.
              t506 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t507 i_token = t508 i_message_26cb = t510 i_fix = t511 ).
              t504->load( ).
              APPEND t506 TO t504->items.
              t504->save( ).
              DATA t512 TYPE REF TO zcl_lnt_void_type.
              CLEAR t512.
              DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t513.
              DATA(t514) = abap_true.
              IF t514 = abap_true.
                DATA(t515) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t516) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t516->has = abap_true.
                t516->value = t515.
                t513 = t516.
              ELSE.
                DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t517.
                t513 = t517.
              ENDIF.
              DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t518.
              t512 = zcl_lnt_void_type=>get_db65( i_voided = t513 i_qualified_name = t518 ).
              result = t512.
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t519) = VALUE abap_bool( ).
          DATA t520 TYPE REF TO object.
          CLEAR t520.
          DATA(t521) = t438.
          t520 = t521->get_db65( ).
          t519 = xsdbool( t520 IS BOUND AND t520 IS INSTANCE OF zcl_lnt_st_component_name ).
          IF t519 = abap_true.
            DATA(t522) = VALUE abap_bool( ).
            DATA(t523) = VALUE abap_bool( ).
            DATA(t524) = t419.
            t523 = xsdbool( t524 IS BOUND AND t524 IS INSTANCE OF zcl_lnt_object_reference_type ).
            t522 = t523.
            IF t523 = abap_false.
              DATA(t525) = VALUE abap_bool( ).
              DATA(t526) = t419.
              t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_data_reference ).
              t522 = t525.
            ENDIF.
            IF t522 = abap_true.
              DATA t527 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t527.
              DATA t528 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t528.
              DATA(t529) = abap_true.
              IF t529 = abap_true.
                DATA t530 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t530.
                DATA t531 TYPE REF TO zif_lnt_union_168ba5e4.
                CLEAR t531.
                DATA t532 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t532.
                DATA(t533) = t419.
                t532 = t533.
                t531 ?= t532.
                t530 ?= t531.
                t528 = t530.
              ELSE.
                DATA t534 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t534.
                t528 = t534.
              ENDIF.
              DATA(t535) = t438.
              DATA(t536) = t3.
              DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t537.
              DATA(t538) = abap_true.
              IF t538 = abap_true.
                DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t539.
                DATA(t540) = t4.
                CLEAR t539.
                IF t540 IS BOUND.
                  DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t541.
                  DATA t542 TYPE REF TO object.
                  CLEAR t542.
                  CLEAR t541.
                  t542 = t540.
                  TRY.
                      t539 ?= t542.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t539 IS NOT BOUND.
                    TRY.
                        t541 ?= t540.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t541 IS BOUND.
                      t539 = t541->source( ).
                    ENDIF.
                    IF t539 IS NOT BOUND.
                      CREATE OBJECT t539.
                      t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t539->oval = t540.
                    ENDIF.
                  ENDIF.
                ENDIF.
                t537 = t539.
              ELSE.
                DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t543.
                t537 = t543.
              ENDIF.
              DATA t544 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t544.
              t527 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t528 i_node = t535 i_input_967e = t536 i_type_9913 = t537 i_error = t544 ).
              t419 = t527.
            ELSE.
              DATA t545 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t545.
              DATA(t546) = t419.
              DATA(t547) = t438.
              DATA(t548) = t3.
              t545 = zcl_lnt_sy_component_name=>run_syntax( i_context = t546 i_node = t547 i_input_967e = t548 ).
              t419 = t545.
            ENDIF.
          ELSE.
            DATA(t549) = VALUE abap_bool( ).
            DATA(t550) = VALUE abap_bool( ).
            DATA(t551) = VALUE string( ).
            DATA t552 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t552.
            DATA t553 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t553.
            DATA(t554) = t438.
            t553 = t554->get_first_token( ).
            t552 = t553.
            DATA(t555) = VALUE string( ).
            DATA(t556) = t552.
            t555 = t556->str.
            t551 = t555.
            DATA(t557) = |*|.
            t550 = xsdbool( t551 = t557 ).
            t549 = t550.
            IF t550 = abap_true.
              DATA(t558) = VALUE abap_bool( ).
              DATA(t559) = t419.
              t558 = xsdbool( t559 IS BOUND AND t559 IS INSTANCE OF zcl_lnt_data_reference ).
              t549 = t558.
            ENDIF.
            IF t549 = abap_true.
              DATA t560 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t560.
              DATA(t561) = abap_true.
              IF t561 = abap_true.
                DATA t562 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t562.
                DATA t563 TYPE REF TO zcl_lnt_data_reference.
                CLEAR t563.
                DATA t564 TYPE REF TO zcl_lnt_data_reference.
                CLEAR t564.
                DATA(t565) = t419.
                t564 ?= t565.
                t563 = t564.
                DATA t566 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t566.
                DATA(t567) = t563.
                t566 = t567->type_cba0.
                t562 = t566.
                t560 = t562.
              ELSE.
                DATA t568 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t568.
                t560 = t568.
              ENDIF.
              t419 = t560.
            ELSE.
              DATA(t569) = VALUE abap_bool( ).
              DATA(t570) = VALUE abap_bool( ).
              DATA(t571) = t438.
              t570 = xsdbool( t571 IS BOUND AND t571 IS INSTANCE OF zcl_lnt_expression_node ).
              t569 = t570.
              IF t570 = abap_true.
                DATA(t572) = VALUE abap_bool( ).
                DATA t573 TYPE REF TO zif_lnt_statement_runnable.
                CLEAR t573.
                DATA t574 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t574.
                DATA(t575) = t438.
                DATA t576 TYPE REF TO object.
                CLEAR t576.
                t576 = t575.
                t574 ?= t576.
                t573 = t574->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                t572 = xsdbool( t573 IS BOUND AND t573 IS INSTANCE OF zcl_lnt_st_table_expression ).
                t569 = t572.
              ENDIF.
              IF t569 = abap_true.
                DATA(t577) = VALUE abap_bool( ).
                DATA(t578) = VALUE abap_bool( ).
                DATA(t579) = t419.
                t578 = xsdbool( t579 IS BOUND AND t579 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t577 = xsdbool( t578 = abap_false ).
                IF t577 = abap_true.
                  DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t580.
                  DATA(t581) = t3.
                  t580 = t581->issues.
                  DATA t582 TYPE REF TO zcl_lnt_issue.
                  CLEAR t582.
                  DATA(t583) = t3.
                  DATA t584 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t584.
                  DATA t585 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t585.
                  DATA(t586) = t438.
                  DATA t587 TYPE REF TO object.
                  CLEAR t587.
                  t587 = t586.
                  t585 ?= t587.
                  t584 = t585->get_first_token( ).
                  DATA(t588) = |Table expression, expected table|.
                  DATA t589 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t589.
                  t582 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t583 i_token = t584 i_message_26cb = t588 i_fix = t589 ).
                  t580->load( ).
                  APPEND t582 TO t580->items.
                  t580->save( ).
                  DATA t590 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t590.
                  DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t591.
                  DATA(t592) = abap_true.
                  IF t592 = abap_true.
                    DATA(t593) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t594) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t594->has = abap_true.
                    t594->value = t593.
                    t591 = t594.
                  ELSE.
                    DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t595.
                    t591 = t595.
                  ENDIF.
                  DATA t596 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t596.
                  t590 = zcl_lnt_void_type=>get_db65( i_voided = t591 i_qualified_name = t596 ).
                  result = t590.
                  RETURN.
                ENDIF.
                DATA t597 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t597.
                DATA(t598) = abap_true.
                IF t598 = abap_true.
                  DATA t599 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t599.
                  DATA(t600) = t438.
                  DATA t601 TYPE REF TO object.
                  CLEAR t601.
                  t601 = t600.
                  t599 ?= t601.
                  t597 = t599.
                ELSE.
                  DATA t602 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t602.
                  t597 = t602.
                ENDIF.
                DATA(t603) = t3.
                DATA t604 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t604.
                DATA(t605) = t419.
                t604 ?= t605.
                zcl_lnt_sy_table_expression=>run_syntax( i_node = t597 i_input_967e = t603 i_row_type = t604 ).
                DATA t606 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t606.
                DATA(t607) = abap_true.
                IF t607 = abap_true.
                  DATA t608 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t608.
                  DATA t609 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t609.
                  DATA t610 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t610.
                  DATA(t611) = t419.
                  t610 ?= t611.
                  t609 = t610.
                  DATA t612 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t612.
                  DATA(t613) = t609.
                  t612 = t613->row_type.
                  t608 = t612.
                  t606 = t608.
                ELSE.
                  DATA t614 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t614.
                  t606 = t614.
                ENDIF.
                t419 = t606.
              ELSE.
                DATA(t615) = VALUE abap_bool( ).
                DATA(t616) = VALUE abap_bool( ).
                DATA(t617) = t438.
                t616 = xsdbool( t617 IS BOUND AND t617 IS INSTANCE OF zcl_lnt_expression_node ).
                t615 = t616.
                IF t616 = abap_true.
                  DATA(t618) = VALUE abap_bool( ).
                  DATA t619 TYPE REF TO zif_lnt_statement_runnable.
                  CLEAR t619.
                  DATA t620 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t620.
                  DATA(t621) = t438.
                  DATA t622 TYPE REF TO object.
                  CLEAR t622.
                  t622 = t621.
                  t620 ?= t622.
                  t619 = t620->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t618 = xsdbool( t619 IS BOUND AND t619 IS INSTANCE OF zcl_lnt_st_field_offset ).
                  t615 = t618.
                ENDIF.
                IF t615 = abap_true.
                  DATA t623 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t623.
                  DATA t624 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t624.
                  DATA t625 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t625.
                  DATA(t626) = t438.
                  DATA t627 TYPE REF TO object.
                  CLEAR t627.
                  t627 = t626.
                  t625 ?= t627.
                  DATA(t628) = t3.
                  t624 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t625 i_input_967e = t628 ).
                  t623 = t624.
                  DATA(t629) = VALUE abap_bool( ).
                  DATA t630 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t630.
                  DATA(t631) = t623.
                  t630 = t631.
                  DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t632.
                  DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t633.
                  t632 = t633.
                  DATA(t634) = VALUE abap_bool( ).
                  DATA(t635) = VALUE abap_bool( ).
                  DATA(t636) = t630.
                  IF t636 IS INITIAL.
                    t635 = abap_true.
                  ELSEIF t636->has = abap_false.
                    t635 = abap_true.
                  ENDIF.
                  t634 = xsdbool( t635 = abap_false ).
                  t629 = t634.
                  IF t629 = abap_true.
                    DATA(t637) = VALUE abap_bool( ).
                    DATA(t638) = t419.
                    t637 = xsdbool( t638 IS BOUND AND t638 IS INSTANCE OF zcl_lnt_character_type ).
                    IF t637 = abap_true.
                      DATA t639 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t639.
                      DATA(t640) = VALUE f( ).
                      DATA(t641) = VALUE f( ).
                      DATA t642 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t642.
                      DATA t643 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t643.
                      DATA(t644) = t419.
                      t643 ?= t644.
                      t642 = t643.
                      DATA(t645) = VALUE f( ).
                      DATA(t646) = t642.
                      t645 = t646->length.
                      t641 = t645.
                      DATA(t647) = VALUE f( ).
                      DATA(t648) = t623.
                      IF t648->number_special <> 0.
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      t647 = t648->value.
                      t640 = t641 - t647.
                      DATA t649 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t649.
                      t639 = NEW zcl_lnt_character_type( i_length = t640 i_extra = t649 ).
                      t419 = t639.
                    ELSE.
                      DATA(t650) = VALUE abap_bool( ).
                      DATA(t651) = t419.
                      t650 = xsdbool( t651 IS BOUND AND t651 IS INSTANCE OF zcl_lnt_hex_type ).
                      IF t650 = abap_true.
                        DATA t652 TYPE REF TO zcl_lnt_hex_type.
                        CLEAR t652.
                        DATA(t653) = VALUE f( ).
                        DATA(t654) = VALUE f( ).
                        DATA t655 TYPE REF TO zcl_lnt_hex_type.
                        CLEAR t655.
                        DATA t656 TYPE REF TO zcl_lnt_hex_type.
                        CLEAR t656.
                        DATA(t657) = t419.
                        t656 ?= t657.
                        t655 = t656.
                        DATA(t658) = VALUE f( ).
                        DATA(t659) = t655.
                        t658 = t659->length.
                        t654 = t658.
                        DATA(t660) = VALUE f( ).
                        DATA(t661) = t623.
                        IF t661->number_special <> 0.
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        t660 = t661->value.
                        t653 = t654 - t660.
                        DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t662.
                        t652 = NEW zcl_lnt_hex_type( i_length = t653 i_qualified_name = t662 ).
                        t419 = t652.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ELSE.
                  DATA(t663) = VALUE abap_bool( ).
                  DATA(t664) = VALUE abap_bool( ).
                  DATA(t665) = t438.
                  t664 = xsdbool( t665 IS BOUND AND t665 IS INSTANCE OF zcl_lnt_expression_node ).
                  t663 = t664.
                  IF t664 = abap_true.
                    DATA(t666) = VALUE abap_bool( ).
                    DATA t667 TYPE REF TO zif_lnt_statement_runnable.
                    CLEAR t667.
                    DATA t668 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t668.
                    DATA(t669) = t438.
                    DATA t670 TYPE REF TO object.
                    CLEAR t670.
                    t670 = t669.
                    t668 ?= t670.
                    t667 = t668->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                    t666 = xsdbool( t667 IS BOUND AND t667 IS INSTANCE OF zcl_lnt_st_field_length ).
                    t663 = t666.
                  ENDIF.
                  IF t663 = abap_true.
                    DATA t671 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t671.
                    DATA t672 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t672.
                    DATA t673 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t673.
                    DATA(t674) = t438.
                    DATA t675 TYPE REF TO object.
                    CLEAR t675.
                    t675 = t674.
                    t673 ?= t675.
                    DATA(t676) = t3.
                    t672 = zcl_lnt_sy_field_length=>run_syntax( i_node = t673 i_input_967e = t676 ).
                    t671 = t672.
                    DATA(t677) = VALUE abap_bool( ).
                    DATA t678 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t678.
                    DATA(t679) = t671.
                    t678 = t679.
                    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t680.
                    DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t681.
                    t680 = t681.
                    DATA(t682) = VALUE abap_bool( ).
                    DATA(t683) = VALUE abap_bool( ).
                    DATA(t684) = t678.
                    IF t684 IS INITIAL.
                      t683 = abap_true.
                    ELSEIF t684->has = abap_false.
                      t683 = abap_true.
                    ENDIF.
                    t682 = xsdbool( t683 = abap_false ).
                    t677 = t682.
                    IF t677 = abap_true.
                      DATA(t685) = VALUE abap_bool( ).
                      DATA(t686) = t419.
                      t685 = xsdbool( t686 IS BOUND AND t686 IS INSTANCE OF zcl_lnt_character_type ).
                      IF t685 = abap_true.
                        DATA t687 TYPE REF TO zcl_lnt_character_type.
                        CLEAR t687.
                        DATA(t688) = VALUE f( ).
                        DATA(t689) = t671.
                        IF t689->number_special <> 0.
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        t688 = t689->value.
                        DATA t690 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t690.
                        t687 = NEW zcl_lnt_character_type( i_length = t688 i_extra = t690 ).
                        t419 = t687.
                      ELSE.
                        DATA(t691) = VALUE abap_bool( ).
                        DATA(t692) = t419.
                        t691 = xsdbool( t692 IS BOUND AND t692 IS INSTANCE OF zcl_lnt_hex_type ).
                        IF t691 = abap_true.
                          DATA t693 TYPE REF TO zcl_lnt_hex_type.
                          CLEAR t693.
                          DATA(t694) = VALUE f( ).
                          DATA(t695) = t671.
                          IF t695->number_special <> 0.
                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                          ENDIF.
                          t694 = t695->value.
                          DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t696.
                          t693 = NEW zcl_lnt_hex_type( i_length = t694 i_qualified_name = t696 ).
                          t419 = t693.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t697) = VALUE i( ).
      DATA(t698) = t432.
      DATA(t699) = 1.
      t697 = t698 + t699.
      t432 = t697.
    ENDDO.
    DATA(t700) = t419.
    result = t700.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d783_4fa93caf800d.
  ENDMETHOD.
ENDCLASS.
