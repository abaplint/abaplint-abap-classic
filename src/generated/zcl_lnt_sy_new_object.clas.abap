* TS: src/abap/5_syntax/expressions/new_object.ts:17:1 NewObject
CLASS zcl_lnt_sy_new_object DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS parameters IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_obj_1ed0 TYPE REF TO zcl_lnt_object_reference_type i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS default_importing_type IMPORTING i_method TYPE REF TO zif_lnt_method_definition RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_new_object IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t7 = t8->find_direct_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA(t13) = t6.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t12.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t19.
      DATA(t20) = t12.
      t19 = t20.
      t18 = t19->get_first_token( ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t22.
    DATA(t23) = t10.
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
      CLEAR t28->source_value.
      IF t29 IS BOUND.
        DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        CLEAR t35.
        t36 = t29.
        TRY.
            t28->source_value ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28->source_value IS NOT BOUND.
          TRY.
              t35 ?= t29.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t35 IS BOUND.
            t28->source_value = t35->source( ).
          ENDIF.
          IF t28->source_value IS NOT BOUND.
            CREATE OBJECT t28->source_value.
            t28->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t28->source_value->oval = t29.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    DATA t39 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t39.
    DATA(t40) = t6.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = t39.
    IF t43 IS INITIAL.
      t42 = abap_true.
    ENDIF.
    IF t42 = abap_true.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t41 = t44.
    ELSE.
      DATA(t45) = VALUE string( ).
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t46.
      DATA(t47) = t39.
      t46 = t47.
      t45 = t46->concat_tokens( ).
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t45.
      t41 = t48.
    ENDIF.
    t38 = t41.
    t37 = t38.
    DATA(t49) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    DATA(t51) = t37.
    t50 = t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    t52 = t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = t50.
    IF t55 IS INITIAL.
      t54 = abap_true.
    ELSEIF t55->has = abap_false.
      t54 = abap_true.
    ENDIF.
    t49 = t54.
    IF t49 = abap_true.
      DATA t56 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t56.
      DATA t57 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      DATA(t59) = abap_true.
      IF t59 = abap_true.
        DATA(t60) = |NewObject, child TypeNameOrInfer not found|.
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t60.
        t58 = t61.
      ELSE.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        t58 = t62.
      ENDIF.
      t57 = NEW zcx_lnt_assert_error( i_message_26cb = t58 ).
      t56 = NEW #( ).
      t56->payload = t57.
      CLEAR t56->source_value.
      IF t57 IS BOUND.
        DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t63.
        DATA t64 TYPE REF TO object.
        CLEAR t64.
        CLEAR t63.
        t64 = t57.
        TRY.
            t56->source_value ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56->source_value IS NOT BOUND.
          TRY.
              t63 ?= t57.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t63 IS BOUND.
            t56->source_value = t63->source( ).
          ENDIF.
          IF t56->source_value IS NOT BOUND.
            CREATE OBJECT t56->source_value.
            t56->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t56->source_value->oval = t57.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t56.
    ELSE.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE string( ).
      DATA(t69) = t37.
      t68 = t69->value.
      DATA(t70) = |#|.
      t67 = xsdbool( t68 = t70 ).
      t66 = t67.
      IF t67 = abap_true.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = t3.
        t71 = xsdbool( t72 IS BOUND ).
        t66 = t71.
      ENDIF.
      t65 = t66.
      IF t66 = abap_true.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t3.
        t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t65 = t73.
      ENDIF.
      IF t65 = abap_true.
        DATA t75 TYPE REF TO zif_lnt_class_definition.
        CLEAR t75.
        DATA t76 TYPE REF TO zif_lnt_class_definition.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t78.
        DATA(t79) = t2.
        t78 = t79->scope.
        t77 = t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA(t82) = abap_true.
        IF t82 = abap_true.
          DATA(t83) = VALUE string( ).
          DATA t84 TYPE REF TO zcl_lnt_object_reference_type.
          CLEAR t84.
          DATA t85 TYPE REF TO zcl_lnt_object_reference_type.
          CLEAR t85.
          DATA(t86) = t3.
          t85 ?= t86.
          t84 = t85.
          DATA(t87) = VALUE string( ).
          DATA t88 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t89.
          DATA(t90) = t84.
          t89 = t90->identifier.
          t88 = t89.
          DATA(t91) = VALUE string( ).
          DATA(t92) = VALUE string( ).
          DATA(t93) = VALUE string( ).
          DATA t94 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t94.
          DATA t95 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t95.
          DATA(t96) = t88.
          t95 = t96->token.
          t94 = t95.
          DATA(t97) = VALUE string( ).
          DATA(t98) = t94.
          t97 = t98->str.
          t93 = t97.
          t92 = t93.
          DATA(t99) = VALUE abap_bool( ).
          DATA(t100) = VALUE string( ).
          DATA(t101) = t92.
          DATA(t102) = 0.
          DATA(t103) = 1.
          DATA(t104) = strlen( t101 ).
          IF t102 < 0.
            t102 = t102 + t104.
            IF t102 < 0.
              t102 = 0.
            ENDIF.
          ENDIF.
          IF t102 > t104 OR t103 <= 0.
            CLEAR t100.
          ELSE.
            IF t103 > t104 - t102.
              t103 = t104 - t102.
            ENDIF.
            t100 = t101+t102(t103).
          ENDIF.
          DATA(t105) = |!|.
          t99 = xsdbool( t100 = t105 ).
          IF t99 = abap_true.
            DATA(t106) = VALUE string( ).
            DATA(t107) = VALUE string( ).
            DATA(t108) = t92.
            t107 = t108.
            DATA(t109) = VALUE string( ).
            DATA(t110) = t107.
            DATA(t111) = 1.
            DATA(t112) = VALUE i( ).
            DATA(t113) = t107.
            DATA(t114) = strlen( t113 ).
            t112 = t114.
            DATA(t115) = strlen( t110 ).
            IF t111 < 0.
              t111 = t111 + t115.
              IF t111 < 0.
                t111 = 0.
              ENDIF.
            ENDIF.
            IF t111 > t115 OR t112 <= 0.
              CLEAR t109.
            ELSE.
              IF t112 > t115 - t111.
                t112 = t115 - t111.
              ENDIF.
              t109 = t110+t111(t112).
            ENDIF.
            t106 = t109.
            t92 = t106.
          ENDIF.
          DATA(t116) = t92.
          t91 = t116.
          t87 = t91.
          t83 = t87.
          DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t117->has = abap_true.
          t117->value = t83.
          t81 = t117.
        ELSE.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t81 = t118.
        ENDIF.
        t80 = t81.
        DATA t119 TYPE REF TO zif_lnt_class_definition.
        CLEAR t119.
        DATA(t120) = VALUE abap_bool( ).
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA(t122) = t80.
        t121 = t122.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
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
          DATA t127 TYPE REF TO zif_lnt_class_definition.
          CLEAR t127.
          t119 = t127.
        ELSE.
          DATA t128 TYPE REF TO zif_lnt_class_definition.
          CLEAR t128.
          DATA t129 TYPE REF TO zif_lnt_class_definition.
          CLEAR t129.
          DATA t130 TYPE REF TO zif_lnt_class_definition.
          CLEAR t130.
          DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t131.
          DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t132.
          DATA(t133) = t77.
          t132 = t133->current.
          t131 = t132.
          DATA t134 TYPE REF TO zif_lnt_class_definition.
          CLEAR t134.
          DATA(t135) = VALUE abap_bool( ).
          DATA(t136) = t131.
          IF t136 IS INITIAL.
            t135 = abap_true.
          ENDIF.
          IF t135 = abap_true.
            DATA t137 TYPE REF TO zif_lnt_class_definition.
            CLEAR t137.
            t134 = t137.
          ELSE.
            DATA t138 TYPE REF TO zif_lnt_class_definition.
            CLEAR t138.
            DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t139.
            DATA(t140) = t131.
            t139 = t140.
            DATA(t141) = VALUE string( ).
            DATA(t142) = t80.
            t141 = t142->value.
            t138 = t139->find_class_definition( i_name = t141 ).
            t134 = t138.
          ENDIF.
          t130 = t134.
          t129 = t130.
          DATA t143 TYPE REF TO zif_lnt_class_definition.
          CLEAR t143.
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = t129.
          t144 = xsdbool( t145 IS BOUND ).
          IF t144 = abap_true.
            DATA t146 TYPE REF TO zif_lnt_class_definition.
            CLEAR t146.
            DATA(t147) = abap_true.
            IF t147 = abap_true.
              DATA t148 TYPE REF TO zif_lnt_class_definition.
              CLEAR t148.
              DATA(t149) = t129.
              t148 = t149.
              t146 = t148.
            ELSE.
              DATA t150 TYPE REF TO zif_lnt_class_definition.
              CLEAR t150.
              t146 = t150.
            ENDIF.
            t143 = t146.
          ELSE.
            DATA t151 TYPE REF TO zif_lnt_class_definition.
            CLEAR t151.
            DATA t152 TYPE REF TO zcl_lnt_class.
            CLEAR t152.
            DATA t153 TYPE REF TO zcl_lnt_class.
            CLEAR t153.
            DATA t154 TYPE REF TO zif_lnt_object.
            CLEAR t154.
            DATA t155 TYPE REF TO zif_lnt_registry.
            CLEAR t155.
            DATA(t156) = t77.
            t155 = t156->reg.
            DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t157.
            DATA(t158) = abap_true.
            IF t158 = abap_true.
              DATA(t159) = |CLAS|.
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
              DATA(t164) = VALUE string( ).
              DATA(t165) = t80.
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
            CLEAR t168.
            t168 = t154.
            t153 ?= t168.
            t152 = t153.
            DATA t169 TYPE REF TO zif_lnt_class_definition.
            CLEAR t169.
            DATA(t170) = VALUE abap_bool( ).
            DATA(t171) = t152.
            t170 = xsdbool( t171 IS BOUND ).
            IF t170 = abap_true.
              DATA t172 TYPE REF TO zif_lnt_class_definition.
              CLEAR t172.
              DATA t173 TYPE REF TO zcl_lnt_class.
              CLEAR t173.
              DATA(t174) = t152.
              t173 = t174.
              t172 = t173->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t169 = t172.
            ELSE.
              DATA t175 TYPE REF TO zif_lnt_class_definition.
              CLEAR t175.
              t169 = t175.
            ENDIF.
            t151 = t169.
            t143 = t151.
          ENDIF.
          t128 = t143.
          t119 = t128.
        ENDIF.
        t76 = t119.
        t75 = t76.
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = t75.
        t176 = xsdbool( t177 IS BOUND ).
        IF t176 = abap_true.
          DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t178.
          DATA t179 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t179.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t180.
          DATA(t181) = t10.
          t180 = t181.
          DATA(t182) = VALUE string( ).
          DATA(t183) = t2.
          t182 = t183->filename.
          DATA t184 TYPE REF TO zcl_lnt_object_reference_type.
          CLEAR t184.
          DATA(t185) = t3.
          t184 ?= t185.
          DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t186.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          t179 = NEW zcl_lnt_typed_identifier( i_token = t180 i_filename = t182 i_type_9913 = t184 i_meta = t186 i_value = t187 ).
          t178 = t179.
          DATA t188 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t188.
          DATA(t189) = t2.
          t188 = t189->scope.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          DATA(t191) = abap_true.
          IF t191 = abap_true.
            DATA t192 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t192.
            DATA(t193) = t10.
            t192 = t193.
            t190 = t192.
          ELSE.
            DATA t194 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t194.
            t190 = t194.
          ENDIF.
          DATA(t195) = t178.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          DATA(t197) = |Inferred Type|.
          CLEAR t196.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t196->sval = t197.
          DATA(t198) = VALUE string( ).
          DATA(t199) = t2.
          t198 = t199->filename.
          DATA t200 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t200.
          t188->add_reference( i_usage = t190 i_referencing = t195 i_type_9913 = t196 i_filename = t198 i_extra = t200 ).
          DATA t201 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t201.
          DATA(t202) = t2.
          t201 = t202->scope.
          DATA t203 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t203.
          DATA(t204) = abap_true.
          IF t204 = abap_true.
            DATA t205 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t205.
            DATA(t206) = t10.
            t205 = t206.
            t203 = t205.
          ELSE.
            DATA t207 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t207.
            t203 = t207.
          ENDIF.
          DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t208.
          DATA(t209) = abap_true.
          IF t209 = abap_true.
            DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t210.
            DATA t211 TYPE REF TO zif_lnt_class_definition.
            CLEAR t211.
            DATA(t212) = t75.
            t211 = t212.
            t210 ?= t211.
            t208 = t210.
          ELSE.
            DATA t213 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t213.
            t208 = t213.
          ENDIF.
          DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t214.
          DATA(t215) = |Constructor Reference|.
          CLEAR t214.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t214->sval = t215.
          DATA(t216) = VALUE string( ).
          DATA(t217) = t2.
          t216 = t217->filename.
          DATA t218 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t218.
          DATA(t219) = abap_true.
          IF t219 = abap_true.
            DATA t220 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t220.
            DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t221.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t222.
            DATA(t223) = abap_true.
            IF t223 = abap_true.
              DATA(t224) = VALUE string( ).
              DATA t225 TYPE REF TO zif_lnt_class_definition.
              CLEAR t225.
              DATA(t226) = t75.
              t225 = t226.
              t224 = t225->get_name( ).
              DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t227->has = abap_true.
              t227->value = t224.
              t222 = t227.
            ELSE.
              DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t228.
              t222 = t228.
            ENDIF.
            t221 = t222.
            DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t229.
            DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t230.
            t229 = t230.
            DATA t231 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t231.
            DATA t232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t232.
            t231 = t232.
            t220 = NEW zcl_lnt_ireference_extras( i_oo_name = t221 i_oo_type = t229 i_found_qualified = t231 ).
            CREATE OBJECT t220->zlnt_view_ownkeys_b0e8086400eb.
            t220->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t233.
            IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t233 ).
            ENDIF.
            CREATE OBJECT t220->zlnt_json_ownkeys_70e5fd461788.
            t220->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t234) = |ooName|.
            DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t235.
            IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
            ENDIF.
            t218 = t220.
          ELSE.
            DATA t236 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t236.
            t218 = t236.
          ENDIF.
          t201->add_reference( i_usage = t203 i_referencing = t208 i_type_9913 = t214 i_filename = t216 i_extra = t218 ).
        ELSE.
          DATA t237 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t237.
          DATA t238 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t238.
          DATA t239 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t239.
          DATA t240 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t240.
          DATA(t241) = t2.
          t240 = t241->scope.
          t239 = t240.
          DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t242.
          DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t243.
          DATA(t244) = abap_true.
          IF t244 = abap_true.
            DATA(t245) = VALUE string( ).
            DATA t246 TYPE REF TO zcl_lnt_object_reference_type.
            CLEAR t246.
            DATA t247 TYPE REF TO zcl_lnt_object_reference_type.
            CLEAR t247.
            DATA(t248) = t3.
            t247 ?= t248.
            t246 = t247.
            DATA(t249) = VALUE string( ).
            DATA t250 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t250.
            DATA t251 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t251.
            DATA(t252) = t246.
            t251 = t252->identifier.
            t250 = t251.
            DATA(t253) = VALUE string( ).
            DATA(t254) = VALUE string( ).
            DATA(t255) = VALUE string( ).
            DATA t256 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t256.
            DATA t257 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t257.
            DATA(t258) = t250.
            t257 = t258->token.
            t256 = t257.
            DATA(t259) = VALUE string( ).
            DATA(t260) = t256.
            t259 = t260->str.
            t255 = t259.
            t254 = t255.
            DATA(t261) = VALUE abap_bool( ).
            DATA(t262) = VALUE string( ).
            DATA(t263) = t254.
            DATA(t264) = 0.
            DATA(t265) = 1.
            DATA(t266) = strlen( t263 ).
            IF t264 < 0.
              t264 = t264 + t266.
              IF t264 < 0.
                t264 = 0.
              ENDIF.
            ENDIF.
            IF t264 > t266 OR t265 <= 0.
              CLEAR t262.
            ELSE.
              IF t265 > t266 - t264.
                t265 = t266 - t264.
              ENDIF.
              t262 = t263+t264(t265).
            ENDIF.
            DATA(t267) = |!|.
            t261 = xsdbool( t262 = t267 ).
            IF t261 = abap_true.
              DATA(t268) = VALUE string( ).
              DATA(t269) = VALUE string( ).
              DATA(t270) = t254.
              t269 = t270.
              DATA(t271) = VALUE string( ).
              DATA(t272) = t269.
              DATA(t273) = 1.
              DATA(t274) = VALUE i( ).
              DATA(t275) = t269.
              DATA(t276) = strlen( t275 ).
              t274 = t276.
              DATA(t277) = strlen( t272 ).
              IF t273 < 0.
                t273 = t273 + t277.
                IF t273 < 0.
                  t273 = 0.
                ENDIF.
              ENDIF.
              IF t273 > t277 OR t274 <= 0.
                CLEAR t271.
              ELSE.
                IF t274 > t277 - t273.
                  t274 = t277 - t273.
                ENDIF.
                t271 = t272+t273(t274).
              ENDIF.
              t268 = t271.
              t254 = t268.
            ENDIF.
            DATA(t278) = t254.
            t253 = t278.
            t249 = t253.
            t245 = t249.
            DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t279->has = abap_true.
            t279->value = t245.
            t243 = t279.
          ELSE.
            DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t280.
            t243 = t280.
          ENDIF.
          t242 = t243.
          DATA t281 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t281.
          DATA(t282) = VALUE abap_bool( ).
          DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t283.
          DATA(t284) = t242.
          t283 = t284.
          DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t285.
          DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t286.
          t285 = t286.
          DATA(t287) = VALUE abap_bool( ).
          DATA(t288) = t283.
          IF t288 IS INITIAL.
            t287 = abap_true.
          ELSEIF t288->has = abap_false.
            t287 = abap_true.
          ENDIF.
          t282 = t287.
          IF t282 = abap_true.
            DATA t289 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t289.
            t281 = t289.
          ELSE.
            DATA t290 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t290.
            DATA t291 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t291.
            DATA t292 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t292.
            DATA t293 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t293.
            DATA t294 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t294.
            DATA(t295) = t239.
            t294 = t295->current.
            t293 = t294.
            DATA t296 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t296.
            DATA(t297) = VALUE abap_bool( ).
            DATA(t298) = t293.
            IF t298 IS INITIAL.
              t297 = abap_true.
            ENDIF.
            IF t297 = abap_true.
              DATA t299 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t299.
              t296 = t299.
            ELSE.
              DATA t300 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t300.
              DATA t301 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t301.
              DATA(t302) = t293.
              t301 = t302.
              DATA(t303) = VALUE string( ).
              DATA(t304) = t242.
              t303 = t304->value.
              t300 = t301->find_interface_definition( i_name = t303 ).
              t296 = t300.
            ENDIF.
            t292 = t296.
            t291 = t292.
            DATA t305 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t305.
            DATA(t306) = VALUE abap_bool( ).
            DATA(t307) = t291.
            t306 = xsdbool( t307 IS BOUND ).
            IF t306 = abap_true.
              DATA t308 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t308.
              DATA(t309) = abap_true.
              IF t309 = abap_true.
                DATA t310 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t310.
                DATA(t311) = t291.
                t310 = t311.
                t308 = t310.
              ELSE.
                DATA t312 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t312.
                t308 = t312.
              ENDIF.
              t305 = t308.
            ELSE.
              DATA t313 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t313.
              DATA t314 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t314.
              DATA t315 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t315.
              DATA t316 TYPE REF TO zif_lnt_object.
              CLEAR t316.
              DATA t317 TYPE REF TO zif_lnt_registry.
              CLEAR t317.
              DATA(t318) = t239.
              t317 = t318->reg.
              DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t319.
              DATA(t320) = abap_true.
              IF t320 = abap_true.
                DATA(t321) = |INTF|.
                DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t322->has = abap_true.
                t322->value = t321.
                t319 = t322.
              ELSE.
                DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t323.
                t319 = t323.
              ENDIF.
              DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t324.
              DATA(t325) = abap_true.
              IF t325 = abap_true.
                DATA(t326) = VALUE string( ).
                DATA(t327) = t242.
                t326 = t327->value.
                DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t328->has = abap_true.
                t328->value = t326.
                t324 = t328.
              ELSE.
                DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t329.
                t324 = t329.
              ENDIF.
              t316 = t317->get_object( i_type_9913 = t319 i_name = t324 ).
              DATA t330 TYPE REF TO object.
              CLEAR t330.
              t330 = t316.
              t315 ?= t330.
              t314 = t315.
              DATA t331 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t331.
              DATA(t332) = VALUE abap_bool( ).
              DATA(t333) = t314.
              t332 = xsdbool( t333 IS BOUND ).
              IF t332 = abap_true.
                DATA t334 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t334.
                DATA t335 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t335.
                DATA t336 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t336.
                DATA(t337) = t314.
                t336 = t337.
                t335 = t336.
                DATA t338 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t338.
                DATA(t339) = t335.
                t338 = t339->def.
                t334 = t338.
                t331 = t334.
              ELSE.
                DATA t340 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t340.
                t331 = t340.
              ENDIF.
              t313 = t331.
              t305 = t313.
            ENDIF.
            t290 = t305.
            t281 = t290.
          ENDIF.
          t238 = t281.
          t237 = t238.
          DATA(t341) = VALUE abap_bool( ).
          DATA(t342) = t237.
          t341 = xsdbool( t342 IS BOUND ).
          IF t341 = abap_true.
            DATA(t343) = VALUE string( ).
            DATA(t344) = VALUE string( ).
            DATA(t345) = VALUE string( ).
            DATA t346 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t346.
            DATA(t347) = t237.
            t346 = t347.
            t345 = t346->get_name( ).
            DATA(t348) = | is an interface, cannot be instantiated|.
            DATA(t349) = strlen( t345 ).
            t344 = |{ t345 }{ t348 }|.
            t343 = t344.
            DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t350.
            DATA(t351) = t2.
            t350 = t351->issues.
            DATA t352 TYPE REF TO zcl_lnt_issue.
            CLEAR t352.
            DATA(t353) = t2.
            DATA t354 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t354.
            DATA(t355) = t1.
            t354 = t355->get_first_token( ).
            DATA(t356) = t343.
            DATA t357 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t357.
            t352 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t353 i_token = t354 i_message_26cb = t356 i_fix = t357 ).
            t350->load( ).
            APPEND t352 TO t350->items.
            t350->save( ).
            DATA t358 TYPE REF TO zcl_lnt_void_type.
            CLEAR t358.
            DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t359.
            DATA(t360) = abap_true.
            IF t360 = abap_true.
              DATA(t361) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t362->has = abap_true.
              t362->value = t361.
              t359 = t362.
            ELSE.
              DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t363.
              t359 = t363.
            ENDIF.
            DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t364.
            t358 = zcl_lnt_void_type=>get_db65( i_voided = t359 i_qualified_name = t364 ).
            result = t358.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t365 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t365.
        DATA(t366) = t3.
        t365 ?= t366.
        t4 = t365.
        DATA(t367) = VALUE abap_bool( ).
        DATA t368 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t368.
        DATA t369 TYPE REF TO zif_lnt_class_definition.
        CLEAR t369.
        DATA(t370) = t75.
        t369 = t370.
        DATA t371 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t371.
        DATA(t372) = VALUE abap_bool( ).
        DATA(t373) = t369.
        IF t373 IS INITIAL.
          t372 = abap_true.
        ENDIF.
        IF t372 = abap_true.
          DATA t374 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t374.
          t371 = t374.
        ELSE.
          DATA(t375) = VALUE abap_bool( ).
          DATA t376 TYPE REF TO zif_lnt_class_definition.
          CLEAR t376.
          DATA(t377) = t369.
          t376 = t377.
          t375 = t376->is_abstract( ).
          DATA(t378) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t378->has = abap_true.
          t378->value = t375.
          t371 = t378.
        ENDIF.
        t368 = t371.
        DATA t379 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t379.
        DATA(t380) = abap_true.
        IF t380 = abap_true.
          DATA(t381) = abap_true.
          DATA(t382) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t382->has = abap_true.
          t382->value = t381.
          t379 = t382.
        ELSE.
          DATA t383 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t383.
          t379 = t383.
        ENDIF.
        DATA(t384) = VALUE abap_bool( ).
        DATA(t385) = VALUE abap_bool( ).
        IF t368 IS BOUND.
          t384 = t368->has.
        ENDIF.
        IF t379 IS BOUND.
          t385 = t379->has.
        ENDIF.
        IF t384 = t385.
          IF t384 = abap_false.
            t367 = abap_true.
          ELSEIF t368->value = t379->value.
            t367 = abap_true.
          ENDIF.
        ENDIF.
        IF t367 = abap_true.
          DATA(t386) = VALUE string( ).
          DATA(t387) = VALUE string( ).
          DATA(t388) = VALUE string( ).
          DATA t389 TYPE REF TO zif_lnt_class_definition.
          CLEAR t389.
          DATA(t390) = t75.
          t389 = t390.
          t388 = t389->get_name( ).
          DATA(t391) = | is abstract, cannot be instantiated|.
          DATA(t392) = strlen( t388 ).
          t387 = |{ t388 }{ t391 }|.
          t386 = t387.
          DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t393.
          DATA(t394) = t2.
          t393 = t394->issues.
          DATA t395 TYPE REF TO zcl_lnt_issue.
          CLEAR t395.
          DATA(t396) = t2.
          DATA t397 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t397.
          DATA(t398) = t1.
          t397 = t398->get_first_token( ).
          DATA(t399) = t386.
          DATA t400 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t400.
          t395 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t396 i_token = t397 i_message_26cb = t399 i_fix = t400 ).
          t393->load( ).
          APPEND t395 TO t393->items.
          t393->save( ).
          DATA t401 TYPE REF TO zcl_lnt_void_type.
          CLEAR t401.
          DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t402.
          DATA(t403) = abap_true.
          IF t403 = abap_true.
            DATA(t404) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t405) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t405->has = abap_true.
            t405->value = t404.
            t402 = t405.
          ELSE.
            DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t406.
            t402 = t406.
          ENDIF.
          DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t407.
          t401 = zcl_lnt_void_type=>get_db65( i_voided = t402 i_qualified_name = t407 ).
          result = t401.
          RETURN.
        ENDIF.
        DATA(t408) = VALUE abap_bool( ).
        DATA(t409) = t75.
        t408 = xsdbool( t409 IS BOUND ).
        IF t408 = abap_true.
          DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t410.
          DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t411.
          DATA t412 TYPE REF TO zif_lnt_class_definition.
          CLEAR t412.
          DATA(t413) = t75.
          t412 = t413.
          DATA(t414) = t2.
          t411 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t412 i_input_967e = t414 ).
          t410 = t411.
          DATA(t415) = VALUE abap_bool( ).
          DATA(t416) = t410.
          IF t416 IS BOUND.
            IF t416->has = abap_true.
              t415 = xsdbool( strlen( t416->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t415 = abap_true.
            DATA t417 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t417.
            DATA(t418) = t2.
            t417 = t418->issues.
            DATA t419 TYPE REF TO zcl_lnt_issue.
            CLEAR t419.
            DATA(t420) = t2.
            DATA t421 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t421.
            DATA(t422) = t1.
            t421 = t422->get_first_token( ).
            DATA(t423) = VALUE string( ).
            DATA(t424) = t410.
            t423 = t424->value.
            DATA t425 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t425.
            t419 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t420 i_token = t421 i_message_26cb = t423 i_fix = t425 ).
            t417->load( ).
            APPEND t419 TO t417->items.
            t417->save( ).
            DATA t426 TYPE REF TO zcl_lnt_void_type.
            CLEAR t426.
            DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t427.
            DATA(t428) = abap_true.
            IF t428 = abap_true.
              DATA(t429) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t430->has = abap_true.
              t430->value = t429.
              t427 = t430.
            ELSE.
              DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t431.
              t427 = t431.
            ENDIF.
            DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t432.
            t426 = zcl_lnt_void_type=>get_db65( i_voided = t427 i_qualified_name = t432 ).
            result = t426.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t433) = VALUE abap_bool( ).
        DATA(t434) = VALUE abap_bool( ).
        DATA(t435) = VALUE string( ).
        DATA(t436) = t37.
        t435 = t436->value.
        DATA(t437) = |#|.
        t434 = xsdbool( t435 = t437 ).
        t433 = t434.
        IF t434 = abap_true.
          DATA(t438) = VALUE abap_bool( ).
          DATA(t439) = t3.
          t438 = xsdbool( t439 IS BOUND ).
          t433 = t438.
        ENDIF.
        IF t433 = abap_true.
          DATA t440 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t440.
          DATA(t441) = abap_true.
          IF t441 = abap_true.
            DATA t442 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t442.
            DATA(t443) = t3.
            t442 = t443.
            t440 = t442.
          ELSE.
            DATA t444 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t444.
            t440 = t444.
          ENDIF.
          t4 = t440.
        ELSE.
          DATA(t445) = VALUE abap_bool( ).
          DATA(t446) = VALUE string( ).
          DATA(t447) = t37.
          t446 = t447->value.
          DATA(t448) = |#|.
          t445 = xsdbool( t446 = t448 ).
          IF t445 = abap_true.
            DATA t449 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
            CLEAR t449.
            DATA t450 TYPE REF TO zcx_lnt_assert_error.
            CLEAR t450.
            DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t451.
            DATA(t452) = abap_true.
            IF t452 = abap_true.
              DATA(t453) = |NewObject, todo, infer type|.
              DATA(t454) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t454->has = abap_true.
              t454->value = t453.
              t451 = t454.
            ELSE.
              DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t455.
              t451 = t455.
            ENDIF.
            t450 = NEW zcx_lnt_assert_error( i_message_26cb = t451 ).
            t449 = NEW #( ).
            t449->payload = t450.
            CLEAR t449->source_value.
            IF t450 IS BOUND.
              DATA t456 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t456.
              DATA t457 TYPE REF TO object.
              CLEAR t457.
              CLEAR t456.
              t457 = t450.
              TRY.
                  t449->source_value ?= t457.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t449->source_value IS NOT BOUND.
                TRY.
                    t456 ?= t450.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t456 IS BOUND.
                  t449->source_value = t456->source( ).
                ENDIF.
                IF t449->source_value IS NOT BOUND.
                  CREATE OBJECT t449->source_value.
                  t449->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t449->source_value->oval = t450.
                ENDIF.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t449.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t458) = VALUE abap_bool( ).
    DATA t459 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t459.
    DATA(t460) = t4.
    t459 = t460.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    t461 = t462.
    DATA(t463) = VALUE abap_bool( ).
    DATA(t464) = t459.
    IF t464 IS INITIAL.
      t463 = abap_true.
    ENDIF.
    t458 = t463.
    IF t458 = abap_true.
      DATA t465 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t465.
      DATA t466 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t466.
      DATA t467 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t467.
      DATA t468 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t468.
      DATA(t469) = t2.
      t468 = t469->scope.
      t467 = t468.
      DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t470.
      DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t471.
      DATA(t472) = abap_true.
      IF t472 = abap_true.
        DATA(t473) = VALUE string( ).
        DATA(t474) = t37.
        t473 = t474->value.
        DATA(t475) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t475->has = abap_true.
        t475->value = t473.
        t471 = t475.
      ELSE.
        DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t476.
        t471 = t476.
      ENDIF.
      t470 = t471.
      DATA t477 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t477.
      DATA(t478) = VALUE abap_bool( ).
      DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t479.
      DATA(t480) = t470.
      t479 = t480.
      DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t481.
      DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t482.
      t481 = t482.
      DATA(t483) = VALUE abap_bool( ).
      DATA(t484) = t479.
      IF t484 IS INITIAL.
        t483 = abap_true.
      ELSEIF t484->has = abap_false.
        t483 = abap_true.
      ENDIF.
      t478 = t483.
      IF t478 = abap_true.
        DATA t485 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t485.
        t477 = t485.
      ELSE.
        DATA t486 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t486.
        DATA t487 TYPE REF TO zif_lnt_class_definition.
        CLEAR t487.
        DATA t488 TYPE REF TO zif_lnt_class_definition.
        CLEAR t488.
        DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t489.
        DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t490.
        DATA(t491) = abap_true.
        IF t491 = abap_true.
          DATA(t492) = VALUE string( ).
          DATA(t493) = t470.
          t492 = t493->value.
          DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t494->has = abap_true.
          t494->value = t492.
          t490 = t494.
        ELSE.
          DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t495.
          t490 = t495.
        ENDIF.
        t489 = t490.
        DATA t496 TYPE REF TO zif_lnt_class_definition.
        CLEAR t496.
        DATA(t497) = VALUE abap_bool( ).
        DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t498.
        DATA(t499) = t489.
        t498 = t499.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t500.
        DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t501.
        t500 = t501.
        DATA(t502) = VALUE abap_bool( ).
        DATA(t503) = t498.
        IF t503 IS INITIAL.
          t502 = abap_true.
        ELSEIF t503->has = abap_false.
          t502 = abap_true.
        ENDIF.
        t497 = t502.
        IF t497 = abap_true.
          DATA t504 TYPE REF TO zif_lnt_class_definition.
          CLEAR t504.
          t496 = t504.
        ELSE.
          DATA t505 TYPE REF TO zif_lnt_class_definition.
          CLEAR t505.
          DATA t506 TYPE REF TO zif_lnt_class_definition.
          CLEAR t506.
          DATA t507 TYPE REF TO zif_lnt_class_definition.
          CLEAR t507.
          DATA t508 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t508.
          DATA t509 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t509.
          DATA(t510) = t467.
          t509 = t510->current.
          t508 = t509.
          DATA t511 TYPE REF TO zif_lnt_class_definition.
          CLEAR t511.
          DATA(t512) = VALUE abap_bool( ).
          DATA(t513) = t508.
          IF t513 IS INITIAL.
            t512 = abap_true.
          ENDIF.
          IF t512 = abap_true.
            DATA t514 TYPE REF TO zif_lnt_class_definition.
            CLEAR t514.
            t511 = t514.
          ELSE.
            DATA t515 TYPE REF TO zif_lnt_class_definition.
            CLEAR t515.
            DATA t516 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t516.
            DATA(t517) = t508.
            t516 = t517.
            DATA(t518) = VALUE string( ).
            DATA(t519) = t489.
            t518 = t519->value.
            t515 = t516->find_class_definition( i_name = t518 ).
            t511 = t515.
          ENDIF.
          t507 = t511.
          t506 = t507.
          DATA t520 TYPE REF TO zif_lnt_class_definition.
          CLEAR t520.
          DATA(t521) = VALUE abap_bool( ).
          DATA(t522) = t506.
          t521 = xsdbool( t522 IS BOUND ).
          IF t521 = abap_true.
            DATA t523 TYPE REF TO zif_lnt_class_definition.
            CLEAR t523.
            DATA(t524) = abap_true.
            IF t524 = abap_true.
              DATA t525 TYPE REF TO zif_lnt_class_definition.
              CLEAR t525.
              DATA(t526) = t506.
              t525 = t526.
              t523 = t525.
            ELSE.
              DATA t527 TYPE REF TO zif_lnt_class_definition.
              CLEAR t527.
              t523 = t527.
            ENDIF.
            t520 = t523.
          ELSE.
            DATA t528 TYPE REF TO zif_lnt_class_definition.
            CLEAR t528.
            DATA t529 TYPE REF TO zcl_lnt_class.
            CLEAR t529.
            DATA t530 TYPE REF TO zcl_lnt_class.
            CLEAR t530.
            DATA t531 TYPE REF TO zif_lnt_object.
            CLEAR t531.
            DATA t532 TYPE REF TO zif_lnt_registry.
            CLEAR t532.
            DATA(t533) = t467.
            t532 = t533->reg.
            DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t534.
            DATA(t535) = abap_true.
            IF t535 = abap_true.
              DATA(t536) = |CLAS|.
              DATA(t537) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t537->has = abap_true.
              t537->value = t536.
              t534 = t537.
            ELSE.
              DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t538.
              t534 = t538.
            ENDIF.
            DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t539.
            DATA(t540) = abap_true.
            IF t540 = abap_true.
              DATA(t541) = VALUE string( ).
              DATA(t542) = t489.
              t541 = t542->value.
              DATA(t543) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t543->has = abap_true.
              t543->value = t541.
              t539 = t543.
            ELSE.
              DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t544.
              t539 = t544.
            ENDIF.
            t531 = t532->get_object( i_type_9913 = t534 i_name = t539 ).
            DATA t545 TYPE REF TO object.
            CLEAR t545.
            t545 = t531.
            t530 ?= t545.
            t529 = t530.
            DATA t546 TYPE REF TO zif_lnt_class_definition.
            CLEAR t546.
            DATA(t547) = VALUE abap_bool( ).
            DATA(t548) = t529.
            t547 = xsdbool( t548 IS BOUND ).
            IF t547 = abap_true.
              DATA t549 TYPE REF TO zif_lnt_class_definition.
              CLEAR t549.
              DATA t550 TYPE REF TO zcl_lnt_class.
              CLEAR t550.
              DATA(t551) = t529.
              t550 = t551.
              t549 = t550->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t546 = t549.
            ELSE.
              DATA t552 TYPE REF TO zif_lnt_class_definition.
              CLEAR t552.
              t546 = t552.
            ENDIF.
            t528 = t546.
            t520 = t528.
          ENDIF.
          t505 = t520.
          t496 = t505.
        ENDIF.
        t488 = t496.
        t487 = t488.
        DATA t553 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t553.
        DATA(t554) = VALUE abap_bool( ).
        DATA(t555) = t487.
        t554 = xsdbool( t555 IS BOUND ).
        IF t554 = abap_true.
          DATA t556 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t556.
          DATA t557 TYPE REF TO zif_lnt_class_definition.
          CLEAR t557.
          DATA(t558) = t487.
          t557 = t558.
          t556 ?= t557.
          t553 = t556.
        ELSE.
          DATA t559 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t559.
          DATA t560 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t560.
          DATA t561 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t561.
          DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t562.
          DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t563.
          DATA(t564) = abap_true.
          IF t564 = abap_true.
            DATA(t565) = VALUE string( ).
            DATA(t566) = t470.
            t565 = t566->value.
            DATA(t567) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t567->has = abap_true.
            t567->value = t565.
            t563 = t567.
          ELSE.
            DATA t568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t568.
            t563 = t568.
          ENDIF.
          t562 = t563.
          DATA t569 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t569.
          DATA(t570) = VALUE abap_bool( ).
          DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t571.
          DATA(t572) = t562.
          t571 = t572.
          DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t573.
          DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t574.
          t573 = t574.
          DATA(t575) = VALUE abap_bool( ).
          DATA(t576) = t571.
          IF t576 IS INITIAL.
            t575 = abap_true.
          ELSEIF t576->has = abap_false.
            t575 = abap_true.
          ENDIF.
          t570 = t575.
          IF t570 = abap_true.
            DATA t577 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t577.
            t569 = t577.
          ELSE.
            DATA t578 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t578.
            DATA t579 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t579.
            DATA t580 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t580.
            DATA t581 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t581.
            DATA t582 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t582.
            DATA(t583) = t467.
            t582 = t583->current.
            t581 = t582.
            DATA t584 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t584.
            DATA(t585) = VALUE abap_bool( ).
            DATA(t586) = t581.
            IF t586 IS INITIAL.
              t585 = abap_true.
            ENDIF.
            IF t585 = abap_true.
              DATA t587 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t587.
              t584 = t587.
            ELSE.
              DATA t588 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t588.
              DATA t589 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t589.
              DATA(t590) = t581.
              t589 = t590.
              DATA(t591) = VALUE string( ).
              DATA(t592) = t562.
              t591 = t592->value.
              t588 = t589->find_interface_definition( i_name = t591 ).
              t584 = t588.
            ENDIF.
            t580 = t584.
            t579 = t580.
            DATA t593 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t593.
            DATA(t594) = VALUE abap_bool( ).
            DATA(t595) = t579.
            t594 = xsdbool( t595 IS BOUND ).
            IF t594 = abap_true.
              DATA t596 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t596.
              DATA(t597) = abap_true.
              IF t597 = abap_true.
                DATA t598 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t598.
                DATA(t599) = t579.
                t598 = t599.
                t596 = t598.
              ELSE.
                DATA t600 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t600.
                t596 = t600.
              ENDIF.
              t593 = t596.
            ELSE.
              DATA t601 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t601.
              DATA t602 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t602.
              DATA t603 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t603.
              DATA t604 TYPE REF TO zif_lnt_object.
              CLEAR t604.
              DATA t605 TYPE REF TO zif_lnt_registry.
              CLEAR t605.
              DATA(t606) = t467.
              t605 = t606->reg.
              DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t607.
              DATA(t608) = abap_true.
              IF t608 = abap_true.
                DATA(t609) = |INTF|.
                DATA(t610) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t610->has = abap_true.
                t610->value = t609.
                t607 = t610.
              ELSE.
                DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t611.
                t607 = t611.
              ENDIF.
              DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t612.
              DATA(t613) = abap_true.
              IF t613 = abap_true.
                DATA(t614) = VALUE string( ).
                DATA(t615) = t562.
                t614 = t615->value.
                DATA(t616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t616->has = abap_true.
                t616->value = t614.
                t612 = t616.
              ELSE.
                DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t617.
                t612 = t617.
              ENDIF.
              t604 = t605->get_object( i_type_9913 = t607 i_name = t612 ).
              DATA t618 TYPE REF TO object.
              CLEAR t618.
              t618 = t604.
              t603 ?= t618.
              t602 = t603.
              DATA t619 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t619.
              DATA(t620) = VALUE abap_bool( ).
              DATA(t621) = t602.
              t620 = xsdbool( t621 IS BOUND ).
              IF t620 = abap_true.
                DATA t622 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t622.
                DATA t623 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t623.
                DATA t624 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t624.
                DATA(t625) = t602.
                t624 = t625.
                t623 = t624.
                DATA t626 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t626.
                DATA(t627) = t623.
                t626 = t627->def.
                t622 = t626.
                t619 = t622.
              ELSE.
                DATA t628 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t628.
                t619 = t628.
              ENDIF.
              t601 = t619.
              t593 = t601.
            ENDIF.
            t578 = t593.
            t569 = t578.
          ENDIF.
          t561 = t569.
          t560 = t561.
          DATA t629 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t629.
          DATA(t630) = VALUE abap_bool( ).
          DATA(t631) = t560.
          t630 = xsdbool( t631 IS BOUND ).
          IF t630 = abap_true.
            DATA t632 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t632.
            DATA(t633) = abap_true.
            IF t633 = abap_true.
              DATA t634 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t634.
              DATA(t635) = t560.
              t634 = t635.
              t632 = t634.
            ELSE.
              DATA t636 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t636.
              t632 = t636.
            ENDIF.
            t629 = t632.
          ELSE.
            DATA t637 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t637.
            t629 = t637.
          ENDIF.
          t559 = t629.
          t553 = t559.
        ENDIF.
        t486 = t553.
        t477 = t486.
      ENDIF.
      t466 = t477.
      t465 = t466.
      DATA(t638) = VALUE abap_bool( ).
      DATA(t639) = t465.
      t638 = xsdbool( t639 IS BOUND ).
      IF t638 = abap_true.
        DATA t640 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t640.
        DATA t641 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t641.
        DATA t642 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t642.
        DATA t643 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t643.
        DATA(t644) = t465.
        t643 = t644.
        t642 ?= t643.
        DATA t645 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t645.
        t641 = NEW zcl_lnt_object_reference_type( i_id = t642 i_extra = t645 ).
        t640 = t641.
        DATA t646 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t646.
        DATA t647 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t647.
        DATA t648 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t648.
        DATA(t649) = t10.
        t648 = t649.
        DATA(t650) = VALUE string( ).
        DATA(t651) = t2.
        t650 = t651->filename.
        DATA(t652) = t640.
        DATA t653 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t653.
        DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t654.
        t647 = NEW zcl_lnt_typed_identifier( i_token = t648 i_filename = t650 i_type_9913 = t652 i_meta = t653 i_value = t654 ).
        t646 = t647.
        DATA t655 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t655.
        DATA(t656) = t2.
        t655 = t656->scope.
        DATA t657 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t657.
        DATA(t658) = abap_true.
        IF t658 = abap_true.
          DATA t659 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t659.
          DATA(t660) = t10.
          t659 = t660.
          t657 = t659.
        ELSE.
          DATA t661 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t661.
          t657 = t661.
        ENDIF.
        DATA(t662) = t646.
        DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t663.
        DATA(t664) = |Inferred Type|.
        CLEAR t663.
        CREATE OBJECT t663.
        t663->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t663->sval = t664.
        DATA(t665) = VALUE string( ).
        DATA(t666) = t2.
        t665 = t666->filename.
        DATA t667 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t667.
        t655->add_reference( i_usage = t657 i_referencing = t662 i_type_9913 = t663 i_filename = t665 i_extra = t667 ).
        DATA t668 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t668.
        DATA(t669) = t2.
        t668 = t669->scope.
        DATA t670 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t670.
        DATA(t671) = abap_true.
        IF t671 = abap_true.
          DATA t672 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t672.
          DATA(t673) = t10.
          t672 = t673.
          t670 = t672.
        ELSE.
          DATA t674 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t674.
          t670 = t674.
        ENDIF.
        DATA t675 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t675.
        DATA(t676) = abap_true.
        IF t676 = abap_true.
          DATA t677 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t677.
          DATA t678 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t678.
          DATA(t679) = t465.
          t678 = t679.
          t677 ?= t678.
          t675 = t677.
        ELSE.
          DATA t680 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t680.
          t675 = t680.
        ENDIF.
        DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t681.
        DATA(t682) = |Object|.
        CLEAR t681.
        CREATE OBJECT t681.
        t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t681->sval = t682.
        DATA(t683) = VALUE string( ).
        DATA(t684) = t2.
        t683 = t684->filename.
        DATA t685 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t685.
        t668->add_reference( i_usage = t670 i_referencing = t675 i_type_9913 = t681 i_filename = t683 i_extra = t685 ).
        DATA t686 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t686.
        DATA(t687) = t2.
        t686 = t687->scope.
        DATA t688 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t688.
        DATA(t689) = abap_true.
        IF t689 = abap_true.
          DATA t690 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t690.
          DATA(t691) = t10.
          t690 = t691.
          t688 = t690.
        ELSE.
          DATA t692 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t692.
          t688 = t692.
        ENDIF.
        DATA t693 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t693.
        DATA(t694) = abap_true.
        IF t694 = abap_true.
          DATA t695 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t695.
          DATA t696 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t696.
          DATA(t697) = t465.
          t696 = t697.
          t695 ?= t696.
          t693 = t695.
        ELSE.
          DATA t698 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t698.
          t693 = t698.
        ENDIF.
        DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t699.
        DATA(t700) = |Constructor Reference|.
        CLEAR t699.
        CREATE OBJECT t699.
        t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t699->sval = t700.
        DATA(t701) = VALUE string( ).
        DATA(t702) = t2.
        t701 = t702->filename.
        DATA t703 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t703.
        DATA(t704) = abap_true.
        IF t704 = abap_true.
          DATA t705 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t705.
          DATA t706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t706.
          DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t707.
          DATA(t708) = abap_true.
          IF t708 = abap_true.
            DATA(t709) = VALUE string( ).
            DATA t710 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t710.
            DATA(t711) = t465.
            t710 = t711.
            t709 = t710->get_name( ).
            DATA(t712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t712->has = abap_true.
            t712->value = t709.
            t707 = t712.
          ELSE.
            DATA t713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t713.
            t707 = t713.
          ENDIF.
          t706 = t707.
          DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t714.
          DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t715.
          t714 = t715.
          DATA t716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t716.
          DATA t717 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t717.
          t716 = t717.
          t705 = NEW zcl_lnt_ireference_extras( i_oo_name = t706 i_oo_type = t714 i_found_qualified = t716 ).
          CREATE OBJECT t705->zlnt_view_ownkeys_b0e8086400eb.
          t705->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t718.
          IF t705->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t705->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t718 ).
          ENDIF.
          CREATE OBJECT t705->zlnt_json_ownkeys_70e5fd461788.
          t705->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t719) = |ooName|.
          DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t720.
          IF t705->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t705->zlnt_json_ownkeys_70e5fd461788->put( p0 = t719 p1 = t720 ).
          ENDIF.
          t703 = t705.
        ELSE.
          DATA t721 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t721.
          t703 = t721.
        ENDIF.
        t686->add_reference( i_usage = t688 i_referencing = t693 i_type_9913 = t699 i_filename = t701 i_extra = t703 ).
        DATA t722 TYPE REF TO zif_lnt_class_definition.
        CLEAR t722.
        DATA t723 TYPE REF TO zif_lnt_class_definition.
        CLEAR t723.
        DATA t724 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t724.
        DATA t725 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t725.
        DATA(t726) = t2.
        t725 = t726->scope.
        t724 = t725.
        DATA t727 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t727.
        DATA t728 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t728.
        DATA(t729) = abap_true.
        IF t729 = abap_true.
          DATA(t730) = VALUE string( ).
          DATA t731 TYPE REF TO zcl_lnt_object_reference_type.
          CLEAR t731.
          DATA(t732) = t640.
          t731 = t732.
          DATA(t733) = VALUE string( ).
          DATA t734 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t734.
          DATA t735 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t735.
          DATA(t736) = t731.
          t735 = t736->identifier.
          t734 = t735.
          DATA(t737) = VALUE string( ).
          DATA(t738) = VALUE string( ).
          DATA(t739) = VALUE string( ).
          DATA t740 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t740.
          DATA t741 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t741.
          DATA(t742) = t734.
          t741 = t742->token.
          t740 = t741.
          DATA(t743) = VALUE string( ).
          DATA(t744) = t740.
          t743 = t744->str.
          t739 = t743.
          t738 = t739.
          DATA(t745) = VALUE abap_bool( ).
          DATA(t746) = VALUE string( ).
          DATA(t747) = t738.
          DATA(t748) = 0.
          DATA(t749) = 1.
          DATA(t750) = strlen( t747 ).
          IF t748 < 0.
            t748 = t748 + t750.
            IF t748 < 0.
              t748 = 0.
            ENDIF.
          ENDIF.
          IF t748 > t750 OR t749 <= 0.
            CLEAR t746.
          ELSE.
            IF t749 > t750 - t748.
              t749 = t750 - t748.
            ENDIF.
            t746 = t747+t748(t749).
          ENDIF.
          DATA(t751) = |!|.
          t745 = xsdbool( t746 = t751 ).
          IF t745 = abap_true.
            DATA(t752) = VALUE string( ).
            DATA(t753) = VALUE string( ).
            DATA(t754) = t738.
            t753 = t754.
            DATA(t755) = VALUE string( ).
            DATA(t756) = t753.
            DATA(t757) = 1.
            DATA(t758) = VALUE i( ).
            DATA(t759) = t753.
            DATA(t760) = strlen( t759 ).
            t758 = t760.
            DATA(t761) = strlen( t756 ).
            IF t757 < 0.
              t757 = t757 + t761.
              IF t757 < 0.
                t757 = 0.
              ENDIF.
            ENDIF.
            IF t757 > t761 OR t758 <= 0.
              CLEAR t755.
            ELSE.
              IF t758 > t761 - t757.
                t758 = t761 - t757.
              ENDIF.
              t755 = t756+t757(t758).
            ENDIF.
            t752 = t755.
            t738 = t752.
          ENDIF.
          DATA(t762) = t738.
          t737 = t762.
          t733 = t737.
          t730 = t733.
          DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t763->has = abap_true.
          t763->value = t730.
          t728 = t763.
        ELSE.
          DATA t764 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t764.
          t728 = t764.
        ENDIF.
        t727 = t728.
        DATA t765 TYPE REF TO zif_lnt_class_definition.
        CLEAR t765.
        DATA(t766) = VALUE abap_bool( ).
        DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t767.
        DATA(t768) = t727.
        t767 = t768.
        DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t769.
        DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t770.
        t769 = t770.
        DATA(t771) = VALUE abap_bool( ).
        DATA(t772) = t767.
        IF t772 IS INITIAL.
          t771 = abap_true.
        ELSEIF t772->has = abap_false.
          t771 = abap_true.
        ENDIF.
        t766 = t771.
        IF t766 = abap_true.
          DATA t773 TYPE REF TO zif_lnt_class_definition.
          CLEAR t773.
          t765 = t773.
        ELSE.
          DATA t774 TYPE REF TO zif_lnt_class_definition.
          CLEAR t774.
          DATA t775 TYPE REF TO zif_lnt_class_definition.
          CLEAR t775.
          DATA t776 TYPE REF TO zif_lnt_class_definition.
          CLEAR t776.
          DATA t777 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t777.
          DATA t778 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t778.
          DATA(t779) = t724.
          t778 = t779->current.
          t777 = t778.
          DATA t780 TYPE REF TO zif_lnt_class_definition.
          CLEAR t780.
          DATA(t781) = VALUE abap_bool( ).
          DATA(t782) = t777.
          IF t782 IS INITIAL.
            t781 = abap_true.
          ENDIF.
          IF t781 = abap_true.
            DATA t783 TYPE REF TO zif_lnt_class_definition.
            CLEAR t783.
            t780 = t783.
          ELSE.
            DATA t784 TYPE REF TO zif_lnt_class_definition.
            CLEAR t784.
            DATA t785 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t785.
            DATA(t786) = t777.
            t785 = t786.
            DATA(t787) = VALUE string( ).
            DATA(t788) = t727.
            t787 = t788->value.
            t784 = t785->find_class_definition( i_name = t787 ).
            t780 = t784.
          ENDIF.
          t776 = t780.
          t775 = t776.
          DATA t789 TYPE REF TO zif_lnt_class_definition.
          CLEAR t789.
          DATA(t790) = VALUE abap_bool( ).
          DATA(t791) = t775.
          t790 = xsdbool( t791 IS BOUND ).
          IF t790 = abap_true.
            DATA t792 TYPE REF TO zif_lnt_class_definition.
            CLEAR t792.
            DATA(t793) = abap_true.
            IF t793 = abap_true.
              DATA t794 TYPE REF TO zif_lnt_class_definition.
              CLEAR t794.
              DATA(t795) = t775.
              t794 = t795.
              t792 = t794.
            ELSE.
              DATA t796 TYPE REF TO zif_lnt_class_definition.
              CLEAR t796.
              t792 = t796.
            ENDIF.
            t789 = t792.
          ELSE.
            DATA t797 TYPE REF TO zif_lnt_class_definition.
            CLEAR t797.
            DATA t798 TYPE REF TO zcl_lnt_class.
            CLEAR t798.
            DATA t799 TYPE REF TO zcl_lnt_class.
            CLEAR t799.
            DATA t800 TYPE REF TO zif_lnt_object.
            CLEAR t800.
            DATA t801 TYPE REF TO zif_lnt_registry.
            CLEAR t801.
            DATA(t802) = t724.
            t801 = t802->reg.
            DATA t803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t803.
            DATA(t804) = abap_true.
            IF t804 = abap_true.
              DATA(t805) = |CLAS|.
              DATA(t806) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t806->has = abap_true.
              t806->value = t805.
              t803 = t806.
            ELSE.
              DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t807.
              t803 = t807.
            ENDIF.
            DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t808.
            DATA(t809) = abap_true.
            IF t809 = abap_true.
              DATA(t810) = VALUE string( ).
              DATA(t811) = t727.
              t810 = t811->value.
              DATA(t812) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t812->has = abap_true.
              t812->value = t810.
              t808 = t812.
            ELSE.
              DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t813.
              t808 = t813.
            ENDIF.
            t800 = t801->get_object( i_type_9913 = t803 i_name = t808 ).
            DATA t814 TYPE REF TO object.
            CLEAR t814.
            t814 = t800.
            t799 ?= t814.
            t798 = t799.
            DATA t815 TYPE REF TO zif_lnt_class_definition.
            CLEAR t815.
            DATA(t816) = VALUE abap_bool( ).
            DATA(t817) = t798.
            t816 = xsdbool( t817 IS BOUND ).
            IF t816 = abap_true.
              DATA t818 TYPE REF TO zif_lnt_class_definition.
              CLEAR t818.
              DATA t819 TYPE REF TO zcl_lnt_class.
              CLEAR t819.
              DATA(t820) = t798.
              t819 = t820.
              t818 = t819->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t815 = t818.
            ELSE.
              DATA t821 TYPE REF TO zif_lnt_class_definition.
              CLEAR t821.
              t815 = t821.
            ENDIF.
            t797 = t815.
            t789 = t797.
          ENDIF.
          t774 = t789.
          t765 = t774.
        ENDIF.
        t723 = t765.
        t722 = t723.
        DATA(t822) = VALUE abap_bool( ).
        DATA t823 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t823.
        DATA t824 TYPE REF TO zif_lnt_class_definition.
        CLEAR t824.
        DATA(t825) = t722.
        t824 = t825.
        DATA t826 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t826.
        DATA(t827) = VALUE abap_bool( ).
        DATA(t828) = t824.
        IF t828 IS INITIAL.
          t827 = abap_true.
        ENDIF.
        IF t827 = abap_true.
          DATA t829 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t829.
          t826 = t829.
        ELSE.
          DATA(t830) = VALUE abap_bool( ).
          DATA t831 TYPE REF TO zif_lnt_class_definition.
          CLEAR t831.
          DATA(t832) = t824.
          t831 = t832.
          t830 = t831->is_abstract( ).
          DATA(t833) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t833->has = abap_true.
          t833->value = t830.
          t826 = t833.
        ENDIF.
        t823 = t826.
        DATA t834 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t834.
        DATA(t835) = abap_true.
        IF t835 = abap_true.
          DATA(t836) = abap_true.
          DATA(t837) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t837->has = abap_true.
          t837->value = t836.
          t834 = t837.
        ELSE.
          DATA t838 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t838.
          t834 = t838.
        ENDIF.
        DATA(t839) = VALUE abap_bool( ).
        DATA(t840) = VALUE abap_bool( ).
        IF t823 IS BOUND.
          t839 = t823->has.
        ENDIF.
        IF t834 IS BOUND.
          t840 = t834->has.
        ENDIF.
        IF t839 = t840.
          IF t839 = abap_false.
            t822 = abap_true.
          ELSEIF t823->value = t834->value.
            t822 = abap_true.
          ENDIF.
        ENDIF.
        IF t822 = abap_true.
          DATA(t841) = VALUE string( ).
          DATA(t842) = VALUE string( ).
          DATA(t843) = VALUE string( ).
          DATA t844 TYPE REF TO zif_lnt_class_definition.
          CLEAR t844.
          DATA(t845) = t722.
          t844 = t845.
          t843 = t844->get_name( ).
          DATA(t846) = | is abstract, cannot be instantiated|.
          DATA(t847) = strlen( t843 ).
          t842 = |{ t843 }{ t846 }|.
          t841 = t842.
          DATA t848 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t848.
          DATA(t849) = t2.
          t848 = t849->issues.
          DATA t850 TYPE REF TO zcl_lnt_issue.
          CLEAR t850.
          DATA(t851) = t2.
          DATA t852 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t852.
          DATA(t853) = t1.
          t852 = t853->get_first_token( ).
          DATA(t854) = t841.
          DATA t855 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t855.
          t850 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t851 i_token = t852 i_message_26cb = t854 i_fix = t855 ).
          t848->load( ).
          APPEND t850 TO t848->items.
          t848->save( ).
          DATA t856 TYPE REF TO zcl_lnt_void_type.
          CLEAR t856.
          DATA t857 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t857.
          DATA(t858) = abap_true.
          IF t858 = abap_true.
            DATA(t859) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t860) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t860->has = abap_true.
            t860->value = t859.
            t857 = t860.
          ELSE.
            DATA t861 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t861.
            t857 = t861.
          ENDIF.
          DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t862.
          t856 = zcl_lnt_void_type=>get_db65( i_voided = t857 i_qualified_name = t862 ).
          result = t856.
          RETURN.
        ENDIF.
        DATA(t863) = VALUE abap_bool( ).
        DATA(t864) = t722.
        t863 = xsdbool( t864 IS BOUND ).
        IF t863 = abap_true.
          DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t865.
          DATA t866 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t866.
          DATA t867 TYPE REF TO zif_lnt_class_definition.
          CLEAR t867.
          DATA(t868) = t722.
          t867 = t868.
          DATA(t869) = t2.
          t866 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t867 i_input_967e = t869 ).
          t865 = t866.
          DATA(t870) = VALUE abap_bool( ).
          DATA(t871) = t865.
          IF t871 IS BOUND.
            IF t871->has = abap_true.
              t870 = xsdbool( strlen( t871->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t870 = abap_true.
            DATA t872 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t872.
            DATA(t873) = t2.
            t872 = t873->issues.
            DATA t874 TYPE REF TO zcl_lnt_issue.
            CLEAR t874.
            DATA(t875) = t2.
            DATA t876 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t876.
            DATA(t877) = t1.
            t876 = t877->get_first_token( ).
            DATA(t878) = VALUE string( ).
            DATA(t879) = t865.
            t878 = t879->value.
            DATA t880 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t880.
            t874 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t875 i_token = t876 i_message_26cb = t878 i_fix = t880 ).
            t872->load( ).
            APPEND t874 TO t872->items.
            t872->save( ).
            DATA t881 TYPE REF TO zcl_lnt_void_type.
            CLEAR t881.
            DATA t882 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t882.
            DATA(t883) = abap_true.
            IF t883 = abap_true.
              DATA(t884) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t885) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t885->has = abap_true.
              t885->value = t884.
              t882 = t885.
            ELSE.
              DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t886.
              t882 = t886.
            ENDIF.
            DATA t887 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t887.
            t881 = zcl_lnt_void_type=>get_db65( i_voided = t882 i_qualified_name = t887 ).
            result = t881.
            RETURN.
          ENDIF.
        ENDIF.
        DATA(t888) = t640.
        t4 = t888.
      ENDIF.
    ENDIF.
    DATA(t889) = VALUE abap_bool( ).
    DATA t890 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t890.
    DATA(t891) = t4.
    t890 = t891.
    DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t892.
    DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t893.
    t892 = t893.
    DATA(t894) = VALUE abap_bool( ).
    DATA(t895) = t890.
    IF t895 IS INITIAL.
      t894 = abap_true.
    ENDIF.
    t889 = t894.
    IF t889 = abap_true.
      DATA t896 TYPE REF TO zcl_lnt_basic_types.
      CLEAR t896.
      DATA t897 TYPE REF TO zcl_lnt_basic_types.
      CLEAR t897.
      DATA(t898) = t2.
      t897 = NEW zcl_lnt_basic_types( i_input_967e = t898 ).
      t896 = t897.
      DATA t899 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t899.
      DATA t900 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t900.
      DATA(t901) = t896.
      DATA(t902) = t6.
      DATA t903 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t903.
      DATA t904 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t904.
      DATA t905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t905.
      t900 = t901->resolve_type_name( i_type_name = t902 i_length = t903 i_decimals_2eed = t904 i_qualified_name = t905 ).
      t899 = t900.
      DATA(t906) = VALUE abap_bool( ).
      DATA(t907) = t899.
      t906 = xsdbool( t907 IS BOUND AND t907 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t906 = abap_true.
        DATA t908 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t908.
        DATA(t909) = t899.
        t908 ?= t909.
        t4 = t908.
      ELSE.
        DATA(t910) = VALUE abap_bool( ).
        DATA(t911) = VALUE abap_bool( ).
        DATA(t912) = t899.
        t911 = xsdbool( t912 IS BOUND ).
        t910 = t911.
        IF t911 = abap_true.
          DATA(t913) = VALUE abap_bool( ).
          DATA(t914) = VALUE abap_bool( ).
          DATA t915 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t915.
          DATA(t916) = t899.
          t915 = t916.
          t914 = xsdbool( t915 IS BOUND AND t915 IS INSTANCE OF zcl_lnt_void_type ).
          t913 = xsdbool( t914 = abap_false ).
          t910 = t913.
        ENDIF.
        IF t910 = abap_true.
          DATA t917 TYPE REF TO zcl_lnt_data_reference.
          CLEAR t917.
          DATA t918 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t918.
          DATA(t919) = t899.
          t918 = t919.
          DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t920.
          t917 = NEW zcl_lnt_data_reference( i_type_9913 = t918 i_qualified_name = t920 ).
          t4 = t917.
        ELSE.
          DATA(t921) = VALUE abap_bool( ).
          DATA(t922) = t899.
          t921 = xsdbool( t922 IS BOUND AND t922 IS INSTANCE OF zcl_lnt_void_type ).
          IF t921 = abap_true.
            DATA t923 TYPE REF TO zcl_lnt_void_type.
            CLEAR t923.
            DATA(t924) = t899.
            t923 ?= t924.
            t4 = t923.
          ELSE.
            DATA(t925) = VALUE string( ).
            DATA(t926) = VALUE string( ).
            DATA(t927) = VALUE string( ).
            DATA(t928) = |Type "|.
            DATA(t929) = VALUE string( ).
            DATA(t930) = t37.
            t929 = t930->value.
            DATA(t931) = strlen( t928 ).
            t927 = |{ t928 }{ t929 }|.
            DATA(t932) = |" not found in scope, NewObject|.
            DATA(t933) = strlen( t927 ).
            t926 = |{ t927 }{ t932 }|.
            t925 = t926.
            DATA t934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t934.
            DATA(t935) = t2.
            t934 = t935->issues.
            DATA t936 TYPE REF TO zcl_lnt_issue.
            CLEAR t936.
            DATA(t937) = t2.
            DATA t938 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t938.
            DATA(t939) = t1.
            t938 = t939->get_first_token( ).
            DATA(t940) = t925.
            DATA t941 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t941.
            t936 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t937 i_token = t938 i_message_26cb = t940 i_fix = t941 ).
            t934->load( ).
            APPEND t936 TO t934->items.
            t934->save( ).
            DATA t942 TYPE REF TO zcl_lnt_void_type.
            CLEAR t942.
            DATA t943 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t943.
            DATA(t944) = abap_true.
            IF t944 = abap_true.
              DATA(t945) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t946) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t946->has = abap_true.
              t946->value = t945.
              t943 = t946.
            ELSE.
              DATA t947 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t947.
              t943 = t947.
            ENDIF.
            DATA t948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t948.
            t942 = zcl_lnt_void_type=>get_db65( i_voided = t943 i_qualified_name = t948 ).
            result = t942.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t949) = VALUE abap_bool( ).
    DATA(t950) = t4.
    t949 = xsdbool( t950 IS BOUND AND t950 IS INSTANCE OF zcl_lnt_object_reference_type ).
    IF t949 = abap_true.
      DATA(t951) = t1.
      DATA t952 TYPE REF TO zcl_lnt_object_reference_type.
      CLEAR t952.
      DATA(t953) = t4.
      t952 ?= t953.
      DATA(t954) = t2.
      zcl_lnt_sy_new_object=>parameters( i_node = t951 i_obj_1ed0 = t952 i_input_967e = t954 ).
    ELSE.
      DATA t955 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t955.
      DATA(t956) = t1.
      DATA(t957) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t955 = t956->find_all_expressions( i_type_9913 = t957 ).
      DATA t958 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t958.
      DATA t959 TYPE REF TO object.
      CLEAR t959.
      DATA(t960) = VALUE i( ).
      DO.
        t955->load( ).
        IF t960 >= lines( t955->items ).
          EXIT.
        ENDIF.
        CLEAR t959.
        READ TABLE t955->items INDEX t960 + 1 INTO t959.
        t960 = t960 + 1.
        DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t961.
        CLEAR t958.
        IF t959 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t961 ?= t959.
          DATA t962 TYPE REF TO object.
          CLEAR t962.
          t962 = t961->as_ref( ).
          t958 ?= t962.
        ELSE.
          t958 ?= t959.
        ENDIF.
        DATA t963 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t963.
        DATA t964 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t964.
        DATA(t965) = abap_true.
        IF t965 = abap_true.
          DATA(t966) = t958.
          t964 = t966.
        ELSE.
          DATA t967 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t967.
          t964 = t967.
        ENDIF.
        DATA(t968) = t2.
        DATA t969 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t969.
        DATA(t970) = abap_true.
        IF t970 = abap_true.
          DATA t971 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t971.
          DATA(t972) = t4.
          t971 = t972.
          t969 = t971.
        ELSE.
          DATA t973 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t973.
          t969 = t973.
        ENDIF.
        DATA t974 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t974.
        DATA t975 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t975.
        DATA t976 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t976.
        t963 = zcl_lnt_sy_source=>run_syntax( i_node = t964 i_input_967e = t968 i_target_type = t969 i_write_reference = t974 i_allow_generic_deference = t975 i_read_reference = t976 ).
      ENDDO.
    ENDIF.
    DATA(t977) = VALUE abap_bool( ).
    DATA(t978) = VALUE abap_bool( ).
    DATA(t979) = t4.
    t978 = xsdbool( t979 IS BOUND AND t979 IS INSTANCE OF zcl_lnt_unknown_type ).
    t977 = t978.
    IF t978 = abap_true.
      DATA(t980) = VALUE abap_bool( ).
      DATA(t981) = VALUE abap_bool( ).
      DATA t982 TYPE REF TO zcl_lnt_ddic.
      CLEAR t982.
      DATA t983 TYPE REF TO zcl_lnt_ddic.
      CLEAR t983.
      DATA t984 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t984.
      DATA t985 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t985.
      DATA(t986) = t2.
      t985 = t986->scope.
      t984 = t985.
      DATA t987 TYPE REF TO zcl_lnt_ddic.
      CLEAR t987.
      DATA t988 TYPE REF TO zif_lnt_registry.
      CLEAR t988.
      DATA(t989) = t984.
      t988 = t989->reg.
      t987 = NEW zcl_lnt_ddic( i_reg_f149 = t988 ).
      t983 = t987.
      t982 = t983.
      DATA t990 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t990.
      DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t991.
      DATA(t992) = abap_true.
      IF t992 = abap_true.
        DATA(t993) = VALUE string( ).
        DATA(t994) = t37.
        t993 = t994->value.
        DATA(t995) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t995->has = abap_true.
        t995->value = t993.
        t991 = t995.
      ELSE.
        DATA t996 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t996.
        t991 = t996.
      ENDIF.
      t990 = t991.
      DATA(t997) = VALUE abap_bool( ).
      DATA(t998) = VALUE abap_bool( ).
      DATA t999 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t999.
      DATA(t1000) = t990.
      t999 = t1000.
      DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1001.
      DATA t1002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1002.
      t1001 = t1002.
      DATA(t1003) = VALUE abap_bool( ).
      DATA(t1004) = t999.
      IF t1004 IS INITIAL.
        t1003 = abap_true.
      ELSEIF t1004->has = abap_false.
        t1003 = abap_true.
      ENDIF.
      t998 = t1003.
      IF t998 = abap_true.
        DATA(t1005) = abap_true.
        t997 = t1005.
      ELSE.
        DATA(t1006) = VALUE abap_bool( ).
        DATA t1007 TYPE REF TO zif_lnt_registry.
        CLEAR t1007.
        DATA(t1008) = t982.
        t1007 = t1008->reg.
        DATA(t1009) = VALUE string( ).
        DATA(t1010) = t990.
        t1009 = t1010->value.
        t1006 = t1007->in_error_namespace( i_name = t1009 ).
        t997 = t1006.
      ENDIF.
      t981 = t997.
      DATA(t1011) = abap_true.
      t980 = xsdbool( t981 = t1011 ).
      t977 = t980.
    ENDIF.
    IF t977 = abap_true.
      DATA(t1012) = VALUE string( ).
      DATA(t1013) = VALUE string( ).
      DATA(t1014) = VALUE string( ).
      DATA(t1015) = |Class or type "|.
      DATA(t1016) = VALUE string( ).
      DATA(t1017) = t37.
      t1016 = t1017->value.
      DATA(t1018) = strlen( t1015 ).
      t1014 = |{ t1015 }{ t1016 }|.
      DATA(t1019) = |" not found|.
      DATA(t1020) = strlen( t1014 ).
      t1013 = |{ t1014 }{ t1019 }|.
      t1012 = t1013.
      DATA t1021 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1021.
      DATA(t1022) = t2.
      t1021 = t1022->issues.
      DATA t1023 TYPE REF TO zcl_lnt_issue.
      CLEAR t1023.
      DATA(t1024) = t2.
      DATA t1025 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t1025.
      DATA(t1026) = t1.
      t1025 = t1026->get_first_token( ).
      DATA(t1027) = t1012.
      DATA t1028 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t1028.
      t1023 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1024 i_token = t1025 i_message_26cb = t1027 i_fix = t1028 ).
      t1021->load( ).
      APPEND t1023 TO t1021->items.
      t1021->save( ).
      DATA t1029 TYPE REF TO zcl_lnt_void_type.
      CLEAR t1029.
      DATA t1030 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1030.
      DATA(t1031) = abap_true.
      IF t1031 = abap_true.
        DATA(t1032) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t1033) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1033->has = abap_true.
        t1033->value = t1032.
        t1030 = t1033.
      ELSE.
        DATA t1034 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1034.
        t1030 = t1034.
      ENDIF.
      DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1035.
      t1029 = zcl_lnt_void_type=>get_db65( i_voided = t1030 i_qualified_name = t1035 ).
      result = t1029.
      RETURN.
    ENDIF.
    DATA t1036 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t1036.
    DATA(t1037) = t4.
    t1036 = t1037.
    result = t1036.

  ENDMETHOD.

  METHOD parameters.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_object_reference_type.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t11) = t8.
    t10 = t11->identifier.
    t7 = t10.
    t6 = t7.
    DATA(t12) = VALUE string( ).
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t17) = t6.
    t16 = t17->token.
    t15 = t16.
    DATA t18 TYPE string.
    DATA(t19) = t15.
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
    DATA(t42) = t3.
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
    DATA(t52) = t43.
    t51 = t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    t53 = t54.
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = t51.
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
        DATA(t65) = t43.
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
      DATA(t71) = t61.
      t70 = t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      t72 = t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = t70.
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
        DATA(t82) = t40.
        t81 = t82->current.
        t80 = t81.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        CLEAR t83.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = t80.
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
          DATA(t89) = t80.
          t88 = t89.
          DATA t90 TYPE string.
          DATA(t91) = t61.
          t90 = t91->value.
          t87 = t88->find_class_definition( i_name = t90 ).
          t83 = t87.
        ENDIF.
        t79 = t83.
        t78 = t79.
        DATA t92 TYPE REF TO zif_lnt_class_definition.
        CLEAR t92.
        DATA t93 TYPE abap_bool.
        DATA(t94) = t78.
        t93 = xsdbool( t94 IS BOUND ).
        IF t93 = abap_true.
          DATA t95 TYPE REF TO zif_lnt_class_definition.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA t97 TYPE REF TO zif_lnt_class_definition.
            DATA(t98) = t78.
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
          DATA(t105) = t40.
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
            DATA(t114) = t61.
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
          DATA(t120) = t101.
          t119 = xsdbool( t120 IS BOUND ).
          IF t119 = abap_true.
            DATA t121 TYPE REF TO zif_lnt_class_definition.
            DATA t122 TYPE REF TO zcl_lnt_class.
            DATA(t123) = t101.
            t122 = t123.
            t121 = t122->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
      DATA(t127) = t59.
      t126 = xsdbool( t127 IS BOUND ).
      IF t126 = abap_true.
        DATA t128 TYPE REF TO zif_lnt_interface_definition.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        DATA(t130) = t59.
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
          DATA(t138) = t43.
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
        DATA(t144) = t134.
        t143 = t144.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        t145 = t146.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = t143.
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
          DATA(t155) = t40.
          t154 = t155->current.
          t153 = t154.
          DATA t156 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t156.
          DATA(t157) = VALUE abap_bool( ).
          DATA(t158) = t153.
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
            DATA(t162) = t153.
            t161 = t162.
            DATA t163 TYPE string.
            DATA(t164) = t134.
            t163 = t164->value.
            t160 = t161->find_interface_definition( i_name = t163 ).
            t156 = t160.
          ENDIF.
          t152 = t156.
          t151 = t152.
          DATA t165 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t165.
          DATA t166 TYPE abap_bool.
          DATA(t167) = t151.
          t166 = xsdbool( t167 IS BOUND ).
          IF t166 = abap_true.
            DATA t168 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t168.
            DATA(t169) = abap_true.
            IF t169 = abap_true.
              DATA t170 TYPE REF TO zif_lnt_interface_definition.
              DATA(t171) = t151.
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
            DATA(t178) = t40.
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
              DATA(t187) = t134.
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
            DATA(t193) = t174.
            t192 = xsdbool( t193 IS BOUND ).
            IF t192 = abap_true.
              DATA t194 TYPE REF TO zif_lnt_interface_definition.
              DATA t195 TYPE REF TO zcl_lnt_ob_interface.
              DATA t196 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t197) = t174.
              t196 = t197.
              t195 = t196.
              DATA t198 TYPE REF TO zif_lnt_interface_definition.
              DATA(t199) = t195.
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
        DATA(t203) = t132.
        t202 = xsdbool( t203 IS BOUND ).
        IF t202 = abap_true.
          DATA t204 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t204.
          DATA(t205) = abap_true.
          IF t205 = abap_true.
            DATA t206 TYPE REF TO zif_lnt_interface_definition.
            DATA(t207) = t132.
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
    DATA(t213) = t3.
    t212 = t213->scope.
    t211 = NEW zcl_lnt_object_oriented( i_scope = t212 ).
    t210 = t211.
    DATA t214 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t214.
    DATA t215 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t215.
    DATA(t216) = t210.
    DATA(t217) = t38.
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
    DATA(t225) = t214.
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
    DATA(t233) = t223.
    t232 = t233.
    DATA t234 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t234.
    DATA(t235) = VALUE abap_bool( ).
    DATA(t236) = t232.
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
      DATA(t240) = t232.
      t239 = t240.
      t238 = t239->get_parameters( ).
      t234 = t238.
    ENDIF.
    t231 = t234.
    t230 = t231.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t241.
    DATA(t242) = VALUE abap_bool( ).
    DATA(t243) = t230.
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
      DATA(t247) = t230.
      t246 = t247.
      t245 = t246->get_required_parameters( ).
      t241 = t245.
    ENDIF.
    t229 = t241.
    t228 = t229.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t248.
    DATA t249 TYPE abap_bool.
    DATA(t250) = t228.
    t249 = xsdbool( t250 IS BOUND ).
    IF t249 = abap_true.
      DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t252) = t228.
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
    DATA(t256) = t1.
    DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t255 = t256->find_direct_expression( i_type_9913 = t257 ).
    t254 = t255.
    DATA t258 TYPE REF TO zcl_lnt_expression_node.
    DATA t259 TYPE REF TO zcl_lnt_expression_node.
    DATA(t260) = t1.
    DATA(t261) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t259 = t260->find_direct_expression( i_type_9913 = t261 ).
    t258 = t259.
    DATA t262 TYPE abap_bool.
    DATA(t263) = t254.
    t262 = xsdbool( t263 IS BOUND ).
    IF t262 = abap_true.
      DATA t264 TYPE REF TO zcl_lnt_abstract_type.
      DATA t265 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t266) = t223.
      t265 = zcl_lnt_sy_new_object=>default_importing_type( i_method = t266 ).
      t264 = t265.
      DATA(t267) = VALUE abap_bool( ).
      DATA t268 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t269) = t264.
      t268 = t269.
      DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t271.
      t270 = t271.
      DATA(t272) = VALUE abap_bool( ).
      DATA(t273) = t268.
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
        DATA(t280) = t3.
        t279 = t280->issues.
        DATA t281 TYPE REF TO zcl_lnt_issue.
        DATA(t282) = t3.
        DATA t283 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t284) = t1.
        t283 = t284->get_first_token( ).
        DATA(t285) = t274.
        DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t286.
        t281 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t282 i_token = t283 i_message_26cb = t285 i_fix = t286 ).
        t279->load( ).
        APPEND t281 TO t279->items.
        t279->save( ).
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
        DATA(t292) = t254.
        t291 = t292.
        t289 = t291.
      ELSE.
        DATA t293 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t293.
        t289 = t293.
      ENDIF.
      DATA(t294) = t3.
      DATA t295 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t295.
      DATA(t296) = abap_true.
      IF t296 = abap_true.
        DATA t297 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t298) = t264.
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
      DATA(t307) = t3.
      t306 = t307->scope.
      t305 = NEW zcl_lnt_type_utils( i_scope = t306 ).
      DATA(t308) = t287.
      DATA t309 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t309.
      DATA(t310) = abap_true.
      IF t310 = abap_true.
        DATA t311 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t312) = t264.
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
        DATA(t319) = t3.
        t318 = t319->issues.
        DATA t320 TYPE REF TO zcl_lnt_issue.
        DATA(t321) = t3.
        DATA t322 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t323) = t1.
        t322 = t323->get_first_token( ).
        DATA(t324) = t316.
        DATA t325 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t325.
        t320 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t321 i_token = t322 i_message_26cb = t324 i_fix = t325 ).
        t318->load( ).
        APPEND t320 TO t318->items.
        t318->save( ).
        RETURN.
      ENDIF.
    ELSE.
      DATA t326 TYPE abap_bool.
      DATA(t327) = t258.
      t326 = xsdbool( t327 IS BOUND ).
      IF t326 = abap_true.
        DATA(t328) = VALUE abap_bool( ).
        DATA t329 TYPE REF TO zif_lnt_method_definition.
        DATA(t330) = t223.
        t329 = t330.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t332.
        t331 = t332.
        DATA(t333) = VALUE abap_bool( ).
        DATA(t334) = t329.
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
          DATA(t341) = t3.
          t340 = t341->issues.
          DATA t342 TYPE REF TO zcl_lnt_issue.
          DATA(t343) = t3.
          DATA t344 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t345) = t1.
          t344 = t345->get_first_token( ).
          DATA(t346) = t335.
          DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t347.
          t342 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t343 i_token = t344 i_message_26cb = t346 i_fix = t347 ).
          t340->load( ).
          APPEND t342 TO t340->items.
          t340->save( ).
          RETURN.
        ENDIF.
        DATA(t348) = NEW zcl_lnt_sy_method_parameters( ).
        DATA t349 TYPE REF TO zcl_lnt_expression_node.
        DATA(t350) = t258.
        t349 = t350.
        DATA(t351) = t3.
        DATA t352 TYPE REF TO zif_lnt_union_8cd68e5e.
        DATA t353 TYPE REF TO zif_lnt_method_definition.
        DATA(t354) = t223.
        t353 = t354.
        t352 ?= t353.
        DATA t355 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t355.
        t348->check_exporting( i_node = t349 i_input_967e = t351 i_method = t352 i_errors = t355 ).
      ELSE.
        DATA t356 TYPE abap_bool.
        DATA t357 TYPE i.
        DATA(t358) = t226.
        t358->load( ).
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
          CLEAR t366.
          DATA t367 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t367.
          DATA(t368) = t226.
          DATA t369 TYPE REF TO object.
          CLEAR t369.
          t368->load( ).
          CLEAR t369.
          READ TABLE t368->items INDEX 1 INTO t369.
          DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t370.
          CLEAR t367.
          IF t369 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t370 ?= t369.
            DATA t371 TYPE REF TO object.
            t371 = t370->as_ref( ).
            t367 ?= t371.
          ELSE.
            t367 ?= t369.
          ENDIF.
          t366 = t367.
          DATA(t372) = VALUE string( ).
          DATA t373 TYPE string.
          DATA t374 TYPE string.
          DATA t375 TYPE REF TO zcl_lnt_abstract_token.
          DATA t376 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t377) = t366.
          t376 = t377->token.
          t375 = t376.
          DATA t378 TYPE string.
          DATA(t379) = t375.
          t378 = t379->str.
          t374 = t378.
          t373 = t374.
          DATA(t380) = VALUE abap_bool( ).
          DATA(t381) = VALUE string( ).
          DATA(t382) = t373.
          DATA(t383) = 0.
          DATA(t384) = 1.
          DATA(t385) = strlen( t382 ).
          IF t383 < 0.
            t383 = t383 + t385.
            IF t383 < 0.
              t383 = 0.
            ENDIF.
          ENDIF.
          IF t383 > t385 OR t384 <= 0.
            CLEAR t381.
          ELSE.
            IF t384 > t385 - t383.
              t384 = t385 - t383.
            ENDIF.
            t381 = t382+t383(t384).
          ENDIF.
          DATA(t386) = |!|.
          t380 = xsdbool( t381 = t386 ).
          IF t380 = abap_true.
            DATA(t387) = VALUE string( ).
            DATA t388 TYPE string.
            DATA(t389) = t373.
            t388 = t389.
            DATA(t390) = VALUE string( ).
            DATA(t391) = t388.
            DATA(t392) = 1.
            DATA t393 TYPE i.
            DATA(t394) = t388.
            DATA(t395) = strlen( t394 ).
            t393 = t395.
            DATA(t396) = strlen( t391 ).
            IF t392 < 0.
              t392 = t392 + t396.
              IF t392 < 0.
                t392 = 0.
              ENDIF.
            ENDIF.
            IF t392 > t396 OR t393 <= 0.
              CLEAR t390.
            ELSE.
              IF t393 > t396 - t392.
                t393 = t396 - t392.
              ENDIF.
              t390 = t391+t392(t393).
            ENDIF.
            t387 = t390.
            t373 = t387.
          ENDIF.
          DATA(t397) = t373.
          t372 = t397.
          t365 = t372.
          DATA(t398) = strlen( t364 ).
          t363 = |{ t364 }{ t365 }|.
          DATA(t399) = |" must be supplied, |.
          DATA(t400) = strlen( t363 ).
          t362 = |{ t363 }{ t399 }|.
          DATA(t401) = t4.
          DATA(t402) = strlen( t362 ).
          t361 = |{ t362 }{ t401 }|.
          t360 = t361.
          DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t404) = t3.
          t403 = t404->issues.
          DATA t405 TYPE REF TO zcl_lnt_issue.
          DATA(t406) = t3.
          DATA t407 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t408) = t1.
          t407 = t408->get_first_token( ).
          DATA(t409) = t360.
          DATA t410 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t410.
          t405 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t406 i_token = t407 i_message_26cb = t409 i_fix = t410 ).
          t403->load( ).
          APPEND t405 TO t403->items.
          t403->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD default_importing_type.
    DATA(t1) = i_method.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_method_definition.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
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
    DATA(t16) = t1.
    t15 = t16.
    t14 = t15->get_parameters( ).
    t13 = t14->get_default_importing( ).
    t12 = t13.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zif_lnt_method_parameters.
    DATA t19 TYPE REF TO zif_lnt_method_definition.
    DATA(t20) = t1.
    t19 = t20.
    t18 = t19->get_parameters( ).
    t17 = t18->get_importing( ).
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    DATA(t23) = VALUE i( ).
    DO.
      t17->load( ).
      IF t23 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t17->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = VALUE string( ).
        DATA(t30) = VALUE string( ).
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t32) = t21.
        t31 = t32.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE string.
        DATA t35 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t38) = t31.
        t37 = t38->token.
        t36 = t37.
        DATA t39 TYPE string.
        DATA(t40) = t36.
        t39 = t40->str.
        t35 = t39.
        t34 = t35.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE string( ).
        DATA(t43) = t34.
        DATA(t44) = 0.
        DATA(t45) = 1.
        DATA(t46) = strlen( t43 ).
        IF t44 < 0.
          t44 = t44 + t46.
          IF t44 < 0.
            t44 = 0.
          ENDIF.
        ENDIF.
        IF t44 > t46 OR t45 <= 0.
          CLEAR t42.
        ELSE.
          IF t45 > t46 - t44.
            t45 = t46 - t44.
          ENDIF.
          t42 = t43+t44(t45).
        ENDIF.
        DATA(t47) = |!|.
        t41 = xsdbool( t42 = t47 ).
        IF t41 = abap_true.
          DATA(t48) = VALUE string( ).
          DATA t49 TYPE string.
          DATA(t50) = t34.
          t49 = t50.
          DATA(t51) = VALUE string( ).
          DATA(t52) = t49.
          DATA(t53) = 1.
          DATA t54 TYPE i.
          DATA(t55) = t49.
          DATA(t56) = strlen( t55 ).
          t54 = t56.
          DATA(t57) = strlen( t52 ).
          IF t53 < 0.
            t53 = t53 + t57.
            IF t53 < 0.
              t53 = 0.
            ENDIF.
          ENDIF.
          IF t53 > t57 OR t54 <= 0.
            CLEAR t51.
          ELSE.
            IF t54 > t57 - t53.
              t54 = t57 - t53.
            ENDIF.
            t51 = t52+t53(t54).
          ENDIF.
          t48 = t51.
          t34 = t48.
        ENDIF.
        DATA(t58) = t34.
        t33 = t58.
        t30 = t33.
        DATA(t59) = strlen( t30 ).
        t29 = t30.
        IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t29 TO UPPER CASE.
        ELSE.
          t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
        ENDIF.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t29.
        t27 = t60.
      ELSE.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        t27 = t61.
      ENDIF.
      DATA(t62) = t12.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      IF t27 IS BOUND.
        t63 = t27->has.
      ENDIF.
      IF t62 IS BOUND.
        t64 = t62->has.
      ENDIF.
      IF t63 = t64.
        IF t63 = abap_false.
          t26 = abap_true.
        ELSEIF t27->value = t62->value.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      IF t26 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t65.
        DATA(t66) = abap_true.
        IF t66 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_abstract_type.
          DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t69) = t21.
          t68 = t69.
          DATA t70 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t71) = t68.
          t70 = t71->type_cba0.
          t67 = t70.
          t65 = t67.
        ELSE.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t72.
          t65 = t72.
        ENDIF.
        t2 = t65.
      ENDIF.
    ENDDO.
    DATA(t73) = t2.
    result = t73.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d827_4ef46d4fa79b.
  ENDMETHOD.
ENDCLASS.
