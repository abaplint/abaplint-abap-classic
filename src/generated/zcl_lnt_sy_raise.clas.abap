* TS: src/abap/5_syntax/statements/raise.ts:14:1 Raise
CLASS zcl_lnt_sy_raise DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_raise IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = CAST zcl_lnt_syntax_input( t2 ).
    t5 = t6->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zif_lnt_union_8cd68e5e.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    t11 = t12->find_direct_expression( i_type_9913 = t13 ).
    t10 = t11.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_expression_node( t10 ).
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = CAST zcl_lnt_expression_node( t10 ).
      t19 = t20.
      t18 = t19->get_first_token(  ).
      t14 = t18.
    ENDIF.
    t9 = t14.
    t8 = t9.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t24) = CAST zcl_lnt_abstract_token( t8 ).
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = CAST zcl_lnt_abstract_token( t23 ).
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t25 = t28.
    ELSE.
      DATA t29 TYPE string.
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = CAST zcl_lnt_abstract_token( t23 ).
      t31 = t32.
      t30 = t31.
      DATA t33 TYPE string.
      DATA(t34) = CAST zcl_lnt_abstract_token( t30 ).
      t33 = t34->str.
      t29 = t33.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t29.
      t25 = t35.
    ENDIF.
    t22 = t25.
    t21 = t22.
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE abap_bool.
    DATA(t38) = CAST zcl_lnt_abstract_token( t8 ).
    t37 = xsdbool( t38 IS BOUND ).
    t36 = t37.
    IF t37 = abap_true.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
      IF t40 IS BOUND.
        IF t40->has = abap_true.
          t39 = xsdbool( strlen( t40->value ) > 0 ).
        ENDIF.
      ENDIF.
      t36 = t39.
    ENDIF.
    IF t36 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_current_scope.
      DATA(t44) = CAST zcl_lnt_syntax_input( t2 ).
      t43 = t44->scope.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA t47 TYPE string.
        DATA(t48) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
        t47 = t48->value.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t47.
        t45 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t45 = t50.
      ENDIF.
      t42 = t43->exists_object( i_name = t45 ).
      t41 = t42.
      DATA(t51) = VALUE abap_bool( ).
      DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t52.
      DATA t53 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t54) = CAST zcl_lnt_shape_59e28496( t41 ).
      t53 = t54.
      DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = CAST zcl_lnt_shape_59e28496( t53 ).
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t58.
        t55 = t58.
      ELSE.
        DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t60 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t61) = CAST zcl_lnt_shape_59e28496( t53 ).
        t60 = t61.
        t59 = t60->id.
        t55 = t59.
      ENDIF.
      t52 = t55.
      t51 = xsdbool( t52 IS BOUND ).
      IF t51 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_current_scope.
        DATA(t63) = CAST zcl_lnt_syntax_input( t2 ).
        t62 = t63->scope.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t67) = CAST zcl_lnt_abstract_token( t8 ).
          t66 = t67.
          t64 = t66.
        ELSE.
          DATA t68 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t68.
          t64 = t68.
        ENDIF.
        DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t69.
        DATA(t70) = abap_true.
        IF t70 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t72 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t73 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t74) = CAST zcl_lnt_shape_59e28496( t41 ).
          t73 = t74.
          t72 = t73->id.
          t71 = t72.
          t69 = t71.
        ELSE.
          DATA t75 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t75.
          t69 = t75.
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t77) = |Object|.
        CREATE OBJECT t76.
        t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t76->sval = t77.
        DATA t78 TYPE string.
        DATA(t79) = CAST zcl_lnt_syntax_input( t2 ).
        t78 = t79->filename.
        DATA t80 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t80.
        t62->add_reference( i_usage = t64 i_referencing = t69 i_type_9913 = t76 i_filename = t78 i_extra = t80 ).
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t81.
        DATA t82 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_current_scope.
        DATA t84 TYPE REF TO zcl_lnt_current_scope.
        DATA(t85) = CAST zcl_lnt_syntax_input( t2 ).
        t84 = t85->scope.
        t83 = t84.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA(t88) = abap_true.
        IF t88 = abap_true.
          DATA t89 TYPE string.
          DATA(t90) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
          t89 = t90->value.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t89.
          t87 = t91.
        ELSE.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          t87 = t92.
        ENDIF.
        t86 = t87.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t96) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t97 = t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = CAST zlnt_runtime_opti_4ba3bdccd169( t95 ).
        IF t100 IS INITIAL.
          t99 = abap_true.
        ELSEIF t100->has = abap_false.
          t99 = abap_true.
        ENDIF.
        t94 = t99.
        IF t94 = abap_true.
          DATA t101 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t101.
          t93 = t101.
        ELSE.
          DATA t102 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t102.
          DATA t103 TYPE REF TO zif_lnt_class_definition.
          CLEAR t103.
          DATA t104 TYPE REF TO zif_lnt_class_definition.
          CLEAR t104.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA t108 TYPE string.
            DATA(t109) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
            t108 = t109->value.
            DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t110->has = abap_true.
            t110->value = t108.
            t106 = t110.
          ELSE.
            DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t111.
            t106 = t111.
          ENDIF.
          t105 = t106.
          DATA t112 TYPE REF TO zif_lnt_class_definition.
          CLEAR t112.
          DATA(t113) = VALUE abap_bool( ).
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t115) = CAST zlnt_runtime_opti_4ba3bdccd169( t105 ).
          t114 = t115.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          t116 = t117.
          DATA(t118) = VALUE abap_bool( ).
          DATA(t119) = CAST zlnt_runtime_opti_4ba3bdccd169( t114 ).
          IF t119 IS INITIAL.
            t118 = abap_true.
          ELSEIF t119->has = abap_false.
            t118 = abap_true.
          ENDIF.
          t113 = t118.
          IF t113 = abap_true.
            DATA t120 TYPE REF TO zif_lnt_class_definition.
            CLEAR t120.
            t112 = t120.
          ELSE.
            DATA t121 TYPE REF TO zif_lnt_class_definition.
            CLEAR t121.
            DATA t122 TYPE REF TO zif_lnt_class_definition.
            CLEAR t122.
            DATA t123 TYPE REF TO zif_lnt_class_definition.
            CLEAR t123.
            DATA t124 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t125 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t126) = CAST zcl_lnt_current_scope( t83 ).
            t125 = t126->current.
            t124 = t125.
            DATA t127 TYPE REF TO zif_lnt_class_definition.
            CLEAR t127.
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = CAST zcl_lnt_spaghetti_scope_node( t124 ).
            IF t129 IS INITIAL.
              t128 = abap_true.
            ENDIF.
            IF t128 = abap_true.
              DATA t130 TYPE REF TO zif_lnt_class_definition.
              CLEAR t130.
              t127 = t130.
            ELSE.
              DATA t131 TYPE REF TO zif_lnt_class_definition.
              DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t133) = CAST zcl_lnt_spaghetti_scope_node( t124 ).
              t132 = t133.
              DATA t134 TYPE string.
              DATA(t135) = CAST zlnt_runtime_opti_4ba3bdccd169( t105 ).
              t134 = t135->value.
              t131 = t132->find_class_definition( i_name = t134 ).
              t127 = t131.
            ENDIF.
            t123 = t127.
            t122 = t123.
            DATA t136 TYPE REF TO zif_lnt_class_definition.
            CLEAR t136.
            DATA t137 TYPE abap_bool.
            DATA(t138) = CAST zif_lnt_class_definition( t122 ).
            t137 = xsdbool( t138 IS BOUND ).
            IF t137 = abap_true.
              DATA t139 TYPE REF TO zif_lnt_class_definition.
              CLEAR t139.
              DATA(t140) = abap_true.
              IF t140 = abap_true.
                DATA t141 TYPE REF TO zif_lnt_class_definition.
                DATA(t142) = CAST zif_lnt_class_definition( t122 ).
                t141 = t142.
                t139 = t141.
              ELSE.
                DATA t143 TYPE REF TO zif_lnt_class_definition.
                CLEAR t143.
                t139 = t143.
              ENDIF.
              t136 = t139.
            ELSE.
              DATA t144 TYPE REF TO zif_lnt_class_definition.
              CLEAR t144.
              DATA t145 TYPE REF TO zcl_lnt_class.
              CLEAR t145.
              DATA t146 TYPE REF TO zcl_lnt_class.
              CLEAR t146.
              DATA t147 TYPE REF TO zif_lnt_object.
              CLEAR t147.
              DATA t148 TYPE REF TO zif_lnt_registry.
              DATA(t149) = CAST zcl_lnt_current_scope( t83 ).
              t148 = t149->reg.
              DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t150.
              DATA(t151) = abap_true.
              IF t151 = abap_true.
                DATA(t152) = |CLAS|.
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
              DATA(t156) = abap_true.
              IF t156 = abap_true.
                DATA t157 TYPE string.
                DATA(t158) = CAST zlnt_runtime_opti_4ba3bdccd169( t105 ).
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
              t147 = t148->get_object( i_type_9913 = t150 i_name = t155 ).
              DATA t161 TYPE REF TO object.
              t161 = t147.
              t146 ?= t161.
              t145 = t146.
              DATA t162 TYPE REF TO zif_lnt_class_definition.
              CLEAR t162.
              DATA t163 TYPE abap_bool.
              DATA(t164) = CAST zcl_lnt_class( t145 ).
              t163 = xsdbool( t164 IS BOUND ).
              IF t163 = abap_true.
                DATA t165 TYPE REF TO zif_lnt_class_definition.
                DATA t166 TYPE REF TO zcl_lnt_class.
                DATA(t167) = CAST zcl_lnt_class( t145 ).
                t166 = t167.
                t165 = t166->gt_dfn_ins_src_obj_cls_ts_clss(  ).
                t162 = t165.
              ELSE.
                DATA t168 TYPE REF TO zif_lnt_class_definition.
                CLEAR t168.
                t162 = t168.
              ENDIF.
              t144 = t162.
              t136 = t144.
            ENDIF.
            t121 = t136.
            t112 = t121.
          ENDIF.
          t104 = t112.
          t103 = t104.
          DATA t169 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t169.
          DATA t170 TYPE abap_bool.
          DATA(t171) = CAST zif_lnt_class_definition( t103 ).
          t170 = xsdbool( t171 IS BOUND ).
          IF t170 = abap_true.
            DATA t172 TYPE REF TO zif_lnt_interface_definition.
            DATA t173 TYPE REF TO zif_lnt_class_definition.
            DATA(t174) = CAST zif_lnt_class_definition( t103 ).
            t173 = t174.
            t172 ?= t173.
            t169 = t172.
          ELSE.
            DATA t175 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t175.
            DATA t176 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t176.
            DATA t177 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t177.
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t178.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            DATA(t180) = abap_true.
            IF t180 = abap_true.
              DATA t181 TYPE string.
              DATA(t182) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
              t181 = t182->value.
              DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t183->has = abap_true.
              t183->value = t181.
              t179 = t183.
            ELSE.
              DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t184.
              t179 = t184.
            ENDIF.
            t178 = t179.
            DATA t185 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t185.
            DATA(t186) = VALUE abap_bool( ).
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t188) = CAST zlnt_runtime_opti_4ba3bdccd169( t178 ).
            t187 = t188.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t190.
            t189 = t190.
            DATA(t191) = VALUE abap_bool( ).
            DATA(t192) = CAST zlnt_runtime_opti_4ba3bdccd169( t187 ).
            IF t192 IS INITIAL.
              t191 = abap_true.
            ELSEIF t192->has = abap_false.
              t191 = abap_true.
            ENDIF.
            t186 = t191.
            IF t186 = abap_true.
              DATA t193 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t193.
              t185 = t193.
            ELSE.
              DATA t194 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t194.
              DATA t195 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t195.
              DATA t196 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t196.
              DATA t197 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t198 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t199) = CAST zcl_lnt_current_scope( t83 ).
              t198 = t199->current.
              t197 = t198.
              DATA t200 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t200.
              DATA(t201) = VALUE abap_bool( ).
              DATA(t202) = CAST zcl_lnt_spaghetti_scope_node( t197 ).
              IF t202 IS INITIAL.
                t201 = abap_true.
              ENDIF.
              IF t201 = abap_true.
                DATA t203 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t203.
                t200 = t203.
              ELSE.
                DATA t204 TYPE REF TO zif_lnt_interface_definition.
                DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t206) = CAST zcl_lnt_spaghetti_scope_node( t197 ).
                t205 = t206.
                DATA t207 TYPE string.
                DATA(t208) = CAST zlnt_runtime_opti_4ba3bdccd169( t178 ).
                t207 = t208->value.
                t204 = t205->find_interface_definition( i_name = t207 ).
                t200 = t204.
              ENDIF.
              t196 = t200.
              t195 = t196.
              DATA t209 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t209.
              DATA t210 TYPE abap_bool.
              DATA(t211) = CAST zif_lnt_interface_definition( t195 ).
              t210 = xsdbool( t211 IS BOUND ).
              IF t210 = abap_true.
                DATA t212 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t212.
                DATA(t213) = abap_true.
                IF t213 = abap_true.
                  DATA t214 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t215) = CAST zif_lnt_interface_definition( t195 ).
                  t214 = t215.
                  t212 = t214.
                ELSE.
                  DATA t216 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t216.
                  t212 = t216.
                ENDIF.
                t209 = t212.
              ELSE.
                DATA t217 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t217.
                DATA t218 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t218.
                DATA t219 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t219.
                DATA t220 TYPE REF TO zif_lnt_object.
                CLEAR t220.
                DATA t221 TYPE REF TO zif_lnt_registry.
                DATA(t222) = CAST zcl_lnt_current_scope( t83 ).
                t221 = t222->reg.
                DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t223.
                DATA(t224) = abap_true.
                IF t224 = abap_true.
                  DATA(t225) = |INTF|.
                  DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t226->has = abap_true.
                  t226->value = t225.
                  t223 = t226.
                ELSE.
                  DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t227.
                  t223 = t227.
                ENDIF.
                DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t228.
                DATA(t229) = abap_true.
                IF t229 = abap_true.
                  DATA t230 TYPE string.
                  DATA(t231) = CAST zlnt_runtime_opti_4ba3bdccd169( t178 ).
                  t230 = t231->value.
                  DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t232->has = abap_true.
                  t232->value = t230.
                  t228 = t232.
                ELSE.
                  DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t233.
                  t228 = t233.
                ENDIF.
                t220 = t221->get_object( i_type_9913 = t223 i_name = t228 ).
                DATA t234 TYPE REF TO object.
                t234 = t220.
                t219 ?= t234.
                t218 = t219.
                DATA t235 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t235.
                DATA t236 TYPE abap_bool.
                DATA(t237) = CAST zcl_lnt_ob_interface( t218 ).
                t236 = xsdbool( t237 IS BOUND ).
                IF t236 = abap_true.
                  DATA t238 TYPE REF TO zif_lnt_interface_definition.
                  DATA t239 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t240 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t241) = CAST zcl_lnt_ob_interface( t218 ).
                  t240 = t241.
                  t239 = t240.
                  DATA t242 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t243) = CAST zcl_lnt_ob_interface( t239 ).
                  t242 = t243->def.
                  t238 = t242.
                  t235 = t238.
                ELSE.
                  DATA t244 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t244.
                  t235 = t244.
                ENDIF.
                t217 = t235.
                t209 = t217.
              ENDIF.
              t194 = t209.
              t185 = t194.
            ENDIF.
            t177 = t185.
            t176 = t177.
            DATA t245 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t245.
            DATA t246 TYPE abap_bool.
            DATA(t247) = CAST zif_lnt_interface_definition( t176 ).
            t246 = xsdbool( t247 IS BOUND ).
            IF t246 = abap_true.
              DATA t248 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t248.
              DATA(t249) = abap_true.
              IF t249 = abap_true.
                DATA t250 TYPE REF TO zif_lnt_interface_definition.
                DATA(t251) = CAST zif_lnt_interface_definition( t176 ).
                t250 = t251.
                t248 = t250.
              ELSE.
                DATA t252 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t252.
                t248 = t252.
              ENDIF.
              t245 = t248.
            ELSE.
              DATA t253 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t253.
              t245 = t253.
            ENDIF.
            t175 = t245.
            t169 = t175.
          ENDIF.
          t102 = t169.
          t93 = t102.
        ENDIF.
        t82 = t93.
        t81 = t82.
        DATA t254 TYPE REF TO zif_lnt_union_8cd68e5e.
        CLEAR t254.
        DATA t255 TYPE REF TO zif_lnt_method_definition.
        CLEAR t255.
        DATA t256 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t256.
        DATA t257 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t257.
        DATA(t258) = CAST zcl_lnt_object_oriented( t3 ).
        DATA(t259) = CAST zif_lnt_interface_definition( t81 ).
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t260.
        DATA(t261) = abap_true.
        IF t261 = abap_true.
          DATA(t262) = |CONSTRUCTOR|.
          DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t263->has = abap_true.
          t263->value = t262.
          t260 = t263.
        ELSE.
          DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t264.
          t260 = t264.
        ENDIF.
        t257 = t258->search_method_name( i_def = t259 i_name = t260 ).
        t256 = t257.
        DATA t265 TYPE REF TO zif_lnt_method_definition.
        CLEAR t265.
        DATA(t266) = VALUE abap_bool( ).
        DATA(t267) = CAST zcl_lnt_shape_a38e878f( t256 ).
        IF t267 IS INITIAL.
          t266 = abap_true.
        ENDIF.
        IF t266 = abap_true.
          DATA t268 TYPE REF TO zif_lnt_method_definition.
          CLEAR t268.
          t265 = t268.
        ELSE.
          DATA t269 TYPE REF TO zif_lnt_method_definition.
          DATA(t270) = CAST zcl_lnt_shape_a38e878f( t256 ).
          t269 = t270->method.
          t265 = t269.
        ENDIF.
        t255 = t265.
        t254 ?= t255.
        t7 = t254.
      ELSE.
        DATA(t271) = VALUE abap_bool( ).
        DATA(t272) = VALUE abap_bool( ).
        DATA t273 TYPE REF TO zcl_lnt_ddic.
        DATA t274 TYPE REF TO zcl_lnt_ddic.
        DATA t275 TYPE REF TO zcl_lnt_current_scope.
        DATA t276 TYPE REF TO zcl_lnt_current_scope.
        DATA(t277) = CAST zcl_lnt_syntax_input( t2 ).
        t276 = t277->scope.
        t275 = t276.
        DATA t278 TYPE REF TO zcl_lnt_ddic.
        DATA t279 TYPE REF TO zif_lnt_registry.
        DATA(t280) = CAST zcl_lnt_current_scope( t275 ).
        t279 = t280->reg.
        t278 = NEW zcl_lnt_ddic( i_reg_f149 = t279 ).
        t274 = t278.
        t273 = t274.
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t281.
        DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t282.
        DATA(t283) = abap_true.
        IF t283 = abap_true.
          DATA t284 TYPE string.
          DATA(t285) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
          t284 = t285->value.
          DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t286->has = abap_true.
          t286->value = t284.
          t282 = t286.
        ELSE.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          t282 = t287.
        ENDIF.
        t281 = t282.
        DATA(t288) = VALUE abap_bool( ).
        DATA(t289) = VALUE abap_bool( ).
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t291) = CAST zlnt_runtime_opti_4ba3bdccd169( t281 ).
        t290 = t291.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        t292 = t293.
        DATA(t294) = VALUE abap_bool( ).
        DATA(t295) = CAST zlnt_runtime_opti_4ba3bdccd169( t290 ).
        IF t295 IS INITIAL.
          t294 = abap_true.
        ELSEIF t295->has = abap_false.
          t294 = abap_true.
        ENDIF.
        t289 = t294.
        IF t289 = abap_true.
          DATA(t296) = abap_true.
          t288 = t296.
        ELSE.
          DATA t297 TYPE abap_bool.
          DATA t298 TYPE REF TO zif_lnt_registry.
          DATA(t299) = CAST zcl_lnt_ddic( t273 ).
          t298 = t299->reg.
          DATA t300 TYPE string.
          DATA(t301) = CAST zlnt_runtime_opti_4ba3bdccd169( t281 ).
          t300 = t301->value.
          t297 = t298->in_error_namespace( i_name = t300 ).
          t288 = t297.
        ENDIF.
        t272 = t288.
        DATA(t302) = abap_false.
        t271 = xsdbool( t272 = t302 ).
        IF t271 = abap_true.
          DATA t303 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t303.
          DATA t304 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t304.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t305.
          DATA(t306) = abap_true.
          IF t306 = abap_true.
            DATA t307 TYPE string.
            DATA(t308) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
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
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t311.
          DATA(t312) = abap_true.
          IF t312 = abap_true.
            DATA(t313) = |Void|.
            DATA(t314) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t314->has = abap_true.
            t314->value = t313.
            t311 = t314.
          ELSE.
            DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t315.
            t311 = t315.
          ENDIF.
          DATA t316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t316.
          t304 = NEW zcl_lnt_ireference_extras( i_oo_name = t305 i_oo_type = t311 i_found_qualified = t316 ).
          t303 = t304.
          DATA t317 TYPE REF TO zcl_lnt_current_scope.
          DATA(t318) = CAST zcl_lnt_syntax_input( t2 ).
          t317 = t318->scope.
          DATA t319 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t319.
          DATA(t320) = abap_true.
          IF t320 = abap_true.
            DATA t321 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t322) = CAST zcl_lnt_abstract_token( t8 ).
            t321 = t322.
            t319 = t321.
          ELSE.
            DATA t323 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t323.
            t319 = t323.
          ENDIF.
          DATA t324 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t324.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t326) = |Object (Void)|.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t325->sval = t326.
          DATA t327 TYPE string.
          DATA(t328) = CAST zcl_lnt_syntax_input( t2 ).
          t327 = t328->filename.
          DATA t329 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t329.
          DATA(t330) = abap_true.
          IF t330 = abap_true.
            DATA(t331) = CAST zcl_lnt_ireference_extras( t303 ).
            t329 = t331.
          ELSE.
            DATA t332 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t332.
            t329 = t332.
          ENDIF.
          t317->add_reference( i_usage = t319 i_referencing = t324 i_type_9913 = t325 i_filename = t327 i_extra = t329 ).
          DATA t333 TYPE REF TO zcl_lnt_void_type.
          CLEAR t333.
          DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t334.
          DATA(t335) = abap_true.
          IF t335 = abap_true.
            DATA t336 TYPE string.
            DATA(t337) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
            t336 = t337->value.
            DATA(t338) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t338->has = abap_true.
            t338->value = t336.
            t334 = t338.
          ELSE.
            DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t339.
            t334 = t339.
          ENDIF.
          DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t340.
          t333 = zcl_lnt_void_type=>get_db65( i_voided = t334 i_qualified_name = t340 ).
          t7 = t333.
        ELSE.
          DATA t341 TYPE string.
          DATA t342 TYPE string.
          DATA(t343) = |RAISE, unknown class |.
          DATA t344 TYPE string.
          DATA(t345) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
          t344 = t345->value.
          DATA(t346) = strlen( t343 ).
          t342 = |{ t343 }{ t344 }|.
          t341 = t342.
          DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t348) = CAST zcl_lnt_syntax_input( t2 ).
          t347 = t348->issues.
          DATA t349 TYPE REF TO zcl_lnt_issue.
          DATA(t350) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t351 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t352) = CAST zcl_lnt_abstract_token( t8 ).
          t351 = t352.
          DATA(t353) = t341.
          DATA t354 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t354.
          t349 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t350 i_token = t351 i_message_26cb = t353 i_fix = t354 ).
          APPEND t349 TO t347->items.
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t355) = VALUE abap_bool( ).
      DATA t356 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA(t357) = CAST zif_lnt_union_8cd68e5e( t7 ).
      t356 = t357.
      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t359.
      t358 = t359.
      DATA(t360) = VALUE abap_bool( ).
      DATA(t361) = CAST zif_lnt_union_8cd68e5e( t356 ).
      IF t361 IS INITIAL.
        t360 = abap_true.
      ENDIF.
      t355 = t360.
      IF t355 = abap_true.
        DATA t362 TYPE REF TO zcl_lnt_void_type.
        CLEAR t362.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        DATA(t364) = abap_true.
        IF t364 = abap_true.
          DATA t365 TYPE string.
          DATA(t366) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
          t365 = t366->value.
          DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t367->has = abap_true.
          t367->value = t365.
          t363 = t367.
        ELSE.
          DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t368.
          t363 = t368.
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        t362 = zcl_lnt_void_type=>get_db65( i_voided = t363 i_qualified_name = t369 ).
        t7 = t362.
      ENDIF.
    ENDIF.
    DATA t370 TYPE REF TO zcl_lnt_expression_node.
    DATA t371 TYPE REF TO zcl_lnt_expression_node.
    DATA(t372) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t373) = |EXCEPTION|.
    t371 = t372->find_expression_after_token( i_text = t373 ).
    t370 = t371.
    DATA t374 TYPE abap_bool.
    DATA t375 TYPE abap_bool.
    DATA(t376) = CAST zcl_lnt_expression_node( t370 ).
    t375 = xsdbool( t376 IS BOUND AND t376 IS INSTANCE OF zcl_lnt_expression_node ).
    t374 = t375.
    IF t375 = abap_true.
      DATA t377 TYPE abap_bool.
      DATA t378 TYPE abap_bool.
      DATA t379 TYPE REF TO zif_lnt_statement_runnable.
      DATA t380 TYPE REF TO zcl_lnt_expression_node.
      DATA(t381) = CAST zcl_lnt_expression_node( t370 ).
      t380 = t381.
      t379 = t380->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t378 = xsdbool( t379 IS BOUND AND t379 IS INSTANCE OF zcl_lnt_simple_source2 ).
      t377 = t378.
      IF t378 = abap_false.
        DATA t382 TYPE abap_bool.
        DATA t383 TYPE REF TO zif_lnt_statement_runnable.
        DATA t384 TYPE REF TO zcl_lnt_expression_node.
        DATA(t385) = CAST zcl_lnt_expression_node( t370 ).
        t384 = t385.
        t383 = t384->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
        t382 = xsdbool( t383 IS BOUND AND t383 IS INSTANCE OF zcl_lnt_st_source ).
        t377 = t382.
      ENDIF.
      t374 = t377.
    ENDIF.
    IF t374 = abap_true.
      DATA t386 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t386.
      DATA t387 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t387.
      DATA t388 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t388.
      DATA(t389) = abap_true.
      IF t389 = abap_true.
        DATA t390 TYPE REF TO zcl_lnt_expression_node.
        DATA(t391) = CAST zcl_lnt_expression_node( t370 ).
        t390 = t391.
        t388 = t390.
      ELSE.
        DATA t392 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t392.
        t388 = t392.
      ENDIF.
      DATA(t393) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t394 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t394.
      DATA t395 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t395.
      DATA t396 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t396.
      DATA t397 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t397.
      t387 = zcl_lnt_sy_source=>run_syntax( i_node = t388 i_input_967e = t393 i_target_type = t394 i_write_reference = t395 i_allow_generic_deference = t396 i_read_reference = t397 ).
      t386 = t387.
      DATA t398 TYPE abap_bool.
      DATA(t399) = CAST zcl_lnt_abstract_type( t386 ).
      t398 = xsdbool( t399 IS BOUND AND t399 IS INSTANCE OF zcl_lnt_void_type ).
      IF t398 = abap_true.
        DATA t400 TYPE REF TO zcl_lnt_void_type.
        DATA(t401) = CAST zcl_lnt_abstract_type( t386 ).
        t400 ?= t401.
        t7 = t400.
      ELSE.
        DATA t402 TYPE abap_bool.
        DATA(t403) = CAST zcl_lnt_abstract_type( t386 ).
        t402 = xsdbool( t403 IS BOUND AND t403 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t402 = abap_true.
          DATA t404 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t404.
          DATA t405 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t405.
          DATA t406 TYPE REF TO zcl_lnt_current_scope.
          DATA t407 TYPE REF TO zcl_lnt_current_scope.
          DATA(t408) = CAST zcl_lnt_syntax_input( t2 ).
          t407 = t408->scope.
          t406 = t407.
          DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t409.
          DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t410.
          DATA(t411) = abap_true.
          IF t411 = abap_true.
            DATA(t412) = VALUE string( ).
            DATA t413 TYPE REF TO zcl_lnt_object_reference_type.
            DATA t414 TYPE REF TO zcl_lnt_object_reference_type.
            DATA(t415) = CAST zcl_lnt_abstract_type( t386 ).
            t414 ?= t415.
            t413 = t414.
            DATA(t416) = VALUE string( ).
            DATA t417 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t418 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t419) = CAST zcl_lnt_object_reference_type( t413 ).
            t418 = t419->identifier.
            t417 = t418.
            DATA(t420) = VALUE string( ).
            DATA t421 TYPE string.
            DATA t422 TYPE string.
            DATA t423 TYPE REF TO zcl_lnt_abstract_token.
            DATA t424 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t425) = CAST zcl_lnt_fi_identifier( t417 ).
            t424 = t425->token.
            t423 = t424.
            DATA t426 TYPE string.
            DATA(t427) = CAST zcl_lnt_abstract_token( t423 ).
            t426 = t427->str.
            t422 = t426.
            t421 = t422.
            DATA(t428) = VALUE abap_bool( ).
            DATA(t429) = VALUE string( ).
            DATA(t430) = t421.
            DATA(t431) = 0.
            DATA(t432) = 1.
            DATA(t433) = strlen( t430 ).
            IF t431 < 0.
              t431 = t431 + t433.
              IF t431 < 0.
                t431 = 0.
              ENDIF.
            ENDIF.
            IF t431 > t433 OR t432 <= 0.
              CLEAR t429.
            ELSE.
              IF t432 > t433 - t431.
                t432 = t433 - t431.
              ENDIF.
              t429 = t430+t431(t432).
            ENDIF.
            DATA(t434) = |!|.
            t428 = xsdbool( t429 = t434 ).
            IF t428 = abap_true.
              DATA(t435) = VALUE string( ).
              DATA t436 TYPE string.
              DATA(t437) = t421.
              t436 = t437.
              DATA(t438) = VALUE string( ).
              DATA(t439) = t436.
              DATA(t440) = 1.
              DATA t441 TYPE i.
              DATA(t442) = t436.
              DATA(t443) = strlen( t442 ).
              t441 = t443.
              DATA(t444) = strlen( t439 ).
              IF t440 < 0.
                t440 = t440 + t444.
                IF t440 < 0.
                  t440 = 0.
                ENDIF.
              ENDIF.
              IF t440 > t444 OR t441 <= 0.
                CLEAR t438.
              ELSE.
                IF t441 > t444 - t440.
                  t441 = t444 - t440.
                ENDIF.
                t438 = t439+t440(t441).
              ENDIF.
              t435 = t438.
              t421 = t435.
            ENDIF.
            DATA(t445) = t421.
            t420 = t445.
            t416 = t420.
            t412 = t416.
            DATA(t446) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t446->has = abap_true.
            t446->value = t412.
            t410 = t446.
          ELSE.
            DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t447.
            t410 = t447.
          ENDIF.
          t409 = t410.
          DATA t448 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t448.
          DATA(t449) = VALUE abap_bool( ).
          DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t451) = CAST zlnt_runtime_opti_4ba3bdccd169( t409 ).
          t450 = t451.
          DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t453.
          t452 = t453.
          DATA(t454) = VALUE abap_bool( ).
          DATA(t455) = CAST zlnt_runtime_opti_4ba3bdccd169( t450 ).
          IF t455 IS INITIAL.
            t454 = abap_true.
          ELSEIF t455->has = abap_false.
            t454 = abap_true.
          ENDIF.
          t449 = t454.
          IF t449 = abap_true.
            DATA t456 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t456.
            t448 = t456.
          ELSE.
            DATA t457 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t457.
            DATA t458 TYPE REF TO zif_lnt_class_definition.
            CLEAR t458.
            DATA t459 TYPE REF TO zif_lnt_class_definition.
            CLEAR t459.
            DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t460.
            DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t461.
            DATA(t462) = abap_true.
            IF t462 = abap_true.
              DATA t463 TYPE string.
              DATA(t464) = CAST zlnt_runtime_opti_4ba3bdccd169( t409 ).
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
            t460 = t461.
            DATA t467 TYPE REF TO zif_lnt_class_definition.
            CLEAR t467.
            DATA(t468) = VALUE abap_bool( ).
            DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t470) = CAST zlnt_runtime_opti_4ba3bdccd169( t460 ).
            t469 = t470.
            DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t472.
            t471 = t472.
            DATA(t473) = VALUE abap_bool( ).
            DATA(t474) = CAST zlnt_runtime_opti_4ba3bdccd169( t469 ).
            IF t474 IS INITIAL.
              t473 = abap_true.
            ELSEIF t474->has = abap_false.
              t473 = abap_true.
            ENDIF.
            t468 = t473.
            IF t468 = abap_true.
              DATA t475 TYPE REF TO zif_lnt_class_definition.
              CLEAR t475.
              t467 = t475.
            ELSE.
              DATA t476 TYPE REF TO zif_lnt_class_definition.
              CLEAR t476.
              DATA t477 TYPE REF TO zif_lnt_class_definition.
              CLEAR t477.
              DATA t478 TYPE REF TO zif_lnt_class_definition.
              CLEAR t478.
              DATA t479 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t480 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t481) = CAST zcl_lnt_current_scope( t406 ).
              t480 = t481->current.
              t479 = t480.
              DATA t482 TYPE REF TO zif_lnt_class_definition.
              CLEAR t482.
              DATA(t483) = VALUE abap_bool( ).
              DATA(t484) = CAST zcl_lnt_spaghetti_scope_node( t479 ).
              IF t484 IS INITIAL.
                t483 = abap_true.
              ENDIF.
              IF t483 = abap_true.
                DATA t485 TYPE REF TO zif_lnt_class_definition.
                CLEAR t485.
                t482 = t485.
              ELSE.
                DATA t486 TYPE REF TO zif_lnt_class_definition.
                DATA t487 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t488) = CAST zcl_lnt_spaghetti_scope_node( t479 ).
                t487 = t488.
                DATA t489 TYPE string.
                DATA(t490) = CAST zlnt_runtime_opti_4ba3bdccd169( t460 ).
                t489 = t490->value.
                t486 = t487->find_class_definition( i_name = t489 ).
                t482 = t486.
              ENDIF.
              t478 = t482.
              t477 = t478.
              DATA t491 TYPE REF TO zif_lnt_class_definition.
              CLEAR t491.
              DATA t492 TYPE abap_bool.
              DATA(t493) = CAST zif_lnt_class_definition( t477 ).
              t492 = xsdbool( t493 IS BOUND ).
              IF t492 = abap_true.
                DATA t494 TYPE REF TO zif_lnt_class_definition.
                CLEAR t494.
                DATA(t495) = abap_true.
                IF t495 = abap_true.
                  DATA t496 TYPE REF TO zif_lnt_class_definition.
                  DATA(t497) = CAST zif_lnt_class_definition( t477 ).
                  t496 = t497.
                  t494 = t496.
                ELSE.
                  DATA t498 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t498.
                  t494 = t498.
                ENDIF.
                t491 = t494.
              ELSE.
                DATA t499 TYPE REF TO zif_lnt_class_definition.
                CLEAR t499.
                DATA t500 TYPE REF TO zcl_lnt_class.
                CLEAR t500.
                DATA t501 TYPE REF TO zcl_lnt_class.
                CLEAR t501.
                DATA t502 TYPE REF TO zif_lnt_object.
                CLEAR t502.
                DATA t503 TYPE REF TO zif_lnt_registry.
                DATA(t504) = CAST zcl_lnt_current_scope( t406 ).
                t503 = t504->reg.
                DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t505.
                DATA(t506) = abap_true.
                IF t506 = abap_true.
                  DATA(t507) = |CLAS|.
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
                DATA(t511) = abap_true.
                IF t511 = abap_true.
                  DATA t512 TYPE string.
                  DATA(t513) = CAST zlnt_runtime_opti_4ba3bdccd169( t460 ).
                  t512 = t513->value.
                  DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t514->has = abap_true.
                  t514->value = t512.
                  t510 = t514.
                ELSE.
                  DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t515.
                  t510 = t515.
                ENDIF.
                t502 = t503->get_object( i_type_9913 = t505 i_name = t510 ).
                DATA t516 TYPE REF TO object.
                t516 = t502.
                t501 ?= t516.
                t500 = t501.
                DATA t517 TYPE REF TO zif_lnt_class_definition.
                CLEAR t517.
                DATA t518 TYPE abap_bool.
                DATA(t519) = CAST zcl_lnt_class( t500 ).
                t518 = xsdbool( t519 IS BOUND ).
                IF t518 = abap_true.
                  DATA t520 TYPE REF TO zif_lnt_class_definition.
                  DATA t521 TYPE REF TO zcl_lnt_class.
                  DATA(t522) = CAST zcl_lnt_class( t500 ).
                  t521 = t522.
                  t520 = t521->gt_dfn_ins_src_obj_cls_ts_clss(  ).
                  t517 = t520.
                ELSE.
                  DATA t523 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t523.
                  t517 = t523.
                ENDIF.
                t499 = t517.
                t491 = t499.
              ENDIF.
              t476 = t491.
              t467 = t476.
            ENDIF.
            t459 = t467.
            t458 = t459.
            DATA t524 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t524.
            DATA t525 TYPE abap_bool.
            DATA(t526) = CAST zif_lnt_class_definition( t458 ).
            t525 = xsdbool( t526 IS BOUND ).
            IF t525 = abap_true.
              DATA t527 TYPE REF TO zif_lnt_interface_definition.
              DATA t528 TYPE REF TO zif_lnt_class_definition.
              DATA(t529) = CAST zif_lnt_class_definition( t458 ).
              t528 = t529.
              t527 ?= t528.
              t524 = t527.
            ELSE.
              DATA t530 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t530.
              DATA t531 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t531.
              DATA t532 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t532.
              DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t533.
              DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t534.
              DATA(t535) = abap_true.
              IF t535 = abap_true.
                DATA t536 TYPE string.
                DATA(t537) = CAST zlnt_runtime_opti_4ba3bdccd169( t409 ).
                t536 = t537->value.
                DATA(t538) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t538->has = abap_true.
                t538->value = t536.
                t534 = t538.
              ELSE.
                DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t539.
                t534 = t539.
              ENDIF.
              t533 = t534.
              DATA t540 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t540.
              DATA(t541) = VALUE abap_bool( ).
              DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t543) = CAST zlnt_runtime_opti_4ba3bdccd169( t533 ).
              t542 = t543.
              DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t545.
              t544 = t545.
              DATA(t546) = VALUE abap_bool( ).
              DATA(t547) = CAST zlnt_runtime_opti_4ba3bdccd169( t542 ).
              IF t547 IS INITIAL.
                t546 = abap_true.
              ELSEIF t547->has = abap_false.
                t546 = abap_true.
              ENDIF.
              t541 = t546.
              IF t541 = abap_true.
                DATA t548 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t548.
                t540 = t548.
              ELSE.
                DATA t549 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t549.
                DATA t550 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t550.
                DATA t551 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t551.
                DATA t552 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t553 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t554) = CAST zcl_lnt_current_scope( t406 ).
                t553 = t554->current.
                t552 = t553.
                DATA t555 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t555.
                DATA(t556) = VALUE abap_bool( ).
                DATA(t557) = CAST zcl_lnt_spaghetti_scope_node( t552 ).
                IF t557 IS INITIAL.
                  t556 = abap_true.
                ENDIF.
                IF t556 = abap_true.
                  DATA t558 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t558.
                  t555 = t558.
                ELSE.
                  DATA t559 TYPE REF TO zif_lnt_interface_definition.
                  DATA t560 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t561) = CAST zcl_lnt_spaghetti_scope_node( t552 ).
                  t560 = t561.
                  DATA t562 TYPE string.
                  DATA(t563) = CAST zlnt_runtime_opti_4ba3bdccd169( t533 ).
                  t562 = t563->value.
                  t559 = t560->find_interface_definition( i_name = t562 ).
                  t555 = t559.
                ENDIF.
                t551 = t555.
                t550 = t551.
                DATA t564 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t564.
                DATA t565 TYPE abap_bool.
                DATA(t566) = CAST zif_lnt_interface_definition( t550 ).
                t565 = xsdbool( t566 IS BOUND ).
                IF t565 = abap_true.
                  DATA t567 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t567.
                  DATA(t568) = abap_true.
                  IF t568 = abap_true.
                    DATA t569 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t570) = CAST zif_lnt_interface_definition( t550 ).
                    t569 = t570.
                    t567 = t569.
                  ELSE.
                    DATA t571 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t571.
                    t567 = t571.
                  ENDIF.
                  t564 = t567.
                ELSE.
                  DATA t572 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t572.
                  DATA t573 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t573.
                  DATA t574 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t574.
                  DATA t575 TYPE REF TO zif_lnt_object.
                  CLEAR t575.
                  DATA t576 TYPE REF TO zif_lnt_registry.
                  DATA(t577) = CAST zcl_lnt_current_scope( t406 ).
                  t576 = t577->reg.
                  DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t578.
                  DATA(t579) = abap_true.
                  IF t579 = abap_true.
                    DATA(t580) = |INTF|.
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
                  DATA(t584) = abap_true.
                  IF t584 = abap_true.
                    DATA t585 TYPE string.
                    DATA(t586) = CAST zlnt_runtime_opti_4ba3bdccd169( t533 ).
                    t585 = t586->value.
                    DATA(t587) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t587->has = abap_true.
                    t587->value = t585.
                    t583 = t587.
                  ELSE.
                    DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t588.
                    t583 = t588.
                  ENDIF.
                  t575 = t576->get_object( i_type_9913 = t578 i_name = t583 ).
                  DATA t589 TYPE REF TO object.
                  t589 = t575.
                  t574 ?= t589.
                  t573 = t574.
                  DATA t590 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t590.
                  DATA t591 TYPE abap_bool.
                  DATA(t592) = CAST zcl_lnt_ob_interface( t573 ).
                  t591 = xsdbool( t592 IS BOUND ).
                  IF t591 = abap_true.
                    DATA t593 TYPE REF TO zif_lnt_interface_definition.
                    DATA t594 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t595 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t596) = CAST zcl_lnt_ob_interface( t573 ).
                    t595 = t596.
                    t594 = t595.
                    DATA t597 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t598) = CAST zcl_lnt_ob_interface( t594 ).
                    t597 = t598->def.
                    t593 = t597.
                    t590 = t593.
                  ELSE.
                    DATA t599 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t599.
                    t590 = t599.
                  ENDIF.
                  t572 = t590.
                  t564 = t572.
                ENDIF.
                t549 = t564.
                t540 = t549.
              ENDIF.
              t532 = t540.
              t531 = t532.
              DATA t600 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t600.
              DATA t601 TYPE abap_bool.
              DATA(t602) = CAST zif_lnt_interface_definition( t531 ).
              t601 = xsdbool( t602 IS BOUND ).
              IF t601 = abap_true.
                DATA t603 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t603.
                DATA(t604) = abap_true.
                IF t604 = abap_true.
                  DATA t605 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t606) = CAST zif_lnt_interface_definition( t531 ).
                  t605 = t606.
                  t603 = t605.
                ELSE.
                  DATA t607 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t607.
                  t603 = t607.
                ENDIF.
                t600 = t603.
              ELSE.
                DATA t608 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t608.
                t600 = t608.
              ENDIF.
              t530 = t600.
              t524 = t530.
            ENDIF.
            t457 = t524.
            t448 = t457.
          ENDIF.
          t405 = t448.
          t404 = t405.
          DATA t609 TYPE REF TO zif_lnt_union_8cd68e5e.
          CLEAR t609.
          DATA t610 TYPE REF TO zif_lnt_method_definition.
          CLEAR t610.
          DATA t611 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t611.
          DATA t612 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t612.
          DATA(t613) = CAST zcl_lnt_object_oriented( t3 ).
          DATA(t614) = CAST zif_lnt_interface_definition( t404 ).
          DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t615.
          DATA(t616) = abap_true.
          IF t616 = abap_true.
            DATA(t617) = |CONSTRUCTOR|.
            DATA(t618) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t618->has = abap_true.
            t618->value = t617.
            t615 = t618.
          ELSE.
            DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t619.
            t615 = t619.
          ENDIF.
          t612 = t613->search_method_name( i_def = t614 i_name = t615 ).
          t611 = t612.
          DATA t620 TYPE REF TO zif_lnt_method_definition.
          CLEAR t620.
          DATA(t621) = VALUE abap_bool( ).
          DATA(t622) = CAST zcl_lnt_shape_a38e878f( t611 ).
          IF t622 IS INITIAL.
            t621 = abap_true.
          ENDIF.
          IF t621 = abap_true.
            DATA t623 TYPE REF TO zif_lnt_method_definition.
            CLEAR t623.
            t620 = t623.
          ELSE.
            DATA t624 TYPE REF TO zif_lnt_method_definition.
            DATA(t625) = CAST zcl_lnt_shape_a38e878f( t611 ).
            t624 = t625->method.
            t620 = t624.
          ENDIF.
          t610 = t620.
          t609 ?= t610.
          t7 = t609.
        ELSE.
          DATA(t626) = VALUE abap_bool( ).
          DATA t627 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t628) = CAST zcl_lnt_abstract_type( t386 ).
          t627 = t628.
          DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t630.
          t629 = t630.
          DATA(t631) = VALUE abap_bool( ).
          DATA(t632) = VALUE abap_bool( ).
          DATA(t633) = CAST zcl_lnt_abstract_type( t627 ).
          IF t633 IS INITIAL.
            t632 = abap_true.
          ENDIF.
          t631 = xsdbool( t632 = abap_false ).
          t626 = t631.
          IF t626 = abap_true.
            DATA t634 TYPE string.
            DATA t635 TYPE string.
            DATA(t636) = |RAISE EXCEPTION, must be object reference, got |.
            DATA t637 TYPE string.
            DATA t638 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA t639 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t640) = CAST zcl_lnt_abstract_type( t386 ).
            t639 = t640.
            t638 = t639->zlnt_builtin_clas_3f891b097658( ).
            t637 = t638->name.
            DATA(t641) = strlen( t636 ).
            t635 = |{ t636 }{ t637 }|.
            t634 = t635.
            DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t643) = CAST zcl_lnt_syntax_input( t2 ).
            t642 = t643->issues.
            DATA t644 TYPE REF TO zcl_lnt_issue.
            DATA(t645) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t646 TYPE REF TO zcl_lnt_abstract_token.
            DATA t647 TYPE REF TO zcl_lnt_expression_node.
            DATA(t648) = CAST zcl_lnt_expression_node( t370 ).
            t647 = t648.
            t646 = t647->get_first_token(  ).
            DATA(t649) = t634.
            DATA t650 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t650.
            t644 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t645 i_token = t646 i_message_26cb = t649 i_fix = t650 ).
            APPEND t644 TO t642->items.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t651) = VALUE abap_bool( ).
    DATA t652 TYPE REF TO zif_lnt_union_8cd68e5e.
    DATA(t653) = CAST zif_lnt_union_8cd68e5e( t7 ).
    t652 = t653.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t655.
    t654 = t655.
    DATA(t656) = VALUE abap_bool( ).
    DATA(t657) = CAST zif_lnt_union_8cd68e5e( t652 ).
    IF t657 IS INITIAL.
      t656 = abap_true.
    ENDIF.
    t651 = t656.
    IF t651 = abap_true.
      DATA t658 TYPE REF TO zcl_lnt_void_type.
      CLEAR t658.
      DATA t659 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t659.
      DATA(t660) = abap_true.
      IF t660 = abap_true.
        DATA(t661) = |Exception|.
        DATA(t662) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t662->has = abap_true.
        t662->value = t661.
        t659 = t662.
      ELSE.
        DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t663.
        t659 = t663.
      ENDIF.
      DATA t664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t664.
      t658 = zcl_lnt_void_type=>get_db65( i_voided = t659 i_qualified_name = t664 ).
      t7 = t658.
    ENDIF.
    DATA t665 TYPE REF TO zcl_lnt_expression_node.
    DATA t666 TYPE REF TO zcl_lnt_expression_node.
    DATA(t667) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t668) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14 ).
    t666 = t667->find_direct_expression( i_type_9913 = t668 ).
    t665 = t666.
    DATA t669 TYPE abap_bool.
    DATA(t670) = CAST zcl_lnt_expression_node( t665 ).
    t669 = xsdbool( t670 IS BOUND ).
    IF t669 = abap_true.
      DATA(t671) = NEW zcl_lnt_sy_method_parameters(  ).
      DATA t672 TYPE REF TO zcl_lnt_expression_node.
      DATA(t673) = CAST zcl_lnt_expression_node( t665 ).
      t672 = t673.
      DATA(t674) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t675 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA(t676) = CAST zif_lnt_union_8cd68e5e( t7 ).
      t675 = t676.
      DATA t677 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t677.
      DATA(t678) = abap_true.
      IF t678 = abap_true.
        DATA(t679) = abap_true.
        DATA(t680) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t680->has = abap_true.
        t680->value = t679.
        t677 = t680.
      ELSE.
        DATA t681 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t681.
        t677 = t681.
      ENDIF.
      t671->check_exporting( i_node = t672 i_input_967e = t674 i_method = t675 i_errors = t677 ).
    ENDIF.
    DATA t682 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t683) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t684) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4 ).
    t682 = t683->find_direct_expressions( i_type_9913 = t684 ).
    DATA t685 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t685.
    DATA t686 TYPE REF TO object.
    CLEAR t686.
    LOOP AT t682->items INTO t686.
      t685 ?= t686.
      DATA(t687) = CAST zcl_lnt_expression_node( t685 ).
      DATA(t688) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_raise_with=>run_syntax( i_node = t687 i_input_967e = t688 ).
    ENDLOOP.
    DATA t689 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t690) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t691) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t689 = t690->find_direct_expressions( i_type_9913 = t691 ).
    DATA t692 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t692.
    DATA t693 TYPE REF TO object.
    CLEAR t693.
    LOOP AT t689->items INTO t693.
      t692 ?= t693.
      DATA t694 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t694.
      DATA t695 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t695.
      DATA(t696) = abap_true.
      IF t696 = abap_true.
        DATA(t697) = CAST zcl_lnt_expression_node( t692 ).
        t695 = t697.
      ELSE.
        DATA t698 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t698.
        t695 = t698.
      ENDIF.
      DATA(t699) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t700 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t700.
      DATA t701 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t701.
      DATA t702 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t702.
      DATA t703 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t703.
      t694 = zcl_lnt_sy_source=>run_syntax( i_node = t695 i_input_967e = t699 i_target_type = t700 i_write_reference = t701 i_allow_generic_deference = t702 i_read_reference = t703 ).
    ENDLOOP.
    DATA t704 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t705) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t706) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2 ).
    t704 = t705->find_direct_expressions( i_type_9913 = t706 ).
    DATA t707 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t707.
    DATA t708 TYPE REF TO object.
    CLEAR t708.
    LOOP AT t704->items INTO t708.
      t707 ?= t708.
      DATA t709 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t709.
      DATA t710 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t710.
      DATA(t711) = abap_true.
      IF t711 = abap_true.
        DATA(t712) = CAST zcl_lnt_expression_node( t707 ).
        t710 = t712.
      ELSE.
        DATA t713 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t713.
        t710 = t713.
      ENDIF.
      DATA(t714) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t715 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t715.
      DATA t716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t716.
      DATA t717 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t717.
      DATA t718 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t718.
      t709 = zcl_lnt_sy_source=>run_syntax( i_node = t710 i_input_967e = t714 i_target_type = t715 i_write_reference = t716 i_allow_generic_deference = t717 i_read_reference = t718 ).
    ENDLOOP.
    DATA t719 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t720) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t721) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43 ).
    t719 = t720->find_direct_expressions( i_type_9913 = t721 ).
    DATA t722 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t722.
    DATA t723 TYPE REF TO object.
    CLEAR t723.
    LOOP AT t719->items INTO t723.
      t722 ?= t723.
      DATA(t724) = CAST zcl_lnt_expression_node( t722 ).
      DATA(t725) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_message_source=>run_syntax( i_node = t724 i_input_967e = t725 ).
    ENDLOOP.
    DATA t726 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t726.
    DATA t727 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t727.
    DATA t728 TYPE REF TO zcl_lnt_expression_node.
    DATA t729 TYPE REF TO zcl_lnt_expression_node.
    DATA(t730) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t731) = |ID|.
    t729 = t730->find_expression_after_token( i_text = t731 ).
    t728 = t729.
    DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t732.
    DATA(t733) = VALUE abap_bool( ).
    DATA(t734) = CAST zcl_lnt_expression_node( t728 ).
    IF t734 IS INITIAL.
      t733 = abap_true.
    ENDIF.
    IF t733 = abap_true.
      DATA t735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t735.
      t732 = t735.
    ELSE.
      DATA t736 TYPE string.
      DATA t737 TYPE REF TO zcl_lnt_expression_node.
      DATA(t738) = CAST zcl_lnt_expression_node( t728 ).
      t737 = t738.
      t736 = t737->concat_tokens(  ).
      DATA(t739) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t739->has = abap_true.
      t739->value = t736.
      t732 = t739.
    ENDIF.
    t727 = t732.
    t726 = t727.
    DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t740.
    DATA t741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t741.
    DATA t742 TYPE REF TO zcl_lnt_expression_node.
    DATA t743 TYPE REF TO zcl_lnt_expression_node.
    DATA(t744) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t745) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494 ).
    t743 = t744->find_direct_expression( i_type_9913 = t745 ).
    t742 = t743.
    DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t746.
    DATA(t747) = VALUE abap_bool( ).
    DATA(t748) = CAST zcl_lnt_expression_node( t742 ).
    IF t748 IS INITIAL.
      t747 = abap_true.
    ENDIF.
    IF t747 = abap_true.
      DATA t749 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t749.
      t746 = t749.
    ELSE.
      DATA t750 TYPE string.
      DATA t751 TYPE REF TO zcl_lnt_expression_node.
      DATA(t752) = CAST zcl_lnt_expression_node( t742 ).
      t751 = t752.
      t750 = t751->concat_tokens(  ).
      DATA(t753) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t753->has = abap_true.
      t753->value = t750.
      t746 = t753.
    ENDIF.
    t741 = t746.
    t740 = t741.
    DATA(t754) = VALUE abap_bool( ).
    DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t756) = CAST zlnt_runtime_opti_4ba3bdccd169( t740 ).
    t755 = t756.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t758.
    t757 = t758.
    DATA(t759) = VALUE abap_bool( ).
    DATA(t760) = CAST zlnt_runtime_opti_4ba3bdccd169( t755 ).
    IF t760 IS INITIAL.
      t759 = abap_true.
    ELSEIF t760->has = abap_false.
      t759 = abap_true.
    ENDIF.
    t754 = t759.
    IF t754 = abap_true.
      DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t761.
      DATA t762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t762.
      DATA t763 TYPE REF TO zcl_lnt_expression_node.
      DATA t764 TYPE REF TO zcl_lnt_expression_node.
      DATA(t765) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t766) = |NUMBER|.
      t764 = t765->find_expression_after_token( i_text = t766 ).
      t763 = t764.
      DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t767.
      DATA(t768) = VALUE abap_bool( ).
      DATA(t769) = CAST zcl_lnt_expression_node( t763 ).
      IF t769 IS INITIAL.
        t768 = abap_true.
      ENDIF.
      IF t768 = abap_true.
        DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t770.
        t767 = t770.
      ELSE.
        DATA t771 TYPE string.
        DATA t772 TYPE REF TO zcl_lnt_expression_node.
        DATA(t773) = CAST zcl_lnt_expression_node( t763 ).
        t772 = t773.
        t771 = t772->concat_tokens(  ).
        DATA(t774) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t774->has = abap_true.
        t774->value = t771.
        t767 = t774.
      ENDIF.
      t762 = t767.
      t761 = t762.
      DATA(t775) = VALUE abap_bool( ).
      DATA t776 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t776.
      DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t778) = CAST zlnt_runtime_opti_4ba3bdccd169( t761 ).
      t777 = t778.
      DATA t779 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t779.
      DATA(t780) = VALUE abap_bool( ).
      DATA(t781) = CAST zlnt_runtime_opti_4ba3bdccd169( t777 ).
      IF t781 IS INITIAL.
        t780 = abap_true.
      ELSEIF t781->has = abap_false.
        t780 = abap_true.
      ENDIF.
      IF t780 = abap_true.
        DATA t782 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t782.
        t779 = t782.
      ELSE.
        DATA(t783) = VALUE abap_bool( ).
        DATA t784 TYPE string.
        DATA(t785) = CAST zlnt_runtime_opti_4ba3bdccd169( t777 ).
        t784 = t785->value.
        DATA(t786) = |'|.
        DATA(t787) = strlen( t784 ).
        DATA t788 TYPE i.
        DATA(t789) = VALUE i( ).
        DATA(t790) = VALUE string( ).
        t788 = strlen( t786 ).
        IF t788 = 0.
          t783 = abap_true.
        ELSEIF t788 <= t787.
          t789 = 0.
          t790 = t784+t789(t788).
          IF t790 = t786.
            t783 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t791) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t791->has = abap_true.
        t791->value = t783.
        t779 = t791.
      ENDIF.
      t776 = t779.
      IF t776 IS BOUND.
        IF t776->has = abap_true.
          t775 = xsdbool( t776->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t775 = abap_true.
        DATA t792 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t792.
        DATA(t793) = abap_true.
        IF t793 = abap_true.
          DATA(t794) = VALUE string( ).
          DATA(t795) = VALUE string( ).
          DATA t796 TYPE string.
          DATA(t797) = CAST zlnt_runtime_opti_4ba3bdccd169( t761 ).
          t796 = t797->value.
          DATA(t798) = 1.
          DATA t799 TYPE i.
          DATA t800 TYPE i.
          DATA t801 TYPE string.
          DATA(t802) = CAST zlnt_runtime_opti_4ba3bdccd169( t761 ).
          t801 = t802->value.
          DATA(t803) = strlen( t801 ).
          t800 = t803.
          DATA(t804) = 1.
          t799 = t800 - t804.
          DATA(t805) = strlen( t796 ).
          t798 = COND i( WHEN t798 < 0 THEN 0 WHEN t798 > t805 THEN t805 ELSE t798 ).
          t799 = COND i( WHEN t799 < 0 THEN 0 WHEN t799 > t805 THEN t805 ELSE t799 ).
          IF t798 > t799.
            t805 = t798.
            t798 = t799.
            t799 = t805.
          ENDIF.
          t805 = t799 - t798.
          t795 = t796+t798(t805).
          DATA(t806) = strlen( t795 ).
          t794 = t795.
          IF t794 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t794 TO UPPER CASE.
          ELSE.
            t794 = zlnt_runtime_uppe_91169605024d=>full( t794 ).
          ENDIF.
          DATA(t807) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t807->has = abap_true.
          t807->value = t794.
          t792 = t807.
        ELSE.
          DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t808.
          t792 = t808.
        ENDIF.
        t740 = t792.
      ENDIF.
    ENDIF.
    DATA(t809) = VALUE abap_bool( ).
    DATA(t810) = VALUE abap_bool( ).
    DATA t811 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t811.
    DATA t812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t813) = CAST zlnt_runtime_opti_4ba3bdccd169( t726 ).
    t812 = t813.
    DATA t814 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t814.
    DATA(t815) = VALUE abap_bool( ).
    DATA(t816) = CAST zlnt_runtime_opti_4ba3bdccd169( t812 ).
    IF t816 IS INITIAL.
      t815 = abap_true.
    ELSEIF t816->has = abap_false.
      t815 = abap_true.
    ENDIF.
    IF t815 = abap_true.
      DATA t817 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t817.
      t814 = t817.
    ELSE.
      DATA(t818) = VALUE abap_bool( ).
      DATA t819 TYPE string.
      DATA(t820) = CAST zlnt_runtime_opti_4ba3bdccd169( t812 ).
      t819 = t820->value.
      DATA(t821) = |'|.
      DATA(t822) = strlen( t819 ).
      DATA t823 TYPE i.
      DATA(t824) = VALUE i( ).
      DATA(t825) = VALUE string( ).
      t823 = strlen( t821 ).
      IF t823 = 0.
        t818 = abap_true.
      ELSEIF t823 <= t822.
        t824 = 0.
        t825 = t819+t824(t823).
        IF t825 = t821.
          t818 = abap_true.
        ENDIF.
      ENDIF.
      DATA(t826) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t826->has = abap_true.
      t826->value = t818.
      t814 = t826.
    ENDIF.
    t811 = t814.
    IF t811 IS BOUND.
      IF t811->has = abap_true.
        t810 = xsdbool( t811->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t809 = t810.
    IF t810 = abap_true.
      DATA(t827) = VALUE abap_bool( ).
      DATA(t828) = CAST zlnt_runtime_opti_4ba3bdccd169( t740 ).
      IF t828 IS BOUND.
        IF t828->has = abap_true.
          t827 = xsdbool( strlen( t828->value ) > 0 ).
        ENDIF.
      ENDIF.
      t809 = t827.
    ENDIF.
    IF t809 = abap_true.
      DATA(t829) = VALUE string( ).
      DATA(t830) = VALUE string( ).
      DATA(t831) = VALUE string( ).
      DATA t832 TYPE string.
      DATA(t833) = CAST zlnt_runtime_opti_4ba3bdccd169( t726 ).
      t832 = t833->value.
      DATA(t834) = 1.
      DATA t835 TYPE i.
      DATA t836 TYPE i.
      DATA t837 TYPE string.
      DATA(t838) = CAST zlnt_runtime_opti_4ba3bdccd169( t726 ).
      t837 = t838->value.
      DATA(t839) = strlen( t837 ).
      t836 = t839.
      DATA(t840) = 1.
      t835 = t836 - t840.
      DATA(t841) = strlen( t832 ).
      t834 = COND i( WHEN t834 < 0 THEN 0 WHEN t834 > t841 THEN t841 ELSE t834 ).
      t835 = COND i( WHEN t835 < 0 THEN 0 WHEN t835 > t841 THEN t841 ELSE t835 ).
      IF t834 > t835.
        t841 = t834.
        t834 = t835.
        t835 = t841.
      ENDIF.
      t841 = t835 - t834.
      t831 = t832+t834(t841).
      DATA(t842) = strlen( t831 ).
      t830 = t831.
      IF t830 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t830 TO UPPER CASE.
      ELSE.
        t830 = zlnt_runtime_uppe_91169605024d=>full( t830 ).
      ENDIF.
      t829 = t830.
      DATA t843 TYPE REF TO zif_lnt_msag_references.
      DATA t844 TYPE REF TO zcl_lnt_current_scope.
      DATA t845 TYPE REF TO zcl_lnt_current_scope.
      DATA(t846) = CAST zcl_lnt_syntax_input( t2 ).
      t845 = t846->scope.
      t844 = t845.
      DATA t847 TYPE REF TO zif_lnt_msag_references.
      DATA t848 TYPE REF TO zif_lnt_registry.
      DATA(t849) = CAST zcl_lnt_current_scope( t844 ).
      t848 = t849->reg.
      t847 = t848->get_msag_references(  ).
      t843 = t847.
      DATA t850 TYPE string.
      DATA(t851) = CAST zcl_lnt_syntax_input( t2 ).
      t850 = t851->filename.
      DATA t852 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t853) = CAST zcl_lnt_statement_node( t1 ).
      t852 = t853->get_first_token(  ).
      DATA(t854) = t829.
      DATA t855 TYPE string.
      DATA(t856) = CAST zlnt_runtime_opti_4ba3bdccd169( t740 ).
      t855 = t856->value.
      t843->add_using( i_filename = t850 i_token = t852 i_message_class = t854 i_number = t855 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d920_c2ebc8f08426.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
