* TS: src/abap/5_syntax/expressions/attribute_name.ts:13:1 AttributeName
CLASS zcl_lnt_sy_attribute_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_error TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_attribute_name IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_context ).
    DATA(t2) = CAST zif_lnt_node( i_node ).
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( i_type_9913 ).
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( i_error ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zlnt_runtime_opti_7f2541396f43( t5 ).
    IF t7 IS INITIAL.
      t6 = abap_true.
    ELSEIF t7->has = abap_false.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = abap_true.
        DATA(t11) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t5 = t8.
    ENDIF.
    DATA t13 TYPE abap_bool.
    DATA(t14) = CAST zcl_lnt_abstract_type( t1 ).
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_void_type ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_void_type.
      DATA(t16) = CAST zcl_lnt_abstract_type( t1 ).
      t15 ?= t16.
      result = t15.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_object_oriented.
    DATA t18 TYPE REF TO zcl_lnt_object_oriented.
    DATA t19 TYPE REF TO zcl_lnt_current_scope.
    DATA(t20) = CAST zcl_lnt_syntax_input( t3 ).
    t19 = t20->scope.
    t18 = NEW zcl_lnt_object_oriented( i_scope = t19 ).
    t17 = t18.
    DATA t21 TYPE REF TO zcl_lnt_abstract_type.
    DATA t22 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t22.
    t21 = t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zcl_lnt_abstract_type( t1 ).
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_object_reference_type ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t25.
      DATA t26 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_current_scope.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      DATA(t29) = CAST zcl_lnt_syntax_input( t3 ).
      t28 = t29->scope.
      t27 = t28.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t35 TYPE REF TO zcl_lnt_object_reference_type.
        DATA(t36) = CAST zcl_lnt_abstract_type( t1 ).
        t35 ?= t36.
        t34 = t35.
        DATA(t37) = VALUE string( ).
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t40) = CAST zcl_lnt_object_reference_type( t34 ).
        t39 = t40->identifier.
        t38 = t39.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t46) = CAST zcl_lnt_fi_identifier( t38 ).
        t45 = t46->token.
        t44 = t45.
        DATA t47 TYPE string.
        DATA(t48) = CAST zcl_lnt_abstract_token( t44 ).
        t47 = t48->str.
        t43 = t47.
        t42 = t43.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE string( ).
        DATA(t51) = t42.
        DATA(t52) = 0.
        DATA(t53) = 1.
        DATA(t54) = strlen( t51 ).
        IF t52 < 0.
          t52 = t52 + t54.
          IF t52 < 0.
            t52 = 0.
          ENDIF.
        ENDIF.
        IF t52 > t54 OR t53 <= 0.
          CLEAR t50.
        ELSE.
          IF t53 > t54 - t52.
            t53 = t54 - t52.
          ENDIF.
          t50 = t51+t52(t53).
        ENDIF.
        DATA(t55) = |!|.
        t49 = xsdbool( t50 = t55 ).
        IF t49 = abap_true.
          DATA(t56) = VALUE string( ).
          DATA t57 TYPE string.
          DATA(t58) = t42.
          t57 = t58.
          DATA(t59) = VALUE string( ).
          DATA(t60) = t57.
          DATA(t61) = 1.
          DATA t62 TYPE i.
          DATA(t63) = t57.
          DATA(t64) = strlen( t63 ).
          t62 = t64.
          DATA(t65) = strlen( t60 ).
          IF t61 < 0.
            t61 = t61 + t65.
            IF t61 < 0.
              t61 = 0.
            ENDIF.
          ENDIF.
          IF t61 > t65 OR t62 <= 0.
            CLEAR t59.
          ELSE.
            IF t62 > t65 - t61.
              t62 = t65 - t61.
            ENDIF.
            t59 = t60+t61(t62).
          ENDIF.
          t56 = t59.
          t42 = t56.
        ENDIF.
        DATA(t66) = t42.
        t41 = t66.
        t37 = t41.
        t33 = t37.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t33.
        t31 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t31 = t68.
      ENDIF.
      t30 = t31.
      DATA t69 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t72) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
      t71 = t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      t73 = t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = CAST zlnt_runtime_opti_4ba3bdccd169( t71 ).
      IF t76 IS INITIAL.
        t75 = abap_true.
      ELSEIF t76->has = abap_false.
        t75 = abap_true.
      ENDIF.
      t70 = t75.
      IF t70 = abap_true.
        DATA t77 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t77.
        t69 = t77.
      ELSE.
        DATA t78 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t78.
        DATA t79 TYPE REF TO zif_lnt_class_definition.
        CLEAR t79.
        DATA t80 TYPE REF TO zif_lnt_class_definition.
        CLEAR t80.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA(t83) = abap_true.
        IF t83 = abap_true.
          DATA t84 TYPE string.
          DATA(t85) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
          t84 = t85->value.
          DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t86->has = abap_true.
          t86->value = t84.
          t82 = t86.
        ELSE.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          t82 = t87.
        ENDIF.
        t81 = t82.
        DATA t88 TYPE REF TO zif_lnt_class_definition.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t91) = CAST zlnt_runtime_opti_4ba3bdccd169( t81 ).
        t90 = t91.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t92 = t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = CAST zlnt_runtime_opti_4ba3bdccd169( t90 ).
        IF t95 IS INITIAL.
          t94 = abap_true.
        ELSEIF t95->has = abap_false.
          t94 = abap_true.
        ENDIF.
        t89 = t94.
        IF t89 = abap_true.
          DATA t96 TYPE REF TO zif_lnt_class_definition.
          CLEAR t96.
          t88 = t96.
        ELSE.
          DATA t97 TYPE REF TO zif_lnt_class_definition.
          CLEAR t97.
          DATA t98 TYPE REF TO zif_lnt_class_definition.
          CLEAR t98.
          DATA t99 TYPE REF TO zif_lnt_class_definition.
          CLEAR t99.
          DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t102) = CAST zcl_lnt_current_scope( t27 ).
          t101 = t102->current.
          t100 = t101.
          DATA t103 TYPE REF TO zif_lnt_class_definition.
          CLEAR t103.
          DATA(t104) = VALUE abap_bool( ).
          DATA(t105) = CAST zcl_lnt_spaghetti_scope_node( t100 ).
          IF t105 IS INITIAL.
            t104 = abap_true.
          ENDIF.
          IF t104 = abap_true.
            DATA t106 TYPE REF TO zif_lnt_class_definition.
            CLEAR t106.
            t103 = t106.
          ELSE.
            DATA t107 TYPE REF TO zif_lnt_class_definition.
            DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t109) = CAST zcl_lnt_spaghetti_scope_node( t100 ).
            t108 = t109.
            DATA t110 TYPE string.
            DATA(t111) = CAST zlnt_runtime_opti_4ba3bdccd169( t81 ).
            t110 = t111->value.
            t107 = t108->find_class_definition( i_name = t110 ).
            t103 = t107.
          ENDIF.
          t99 = t103.
          t98 = t99.
          DATA t112 TYPE REF TO zif_lnt_class_definition.
          CLEAR t112.
          DATA t113 TYPE abap_bool.
          DATA(t114) = CAST zif_lnt_class_definition( t98 ).
          t113 = xsdbool( t114 IS BOUND ).
          IF t113 = abap_true.
            DATA t115 TYPE REF TO zif_lnt_class_definition.
            CLEAR t115.
            DATA(t116) = abap_true.
            IF t116 = abap_true.
              DATA t117 TYPE REF TO zif_lnt_class_definition.
              DATA(t118) = CAST zif_lnt_class_definition( t98 ).
              t117 = t118.
              t115 = t117.
            ELSE.
              DATA t119 TYPE REF TO zif_lnt_class_definition.
              CLEAR t119.
              t115 = t119.
            ENDIF.
            t112 = t115.
          ELSE.
            DATA t120 TYPE REF TO zif_lnt_class_definition.
            CLEAR t120.
            DATA t121 TYPE REF TO zcl_lnt_class.
            CLEAR t121.
            DATA t122 TYPE REF TO zcl_lnt_class.
            CLEAR t122.
            DATA t123 TYPE REF TO zif_lnt_object.
            CLEAR t123.
            DATA t124 TYPE REF TO zif_lnt_registry.
            DATA(t125) = CAST zcl_lnt_current_scope( t27 ).
            t124 = t125->reg.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t126.
            DATA(t127) = abap_true.
            IF t127 = abap_true.
              DATA(t128) = |CLAS|.
              DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t129->has = abap_true.
              t129->value = t128.
              t126 = t129.
            ELSE.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t130.
              t126 = t130.
            ENDIF.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            DATA(t132) = abap_true.
            IF t132 = abap_true.
              DATA t133 TYPE string.
              DATA(t134) = CAST zlnt_runtime_opti_4ba3bdccd169( t81 ).
              t133 = t134->value.
              DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t135->has = abap_true.
              t135->value = t133.
              t131 = t135.
            ELSE.
              DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t136.
              t131 = t136.
            ENDIF.
            t123 = t124->get_object( i_type_9913 = t126 i_name = t131 ).
            DATA t137 TYPE REF TO object.
            t137 = t123.
            t122 ?= t137.
            t121 = t122.
            DATA t138 TYPE REF TO zif_lnt_class_definition.
            CLEAR t138.
            DATA t139 TYPE abap_bool.
            DATA(t140) = CAST zcl_lnt_class( t121 ).
            t139 = xsdbool( t140 IS BOUND ).
            IF t139 = abap_true.
              DATA t141 TYPE REF TO zif_lnt_class_definition.
              DATA t142 TYPE REF TO zcl_lnt_class.
              DATA(t143) = CAST zcl_lnt_class( t121 ).
              t142 = t143.
              t141 = t142->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t138 = t141.
            ELSE.
              DATA t144 TYPE REF TO zif_lnt_class_definition.
              CLEAR t144.
              t138 = t144.
            ENDIF.
            t120 = t138.
            t112 = t120.
          ENDIF.
          t97 = t112.
          t88 = t97.
        ENDIF.
        t80 = t88.
        t79 = t80.
        DATA t145 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t145.
        DATA t146 TYPE abap_bool.
        DATA(t147) = CAST zif_lnt_class_definition( t79 ).
        t146 = xsdbool( t147 IS BOUND ).
        IF t146 = abap_true.
          DATA t148 TYPE REF TO zif_lnt_interface_definition.
          DATA t149 TYPE REF TO zif_lnt_class_definition.
          DATA(t150) = CAST zif_lnt_class_definition( t79 ).
          t149 = t150.
          t148 ?= t149.
          t145 = t148.
        ELSE.
          DATA t151 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t151.
          DATA t152 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t152.
          DATA t153 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t153.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          DATA(t156) = abap_true.
          IF t156 = abap_true.
            DATA t157 TYPE string.
            DATA(t158) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
            t157 = t158->value.
            DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t159->has = abap_true.
            t159->value = t157.
            t155 = t159.
          ELSE.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            t155 = t160.
          ENDIF.
          t154 = t155.
          DATA t161 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t161.
          DATA(t162) = VALUE abap_bool( ).
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t164) = CAST zlnt_runtime_opti_4ba3bdccd169( t154 ).
          t163 = t164.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          t165 = t166.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = CAST zlnt_runtime_opti_4ba3bdccd169( t163 ).
          IF t168 IS INITIAL.
            t167 = abap_true.
          ELSEIF t168->has = abap_false.
            t167 = abap_true.
          ENDIF.
          t162 = t167.
          IF t162 = abap_true.
            DATA t169 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t169.
            t161 = t169.
          ELSE.
            DATA t170 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t170.
            DATA t171 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t171.
            DATA t172 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t172.
            DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t175) = CAST zcl_lnt_current_scope( t27 ).
            t174 = t175->current.
            t173 = t174.
            DATA t176 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t176.
            DATA(t177) = VALUE abap_bool( ).
            DATA(t178) = CAST zcl_lnt_spaghetti_scope_node( t173 ).
            IF t178 IS INITIAL.
              t177 = abap_true.
            ENDIF.
            IF t177 = abap_true.
              DATA t179 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t179.
              t176 = t179.
            ELSE.
              DATA t180 TYPE REF TO zif_lnt_interface_definition.
              DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t182) = CAST zcl_lnt_spaghetti_scope_node( t173 ).
              t181 = t182.
              DATA t183 TYPE string.
              DATA(t184) = CAST zlnt_runtime_opti_4ba3bdccd169( t154 ).
              t183 = t184->value.
              t180 = t181->find_interface_definition( i_name = t183 ).
              t176 = t180.
            ENDIF.
            t172 = t176.
            t171 = t172.
            DATA t185 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t185.
            DATA t186 TYPE abap_bool.
            DATA(t187) = CAST zif_lnt_interface_definition( t171 ).
            t186 = xsdbool( t187 IS BOUND ).
            IF t186 = abap_true.
              DATA t188 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t188.
              DATA(t189) = abap_true.
              IF t189 = abap_true.
                DATA t190 TYPE REF TO zif_lnt_interface_definition.
                DATA(t191) = CAST zif_lnt_interface_definition( t171 ).
                t190 = t191.
                t188 = t190.
              ELSE.
                DATA t192 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t192.
                t188 = t192.
              ENDIF.
              t185 = t188.
            ELSE.
              DATA t193 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t193.
              DATA t194 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t194.
              DATA t195 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t195.
              DATA t196 TYPE REF TO zif_lnt_object.
              CLEAR t196.
              DATA t197 TYPE REF TO zif_lnt_registry.
              DATA(t198) = CAST zcl_lnt_current_scope( t27 ).
              t197 = t198->reg.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t199.
              DATA(t200) = abap_true.
              IF t200 = abap_true.
                DATA(t201) = |INTF|.
                DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t202->has = abap_true.
                t202->value = t201.
                t199 = t202.
              ELSE.
                DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t203.
                t199 = t203.
              ENDIF.
              DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t204.
              DATA(t205) = abap_true.
              IF t205 = abap_true.
                DATA t206 TYPE string.
                DATA(t207) = CAST zlnt_runtime_opti_4ba3bdccd169( t154 ).
                t206 = t207->value.
                DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t208->has = abap_true.
                t208->value = t206.
                t204 = t208.
              ELSE.
                DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t209.
                t204 = t209.
              ENDIF.
              t196 = t197->get_object( i_type_9913 = t199 i_name = t204 ).
              DATA t210 TYPE REF TO object.
              t210 = t196.
              t195 ?= t210.
              t194 = t195.
              DATA t211 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t211.
              DATA t212 TYPE abap_bool.
              DATA(t213) = CAST zcl_lnt_ob_interface( t194 ).
              t212 = xsdbool( t213 IS BOUND ).
              IF t212 = abap_true.
                DATA t214 TYPE REF TO zif_lnt_interface_definition.
                DATA t215 TYPE REF TO zcl_lnt_ob_interface.
                DATA t216 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t217) = CAST zcl_lnt_ob_interface( t194 ).
                t216 = t217.
                t215 = t216.
                DATA t218 TYPE REF TO zif_lnt_interface_definition.
                DATA(t219) = CAST zcl_lnt_ob_interface( t215 ).
                t218 = t219->def.
                t214 = t218.
                t211 = t214.
              ELSE.
                DATA t220 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t220.
                t211 = t220.
              ENDIF.
              t193 = t211.
              t185 = t193.
            ENDIF.
            t170 = t185.
            t161 = t170.
          ENDIF.
          t153 = t161.
          t152 = t153.
          DATA t221 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t221.
          DATA t222 TYPE abap_bool.
          DATA(t223) = CAST zif_lnt_interface_definition( t152 ).
          t222 = xsdbool( t223 IS BOUND ).
          IF t222 = abap_true.
            DATA t224 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t224.
            DATA(t225) = abap_true.
            IF t225 = abap_true.
              DATA t226 TYPE REF TO zif_lnt_interface_definition.
              DATA(t227) = CAST zif_lnt_interface_definition( t152 ).
              t226 = t227.
              t224 = t226.
            ELSE.
              DATA t228 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t228.
              t224 = t228.
            ENDIF.
            t221 = t224.
          ELSE.
            DATA t229 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t229.
            t221 = t229.
          ENDIF.
          t151 = t221.
          t145 = t151.
        ENDIF.
        t78 = t145.
        t69 = t78.
      ENDIF.
      t26 = t69.
      t25 = t26.
      DATA(t230) = VALUE abap_bool( ).
      DATA t231 TYPE REF TO zif_lnt_interface_definition.
      DATA(t232) = CAST zif_lnt_interface_definition( t25 ).
      t231 = t232.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t234.
      t233 = t234.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = CAST zif_lnt_interface_definition( t231 ).
      IF t236 IS INITIAL.
        t235 = abap_true.
      ENDIF.
      t230 = t235.
      IF t230 = abap_true.
        DATA(t237) = VALUE string( ).
        DATA(t238) = VALUE string( ).
        DATA(t239) = VALUE string( ).
        DATA(t240) = |Definition for "|.
        DATA(t241) = VALUE string( ).
        DATA t242 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t243 TYPE REF TO zcl_lnt_object_reference_type.
        DATA(t244) = CAST zcl_lnt_abstract_type( t1 ).
        t243 ?= t244.
        t242 = t243.
        DATA(t245) = VALUE string( ).
        DATA t246 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t247 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t248) = CAST zcl_lnt_object_reference_type( t242 ).
        t247 = t248->identifier.
        t246 = t247.
        DATA(t249) = VALUE string( ).
        DATA t250 TYPE string.
        DATA t251 TYPE string.
        DATA t252 TYPE REF TO zcl_lnt_abstract_token.
        DATA t253 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t254) = CAST zcl_lnt_fi_identifier( t246 ).
        t253 = t254->token.
        t252 = t253.
        DATA t255 TYPE string.
        DATA(t256) = CAST zcl_lnt_abstract_token( t252 ).
        t255 = t256->str.
        t251 = t255.
        t250 = t251.
        DATA(t257) = VALUE abap_bool( ).
        DATA(t258) = VALUE string( ).
        DATA(t259) = t250.
        DATA(t260) = 0.
        DATA(t261) = 1.
        DATA(t262) = strlen( t259 ).
        IF t260 < 0.
          t260 = t260 + t262.
          IF t260 < 0.
            t260 = 0.
          ENDIF.
        ENDIF.
        IF t260 > t262 OR t261 <= 0.
          CLEAR t258.
        ELSE.
          IF t261 > t262 - t260.
            t261 = t262 - t260.
          ENDIF.
          t258 = t259+t260(t261).
        ENDIF.
        DATA(t263) = |!|.
        t257 = xsdbool( t258 = t263 ).
        IF t257 = abap_true.
          DATA(t264) = VALUE string( ).
          DATA t265 TYPE string.
          DATA(t266) = t250.
          t265 = t266.
          DATA(t267) = VALUE string( ).
          DATA(t268) = t265.
          DATA(t269) = 1.
          DATA t270 TYPE i.
          DATA(t271) = t265.
          DATA(t272) = strlen( t271 ).
          t270 = t272.
          DATA(t273) = strlen( t268 ).
          IF t269 < 0.
            t269 = t269 + t273.
            IF t269 < 0.
              t269 = 0.
            ENDIF.
          ENDIF.
          IF t269 > t273 OR t270 <= 0.
            CLEAR t267.
          ELSE.
            IF t270 > t273 - t269.
              t270 = t273 - t269.
            ENDIF.
            t267 = t268+t269(t270).
          ENDIF.
          t264 = t267.
          t250 = t264.
        ENDIF.
        DATA(t274) = t250.
        t249 = t274.
        t245 = t249.
        t241 = t245.
        DATA(t275) = strlen( t240 ).
        t239 = |{ t240 }{ t241 }|.
        DATA(t276) = |" not found in scope(AttributeName)|.
        DATA(t277) = strlen( t239 ).
        t238 = |{ t239 }{ t276 }|.
        t237 = t238.
        DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t279) = CAST zcl_lnt_syntax_input( t3 ).
        t278 = t279->issues.
        DATA t280 TYPE REF TO zcl_lnt_issue.
        DATA(t281) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t282 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t283) = CAST zif_lnt_node( t2 ).
        t282 = t283->get_first_token( ).
        DATA(t284) = t237.
        DATA t285 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t285.
        t280 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t281 i_token = t282 i_message_26cb = t284 i_fix = t285 ).
        APPEND t280 TO t278->items.
        DATA t286 TYPE REF TO zcl_lnt_void_type.
        CLEAR t286.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        DATA(t288) = abap_true.
        IF t288 = abap_true.
          DATA(t289) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t290->has = abap_true.
          t290->value = t289.
          t287 = t290.
        ELSE.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t291.
          t287 = t291.
        ENDIF.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t292.
        t286 = zcl_lnt_void_type=>get_db65( i_voided = t287 i_qualified_name = t292 ).
        result = t286.
        RETURN.
      ENDIF.
      DATA t293 TYPE REF TO zcl_lnt_abstract_token.
      DATA t294 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t295) = CAST zif_lnt_node( t2 ).
      t294 = t295->get_first_token( ).
      t293 = t294.
      DATA t296 TYPE string.
      DATA t297 TYPE string.
      DATA t298 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t299) = CAST zcl_lnt_abstract_token( t293 ).
      t298 = t299.
      DATA t300 TYPE string.
      DATA(t301) = CAST zcl_lnt_abstract_token( t298 ).
      t300 = t301->str.
      t297 = t300.
      t296 = t297.
      DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t302.
      DATA t303 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t303.
      DATA(t304) = CAST zcl_lnt_object_oriented( t17 ).
      DATA t305 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t305.
      DATA(t306) = abap_true.
      IF t306 = abap_true.
        DATA t307 TYPE REF TO zif_lnt_interface_definition.
        DATA(t308) = CAST zif_lnt_interface_definition( t25 ).
        t307 = t308.
        t305 = t307.
      ELSE.
        DATA t309 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t309.
        t305 = t309.
      ENDIF.
      DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t310.
      DATA(t311) = abap_true.
      IF t311 = abap_true.
        DATA(t312) = t296.
        DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t313->has = abap_true.
        t313->value = t312.
        t310 = t313.
      ELSE.
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t314.
        t310 = t314.
      ENDIF.
      t303 = t304->search_attribute_name( i_def = t305 i_name = t310 ).
      t302 = t303.
      DATA(t315) = VALUE abap_bool( ).
      DATA t316 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t317) = CAST zcl_lnt_typed_identifier( t302 ).
      t316 = t317.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      t318 = t319.
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = CAST zcl_lnt_typed_identifier( t316 ).
      IF t321 IS INITIAL.
        t320 = abap_true.
      ENDIF.
      t315 = t320.
      IF t315 = abap_true.
        DATA t322 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t322.
        DATA(t323) = CAST zcl_lnt_object_oriented( t17 ).
        DATA t324 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t324.
        DATA(t325) = abap_true.
        IF t325 = abap_true.
          DATA t326 TYPE REF TO zif_lnt_interface_definition.
          DATA(t327) = CAST zif_lnt_interface_definition( t25 ).
          t326 = t327.
          t324 = t326.
        ELSE.
          DATA t328 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t328.
          t324 = t328.
        ENDIF.
        DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t329.
        DATA(t330) = abap_true.
        IF t330 = abap_true.
          DATA(t331) = t296.
          DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t332->has = abap_true.
          t332->value = t331.
          t329 = t332.
        ELSE.
          DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t333.
          t329 = t333.
        ENDIF.
        t322 = t323->search_constant_name( i_def = t324 i_name = t329 ).
        t302 = t322.
      ENDIF.
      DATA(t334) = VALUE abap_bool( ).
      DATA t335 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t336) = CAST zcl_lnt_typed_identifier( t302 ).
      t335 = t336.
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t338.
      t337 = t338.
      DATA(t339) = VALUE abap_bool( ).
      DATA(t340) = CAST zcl_lnt_typed_identifier( t335 ).
      IF t340 IS INITIAL.
        t339 = abap_true.
      ENDIF.
      t334 = t339.
      IF t334 = abap_true.
        DATA t341 TYPE string.
        DATA t342 TYPE string.
        DATA t343 TYPE string.
        DATA t344 TYPE string.
        DATA t345 TYPE string.
        DATA(t346) = |Attribute or constant "|.
        DATA(t347) = t296.
        DATA(t348) = strlen( t346 ).
        t345 = |{ t346 }{ t347 }|.
        DATA(t349) = |" not found in "|.
        DATA(t350) = strlen( t345 ).
        t344 = |{ t345 }{ t349 }|.
        DATA t351 TYPE string.
        DATA t352 TYPE REF TO zif_lnt_interface_definition.
        DATA(t353) = CAST zif_lnt_interface_definition( t25 ).
        t352 = t353.
        t351 = t352->get_name( ).
        DATA(t354) = strlen( t344 ).
        t343 = |{ t344 }{ t351 }|.
        DATA(t355) = |"|.
        DATA(t356) = strlen( t343 ).
        t342 = |{ t343 }{ t355 }|.
        t341 = t342.
        DATA t357 TYPE abap_bool.
        DATA t358 TYPE abap_bool.
        DATA(t359) = CAST zlnt_runtime_opti_7f2541396f43( t5 ).
        t358 = t359->value.
        DATA(t360) = abap_true.
        t357 = xsdbool( t358 = t360 ).
        IF t357 = abap_true.
          DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t362) = CAST zcl_lnt_syntax_input( t3 ).
          t361 = t362->issues.
          DATA t363 TYPE REF TO zcl_lnt_issue.
          DATA(t364) = CAST zcl_lnt_syntax_input( t3 ).
          DATA t365 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t366) = CAST zif_lnt_node( t2 ).
          t365 = t366->get_first_token( ).
          DATA(t367) = t341.
          DATA t368 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t368.
          t363 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t364 i_token = t365 i_message_26cb = t367 i_fix = t368 ).
          APPEND t363 TO t361->items.
        ENDIF.
        DATA t369 TYPE REF TO zcl_lnt_void_type.
        CLEAR t369.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        DATA(t371) = abap_true.
        IF t371 = abap_true.
          DATA(t372) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t373->has = abap_true.
          t373->value = t372.
          t370 = t373.
        ELSE.
          DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t374.
          t370 = t374.
        ENDIF.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t375.
        t369 = zcl_lnt_void_type=>get_db65( i_voided = t370 i_qualified_name = t375 ).
        result = t369.
        RETURN.
      ENDIF.
      DATA(t376) = VALUE abap_bool( ).
      DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t378) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
      t377 = t378.
      IF t377 IS BOUND.
        t376 = t377->truth( ).
      ENDIF.
      IF t376 = abap_true.
        DATA t379 TYPE REF TO zcl_lnt_current_scope.
        DATA(t380) = CAST zcl_lnt_syntax_input( t3 ).
        t379 = t380->scope.
        DATA t381 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t381.
        DATA(t382) = abap_true.
        IF t382 = abap_true.
          DATA(t383) = CAST zcl_lnt_abstract_token( t293 ).
          t381 = t383.
        ELSE.
          DATA t384 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t384.
          t381 = t384.
        ENDIF.
        DATA t385 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t386) = CAST zcl_lnt_typed_identifier( t302 ).
        t385 = t386.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t388) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
        t387 = t388.
        DATA t389 TYPE string.
        DATA(t390) = CAST zcl_lnt_syntax_input( t3 ).
        t389 = t390->filename.
        DATA t391 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t391.
        t379->add_reference( i_usage = t381 i_referencing = t385 i_type_9913 = t387 i_filename = t389 i_extra = t391 ).
      ENDIF.
      DATA t392 TYPE abap_bool.
      DATA t393 TYPE abap_bool.
      DATA(t394) = CAST zcl_lnt_typed_identifier( t302 ).
      t393 = xsdbool( t394 IS BOUND ).
      t392 = t393.
      IF t393 = abap_true.
        DATA(t395) = VALUE abap_bool( ).
        DATA(t396) = VALUE i( ).
        DATA(t397) = t296.
        DATA(t398) = |~|.
        DATA(t399) = strlen( t397 ).
        IF t398 IS INITIAL.
          t396 = 0.
        ELSE.
          FIND t398 IN t397 MATCH OFFSET t396.
          IF sy-subrc <> 0.
            t396 = -1.
          ENDIF.
        ENDIF.
        DATA(t400) = 0.
        t395 = xsdbool( t396 >= t400 ).
        t392 = t395.
      ENDIF.
      IF t392 = abap_true.
        DATA t401 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t401.
        DATA t402 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t402.
        DATA t403 TYPE REF TO zcl_lnt_current_scope.
        DATA t404 TYPE REF TO zcl_lnt_current_scope.
        DATA(t405) = CAST zcl_lnt_syntax_input( t3 ).
        t404 = t405->scope.
        t403 = t404.
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t406.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t407.
        DATA(t408) = abap_true.
        IF t408 = abap_true.
          DATA(t409) = VALUE string( ).
          DATA t410 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t411) = t296.
          DATA(t412) = |~|.
          DATA(t413) = strlen( t411 ).
          DATA t414 TYPE i.
          DATA(t415) = VALUE i( ).
          DATA(t416) = VALUE i( ).
          DATA t417 TYPE i.
          DATA(t418) = VALUE string( ).
          CREATE OBJECT t410.
          t417 = strlen( t412 ).
          t414 = 0.
          IF t417 = 0.
            WHILE t414 < t413.
              t418 = t411+t414(1).
              APPEND t418 TO t410->items.
              t414 = t414 + 1.
            ENDWHILE.
          ELSE.
            WHILE t414 <= t413.
              FIND FIRST OCCURRENCE OF t412 IN SECTION OFFSET t414 OF t411 MATCH OFFSET t415.
              IF sy-subrc = 0.
                t416 = t415 - t414.
              ELSE.
                t415 = -1.
                t416 = t413 - t414.
              ENDIF.
              CLEAR t418.
              IF t416 > 0.
                t418 = t411+t414(t416).
              ENDIF.
              APPEND t418 TO t410->items.
              IF t415 < 0.
                EXIT.
              ENDIF.
              t414 = t415 + t417.
            ENDWHILE.
          ENDIF.
          READ TABLE t410->items INDEX 1 INTO t409.
          DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t419->has = abap_true.
          t419->value = t409.
          t407 = t419.
        ELSE.
          DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t420.
          t407 = t420.
        ENDIF.
        t406 = t407.
        DATA t421 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t421.
        DATA(t422) = VALUE abap_bool( ).
        DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t424) = CAST zlnt_runtime_opti_4ba3bdccd169( t406 ).
        t423 = t424.
        DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t426.
        t425 = t426.
        DATA(t427) = VALUE abap_bool( ).
        DATA(t428) = CAST zlnt_runtime_opti_4ba3bdccd169( t423 ).
        IF t428 IS INITIAL.
          t427 = abap_true.
        ELSEIF t428->has = abap_false.
          t427 = abap_true.
        ENDIF.
        t422 = t427.
        IF t422 = abap_true.
          DATA t429 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t429.
          t421 = t429.
        ELSE.
          DATA t430 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t430.
          DATA t431 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t431.
          DATA t432 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t432.
          DATA t433 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t434 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t435) = CAST zcl_lnt_current_scope( t403 ).
          t434 = t435->current.
          t433 = t434.
          DATA t436 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t436.
          DATA(t437) = VALUE abap_bool( ).
          DATA(t438) = CAST zcl_lnt_spaghetti_scope_node( t433 ).
          IF t438 IS INITIAL.
            t437 = abap_true.
          ENDIF.
          IF t437 = abap_true.
            DATA t439 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t439.
            t436 = t439.
          ELSE.
            DATA t440 TYPE REF TO zif_lnt_interface_definition.
            DATA t441 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t442) = CAST zcl_lnt_spaghetti_scope_node( t433 ).
            t441 = t442.
            DATA t443 TYPE string.
            DATA(t444) = CAST zlnt_runtime_opti_4ba3bdccd169( t406 ).
            t443 = t444->value.
            t440 = t441->find_interface_definition( i_name = t443 ).
            t436 = t440.
          ENDIF.
          t432 = t436.
          t431 = t432.
          DATA t445 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t445.
          DATA t446 TYPE abap_bool.
          DATA(t447) = CAST zif_lnt_interface_definition( t431 ).
          t446 = xsdbool( t447 IS BOUND ).
          IF t446 = abap_true.
            DATA t448 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t448.
            DATA(t449) = abap_true.
            IF t449 = abap_true.
              DATA t450 TYPE REF TO zif_lnt_interface_definition.
              DATA(t451) = CAST zif_lnt_interface_definition( t431 ).
              t450 = t451.
              t448 = t450.
            ELSE.
              DATA t452 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t452.
              t448 = t452.
            ENDIF.
            t445 = t448.
          ELSE.
            DATA t453 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t453.
            DATA t454 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t454.
            DATA t455 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t455.
            DATA t456 TYPE REF TO zif_lnt_object.
            CLEAR t456.
            DATA t457 TYPE REF TO zif_lnt_registry.
            DATA(t458) = CAST zcl_lnt_current_scope( t403 ).
            t457 = t458->reg.
            DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t459.
            DATA(t460) = abap_true.
            IF t460 = abap_true.
              DATA(t461) = |INTF|.
              DATA(t462) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t462->has = abap_true.
              t462->value = t461.
              t459 = t462.
            ELSE.
              DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t463.
              t459 = t463.
            ENDIF.
            DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t464.
            DATA(t465) = abap_true.
            IF t465 = abap_true.
              DATA t466 TYPE string.
              DATA(t467) = CAST zlnt_runtime_opti_4ba3bdccd169( t406 ).
              t466 = t467->value.
              DATA(t468) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t468->has = abap_true.
              t468->value = t466.
              t464 = t468.
            ELSE.
              DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t469.
              t464 = t469.
            ENDIF.
            t456 = t457->get_object( i_type_9913 = t459 i_name = t464 ).
            DATA t470 TYPE REF TO object.
            t470 = t456.
            t455 ?= t470.
            t454 = t455.
            DATA t471 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t471.
            DATA t472 TYPE abap_bool.
            DATA(t473) = CAST zcl_lnt_ob_interface( t454 ).
            t472 = xsdbool( t473 IS BOUND ).
            IF t472 = abap_true.
              DATA t474 TYPE REF TO zif_lnt_interface_definition.
              DATA t475 TYPE REF TO zcl_lnt_ob_interface.
              DATA t476 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t477) = CAST zcl_lnt_ob_interface( t454 ).
              t476 = t477.
              t475 = t476.
              DATA t478 TYPE REF TO zif_lnt_interface_definition.
              DATA(t479) = CAST zcl_lnt_ob_interface( t475 ).
              t478 = t479->def.
              t474 = t478.
              t471 = t474.
            ELSE.
              DATA t480 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t480.
              t471 = t480.
            ENDIF.
            t453 = t471.
            t445 = t453.
          ENDIF.
          t430 = t445.
          t421 = t430.
        ENDIF.
        t402 = t421.
        t401 = t402.
        DATA t481 TYPE abap_bool.
        DATA(t482) = CAST zif_lnt_interface_definition( t401 ).
        t481 = xsdbool( t482 IS BOUND ).
        IF t481 = abap_true.
          DATA t483 TYPE REF TO zcl_lnt_current_scope.
          DATA(t484) = CAST zcl_lnt_syntax_input( t3 ).
          t483 = t484->scope.
          DATA t485 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t485.
          DATA(t486) = abap_true.
          IF t486 = abap_true.
            DATA(t487) = CAST zcl_lnt_abstract_token( t293 ).
            t485 = t487.
          ELSE.
            DATA t488 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t488.
            t485 = t488.
          ENDIF.
          DATA t489 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t489.
          DATA(t490) = abap_true.
          IF t490 = abap_true.
            DATA t491 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t492 TYPE REF TO zif_lnt_interface_definition.
            DATA(t493) = CAST zif_lnt_interface_definition( t401 ).
            t492 = t493.
            t491 ?= t492.
            t489 = t491.
          ELSE.
            DATA t494 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t494.
            t489 = t494.
          ENDIF.
          DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t496) = |Object|.
          CREATE OBJECT t495.
          t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t495->sval = t496.
          DATA t497 TYPE string.
          DATA(t498) = CAST zcl_lnt_syntax_input( t3 ).
          t497 = t498->filename.
          DATA t499 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t499.
          t483->add_reference( i_usage = t485 i_referencing = t489 i_type_9913 = t495 i_filename = t497 i_extra = t499 ).
        ENDIF.
      ENDIF.
      DATA t500 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t500.
      DATA(t501) = abap_true.
      IF t501 = abap_true.
        DATA t502 TYPE REF TO zcl_lnt_abstract_type.
        DATA t503 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t504 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t505) = CAST zcl_lnt_typed_identifier( t302 ).
        t504 = t505.
        t503 = t504.
        DATA t506 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t507) = CAST zcl_lnt_typed_identifier( t503 ).
        t506 = t507->type_cba0.
        t502 = t506.
        t500 = t502.
      ELSE.
        DATA t508 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t508.
        t500 = t508.
      ENDIF.
      t21 = t500.
    ELSE.
      DATA t509 TYPE abap_bool.
      DATA(t510) = CAST zcl_lnt_abstract_type( t1 ).
      t509 = xsdbool( t510 IS BOUND AND t510 IS INSTANCE OF zcl_lnt_data_reference ).
      IF t509 = abap_true.
        DATA t511 TYPE REF TO zcl_lnt_abstract_type.
        DATA t512 TYPE REF TO zcl_lnt_abstract_type.
        DATA t513 TYPE REF TO zcl_lnt_data_reference.
        DATA t514 TYPE REF TO zcl_lnt_data_reference.
        DATA(t515) = CAST zcl_lnt_abstract_type( t1 ).
        t514 ?= t515.
        t513 = t514.
        DATA t516 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t517) = CAST zcl_lnt_data_reference( t513 ).
        t516 = t517->type_cba0.
        t512 = t516.
        t511 = t512.
        DATA t518 TYPE string.
        DATA t519 TYPE string.
        DATA t520 TYPE REF TO zcl_lnt_abstract_token.
        DATA t521 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t522) = CAST zif_lnt_node( t2 ).
        t521 = t522->get_first_token( ).
        t520 = t521.
        DATA t523 TYPE string.
        DATA(t524) = CAST zcl_lnt_abstract_token( t520 ).
        t523 = t524->str.
        t519 = t523.
        t518 = t519.
        DATA(t525) = VALUE abap_bool( ).
        DATA t526 TYPE abap_bool.
        DATA t527 TYPE abap_bool.
        DATA(t528) = t518.
        DATA(t529) = |*|.
        t527 = xsdbool( t528 = t529 ).
        t526 = t527.
        IF t527 = abap_false.
          DATA t530 TYPE abap_bool.
          DATA(t531) = CAST zcl_lnt_abstract_type( t511 ).
          t530 = xsdbool( t531 IS BOUND AND t531 IS INSTANCE OF zcl_lnt_void_type ).
          t526 = t530.
        ENDIF.
        t525 = t526.
        IF t526 = abap_false.
          DATA t532 TYPE abap_bool.
          DATA(t533) = CAST zcl_lnt_abstract_type( t511 ).
          t532 = xsdbool( t533 IS BOUND AND t533 IS INSTANCE OF zcl_lnt_any_type ).
          t525 = t532.
        ENDIF.
        IF t525 = abap_true.
          DATA t534 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t534.
          DATA(t535) = abap_true.
          IF t535 = abap_true.
            DATA(t536) = CAST zcl_lnt_abstract_type( t511 ).
            t534 = t536.
          ELSE.
            DATA t537 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t537.
            t534 = t537.
          ENDIF.
          result = t534.
          RETURN.
        ENDIF.
        DATA t538 TYPE abap_bool.
        DATA t539 TYPE abap_bool.
        DATA(t540) = CAST zcl_lnt_abstract_type( t511 ).
        t539 = xsdbool( t540 IS BOUND AND t540 IS INSTANCE OF zcl_lnt_structure_type ).
        t538 = xsdbool( t539 = abap_false ).
        IF t538 = abap_true.
          DATA t541 TYPE string.
          DATA(t542) = |Data reference not structured|.
          t541 = t542.
          DATA t543 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t544) = CAST zcl_lnt_syntax_input( t3 ).
          t543 = t544->issues.
          DATA t545 TYPE REF TO zcl_lnt_issue.
          DATA(t546) = CAST zcl_lnt_syntax_input( t3 ).
          DATA t547 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t548) = CAST zif_lnt_node( t2 ).
          t547 = t548->get_first_token( ).
          DATA(t549) = t541.
          DATA t550 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t550.
          t545 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t546 i_token = t547 i_message_26cb = t549 i_fix = t550 ).
          APPEND t545 TO t543->items.
          DATA t551 TYPE REF TO zcl_lnt_void_type.
          CLEAR t551.
          DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t552.
          DATA(t553) = abap_true.
          IF t553 = abap_true.
            DATA(t554) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t555->has = abap_true.
            t555->value = t554.
            t552 = t555.
          ELSE.
            DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t556.
            t552 = t556.
          ENDIF.
          DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t557.
          t551 = zcl_lnt_void_type=>get_db65( i_voided = t552 i_qualified_name = t557 ).
          result = t551.
          RETURN.
        ENDIF.
        DATA t558 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t558.
        DATA t559 TYPE REF TO zcl_lnt_structure_type.
        DATA t560 TYPE REF TO zcl_lnt_structure_type.
        DATA(t561) = CAST zcl_lnt_abstract_type( t511 ).
        t560 ?= t561.
        t559 = t560.
        DATA t562 TYPE string.
        DATA(t563) = t518.
        t562 = t563.
        DATA t564 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t564.
        DATA t565 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t566) = CAST zcl_lnt_structure_type( t559 ).
        t565 = t566->indexed.
        DATA t567 TYPE string.
        DATA(t568) = t562.
        DATA(t569) = strlen( t568 ).
        t567 = t568.
        IF t567 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t567 TO UPPER CASE.
        ELSE.
          t567 = zlnt_runtime_uppe_91169605024d=>full( t567 ).
        ENDIF.
        t564 = t565->get( p0 = t567 ).
        t558 = t564.
        t21 = t558.
        DATA(t570) = VALUE abap_bool( ).
        DATA t571 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t572) = CAST zcl_lnt_abstract_type( t21 ).
        t571 = t572.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t574.
        t573 = t574.
        DATA(t575) = VALUE abap_bool( ).
        DATA(t576) = CAST zcl_lnt_abstract_type( t571 ).
        IF t576 IS INITIAL.
          t575 = abap_true.
        ENDIF.
        t570 = t575.
        IF t570 = abap_true.
          DATA t577 TYPE string.
          DATA t578 TYPE string.
          DATA t579 TYPE string.
          DATA(t580) = |Component "|.
          DATA(t581) = t518.
          DATA(t582) = strlen( t580 ).
          t579 = |{ t580 }{ t581 }|.
          DATA(t583) = |" not found in data reference structure|.
          DATA(t584) = strlen( t579 ).
          t578 = |{ t579 }{ t583 }|.
          t577 = t578.
          DATA t585 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t586) = CAST zcl_lnt_syntax_input( t3 ).
          t585 = t586->issues.
          DATA t587 TYPE REF TO zcl_lnt_issue.
          DATA(t588) = CAST zcl_lnt_syntax_input( t3 ).
          DATA t589 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t590) = CAST zif_lnt_node( t2 ).
          t589 = t590->get_first_token( ).
          DATA(t591) = t577.
          DATA t592 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t592.
          t587 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t588 i_token = t589 i_message_26cb = t591 i_fix = t592 ).
          APPEND t587 TO t585->items.
          DATA t593 TYPE REF TO zcl_lnt_void_type.
          CLEAR t593.
          DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t594.
          DATA(t595) = abap_true.
          IF t595 = abap_true.
            DATA(t596) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t597) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t597->has = abap_true.
            t597->value = t596.
            t594 = t597.
          ELSE.
            DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t598.
            t594 = t598.
          ENDIF.
          DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t599.
          t593 = zcl_lnt_void_type=>get_db65( i_voided = t594 i_qualified_name = t599 ).
          result = t593.
          RETURN.
        ENDIF.
      ELSE.
        DATA t600 TYPE string.
        DATA(t601) = |Not an object reference, attribute name|.
        t600 = t601.
        DATA t602 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t603) = CAST zcl_lnt_syntax_input( t3 ).
        t602 = t603->issues.
        DATA t604 TYPE REF TO zcl_lnt_issue.
        DATA(t605) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t606 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t607) = CAST zif_lnt_node( t2 ).
        t606 = t607->get_first_token( ).
        DATA(t608) = t600.
        DATA t609 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t609.
        t604 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t605 i_token = t606 i_message_26cb = t608 i_fix = t609 ).
        APPEND t604 TO t602->items.
        DATA t610 TYPE REF TO zcl_lnt_void_type.
        CLEAR t610.
        DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t611.
        DATA(t612) = abap_true.
        IF t612 = abap_true.
          DATA(t613) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t614) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t614->has = abap_true.
          t614->value = t613.
          t611 = t614.
        ELSE.
          DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t615.
          t611 = t615.
        ENDIF.
        DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t616.
        t610 = zcl_lnt_void_type=>get_db65( i_voided = t611 i_qualified_name = t616 ).
        result = t610.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t617 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t617.
    DATA(t618) = abap_true.
    IF t618 = abap_true.
      DATA t619 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t620) = CAST zcl_lnt_abstract_type( t21 ).
      t619 = t620.
      t617 = t619.
    ELSE.
      DATA t621 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t621.
      t617 = t621.
    ENDIF.
    result = t617.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d762_843377ffce3f.
  ENDMETHOD.
ENDCLASS.
