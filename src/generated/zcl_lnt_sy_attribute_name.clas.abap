* TS: src/abap/5_syntax/expressions/attribute_name.ts:13:1 AttributeName
CLASS zcl_lnt_sy_attribute_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_error TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_attribute_name IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_context.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_type_9913.
    DATA(t5) = i_error.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t5.
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
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_void_type ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_void_type.
      DATA(t16) = t1.
      t15 ?= t16.
      result = t15.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_object_oriented.
    DATA t18 TYPE REF TO zcl_lnt_object_oriented.
    DATA t19 TYPE REF TO zcl_lnt_current_scope.
    DATA(t20) = t3.
    t19 = t20->scope.
    t18 = NEW zcl_lnt_object_oriented( i_scope = t19 ).
    t17 = t18.
    DATA t21 TYPE REF TO zcl_lnt_abstract_type.
    DATA t22 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t22.
    t21 = t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t1.
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_object_reference_type ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t25.
      DATA t26 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_current_scope.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      DATA(t29) = t3.
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
        DATA(t36) = t1.
        t35 ?= t36.
        t34 = t35.
        DATA(t37) = VALUE string( ).
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t40) = t34.
        t39 = t40->identifier.
        t38 = t39.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t46) = t38.
        t45 = t46->token.
        t44 = t45.
        DATA t47 TYPE string.
        DATA(t48) = t44.
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
      DATA(t72) = t30.
      t71 = t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      t73 = t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = t71.
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
          DATA(t85) = t30.
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
        DATA(t91) = t81.
        t90 = t91.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t92 = t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = t90.
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
          DATA(t102) = t27.
          t101 = t102->current.
          t100 = t101.
          DATA t103 TYPE REF TO zif_lnt_class_definition.
          CLEAR t103.
          DATA(t104) = VALUE abap_bool( ).
          DATA(t105) = t100.
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
            DATA(t109) = t100.
            t108 = t109.
            DATA t110 TYPE string.
            DATA(t111) = t81.
            t110 = t111->value.
            t107 = t108->find_class_definition( i_name = t110 ).
            t103 = t107.
          ENDIF.
          t99 = t103.
          t98 = t99.
          DATA t112 TYPE REF TO zif_lnt_class_definition.
          CLEAR t112.
          DATA t113 TYPE abap_bool.
          DATA(t114) = t98.
          t113 = xsdbool( t114 IS BOUND ).
          IF t113 = abap_true.
            DATA t115 TYPE REF TO zif_lnt_class_definition.
            CLEAR t115.
            DATA(t116) = abap_true.
            IF t116 = abap_true.
              DATA t117 TYPE REF TO zif_lnt_class_definition.
              DATA(t118) = t98.
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
            DATA(t125) = t27.
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
              DATA(t134) = t81.
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
            DATA(t140) = t121.
            t139 = xsdbool( t140 IS BOUND ).
            IF t139 = abap_true.
              DATA t141 TYPE REF TO zif_lnt_class_definition.
              DATA t142 TYPE REF TO zcl_lnt_class.
              DATA(t143) = t121.
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
        DATA(t147) = t79.
        t146 = xsdbool( t147 IS BOUND ).
        IF t146 = abap_true.
          DATA t148 TYPE REF TO zif_lnt_interface_definition.
          DATA t149 TYPE REF TO zif_lnt_class_definition.
          DATA(t150) = t79.
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
            DATA(t158) = t30.
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
          DATA(t164) = t154.
          t163 = t164.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          t165 = t166.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = t163.
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
            DATA(t175) = t27.
            t174 = t175->current.
            t173 = t174.
            DATA t176 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t176.
            DATA(t177) = VALUE abap_bool( ).
            DATA(t178) = t173.
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
              DATA(t182) = t173.
              t181 = t182.
              DATA t183 TYPE string.
              DATA(t184) = t154.
              t183 = t184->value.
              t180 = t181->find_interface_definition( i_name = t183 ).
              t176 = t180.
            ENDIF.
            t172 = t176.
            t171 = t172.
            DATA t185 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t185.
            DATA t186 TYPE abap_bool.
            DATA(t187) = t171.
            t186 = xsdbool( t187 IS BOUND ).
            IF t186 = abap_true.
              DATA t188 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t188.
              DATA(t189) = abap_true.
              IF t189 = abap_true.
                DATA t190 TYPE REF TO zif_lnt_interface_definition.
                DATA(t191) = t171.
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
              DATA(t198) = t27.
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
                DATA(t207) = t154.
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
              DATA(t213) = t194.
              t212 = xsdbool( t213 IS BOUND ).
              IF t212 = abap_true.
                DATA t214 TYPE REF TO zif_lnt_interface_definition.
                DATA t215 TYPE REF TO zcl_lnt_ob_interface.
                DATA t216 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t217) = t194.
                t216 = t217.
                t215 = t216.
                DATA t218 TYPE REF TO zif_lnt_interface_definition.
                DATA(t219) = t215.
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
          DATA(t223) = t152.
          t222 = xsdbool( t223 IS BOUND ).
          IF t222 = abap_true.
            DATA t224 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t224.
            DATA(t225) = abap_true.
            IF t225 = abap_true.
              DATA t226 TYPE REF TO zif_lnt_interface_definition.
              DATA(t227) = t152.
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
      DATA(t232) = t25.
      t231 = t232.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t234.
      t233 = t234.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = t231.
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
        DATA(t244) = t1.
        t243 ?= t244.
        t242 = t243.
        DATA(t245) = VALUE string( ).
        DATA t246 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t247 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t248) = t242.
        t247 = t248->identifier.
        t246 = t247.
        DATA(t249) = VALUE string( ).
        DATA t250 TYPE string.
        DATA t251 TYPE string.
        DATA t252 TYPE REF TO zcl_lnt_abstract_token.
        DATA t253 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t254) = t246.
        t253 = t254->token.
        t252 = t253.
        DATA t255 TYPE string.
        DATA(t256) = t252.
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
        DATA(t279) = t3.
        t278 = t279->issues.
        DATA t280 TYPE REF TO zcl_lnt_issue.
        DATA(t281) = t3.
        DATA t282 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t283) = t2.
        t282 = t283->get_first_token( ).
        DATA(t284) = t237.
        DATA t285 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t285.
        t280 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t281 i_token = t282 i_message_26cb = t284 i_fix = t285 ).
        t278->load( ).
        APPEND t280 TO t278->items.
        t278->save( ).
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
      DATA(t295) = t2.
      t294 = t295->get_first_token( ).
      t293 = t294.
      DATA t296 TYPE string.
      DATA t297 TYPE string.
      DATA t298 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t299) = t293.
      t298 = t299.
      DATA t300 TYPE string.
      DATA(t301) = t298.
      t300 = t301->str.
      t297 = t300.
      t296 = t297.
      DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t302.
      DATA t303 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t303.
      DATA(t304) = t17.
      DATA t305 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t305.
      DATA(t306) = abap_true.
      IF t306 = abap_true.
        DATA t307 TYPE REF TO zif_lnt_interface_definition.
        DATA(t308) = t25.
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
      DATA(t317) = t302.
      t316 = t317.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      t318 = t319.
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = t316.
      IF t321 IS INITIAL.
        t320 = abap_true.
      ENDIF.
      t315 = t320.
      IF t315 = abap_true.
        DATA t322 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t322.
        DATA(t323) = t17.
        DATA t324 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t324.
        DATA(t325) = abap_true.
        IF t325 = abap_true.
          DATA t326 TYPE REF TO zif_lnt_interface_definition.
          DATA(t327) = t25.
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
      DATA(t336) = t302.
      t335 = t336.
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t338.
      t337 = t338.
      DATA(t339) = VALUE abap_bool( ).
      DATA(t340) = t335.
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
        DATA(t353) = t25.
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
        DATA(t359) = t5.
        t358 = t359->value.
        DATA(t360) = abap_true.
        t357 = xsdbool( t358 = t360 ).
        IF t357 = abap_true.
          DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t362) = t3.
          t361 = t362->issues.
          DATA t363 TYPE REF TO zcl_lnt_issue.
          DATA(t364) = t3.
          DATA t365 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t366) = t2.
          t365 = t366->get_first_token( ).
          DATA(t367) = t341.
          DATA t368 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t368.
          t363 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t364 i_token = t365 i_message_26cb = t367 i_fix = t368 ).
          t361->load( ).
          APPEND t363 TO t361->items.
          t361->save( ).
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
      DATA(t378) = t4.
      t377 = t378.
      IF t377 IS BOUND.
        t376 = t377->truth( ).
      ENDIF.
      IF t376 = abap_true.
        DATA t379 TYPE REF TO zcl_lnt_current_scope.
        DATA(t380) = t3.
        t379 = t380->scope.
        DATA t381 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t381.
        DATA(t382) = abap_true.
        IF t382 = abap_true.
          DATA(t383) = t293.
          t381 = t383.
        ELSE.
          DATA t384 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t384.
          t381 = t384.
        ENDIF.
        DATA t385 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t386) = t302.
        t385 = t386.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t388) = t4.
        t387 = t388.
        DATA t389 TYPE string.
        DATA(t390) = t3.
        t389 = t390->filename.
        DATA t391 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t391.
        t379->add_reference( i_usage = t381 i_referencing = t385 i_type_9913 = t387 i_filename = t389 i_extra = t391 ).
      ENDIF.
      DATA t392 TYPE abap_bool.
      DATA t393 TYPE abap_bool.
      DATA(t394) = t302.
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
        DATA(t405) = t3.
        t404 = t405->scope.
        t403 = t404.
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t406.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t407.
        DATA t408 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t409) = t296.
        DATA(t410) = |~|.
        DATA(t411) = strlen( t409 ).
        DATA t412 TYPE i.
        DATA(t413) = VALUE i( ).
        DATA(t414) = VALUE i( ).
        DATA t415 TYPE i.
        DATA(t416) = VALUE string( ).
        CREATE OBJECT t408.
        t415 = strlen( t410 ).
        t412 = 0.
        IF t415 = 0.
          WHILE t412 < t411.
            t416 = t409+t412(1).
            APPEND t416 TO t408->items.
            t412 = t412 + 1.
          ENDWHILE.
        ELSE.
          WHILE t412 <= t411.
            FIND FIRST OCCURRENCE OF t410 IN SECTION OFFSET t412 OF t409 MATCH OFFSET t413.
            IF sy-subrc = 0.
              t414 = t413 - t412.
            ELSE.
              t413 = -1.
              t414 = t411 - t412.
            ENDIF.
            CLEAR t416.
            IF t414 > 0.
              t416 = t409+t412(t414).
            ENDIF.
            APPEND t416 TO t408->items.
            IF t413 < 0.
              EXIT.
            ENDIF.
            t412 = t413 + t415.
          ENDWHILE.
        ENDIF.
        DATA(t417) = 0.
        t407 = t408->get( p0 = t417 ).
        t406 = t407.
        DATA t418 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t418.
        DATA(t419) = VALUE abap_bool( ).
        DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t421) = t406.
        t420 = t421.
        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t423.
        t422 = t423.
        DATA(t424) = VALUE abap_bool( ).
        DATA(t425) = t420.
        IF t425 IS INITIAL.
          t424 = abap_true.
        ELSEIF t425->has = abap_false.
          t424 = abap_true.
        ENDIF.
        t419 = t424.
        IF t419 = abap_true.
          DATA t426 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t426.
          t418 = t426.
        ELSE.
          DATA t427 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t427.
          DATA t428 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t428.
          DATA t429 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t429.
          DATA t430 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t431 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t432) = t403.
          t431 = t432->current.
          t430 = t431.
          DATA t433 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t433.
          DATA(t434) = VALUE abap_bool( ).
          DATA(t435) = t430.
          IF t435 IS INITIAL.
            t434 = abap_true.
          ENDIF.
          IF t434 = abap_true.
            DATA t436 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t436.
            t433 = t436.
          ELSE.
            DATA t437 TYPE REF TO zif_lnt_interface_definition.
            DATA t438 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t439) = t430.
            t438 = t439.
            DATA t440 TYPE string.
            DATA(t441) = t406.
            t440 = t441->value.
            t437 = t438->find_interface_definition( i_name = t440 ).
            t433 = t437.
          ENDIF.
          t429 = t433.
          t428 = t429.
          DATA t442 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t442.
          DATA t443 TYPE abap_bool.
          DATA(t444) = t428.
          t443 = xsdbool( t444 IS BOUND ).
          IF t443 = abap_true.
            DATA t445 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t445.
            DATA(t446) = abap_true.
            IF t446 = abap_true.
              DATA t447 TYPE REF TO zif_lnt_interface_definition.
              DATA(t448) = t428.
              t447 = t448.
              t445 = t447.
            ELSE.
              DATA t449 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t449.
              t445 = t449.
            ENDIF.
            t442 = t445.
          ELSE.
            DATA t450 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t450.
            DATA t451 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t451.
            DATA t452 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t452.
            DATA t453 TYPE REF TO zif_lnt_object.
            CLEAR t453.
            DATA t454 TYPE REF TO zif_lnt_registry.
            DATA(t455) = t403.
            t454 = t455->reg.
            DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t456.
            DATA(t457) = abap_true.
            IF t457 = abap_true.
              DATA(t458) = |INTF|.
              DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t459->has = abap_true.
              t459->value = t458.
              t456 = t459.
            ELSE.
              DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t460.
              t456 = t460.
            ENDIF.
            DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t461.
            DATA(t462) = abap_true.
            IF t462 = abap_true.
              DATA t463 TYPE string.
              DATA(t464) = t406.
              t463 = t464->value.
              DATA(t465) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t465->has = abap_true.
              t465->value = t463.
              t461 = t465.
            ELSE.
              DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t466.
              t461 = t466.
            ENDIF.
            t453 = t454->get_object( i_type_9913 = t456 i_name = t461 ).
            DATA t467 TYPE REF TO object.
            t467 = t453.
            t452 ?= t467.
            t451 = t452.
            DATA t468 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t468.
            DATA t469 TYPE abap_bool.
            DATA(t470) = t451.
            t469 = xsdbool( t470 IS BOUND ).
            IF t469 = abap_true.
              DATA t471 TYPE REF TO zif_lnt_interface_definition.
              DATA t472 TYPE REF TO zcl_lnt_ob_interface.
              DATA t473 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t474) = t451.
              t473 = t474.
              t472 = t473.
              DATA t475 TYPE REF TO zif_lnt_interface_definition.
              DATA(t476) = t472.
              t475 = t476->def.
              t471 = t475.
              t468 = t471.
            ELSE.
              DATA t477 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t477.
              t468 = t477.
            ENDIF.
            t450 = t468.
            t442 = t450.
          ENDIF.
          t427 = t442.
          t418 = t427.
        ENDIF.
        t402 = t418.
        t401 = t402.
        DATA t478 TYPE abap_bool.
        DATA(t479) = t401.
        t478 = xsdbool( t479 IS BOUND ).
        IF t478 = abap_true.
          DATA t480 TYPE REF TO zcl_lnt_current_scope.
          DATA(t481) = t3.
          t480 = t481->scope.
          DATA t482 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t482.
          DATA(t483) = abap_true.
          IF t483 = abap_true.
            DATA(t484) = t293.
            t482 = t484.
          ELSE.
            DATA t485 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t485.
            t482 = t485.
          ENDIF.
          DATA t486 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t486.
          DATA(t487) = abap_true.
          IF t487 = abap_true.
            DATA t488 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t489 TYPE REF TO zif_lnt_interface_definition.
            DATA(t490) = t401.
            t489 = t490.
            t488 ?= t489.
            t486 = t488.
          ELSE.
            DATA t491 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t491.
            t486 = t491.
          ENDIF.
          DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t492.
          DATA(t493) = |Object|.
          CLEAR t492.
          CREATE OBJECT t492.
          t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t492->sval = t493.
          DATA t494 TYPE string.
          DATA(t495) = t3.
          t494 = t495->filename.
          DATA t496 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t496.
          t480->add_reference( i_usage = t482 i_referencing = t486 i_type_9913 = t492 i_filename = t494 i_extra = t496 ).
        ENDIF.
      ENDIF.
      DATA t497 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t497.
      DATA(t498) = abap_true.
      IF t498 = abap_true.
        DATA t499 TYPE REF TO zcl_lnt_abstract_type.
        DATA t500 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t501 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t502) = t302.
        t501 = t502.
        t500 = t501.
        DATA t503 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t504) = t500.
        t503 = t504->type_cba0.
        t499 = t503.
        t497 = t499.
      ELSE.
        DATA t505 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t505.
        t497 = t505.
      ENDIF.
      t21 = t497.
    ELSE.
      DATA t506 TYPE abap_bool.
      DATA(t507) = t1.
      t506 = xsdbool( t507 IS BOUND AND t507 IS INSTANCE OF zcl_lnt_data_reference ).
      IF t506 = abap_true.
        DATA t508 TYPE REF TO zcl_lnt_abstract_type.
        DATA t509 TYPE REF TO zcl_lnt_abstract_type.
        DATA t510 TYPE REF TO zcl_lnt_data_reference.
        DATA t511 TYPE REF TO zcl_lnt_data_reference.
        DATA(t512) = t1.
        t511 ?= t512.
        t510 = t511.
        DATA t513 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t514) = t510.
        t513 = t514->type_cba0.
        t509 = t513.
        t508 = t509.
        DATA t515 TYPE string.
        DATA t516 TYPE string.
        DATA t517 TYPE REF TO zcl_lnt_abstract_token.
        DATA t518 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t519) = t2.
        t518 = t519->get_first_token( ).
        t517 = t518.
        DATA t520 TYPE string.
        DATA(t521) = t517.
        t520 = t521->str.
        t516 = t520.
        t515 = t516.
        DATA(t522) = VALUE abap_bool( ).
        DATA t523 TYPE abap_bool.
        DATA t524 TYPE abap_bool.
        DATA(t525) = t515.
        DATA(t526) = |*|.
        t524 = xsdbool( t525 = t526 ).
        t523 = t524.
        IF t524 = abap_false.
          DATA t527 TYPE abap_bool.
          DATA(t528) = t508.
          t527 = xsdbool( t528 IS BOUND AND t528 IS INSTANCE OF zcl_lnt_void_type ).
          t523 = t527.
        ENDIF.
        t522 = t523.
        IF t523 = abap_false.
          DATA t529 TYPE abap_bool.
          DATA(t530) = t508.
          t529 = xsdbool( t530 IS BOUND AND t530 IS INSTANCE OF zcl_lnt_any_type ).
          t522 = t529.
        ENDIF.
        IF t522 = abap_true.
          DATA t531 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t531.
          DATA(t532) = abap_true.
          IF t532 = abap_true.
            DATA(t533) = t508.
            t531 = t533.
          ELSE.
            DATA t534 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t534.
            t531 = t534.
          ENDIF.
          result = t531.
          RETURN.
        ENDIF.
        DATA t535 TYPE abap_bool.
        DATA t536 TYPE abap_bool.
        DATA(t537) = t508.
        t536 = xsdbool( t537 IS BOUND AND t537 IS INSTANCE OF zcl_lnt_structure_type ).
        t535 = xsdbool( t536 = abap_false ).
        IF t535 = abap_true.
          DATA t538 TYPE string.
          DATA(t539) = |Data reference not structured|.
          t538 = t539.
          DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t541) = t3.
          t540 = t541->issues.
          DATA t542 TYPE REF TO zcl_lnt_issue.
          DATA(t543) = t3.
          DATA t544 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t545) = t2.
          t544 = t545->get_first_token( ).
          DATA(t546) = t538.
          DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t547.
          t542 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t543 i_token = t544 i_message_26cb = t546 i_fix = t547 ).
          t540->load( ).
          APPEND t542 TO t540->items.
          t540->save( ).
          DATA t548 TYPE REF TO zcl_lnt_void_type.
          CLEAR t548.
          DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t549.
          DATA(t550) = abap_true.
          IF t550 = abap_true.
            DATA(t551) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t552) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t552->has = abap_true.
            t552->value = t551.
            t549 = t552.
          ELSE.
            DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t553.
            t549 = t553.
          ENDIF.
          DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t554.
          t548 = zcl_lnt_void_type=>get_db65( i_voided = t549 i_qualified_name = t554 ).
          result = t548.
          RETURN.
        ENDIF.
        DATA t555 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t555.
        DATA t556 TYPE REF TO zcl_lnt_structure_type.
        DATA t557 TYPE REF TO zcl_lnt_structure_type.
        DATA(t558) = t508.
        t557 ?= t558.
        t556 = t557.
        DATA t559 TYPE string.
        DATA(t560) = t515.
        t559 = t560.
        DATA t561 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t561.
        DATA t562 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t563) = t556.
        t562 = t563->indexed.
        DATA t564 TYPE string.
        DATA(t565) = t559.
        DATA(t566) = strlen( t565 ).
        t564 = t565.
        IF t564 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t564 TO UPPER CASE.
        ELSE.
          t564 = zlnt_runtime_uppe_91169605024d=>full( t564 ).
        ENDIF.
        t561 = t562->get( p0 = t564 ).
        t555 = t561.
        t21 = t555.
        DATA(t567) = VALUE abap_bool( ).
        DATA t568 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t569) = t21.
        t568 = t569.
        DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t571.
        t570 = t571.
        DATA(t572) = VALUE abap_bool( ).
        DATA(t573) = t568.
        IF t573 IS INITIAL.
          t572 = abap_true.
        ENDIF.
        t567 = t572.
        IF t567 = abap_true.
          DATA t574 TYPE string.
          DATA t575 TYPE string.
          DATA t576 TYPE string.
          DATA(t577) = |Component "|.
          DATA(t578) = t515.
          DATA(t579) = strlen( t577 ).
          t576 = |{ t577 }{ t578 }|.
          DATA(t580) = |" not found in data reference structure|.
          DATA(t581) = strlen( t576 ).
          t575 = |{ t576 }{ t580 }|.
          t574 = t575.
          DATA t582 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t583) = t3.
          t582 = t583->issues.
          DATA t584 TYPE REF TO zcl_lnt_issue.
          DATA(t585) = t3.
          DATA t586 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t587) = t2.
          t586 = t587->get_first_token( ).
          DATA(t588) = t574.
          DATA t589 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t589.
          t584 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t585 i_token = t586 i_message_26cb = t588 i_fix = t589 ).
          t582->load( ).
          APPEND t584 TO t582->items.
          t582->save( ).
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
      ELSE.
        DATA t597 TYPE string.
        DATA(t598) = |Not an object reference, attribute name|.
        t597 = t598.
        DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t600) = t3.
        t599 = t600->issues.
        DATA t601 TYPE REF TO zcl_lnt_issue.
        DATA(t602) = t3.
        DATA t603 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t604) = t2.
        t603 = t604->get_first_token( ).
        DATA(t605) = t597.
        DATA t606 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t606.
        t601 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t602 i_token = t603 i_message_26cb = t605 i_fix = t606 ).
        t599->load( ).
        APPEND t601 TO t599->items.
        t599->save( ).
        DATA t607 TYPE REF TO zcl_lnt_void_type.
        CLEAR t607.
        DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t608.
        DATA(t609) = abap_true.
        IF t609 = abap_true.
          DATA(t610) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t611) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t611->has = abap_true.
          t611->value = t610.
          t608 = t611.
        ELSE.
          DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t612.
          t608 = t612.
        ENDIF.
        DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t613.
        t607 = zcl_lnt_void_type=>get_db65( i_voided = t608 i_qualified_name = t613 ).
        result = t607.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t614 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t614.
    DATA(t615) = abap_true.
    IF t615 = abap_true.
      DATA t616 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t617) = t21.
      t616 = t617.
      t614 = t616.
    ELSE.
      DATA t618 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t618.
      t614 = t618.
    ENDIF.
    result = t614.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d784_b0dc1a04ca48.
  ENDMETHOD.
ENDCLASS.
