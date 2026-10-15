* TS: src/abap/5_syntax/statements/raise.ts:14:1 Raise
CLASS zcl_lnt_sy_raise DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_raise IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = t2.
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
    DATA(t12) = t1.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t11 = t12->find_direct_expression( i_type_9913 = t13 ).
    t10 = t11.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t10.
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
      DATA(t20) = t10.
      t19 = t20.
      t18 = t19->get_first_token( ).
      t14 = t18.
    ENDIF.
    t9 = t14.
    t8 = t9.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t24) = t8.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t23.
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
      DATA(t32) = t23.
      t31 = t32.
      t30 = t31.
      DATA t33 TYPE string.
      DATA(t34) = t30.
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
    DATA(t38) = t8.
    t37 = xsdbool( t38 IS BOUND ).
    t36 = t37.
    IF t37 = abap_true.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = t21.
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
      DATA(t44) = t2.
      t43 = t44->scope.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA t47 TYPE string.
        DATA(t48) = t21.
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
      DATA(t54) = t41.
      t53 = t54.
      DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t53.
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
        DATA(t61) = t53.
        t60 = t61.
        t59 = t60->id.
        t55 = t59.
      ENDIF.
      t52 = t55.
      t51 = xsdbool( t52 IS BOUND ).
      IF t51 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_current_scope.
        DATA(t63) = t2.
        t62 = t63->scope.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t67) = t8.
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
          DATA(t74) = t41.
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
        CLEAR t76.
        DATA(t77) = |Object|.
        CLEAR t76.
        CREATE OBJECT t76.
        t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t76->sval = t77.
        DATA t78 TYPE string.
        DATA(t79) = t2.
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
        DATA(t85) = t2.
        t84 = t85->scope.
        t83 = t84.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA(t88) = abap_true.
        IF t88 = abap_true.
          DATA t89 TYPE string.
          DATA(t90) = t21.
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
        DATA(t96) = t86.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t97 = t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = t95.
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
            DATA(t109) = t86.
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
          DATA(t115) = t105.
          t114 = t115.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          t116 = t117.
          DATA(t118) = VALUE abap_bool( ).
          DATA(t119) = t114.
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
            DATA(t126) = t83.
            t125 = t126->current.
            t124 = t125.
            DATA t127 TYPE REF TO zif_lnt_class_definition.
            CLEAR t127.
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = t124.
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
              DATA(t133) = t124.
              t132 = t133.
              DATA t134 TYPE string.
              DATA(t135) = t105.
              t134 = t135->value.
              t131 = t132->find_class_definition( i_name = t134 ).
              t127 = t131.
            ENDIF.
            t123 = t127.
            t122 = t123.
            DATA t136 TYPE REF TO zif_lnt_class_definition.
            CLEAR t136.
            DATA t137 TYPE abap_bool.
            DATA(t138) = t122.
            t137 = xsdbool( t138 IS BOUND ).
            IF t137 = abap_true.
              DATA t139 TYPE REF TO zif_lnt_class_definition.
              CLEAR t139.
              DATA(t140) = abap_true.
              IF t140 = abap_true.
                DATA t141 TYPE REF TO zif_lnt_class_definition.
                DATA(t142) = t122.
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
              DATA(t149) = t83.
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
                DATA(t158) = t105.
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
              DATA(t164) = t145.
              t163 = xsdbool( t164 IS BOUND ).
              IF t163 = abap_true.
                DATA t165 TYPE REF TO zif_lnt_class_definition.
                DATA t166 TYPE REF TO zcl_lnt_class.
                DATA(t167) = t145.
                t166 = t167.
                t165 = t166->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
          DATA(t171) = t103.
          t170 = xsdbool( t171 IS BOUND ).
          IF t170 = abap_true.
            DATA t172 TYPE REF TO zif_lnt_interface_definition.
            DATA t173 TYPE REF TO zif_lnt_class_definition.
            DATA(t174) = t103.
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
              DATA(t182) = t86.
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
            DATA(t188) = t178.
            t187 = t188.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t190.
            t189 = t190.
            DATA(t191) = VALUE abap_bool( ).
            DATA(t192) = t187.
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
              DATA(t199) = t83.
              t198 = t199->current.
              t197 = t198.
              DATA t200 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t200.
              DATA(t201) = VALUE abap_bool( ).
              DATA(t202) = t197.
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
                DATA(t206) = t197.
                t205 = t206.
                DATA t207 TYPE string.
                DATA(t208) = t178.
                t207 = t208->value.
                t204 = t205->find_interface_definition( i_name = t207 ).
                t200 = t204.
              ENDIF.
              t196 = t200.
              t195 = t196.
              DATA t209 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t209.
              DATA t210 TYPE abap_bool.
              DATA(t211) = t195.
              t210 = xsdbool( t211 IS BOUND ).
              IF t210 = abap_true.
                DATA t212 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t212.
                DATA(t213) = abap_true.
                IF t213 = abap_true.
                  DATA t214 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t215) = t195.
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
                DATA(t222) = t83.
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
                  DATA(t231) = t178.
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
                DATA(t237) = t218.
                t236 = xsdbool( t237 IS BOUND ).
                IF t236 = abap_true.
                  DATA t238 TYPE REF TO zif_lnt_interface_definition.
                  DATA t239 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t240 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t241) = t218.
                  t240 = t241.
                  t239 = t240.
                  DATA t242 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t243) = t239.
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
            DATA(t247) = t176.
            t246 = xsdbool( t247 IS BOUND ).
            IF t246 = abap_true.
              DATA t248 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t248.
              DATA(t249) = abap_true.
              IF t249 = abap_true.
                DATA t250 TYPE REF TO zif_lnt_interface_definition.
                DATA(t251) = t176.
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
        DATA(t258) = t3.
        DATA(t259) = t81.
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
        DATA(t267) = t256.
        IF t267 IS INITIAL.
          t266 = abap_true.
        ENDIF.
        IF t266 = abap_true.
          DATA t268 TYPE REF TO zif_lnt_method_definition.
          CLEAR t268.
          t265 = t268.
        ELSE.
          DATA t269 TYPE REF TO zif_lnt_method_definition.
          DATA(t270) = t256.
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
        DATA(t277) = t2.
        t276 = t277->scope.
        t275 = t276.
        DATA t278 TYPE REF TO zcl_lnt_ddic.
        DATA t279 TYPE REF TO zif_lnt_registry.
        DATA(t280) = t275.
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
          DATA(t285) = t21.
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
        DATA(t291) = t281.
        t290 = t291.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        t292 = t293.
        DATA(t294) = VALUE abap_bool( ).
        DATA(t295) = t290.
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
          DATA(t299) = t273.
          t298 = t299->reg.
          DATA t300 TYPE string.
          DATA(t301) = t281.
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
          DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t306.
          DATA(t307) = abap_true.
          IF t307 = abap_true.
            DATA t308 TYPE string.
            DATA(t309) = t21.
            t308 = t309->value.
            DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t310->has = abap_true.
            t310->value = t308.
            t306 = t310.
          ELSE.
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t311.
            t306 = t311.
          ENDIF.
          t305 = t306.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          DATA(t314) = abap_true.
          IF t314 = abap_true.
            DATA(t315) = |Void|.
            DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t316->has = abap_true.
            t316->value = t315.
            t313 = t316.
          ELSE.
            DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t317.
            t313 = t317.
          ENDIF.
          t312 = t313.
          DATA t318 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t319 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t319.
          t318 = t319.
          t304 = NEW zcl_lnt_ireference_extras( i_oo_name = t305 i_oo_type = t312 i_found_qualified = t318 ).
          CREATE OBJECT t304->zlnt_view_ownkeys_b0e8086400eb.
          t304->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          IF t304->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t304->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t320 ).
          ENDIF.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t321.
          IF t304->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t304->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t321 ).
          ENDIF.
          CREATE OBJECT t304->zlnt_json_ownkeys_70e5fd461788.
          t304->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t322) = |ooName|.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          IF t304->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t304->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
          ENDIF.
          DATA(t324) = |ooType|.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          IF t304->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t304->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
          ENDIF.
          t303 = t304.
          DATA t326 TYPE REF TO zcl_lnt_current_scope.
          DATA(t327) = t2.
          t326 = t327->scope.
          DATA t328 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t328.
          DATA(t329) = abap_true.
          IF t329 = abap_true.
            DATA t330 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t331) = t8.
            t330 = t331.
            t328 = t330.
          ELSE.
            DATA t332 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t332.
            t328 = t332.
          ENDIF.
          DATA t333 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t333.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
          DATA(t335) = |Object (Void)|.
          CLEAR t334.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t334->sval = t335.
          DATA t336 TYPE string.
          DATA(t337) = t2.
          t336 = t337->filename.
          DATA t338 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t338.
          DATA(t339) = abap_true.
          IF t339 = abap_true.
            DATA(t340) = t303.
            t338 = t340.
          ELSE.
            DATA t341 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t341.
            t338 = t341.
          ENDIF.
          t326->add_reference( i_usage = t328 i_referencing = t333 i_type_9913 = t334 i_filename = t336 i_extra = t338 ).
          DATA t342 TYPE REF TO zcl_lnt_void_type.
          CLEAR t342.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t343.
          DATA(t344) = abap_true.
          IF t344 = abap_true.
            DATA t345 TYPE string.
            DATA(t346) = t21.
            t345 = t346->value.
            DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t347->has = abap_true.
            t347->value = t345.
            t343 = t347.
          ELSE.
            DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t348.
            t343 = t348.
          ENDIF.
          DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t349.
          t342 = zcl_lnt_void_type=>get_db65( i_voided = t343 i_qualified_name = t349 ).
          t7 = t342.
        ELSE.
          DATA t350 TYPE string.
          DATA t351 TYPE string.
          DATA(t352) = |RAISE, unknown class |.
          DATA t353 TYPE string.
          DATA(t354) = t21.
          t353 = t354->value.
          DATA(t355) = strlen( t352 ).
          t351 = |{ t352 }{ t353 }|.
          t350 = t351.
          DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t357) = t2.
          t356 = t357->issues.
          DATA t358 TYPE REF TO zcl_lnt_issue.
          DATA(t359) = t2.
          DATA t360 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t361) = t8.
          t360 = t361.
          DATA(t362) = t350.
          DATA t363 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t363.
          t358 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t359 i_token = t360 i_message_26cb = t362 i_fix = t363 ).
          t356->load( ).
          APPEND t358 TO t356->items.
          t356->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t364) = VALUE abap_bool( ).
      DATA t365 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA(t366) = t7.
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
        DATA t371 TYPE REF TO zcl_lnt_void_type.
        CLEAR t371.
        DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t372.
        DATA(t373) = abap_true.
        IF t373 = abap_true.
          DATA t374 TYPE string.
          DATA(t375) = t21.
          t374 = t375->value.
          DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t376->has = abap_true.
          t376->value = t374.
          t372 = t376.
        ELSE.
          DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t377.
          t372 = t377.
        ENDIF.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t378.
        t371 = zcl_lnt_void_type=>get_db65( i_voided = t372 i_qualified_name = t378 ).
        t7 = t371.
      ENDIF.
    ENDIF.
    DATA t379 TYPE REF TO zcl_lnt_expression_node.
    DATA t380 TYPE REF TO zcl_lnt_expression_node.
    DATA(t381) = t1.
    DATA(t382) = |EXCEPTION|.
    t380 = t381->find_expression_after_token( i_text = t382 ).
    t379 = t380.
    DATA t383 TYPE abap_bool.
    DATA t384 TYPE abap_bool.
    DATA(t385) = t379.
    t384 = xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_expression_node ).
    t383 = t384.
    IF t384 = abap_true.
      DATA t386 TYPE abap_bool.
      DATA t387 TYPE abap_bool.
      DATA t388 TYPE REF TO zif_lnt_statement_runnable.
      DATA t389 TYPE REF TO zcl_lnt_expression_node.
      DATA(t390) = t379.
      t389 = t390.
      t388 = t389->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t387 = xsdbool( t388 IS BOUND AND t388 IS INSTANCE OF zcl_lnt_simple_source2 ).
      t386 = t387.
      IF t387 = abap_false.
        DATA t391 TYPE abap_bool.
        DATA t392 TYPE REF TO zif_lnt_statement_runnable.
        DATA t393 TYPE REF TO zcl_lnt_expression_node.
        DATA(t394) = t379.
        t393 = t394.
        t392 = t393->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t391 = xsdbool( t392 IS BOUND AND t392 IS INSTANCE OF zcl_lnt_st_source ).
        t386 = t391.
      ENDIF.
      t383 = t386.
    ENDIF.
    IF t383 = abap_true.
      DATA t395 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t395.
      DATA t396 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t396.
      DATA t397 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t397.
      DATA(t398) = abap_true.
      IF t398 = abap_true.
        DATA t399 TYPE REF TO zcl_lnt_expression_node.
        DATA(t400) = t379.
        t399 = t400.
        t397 = t399.
      ELSE.
        DATA t401 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t401.
        t397 = t401.
      ENDIF.
      DATA(t402) = t2.
      DATA t403 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t403.
      DATA t404 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t404.
      DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t405.
      DATA t406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t406.
      t396 = zcl_lnt_sy_source=>run_syntax( i_node = t397 i_input_967e = t402 i_target_type = t403 i_write_reference = t404 i_allow_generic_deference = t405 i_read_reference = t406 ).
      t395 = t396.
      DATA t407 TYPE abap_bool.
      DATA(t408) = t395.
      t407 = xsdbool( t408 IS BOUND AND t408 IS INSTANCE OF zcl_lnt_void_type ).
      IF t407 = abap_true.
        DATA t409 TYPE REF TO zcl_lnt_void_type.
        DATA(t410) = t395.
        t409 ?= t410.
        t7 = t409.
      ELSE.
        DATA t411 TYPE abap_bool.
        DATA(t412) = t395.
        t411 = xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t411 = abap_true.
          DATA t413 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t413.
          DATA t414 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t414.
          DATA t415 TYPE REF TO zcl_lnt_current_scope.
          DATA t416 TYPE REF TO zcl_lnt_current_scope.
          DATA(t417) = t2.
          t416 = t417->scope.
          t415 = t416.
          DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t418.
          DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t419.
          DATA(t420) = abap_true.
          IF t420 = abap_true.
            DATA(t421) = VALUE string( ).
            DATA t422 TYPE REF TO zcl_lnt_object_reference_type.
            DATA t423 TYPE REF TO zcl_lnt_object_reference_type.
            DATA(t424) = t395.
            t423 ?= t424.
            t422 = t423.
            DATA(t425) = VALUE string( ).
            DATA t426 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t427 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t428) = t422.
            t427 = t428->identifier.
            t426 = t427.
            DATA(t429) = VALUE string( ).
            DATA t430 TYPE string.
            DATA t431 TYPE string.
            DATA t432 TYPE REF TO zcl_lnt_abstract_token.
            DATA t433 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t434) = t426.
            t433 = t434->token.
            t432 = t433.
            DATA t435 TYPE string.
            DATA(t436) = t432.
            t435 = t436->str.
            t431 = t435.
            t430 = t431.
            DATA(t437) = VALUE abap_bool( ).
            DATA(t438) = VALUE string( ).
            DATA(t439) = t430.
            DATA(t440) = 0.
            DATA(t441) = 1.
            DATA(t442) = strlen( t439 ).
            IF t440 < 0.
              t440 = t440 + t442.
              IF t440 < 0.
                t440 = 0.
              ENDIF.
            ENDIF.
            IF t440 > t442 OR t441 <= 0.
              CLEAR t438.
            ELSE.
              IF t441 > t442 - t440.
                t441 = t442 - t440.
              ENDIF.
              t438 = t439+t440(t441).
            ENDIF.
            DATA(t443) = |!|.
            t437 = xsdbool( t438 = t443 ).
            IF t437 = abap_true.
              DATA(t444) = VALUE string( ).
              DATA t445 TYPE string.
              DATA(t446) = t430.
              t445 = t446.
              DATA(t447) = VALUE string( ).
              DATA(t448) = t445.
              DATA(t449) = 1.
              DATA t450 TYPE i.
              DATA(t451) = t445.
              DATA(t452) = strlen( t451 ).
              t450 = t452.
              DATA(t453) = strlen( t448 ).
              IF t449 < 0.
                t449 = t449 + t453.
                IF t449 < 0.
                  t449 = 0.
                ENDIF.
              ENDIF.
              IF t449 > t453 OR t450 <= 0.
                CLEAR t447.
              ELSE.
                IF t450 > t453 - t449.
                  t450 = t453 - t449.
                ENDIF.
                t447 = t448+t449(t450).
              ENDIF.
              t444 = t447.
              t430 = t444.
            ENDIF.
            DATA(t454) = t430.
            t429 = t454.
            t425 = t429.
            t421 = t425.
            DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t455->has = abap_true.
            t455->value = t421.
            t419 = t455.
          ELSE.
            DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t456.
            t419 = t456.
          ENDIF.
          t418 = t419.
          DATA t457 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t457.
          DATA(t458) = VALUE abap_bool( ).
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t460) = t418.
          t459 = t460.
          DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t462.
          t461 = t462.
          DATA(t463) = VALUE abap_bool( ).
          DATA(t464) = t459.
          IF t464 IS INITIAL.
            t463 = abap_true.
          ELSEIF t464->has = abap_false.
            t463 = abap_true.
          ENDIF.
          t458 = t463.
          IF t458 = abap_true.
            DATA t465 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t465.
            t457 = t465.
          ELSE.
            DATA t466 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t466.
            DATA t467 TYPE REF TO zif_lnt_class_definition.
            CLEAR t467.
            DATA t468 TYPE REF TO zif_lnt_class_definition.
            CLEAR t468.
            DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t469.
            DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t470.
            DATA(t471) = abap_true.
            IF t471 = abap_true.
              DATA t472 TYPE string.
              DATA(t473) = t418.
              t472 = t473->value.
              DATA(t474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t474->has = abap_true.
              t474->value = t472.
              t470 = t474.
            ELSE.
              DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t475.
              t470 = t475.
            ENDIF.
            t469 = t470.
            DATA t476 TYPE REF TO zif_lnt_class_definition.
            CLEAR t476.
            DATA(t477) = VALUE abap_bool( ).
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t479) = t469.
            t478 = t479.
            DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t481.
            t480 = t481.
            DATA(t482) = VALUE abap_bool( ).
            DATA(t483) = t478.
            IF t483 IS INITIAL.
              t482 = abap_true.
            ELSEIF t483->has = abap_false.
              t482 = abap_true.
            ENDIF.
            t477 = t482.
            IF t477 = abap_true.
              DATA t484 TYPE REF TO zif_lnt_class_definition.
              CLEAR t484.
              t476 = t484.
            ELSE.
              DATA t485 TYPE REF TO zif_lnt_class_definition.
              CLEAR t485.
              DATA t486 TYPE REF TO zif_lnt_class_definition.
              CLEAR t486.
              DATA t487 TYPE REF TO zif_lnt_class_definition.
              CLEAR t487.
              DATA t488 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t489 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t490) = t415.
              t489 = t490->current.
              t488 = t489.
              DATA t491 TYPE REF TO zif_lnt_class_definition.
              CLEAR t491.
              DATA(t492) = VALUE abap_bool( ).
              DATA(t493) = t488.
              IF t493 IS INITIAL.
                t492 = abap_true.
              ENDIF.
              IF t492 = abap_true.
                DATA t494 TYPE REF TO zif_lnt_class_definition.
                CLEAR t494.
                t491 = t494.
              ELSE.
                DATA t495 TYPE REF TO zif_lnt_class_definition.
                DATA t496 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t497) = t488.
                t496 = t497.
                DATA t498 TYPE string.
                DATA(t499) = t469.
                t498 = t499->value.
                t495 = t496->find_class_definition( i_name = t498 ).
                t491 = t495.
              ENDIF.
              t487 = t491.
              t486 = t487.
              DATA t500 TYPE REF TO zif_lnt_class_definition.
              CLEAR t500.
              DATA t501 TYPE abap_bool.
              DATA(t502) = t486.
              t501 = xsdbool( t502 IS BOUND ).
              IF t501 = abap_true.
                DATA t503 TYPE REF TO zif_lnt_class_definition.
                CLEAR t503.
                DATA(t504) = abap_true.
                IF t504 = abap_true.
                  DATA t505 TYPE REF TO zif_lnt_class_definition.
                  DATA(t506) = t486.
                  t505 = t506.
                  t503 = t505.
                ELSE.
                  DATA t507 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t507.
                  t503 = t507.
                ENDIF.
                t500 = t503.
              ELSE.
                DATA t508 TYPE REF TO zif_lnt_class_definition.
                CLEAR t508.
                DATA t509 TYPE REF TO zcl_lnt_class.
                CLEAR t509.
                DATA t510 TYPE REF TO zcl_lnt_class.
                CLEAR t510.
                DATA t511 TYPE REF TO zif_lnt_object.
                CLEAR t511.
                DATA t512 TYPE REF TO zif_lnt_registry.
                DATA(t513) = t415.
                t512 = t513->reg.
                DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t514.
                DATA(t515) = abap_true.
                IF t515 = abap_true.
                  DATA(t516) = |CLAS|.
                  DATA(t517) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t517->has = abap_true.
                  t517->value = t516.
                  t514 = t517.
                ELSE.
                  DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t518.
                  t514 = t518.
                ENDIF.
                DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t519.
                DATA(t520) = abap_true.
                IF t520 = abap_true.
                  DATA t521 TYPE string.
                  DATA(t522) = t469.
                  t521 = t522->value.
                  DATA(t523) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t523->has = abap_true.
                  t523->value = t521.
                  t519 = t523.
                ELSE.
                  DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t524.
                  t519 = t524.
                ENDIF.
                t511 = t512->get_object( i_type_9913 = t514 i_name = t519 ).
                DATA t525 TYPE REF TO object.
                t525 = t511.
                t510 ?= t525.
                t509 = t510.
                DATA t526 TYPE REF TO zif_lnt_class_definition.
                CLEAR t526.
                DATA t527 TYPE abap_bool.
                DATA(t528) = t509.
                t527 = xsdbool( t528 IS BOUND ).
                IF t527 = abap_true.
                  DATA t529 TYPE REF TO zif_lnt_class_definition.
                  DATA t530 TYPE REF TO zcl_lnt_class.
                  DATA(t531) = t509.
                  t530 = t531.
                  t529 = t530->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t526 = t529.
                ELSE.
                  DATA t532 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t532.
                  t526 = t532.
                ENDIF.
                t508 = t526.
                t500 = t508.
              ENDIF.
              t485 = t500.
              t476 = t485.
            ENDIF.
            t468 = t476.
            t467 = t468.
            DATA t533 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t533.
            DATA t534 TYPE abap_bool.
            DATA(t535) = t467.
            t534 = xsdbool( t535 IS BOUND ).
            IF t534 = abap_true.
              DATA t536 TYPE REF TO zif_lnt_interface_definition.
              DATA t537 TYPE REF TO zif_lnt_class_definition.
              DATA(t538) = t467.
              t537 = t538.
              t536 ?= t537.
              t533 = t536.
            ELSE.
              DATA t539 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t539.
              DATA t540 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t540.
              DATA t541 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t541.
              DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t542.
              DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t543.
              DATA(t544) = abap_true.
              IF t544 = abap_true.
                DATA t545 TYPE string.
                DATA(t546) = t418.
                t545 = t546->value.
                DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t547->has = abap_true.
                t547->value = t545.
                t543 = t547.
              ELSE.
                DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t548.
                t543 = t548.
              ENDIF.
              t542 = t543.
              DATA t549 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t549.
              DATA(t550) = VALUE abap_bool( ).
              DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t552) = t542.
              t551 = t552.
              DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t554.
              t553 = t554.
              DATA(t555) = VALUE abap_bool( ).
              DATA(t556) = t551.
              IF t556 IS INITIAL.
                t555 = abap_true.
              ELSEIF t556->has = abap_false.
                t555 = abap_true.
              ENDIF.
              t550 = t555.
              IF t550 = abap_true.
                DATA t557 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t557.
                t549 = t557.
              ELSE.
                DATA t558 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t558.
                DATA t559 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t559.
                DATA t560 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t560.
                DATA t561 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t562 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t563) = t415.
                t562 = t563->current.
                t561 = t562.
                DATA t564 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t564.
                DATA(t565) = VALUE abap_bool( ).
                DATA(t566) = t561.
                IF t566 IS INITIAL.
                  t565 = abap_true.
                ENDIF.
                IF t565 = abap_true.
                  DATA t567 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t567.
                  t564 = t567.
                ELSE.
                  DATA t568 TYPE REF TO zif_lnt_interface_definition.
                  DATA t569 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t570) = t561.
                  t569 = t570.
                  DATA t571 TYPE string.
                  DATA(t572) = t542.
                  t571 = t572->value.
                  t568 = t569->find_interface_definition( i_name = t571 ).
                  t564 = t568.
                ENDIF.
                t560 = t564.
                t559 = t560.
                DATA t573 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t573.
                DATA t574 TYPE abap_bool.
                DATA(t575) = t559.
                t574 = xsdbool( t575 IS BOUND ).
                IF t574 = abap_true.
                  DATA t576 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t576.
                  DATA(t577) = abap_true.
                  IF t577 = abap_true.
                    DATA t578 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t579) = t559.
                    t578 = t579.
                    t576 = t578.
                  ELSE.
                    DATA t580 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t580.
                    t576 = t580.
                  ENDIF.
                  t573 = t576.
                ELSE.
                  DATA t581 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t581.
                  DATA t582 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t582.
                  DATA t583 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t583.
                  DATA t584 TYPE REF TO zif_lnt_object.
                  CLEAR t584.
                  DATA t585 TYPE REF TO zif_lnt_registry.
                  DATA(t586) = t415.
                  t585 = t586->reg.
                  DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t587.
                  DATA(t588) = abap_true.
                  IF t588 = abap_true.
                    DATA(t589) = |INTF|.
                    DATA(t590) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t590->has = abap_true.
                    t590->value = t589.
                    t587 = t590.
                  ELSE.
                    DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t591.
                    t587 = t591.
                  ENDIF.
                  DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t592.
                  DATA(t593) = abap_true.
                  IF t593 = abap_true.
                    DATA t594 TYPE string.
                    DATA(t595) = t542.
                    t594 = t595->value.
                    DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t596->has = abap_true.
                    t596->value = t594.
                    t592 = t596.
                  ELSE.
                    DATA t597 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t597.
                    t592 = t597.
                  ENDIF.
                  t584 = t585->get_object( i_type_9913 = t587 i_name = t592 ).
                  DATA t598 TYPE REF TO object.
                  t598 = t584.
                  t583 ?= t598.
                  t582 = t583.
                  DATA t599 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t599.
                  DATA t600 TYPE abap_bool.
                  DATA(t601) = t582.
                  t600 = xsdbool( t601 IS BOUND ).
                  IF t600 = abap_true.
                    DATA t602 TYPE REF TO zif_lnt_interface_definition.
                    DATA t603 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t604 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t605) = t582.
                    t604 = t605.
                    t603 = t604.
                    DATA t606 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t607) = t603.
                    t606 = t607->def.
                    t602 = t606.
                    t599 = t602.
                  ELSE.
                    DATA t608 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t608.
                    t599 = t608.
                  ENDIF.
                  t581 = t599.
                  t573 = t581.
                ENDIF.
                t558 = t573.
                t549 = t558.
              ENDIF.
              t541 = t549.
              t540 = t541.
              DATA t609 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t609.
              DATA t610 TYPE abap_bool.
              DATA(t611) = t540.
              t610 = xsdbool( t611 IS BOUND ).
              IF t610 = abap_true.
                DATA t612 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t612.
                DATA(t613) = abap_true.
                IF t613 = abap_true.
                  DATA t614 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t615) = t540.
                  t614 = t615.
                  t612 = t614.
                ELSE.
                  DATA t616 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t616.
                  t612 = t616.
                ENDIF.
                t609 = t612.
              ELSE.
                DATA t617 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t617.
                t609 = t617.
              ENDIF.
              t539 = t609.
              t533 = t539.
            ENDIF.
            t466 = t533.
            t457 = t466.
          ENDIF.
          t414 = t457.
          t413 = t414.
          DATA t618 TYPE REF TO zif_lnt_union_8cd68e5e.
          CLEAR t618.
          DATA t619 TYPE REF TO zif_lnt_method_definition.
          CLEAR t619.
          DATA t620 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t620.
          DATA t621 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t621.
          DATA(t622) = t3.
          DATA(t623) = t413.
          DATA t624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t624.
          DATA(t625) = abap_true.
          IF t625 = abap_true.
            DATA(t626) = |CONSTRUCTOR|.
            DATA(t627) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t627->has = abap_true.
            t627->value = t626.
            t624 = t627.
          ELSE.
            DATA t628 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t628.
            t624 = t628.
          ENDIF.
          t621 = t622->search_method_name( i_def = t623 i_name = t624 ).
          t620 = t621.
          DATA t629 TYPE REF TO zif_lnt_method_definition.
          CLEAR t629.
          DATA(t630) = VALUE abap_bool( ).
          DATA(t631) = t620.
          IF t631 IS INITIAL.
            t630 = abap_true.
          ENDIF.
          IF t630 = abap_true.
            DATA t632 TYPE REF TO zif_lnt_method_definition.
            CLEAR t632.
            t629 = t632.
          ELSE.
            DATA t633 TYPE REF TO zif_lnt_method_definition.
            DATA(t634) = t620.
            t633 = t634->method.
            t629 = t633.
          ENDIF.
          t619 = t629.
          t618 ?= t619.
          t7 = t618.
        ELSE.
          DATA(t635) = VALUE abap_bool( ).
          DATA t636 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t637) = t395.
          t636 = t637.
          DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t639.
          t638 = t639.
          DATA(t640) = VALUE abap_bool( ).
          DATA(t641) = VALUE abap_bool( ).
          DATA(t642) = t636.
          IF t642 IS INITIAL.
            t641 = abap_true.
          ENDIF.
          t640 = xsdbool( t641 = abap_false ).
          t635 = t640.
          IF t635 = abap_true.
            DATA t643 TYPE string.
            DATA t644 TYPE string.
            DATA(t645) = |RAISE EXCEPTION, must be object reference, got |.
            DATA t646 TYPE string.
            DATA t647 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA t648 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t649) = t395.
            t648 = t649.
            t647 = t648->zlnt_builtin_clas_3f891b097658( ).
            t646 = t647->name.
            DATA(t650) = strlen( t645 ).
            t644 = |{ t645 }{ t646 }|.
            t643 = t644.
            DATA t651 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t652) = t2.
            t651 = t652->issues.
            DATA t653 TYPE REF TO zcl_lnt_issue.
            DATA(t654) = t2.
            DATA t655 TYPE REF TO zcl_lnt_abstract_token.
            DATA t656 TYPE REF TO zcl_lnt_expression_node.
            DATA(t657) = t379.
            t656 = t657.
            t655 = t656->get_first_token( ).
            DATA(t658) = t643.
            DATA t659 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t659.
            t653 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t654 i_token = t655 i_message_26cb = t658 i_fix = t659 ).
            t651->load( ).
            APPEND t653 TO t651->items.
            t651->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t660) = VALUE abap_bool( ).
    DATA t661 TYPE REF TO zif_lnt_union_8cd68e5e.
    DATA(t662) = t7.
    t661 = t662.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t664.
    t663 = t664.
    DATA(t665) = VALUE abap_bool( ).
    DATA(t666) = t661.
    IF t666 IS INITIAL.
      t665 = abap_true.
    ENDIF.
    t660 = t665.
    IF t660 = abap_true.
      DATA t667 TYPE REF TO zcl_lnt_void_type.
      CLEAR t667.
      DATA t668 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t668.
      DATA(t669) = abap_true.
      IF t669 = abap_true.
        DATA(t670) = |Exception|.
        DATA(t671) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t671->has = abap_true.
        t671->value = t670.
        t668 = t671.
      ELSE.
        DATA t672 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t672.
        t668 = t672.
      ENDIF.
      DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t673.
      t667 = zcl_lnt_void_type=>get_db65( i_voided = t668 i_qualified_name = t673 ).
      t7 = t667.
    ENDIF.
    DATA t674 TYPE REF TO zcl_lnt_expression_node.
    DATA t675 TYPE REF TO zcl_lnt_expression_node.
    DATA(t676) = t1.
    DATA(t677) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t675 = t676->find_direct_expression( i_type_9913 = t677 ).
    t674 = t675.
    DATA t678 TYPE abap_bool.
    DATA(t679) = t674.
    t678 = xsdbool( t679 IS BOUND ).
    IF t678 = abap_true.
      DATA(t680) = NEW zcl_lnt_sy_method_parameters( ).
      DATA t681 TYPE REF TO zcl_lnt_expression_node.
      DATA(t682) = t674.
      t681 = t682.
      DATA(t683) = t2.
      DATA t684 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA(t685) = t7.
      t684 = t685.
      DATA t686 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t686.
      DATA(t687) = abap_true.
      IF t687 = abap_true.
        DATA(t688) = abap_true.
        DATA(t689) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t689->has = abap_true.
        t689->value = t688.
        t686 = t689.
      ELSE.
        DATA t690 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t690.
        t686 = t690.
      ENDIF.
      t680->check_exporting( i_node = t681 i_input_967e = t683 i_method = t684 i_errors = t686 ).
    ENDIF.
    DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t692) = t1.
    DATA(t693) = zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d.
    t691 = t692->find_direct_expressions( i_type_9913 = t693 ).
    DATA t694 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t694.
    DATA t695 TYPE REF TO object.
    CLEAR t695.
    DATA(t696) = VALUE i( ).
    DO.
      t691->load( ).
      IF t696 >= lines( t691->items ).
        EXIT.
      ENDIF.
      CLEAR t695.
      READ TABLE t691->items INDEX t696 + 1 INTO t695.
      t696 = t696 + 1.
      DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t697.
      CLEAR t694.
      IF t695 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t697 ?= t695.
        DATA t698 TYPE REF TO object.
        t698 = t697->as_ref( ).
        t694 ?= t698.
      ELSE.
        t694 ?= t695.
      ENDIF.
      DATA(t699) = t694.
      DATA(t700) = t2.
      zcl_lnt_sy_raise_with=>run_syntax( i_node = t699 i_input_967e = t700 ).
    ENDDO.
    DATA t701 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t702) = t1.
    DATA(t703) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t701 = t702->find_direct_expressions( i_type_9913 = t703 ).
    DATA t704 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t704.
    DATA t705 TYPE REF TO object.
    CLEAR t705.
    DATA(t706) = VALUE i( ).
    DO.
      t701->load( ).
      IF t706 >= lines( t701->items ).
        EXIT.
      ENDIF.
      CLEAR t705.
      READ TABLE t701->items INDEX t706 + 1 INTO t705.
      t706 = t706 + 1.
      DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t707.
      CLEAR t704.
      IF t705 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t707 ?= t705.
        DATA t708 TYPE REF TO object.
        t708 = t707->as_ref( ).
        t704 ?= t708.
      ELSE.
        t704 ?= t705.
      ENDIF.
      DATA t709 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t709.
      DATA t710 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t710.
      DATA(t711) = abap_true.
      IF t711 = abap_true.
        DATA(t712) = t704.
        t710 = t712.
      ELSE.
        DATA t713 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t713.
        t710 = t713.
      ENDIF.
      DATA(t714) = t2.
      DATA t715 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t715.
      DATA t716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t716.
      DATA t717 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t717.
      DATA t718 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t718.
      t709 = zcl_lnt_sy_source=>run_syntax( i_node = t710 i_input_967e = t714 i_target_type = t715 i_write_reference = t716 i_allow_generic_deference = t717 i_read_reference = t718 ).
    ENDDO.
    DATA t719 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t720) = t1.
    DATA(t721) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    t719 = t720->find_direct_expressions( i_type_9913 = t721 ).
    DATA t722 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t722.
    DATA t723 TYPE REF TO object.
    CLEAR t723.
    DATA(t724) = VALUE i( ).
    DO.
      t719->load( ).
      IF t724 >= lines( t719->items ).
        EXIT.
      ENDIF.
      CLEAR t723.
      READ TABLE t719->items INDEX t724 + 1 INTO t723.
      t724 = t724 + 1.
      DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t725.
      CLEAR t722.
      IF t723 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t725 ?= t723.
        DATA t726 TYPE REF TO object.
        t726 = t725->as_ref( ).
        t722 ?= t726.
      ELSE.
        t722 ?= t723.
      ENDIF.
      DATA t727 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t727.
      DATA t728 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t728.
      DATA(t729) = abap_true.
      IF t729 = abap_true.
        DATA(t730) = t722.
        t728 = t730.
      ELSE.
        DATA t731 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t731.
        t728 = t731.
      ENDIF.
      DATA(t732) = t2.
      DATA t733 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t733.
      DATA t734 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t734.
      DATA t735 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t735.
      DATA t736 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t736.
      t727 = zcl_lnt_sy_source=>run_syntax( i_node = t728 i_input_967e = t732 i_target_type = t733 i_write_reference = t734 i_allow_generic_deference = t735 i_read_reference = t736 ).
    ENDDO.
    DATA t737 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t738) = t1.
    DATA(t739) = zlnt_runtime_desc_78196487750d=>zlnt_member_d218_79f2a1395386.
    t737 = t738->find_direct_expressions( i_type_9913 = t739 ).
    DATA t740 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t740.
    DATA t741 TYPE REF TO object.
    CLEAR t741.
    DATA(t742) = VALUE i( ).
    DO.
      t737->load( ).
      IF t742 >= lines( t737->items ).
        EXIT.
      ENDIF.
      CLEAR t741.
      READ TABLE t737->items INDEX t742 + 1 INTO t741.
      t742 = t742 + 1.
      DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t743.
      CLEAR t740.
      IF t741 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t743 ?= t741.
        DATA t744 TYPE REF TO object.
        t744 = t743->as_ref( ).
        t740 ?= t744.
      ELSE.
        t740 ?= t741.
      ENDIF.
      DATA(t745) = t740.
      DATA(t746) = t2.
      zcl_lnt_sy_message_source=>run_syntax( i_node = t745 i_input_967e = t746 ).
    ENDDO.
    DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t747.
    DATA t748 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t748.
    DATA t749 TYPE REF TO zcl_lnt_expression_node.
    DATA t750 TYPE REF TO zcl_lnt_expression_node.
    DATA(t751) = t1.
    DATA(t752) = |ID|.
    t750 = t751->find_expression_after_token( i_text = t752 ).
    t749 = t750.
    DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t753.
    DATA(t754) = VALUE abap_bool( ).
    DATA(t755) = t749.
    IF t755 IS INITIAL.
      t754 = abap_true.
    ENDIF.
    IF t754 = abap_true.
      DATA t756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t756.
      t753 = t756.
    ELSE.
      DATA t757 TYPE string.
      DATA t758 TYPE REF TO zcl_lnt_expression_node.
      DATA(t759) = t749.
      t758 = t759.
      t757 = t758->concat_tokens( ).
      DATA(t760) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t760->has = abap_true.
      t760->value = t757.
      t753 = t760.
    ENDIF.
    t748 = t753.
    t747 = t748.
    DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t761.
    DATA t762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t762.
    DATA t763 TYPE REF TO zcl_lnt_expression_node.
    DATA t764 TYPE REF TO zcl_lnt_expression_node.
    DATA(t765) = t1.
    DATA(t766) = zlnt_runtime_desc_78196487750d=>zlnt_member_d216_5867c1ce5807.
    t764 = t765->find_direct_expression( i_type_9913 = t766 ).
    t763 = t764.
    DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t767.
    DATA(t768) = VALUE abap_bool( ).
    DATA(t769) = t763.
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
      DATA(t773) = t763.
      t772 = t773.
      t771 = t772->concat_tokens( ).
      DATA(t774) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t774->has = abap_true.
      t774->value = t771.
      t767 = t774.
    ENDIF.
    t762 = t767.
    t761 = t762.
    DATA(t775) = VALUE abap_bool( ).
    DATA t776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t777) = t761.
    t776 = t777.
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t779.
    t778 = t779.
    DATA(t780) = VALUE abap_bool( ).
    DATA(t781) = t776.
    IF t781 IS INITIAL.
      t780 = abap_true.
    ELSEIF t781->has = abap_false.
      t780 = abap_true.
    ENDIF.
    t775 = t780.
    IF t775 = abap_true.
      DATA t782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t782.
      DATA t783 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t783.
      DATA t784 TYPE REF TO zcl_lnt_expression_node.
      DATA t785 TYPE REF TO zcl_lnt_expression_node.
      DATA(t786) = t1.
      DATA(t787) = |NUMBER|.
      t785 = t786->find_expression_after_token( i_text = t787 ).
      t784 = t785.
      DATA t788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t788.
      DATA(t789) = VALUE abap_bool( ).
      DATA(t790) = t784.
      IF t790 IS INITIAL.
        t789 = abap_true.
      ENDIF.
      IF t789 = abap_true.
        DATA t791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t791.
        t788 = t791.
      ELSE.
        DATA t792 TYPE string.
        DATA t793 TYPE REF TO zcl_lnt_expression_node.
        DATA(t794) = t784.
        t793 = t794.
        t792 = t793->concat_tokens( ).
        DATA(t795) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t795->has = abap_true.
        t795->value = t792.
        t788 = t795.
      ENDIF.
      t783 = t788.
      t782 = t783.
      DATA(t796) = VALUE abap_bool( ).
      DATA t797 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t797.
      DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t799) = t782.
      t798 = t799.
      DATA t800 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t800.
      DATA(t801) = VALUE abap_bool( ).
      DATA(t802) = t798.
      IF t802 IS INITIAL.
        t801 = abap_true.
      ELSEIF t802->has = abap_false.
        t801 = abap_true.
      ENDIF.
      IF t801 = abap_true.
        DATA t803 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t803.
        t800 = t803.
      ELSE.
        DATA(t804) = VALUE abap_bool( ).
        DATA t805 TYPE string.
        DATA(t806) = t798.
        t805 = t806->value.
        DATA(t807) = |'|.
        DATA(t808) = strlen( t805 ).
        DATA t809 TYPE i.
        DATA(t810) = VALUE i( ).
        DATA(t811) = VALUE string( ).
        t809 = strlen( t807 ).
        IF t809 = 0.
          t804 = abap_true.
        ELSEIF t809 <= t808.
          t810 = 0.
          t811 = t805+t810(t809).
          IF t811 = t807.
            t804 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t812) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t812->has = abap_true.
        t812->value = t804.
        t800 = t812.
      ENDIF.
      t797 = t800.
      IF t797 IS BOUND.
        IF t797->has = abap_true.
          t796 = xsdbool( t797->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t796 = abap_true.
        DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t813.
        DATA(t814) = abap_true.
        IF t814 = abap_true.
          DATA(t815) = VALUE string( ).
          DATA(t816) = VALUE string( ).
          DATA t817 TYPE string.
          DATA(t818) = t782.
          t817 = t818->value.
          DATA(t819) = 1.
          DATA t820 TYPE i.
          DATA t821 TYPE i.
          DATA t822 TYPE string.
          DATA(t823) = t782.
          t822 = t823->value.
          DATA(t824) = strlen( t822 ).
          t821 = t824.
          DATA(t825) = 1.
          t820 = t821 - t825.
          DATA(t826) = strlen( t817 ).
          t819 = COND i( WHEN t819 < 0 THEN 0 WHEN t819 > t826 THEN t826 ELSE t819 ).
          t820 = COND i( WHEN t820 < 0 THEN 0 WHEN t820 > t826 THEN t826 ELSE t820 ).
          IF t819 > t820.
            t826 = t819.
            t819 = t820.
            t820 = t826.
          ENDIF.
          t826 = t820 - t819.
          t816 = t817+t819(t826).
          DATA(t827) = strlen( t816 ).
          t815 = t816.
          IF t815 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t815 TO UPPER CASE.
          ELSE.
            t815 = zlnt_runtime_uppe_91169605024d=>full( t815 ).
          ENDIF.
          DATA(t828) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t828->has = abap_true.
          t828->value = t815.
          t813 = t828.
        ELSE.
          DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t829.
          t813 = t829.
        ENDIF.
        t761 = t813.
      ENDIF.
    ENDIF.
    DATA(t830) = VALUE abap_bool( ).
    DATA(t831) = VALUE abap_bool( ).
    DATA t832 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t832.
    DATA t833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t834) = t747.
    t833 = t834.
    DATA t835 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t835.
    DATA(t836) = VALUE abap_bool( ).
    DATA(t837) = t833.
    IF t837 IS INITIAL.
      t836 = abap_true.
    ELSEIF t837->has = abap_false.
      t836 = abap_true.
    ENDIF.
    IF t836 = abap_true.
      DATA t838 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t838.
      t835 = t838.
    ELSE.
      DATA(t839) = VALUE abap_bool( ).
      DATA t840 TYPE string.
      DATA(t841) = t833.
      t840 = t841->value.
      DATA(t842) = |'|.
      DATA(t843) = strlen( t840 ).
      DATA t844 TYPE i.
      DATA(t845) = VALUE i( ).
      DATA(t846) = VALUE string( ).
      t844 = strlen( t842 ).
      IF t844 = 0.
        t839 = abap_true.
      ELSEIF t844 <= t843.
        t845 = 0.
        t846 = t840+t845(t844).
        IF t846 = t842.
          t839 = abap_true.
        ENDIF.
      ENDIF.
      DATA(t847) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t847->has = abap_true.
      t847->value = t839.
      t835 = t847.
    ENDIF.
    t832 = t835.
    IF t832 IS BOUND.
      IF t832->has = abap_true.
        t831 = xsdbool( t832->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t830 = t831.
    IF t831 = abap_true.
      DATA(t848) = VALUE abap_bool( ).
      DATA(t849) = t761.
      IF t849 IS BOUND.
        IF t849->has = abap_true.
          t848 = xsdbool( strlen( t849->value ) > 0 ).
        ENDIF.
      ENDIF.
      t830 = t848.
    ENDIF.
    IF t830 = abap_true.
      DATA(t850) = VALUE string( ).
      DATA(t851) = VALUE string( ).
      DATA(t852) = VALUE string( ).
      DATA t853 TYPE string.
      DATA(t854) = t747.
      t853 = t854->value.
      DATA(t855) = 1.
      DATA t856 TYPE i.
      DATA t857 TYPE i.
      DATA t858 TYPE string.
      DATA(t859) = t747.
      t858 = t859->value.
      DATA(t860) = strlen( t858 ).
      t857 = t860.
      DATA(t861) = 1.
      t856 = t857 - t861.
      DATA(t862) = strlen( t853 ).
      t855 = COND i( WHEN t855 < 0 THEN 0 WHEN t855 > t862 THEN t862 ELSE t855 ).
      t856 = COND i( WHEN t856 < 0 THEN 0 WHEN t856 > t862 THEN t862 ELSE t856 ).
      IF t855 > t856.
        t862 = t855.
        t855 = t856.
        t856 = t862.
      ENDIF.
      t862 = t856 - t855.
      t852 = t853+t855(t862).
      DATA(t863) = strlen( t852 ).
      t851 = t852.
      IF t851 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t851 TO UPPER CASE.
      ELSE.
        t851 = zlnt_runtime_uppe_91169605024d=>full( t851 ).
      ENDIF.
      t850 = t851.
      DATA t864 TYPE REF TO zif_lnt_msag_references.
      DATA t865 TYPE REF TO zcl_lnt_current_scope.
      DATA t866 TYPE REF TO zcl_lnt_current_scope.
      DATA(t867) = t2.
      t866 = t867->scope.
      t865 = t866.
      DATA t868 TYPE REF TO zif_lnt_msag_references.
      DATA t869 TYPE REF TO zif_lnt_registry.
      DATA(t870) = t865.
      t869 = t870->reg.
      t868 = t869->get_msag_references( ).
      t864 = t868.
      DATA t871 TYPE string.
      DATA(t872) = t2.
      t871 = t872->filename.
      DATA t873 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t874) = t1.
      t873 = t874->get_first_token( ).
      DATA(t875) = t850.
      DATA t876 TYPE string.
      DATA(t877) = t761.
      t876 = t877->value.
      t864->add_using( i_filename = t871 i_token = t873 i_message_class = t875 i_number = t876 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d942_3216565cd4c4.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
