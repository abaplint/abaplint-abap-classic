* TS: src/abap/5_syntax/expressions/attribute_chain.ts:18:1 AttributeChain
CLASS zcl_lnt_sy_attribute_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_input_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_attribute_chain IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_input_context.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_type_9913.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_void_type ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_void_type.
      DATA(t8) = t1.
      t7 ?= t8.
      result = t7.
      RETURN.
    ELSE.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t1.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_object_reference_type ).
      t9 = xsdbool( t10 = abap_false ).
      IF t9 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t13) = t3.
        t12 = t13->issues.
        DATA t14 TYPE REF TO zcl_lnt_issue.
        DATA(t15) = t3.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t17) = t2.
        t16 = t17->get_first_token( ).
        DATA(t18) = |Not an object reference(AttributeChain)|.
        DATA t19 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t19.
        t14 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t15 i_token = t16 i_message_26cb = t18 i_fix = t19 ).
        APPEND t14 TO t12->items.
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
    DATA t28 TYPE REF TO zif_lnt_node.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = t2.
    t29 = t30->get_children( ).
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    READ TABLE t29->items INDEX 1 INTO t31.
    t28 ?= t31.
    t27 = t28.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE REF TO object.
    DATA(t35) = t27.
    t34 = t35->get_db65( ).
    t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_attribute_name ).
    t32 = xsdbool( t33 = abap_false ).
    IF t32 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = t3.
      t36 = t37->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA(t39) = t3.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = t2.
      t40 = t41->get_first_token( ).
      DATA(t42) = |AttributeChain, unexpected first child|.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t43.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t39 i_token = t40 i_message_26cb = t42 i_fix = t43 ).
      APPEND t38 TO t36->items.
      DATA t44 TYPE REF TO zcl_lnt_void_type.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA(t47) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t47.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t45 = t49.
      ENDIF.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      t44 = zcl_lnt_void_type=>get_db65( i_voided = t45 i_qualified_name = t50 ).
      result = t44.
      RETURN.
    ENDIF.
    DATA t51 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_current_scope.
    DATA t54 TYPE REF TO zcl_lnt_current_scope.
    DATA(t55) = t3.
    t54 = t55->scope.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t57.
    DATA(t58) = abap_true.
    IF t58 = abap_true.
      DATA(t59) = VALUE string( ).
      DATA t60 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t61 TYPE REF TO zcl_lnt_object_reference_type.
      DATA(t62) = t1.
      t61 ?= t62.
      t60 = t61.
      DATA(t63) = VALUE string( ).
      DATA t64 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t66) = t60.
      t65 = t66->identifier.
      t64 = t65.
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE string.
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t72) = t64.
      t71 = t72->token.
      t70 = t71.
      DATA t73 TYPE string.
      DATA(t74) = t70.
      t73 = t74->str.
      t69 = t73.
      t68 = t69.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = VALUE string( ).
      DATA(t77) = t68.
      DATA(t78) = 0.
      DATA(t79) = 1.
      DATA(t80) = strlen( t77 ).
      IF t78 < 0.
        t78 = t78 + t80.
        IF t78 < 0.
          t78 = 0.
        ENDIF.
      ENDIF.
      IF t78 > t80 OR t79 <= 0.
        CLEAR t76.
      ELSE.
        IF t79 > t80 - t78.
          t79 = t80 - t78.
        ENDIF.
        t76 = t77+t78(t79).
      ENDIF.
      DATA(t81) = |!|.
      t75 = xsdbool( t76 = t81 ).
      IF t75 = abap_true.
        DATA(t82) = VALUE string( ).
        DATA t83 TYPE string.
        DATA(t84) = t68.
        t83 = t84.
        DATA(t85) = VALUE string( ).
        DATA(t86) = t83.
        DATA(t87) = 1.
        DATA t88 TYPE i.
        DATA(t89) = t83.
        DATA(t90) = strlen( t89 ).
        t88 = t90.
        DATA(t91) = strlen( t86 ).
        IF t87 < 0.
          t87 = t87 + t91.
          IF t87 < 0.
            t87 = 0.
          ENDIF.
        ENDIF.
        IF t87 > t91 OR t88 <= 0.
          CLEAR t85.
        ELSE.
          IF t88 > t91 - t87.
            t88 = t91 - t87.
          ENDIF.
          t85 = t86+t87(t88).
        ENDIF.
        t82 = t85.
        t68 = t82.
      ENDIF.
      DATA(t92) = t68.
      t67 = t92.
      t63 = t67.
      t59 = t63.
      DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t93->has = abap_true.
      t93->value = t59.
      t57 = t93.
    ELSE.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      t57 = t94.
    ENDIF.
    t56 = t57.
    DATA t95 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t95.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t98) = t56.
    t97 = t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    t99 = t100.
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = t97.
    IF t102 IS INITIAL.
      t101 = abap_true.
    ELSEIF t102->has = abap_false.
      t101 = abap_true.
    ENDIF.
    t96 = t101.
    IF t96 = abap_true.
      DATA t103 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t103.
      t95 = t103.
    ELSE.
      DATA t104 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t104.
      DATA t105 TYPE REF TO zif_lnt_class_definition.
      CLEAR t105.
      DATA t106 TYPE REF TO zif_lnt_class_definition.
      CLEAR t106.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t107.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      DATA(t109) = abap_true.
      IF t109 = abap_true.
        DATA t110 TYPE string.
        DATA(t111) = t56.
        t110 = t111->value.
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t110.
        t108 = t112.
      ELSE.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t108 = t113.
      ENDIF.
      t107 = t108.
      DATA t114 TYPE REF TO zif_lnt_class_definition.
      CLEAR t114.
      DATA(t115) = VALUE abap_bool( ).
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t117) = t107.
      t116 = t117.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      t118 = t119.
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = t116.
      IF t121 IS INITIAL.
        t120 = abap_true.
      ELSEIF t121->has = abap_false.
        t120 = abap_true.
      ENDIF.
      t115 = t120.
      IF t115 = abap_true.
        DATA t122 TYPE REF TO zif_lnt_class_definition.
        CLEAR t122.
        t114 = t122.
      ELSE.
        DATA t123 TYPE REF TO zif_lnt_class_definition.
        CLEAR t123.
        DATA t124 TYPE REF TO zif_lnt_class_definition.
        CLEAR t124.
        DATA t125 TYPE REF TO zif_lnt_class_definition.
        CLEAR t125.
        DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t127 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t128) = t53.
        t127 = t128->current.
        t126 = t127.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        CLEAR t129.
        DATA(t130) = VALUE abap_bool( ).
        DATA(t131) = t126.
        IF t131 IS INITIAL.
          t130 = abap_true.
        ENDIF.
        IF t130 = abap_true.
          DATA t132 TYPE REF TO zif_lnt_class_definition.
          CLEAR t132.
          t129 = t132.
        ELSE.
          DATA t133 TYPE REF TO zif_lnt_class_definition.
          DATA t134 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t135) = t126.
          t134 = t135.
          DATA t136 TYPE string.
          DATA(t137) = t107.
          t136 = t137->value.
          t133 = t134->find_class_definition( i_name = t136 ).
          t129 = t133.
        ENDIF.
        t125 = t129.
        t124 = t125.
        DATA t138 TYPE REF TO zif_lnt_class_definition.
        CLEAR t138.
        DATA t139 TYPE abap_bool.
        DATA(t140) = t124.
        t139 = xsdbool( t140 IS BOUND ).
        IF t139 = abap_true.
          DATA t141 TYPE REF TO zif_lnt_class_definition.
          CLEAR t141.
          DATA(t142) = abap_true.
          IF t142 = abap_true.
            DATA t143 TYPE REF TO zif_lnt_class_definition.
            DATA(t144) = t124.
            t143 = t144.
            t141 = t143.
          ELSE.
            DATA t145 TYPE REF TO zif_lnt_class_definition.
            CLEAR t145.
            t141 = t145.
          ENDIF.
          t138 = t141.
        ELSE.
          DATA t146 TYPE REF TO zif_lnt_class_definition.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_class.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_class.
          CLEAR t148.
          DATA t149 TYPE REF TO zif_lnt_object.
          CLEAR t149.
          DATA t150 TYPE REF TO zif_lnt_registry.
          DATA(t151) = t53.
          t150 = t151->reg.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA(t153) = abap_true.
          IF t153 = abap_true.
            DATA(t154) = |CLAS|.
            DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t155->has = abap_true.
            t155->value = t154.
            t152 = t155.
          ELSE.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            t152 = t156.
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA(t158) = abap_true.
          IF t158 = abap_true.
            DATA t159 TYPE string.
            DATA(t160) = t107.
            t159 = t160->value.
            DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t161->has = abap_true.
            t161->value = t159.
            t157 = t161.
          ELSE.
            DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t162.
            t157 = t162.
          ENDIF.
          t149 = t150->get_object( i_type_9913 = t152 i_name = t157 ).
          DATA t163 TYPE REF TO object.
          t163 = t149.
          t148 ?= t163.
          t147 = t148.
          DATA t164 TYPE REF TO zif_lnt_class_definition.
          CLEAR t164.
          DATA t165 TYPE abap_bool.
          DATA(t166) = t147.
          t165 = xsdbool( t166 IS BOUND ).
          IF t165 = abap_true.
            DATA t167 TYPE REF TO zif_lnt_class_definition.
            DATA t168 TYPE REF TO zcl_lnt_class.
            DATA(t169) = t147.
            t168 = t169.
            t167 = t168->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t164 = t167.
          ELSE.
            DATA t170 TYPE REF TO zif_lnt_class_definition.
            CLEAR t170.
            t164 = t170.
          ENDIF.
          t146 = t164.
          t138 = t146.
        ENDIF.
        t123 = t138.
        t114 = t123.
      ENDIF.
      t106 = t114.
      t105 = t106.
      DATA t171 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t171.
      DATA t172 TYPE abap_bool.
      DATA(t173) = t105.
      t172 = xsdbool( t173 IS BOUND ).
      IF t172 = abap_true.
        DATA t174 TYPE REF TO zif_lnt_interface_definition.
        DATA t175 TYPE REF TO zif_lnt_class_definition.
        DATA(t176) = t105.
        t175 = t176.
        t174 ?= t175.
        t171 = t174.
      ELSE.
        DATA t177 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t177.
        DATA t178 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t178.
        DATA t179 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t179.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t180.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA(t182) = abap_true.
        IF t182 = abap_true.
          DATA t183 TYPE string.
          DATA(t184) = t56.
          t183 = t184->value.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = t183.
          t181 = t185.
        ELSE.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          t181 = t186.
        ENDIF.
        t180 = t181.
        DATA t187 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t187.
        DATA(t188) = VALUE abap_bool( ).
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t190) = t180.
        t189 = t190.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        t191 = t192.
        DATA(t193) = VALUE abap_bool( ).
        DATA(t194) = t189.
        IF t194 IS INITIAL.
          t193 = abap_true.
        ELSEIF t194->has = abap_false.
          t193 = abap_true.
        ENDIF.
        t188 = t193.
        IF t188 = abap_true.
          DATA t195 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t195.
          t187 = t195.
        ELSE.
          DATA t196 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t196.
          DATA t197 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t197.
          DATA t198 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t198.
          DATA t199 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t200 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t201) = t53.
          t200 = t201->current.
          t199 = t200.
          DATA t202 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t202.
          DATA(t203) = VALUE abap_bool( ).
          DATA(t204) = t199.
          IF t204 IS INITIAL.
            t203 = abap_true.
          ENDIF.
          IF t203 = abap_true.
            DATA t205 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t205.
            t202 = t205.
          ELSE.
            DATA t206 TYPE REF TO zif_lnt_interface_definition.
            DATA t207 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t208) = t199.
            t207 = t208.
            DATA t209 TYPE string.
            DATA(t210) = t180.
            t209 = t210->value.
            t206 = t207->find_interface_definition( i_name = t209 ).
            t202 = t206.
          ENDIF.
          t198 = t202.
          t197 = t198.
          DATA t211 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t211.
          DATA t212 TYPE abap_bool.
          DATA(t213) = t197.
          t212 = xsdbool( t213 IS BOUND ).
          IF t212 = abap_true.
            DATA t214 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t214.
            DATA(t215) = abap_true.
            IF t215 = abap_true.
              DATA t216 TYPE REF TO zif_lnt_interface_definition.
              DATA(t217) = t197.
              t216 = t217.
              t214 = t216.
            ELSE.
              DATA t218 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t218.
              t214 = t218.
            ENDIF.
            t211 = t214.
          ELSE.
            DATA t219 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t219.
            DATA t220 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t220.
            DATA t221 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t221.
            DATA t222 TYPE REF TO zif_lnt_object.
            CLEAR t222.
            DATA t223 TYPE REF TO zif_lnt_registry.
            DATA(t224) = t53.
            t223 = t224->reg.
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t225.
            DATA(t226) = abap_true.
            IF t226 = abap_true.
              DATA(t227) = |INTF|.
              DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t228->has = abap_true.
              t228->value = t227.
              t225 = t228.
            ELSE.
              DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t229.
              t225 = t229.
            ENDIF.
            DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t230.
            DATA(t231) = abap_true.
            IF t231 = abap_true.
              DATA t232 TYPE string.
              DATA(t233) = t180.
              t232 = t233->value.
              DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t234->has = abap_true.
              t234->value = t232.
              t230 = t234.
            ELSE.
              DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t235.
              t230 = t235.
            ENDIF.
            t222 = t223->get_object( i_type_9913 = t225 i_name = t230 ).
            DATA t236 TYPE REF TO object.
            t236 = t222.
            t221 ?= t236.
            t220 = t221.
            DATA t237 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t237.
            DATA t238 TYPE abap_bool.
            DATA(t239) = t220.
            t238 = xsdbool( t239 IS BOUND ).
            IF t238 = abap_true.
              DATA t240 TYPE REF TO zif_lnt_interface_definition.
              DATA t241 TYPE REF TO zcl_lnt_ob_interface.
              DATA t242 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t243) = t220.
              t242 = t243.
              t241 = t242.
              DATA t244 TYPE REF TO zif_lnt_interface_definition.
              DATA(t245) = t241.
              t244 = t245->def.
              t240 = t244.
              t237 = t240.
            ELSE.
              DATA t246 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t246.
              t237 = t246.
            ENDIF.
            t219 = t237.
            t211 = t219.
          ENDIF.
          t196 = t211.
          t187 = t196.
        ENDIF.
        t179 = t187.
        t178 = t179.
        DATA t247 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t247.
        DATA t248 TYPE abap_bool.
        DATA(t249) = t178.
        t248 = xsdbool( t249 IS BOUND ).
        IF t248 = abap_true.
          DATA t250 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t250.
          DATA(t251) = abap_true.
          IF t251 = abap_true.
            DATA t252 TYPE REF TO zif_lnt_interface_definition.
            DATA(t253) = t178.
            t252 = t253.
            t250 = t252.
          ELSE.
            DATA t254 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t254.
            t250 = t254.
          ENDIF.
          t247 = t250.
        ELSE.
          DATA t255 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t255.
          t247 = t255.
        ENDIF.
        t177 = t247.
        t171 = t177.
      ENDIF.
      t104 = t171.
      t95 = t104.
    ENDIF.
    t52 = t95.
    t51 = t52.
    DATA(t256) = VALUE abap_bool( ).
    DATA t257 TYPE REF TO zif_lnt_interface_definition.
    DATA(t258) = t51.
    t257 = t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    t259 = t260.
    DATA(t261) = VALUE abap_bool( ).
    DATA(t262) = t257.
    IF t262 IS INITIAL.
      t261 = abap_true.
    ENDIF.
    t256 = t261.
    IF t256 = abap_true.
      DATA(t263) = VALUE string( ).
      DATA(t264) = VALUE string( ).
      DATA(t265) = VALUE string( ).
      DATA(t266) = |Definition for "|.
      DATA(t267) = VALUE string( ).
      DATA t268 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t269 TYPE REF TO zcl_lnt_object_reference_type.
      DATA(t270) = t1.
      t269 ?= t270.
      t268 = t269.
      DATA(t271) = VALUE string( ).
      DATA t272 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t273 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t274) = t268.
      t273 = t274->identifier.
      t272 = t273.
      DATA(t275) = VALUE string( ).
      DATA t276 TYPE string.
      DATA t277 TYPE string.
      DATA t278 TYPE REF TO zcl_lnt_abstract_token.
      DATA t279 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t280) = t272.
      t279 = t280->token.
      t278 = t279.
      DATA t281 TYPE string.
      DATA(t282) = t278.
      t281 = t282->str.
      t277 = t281.
      t276 = t277.
      DATA(t283) = VALUE abap_bool( ).
      DATA(t284) = VALUE string( ).
      DATA(t285) = t276.
      DATA(t286) = 0.
      DATA(t287) = 1.
      DATA(t288) = strlen( t285 ).
      IF t286 < 0.
        t286 = t286 + t288.
        IF t286 < 0.
          t286 = 0.
        ENDIF.
      ENDIF.
      IF t286 > t288 OR t287 <= 0.
        CLEAR t284.
      ELSE.
        IF t287 > t288 - t286.
          t287 = t288 - t286.
        ENDIF.
        t284 = t285+t286(t287).
      ENDIF.
      DATA(t289) = |!|.
      t283 = xsdbool( t284 = t289 ).
      IF t283 = abap_true.
        DATA(t290) = VALUE string( ).
        DATA t291 TYPE string.
        DATA(t292) = t276.
        t291 = t292.
        DATA(t293) = VALUE string( ).
        DATA(t294) = t291.
        DATA(t295) = 1.
        DATA t296 TYPE i.
        DATA(t297) = t291.
        DATA(t298) = strlen( t297 ).
        t296 = t298.
        DATA(t299) = strlen( t294 ).
        IF t295 < 0.
          t295 = t295 + t299.
          IF t295 < 0.
            t295 = 0.
          ENDIF.
        ENDIF.
        IF t295 > t299 OR t296 <= 0.
          CLEAR t293.
        ELSE.
          IF t296 > t299 - t295.
            t296 = t299 - t295.
          ENDIF.
          t293 = t294+t295(t296).
        ENDIF.
        t290 = t293.
        t276 = t290.
      ENDIF.
      DATA(t300) = t276.
      t275 = t300.
      t271 = t275.
      t267 = t271.
      DATA(t301) = strlen( t266 ).
      t265 = |{ t266 }{ t267 }|.
      DATA(t302) = |" not found in scope(AttributeChain)|.
      DATA(t303) = strlen( t265 ).
      t264 = |{ t265 }{ t302 }|.
      t263 = t264.
      DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t305) = t3.
      t304 = t305->issues.
      DATA t306 TYPE REF TO zcl_lnt_issue.
      DATA(t307) = t3.
      DATA t308 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t309) = t2.
      t308 = t309->get_first_token( ).
      DATA(t310) = t263.
      DATA t311 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t311.
      t306 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t307 i_token = t308 i_message_26cb = t310 i_fix = t311 ).
      APPEND t306 TO t304->items.
      DATA t312 TYPE REF TO zcl_lnt_void_type.
      CLEAR t312.
      DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t313.
      DATA(t314) = abap_true.
      IF t314 = abap_true.
        DATA(t315) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t316->has = abap_true.
        t316->value = t315.
        t313 = t316.
      ELSE.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t317.
        t313 = t317.
      ENDIF.
      DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t318.
      t312 = zcl_lnt_void_type=>get_db65( i_voided = t313 i_qualified_name = t318 ).
      result = t312.
      RETURN.
    ENDIF.
    DATA t319 TYPE REF TO zcl_lnt_abstract_token.
    DATA t320 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t321) = t27.
    t320 = t321->get_first_token( ).
    t319 = t320.
    DATA t322 TYPE string.
    DATA t323 TYPE string.
    DATA t324 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t325) = t319.
    t324 = t325.
    DATA t326 TYPE string.
    DATA(t327) = t324.
    t326 = t327->str.
    t323 = t326.
    t322 = t323.
    DATA t328 TYPE REF TO zcl_lnt_object_oriented.
    DATA t329 TYPE REF TO zcl_lnt_object_oriented.
    DATA t330 TYPE REF TO zcl_lnt_current_scope.
    DATA(t331) = t3.
    t330 = t331->scope.
    t329 = NEW zcl_lnt_object_oriented( i_scope = t330 ).
    t328 = t329.
    DATA t332 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t332.
    DATA t333 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t333.
    DATA(t334) = t328.
    DATA t335 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t335.
    DATA(t336) = abap_true.
    IF t336 = abap_true.
      DATA t337 TYPE REF TO zif_lnt_interface_definition.
      DATA(t338) = t51.
      t337 = t338.
      t335 = t337.
    ELSE.
      DATA t339 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t339.
      t335 = t339.
    ENDIF.
    DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t340.
    DATA(t341) = abap_true.
    IF t341 = abap_true.
      DATA(t342) = t322.
      DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t343->has = abap_true.
      t343->value = t342.
      t340 = t343.
    ELSE.
      DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t344.
      t340 = t344.
    ENDIF.
    t333 = t334->search_attribute_name( i_def = t335 i_name = t340 ).
    t332 = t333.
    DATA(t345) = VALUE abap_bool( ).
    DATA t346 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t347) = t332.
    t346 = t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    t348 = t349.
    DATA(t350) = VALUE abap_bool( ).
    DATA(t351) = t346.
    IF t351 IS INITIAL.
      t350 = abap_true.
    ENDIF.
    t345 = t350.
    IF t345 = abap_true.
      DATA t352 TYPE REF TO zcl_lnt_class_constant.
      CLEAR t352.
      DATA(t353) = t328.
      DATA t354 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t354.
      DATA(t355) = abap_true.
      IF t355 = abap_true.
        DATA t356 TYPE REF TO zif_lnt_interface_definition.
        DATA(t357) = t51.
        t356 = t357.
        t354 = t356.
      ELSE.
        DATA t358 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t358.
        t354 = t358.
      ENDIF.
      DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t359.
      DATA(t360) = abap_true.
      IF t360 = abap_true.
        DATA(t361) = t322.
        DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t362->has = abap_true.
        t362->value = t361.
        t359 = t362.
      ELSE.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        t359 = t363.
      ENDIF.
      t352 = t353->search_constant_name( i_def = t354 i_name = t359 ).
      t332 = t352.
    ENDIF.
    DATA(t364) = VALUE abap_bool( ).
    DATA t365 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t366) = t332.
    t365 = t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    t367 = t368.
    DATA(t369) = VALUE abap_bool( ).
    DATA(t370) = t365.
    IF t370 IS INITIAL.
      t369 = abap_true.
    ENDIF.
    t364 = t369.
    IF t364 = abap_true.
      DATA t371 TYPE string.
      DATA t372 TYPE string.
      DATA t373 TYPE string.
      DATA t374 TYPE string.
      DATA t375 TYPE string.
      DATA(t376) = |Attribute or constant "|.
      DATA(t377) = t322.
      DATA(t378) = strlen( t376 ).
      t375 = |{ t376 }{ t377 }|.
      DATA(t379) = |" not found in "|.
      DATA(t380) = strlen( t375 ).
      t374 = |{ t375 }{ t379 }|.
      DATA t381 TYPE string.
      DATA t382 TYPE REF TO zif_lnt_interface_definition.
      DATA(t383) = t51.
      t382 = t383.
      t381 = t382->get_name( ).
      DATA(t384) = strlen( t374 ).
      t373 = |{ t374 }{ t381 }|.
      DATA(t385) = |"|.
      DATA(t386) = strlen( t373 ).
      t372 = |{ t373 }{ t385 }|.
      t371 = t372.
      DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t388) = t3.
      t387 = t388->issues.
      DATA t389 TYPE REF TO zcl_lnt_issue.
      DATA(t390) = t3.
      DATA(t391) = t319.
      DATA(t392) = t371.
      DATA t393 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t393.
      t389 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t390 i_token = t391 i_message_26cb = t392 i_fix = t393 ).
      APPEND t389 TO t387->items.
      DATA t394 TYPE REF TO zcl_lnt_void_type.
      CLEAR t394.
      DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t395.
      DATA(t396) = abap_true.
      IF t396 = abap_true.
        DATA(t397) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t398->has = abap_true.
        t398->value = t397.
        t395 = t398.
      ELSE.
        DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t399.
        t395 = t399.
      ENDIF.
      DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t400.
      t394 = zcl_lnt_void_type=>get_db65( i_voided = t395 i_qualified_name = t400 ).
      result = t394.
      RETURN.
    ENDIF.
    DATA(t401) = t4.
    DATA(t402) = VALUE string( ).
    LOOP AT t401->items INTO t402.
      DATA t403 TYPE REF TO zcl_lnt_current_scope.
      DATA(t404) = t3.
      t403 = t404->scope.
      DATA t405 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t405.
      DATA(t406) = abap_true.
      IF t406 = abap_true.
        DATA(t407) = t319.
        t405 = t407.
      ELSE.
        DATA t408 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t408.
        t405 = t408.
      ENDIF.
      DATA t409 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t410) = t332.
      t409 = t410.
      DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t412) = t402.
      CREATE OBJECT t411.
      t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t411->sval = t412.
      DATA t413 TYPE string.
      DATA(t414) = t3.
      t413 = t414->filename.
      DATA t415 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t415.
      t403->add_reference( i_usage = t405 i_referencing = t409 i_type_9913 = t411 i_filename = t413 i_extra = t415 ).
    ENDLOOP.
    DATA t416 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t416.
    DATA t417 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t417.
    DATA(t418) = abap_true.
    IF t418 = abap_true.
      DATA t419 TYPE REF TO zcl_lnt_abstract_type.
      DATA t420 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t421 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t422) = t332.
      t421 = t422.
      t420 = t421.
      DATA t423 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t424) = t420.
      t423 = t424->type_cba0.
      t419 = t423.
      t417 = t419.
    ELSE.
      DATA t425 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t425.
      t417 = t425.
    ENDIF.
    t416 = t417.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t428) = t2.
    t427 = t428->get_children( ).
    t426 = t427.
    DATA t429 TYPE i.
    DATA(t430) = 1.
    t429 = t430.
    DO.
      DATA t431 TYPE abap_bool.
      DATA(t432) = t429.
      DATA t433 TYPE i.
      DATA(t434) = t426.
      t433 = lines( t434->items ).
      t431 = xsdbool( t432 < t433 ).
      IF t431 = abap_false.
        EXIT.
      ENDIF.
      DATA t435 TYPE REF TO zif_lnt_node.
      DATA t436 TYPE REF TO zif_lnt_node.
      DATA(t437) = t426.
      DATA(t438) = t429.
      t438 = t438 + 1.
      DATA t439 TYPE REF TO object.
      CLEAR t439.
      READ TABLE t437->items INDEX t438 INTO t439.
      t436 ?= t439.
      t435 = t436.
      DATA t440 TYPE abap_bool.
      DATA t441 TYPE abap_bool.
      DATA(t442) = t416.
      t441 = xsdbool( t442 IS BOUND AND t442 IS INSTANCE OF zcl_lnt_void_type ).
      t440 = t441.
      IF t441 = abap_false.
        DATA t443 TYPE abap_bool.
        DATA(t444) = t416.
        t443 = xsdbool( t444 IS BOUND AND t444 IS INSTANCE OF zcl_lnt_unknown_type ).
        t440 = t443.
      ENDIF.
      IF t440 = abap_true.
        DATA t445 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t445.
        DATA(t446) = abap_true.
        IF t446 = abap_true.
          DATA t447 TYPE REF TO zcl_lnt_abstract_type.
          DATA t448 TYPE REF TO zif_lnt_union_adffe656.
          DATA t449 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t450) = t416.
          t449 = t450.
          t448 ?= t449.
          t447 ?= t448.
          t445 = t447.
        ELSE.
          DATA t451 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t451.
          t445 = t451.
        ENDIF.
        result = t445.
        RETURN.
      ELSE.
        DATA t452 TYPE abap_bool.
        DATA t453 TYPE REF TO object.
        DATA(t454) = t435.
        t453 = t454->get_db65( ).
        t452 = xsdbool( t453 IS BOUND AND t453 IS INSTANCE OF zcl_lnt_arrow_or_dash ).
        IF t452 = abap_true.
          DATA t455 TYPE string.
          DATA t456 TYPE string.
          DATA t457 TYPE REF TO zcl_lnt_abstract_token.
          DATA t458 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t459) = t435.
          t458 = t459->get_first_token( ).
          t457 = t458.
          DATA t460 TYPE string.
          DATA(t461) = t457.
          t460 = t461->str.
          t456 = t460.
          t455 = t456.
          DATA t462 TYPE abap_bool.
          DATA t463 TYPE abap_bool.
          DATA(t464) = t455.
          DATA(t465) = |-|.
          t463 = xsdbool( t464 = t465 ).
          t462 = t463.
          IF t463 = abap_true.
            DATA t466 TYPE abap_bool.
            DATA t467 TYPE abap_bool.
            DATA(t468) = t416.
            t467 = xsdbool( t468 IS BOUND AND t468 IS INSTANCE OF zcl_lnt_structure_type ).
            t466 = xsdbool( t467 = abap_false ).
            t462 = t466.
          ENDIF.
          IF t462 = abap_true.
            DATA t469 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t470) = t3.
            t469 = t470->issues.
            DATA t471 TYPE REF TO zcl_lnt_issue.
            DATA(t472) = t3.
            DATA t473 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t474) = t435.
            t473 = t474->get_first_token( ).
            DATA(t475) = |AttributeChain, not a structure|.
            DATA t476 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t476.
            t471 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t472 i_token = t473 i_message_26cb = t475 i_fix = t476 ).
            APPEND t471 TO t469->items.
            DATA t477 TYPE REF TO zcl_lnt_void_type.
            CLEAR t477.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t478.
            DATA(t479) = abap_true.
            IF t479 = abap_true.
              DATA(t480) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
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
            DATA(t484) = VALUE abap_bool( ).
            DATA(t485) = VALUE abap_bool( ).
            DATA t486 TYPE abap_bool.
            DATA t487 TYPE abap_bool.
            DATA(t488) = t455.
            DATA(t489) = |->|.
            t487 = xsdbool( t488 = t489 ).
            t486 = t487.
            IF t487 = abap_false.
              DATA t490 TYPE abap_bool.
              DATA(t491) = t455.
              DATA(t492) = |=>|.
              t490 = xsdbool( t491 = t492 ).
              t486 = t490.
            ENDIF.
            t485 = t486.
            IF t486 = abap_true.
              DATA t493 TYPE abap_bool.
              DATA t494 TYPE abap_bool.
              DATA(t495) = t416.
              t494 = xsdbool( t495 IS BOUND AND t495 IS INSTANCE OF zcl_lnt_object_reference_type ).
              t493 = xsdbool( t494 = abap_false ).
              t485 = t493.
            ENDIF.
            t484 = t485.
            IF t485 = abap_true.
              DATA t496 TYPE abap_bool.
              DATA t497 TYPE abap_bool.
              DATA(t498) = t416.
              t497 = xsdbool( t498 IS BOUND AND t498 IS INSTANCE OF zcl_lnt_data_reference ).
              t496 = xsdbool( t497 = abap_false ).
              t484 = t496.
            ENDIF.
            IF t484 = abap_true.
              DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t500) = t3.
              t499 = t500->issues.
              DATA t501 TYPE REF TO zcl_lnt_issue.
              DATA(t502) = t3.
              DATA t503 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t504) = t435.
              t503 = t504->get_first_token( ).
              DATA(t505) = |AttributeChain, not a reference|.
              DATA t506 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t506.
              t501 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t502 i_token = t503 i_message_26cb = t505 i_fix = t506 ).
              APPEND t501 TO t499->items.
              DATA t507 TYPE REF TO zcl_lnt_void_type.
              CLEAR t507.
              DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t508.
              DATA(t509) = abap_true.
              IF t509 = abap_true.
                DATA(t510) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t511) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t511->has = abap_true.
                t511->value = t510.
                t508 = t511.
              ELSE.
                DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t512.
                t508 = t512.
              ENDIF.
              DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t513.
              t507 = zcl_lnt_void_type=>get_db65( i_voided = t508 i_qualified_name = t513 ).
              result = t507.
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA t514 TYPE abap_bool.
          DATA t515 TYPE REF TO object.
          DATA(t516) = t435.
          t515 = t516->get_db65( ).
          t514 = xsdbool( t515 IS BOUND AND t515 IS INSTANCE OF zcl_lnt_st_component_name ).
          IF t514 = abap_true.
            DATA t517 TYPE abap_bool.
            DATA t518 TYPE abap_bool.
            DATA(t519) = t416.
            t518 = xsdbool( t519 IS BOUND AND t519 IS INSTANCE OF zcl_lnt_object_reference_type ).
            t517 = t518.
            IF t518 = abap_false.
              DATA t520 TYPE abap_bool.
              DATA(t521) = t416.
              t520 = xsdbool( t521 IS BOUND AND t521 IS INSTANCE OF zcl_lnt_data_reference ).
              t517 = t520.
            ENDIF.
            IF t517 = abap_true.
              DATA t522 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t522.
              DATA t523 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t523.
              DATA(t524) = abap_true.
              IF t524 = abap_true.
                DATA t525 TYPE REF TO zcl_lnt_abstract_type.
                DATA t526 TYPE REF TO zif_lnt_union_168ba5e4.
                DATA t527 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t528) = t416.
                t527 = t528.
                t526 ?= t527.
                t525 ?= t526.
                t523 = t525.
              ELSE.
                DATA t529 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t529.
                t523 = t529.
              ENDIF.
              DATA(t530) = t435.
              DATA(t531) = t3.
              DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t532.
              DATA(t533) = abap_true.
              IF t533 = abap_true.
                DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t534.
                DATA(t535) = t4.
                IF t535 IS BOUND.
                  CREATE OBJECT t534.
                  t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  DATA t536 TYPE REF TO object.
                  t536 = t535.
                  t534->oval = t536.
                ENDIF.
                t532 = t534.
              ELSE.
                DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t537.
                t532 = t537.
              ENDIF.
              DATA t538 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t538.
              t522 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t523 i_node = t530 i_input_967e = t531 i_type_9913 = t532 i_error = t538 ).
              t416 = t522.
            ELSE.
              DATA t539 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t540) = t416.
              DATA(t541) = t435.
              DATA(t542) = t3.
              t539 = zcl_lnt_sy_component_name=>run_syntax( i_context = t540 i_node = t541 i_input_967e = t542 ).
              t416 = t539.
            ENDIF.
          ELSE.
            DATA t543 TYPE abap_bool.
            DATA t544 TYPE abap_bool.
            DATA t545 TYPE string.
            DATA t546 TYPE REF TO zcl_lnt_abstract_token.
            DATA t547 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t548) = t435.
            t547 = t548->get_first_token( ).
            t546 = t547.
            DATA t549 TYPE string.
            DATA(t550) = t546.
            t549 = t550->str.
            t545 = t549.
            DATA(t551) = |*|.
            t544 = xsdbool( t545 = t551 ).
            t543 = t544.
            IF t544 = abap_true.
              DATA t552 TYPE abap_bool.
              DATA(t553) = t416.
              t552 = xsdbool( t553 IS BOUND AND t553 IS INSTANCE OF zcl_lnt_data_reference ).
              t543 = t552.
            ENDIF.
            IF t543 = abap_true.
              DATA t554 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t554.
              DATA(t555) = abap_true.
              IF t555 = abap_true.
                DATA t556 TYPE REF TO zcl_lnt_abstract_type.
                DATA t557 TYPE REF TO zcl_lnt_data_reference.
                DATA t558 TYPE REF TO zcl_lnt_data_reference.
                DATA(t559) = t416.
                t558 ?= t559.
                t557 = t558.
                DATA t560 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t561) = t557.
                t560 = t561->type_cba0.
                t556 = t560.
                t554 = t556.
              ELSE.
                DATA t562 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t562.
                t554 = t562.
              ENDIF.
              t416 = t554.
            ELSE.
              DATA t563 TYPE abap_bool.
              DATA t564 TYPE abap_bool.
              DATA(t565) = t435.
              t564 = xsdbool( t565 IS BOUND AND t565 IS INSTANCE OF zcl_lnt_expression_node ).
              t563 = t564.
              IF t564 = abap_true.
                DATA t566 TYPE abap_bool.
                DATA t567 TYPE REF TO zif_lnt_statement_runnable.
                DATA t568 TYPE REF TO zcl_lnt_expression_node.
                DATA(t569) = t435.
                DATA t570 TYPE REF TO object.
                t570 = t569.
                t568 ?= t570.
                t567 = t568->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                t566 = xsdbool( t567 IS BOUND AND t567 IS INSTANCE OF zcl_lnt_st_table_expression ).
                t563 = t566.
              ENDIF.
              IF t563 = abap_true.
                DATA t571 TYPE abap_bool.
                DATA t572 TYPE abap_bool.
                DATA(t573) = t416.
                t572 = xsdbool( t573 IS BOUND AND t573 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t571 = xsdbool( t572 = abap_false ).
                IF t571 = abap_true.
                  DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t575) = t3.
                  t574 = t575->issues.
                  DATA t576 TYPE REF TO zcl_lnt_issue.
                  DATA(t577) = t3.
                  DATA t578 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t579 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t580) = t435.
                  DATA t581 TYPE REF TO object.
                  t581 = t580.
                  t579 ?= t581.
                  t578 = t579->get_first_token( ).
                  DATA(t582) = |Table expression, expected table|.
                  DATA t583 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t583.
                  t576 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t577 i_token = t578 i_message_26cb = t582 i_fix = t583 ).
                  APPEND t576 TO t574->items.
                  DATA t584 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t584.
                  DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t585.
                  DATA(t586) = abap_true.
                  IF t586 = abap_true.
                    DATA(t587) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t588) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t588->has = abap_true.
                    t588->value = t587.
                    t585 = t588.
                  ELSE.
                    DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t589.
                    t585 = t589.
                  ENDIF.
                  DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t590.
                  t584 = zcl_lnt_void_type=>get_db65( i_voided = t585 i_qualified_name = t590 ).
                  result = t584.
                  RETURN.
                ENDIF.
                DATA t591 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t591.
                DATA(t592) = abap_true.
                IF t592 = abap_true.
                  DATA t593 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t594) = t435.
                  DATA t595 TYPE REF TO object.
                  t595 = t594.
                  t593 ?= t595.
                  t591 = t593.
                ELSE.
                  DATA t596 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t596.
                  t591 = t596.
                ENDIF.
                DATA(t597) = t3.
                DATA t598 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t599) = t416.
                t598 ?= t599.
                zcl_lnt_sy_table_expression=>run_syntax( i_node = t591 i_input_967e = t597 i_row_type = t598 ).
                DATA t600 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t600.
                DATA(t601) = abap_true.
                IF t601 = abap_true.
                  DATA t602 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t603 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t604 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t605) = t416.
                  t604 ?= t605.
                  t603 = t604.
                  DATA t606 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t607) = t603.
                  t606 = t607->row_type.
                  t602 = t606.
                  t600 = t602.
                ELSE.
                  DATA t608 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t608.
                  t600 = t608.
                ENDIF.
                t416 = t600.
              ELSE.
                DATA t609 TYPE abap_bool.
                DATA t610 TYPE abap_bool.
                DATA(t611) = t435.
                t610 = xsdbool( t611 IS BOUND AND t611 IS INSTANCE OF zcl_lnt_expression_node ).
                t609 = t610.
                IF t610 = abap_true.
                  DATA t612 TYPE abap_bool.
                  DATA t613 TYPE REF TO zif_lnt_statement_runnable.
                  DATA t614 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t615) = t435.
                  DATA t616 TYPE REF TO object.
                  t616 = t615.
                  t614 ?= t616.
                  t613 = t614->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t612 = xsdbool( t613 IS BOUND AND t613 IS INSTANCE OF zcl_lnt_st_field_offset ).
                  t609 = t612.
                ENDIF.
                IF t609 = abap_true.
                  DATA t617 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                  DATA t618 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                  DATA t619 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t620) = t435.
                  DATA t621 TYPE REF TO object.
                  t621 = t620.
                  t619 ?= t621.
                  DATA(t622) = t3.
                  t618 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t619 i_input_967e = t622 ).
                  t617 = t618.
                  DATA(t623) = VALUE abap_bool( ).
                  DATA t624 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                  DATA(t625) = t617.
                  t624 = t625.
                  DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t627.
                  t626 = t627.
                  DATA(t628) = VALUE abap_bool( ).
                  DATA(t629) = VALUE abap_bool( ).
                  DATA(t630) = t624.
                  IF t630 IS INITIAL.
                    t629 = abap_true.
                  ELSEIF t630->has = abap_false.
                    t629 = abap_true.
                  ENDIF.
                  t628 = xsdbool( t629 = abap_false ).
                  t623 = t628.
                  IF t623 = abap_true.
                    DATA t631 TYPE abap_bool.
                    DATA(t632) = t416.
                    t631 = xsdbool( t632 IS BOUND AND t632 IS INSTANCE OF zcl_lnt_character_type ).
                    IF t631 = abap_true.
                      DATA t633 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t633.
                      DATA t634 TYPE int8.
                      DATA t635 TYPE int8.
                      DATA t636 TYPE REF TO zcl_lnt_character_type.
                      DATA t637 TYPE REF TO zcl_lnt_character_type.
                      DATA(t638) = t416.
                      t637 ?= t638.
                      t636 = t637.
                      DATA t639 TYPE int8.
                      DATA(t640) = t636.
                      t639 = t640->length.
                      t635 = t639.
                      DATA t641 TYPE int8.
                      DATA(t642) = t617.
                      t641 = t642->value.
                      t634 = t635 - t641.
                      IF t634 < range_int8_bound_min OR t634 > range_int8_bound_max.
                        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                      ENDIF.
                      DATA t643 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t643.
                      t633 = NEW zcl_lnt_character_type( i_length = t634 i_extra = t643 ).
                      t416 = t633.
                    ELSE.
                      DATA t644 TYPE abap_bool.
                      DATA(t645) = t416.
                      t644 = xsdbool( t645 IS BOUND AND t645 IS INSTANCE OF zcl_lnt_hex_type ).
                      IF t644 = abap_true.
                        DATA t646 TYPE REF TO zcl_lnt_hex_type.
                        CLEAR t646.
                        DATA t647 TYPE int8.
                        DATA t648 TYPE int8.
                        DATA t649 TYPE REF TO zcl_lnt_hex_type.
                        DATA t650 TYPE REF TO zcl_lnt_hex_type.
                        DATA(t651) = t416.
                        t650 ?= t651.
                        t649 = t650.
                        DATA t652 TYPE int8.
                        DATA(t653) = t649.
                        t652 = t653->length.
                        t648 = t652.
                        DATA t654 TYPE int8.
                        DATA(t655) = t617.
                        t654 = t655->value.
                        t647 = t648 - t654.
                        IF t647 < range_int8_bound_min OR t647 > range_int8_bound_max.
                          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                        ENDIF.
                        DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t656.
                        t646 = NEW zcl_lnt_hex_type( i_length = t647 i_qualified_name = t656 ).
                        t416 = t646.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ELSE.
                  DATA t657 TYPE abap_bool.
                  DATA t658 TYPE abap_bool.
                  DATA(t659) = t435.
                  t658 = xsdbool( t659 IS BOUND AND t659 IS INSTANCE OF zcl_lnt_expression_node ).
                  t657 = t658.
                  IF t658 = abap_true.
                    DATA t660 TYPE abap_bool.
                    DATA t661 TYPE REF TO zif_lnt_statement_runnable.
                    DATA t662 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t663) = t435.
                    DATA t664 TYPE REF TO object.
                    t664 = t663.
                    t662 ?= t664.
                    t661 = t662->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                    t660 = xsdbool( t661 IS BOUND AND t661 IS INSTANCE OF zcl_lnt_st_field_length ).
                    t657 = t660.
                  ENDIF.
                  IF t657 = abap_true.
                    DATA t665 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                    DATA t666 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                    DATA t667 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t668) = t435.
                    DATA t669 TYPE REF TO object.
                    t669 = t668.
                    t667 ?= t669.
                    DATA(t670) = t3.
                    t666 = zcl_lnt_sy_field_length=>run_syntax( i_node = t667 i_input_967e = t670 ).
                    t665 = t666.
                    DATA(t671) = VALUE abap_bool( ).
                    DATA t672 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                    DATA(t673) = t665.
                    t672 = t673.
                    DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t675.
                    t674 = t675.
                    DATA(t676) = VALUE abap_bool( ).
                    DATA(t677) = VALUE abap_bool( ).
                    DATA(t678) = t672.
                    IF t678 IS INITIAL.
                      t677 = abap_true.
                    ELSEIF t678->has = abap_false.
                      t677 = abap_true.
                    ENDIF.
                    t676 = xsdbool( t677 = abap_false ).
                    t671 = t676.
                    IF t671 = abap_true.
                      DATA t679 TYPE abap_bool.
                      DATA(t680) = t416.
                      t679 = xsdbool( t680 IS BOUND AND t680 IS INSTANCE OF zcl_lnt_character_type ).
                      IF t679 = abap_true.
                        DATA t681 TYPE REF TO zcl_lnt_character_type.
                        DATA t682 TYPE int8.
                        DATA(t683) = t665.
                        t682 = t683->value.
                        DATA t684 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t684.
                        t681 = NEW zcl_lnt_character_type( i_length = t682 i_extra = t684 ).
                        t416 = t681.
                      ELSE.
                        DATA t685 TYPE abap_bool.
                        DATA(t686) = t416.
                        t685 = xsdbool( t686 IS BOUND AND t686 IS INSTANCE OF zcl_lnt_hex_type ).
                        IF t685 = abap_true.
                          DATA t687 TYPE REF TO zcl_lnt_hex_type.
                          DATA t688 TYPE int8.
                          DATA(t689) = t665.
                          t688 = t689->value.
                          DATA t690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t690.
                          t687 = NEW zcl_lnt_hex_type( i_length = t688 i_qualified_name = t690 ).
                          t416 = t687.
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
      DATA t691 TYPE i.
      DATA(t692) = t429.
      DATA(t693) = 1.
      t691 = t692 + t693.
      t429 = t691.
    ENDDO.
    DATA(t694) = t416.
    result = t694.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d761_e449133b5a7d.
  ENDMETHOD.
ENDCLASS.
