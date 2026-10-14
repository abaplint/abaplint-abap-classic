* TS: src/abap/5_syntax/expressions/new_object.ts:17:1 NewObject
CLASS zcl_lnt_sy_new_object DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS parameters IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_obj_1ed0 TYPE REF TO zcl_lnt_object_reference_type i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS default_importing_type IMPORTING i_method TYPE REF TO zif_lnt_method_definition RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_new_object IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
    t7 = t8->find_direct_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = CAST zcl_lnt_expression_node( t6 ).
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_expression_node( t12 ).
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
      DATA(t20) = CAST zcl_lnt_expression_node( t12 ).
      t19 = t20.
      t18 = t19->get_first_token(  ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t23) = CAST zcl_lnt_abstract_token( t10 ).
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = CAST zcl_lnt_abstract_token( t22 ).
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = |NewObject, child TypeNameOrInfer not found|.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
      t28 = NEW #( ).
      t28->payload = t29.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA(t38) = CAST zcl_lnt_expression_node( t6 ).
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = CAST zcl_lnt_expression_node( t37 ).
    IF t41 IS INITIAL.
      t40 = abap_true.
    ENDIF.
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      t39 = t42.
    ELSE.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = CAST zcl_lnt_expression_node( t37 ).
      t44 = t45.
      t43 = t44->concat_tokens(  ).
      DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t46->has = abap_true.
      t46->value = t43.
      t39 = t46.
    ENDIF.
    t36 = t39.
    t35 = t36.
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t49) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
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
      DATA t54 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t54.
      DATA t55 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA(t57) = abap_true.
      IF t57 = abap_true.
        DATA(t58) = |NewObject, child TypeNameOrInfer not found|.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t58.
        t56 = t59.
      ELSE.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t56 = t60.
      ENDIF.
      t55 = NEW zcx_lnt_assert_error( i_message_26cb = t56 ).
      t54 = NEW #( ).
      t54->payload = t55.
      RAISE EXCEPTION t54.
    ELSE.
      DATA(t61) = VALUE abap_bool( ).
      DATA t62 TYPE abap_bool.
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE string.
      DATA(t65) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
      t64 = t65->value.
      DATA(t66) = |#|.
      t63 = xsdbool( t64 = t66 ).
      t62 = t63.
      IF t63 = abap_true.
        DATA t67 TYPE abap_bool.
        DATA(t68) = CAST zcl_lnt_abstract_type( t3 ).
        t67 = xsdbool( t68 IS BOUND ).
        t62 = t67.
      ENDIF.
      t61 = t62.
      IF t62 = abap_true.
        DATA t69 TYPE abap_bool.
        DATA(t70) = CAST zcl_lnt_abstract_type( t3 ).
        t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t61 = t69.
      ENDIF.
      IF t61 = abap_true.
        DATA t71 TYPE REF TO zif_lnt_class_definition.
        CLEAR t71.
        DATA t72 TYPE REF TO zif_lnt_class_definition.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_current_scope.
        DATA t74 TYPE REF TO zcl_lnt_current_scope.
        DATA(t75) = CAST zcl_lnt_syntax_input( t2 ).
        t74 = t75->scope.
        t73 = t74.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t78) = abap_true.
        IF t78 = abap_true.
          DATA(t79) = VALUE string( ).
          DATA t80 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t81 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t82) = CAST zcl_lnt_abstract_type( t3 ).
          t81 ?= t82.
          t80 = t81.
          DATA(t83) = VALUE string( ).
          DATA t84 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t86) = CAST zcl_lnt_object_reference_type( t80 ).
          t85 = t86->identifier.
          t84 = t85.
          DATA(t87) = VALUE string( ).
          DATA t88 TYPE string.
          DATA t89 TYPE string.
          DATA t90 TYPE REF TO zcl_lnt_abstract_token.
          DATA t91 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t92) = CAST zcl_lnt_fi_identifier( t84 ).
          t91 = t92->token.
          t90 = t91.
          DATA t93 TYPE string.
          DATA(t94) = CAST zcl_lnt_abstract_token( t90 ).
          t93 = t94->str.
          t89 = t93.
          t88 = t89.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE string( ).
          DATA(t97) = t88.
          DATA(t98) = 0.
          DATA(t99) = 1.
          DATA(t100) = strlen( t97 ).
          IF t98 < 0.
            t98 = t98 + t100.
            IF t98 < 0.
              t98 = 0.
            ENDIF.
          ENDIF.
          IF t98 > t100 OR t99 <= 0.
            CLEAR t96.
          ELSE.
            IF t99 > t100 - t98.
              t99 = t100 - t98.
            ENDIF.
            t96 = t97+t98(t99).
          ENDIF.
          DATA(t101) = |!|.
          t95 = xsdbool( t96 = t101 ).
          IF t95 = abap_true.
            DATA(t102) = VALUE string( ).
            DATA t103 TYPE string.
            DATA(t104) = t88.
            t103 = t104.
            DATA(t105) = VALUE string( ).
            DATA(t106) = t103.
            DATA(t107) = 1.
            DATA t108 TYPE i.
            DATA(t109) = t103.
            DATA(t110) = strlen( t109 ).
            t108 = t110.
            DATA(t111) = strlen( t106 ).
            IF t107 < 0.
              t107 = t107 + t111.
              IF t107 < 0.
                t107 = 0.
              ENDIF.
            ENDIF.
            IF t107 > t111 OR t108 <= 0.
              CLEAR t105.
            ELSE.
              IF t108 > t111 - t107.
                t108 = t111 - t107.
              ENDIF.
              t105 = t106+t107(t108).
            ENDIF.
            t102 = t105.
            t88 = t102.
          ENDIF.
          DATA(t112) = t88.
          t87 = t112.
          t83 = t87.
          t79 = t83.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t79.
          t77 = t113.
        ELSE.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t77 = t114.
        ENDIF.
        t76 = t77.
        DATA t115 TYPE REF TO zif_lnt_class_definition.
        CLEAR t115.
        DATA(t116) = VALUE abap_bool( ).
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t118) = CAST zlnt_runtime_opti_4ba3bdccd169( t76 ).
        t117 = t118.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        t119 = t120.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = CAST zlnt_runtime_opti_4ba3bdccd169( t117 ).
        IF t122 IS INITIAL.
          t121 = abap_true.
        ELSEIF t122->has = abap_false.
          t121 = abap_true.
        ENDIF.
        t116 = t121.
        IF t116 = abap_true.
          DATA t123 TYPE REF TO zif_lnt_class_definition.
          CLEAR t123.
          t115 = t123.
        ELSE.
          DATA t124 TYPE REF TO zif_lnt_class_definition.
          CLEAR t124.
          DATA t125 TYPE REF TO zif_lnt_class_definition.
          CLEAR t125.
          DATA t126 TYPE REF TO zif_lnt_class_definition.
          CLEAR t126.
          DATA t127 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t129) = CAST zcl_lnt_current_scope( t73 ).
          t128 = t129->current.
          t127 = t128.
          DATA t130 TYPE REF TO zif_lnt_class_definition.
          CLEAR t130.
          DATA(t131) = VALUE abap_bool( ).
          DATA(t132) = CAST zcl_lnt_spaghetti_scope_node( t127 ).
          IF t132 IS INITIAL.
            t131 = abap_true.
          ENDIF.
          IF t131 = abap_true.
            DATA t133 TYPE REF TO zif_lnt_class_definition.
            CLEAR t133.
            t130 = t133.
          ELSE.
            DATA t134 TYPE REF TO zif_lnt_class_definition.
            DATA t135 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t136) = CAST zcl_lnt_spaghetti_scope_node( t127 ).
            t135 = t136.
            DATA t137 TYPE string.
            DATA(t138) = CAST zlnt_runtime_opti_4ba3bdccd169( t76 ).
            t137 = t138->value.
            t134 = t135->find_class_definition( i_name = t137 ).
            t130 = t134.
          ENDIF.
          t126 = t130.
          t125 = t126.
          DATA t139 TYPE REF TO zif_lnt_class_definition.
          CLEAR t139.
          DATA t140 TYPE abap_bool.
          DATA(t141) = CAST zif_lnt_class_definition( t125 ).
          t140 = xsdbool( t141 IS BOUND ).
          IF t140 = abap_true.
            DATA t142 TYPE REF TO zif_lnt_class_definition.
            CLEAR t142.
            DATA(t143) = abap_true.
            IF t143 = abap_true.
              DATA t144 TYPE REF TO zif_lnt_class_definition.
              DATA(t145) = CAST zif_lnt_class_definition( t125 ).
              t144 = t145.
              t142 = t144.
            ELSE.
              DATA t146 TYPE REF TO zif_lnt_class_definition.
              CLEAR t146.
              t142 = t146.
            ENDIF.
            t139 = t142.
          ELSE.
            DATA t147 TYPE REF TO zif_lnt_class_definition.
            CLEAR t147.
            DATA t148 TYPE REF TO zcl_lnt_class.
            CLEAR t148.
            DATA t149 TYPE REF TO zcl_lnt_class.
            CLEAR t149.
            DATA t150 TYPE REF TO zif_lnt_object.
            CLEAR t150.
            DATA t151 TYPE REF TO zif_lnt_registry.
            DATA(t152) = CAST zcl_lnt_current_scope( t73 ).
            t151 = t152->reg.
            DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t153.
            DATA(t154) = abap_true.
            IF t154 = abap_true.
              DATA(t155) = |CLAS|.
              DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t156->has = abap_true.
              t156->value = t155.
              t153 = t156.
            ELSE.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              t153 = t157.
            ENDIF.
            DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t158.
            DATA(t159) = abap_true.
            IF t159 = abap_true.
              DATA t160 TYPE string.
              DATA(t161) = CAST zlnt_runtime_opti_4ba3bdccd169( t76 ).
              t160 = t161->value.
              DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t162->has = abap_true.
              t162->value = t160.
              t158 = t162.
            ELSE.
              DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t163.
              t158 = t163.
            ENDIF.
            t150 = t151->get_object( i_type_9913 = t153 i_name = t158 ).
            DATA t164 TYPE REF TO object.
            t164 = t150.
            t149 ?= t164.
            t148 = t149.
            DATA t165 TYPE REF TO zif_lnt_class_definition.
            CLEAR t165.
            DATA t166 TYPE abap_bool.
            DATA(t167) = CAST zcl_lnt_class( t148 ).
            t166 = xsdbool( t167 IS BOUND ).
            IF t166 = abap_true.
              DATA t168 TYPE REF TO zif_lnt_class_definition.
              DATA t169 TYPE REF TO zcl_lnt_class.
              DATA(t170) = CAST zcl_lnt_class( t148 ).
              t169 = t170.
              t168 = t169->gt_dfn_ins_src_obj_cls_ts_clss(  ).
              t165 = t168.
            ELSE.
              DATA t171 TYPE REF TO zif_lnt_class_definition.
              CLEAR t171.
              t165 = t171.
            ENDIF.
            t147 = t165.
            t139 = t147.
          ENDIF.
          t124 = t139.
          t115 = t124.
        ENDIF.
        t72 = t115.
        t71 = t72.
        DATA t172 TYPE abap_bool.
        DATA(t173) = CAST zif_lnt_class_definition( t71 ).
        t172 = xsdbool( t173 IS BOUND ).
        IF t172 = abap_true.
          DATA t174 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t176 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t177) = CAST zcl_lnt_abstract_token( t10 ).
          t176 = t177.
          DATA t178 TYPE string.
          DATA(t179) = CAST zcl_lnt_syntax_input( t2 ).
          t178 = t179->filename.
          DATA t180 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t181) = CAST zcl_lnt_abstract_type( t3 ).
          t180 ?= t181.
          DATA t182 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t182.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          t175 = NEW zcl_lnt_typed_identifier( i_token = t176 i_filename = t178 i_type_9913 = t180 i_meta = t182 i_value = t183 ).
          t174 = t175.
          DATA t184 TYPE REF TO zcl_lnt_current_scope.
          DATA(t185) = CAST zcl_lnt_syntax_input( t2 ).
          t184 = t185->scope.
          DATA t186 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t186.
          DATA(t187) = abap_true.
          IF t187 = abap_true.
            DATA t188 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t189) = CAST zcl_lnt_abstract_token( t10 ).
            t188 = t189.
            t186 = t188.
          ELSE.
            DATA t190 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t190.
            t186 = t190.
          ENDIF.
          DATA(t191) = CAST zcl_lnt_typed_identifier( t174 ).
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t193) = |Inferred Type|.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t192->sval = t193.
          DATA t194 TYPE string.
          DATA(t195) = CAST zcl_lnt_syntax_input( t2 ).
          t194 = t195->filename.
          DATA t196 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t196.
          t184->add_reference( i_usage = t186 i_referencing = t191 i_type_9913 = t192 i_filename = t194 i_extra = t196 ).
          DATA t197 TYPE REF TO zcl_lnt_current_scope.
          DATA(t198) = CAST zcl_lnt_syntax_input( t2 ).
          t197 = t198->scope.
          DATA t199 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t199.
          DATA(t200) = abap_true.
          IF t200 = abap_true.
            DATA t201 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t202) = CAST zcl_lnt_abstract_token( t10 ).
            t201 = t202.
            t199 = t201.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t203.
            t199 = t203.
          ENDIF.
          DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t204.
          DATA(t205) = abap_true.
          IF t205 = abap_true.
            DATA t206 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t207 TYPE REF TO zif_lnt_class_definition.
            DATA(t208) = CAST zif_lnt_class_definition( t71 ).
            t207 = t208.
            t206 ?= t207.
            t204 = t206.
          ELSE.
            DATA t209 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t209.
            t204 = t209.
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t211) = |Constructor Reference|.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t210->sval = t211.
          DATA t212 TYPE string.
          DATA(t213) = CAST zcl_lnt_syntax_input( t2 ).
          t212 = t213->filename.
          DATA t214 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t214.
          DATA(t215) = abap_true.
          IF t215 = abap_true.
            DATA t216 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t216.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            DATA(t218) = abap_true.
            IF t218 = abap_true.
              DATA t219 TYPE string.
              DATA t220 TYPE REF TO zif_lnt_class_definition.
              DATA(t221) = CAST zif_lnt_class_definition( t71 ).
              t220 = t221.
              t219 = t220->get_name(  ).
              DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t222->has = abap_true.
              t222->value = t219.
              t217 = t222.
            ELSE.
              DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t223.
              t217 = t223.
            ENDIF.
            DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t224.
            DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t225.
            t216 = NEW zcl_lnt_ireference_extras( i_oo_name = t217 i_oo_type = t224 i_found_qualified = t225 ).
            t214 = t216.
          ELSE.
            DATA t226 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t226.
            t214 = t226.
          ENDIF.
          t197->add_reference( i_usage = t199 i_referencing = t204 i_type_9913 = t210 i_filename = t212 i_extra = t214 ).
        ELSE.
          DATA t227 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t227.
          DATA t228 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t228.
          DATA t229 TYPE REF TO zcl_lnt_current_scope.
          DATA t230 TYPE REF TO zcl_lnt_current_scope.
          DATA(t231) = CAST zcl_lnt_syntax_input( t2 ).
          t230 = t231->scope.
          t229 = t230.
          DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t232.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA(t234) = abap_true.
          IF t234 = abap_true.
            DATA(t235) = VALUE string( ).
            DATA t236 TYPE REF TO zcl_lnt_object_reference_type.
            DATA t237 TYPE REF TO zcl_lnt_object_reference_type.
            DATA(t238) = CAST zcl_lnt_abstract_type( t3 ).
            t237 ?= t238.
            t236 = t237.
            DATA(t239) = VALUE string( ).
            DATA t240 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t241 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t242) = CAST zcl_lnt_object_reference_type( t236 ).
            t241 = t242->identifier.
            t240 = t241.
            DATA(t243) = VALUE string( ).
            DATA t244 TYPE string.
            DATA t245 TYPE string.
            DATA t246 TYPE REF TO zcl_lnt_abstract_token.
            DATA t247 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t248) = CAST zcl_lnt_fi_identifier( t240 ).
            t247 = t248->token.
            t246 = t247.
            DATA t249 TYPE string.
            DATA(t250) = CAST zcl_lnt_abstract_token( t246 ).
            t249 = t250->str.
            t245 = t249.
            t244 = t245.
            DATA(t251) = VALUE abap_bool( ).
            DATA(t252) = VALUE string( ).
            DATA(t253) = t244.
            DATA(t254) = 0.
            DATA(t255) = 1.
            DATA(t256) = strlen( t253 ).
            IF t254 < 0.
              t254 = t254 + t256.
              IF t254 < 0.
                t254 = 0.
              ENDIF.
            ENDIF.
            IF t254 > t256 OR t255 <= 0.
              CLEAR t252.
            ELSE.
              IF t255 > t256 - t254.
                t255 = t256 - t254.
              ENDIF.
              t252 = t253+t254(t255).
            ENDIF.
            DATA(t257) = |!|.
            t251 = xsdbool( t252 = t257 ).
            IF t251 = abap_true.
              DATA(t258) = VALUE string( ).
              DATA t259 TYPE string.
              DATA(t260) = t244.
              t259 = t260.
              DATA(t261) = VALUE string( ).
              DATA(t262) = t259.
              DATA(t263) = 1.
              DATA t264 TYPE i.
              DATA(t265) = t259.
              DATA(t266) = strlen( t265 ).
              t264 = t266.
              DATA(t267) = strlen( t262 ).
              IF t263 < 0.
                t263 = t263 + t267.
                IF t263 < 0.
                  t263 = 0.
                ENDIF.
              ENDIF.
              IF t263 > t267 OR t264 <= 0.
                CLEAR t261.
              ELSE.
                IF t264 > t267 - t263.
                  t264 = t267 - t263.
                ENDIF.
                t261 = t262+t263(t264).
              ENDIF.
              t258 = t261.
              t244 = t258.
            ENDIF.
            DATA(t268) = t244.
            t243 = t268.
            t239 = t243.
            t235 = t239.
            DATA(t269) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t269->has = abap_true.
            t269->value = t235.
            t233 = t269.
          ELSE.
            DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t270.
            t233 = t270.
          ENDIF.
          t232 = t233.
          DATA t271 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t271.
          DATA(t272) = VALUE abap_bool( ).
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t274) = CAST zlnt_runtime_opti_4ba3bdccd169( t232 ).
          t273 = t274.
          DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t276.
          t275 = t276.
          DATA(t277) = VALUE abap_bool( ).
          DATA(t278) = CAST zlnt_runtime_opti_4ba3bdccd169( t273 ).
          IF t278 IS INITIAL.
            t277 = abap_true.
          ELSEIF t278->has = abap_false.
            t277 = abap_true.
          ENDIF.
          t272 = t277.
          IF t272 = abap_true.
            DATA t279 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t279.
            t271 = t279.
          ELSE.
            DATA t280 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t280.
            DATA t281 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t281.
            DATA t282 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t282.
            DATA t283 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t284 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t285) = CAST zcl_lnt_current_scope( t229 ).
            t284 = t285->current.
            t283 = t284.
            DATA t286 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t286.
            DATA(t287) = VALUE abap_bool( ).
            DATA(t288) = CAST zcl_lnt_spaghetti_scope_node( t283 ).
            IF t288 IS INITIAL.
              t287 = abap_true.
            ENDIF.
            IF t287 = abap_true.
              DATA t289 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t289.
              t286 = t289.
            ELSE.
              DATA t290 TYPE REF TO zif_lnt_interface_definition.
              DATA t291 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t292) = CAST zcl_lnt_spaghetti_scope_node( t283 ).
              t291 = t292.
              DATA t293 TYPE string.
              DATA(t294) = CAST zlnt_runtime_opti_4ba3bdccd169( t232 ).
              t293 = t294->value.
              t290 = t291->find_interface_definition( i_name = t293 ).
              t286 = t290.
            ENDIF.
            t282 = t286.
            t281 = t282.
            DATA t295 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t295.
            DATA t296 TYPE abap_bool.
            DATA(t297) = CAST zif_lnt_interface_definition( t281 ).
            t296 = xsdbool( t297 IS BOUND ).
            IF t296 = abap_true.
              DATA t298 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t298.
              DATA(t299) = abap_true.
              IF t299 = abap_true.
                DATA t300 TYPE REF TO zif_lnt_interface_definition.
                DATA(t301) = CAST zif_lnt_interface_definition( t281 ).
                t300 = t301.
                t298 = t300.
              ELSE.
                DATA t302 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t302.
                t298 = t302.
              ENDIF.
              t295 = t298.
            ELSE.
              DATA t303 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t303.
              DATA t304 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t304.
              DATA t305 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t305.
              DATA t306 TYPE REF TO zif_lnt_object.
              CLEAR t306.
              DATA t307 TYPE REF TO zif_lnt_registry.
              DATA(t308) = CAST zcl_lnt_current_scope( t229 ).
              t307 = t308->reg.
              DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t309.
              DATA(t310) = abap_true.
              IF t310 = abap_true.
                DATA(t311) = |INTF|.
                DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t312->has = abap_true.
                t312->value = t311.
                t309 = t312.
              ELSE.
                DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t313.
                t309 = t313.
              ENDIF.
              DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t314.
              DATA(t315) = abap_true.
              IF t315 = abap_true.
                DATA t316 TYPE string.
                DATA(t317) = CAST zlnt_runtime_opti_4ba3bdccd169( t232 ).
                t316 = t317->value.
                DATA(t318) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t318->has = abap_true.
                t318->value = t316.
                t314 = t318.
              ELSE.
                DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t319.
                t314 = t319.
              ENDIF.
              t306 = t307->get_object( i_type_9913 = t309 i_name = t314 ).
              DATA t320 TYPE REF TO object.
              t320 = t306.
              t305 ?= t320.
              t304 = t305.
              DATA t321 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t321.
              DATA t322 TYPE abap_bool.
              DATA(t323) = CAST zcl_lnt_ob_interface( t304 ).
              t322 = xsdbool( t323 IS BOUND ).
              IF t322 = abap_true.
                DATA t324 TYPE REF TO zif_lnt_interface_definition.
                DATA t325 TYPE REF TO zcl_lnt_ob_interface.
                DATA t326 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t327) = CAST zcl_lnt_ob_interface( t304 ).
                t326 = t327.
                t325 = t326.
                DATA t328 TYPE REF TO zif_lnt_interface_definition.
                DATA(t329) = CAST zcl_lnt_ob_interface( t325 ).
                t328 = t329->def.
                t324 = t328.
                t321 = t324.
              ELSE.
                DATA t330 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t330.
                t321 = t330.
              ENDIF.
              t303 = t321.
              t295 = t303.
            ENDIF.
            t280 = t295.
            t271 = t280.
          ENDIF.
          t228 = t271.
          t227 = t228.
          DATA t331 TYPE abap_bool.
          DATA(t332) = CAST zif_lnt_interface_definition( t227 ).
          t331 = xsdbool( t332 IS BOUND ).
          IF t331 = abap_true.
            DATA t333 TYPE string.
            DATA t334 TYPE string.
            DATA t335 TYPE string.
            DATA t336 TYPE REF TO zif_lnt_interface_definition.
            DATA(t337) = CAST zif_lnt_interface_definition( t227 ).
            t336 = t337.
            t335 = t336->get_name(  ).
            DATA(t338) = | is an interface, cannot be instantiated|.
            DATA(t339) = strlen( t335 ).
            t334 = |{ t335 }{ t338 }|.
            t333 = t334.
            DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t341) = CAST zcl_lnt_syntax_input( t2 ).
            t340 = t341->issues.
            DATA t342 TYPE REF TO zcl_lnt_issue.
            DATA(t343) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t344 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t345) = CAST zcl_lnt_expression_node( t1 ).
            t344 = t345->get_first_token(  ).
            DATA(t346) = t333.
            DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t347.
            t342 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t343 i_token = t344 i_message_26cb = t346 i_fix = t347 ).
            APPEND t342 TO t340->items.
            DATA t348 TYPE REF TO zcl_lnt_void_type.
            CLEAR t348.
            DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t349.
            DATA(t350) = abap_true.
            IF t350 = abap_true.
              DATA(t351) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t352) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t352->has = abap_true.
              t352->value = t351.
              t349 = t352.
            ELSE.
              DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t353.
              t349 = t353.
            ENDIF.
            DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t354.
            t348 = zcl_lnt_void_type=>get_db65( i_voided = t349 i_qualified_name = t354 ).
            result = t348.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t355 TYPE REF TO zcl_lnt_object_reference_type.
        DATA(t356) = CAST zcl_lnt_abstract_type( t3 ).
        t355 ?= t356.
        t4 = t355.
        DATA(t357) = VALUE abap_bool( ).
        DATA t358 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t358.
        DATA t359 TYPE REF TO zif_lnt_class_definition.
        DATA(t360) = CAST zif_lnt_class_definition( t71 ).
        t359 = t360.
        DATA t361 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t361.
        DATA(t362) = VALUE abap_bool( ).
        DATA(t363) = CAST zif_lnt_class_definition( t359 ).
        IF t363 IS INITIAL.
          t362 = abap_true.
        ENDIF.
        IF t362 = abap_true.
          DATA t364 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t364.
          t361 = t364.
        ELSE.
          DATA t365 TYPE abap_bool.
          DATA t366 TYPE REF TO zif_lnt_class_definition.
          DATA(t367) = CAST zif_lnt_class_definition( t359 ).
          t366 = t367.
          t365 = t366->is_abstract(  ).
          DATA(t368) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t368->has = abap_true.
          t368->value = t365.
          t361 = t368.
        ENDIF.
        t358 = t361.
        DATA t369 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t369.
        DATA(t370) = abap_true.
        IF t370 = abap_true.
          DATA(t371) = abap_true.
          DATA(t372) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t372->has = abap_true.
          t372->value = t371.
          t369 = t372.
        ELSE.
          DATA t373 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t373.
          t369 = t373.
        ENDIF.
        DATA(t374) = VALUE abap_bool( ).
        DATA(t375) = VALUE abap_bool( ).
        IF t358 IS BOUND.
          t374 = t358->has.
        ENDIF.
        IF t369 IS BOUND.
          t375 = t369->has.
        ENDIF.
        IF t374 = t375.
          IF t374 = abap_false.
            t357 = abap_true.
          ELSEIF t358->value = t369->value.
            t357 = abap_true.
          ENDIF.
        ENDIF.
        IF t357 = abap_true.
          DATA t376 TYPE string.
          DATA t377 TYPE string.
          DATA t378 TYPE string.
          DATA t379 TYPE REF TO zif_lnt_class_definition.
          DATA(t380) = CAST zif_lnt_class_definition( t71 ).
          t379 = t380.
          t378 = t379->get_name(  ).
          DATA(t381) = | is abstract, cannot be instantiated|.
          DATA(t382) = strlen( t378 ).
          t377 = |{ t378 }{ t381 }|.
          t376 = t377.
          DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t384) = CAST zcl_lnt_syntax_input( t2 ).
          t383 = t384->issues.
          DATA t385 TYPE REF TO zcl_lnt_issue.
          DATA(t386) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t387 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t388) = CAST zcl_lnt_expression_node( t1 ).
          t387 = t388->get_first_token(  ).
          DATA(t389) = t376.
          DATA t390 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t390.
          t385 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t386 i_token = t387 i_message_26cb = t389 i_fix = t390 ).
          APPEND t385 TO t383->items.
          DATA t391 TYPE REF TO zcl_lnt_void_type.
          CLEAR t391.
          DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t392.
          DATA(t393) = abap_true.
          IF t393 = abap_true.
            DATA(t394) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t395->has = abap_true.
            t395->value = t394.
            t392 = t395.
          ELSE.
            DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t396.
            t392 = t396.
          ENDIF.
          DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t397.
          t391 = zcl_lnt_void_type=>get_db65( i_voided = t392 i_qualified_name = t397 ).
          result = t391.
          RETURN.
        ENDIF.
        DATA t398 TYPE abap_bool.
        DATA(t399) = CAST zif_lnt_class_definition( t71 ).
        t398 = xsdbool( t399 IS BOUND ).
        IF t398 = abap_true.
          DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t402 TYPE REF TO zif_lnt_class_definition.
          DATA(t403) = CAST zif_lnt_class_definition( t71 ).
          t402 = t403.
          DATA(t404) = CAST zcl_lnt_syntax_input( t2 ).
          t401 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t402 i_input_967e = t404 ).
          t400 = t401.
          DATA(t405) = VALUE abap_bool( ).
          DATA(t406) = CAST zlnt_runtime_opti_4ba3bdccd169( t400 ).
          IF t406 IS BOUND.
            IF t406->has = abap_true.
              t405 = xsdbool( strlen( t406->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t405 = abap_true.
            DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t408) = CAST zcl_lnt_syntax_input( t2 ).
            t407 = t408->issues.
            DATA t409 TYPE REF TO zcl_lnt_issue.
            DATA(t410) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t411 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t412) = CAST zcl_lnt_expression_node( t1 ).
            t411 = t412->get_first_token(  ).
            DATA t413 TYPE string.
            DATA(t414) = CAST zlnt_runtime_opti_4ba3bdccd169( t400 ).
            t413 = t414->value.
            DATA t415 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t415.
            t409 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t410 i_token = t411 i_message_26cb = t413 i_fix = t415 ).
            APPEND t409 TO t407->items.
            DATA t416 TYPE REF TO zcl_lnt_void_type.
            CLEAR t416.
            DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t417.
            DATA(t418) = abap_true.
            IF t418 = abap_true.
              DATA(t419) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t420) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t420->has = abap_true.
              t420->value = t419.
              t417 = t420.
            ELSE.
              DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t421.
              t417 = t421.
            ENDIF.
            DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t422.
            t416 = zcl_lnt_void_type=>get_db65( i_voided = t417 i_qualified_name = t422 ).
            result = t416.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t423 TYPE abap_bool.
        DATA t424 TYPE abap_bool.
        DATA t425 TYPE string.
        DATA(t426) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
        t425 = t426->value.
        DATA(t427) = |#|.
        t424 = xsdbool( t425 = t427 ).
        t423 = t424.
        IF t424 = abap_true.
          DATA t428 TYPE abap_bool.
          DATA(t429) = CAST zcl_lnt_abstract_type( t3 ).
          t428 = xsdbool( t429 IS BOUND ).
          t423 = t428.
        ENDIF.
        IF t423 = abap_true.
          DATA t430 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t430.
          DATA(t431) = abap_true.
          IF t431 = abap_true.
            DATA t432 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t433) = CAST zcl_lnt_abstract_type( t3 ).
            t432 = t433.
            t430 = t432.
          ELSE.
            DATA t434 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t434.
            t430 = t434.
          ENDIF.
          t4 = t430.
        ELSE.
          DATA t435 TYPE abap_bool.
          DATA t436 TYPE string.
          DATA(t437) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
          t436 = t437->value.
          DATA(t438) = |#|.
          t435 = xsdbool( t436 = t438 ).
          IF t435 = abap_true.
            DATA t439 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
            CLEAR t439.
            DATA t440 TYPE REF TO zcx_lnt_assert_error.
            CLEAR t440.
            DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t441.
            DATA(t442) = abap_true.
            IF t442 = abap_true.
              DATA(t443) = |NewObject, todo, infer type|.
              DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t444->has = abap_true.
              t444->value = t443.
              t441 = t444.
            ELSE.
              DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t445.
              t441 = t445.
            ENDIF.
            t440 = NEW zcx_lnt_assert_error( i_message_26cb = t441 ).
            t439 = NEW #( ).
            t439->payload = t440.
            RAISE EXCEPTION t439.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t446) = VALUE abap_bool( ).
    DATA t447 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t448) = CAST zcl_lnt_abstract_type( t4 ).
    t447 = t448.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t450.
    t449 = t450.
    DATA(t451) = VALUE abap_bool( ).
    DATA(t452) = CAST zcl_lnt_abstract_type( t447 ).
    IF t452 IS INITIAL.
      t451 = abap_true.
    ENDIF.
    t446 = t451.
    IF t446 = abap_true.
      DATA t453 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t453.
      DATA t454 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t454.
      DATA t455 TYPE REF TO zcl_lnt_current_scope.
      DATA t456 TYPE REF TO zcl_lnt_current_scope.
      DATA(t457) = CAST zcl_lnt_syntax_input( t2 ).
      t456 = t457->scope.
      t455 = t456.
      DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t458.
      DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t459.
      DATA(t460) = abap_true.
      IF t460 = abap_true.
        DATA t461 TYPE string.
        DATA(t462) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
        t461 = t462->value.
        DATA(t463) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t463->has = abap_true.
        t463->value = t461.
        t459 = t463.
      ELSE.
        DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t464.
        t459 = t464.
      ENDIF.
      t458 = t459.
      DATA t465 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t465.
      DATA(t466) = VALUE abap_bool( ).
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t468) = CAST zlnt_runtime_opti_4ba3bdccd169( t458 ).
      t467 = t468.
      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t470.
      t469 = t470.
      DATA(t471) = VALUE abap_bool( ).
      DATA(t472) = CAST zlnt_runtime_opti_4ba3bdccd169( t467 ).
      IF t472 IS INITIAL.
        t471 = abap_true.
      ELSEIF t472->has = abap_false.
        t471 = abap_true.
      ENDIF.
      t466 = t471.
      IF t466 = abap_true.
        DATA t473 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t473.
        t465 = t473.
      ELSE.
        DATA t474 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t474.
        DATA t475 TYPE REF TO zif_lnt_class_definition.
        CLEAR t475.
        DATA t476 TYPE REF TO zif_lnt_class_definition.
        CLEAR t476.
        DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t477.
        DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t478.
        DATA(t479) = abap_true.
        IF t479 = abap_true.
          DATA t480 TYPE string.
          DATA(t481) = CAST zlnt_runtime_opti_4ba3bdccd169( t458 ).
          t480 = t481->value.
          DATA(t482) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t482->has = abap_true.
          t482->value = t480.
          t478 = t482.
        ELSE.
          DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t483.
          t478 = t483.
        ENDIF.
        t477 = t478.
        DATA t484 TYPE REF TO zif_lnt_class_definition.
        CLEAR t484.
        DATA(t485) = VALUE abap_bool( ).
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t487) = CAST zlnt_runtime_opti_4ba3bdccd169( t477 ).
        t486 = t487.
        DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t489.
        t488 = t489.
        DATA(t490) = VALUE abap_bool( ).
        DATA(t491) = CAST zlnt_runtime_opti_4ba3bdccd169( t486 ).
        IF t491 IS INITIAL.
          t490 = abap_true.
        ELSEIF t491->has = abap_false.
          t490 = abap_true.
        ENDIF.
        t485 = t490.
        IF t485 = abap_true.
          DATA t492 TYPE REF TO zif_lnt_class_definition.
          CLEAR t492.
          t484 = t492.
        ELSE.
          DATA t493 TYPE REF TO zif_lnt_class_definition.
          CLEAR t493.
          DATA t494 TYPE REF TO zif_lnt_class_definition.
          CLEAR t494.
          DATA t495 TYPE REF TO zif_lnt_class_definition.
          CLEAR t495.
          DATA t496 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t497 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t498) = CAST zcl_lnt_current_scope( t455 ).
          t497 = t498->current.
          t496 = t497.
          DATA t499 TYPE REF TO zif_lnt_class_definition.
          CLEAR t499.
          DATA(t500) = VALUE abap_bool( ).
          DATA(t501) = CAST zcl_lnt_spaghetti_scope_node( t496 ).
          IF t501 IS INITIAL.
            t500 = abap_true.
          ENDIF.
          IF t500 = abap_true.
            DATA t502 TYPE REF TO zif_lnt_class_definition.
            CLEAR t502.
            t499 = t502.
          ELSE.
            DATA t503 TYPE REF TO zif_lnt_class_definition.
            DATA t504 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t505) = CAST zcl_lnt_spaghetti_scope_node( t496 ).
            t504 = t505.
            DATA t506 TYPE string.
            DATA(t507) = CAST zlnt_runtime_opti_4ba3bdccd169( t477 ).
            t506 = t507->value.
            t503 = t504->find_class_definition( i_name = t506 ).
            t499 = t503.
          ENDIF.
          t495 = t499.
          t494 = t495.
          DATA t508 TYPE REF TO zif_lnt_class_definition.
          CLEAR t508.
          DATA t509 TYPE abap_bool.
          DATA(t510) = CAST zif_lnt_class_definition( t494 ).
          t509 = xsdbool( t510 IS BOUND ).
          IF t509 = abap_true.
            DATA t511 TYPE REF TO zif_lnt_class_definition.
            CLEAR t511.
            DATA(t512) = abap_true.
            IF t512 = abap_true.
              DATA t513 TYPE REF TO zif_lnt_class_definition.
              DATA(t514) = CAST zif_lnt_class_definition( t494 ).
              t513 = t514.
              t511 = t513.
            ELSE.
              DATA t515 TYPE REF TO zif_lnt_class_definition.
              CLEAR t515.
              t511 = t515.
            ENDIF.
            t508 = t511.
          ELSE.
            DATA t516 TYPE REF TO zif_lnt_class_definition.
            CLEAR t516.
            DATA t517 TYPE REF TO zcl_lnt_class.
            CLEAR t517.
            DATA t518 TYPE REF TO zcl_lnt_class.
            CLEAR t518.
            DATA t519 TYPE REF TO zif_lnt_object.
            CLEAR t519.
            DATA t520 TYPE REF TO zif_lnt_registry.
            DATA(t521) = CAST zcl_lnt_current_scope( t455 ).
            t520 = t521->reg.
            DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t522.
            DATA(t523) = abap_true.
            IF t523 = abap_true.
              DATA(t524) = |CLAS|.
              DATA(t525) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t525->has = abap_true.
              t525->value = t524.
              t522 = t525.
            ELSE.
              DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t526.
              t522 = t526.
            ENDIF.
            DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t527.
            DATA(t528) = abap_true.
            IF t528 = abap_true.
              DATA t529 TYPE string.
              DATA(t530) = CAST zlnt_runtime_opti_4ba3bdccd169( t477 ).
              t529 = t530->value.
              DATA(t531) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t531->has = abap_true.
              t531->value = t529.
              t527 = t531.
            ELSE.
              DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t532.
              t527 = t532.
            ENDIF.
            t519 = t520->get_object( i_type_9913 = t522 i_name = t527 ).
            DATA t533 TYPE REF TO object.
            t533 = t519.
            t518 ?= t533.
            t517 = t518.
            DATA t534 TYPE REF TO zif_lnt_class_definition.
            CLEAR t534.
            DATA t535 TYPE abap_bool.
            DATA(t536) = CAST zcl_lnt_class( t517 ).
            t535 = xsdbool( t536 IS BOUND ).
            IF t535 = abap_true.
              DATA t537 TYPE REF TO zif_lnt_class_definition.
              DATA t538 TYPE REF TO zcl_lnt_class.
              DATA(t539) = CAST zcl_lnt_class( t517 ).
              t538 = t539.
              t537 = t538->gt_dfn_ins_src_obj_cls_ts_clss(  ).
              t534 = t537.
            ELSE.
              DATA t540 TYPE REF TO zif_lnt_class_definition.
              CLEAR t540.
              t534 = t540.
            ENDIF.
            t516 = t534.
            t508 = t516.
          ENDIF.
          t493 = t508.
          t484 = t493.
        ENDIF.
        t476 = t484.
        t475 = t476.
        DATA t541 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t541.
        DATA t542 TYPE abap_bool.
        DATA(t543) = CAST zif_lnt_class_definition( t475 ).
        t542 = xsdbool( t543 IS BOUND ).
        IF t542 = abap_true.
          DATA t544 TYPE REF TO zif_lnt_interface_definition.
          DATA t545 TYPE REF TO zif_lnt_class_definition.
          DATA(t546) = CAST zif_lnt_class_definition( t475 ).
          t545 = t546.
          t544 ?= t545.
          t541 = t544.
        ELSE.
          DATA t547 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t547.
          DATA t548 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t548.
          DATA t549 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t549.
          DATA t550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t550.
          DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t551.
          DATA(t552) = abap_true.
          IF t552 = abap_true.
            DATA t553 TYPE string.
            DATA(t554) = CAST zlnt_runtime_opti_4ba3bdccd169( t458 ).
            t553 = t554->value.
            DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t555->has = abap_true.
            t555->value = t553.
            t551 = t555.
          ELSE.
            DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t556.
            t551 = t556.
          ENDIF.
          t550 = t551.
          DATA t557 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t557.
          DATA(t558) = VALUE abap_bool( ).
          DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t560) = CAST zlnt_runtime_opti_4ba3bdccd169( t550 ).
          t559 = t560.
          DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t562.
          t561 = t562.
          DATA(t563) = VALUE abap_bool( ).
          DATA(t564) = CAST zlnt_runtime_opti_4ba3bdccd169( t559 ).
          IF t564 IS INITIAL.
            t563 = abap_true.
          ELSEIF t564->has = abap_false.
            t563 = abap_true.
          ENDIF.
          t558 = t563.
          IF t558 = abap_true.
            DATA t565 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t565.
            t557 = t565.
          ELSE.
            DATA t566 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t566.
            DATA t567 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t567.
            DATA t568 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t568.
            DATA t569 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t570 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t571) = CAST zcl_lnt_current_scope( t455 ).
            t570 = t571->current.
            t569 = t570.
            DATA t572 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t572.
            DATA(t573) = VALUE abap_bool( ).
            DATA(t574) = CAST zcl_lnt_spaghetti_scope_node( t569 ).
            IF t574 IS INITIAL.
              t573 = abap_true.
            ENDIF.
            IF t573 = abap_true.
              DATA t575 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t575.
              t572 = t575.
            ELSE.
              DATA t576 TYPE REF TO zif_lnt_interface_definition.
              DATA t577 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t578) = CAST zcl_lnt_spaghetti_scope_node( t569 ).
              t577 = t578.
              DATA t579 TYPE string.
              DATA(t580) = CAST zlnt_runtime_opti_4ba3bdccd169( t550 ).
              t579 = t580->value.
              t576 = t577->find_interface_definition( i_name = t579 ).
              t572 = t576.
            ENDIF.
            t568 = t572.
            t567 = t568.
            DATA t581 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t581.
            DATA t582 TYPE abap_bool.
            DATA(t583) = CAST zif_lnt_interface_definition( t567 ).
            t582 = xsdbool( t583 IS BOUND ).
            IF t582 = abap_true.
              DATA t584 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t584.
              DATA(t585) = abap_true.
              IF t585 = abap_true.
                DATA t586 TYPE REF TO zif_lnt_interface_definition.
                DATA(t587) = CAST zif_lnt_interface_definition( t567 ).
                t586 = t587.
                t584 = t586.
              ELSE.
                DATA t588 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t588.
                t584 = t588.
              ENDIF.
              t581 = t584.
            ELSE.
              DATA t589 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t589.
              DATA t590 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t590.
              DATA t591 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t591.
              DATA t592 TYPE REF TO zif_lnt_object.
              CLEAR t592.
              DATA t593 TYPE REF TO zif_lnt_registry.
              DATA(t594) = CAST zcl_lnt_current_scope( t455 ).
              t593 = t594->reg.
              DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t595.
              DATA(t596) = abap_true.
              IF t596 = abap_true.
                DATA(t597) = |INTF|.
                DATA(t598) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t598->has = abap_true.
                t598->value = t597.
                t595 = t598.
              ELSE.
                DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t599.
                t595 = t599.
              ENDIF.
              DATA t600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t600.
              DATA(t601) = abap_true.
              IF t601 = abap_true.
                DATA t602 TYPE string.
                DATA(t603) = CAST zlnt_runtime_opti_4ba3bdccd169( t550 ).
                t602 = t603->value.
                DATA(t604) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t604->has = abap_true.
                t604->value = t602.
                t600 = t604.
              ELSE.
                DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t605.
                t600 = t605.
              ENDIF.
              t592 = t593->get_object( i_type_9913 = t595 i_name = t600 ).
              DATA t606 TYPE REF TO object.
              t606 = t592.
              t591 ?= t606.
              t590 = t591.
              DATA t607 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t607.
              DATA t608 TYPE abap_bool.
              DATA(t609) = CAST zcl_lnt_ob_interface( t590 ).
              t608 = xsdbool( t609 IS BOUND ).
              IF t608 = abap_true.
                DATA t610 TYPE REF TO zif_lnt_interface_definition.
                DATA t611 TYPE REF TO zcl_lnt_ob_interface.
                DATA t612 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t613) = CAST zcl_lnt_ob_interface( t590 ).
                t612 = t613.
                t611 = t612.
                DATA t614 TYPE REF TO zif_lnt_interface_definition.
                DATA(t615) = CAST zcl_lnt_ob_interface( t611 ).
                t614 = t615->def.
                t610 = t614.
                t607 = t610.
              ELSE.
                DATA t616 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t616.
                t607 = t616.
              ENDIF.
              t589 = t607.
              t581 = t589.
            ENDIF.
            t566 = t581.
            t557 = t566.
          ENDIF.
          t549 = t557.
          t548 = t549.
          DATA t617 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t617.
          DATA t618 TYPE abap_bool.
          DATA(t619) = CAST zif_lnt_interface_definition( t548 ).
          t618 = xsdbool( t619 IS BOUND ).
          IF t618 = abap_true.
            DATA t620 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t620.
            DATA(t621) = abap_true.
            IF t621 = abap_true.
              DATA t622 TYPE REF TO zif_lnt_interface_definition.
              DATA(t623) = CAST zif_lnt_interface_definition( t548 ).
              t622 = t623.
              t620 = t622.
            ELSE.
              DATA t624 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t624.
              t620 = t624.
            ENDIF.
            t617 = t620.
          ELSE.
            DATA t625 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t625.
            t617 = t625.
          ENDIF.
          t547 = t617.
          t541 = t547.
        ENDIF.
        t474 = t541.
        t465 = t474.
      ENDIF.
      t454 = t465.
      t453 = t454.
      DATA t626 TYPE abap_bool.
      DATA(t627) = CAST zif_lnt_interface_definition( t453 ).
      t626 = xsdbool( t627 IS BOUND ).
      IF t626 = abap_true.
        DATA t628 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t629 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t630 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t631 TYPE REF TO zif_lnt_interface_definition.
        DATA(t632) = CAST zif_lnt_interface_definition( t453 ).
        t631 = t632.
        t630 ?= t631.
        DATA t633 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t633.
        t629 = NEW zcl_lnt_object_reference_type( i_id = t630 i_extra = t633 ).
        t628 = t629.
        DATA t634 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t635 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t636 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t637) = CAST zcl_lnt_abstract_token( t10 ).
        t636 = t637.
        DATA t638 TYPE string.
        DATA(t639) = CAST zcl_lnt_syntax_input( t2 ).
        t638 = t639->filename.
        DATA(t640) = CAST zcl_lnt_object_reference_type( t628 ).
        DATA t641 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t641.
        DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t642.
        t635 = NEW zcl_lnt_typed_identifier( i_token = t636 i_filename = t638 i_type_9913 = t640 i_meta = t641 i_value = t642 ).
        t634 = t635.
        DATA t643 TYPE REF TO zcl_lnt_current_scope.
        DATA(t644) = CAST zcl_lnt_syntax_input( t2 ).
        t643 = t644->scope.
        DATA t645 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t645.
        DATA(t646) = abap_true.
        IF t646 = abap_true.
          DATA t647 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t648) = CAST zcl_lnt_abstract_token( t10 ).
          t647 = t648.
          t645 = t647.
        ELSE.
          DATA t649 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t649.
          t645 = t649.
        ENDIF.
        DATA(t650) = CAST zcl_lnt_typed_identifier( t634 ).
        DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t652) = |Inferred Type|.
        CREATE OBJECT t651.
        t651->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t651->sval = t652.
        DATA t653 TYPE string.
        DATA(t654) = CAST zcl_lnt_syntax_input( t2 ).
        t653 = t654->filename.
        DATA t655 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t655.
        t643->add_reference( i_usage = t645 i_referencing = t650 i_type_9913 = t651 i_filename = t653 i_extra = t655 ).
        DATA t656 TYPE REF TO zcl_lnt_current_scope.
        DATA(t657) = CAST zcl_lnt_syntax_input( t2 ).
        t656 = t657->scope.
        DATA t658 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t658.
        DATA(t659) = abap_true.
        IF t659 = abap_true.
          DATA t660 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t661) = CAST zcl_lnt_abstract_token( t10 ).
          t660 = t661.
          t658 = t660.
        ELSE.
          DATA t662 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t662.
          t658 = t662.
        ENDIF.
        DATA t663 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t663.
        DATA(t664) = abap_true.
        IF t664 = abap_true.
          DATA t665 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t666 TYPE REF TO zif_lnt_interface_definition.
          DATA(t667) = CAST zif_lnt_interface_definition( t453 ).
          t666 = t667.
          t665 ?= t666.
          t663 = t665.
        ELSE.
          DATA t668 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t668.
          t663 = t668.
        ENDIF.
        DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t670) = |Object|.
        CREATE OBJECT t669.
        t669->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t669->sval = t670.
        DATA t671 TYPE string.
        DATA(t672) = CAST zcl_lnt_syntax_input( t2 ).
        t671 = t672->filename.
        DATA t673 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t673.
        t656->add_reference( i_usage = t658 i_referencing = t663 i_type_9913 = t669 i_filename = t671 i_extra = t673 ).
        DATA t674 TYPE REF TO zcl_lnt_current_scope.
        DATA(t675) = CAST zcl_lnt_syntax_input( t2 ).
        t674 = t675->scope.
        DATA t676 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t676.
        DATA(t677) = abap_true.
        IF t677 = abap_true.
          DATA t678 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t679) = CAST zcl_lnt_abstract_token( t10 ).
          t678 = t679.
          t676 = t678.
        ELSE.
          DATA t680 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t680.
          t676 = t680.
        ENDIF.
        DATA t681 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t681.
        DATA(t682) = abap_true.
        IF t682 = abap_true.
          DATA t683 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t684 TYPE REF TO zif_lnt_interface_definition.
          DATA(t685) = CAST zif_lnt_interface_definition( t453 ).
          t684 = t685.
          t683 ?= t684.
          t681 = t683.
        ELSE.
          DATA t686 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t686.
          t681 = t686.
        ENDIF.
        DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t688) = |Constructor Reference|.
        CREATE OBJECT t687.
        t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t687->sval = t688.
        DATA t689 TYPE string.
        DATA(t690) = CAST zcl_lnt_syntax_input( t2 ).
        t689 = t690->filename.
        DATA t691 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t691.
        DATA(t692) = abap_true.
        IF t692 = abap_true.
          DATA t693 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t693.
          DATA t694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t694.
          DATA(t695) = abap_true.
          IF t695 = abap_true.
            DATA t696 TYPE string.
            DATA t697 TYPE REF TO zif_lnt_interface_definition.
            DATA(t698) = CAST zif_lnt_interface_definition( t453 ).
            t697 = t698.
            t696 = t697->get_name(  ).
            DATA(t699) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t699->has = abap_true.
            t699->value = t696.
            t694 = t699.
          ELSE.
            DATA t700 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t700.
            t694 = t700.
          ENDIF.
          DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t701.
          DATA t702 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t702.
          t693 = NEW zcl_lnt_ireference_extras( i_oo_name = t694 i_oo_type = t701 i_found_qualified = t702 ).
          t691 = t693.
        ELSE.
          DATA t703 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t703.
          t691 = t703.
        ENDIF.
        t674->add_reference( i_usage = t676 i_referencing = t681 i_type_9913 = t687 i_filename = t689 i_extra = t691 ).
        DATA t704 TYPE REF TO zif_lnt_class_definition.
        CLEAR t704.
        DATA t705 TYPE REF TO zif_lnt_class_definition.
        CLEAR t705.
        DATA t706 TYPE REF TO zcl_lnt_current_scope.
        DATA t707 TYPE REF TO zcl_lnt_current_scope.
        DATA(t708) = CAST zcl_lnt_syntax_input( t2 ).
        t707 = t708->scope.
        t706 = t707.
        DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t709.
        DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t710.
        DATA(t711) = abap_true.
        IF t711 = abap_true.
          DATA(t712) = VALUE string( ).
          DATA t713 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t714) = CAST zcl_lnt_object_reference_type( t628 ).
          t713 = t714.
          DATA(t715) = VALUE string( ).
          DATA t716 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t717 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t718) = CAST zcl_lnt_object_reference_type( t713 ).
          t717 = t718->identifier.
          t716 = t717.
          DATA(t719) = VALUE string( ).
          DATA t720 TYPE string.
          DATA t721 TYPE string.
          DATA t722 TYPE REF TO zcl_lnt_abstract_token.
          DATA t723 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t724) = CAST zcl_lnt_fi_identifier( t716 ).
          t723 = t724->token.
          t722 = t723.
          DATA t725 TYPE string.
          DATA(t726) = CAST zcl_lnt_abstract_token( t722 ).
          t725 = t726->str.
          t721 = t725.
          t720 = t721.
          DATA(t727) = VALUE abap_bool( ).
          DATA(t728) = VALUE string( ).
          DATA(t729) = t720.
          DATA(t730) = 0.
          DATA(t731) = 1.
          DATA(t732) = strlen( t729 ).
          IF t730 < 0.
            t730 = t730 + t732.
            IF t730 < 0.
              t730 = 0.
            ENDIF.
          ENDIF.
          IF t730 > t732 OR t731 <= 0.
            CLEAR t728.
          ELSE.
            IF t731 > t732 - t730.
              t731 = t732 - t730.
            ENDIF.
            t728 = t729+t730(t731).
          ENDIF.
          DATA(t733) = |!|.
          t727 = xsdbool( t728 = t733 ).
          IF t727 = abap_true.
            DATA(t734) = VALUE string( ).
            DATA t735 TYPE string.
            DATA(t736) = t720.
            t735 = t736.
            DATA(t737) = VALUE string( ).
            DATA(t738) = t735.
            DATA(t739) = 1.
            DATA t740 TYPE i.
            DATA(t741) = t735.
            DATA(t742) = strlen( t741 ).
            t740 = t742.
            DATA(t743) = strlen( t738 ).
            IF t739 < 0.
              t739 = t739 + t743.
              IF t739 < 0.
                t739 = 0.
              ENDIF.
            ENDIF.
            IF t739 > t743 OR t740 <= 0.
              CLEAR t737.
            ELSE.
              IF t740 > t743 - t739.
                t740 = t743 - t739.
              ENDIF.
              t737 = t738+t739(t740).
            ENDIF.
            t734 = t737.
            t720 = t734.
          ENDIF.
          DATA(t744) = t720.
          t719 = t744.
          t715 = t719.
          t712 = t715.
          DATA(t745) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t745->has = abap_true.
          t745->value = t712.
          t710 = t745.
        ELSE.
          DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t746.
          t710 = t746.
        ENDIF.
        t709 = t710.
        DATA t747 TYPE REF TO zif_lnt_class_definition.
        CLEAR t747.
        DATA(t748) = VALUE abap_bool( ).
        DATA t749 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t750) = CAST zlnt_runtime_opti_4ba3bdccd169( t709 ).
        t749 = t750.
        DATA t751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t752.
        t751 = t752.
        DATA(t753) = VALUE abap_bool( ).
        DATA(t754) = CAST zlnt_runtime_opti_4ba3bdccd169( t749 ).
        IF t754 IS INITIAL.
          t753 = abap_true.
        ELSEIF t754->has = abap_false.
          t753 = abap_true.
        ENDIF.
        t748 = t753.
        IF t748 = abap_true.
          DATA t755 TYPE REF TO zif_lnt_class_definition.
          CLEAR t755.
          t747 = t755.
        ELSE.
          DATA t756 TYPE REF TO zif_lnt_class_definition.
          CLEAR t756.
          DATA t757 TYPE REF TO zif_lnt_class_definition.
          CLEAR t757.
          DATA t758 TYPE REF TO zif_lnt_class_definition.
          CLEAR t758.
          DATA t759 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t760 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t761) = CAST zcl_lnt_current_scope( t706 ).
          t760 = t761->current.
          t759 = t760.
          DATA t762 TYPE REF TO zif_lnt_class_definition.
          CLEAR t762.
          DATA(t763) = VALUE abap_bool( ).
          DATA(t764) = CAST zcl_lnt_spaghetti_scope_node( t759 ).
          IF t764 IS INITIAL.
            t763 = abap_true.
          ENDIF.
          IF t763 = abap_true.
            DATA t765 TYPE REF TO zif_lnt_class_definition.
            CLEAR t765.
            t762 = t765.
          ELSE.
            DATA t766 TYPE REF TO zif_lnt_class_definition.
            DATA t767 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t768) = CAST zcl_lnt_spaghetti_scope_node( t759 ).
            t767 = t768.
            DATA t769 TYPE string.
            DATA(t770) = CAST zlnt_runtime_opti_4ba3bdccd169( t709 ).
            t769 = t770->value.
            t766 = t767->find_class_definition( i_name = t769 ).
            t762 = t766.
          ENDIF.
          t758 = t762.
          t757 = t758.
          DATA t771 TYPE REF TO zif_lnt_class_definition.
          CLEAR t771.
          DATA t772 TYPE abap_bool.
          DATA(t773) = CAST zif_lnt_class_definition( t757 ).
          t772 = xsdbool( t773 IS BOUND ).
          IF t772 = abap_true.
            DATA t774 TYPE REF TO zif_lnt_class_definition.
            CLEAR t774.
            DATA(t775) = abap_true.
            IF t775 = abap_true.
              DATA t776 TYPE REF TO zif_lnt_class_definition.
              DATA(t777) = CAST zif_lnt_class_definition( t757 ).
              t776 = t777.
              t774 = t776.
            ELSE.
              DATA t778 TYPE REF TO zif_lnt_class_definition.
              CLEAR t778.
              t774 = t778.
            ENDIF.
            t771 = t774.
          ELSE.
            DATA t779 TYPE REF TO zif_lnt_class_definition.
            CLEAR t779.
            DATA t780 TYPE REF TO zcl_lnt_class.
            CLEAR t780.
            DATA t781 TYPE REF TO zcl_lnt_class.
            CLEAR t781.
            DATA t782 TYPE REF TO zif_lnt_object.
            CLEAR t782.
            DATA t783 TYPE REF TO zif_lnt_registry.
            DATA(t784) = CAST zcl_lnt_current_scope( t706 ).
            t783 = t784->reg.
            DATA t785 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t785.
            DATA(t786) = abap_true.
            IF t786 = abap_true.
              DATA(t787) = |CLAS|.
              DATA(t788) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t788->has = abap_true.
              t788->value = t787.
              t785 = t788.
            ELSE.
              DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t789.
              t785 = t789.
            ENDIF.
            DATA t790 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t790.
            DATA(t791) = abap_true.
            IF t791 = abap_true.
              DATA t792 TYPE string.
              DATA(t793) = CAST zlnt_runtime_opti_4ba3bdccd169( t709 ).
              t792 = t793->value.
              DATA(t794) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t794->has = abap_true.
              t794->value = t792.
              t790 = t794.
            ELSE.
              DATA t795 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t795.
              t790 = t795.
            ENDIF.
            t782 = t783->get_object( i_type_9913 = t785 i_name = t790 ).
            DATA t796 TYPE REF TO object.
            t796 = t782.
            t781 ?= t796.
            t780 = t781.
            DATA t797 TYPE REF TO zif_lnt_class_definition.
            CLEAR t797.
            DATA t798 TYPE abap_bool.
            DATA(t799) = CAST zcl_lnt_class( t780 ).
            t798 = xsdbool( t799 IS BOUND ).
            IF t798 = abap_true.
              DATA t800 TYPE REF TO zif_lnt_class_definition.
              DATA t801 TYPE REF TO zcl_lnt_class.
              DATA(t802) = CAST zcl_lnt_class( t780 ).
              t801 = t802.
              t800 = t801->gt_dfn_ins_src_obj_cls_ts_clss(  ).
              t797 = t800.
            ELSE.
              DATA t803 TYPE REF TO zif_lnt_class_definition.
              CLEAR t803.
              t797 = t803.
            ENDIF.
            t779 = t797.
            t771 = t779.
          ENDIF.
          t756 = t771.
          t747 = t756.
        ENDIF.
        t705 = t747.
        t704 = t705.
        DATA(t804) = VALUE abap_bool( ).
        DATA t805 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t805.
        DATA t806 TYPE REF TO zif_lnt_class_definition.
        DATA(t807) = CAST zif_lnt_class_definition( t704 ).
        t806 = t807.
        DATA t808 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t808.
        DATA(t809) = VALUE abap_bool( ).
        DATA(t810) = CAST zif_lnt_class_definition( t806 ).
        IF t810 IS INITIAL.
          t809 = abap_true.
        ENDIF.
        IF t809 = abap_true.
          DATA t811 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t811.
          t808 = t811.
        ELSE.
          DATA t812 TYPE abap_bool.
          DATA t813 TYPE REF TO zif_lnt_class_definition.
          DATA(t814) = CAST zif_lnt_class_definition( t806 ).
          t813 = t814.
          t812 = t813->is_abstract(  ).
          DATA(t815) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t815->has = abap_true.
          t815->value = t812.
          t808 = t815.
        ENDIF.
        t805 = t808.
        DATA t816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t816.
        DATA(t817) = abap_true.
        IF t817 = abap_true.
          DATA(t818) = abap_true.
          DATA(t819) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t819->has = abap_true.
          t819->value = t818.
          t816 = t819.
        ELSE.
          DATA t820 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t820.
          t816 = t820.
        ENDIF.
        DATA(t821) = VALUE abap_bool( ).
        DATA(t822) = VALUE abap_bool( ).
        IF t805 IS BOUND.
          t821 = t805->has.
        ENDIF.
        IF t816 IS BOUND.
          t822 = t816->has.
        ENDIF.
        IF t821 = t822.
          IF t821 = abap_false.
            t804 = abap_true.
          ELSEIF t805->value = t816->value.
            t804 = abap_true.
          ENDIF.
        ENDIF.
        IF t804 = abap_true.
          DATA t823 TYPE string.
          DATA t824 TYPE string.
          DATA t825 TYPE string.
          DATA t826 TYPE REF TO zif_lnt_class_definition.
          DATA(t827) = CAST zif_lnt_class_definition( t704 ).
          t826 = t827.
          t825 = t826->get_name(  ).
          DATA(t828) = | is abstract, cannot be instantiated|.
          DATA(t829) = strlen( t825 ).
          t824 = |{ t825 }{ t828 }|.
          t823 = t824.
          DATA t830 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t831) = CAST zcl_lnt_syntax_input( t2 ).
          t830 = t831->issues.
          DATA t832 TYPE REF TO zcl_lnt_issue.
          DATA(t833) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t834 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t835) = CAST zcl_lnt_expression_node( t1 ).
          t834 = t835->get_first_token(  ).
          DATA(t836) = t823.
          DATA t837 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t837.
          t832 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t833 i_token = t834 i_message_26cb = t836 i_fix = t837 ).
          APPEND t832 TO t830->items.
          DATA t838 TYPE REF TO zcl_lnt_void_type.
          CLEAR t838.
          DATA t839 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t839.
          DATA(t840) = abap_true.
          IF t840 = abap_true.
            DATA(t841) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t842) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t842->has = abap_true.
            t842->value = t841.
            t839 = t842.
          ELSE.
            DATA t843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t843.
            t839 = t843.
          ENDIF.
          DATA t844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t844.
          t838 = zcl_lnt_void_type=>get_db65( i_voided = t839 i_qualified_name = t844 ).
          result = t838.
          RETURN.
        ENDIF.
        DATA t845 TYPE abap_bool.
        DATA(t846) = CAST zif_lnt_class_definition( t704 ).
        t845 = xsdbool( t846 IS BOUND ).
        IF t845 = abap_true.
          DATA t847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t849 TYPE REF TO zif_lnt_class_definition.
          DATA(t850) = CAST zif_lnt_class_definition( t704 ).
          t849 = t850.
          DATA(t851) = CAST zcl_lnt_syntax_input( t2 ).
          t848 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t849 i_input_967e = t851 ).
          t847 = t848.
          DATA(t852) = VALUE abap_bool( ).
          DATA(t853) = CAST zlnt_runtime_opti_4ba3bdccd169( t847 ).
          IF t853 IS BOUND.
            IF t853->has = abap_true.
              t852 = xsdbool( strlen( t853->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t852 = abap_true.
            DATA t854 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t855) = CAST zcl_lnt_syntax_input( t2 ).
            t854 = t855->issues.
            DATA t856 TYPE REF TO zcl_lnt_issue.
            DATA(t857) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t858 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t859) = CAST zcl_lnt_expression_node( t1 ).
            t858 = t859->get_first_token(  ).
            DATA t860 TYPE string.
            DATA(t861) = CAST zlnt_runtime_opti_4ba3bdccd169( t847 ).
            t860 = t861->value.
            DATA t862 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t862.
            t856 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t857 i_token = t858 i_message_26cb = t860 i_fix = t862 ).
            APPEND t856 TO t854->items.
            DATA t863 TYPE REF TO zcl_lnt_void_type.
            CLEAR t863.
            DATA t864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t864.
            DATA(t865) = abap_true.
            IF t865 = abap_true.
              DATA(t866) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t867) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t867->has = abap_true.
              t867->value = t866.
              t864 = t867.
            ELSE.
              DATA t868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t868.
              t864 = t868.
            ENDIF.
            DATA t869 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t869.
            t863 = zcl_lnt_void_type=>get_db65( i_voided = t864 i_qualified_name = t869 ).
            result = t863.
            RETURN.
          ENDIF.
        ENDIF.
        DATA(t870) = CAST zcl_lnt_object_reference_type( t628 ).
        t4 = t870.
      ENDIF.
    ENDIF.
    DATA(t871) = VALUE abap_bool( ).
    DATA t872 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t873) = CAST zcl_lnt_abstract_type( t4 ).
    t872 = t873.
    DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t875.
    t874 = t875.
    DATA(t876) = VALUE abap_bool( ).
    DATA(t877) = CAST zcl_lnt_abstract_type( t872 ).
    IF t877 IS INITIAL.
      t876 = abap_true.
    ENDIF.
    t871 = t876.
    IF t871 = abap_true.
      DATA t878 TYPE REF TO zcl_lnt_basic_types.
      DATA t879 TYPE REF TO zcl_lnt_basic_types.
      DATA(t880) = CAST zcl_lnt_syntax_input( t2 ).
      t879 = NEW zcl_lnt_basic_types( i_input_967e = t880 ).
      t878 = t879.
      DATA t881 TYPE REF TO zcl_lnt_abstract_type.
      DATA t882 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t883) = CAST zcl_lnt_basic_types( t878 ).
      DATA(t884) = CAST zcl_lnt_expression_node( t6 ).
      DATA t885 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t885.
      DATA t886 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t886.
      DATA t887 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t887.
      t882 = t883->resolve_type_name( i_type_name = t884 i_length = t885 i_decimals_2eed = t886 i_qualified_name = t887 ).
      t881 = t882.
      DATA t888 TYPE abap_bool.
      DATA(t889) = CAST zcl_lnt_abstract_type( t881 ).
      t888 = xsdbool( t889 IS BOUND AND t889 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t888 = abap_true.
        DATA t890 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t891) = CAST zcl_lnt_abstract_type( t881 ).
        t890 ?= t891.
        t4 = t890.
      ELSE.
        DATA t892 TYPE abap_bool.
        DATA t893 TYPE abap_bool.
        DATA(t894) = CAST zcl_lnt_abstract_type( t881 ).
        t893 = xsdbool( t894 IS BOUND ).
        t892 = t893.
        IF t893 = abap_true.
          DATA t895 TYPE abap_bool.
          DATA t896 TYPE abap_bool.
          DATA t897 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t898) = CAST zcl_lnt_abstract_type( t881 ).
          t897 = t898.
          t896 = xsdbool( t897 IS BOUND AND t897 IS INSTANCE OF zcl_lnt_void_type ).
          t895 = xsdbool( t896 = abap_false ).
          t892 = t895.
        ENDIF.
        IF t892 = abap_true.
          DATA t899 TYPE REF TO zcl_lnt_data_reference.
          DATA t900 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t901) = CAST zcl_lnt_abstract_type( t881 ).
          t900 = t901.
          DATA t902 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t902.
          t899 = NEW zcl_lnt_data_reference( i_type_9913 = t900 i_qualified_name = t902 ).
          t4 = t899.
        ELSE.
          DATA t903 TYPE abap_bool.
          DATA(t904) = CAST zcl_lnt_abstract_type( t881 ).
          t903 = xsdbool( t904 IS BOUND AND t904 IS INSTANCE OF zcl_lnt_void_type ).
          IF t903 = abap_true.
            DATA t905 TYPE REF TO zcl_lnt_void_type.
            DATA(t906) = CAST zcl_lnt_abstract_type( t881 ).
            t905 ?= t906.
            t4 = t905.
          ELSE.
            DATA t907 TYPE string.
            DATA t908 TYPE string.
            DATA t909 TYPE string.
            DATA(t910) = |Type "|.
            DATA t911 TYPE string.
            DATA(t912) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
            t911 = t912->value.
            DATA(t913) = strlen( t910 ).
            t909 = |{ t910 }{ t911 }|.
            DATA(t914) = |" not found in scope, NewObject|.
            DATA(t915) = strlen( t909 ).
            t908 = |{ t909 }{ t914 }|.
            t907 = t908.
            DATA t916 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t917) = CAST zcl_lnt_syntax_input( t2 ).
            t916 = t917->issues.
            DATA t918 TYPE REF TO zcl_lnt_issue.
            DATA(t919) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t920 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t921) = CAST zcl_lnt_expression_node( t1 ).
            t920 = t921->get_first_token(  ).
            DATA(t922) = t907.
            DATA t923 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t923.
            t918 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t919 i_token = t920 i_message_26cb = t922 i_fix = t923 ).
            APPEND t918 TO t916->items.
            DATA t924 TYPE REF TO zcl_lnt_void_type.
            CLEAR t924.
            DATA t925 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t925.
            DATA(t926) = abap_true.
            IF t926 = abap_true.
              DATA(t927) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t928) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t928->has = abap_true.
              t928->value = t927.
              t925 = t928.
            ELSE.
              DATA t929 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t929.
              t925 = t929.
            ENDIF.
            DATA t930 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t930.
            t924 = zcl_lnt_void_type=>get_db65( i_voided = t925 i_qualified_name = t930 ).
            result = t924.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t931 TYPE abap_bool.
    DATA(t932) = CAST zcl_lnt_abstract_type( t4 ).
    t931 = xsdbool( t932 IS BOUND AND t932 IS INSTANCE OF zcl_lnt_object_reference_type ).
    IF t931 = abap_true.
      DATA(t933) = CAST zcl_lnt_expression_node( t1 ).
      DATA t934 TYPE REF TO zcl_lnt_object_reference_type.
      DATA(t935) = CAST zcl_lnt_abstract_type( t4 ).
      t934 ?= t935.
      DATA(t936) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_new_object=>parameters( i_node = t933 i_obj_1ed0 = t934 i_input_967e = t936 ).
    ELSE.
      DATA t937 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t938) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t939) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t937 = t938->find_all_expressions( i_type_9913 = t939 ).
      DATA t940 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t940.
      DATA t941 TYPE REF TO object.
      CLEAR t941.
      LOOP AT t937->items INTO t941.
        t940 ?= t941.
        DATA t942 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t942.
        DATA t943 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t943.
        DATA(t944) = abap_true.
        IF t944 = abap_true.
          DATA(t945) = CAST zcl_lnt_expression_node( t940 ).
          t943 = t945.
        ELSE.
          DATA t946 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t946.
          t943 = t946.
        ENDIF.
        DATA(t947) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t948 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t948.
        DATA(t949) = abap_true.
        IF t949 = abap_true.
          DATA t950 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t951) = CAST zcl_lnt_abstract_type( t4 ).
          t950 = t951.
          t948 = t950.
        ELSE.
          DATA t952 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t952.
          t948 = t952.
        ENDIF.
        DATA t953 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t953.
        DATA t954 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t954.
        DATA t955 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t955.
        t942 = zcl_lnt_sy_source=>run_syntax( i_node = t943 i_input_967e = t947 i_target_type = t948 i_write_reference = t953 i_allow_generic_deference = t954 i_read_reference = t955 ).
      ENDLOOP.
    ENDIF.
    DATA t956 TYPE abap_bool.
    DATA t957 TYPE abap_bool.
    DATA(t958) = CAST zcl_lnt_abstract_type( t4 ).
    t957 = xsdbool( t958 IS BOUND AND t958 IS INSTANCE OF zcl_lnt_unknown_type ).
    t956 = t957.
    IF t957 = abap_true.
      DATA(t959) = VALUE abap_bool( ).
      DATA(t960) = VALUE abap_bool( ).
      DATA t961 TYPE REF TO zcl_lnt_ddic.
      DATA t962 TYPE REF TO zcl_lnt_ddic.
      DATA t963 TYPE REF TO zcl_lnt_current_scope.
      DATA t964 TYPE REF TO zcl_lnt_current_scope.
      DATA(t965) = CAST zcl_lnt_syntax_input( t2 ).
      t964 = t965->scope.
      t963 = t964.
      DATA t966 TYPE REF TO zcl_lnt_ddic.
      DATA t967 TYPE REF TO zif_lnt_registry.
      DATA(t968) = CAST zcl_lnt_current_scope( t963 ).
      t967 = t968->reg.
      t966 = NEW zcl_lnt_ddic( i_reg_f149 = t967 ).
      t962 = t966.
      t961 = t962.
      DATA t969 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t969.
      DATA t970 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t970.
      DATA(t971) = abap_true.
      IF t971 = abap_true.
        DATA t972 TYPE string.
        DATA(t973) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
        t972 = t973->value.
        DATA(t974) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t974->has = abap_true.
        t974->value = t972.
        t970 = t974.
      ELSE.
        DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t975.
        t970 = t975.
      ENDIF.
      t969 = t970.
      DATA(t976) = VALUE abap_bool( ).
      DATA(t977) = VALUE abap_bool( ).
      DATA t978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t979) = CAST zlnt_runtime_opti_4ba3bdccd169( t969 ).
      t978 = t979.
      DATA t980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t981.
      t980 = t981.
      DATA(t982) = VALUE abap_bool( ).
      DATA(t983) = CAST zlnt_runtime_opti_4ba3bdccd169( t978 ).
      IF t983 IS INITIAL.
        t982 = abap_true.
      ELSEIF t983->has = abap_false.
        t982 = abap_true.
      ENDIF.
      t977 = t982.
      IF t977 = abap_true.
        DATA(t984) = abap_true.
        t976 = t984.
      ELSE.
        DATA t985 TYPE abap_bool.
        DATA t986 TYPE REF TO zif_lnt_registry.
        DATA(t987) = CAST zcl_lnt_ddic( t961 ).
        t986 = t987->reg.
        DATA t988 TYPE string.
        DATA(t989) = CAST zlnt_runtime_opti_4ba3bdccd169( t969 ).
        t988 = t989->value.
        t985 = t986->in_error_namespace( i_name = t988 ).
        t976 = t985.
      ENDIF.
      t960 = t976.
      DATA(t990) = abap_true.
      t959 = xsdbool( t960 = t990 ).
      t956 = t959.
    ENDIF.
    IF t956 = abap_true.
      DATA t991 TYPE string.
      DATA t992 TYPE string.
      DATA t993 TYPE string.
      DATA(t994) = |Class or type "|.
      DATA t995 TYPE string.
      DATA(t996) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
      t995 = t996->value.
      DATA(t997) = strlen( t994 ).
      t993 = |{ t994 }{ t995 }|.
      DATA(t998) = |" not found|.
      DATA(t999) = strlen( t993 ).
      t992 = |{ t993 }{ t998 }|.
      t991 = t992.
      DATA t1000 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t1001) = CAST zcl_lnt_syntax_input( t2 ).
      t1000 = t1001->issues.
      DATA t1002 TYPE REF TO zcl_lnt_issue.
      DATA(t1003) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t1004 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t1005) = CAST zcl_lnt_expression_node( t1 ).
      t1004 = t1005->get_first_token(  ).
      DATA(t1006) = t991.
      DATA t1007 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t1007.
      t1002 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1003 i_token = t1004 i_message_26cb = t1006 i_fix = t1007 ).
      APPEND t1002 TO t1000->items.
      DATA t1008 TYPE REF TO zcl_lnt_void_type.
      CLEAR t1008.
      DATA t1009 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1009.
      DATA(t1010) = abap_true.
      IF t1010 = abap_true.
        DATA(t1011) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t1012) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1012->has = abap_true.
        t1012->value = t1011.
        t1009 = t1012.
      ELSE.
        DATA t1013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1013.
        t1009 = t1013.
      ENDIF.
      DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1014.
      t1008 = zcl_lnt_void_type=>get_db65( i_voided = t1009 i_qualified_name = t1014 ).
      result = t1008.
      RETURN.
    ENDIF.
    DATA t1015 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t1016) = CAST zcl_lnt_abstract_type( t4 ).
    t1015 = t1016.
    result = t1015.
    
  ENDMETHOD.
  METHOD parameters.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_object_reference_type( i_obj_1ed0 ).
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_object_reference_type.
    DATA(t9) = CAST zcl_lnt_object_reference_type( t2 ).
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t11) = CAST zcl_lnt_object_reference_type( t8 ).
    t10 = t11->identifier.
    t7 = t10.
    t6 = t7.
    DATA(t12) = VALUE string( ).
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t17) = CAST zcl_lnt_fi_identifier( t6 ).
    t16 = t17->token.
    t15 = t16.
    DATA t18 TYPE string.
    DATA(t19) = CAST zcl_lnt_abstract_token( t15 ).
    t18 = t19->str.
    t14 = t18.
    t13 = t14.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE string( ).
    DATA(t22) = t13.
    DATA(t23) = 0.
    DATA(t24) = 1.
    DATA(t25) = strlen( t22 ).
    IF t23 < 0.
      t23 = t23 + t25.
      IF t23 < 0.
        t23 = 0.
      ENDIF.
    ENDIF.
    IF t23 > t25 OR t24 <= 0.
      CLEAR t21.
    ELSE.
      IF t24 > t25 - t23.
        t24 = t25 - t23.
      ENDIF.
      t21 = t22+t23(t24).
    ENDIF.
    DATA(t26) = |!|.
    t20 = xsdbool( t21 = t26 ).
    IF t20 = abap_true.
      DATA(t27) = VALUE string( ).
      DATA t28 TYPE string.
      DATA(t29) = t13.
      t28 = t29.
      DATA(t30) = VALUE string( ).
      DATA(t31) = t28.
      DATA(t32) = 1.
      DATA t33 TYPE i.
      DATA(t34) = t28.
      DATA(t35) = strlen( t34 ).
      t33 = t35.
      DATA(t36) = strlen( t31 ).
      IF t32 < 0.
        t32 = t32 + t36.
        IF t32 < 0.
          t32 = 0.
        ENDIF.
      ENDIF.
      IF t32 > t36 OR t33 <= 0.
        CLEAR t30.
      ELSE.
        IF t33 > t36 - t32.
          t33 = t36 - t32.
        ENDIF.
        t30 = t31+t32(t33).
      ENDIF.
      t27 = t30.
      t13 = t27.
    ENDIF.
    DATA(t37) = t13.
    t12 = t37.
    t5 = t12.
    t4 = t5.
    DATA t38 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_current_scope.
    DATA t41 TYPE REF TO zcl_lnt_current_scope.
    DATA(t42) = CAST zcl_lnt_syntax_input( t3 ).
    t41 = t42->scope.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA(t45) = abap_true.
    IF t45 = abap_true.
      DATA(t46) = t4.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t46.
      t44 = t47.
    ELSE.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      t44 = t48.
    ENDIF.
    t43 = t44.
    DATA t49 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
    t51 = t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    t53 = t54.
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
    IF t56 IS INITIAL.
      t55 = abap_true.
    ELSEIF t56->has = abap_false.
      t55 = abap_true.
    ENDIF.
    t50 = t55.
    IF t50 = abap_true.
      DATA t57 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t57.
      t49 = t57.
    ELSE.
      DATA t58 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t58.
      DATA t59 TYPE REF TO zif_lnt_class_definition.
      CLEAR t59.
      DATA t60 TYPE REF TO zif_lnt_class_definition.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      DATA(t63) = abap_true.
      IF t63 = abap_true.
        DATA t64 TYPE string.
        DATA(t65) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
        t64 = t65->value.
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t64.
        t62 = t66.
      ELSE.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        t62 = t67.
      ENDIF.
      t61 = t62.
      DATA t68 TYPE REF TO zif_lnt_class_definition.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t71) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
      t70 = t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      t72 = t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = CAST zlnt_runtime_opti_4ba3bdccd169( t70 ).
      IF t75 IS INITIAL.
        t74 = abap_true.
      ELSEIF t75->has = abap_false.
        t74 = abap_true.
      ENDIF.
      t69 = t74.
      IF t69 = abap_true.
        DATA t76 TYPE REF TO zif_lnt_class_definition.
        CLEAR t76.
        t68 = t76.
      ELSE.
        DATA t77 TYPE REF TO zif_lnt_class_definition.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_class_definition.
        CLEAR t78.
        DATA t79 TYPE REF TO zif_lnt_class_definition.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t82) = CAST zcl_lnt_current_scope( t40 ).
        t81 = t82->current.
        t80 = t81.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        CLEAR t83.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = CAST zcl_lnt_spaghetti_scope_node( t80 ).
        IF t85 IS INITIAL.
          t84 = abap_true.
        ENDIF.
        IF t84 = abap_true.
          DATA t86 TYPE REF TO zif_lnt_class_definition.
          CLEAR t86.
          t83 = t86.
        ELSE.
          DATA t87 TYPE REF TO zif_lnt_class_definition.
          DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t89) = CAST zcl_lnt_spaghetti_scope_node( t80 ).
          t88 = t89.
          DATA t90 TYPE string.
          DATA(t91) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
          t90 = t91->value.
          t87 = t88->find_class_definition( i_name = t90 ).
          t83 = t87.
        ENDIF.
        t79 = t83.
        t78 = t79.
        DATA t92 TYPE REF TO zif_lnt_class_definition.
        CLEAR t92.
        DATA t93 TYPE abap_bool.
        DATA(t94) = CAST zif_lnt_class_definition( t78 ).
        t93 = xsdbool( t94 IS BOUND ).
        IF t93 = abap_true.
          DATA t95 TYPE REF TO zif_lnt_class_definition.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA t97 TYPE REF TO zif_lnt_class_definition.
            DATA(t98) = CAST zif_lnt_class_definition( t78 ).
            t97 = t98.
            t95 = t97.
          ELSE.
            DATA t99 TYPE REF TO zif_lnt_class_definition.
            CLEAR t99.
            t95 = t99.
          ENDIF.
          t92 = t95.
        ELSE.
          DATA t100 TYPE REF TO zif_lnt_class_definition.
          CLEAR t100.
          DATA t101 TYPE REF TO zcl_lnt_class.
          CLEAR t101.
          DATA t102 TYPE REF TO zcl_lnt_class.
          CLEAR t102.
          DATA t103 TYPE REF TO zif_lnt_object.
          CLEAR t103.
          DATA t104 TYPE REF TO zif_lnt_registry.
          DATA(t105) = CAST zcl_lnt_current_scope( t40 ).
          t104 = t105->reg.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA(t108) = |CLAS|.
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t108.
            t106 = t109.
          ELSE.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t106 = t110.
          ENDIF.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA(t112) = abap_true.
          IF t112 = abap_true.
            DATA t113 TYPE string.
            DATA(t114) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
            t113 = t114->value.
            DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t115->has = abap_true.
            t115->value = t113.
            t111 = t115.
          ELSE.
            DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t116.
            t111 = t116.
          ENDIF.
          t103 = t104->get_object( i_type_9913 = t106 i_name = t111 ).
          DATA t117 TYPE REF TO object.
          t117 = t103.
          t102 ?= t117.
          t101 = t102.
          DATA t118 TYPE REF TO zif_lnt_class_definition.
          CLEAR t118.
          DATA t119 TYPE abap_bool.
          DATA(t120) = CAST zcl_lnt_class( t101 ).
          t119 = xsdbool( t120 IS BOUND ).
          IF t119 = abap_true.
            DATA t121 TYPE REF TO zif_lnt_class_definition.
            DATA t122 TYPE REF TO zcl_lnt_class.
            DATA(t123) = CAST zcl_lnt_class( t101 ).
            t122 = t123.
            t121 = t122->gt_dfn_ins_src_obj_cls_ts_clss(  ).
            t118 = t121.
          ELSE.
            DATA t124 TYPE REF TO zif_lnt_class_definition.
            CLEAR t124.
            t118 = t124.
          ENDIF.
          t100 = t118.
          t92 = t100.
        ENDIF.
        t77 = t92.
        t68 = t77.
      ENDIF.
      t60 = t68.
      t59 = t60.
      DATA t125 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t125.
      DATA t126 TYPE abap_bool.
      DATA(t127) = CAST zif_lnt_class_definition( t59 ).
      t126 = xsdbool( t127 IS BOUND ).
      IF t126 = abap_true.
        DATA t128 TYPE REF TO zif_lnt_interface_definition.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        DATA(t130) = CAST zif_lnt_class_definition( t59 ).
        t129 = t130.
        t128 ?= t129.
        t125 = t128.
      ELSE.
        DATA t131 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t131.
        DATA t132 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t132.
        DATA t133 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t133.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA t137 TYPE string.
          DATA(t138) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
          t137 = t138->value.
          DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t139->has = abap_true.
          t139->value = t137.
          t135 = t139.
        ELSE.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          t135 = t140.
        ENDIF.
        t134 = t135.
        DATA t141 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t141.
        DATA(t142) = VALUE abap_bool( ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t144) = CAST zlnt_runtime_opti_4ba3bdccd169( t134 ).
        t143 = t144.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        t145 = t146.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = CAST zlnt_runtime_opti_4ba3bdccd169( t143 ).
        IF t148 IS INITIAL.
          t147 = abap_true.
        ELSEIF t148->has = abap_false.
          t147 = abap_true.
        ENDIF.
        t142 = t147.
        IF t142 = abap_true.
          DATA t149 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t149.
          t141 = t149.
        ELSE.
          DATA t150 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t150.
          DATA t151 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t151.
          DATA t152 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t154 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t155) = CAST zcl_lnt_current_scope( t40 ).
          t154 = t155->current.
          t153 = t154.
          DATA t156 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t156.
          DATA(t157) = VALUE abap_bool( ).
          DATA(t158) = CAST zcl_lnt_spaghetti_scope_node( t153 ).
          IF t158 IS INITIAL.
            t157 = abap_true.
          ENDIF.
          IF t157 = abap_true.
            DATA t159 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t159.
            t156 = t159.
          ELSE.
            DATA t160 TYPE REF TO zif_lnt_interface_definition.
            DATA t161 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t162) = CAST zcl_lnt_spaghetti_scope_node( t153 ).
            t161 = t162.
            DATA t163 TYPE string.
            DATA(t164) = CAST zlnt_runtime_opti_4ba3bdccd169( t134 ).
            t163 = t164->value.
            t160 = t161->find_interface_definition( i_name = t163 ).
            t156 = t160.
          ENDIF.
          t152 = t156.
          t151 = t152.
          DATA t165 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t165.
          DATA t166 TYPE abap_bool.
          DATA(t167) = CAST zif_lnt_interface_definition( t151 ).
          t166 = xsdbool( t167 IS BOUND ).
          IF t166 = abap_true.
            DATA t168 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t168.
            DATA(t169) = abap_true.
            IF t169 = abap_true.
              DATA t170 TYPE REF TO zif_lnt_interface_definition.
              DATA(t171) = CAST zif_lnt_interface_definition( t151 ).
              t170 = t171.
              t168 = t170.
            ELSE.
              DATA t172 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t172.
              t168 = t172.
            ENDIF.
            t165 = t168.
          ELSE.
            DATA t173 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t173.
            DATA t174 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t174.
            DATA t175 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t175.
            DATA t176 TYPE REF TO zif_lnt_object.
            CLEAR t176.
            DATA t177 TYPE REF TO zif_lnt_registry.
            DATA(t178) = CAST zcl_lnt_current_scope( t40 ).
            t177 = t178->reg.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            DATA(t180) = abap_true.
            IF t180 = abap_true.
              DATA(t181) = |INTF|.
              DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t182->has = abap_true.
              t182->value = t181.
              t179 = t182.
            ELSE.
              DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t183.
              t179 = t183.
            ENDIF.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            DATA(t185) = abap_true.
            IF t185 = abap_true.
              DATA t186 TYPE string.
              DATA(t187) = CAST zlnt_runtime_opti_4ba3bdccd169( t134 ).
              t186 = t187->value.
              DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t188->has = abap_true.
              t188->value = t186.
              t184 = t188.
            ELSE.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t189.
              t184 = t189.
            ENDIF.
            t176 = t177->get_object( i_type_9913 = t179 i_name = t184 ).
            DATA t190 TYPE REF TO object.
            t190 = t176.
            t175 ?= t190.
            t174 = t175.
            DATA t191 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t191.
            DATA t192 TYPE abap_bool.
            DATA(t193) = CAST zcl_lnt_ob_interface( t174 ).
            t192 = xsdbool( t193 IS BOUND ).
            IF t192 = abap_true.
              DATA t194 TYPE REF TO zif_lnt_interface_definition.
              DATA t195 TYPE REF TO zcl_lnt_ob_interface.
              DATA t196 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t197) = CAST zcl_lnt_ob_interface( t174 ).
              t196 = t197.
              t195 = t196.
              DATA t198 TYPE REF TO zif_lnt_interface_definition.
              DATA(t199) = CAST zcl_lnt_ob_interface( t195 ).
              t198 = t199->def.
              t194 = t198.
              t191 = t194.
            ELSE.
              DATA t200 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t200.
              t191 = t200.
            ENDIF.
            t173 = t191.
            t165 = t173.
          ENDIF.
          t150 = t165.
          t141 = t150.
        ENDIF.
        t133 = t141.
        t132 = t133.
        DATA t201 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t201.
        DATA t202 TYPE abap_bool.
        DATA(t203) = CAST zif_lnt_interface_definition( t132 ).
        t202 = xsdbool( t203 IS BOUND ).
        IF t202 = abap_true.
          DATA t204 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t204.
          DATA(t205) = abap_true.
          IF t205 = abap_true.
            DATA t206 TYPE REF TO zif_lnt_interface_definition.
            DATA(t207) = CAST zif_lnt_interface_definition( t132 ).
            t206 = t207.
            t204 = t206.
          ELSE.
            DATA t208 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t208.
            t204 = t208.
          ENDIF.
          t201 = t204.
        ELSE.
          DATA t209 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t209.
          t201 = t209.
        ENDIF.
        t131 = t201.
        t125 = t131.
      ENDIF.
      t58 = t125.
      t49 = t58.
    ENDIF.
    t39 = t49.
    t38 = t39.
    DATA t210 TYPE REF TO zcl_lnt_object_oriented.
    DATA t211 TYPE REF TO zcl_lnt_object_oriented.
    DATA t212 TYPE REF TO zcl_lnt_current_scope.
    DATA(t213) = CAST zcl_lnt_syntax_input( t3 ).
    t212 = t213->scope.
    t211 = NEW zcl_lnt_object_oriented( i_scope = t212 ).
    t210 = t211.
    DATA t214 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t214.
    DATA t215 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t215.
    DATA(t216) = CAST zcl_lnt_object_oriented( t210 ).
    DATA(t217) = CAST zif_lnt_interface_definition( t38 ).
    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t218.
    DATA(t219) = abap_true.
    IF t219 = abap_true.
      DATA(t220) = |CONSTRUCTOR|.
      DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t221->has = abap_true.
      t221->value = t220.
      t218 = t221.
    ELSE.
      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t222.
      t218 = t222.
    ENDIF.
    t215 = t216->search_method_name( i_def = t217 i_name = t218 ).
    t214 = t215.
    DATA t223 TYPE REF TO zif_lnt_method_definition.
    DATA t224 TYPE REF TO zif_lnt_method_definition.
    DATA(t225) = CAST zcl_lnt_shape_a38e878f( t214 ).
    t224 = t225->method.
    t223 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_method_definition.
    DATA(t233) = CAST zif_lnt_method_definition( t223 ).
    t232 = t233.
    DATA t234 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t234.
    DATA(t235) = VALUE abap_bool( ).
    DATA(t236) = CAST zif_lnt_method_definition( t232 ).
    IF t236 IS INITIAL.
      t235 = abap_true.
    ENDIF.
    IF t235 = abap_true.
      DATA t237 TYPE REF TO zif_lnt_method_parameters.
      CLEAR t237.
      t234 = t237.
    ELSE.
      DATA t238 TYPE REF TO zif_lnt_method_parameters.
      DATA t239 TYPE REF TO zif_lnt_method_definition.
      DATA(t240) = CAST zif_lnt_method_definition( t232 ).
      t239 = t240.
      t238 = t239->get_parameters(  ).
      t234 = t238.
    ENDIF.
    t231 = t234.
    t230 = t231.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t241.
    DATA(t242) = VALUE abap_bool( ).
    DATA(t243) = CAST zif_lnt_method_parameters( t230 ).
    IF t243 IS INITIAL.
      t242 = abap_true.
    ENDIF.
    IF t242 = abap_true.
      DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t244.
      t241 = t244.
    ELSE.
      DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t246 TYPE REF TO zif_lnt_method_parameters.
      DATA(t247) = CAST zif_lnt_method_parameters( t230 ).
      t246 = t247.
      t245 = t246->get_required_parameters(  ).
      t241 = t245.
    ENDIF.
    t229 = t241.
    t228 = t229.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t248.
    DATA t249 TYPE abap_bool.
    DATA(t250) = CAST zlnt_runtime_arra_c22708faf2e3( t228 ).
    t249 = xsdbool( t250 IS BOUND ).
    IF t249 = abap_true.
      DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t252) = CAST zlnt_runtime_arra_c22708faf2e3( t228 ).
      t251 = t252.
      t248 = t251.
    ELSE.
      DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t253.
      t248 = t253.
    ENDIF.
    t227 = t248.
    t226 = t227.
    DATA t254 TYPE REF TO zcl_lnt_expression_node.
    DATA t255 TYPE REF TO zcl_lnt_expression_node.
    DATA(t256) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t257) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t255 = t256->find_direct_expression( i_type_9913 = t257 ).
    t254 = t255.
    DATA t258 TYPE REF TO zcl_lnt_expression_node.
    DATA t259 TYPE REF TO zcl_lnt_expression_node.
    DATA(t260) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t261) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14 ).
    t259 = t260->find_direct_expression( i_type_9913 = t261 ).
    t258 = t259.
    DATA t262 TYPE abap_bool.
    DATA(t263) = CAST zcl_lnt_expression_node( t254 ).
    t262 = xsdbool( t263 IS BOUND ).
    IF t262 = abap_true.
      DATA t264 TYPE REF TO zcl_lnt_abstract_type.
      DATA t265 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t266) = CAST zif_lnt_method_definition( t223 ).
      t265 = zcl_lnt_sy_new_object=>default_importing_type( i_method = t266 ).
      t264 = t265.
      DATA(t267) = VALUE abap_bool( ).
      DATA t268 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t269) = CAST zcl_lnt_abstract_type( t264 ).
      t268 = t269.
      DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t271.
      t270 = t271.
      DATA(t272) = VALUE abap_bool( ).
      DATA(t273) = CAST zcl_lnt_abstract_type( t268 ).
      IF t273 IS INITIAL.
        t272 = abap_true.
      ENDIF.
      t267 = t272.
      IF t267 = abap_true.
        DATA t274 TYPE string.
        DATA t275 TYPE string.
        DATA(t276) = |NewObject, no default importing parameter found for construc|.
        t276 = t276 && |tor, |.
        DATA(t277) = t4.
        DATA(t278) = strlen( t276 ).
        t275 = |{ t276 }{ t277 }|.
        t274 = t275.
        DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t280) = CAST zcl_lnt_syntax_input( t3 ).
        t279 = t280->issues.
        DATA t281 TYPE REF TO zcl_lnt_issue.
        DATA(t282) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t283 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t284) = CAST zcl_lnt_expression_node( t1 ).
        t283 = t284->get_first_token(  ).
        DATA(t285) = t274.
        DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t286.
        t281 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t282 i_token = t283 i_message_26cb = t285 i_fix = t286 ).
        APPEND t281 TO t279->items.
        RETURN.
      ENDIF.
      DATA t287 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t287.
      DATA t288 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t288.
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t289.
      DATA(t290) = abap_true.
      IF t290 = abap_true.
        DATA t291 TYPE REF TO zcl_lnt_expression_node.
        DATA(t292) = CAST zcl_lnt_expression_node( t254 ).
        t291 = t292.
        t289 = t291.
      ELSE.
        DATA t293 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t293.
        t289 = t293.
      ENDIF.
      DATA(t294) = CAST zcl_lnt_syntax_input( t3 ).
      DATA t295 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t295.
      DATA(t296) = abap_true.
      IF t296 = abap_true.
        DATA t297 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t298) = CAST zcl_lnt_abstract_type( t264 ).
        t297 = t298.
        t295 = t297.
      ELSE.
        DATA t299 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t299.
        t295 = t299.
      ENDIF.
      DATA t300 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t300.
      DATA t301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t301.
      DATA t302 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t302.
      t288 = zcl_lnt_sy_source=>run_syntax( i_node = t289 i_input_967e = t294 i_target_type = t295 i_write_reference = t300 i_allow_generic_deference = t301 i_read_reference = t302 ).
      t287 = t288.
      DATA(t303) = VALUE abap_bool( ).
      DATA(t304) = VALUE abap_bool( ).
      DATA t305 TYPE REF TO zcl_lnt_type_utils.
      DATA t306 TYPE REF TO zcl_lnt_current_scope.
      DATA(t307) = CAST zcl_lnt_syntax_input( t3 ).
      t306 = t307->scope.
      t305 = NEW zcl_lnt_type_utils( i_scope = t306 ).
      DATA(t308) = CAST zcl_lnt_abstract_type( t287 ).
      DATA t309 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t309.
      DATA(t310) = abap_true.
      IF t310 = abap_true.
        DATA t311 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t312) = CAST zcl_lnt_abstract_type( t264 ).
        t311 = t312.
        t309 = t311.
      ELSE.
        DATA t313 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t313.
        t309 = t313.
      ENDIF.
      DATA t314 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t314.
      t304 = t305->is_assignable_strict( i_source_75cf = t308 i_target_5f8a = t309 i_node = t314 ).
      DATA(t315) = abap_false.
      t303 = xsdbool( t304 = t315 ).
      IF t303 = abap_true.
        DATA t316 TYPE string.
        DATA(t317) = |NEW parameter type not compatible|.
        t316 = t317.
        DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t319) = CAST zcl_lnt_syntax_input( t3 ).
        t318 = t319->issues.
        DATA t320 TYPE REF TO zcl_lnt_issue.
        DATA(t321) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t322 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t323) = CAST zcl_lnt_expression_node( t1 ).
        t322 = t323->get_first_token(  ).
        DATA(t324) = t316.
        DATA t325 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t325.
        t320 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t321 i_token = t322 i_message_26cb = t324 i_fix = t325 ).
        APPEND t320 TO t318->items.
        RETURN.
      ENDIF.
    ELSE.
      DATA t326 TYPE abap_bool.
      DATA(t327) = CAST zcl_lnt_expression_node( t258 ).
      t326 = xsdbool( t327 IS BOUND ).
      IF t326 = abap_true.
        DATA(t328) = VALUE abap_bool( ).
        DATA t329 TYPE REF TO zif_lnt_method_definition.
        DATA(t330) = CAST zif_lnt_method_definition( t223 ).
        t329 = t330.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t332.
        t331 = t332.
        DATA(t333) = VALUE abap_bool( ).
        DATA(t334) = CAST zif_lnt_method_definition( t329 ).
        IF t334 IS INITIAL.
          t333 = abap_true.
        ENDIF.
        t328 = t333.
        IF t328 = abap_true.
          DATA t335 TYPE string.
          DATA t336 TYPE string.
          DATA(t337) = |NewObject, no parameters for constructor found, |.
          DATA(t338) = t4.
          DATA(t339) = strlen( t337 ).
          t336 = |{ t337 }{ t338 }|.
          t335 = t336.
          DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t341) = CAST zcl_lnt_syntax_input( t3 ).
          t340 = t341->issues.
          DATA t342 TYPE REF TO zcl_lnt_issue.
          DATA(t343) = CAST zcl_lnt_syntax_input( t3 ).
          DATA t344 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t345) = CAST zcl_lnt_expression_node( t1 ).
          t344 = t345->get_first_token(  ).
          DATA(t346) = t335.
          DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t347.
          t342 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t343 i_token = t344 i_message_26cb = t346 i_fix = t347 ).
          APPEND t342 TO t340->items.
          RETURN.
        ENDIF.
        DATA(t348) = NEW zcl_lnt_sy_method_parameters(  ).
        DATA t349 TYPE REF TO zcl_lnt_expression_node.
        DATA(t350) = CAST zcl_lnt_expression_node( t258 ).
        t349 = t350.
        DATA(t351) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t352 TYPE REF TO zif_lnt_union_8cd68e5e.
        DATA t353 TYPE REF TO zif_lnt_method_definition.
        DATA(t354) = CAST zif_lnt_method_definition( t223 ).
        t353 = t354.
        t352 ?= t353.
        DATA t355 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t355.
        t348->check_exporting( i_node = t349 i_input_967e = t351 i_method = t352 i_errors = t355 ).
      ELSE.
        DATA t356 TYPE abap_bool.
        DATA t357 TYPE i.
        DATA(t358) = CAST zlnt_runtime_arra_c22708faf2e3( t226 ).
        t357 = lines( t358->items ).
        DATA(t359) = 0.
        t356 = xsdbool( t357 > t359 ).
        IF t356 = abap_true.
          DATA(t360) = VALUE string( ).
          DATA(t361) = VALUE string( ).
          DATA(t362) = VALUE string( ).
          DATA(t363) = VALUE string( ).
          DATA(t364) = |constructor parameter "|.
          DATA(t365) = VALUE string( ).
          DATA t366 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t367 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t226 ).
          DATA t369 TYPE REF TO object.
          CLEAR t369.
          READ TABLE t368->items INDEX 1 INTO t369.
          t367 ?= t369.
          t366 = t367.
          DATA(t370) = VALUE string( ).
          DATA t371 TYPE string.
          DATA t372 TYPE string.
          DATA t373 TYPE REF TO zcl_lnt_abstract_token.
          DATA t374 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t375) = CAST zcl_lnt_fi_identifier( t366 ).
          t374 = t375->token.
          t373 = t374.
          DATA t376 TYPE string.
          DATA(t377) = CAST zcl_lnt_abstract_token( t373 ).
          t376 = t377->str.
          t372 = t376.
          t371 = t372.
          DATA(t378) = VALUE abap_bool( ).
          DATA(t379) = VALUE string( ).
          DATA(t380) = t371.
          DATA(t381) = 0.
          DATA(t382) = 1.
          DATA(t383) = strlen( t380 ).
          IF t381 < 0.
            t381 = t381 + t383.
            IF t381 < 0.
              t381 = 0.
            ENDIF.
          ENDIF.
          IF t381 > t383 OR t382 <= 0.
            CLEAR t379.
          ELSE.
            IF t382 > t383 - t381.
              t382 = t383 - t381.
            ENDIF.
            t379 = t380+t381(t382).
          ENDIF.
          DATA(t384) = |!|.
          t378 = xsdbool( t379 = t384 ).
          IF t378 = abap_true.
            DATA(t385) = VALUE string( ).
            DATA t386 TYPE string.
            DATA(t387) = t371.
            t386 = t387.
            DATA(t388) = VALUE string( ).
            DATA(t389) = t386.
            DATA(t390) = 1.
            DATA t391 TYPE i.
            DATA(t392) = t386.
            DATA(t393) = strlen( t392 ).
            t391 = t393.
            DATA(t394) = strlen( t389 ).
            IF t390 < 0.
              t390 = t390 + t394.
              IF t390 < 0.
                t390 = 0.
              ENDIF.
            ENDIF.
            IF t390 > t394 OR t391 <= 0.
              CLEAR t388.
            ELSE.
              IF t391 > t394 - t390.
                t391 = t394 - t390.
              ENDIF.
              t388 = t389+t390(t391).
            ENDIF.
            t385 = t388.
            t371 = t385.
          ENDIF.
          DATA(t395) = t371.
          t370 = t395.
          t365 = t370.
          DATA(t396) = strlen( t364 ).
          t363 = |{ t364 }{ t365 }|.
          DATA(t397) = |" must be supplied, |.
          DATA(t398) = strlen( t363 ).
          t362 = |{ t363 }{ t397 }|.
          DATA(t399) = t4.
          DATA(t400) = strlen( t362 ).
          t361 = |{ t362 }{ t399 }|.
          t360 = t361.
          DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t402) = CAST zcl_lnt_syntax_input( t3 ).
          t401 = t402->issues.
          DATA t403 TYPE REF TO zcl_lnt_issue.
          DATA(t404) = CAST zcl_lnt_syntax_input( t3 ).
          DATA t405 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t406) = CAST zcl_lnt_expression_node( t1 ).
          t405 = t406->get_first_token(  ).
          DATA(t407) = t360.
          DATA t408 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t408.
          t403 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t404 i_token = t405 i_message_26cb = t407 i_fix = t408 ).
          APPEND t403 TO t401->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD default_importing_type.
    DATA(t1) = CAST zif_lnt_method_definition( i_method ).
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_method_definition.
    DATA(t6) = CAST zif_lnt_method_definition( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zif_lnt_method_definition( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zif_lnt_method_parameters.
    DATA t15 TYPE REF TO zif_lnt_method_definition.
    DATA(t16) = CAST zif_lnt_method_definition( t1 ).
    t15 = t16.
    t14 = t15->get_parameters(  ).
    t13 = t14->get_default_importing(  ).
    t12 = t13.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zif_lnt_method_parameters.
    DATA t19 TYPE REF TO zif_lnt_method_definition.
    DATA(t20) = CAST zif_lnt_method_definition( t1 ).
    t19 = t20.
    t18 = t19->get_parameters(  ).
    t17 = t18->get_importing(  ).
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t17->items INTO t22.
      t21 ?= t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA(t26) = VALUE string( ).
        DATA(t27) = VALUE string( ).
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t29) = CAST zcl_lnt_typed_identifier( t21 ).
        t28 = t29.
        DATA(t30) = VALUE string( ).
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t35) = CAST zcl_lnt_fi_identifier( t28 ).
        t34 = t35->token.
        t33 = t34.
        DATA t36 TYPE string.
        DATA(t37) = CAST zcl_lnt_abstract_token( t33 ).
        t36 = t37->str.
        t32 = t36.
        t31 = t32.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE string( ).
        DATA(t40) = t31.
        DATA(t41) = 0.
        DATA(t42) = 1.
        DATA(t43) = strlen( t40 ).
        IF t41 < 0.
          t41 = t41 + t43.
          IF t41 < 0.
            t41 = 0.
          ENDIF.
        ENDIF.
        IF t41 > t43 OR t42 <= 0.
          CLEAR t39.
        ELSE.
          IF t42 > t43 - t41.
            t42 = t43 - t41.
          ENDIF.
          t39 = t40+t41(t42).
        ENDIF.
        DATA(t44) = |!|.
        t38 = xsdbool( t39 = t44 ).
        IF t38 = abap_true.
          DATA(t45) = VALUE string( ).
          DATA t46 TYPE string.
          DATA(t47) = t31.
          t46 = t47.
          DATA(t48) = VALUE string( ).
          DATA(t49) = t46.
          DATA(t50) = 1.
          DATA t51 TYPE i.
          DATA(t52) = t46.
          DATA(t53) = strlen( t52 ).
          t51 = t53.
          DATA(t54) = strlen( t49 ).
          IF t50 < 0.
            t50 = t50 + t54.
            IF t50 < 0.
              t50 = 0.
            ENDIF.
          ENDIF.
          IF t50 > t54 OR t51 <= 0.
            CLEAR t48.
          ELSE.
            IF t51 > t54 - t50.
              t51 = t54 - t50.
            ENDIF.
            t48 = t49+t50(t51).
          ENDIF.
          t45 = t48.
          t31 = t45.
        ENDIF.
        DATA(t55) = t31.
        t30 = t55.
        t27 = t30.
        DATA(t56) = strlen( t27 ).
        t26 = t27.
        IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t26 TO UPPER CASE.
        ELSE.
          t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
        ENDIF.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t26.
        t24 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t24 = t58.
      ENDIF.
      DATA(t59) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE abap_bool( ).
      IF t24 IS BOUND.
        t60 = t24->has.
      ENDIF.
      IF t59 IS BOUND.
        t61 = t59->has.
      ENDIF.
      IF t60 = t61.
        IF t60 = abap_false.
          t23 = abap_true.
        ELSEIF t24->value = t59->value.
          t23 = abap_true.
        ENDIF.
      ENDIF.
      IF t23 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type.
          DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t66) = CAST zcl_lnt_typed_identifier( t21 ).
          t65 = t66.
          DATA t67 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t68) = CAST zcl_lnt_typed_identifier( t65 ).
          t67 = t68->type_cba0.
          t64 = t67.
          t62 = t64.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t69.
          t62 = t69.
        ENDIF.
        t2 = t62.
      ENDIF.
    ENDLOOP.
    DATA(t70) = CAST zcl_lnt_abstract_type( t2 ).
    result = t70.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d805_d3390e023ff8.
  ENDMETHOD.
ENDCLASS.
