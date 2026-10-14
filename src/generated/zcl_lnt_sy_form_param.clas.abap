* TS: src/abap/5_syntax/expressions/form_param.ts:11:1 FormParam
CLASS zcl_lnt_sy_form_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_form_param IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d177_c99f21007fa4 ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t3 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t8 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t14.
      DATA t15 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = |FormParam, could not find FormParamName|.
        DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        t16 = t20.
      ENDIF.
      t15 = NEW zcx_lnt_assert_error( i_message_26cb = t16 ).
      t14 = NEW #( ).
      t14->payload = t15.
      RAISE EXCEPTION t14.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = CAST zcl_lnt_expression_node( t3 ).
    t23 = t24.
    t22 = t23->get_first_token( ).
    t21 = t22.
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE i.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zcl_lnt_abstract_node.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = CAST zcl_lnt_expression_node( t3 ).
    t30 = t31.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t33) = CAST zcl_lnt_abstract_node( t29 ).
    t32 = t33->children.
    t28 = t32.
    t27 ?= t28.
    t26 = lines( t27->items ).
    DATA(t34) = 1.
    t25 = xsdbool( t26 > t34 ).
    IF t25 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t36 TYPE REF TO zcl_lnt_position.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t38) = CAST zcl_lnt_abstract_token( t21 ).
      t37 = t38.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA(t40) = CAST zcl_lnt_abstract_token( t37 ).
      t39 = t40->start.
      t36 = t39.
      DATA t41 TYPE string.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA(t43) = CAST zcl_lnt_expression_node( t3 ).
      t42 = t43.
      t41 = t42->concat_tokens( ).
      t35 = NEW zcl_lnt_lx_identifier( i_start = t36 i_str = t41 ).
      t21 = t35.
    ENDIF.
    DATA t44 TYPE abap_bool.
    DATA t45 TYPE abap_bool.
    DATA t46 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t47) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t48) = |STRUCTURE|.
    t46 = t47->find_direct_token_by_text( i_text = t48 ).
    t45 = xsdbool( t46 IS BOUND ).
    t44 = t45.
    IF t45 = abap_true.
      DATA t49 TYPE abap_bool.
      DATA(t50) = CAST zcl_lnt_abstract_token( t21 ).
      t49 = xsdbool( t50 IS BOUND ).
      t44 = t49.
    ENDIF.
    IF t44 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4 ).
      t56 = t57->find_direct_expression( i_type_9913 = t58 ).
      t55 = t56.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = CAST zcl_lnt_expression_node( t55 ).
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t62.
        t59 = t62.
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA(t65) = CAST zcl_lnt_expression_node( t55 ).
        t64 = t65.
        t63 = t64->get_first_token( ).
        t59 = t63.
      ENDIF.
      t54 = t59.
      t53 = t54.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = CAST zcl_lnt_abstract_token( t53 ).
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t66 = t69.
      ELSE.
        DATA t70 TYPE string.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t73) = CAST zcl_lnt_abstract_token( t53 ).
        t72 = t73.
        t71 = t72.
        DATA t74 TYPE string.
        DATA(t75) = CAST zcl_lnt_abstract_token( t71 ).
        t74 = t75->str.
        t70 = t74.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t70.
        t66 = t76.
      ENDIF.
      t52 = t66.
      t51 = t52.
      DATA t77 TYPE REF TO zif_lnt_union_ea265422.
      DATA t78 TYPE REF TO zif_lnt_union_ea265422.
      CLEAR t78.
      t77 = t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
      IF t80 IS BOUND.
        IF t80->has = abap_true.
          t79 = xsdbool( strlen( t80->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t79 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_current_scope.
        DATA t85 TYPE REF TO zcl_lnt_current_scope.
        DATA(t86) = CAST zcl_lnt_syntax_input( t2 ).
        t85 = t86->scope.
        t84 = t85.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t89) = abap_true.
        IF t89 = abap_true.
          DATA t90 TYPE string.
          DATA(t91) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
          t90 = t91->value.
          DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t92->has = abap_true.
          t92->value = t90.
          t88 = t92.
        ELSE.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t88 = t93.
        ENDIF.
        t87 = t88.
        DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t94.
        DATA(t95) = VALUE abap_bool( ).
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t97) = CAST zlnt_runtime_opti_4ba3bdccd169( t87 ).
        t96 = t97.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        t98 = t99.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = CAST zlnt_runtime_opti_4ba3bdccd169( t96 ).
        IF t101 IS INITIAL.
          t100 = abap_true.
        ELSEIF t101->has = abap_false.
          t100 = abap_true.
        ENDIF.
        t95 = t100.
        IF t95 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t102.
          t94 = t102.
        ELSE.
          DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t103.
          DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t105 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t106) = CAST zcl_lnt_current_scope( t84 ).
          t105 = t106->current.
          t104 = t105.
          DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t107.
          DATA(t108) = VALUE abap_bool( ).
          DATA(t109) = CAST zcl_lnt_spaghetti_scope_node( t104 ).
          IF t109 IS INITIAL.
            t108 = abap_true.
          ENDIF.
          IF t108 = abap_true.
            DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t110.
            t107 = t110.
          ELSE.
            DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t113) = CAST zcl_lnt_spaghetti_scope_node( t104 ).
            t112 = t113.
            DATA t114 TYPE string.
            DATA(t115) = CAST zlnt_runtime_opti_4ba3bdccd169( t87 ).
            t114 = t115->value.
            t111 = t112->find_type( i_name = t114 ).
            t107 = t111.
          ENDIF.
          t103 = t107.
          t94 = t103.
        ENDIF.
        t83 = t94.
        t82 = t83.
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t116.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = CAST zcl_lnt_typed_identifier( t82 ).
        IF t118 IS INITIAL.
          t117 = abap_true.
        ENDIF.
        IF t117 = abap_true.
          DATA t119 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t119.
          t116 = t119.
        ELSE.
          DATA t120 TYPE REF TO zcl_lnt_abstract_type.
          DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t122 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t123) = CAST zcl_lnt_typed_identifier( t82 ).
          t122 = t123.
          t121 = t122.
          DATA t124 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t125) = CAST zcl_lnt_typed_identifier( t121 ).
          t124 = t125->type_cba0.
          t120 = t124.
          t116 = t120.
        ENDIF.
        t81 = t116.
        t77 = t81.
        DATA(t126) = VALUE abap_bool( ).
        DATA t127 TYPE REF TO zif_lnt_union_ea265422.
        DATA(t128) = CAST zif_lnt_union_ea265422( t77 ).
        t127 = t128.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        t129 = t130.
        DATA(t131) = VALUE abap_bool( ).
        DATA(t132) = CAST zif_lnt_union_ea265422( t127 ).
        IF t132 IS INITIAL.
          t131 = abap_true.
        ENDIF.
        t126 = t131.
        IF t126 = abap_true.
          DATA t133 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t133.
          DATA t134 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t134.
          DATA t135 TYPE REF TO zcl_lnt_ddic.
          DATA t136 TYPE REF TO zcl_lnt_ddic.
          DATA t137 TYPE REF TO zcl_lnt_current_scope.
          DATA t138 TYPE REF TO zcl_lnt_current_scope.
          DATA(t139) = CAST zcl_lnt_syntax_input( t2 ).
          t138 = t139->scope.
          t137 = t138.
          DATA t140 TYPE REF TO zcl_lnt_ddic.
          DATA t141 TYPE REF TO zif_lnt_registry.
          DATA(t142) = CAST zcl_lnt_current_scope( t137 ).
          t141 = t142->reg.
          t140 = NEW zcl_lnt_ddic( i_reg_f149 = t141 ).
          t136 = t140.
          t135 = t136.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA(t145) = abap_true.
          IF t145 = abap_true.
            DATA t146 TYPE string.
            DATA(t147) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
            t146 = t147->value.
            DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t148->has = abap_true.
            t148->value = t146.
            t144 = t148.
          ELSE.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            t144 = t149.
          ENDIF.
          t143 = t144.
          DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t150.
          DATA(t151) = VALUE abap_bool( ).
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t153) = CAST zlnt_runtime_opti_4ba3bdccd169( t143 ).
          t152 = t153.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          t154 = t155.
          DATA(t156) = VALUE abap_bool( ).
          DATA(t157) = CAST zlnt_runtime_opti_4ba3bdccd169( t152 ).
          IF t157 IS INITIAL.
            t156 = abap_true.
          ELSEIF t157->has = abap_false.
            t156 = abap_true.
          ENDIF.
          t151 = t156.
          IF t151 = abap_true.
            DATA t158 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t159 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t160) = |undefined, lookupTableOrView|.
            DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t161.
            t159 = NEW zcl_lnt_unknown_type( i_error = t160 i_qualified_name = t161 ).
            DATA t162 TYPE REF TO zif_lnt_object.
            CLEAR t162.
            t158 = NEW zcl_lnt_ilookup_result( i_type_9913 = t159 i_object_19cd = t162 ).
            t150 = t158.
          ELSE.
            DATA t163 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t163.
            DATA t164 TYPE REF TO zcl_lnt_table.
            CLEAR t164.
            DATA t165 TYPE REF TO zcl_lnt_table.
            CLEAR t165.
            DATA t166 TYPE REF TO zif_lnt_object.
            CLEAR t166.
            DATA t167 TYPE REF TO zif_lnt_registry.
            DATA(t168) = CAST zcl_lnt_ddic( t135 ).
            t167 = t168->reg.
            DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t169.
            DATA(t170) = abap_true.
            IF t170 = abap_true.
              DATA(t171) = |TABL|.
              DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t172->has = abap_true.
              t172->value = t171.
              t169 = t172.
            ELSE.
              DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t173.
              t169 = t173.
            ENDIF.
            DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t174.
            DATA(t175) = abap_true.
            IF t175 = abap_true.
              DATA t176 TYPE string.
              DATA(t177) = CAST zlnt_runtime_opti_4ba3bdccd169( t143 ).
              t176 = t177->value.
              DATA(t178) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t178->has = abap_true.
              t178->value = t176.
              t174 = t178.
            ELSE.
              DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t179.
              t174 = t179.
            ENDIF.
            t166 = t167->get_object( i_type_9913 = t169 i_name = t174 ).
            DATA t180 TYPE REF TO object.
            t180 = t166.
            t165 ?= t180.
            t164 = t165.
            DATA t181 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t181.
            DATA t182 TYPE abap_bool.
            DATA(t183) = CAST zcl_lnt_table( t164 ).
            t182 = xsdbool( t183 IS BOUND ).
            IF t182 = abap_true.
              DATA t184 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t185 TYPE REF TO zcl_lnt_abstract_type.
              DATA t186 TYPE REF TO zcl_lnt_table.
              DATA(t187) = CAST zcl_lnt_table( t164 ).
              t186 = t187.
              DATA t188 TYPE REF TO zif_lnt_registry.
              DATA(t189) = CAST zcl_lnt_ddic( t135 ).
              t188 = t189->reg.
              t185 = t186->parse_type( i_reg_f149 = t188 ).
              DATA t190 TYPE REF TO zcl_lnt_table.
              DATA(t191) = CAST zcl_lnt_table( t164 ).
              t190 = t191.
              t184 = NEW zcl_lnt_ilookup_result( i_type_9913 = t185 i_object_19cd = t190 ).
              t181 = t184.
            ELSE.
              DATA t192 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t192.
              DATA t193 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t193.
              DATA t194 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t194.
              DATA(t195) = CAST zcl_lnt_ddic( t135 ).
              DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t196.
              DATA(t197) = abap_true.
              IF t197 = abap_true.
                DATA t198 TYPE string.
                DATA(t199) = CAST zlnt_runtime_opti_4ba3bdccd169( t143 ).
                t198 = t199->value.
                DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t200->has = abap_true.
                t200->value = t198.
                t196 = t200.
              ELSE.
                DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t201.
                t196 = t201.
              ENDIF.
              t194 = t195->lookup_ddls( i_name = t196 ).
              t193 = t194.
              DATA t202 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t202.
              DATA t203 TYPE abap_bool.
              DATA(t204) = CAST zcl_lnt_ilookup_result( t193 ).
              t203 = xsdbool( t204 IS BOUND ).
              IF t203 = abap_true.
                DATA t205 TYPE REF TO zcl_lnt_ilookup_result.
                DATA(t206) = CAST zcl_lnt_ilookup_result( t193 ).
                t205 = t206.
                t202 = t205.
              ELSE.
                DATA t207 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t207.
                DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t208.
                DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t209.
                DATA(t210) = abap_true.
                IF t210 = abap_true.
                  DATA t211 TYPE string.
                  DATA(t212) = CAST zlnt_runtime_opti_4ba3bdccd169( t143 ).
                  t211 = t212->value.
                  DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t213->has = abap_true.
                  t213->value = t211.
                  t209 = t213.
                ELSE.
                  DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t214.
                  t209 = t214.
                ENDIF.
                t208 = t209.
                DATA t215 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t215.
                DATA(t216) = VALUE abap_bool( ).
                DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t218) = CAST zlnt_runtime_opti_4ba3bdccd169( t208 ).
                t217 = t218.
                DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t220.
                t219 = t220.
                DATA(t221) = VALUE abap_bool( ).
                DATA(t222) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
                IF t222 IS INITIAL.
                  t221 = abap_true.
                ELSEIF t222->has = abap_false.
                  t221 = abap_true.
                ENDIF.
                t216 = t221.
                IF t216 = abap_true.
                  DATA t223 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t224 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t225) = |undefined, lookupView|.
                  DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t226.
                  t224 = NEW zcl_lnt_unknown_type( i_error = t225 i_qualified_name = t226 ).
                  DATA t227 TYPE REF TO zif_lnt_object.
                  CLEAR t227.
                  t223 = NEW zcl_lnt_ilookup_result( i_type_9913 = t224 i_object_19cd = t227 ).
                  t215 = t223.
                ELSE.
                  DATA t228 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t228.
                  DATA t229 TYPE REF TO zcl_lnt_table.
                  CLEAR t229.
                  DATA t230 TYPE REF TO zcl_lnt_table.
                  CLEAR t230.
                  DATA t231 TYPE REF TO zif_lnt_object.
                  CLEAR t231.
                  DATA t232 TYPE REF TO zif_lnt_registry.
                  DATA(t233) = CAST zcl_lnt_ddic( t135 ).
                  t232 = t233->reg.
                  DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t234.
                  DATA(t235) = abap_true.
                  IF t235 = abap_true.
                    DATA(t236) = |VIEW|.
                    DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t237->has = abap_true.
                    t237->value = t236.
                    t234 = t237.
                  ELSE.
                    DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t238.
                    t234 = t238.
                  ENDIF.
                  DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t239.
                  DATA(t240) = abap_true.
                  IF t240 = abap_true.
                    DATA t241 TYPE string.
                    DATA(t242) = CAST zlnt_runtime_opti_4ba3bdccd169( t208 ).
                    t241 = t242->value.
                    DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t243->has = abap_true.
                    t243->value = t241.
                    t239 = t243.
                  ELSE.
                    DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t244.
                    t239 = t244.
                  ENDIF.
                  t231 = t232->get_object( i_type_9913 = t234 i_name = t239 ).
                  DATA t245 TYPE REF TO object.
                  t245 = t231.
                  t230 ?= t245.
                  t229 = t230.
                  DATA t246 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t246.
                  DATA t247 TYPE abap_bool.
                  DATA(t248) = CAST zcl_lnt_table( t229 ).
                  t247 = xsdbool( t248 IS BOUND ).
                  IF t247 = abap_true.
                    DATA t249 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t250 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t251 TYPE REF TO zcl_lnt_table.
                    DATA(t252) = CAST zcl_lnt_table( t229 ).
                    t251 = t252.
                    DATA t253 TYPE REF TO zif_lnt_registry.
                    DATA(t254) = CAST zcl_lnt_ddic( t135 ).
                    t253 = t254->reg.
                    t250 = t251->parse_type( i_reg_f149 = t253 ).
                    DATA t255 TYPE REF TO zcl_lnt_table.
                    DATA(t256) = CAST zcl_lnt_table( t229 ).
                    t255 = t256.
                    t249 = NEW zcl_lnt_ilookup_result( i_type_9913 = t250 i_object_19cd = t255 ).
                    t246 = t249.
                  ELSE.
                    DATA t257 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t257.
                    DATA t258 TYPE abap_bool.
                    DATA t259 TYPE REF TO zif_lnt_registry.
                    DATA(t260) = CAST zcl_lnt_ddic( t135 ).
                    t259 = t260->reg.
                    DATA t261 TYPE string.
                    DATA(t262) = CAST zlnt_runtime_opti_4ba3bdccd169( t208 ).
                    t261 = t262->value.
                    t258 = t259->in_error_namespace( i_name = t261 ).
                    IF t258 = abap_true.
                      DATA t263 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t264 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t265 TYPE string.
                      DATA t266 TYPE string.
                      DATA(t267) = CAST zlnt_runtime_opti_4ba3bdccd169( t208 ).
                      t266 = t267->value.
                      DATA(t268) = | not found, lookupView|.
                      DATA(t269) = strlen( t266 ).
                      t265 = |{ t266 }{ t268 }|.
                      DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t270.
                      t264 = NEW zcl_lnt_unknown_type( i_error = t265 i_qualified_name = t270 ).
                      DATA t271 TYPE REF TO zif_lnt_object.
                      CLEAR t271.
                      t263 = NEW zcl_lnt_ilookup_result( i_type_9913 = t264 i_object_19cd = t271 ).
                      t257 = t263.
                    ELSE.
                      DATA t272 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t272.
                      DATA t273 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t273.
                      DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t274.
                      DATA(t275) = abap_true.
                      IF t275 = abap_true.
                        DATA t276 TYPE string.
                        DATA(t277) = CAST zlnt_runtime_opti_4ba3bdccd169( t208 ).
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
                      DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t280.
                      t273 = zcl_lnt_void_type=>get_db65( i_voided = t274 i_qualified_name = t280 ).
                      DATA t281 TYPE REF TO zif_lnt_object.
                      CLEAR t281.
                      t272 = NEW zcl_lnt_ilookup_result( i_type_9913 = t273 i_object_19cd = t281 ).
                      t257 = t272.
                    ENDIF.
                    t246 = t257.
                  ENDIF.
                  t228 = t246.
                  t215 = t228.
                ENDIF.
                t207 = t215.
                t202 = t207.
              ENDIF.
              t192 = t202.
              t181 = t192.
            ENDIF.
            t163 = t181.
            t150 = t163.
          ENDIF.
          t134 = t150.
          t133 = t134->type_cba0.
          t77 = t133.
        ENDIF.
      ELSE.
        DATA t282 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t283) = |todo, FORM STRUCTURES typing|.
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t284.
        t282 = NEW zcl_lnt_unknown_type( i_error = t283 i_qualified_name = t284 ).
        t77 = t282.
      ENDIF.
      DATA t285 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t285.
      DATA(t286) = CAST zcl_lnt_abstract_token( t21 ).
      DATA t287 TYPE string.
      DATA(t288) = CAST zcl_lnt_syntax_input( t2 ).
      t287 = t288->filename.
      DATA t289 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t290) = CAST zif_lnt_union_ea265422( t77 ).
      DATA t291 TYPE REF TO object.
      t291 = t290.
      t289 ?= t291.
      DATA t292 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t292.
      DATA(t293) = abap_true.
      IF t293 = abap_true.
        DATA t294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t296.
        t295 = t296.
        DATA(t297) = CAST zlnt_runtime_arra_8ecd6afe19e0( t295 ).
        DATA(t298) = |form_parameter|.
        APPEND t298 TO t297->items.
        DATA(t299) = CAST zlnt_runtime_arra_8ecd6afe19e0( t295 ).
        DATA(t300) = |form_parameter_structure|.
        APPEND t300 TO t299->items.
        DATA(t301) = CAST zlnt_runtime_arra_8ecd6afe19e0( t295 ).
        t294 = t301.
        t292 = t294.
      ELSE.
        DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t302.
        t292 = t302.
      ENDIF.
      DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t303.
      t285 = NEW zcl_lnt_typed_identifier( i_token = t286 i_filename = t287 i_type_9913 = t289 i_meta = t292 i_value = t303 ).
      result = t285.
      RETURN.
    ENDIF.
    DATA t304 TYPE abap_bool.
    DATA t305 TYPE abap_bool.
    DATA t306 TYPE i.
    DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t308 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t309 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t310) = CAST zcl_lnt_expression_node( t1 ).
    t309 = t310.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t312) = CAST zcl_lnt_abstract_node( t309 ).
    t311 = t312->children.
    t308 = t311.
    t307 ?= t308.
    t306 = lines( t307->items ).
    DATA(t313) = 1.
    t305 = xsdbool( t306 = t313 ).
    t304 = t305.
    IF t305 = abap_true.
      DATA t314 TYPE abap_bool.
      DATA(t315) = CAST zcl_lnt_abstract_token( t21 ).
      t314 = xsdbool( t315 IS BOUND ).
      t304 = t314.
    ENDIF.
    IF t304 = abap_true.
      DATA t316 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t316.
      DATA(t317) = CAST zcl_lnt_abstract_token( t21 ).
      DATA t318 TYPE string.
      DATA(t319) = CAST zcl_lnt_syntax_input( t2 ).
      t318 = t319->filename.
      DATA t320 TYPE REF TO zcl_lnt_any_type.
      DATA t321 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t321.
      t320 = zcl_lnt_any_type=>get_db65( i_input_967e = t321 ).
      DATA t322 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t322.
      DATA(t323) = abap_true.
      IF t323 = abap_true.
        DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t326.
        t325 = t326.
        DATA(t327) = CAST zlnt_runtime_arra_8ecd6afe19e0( t325 ).
        DATA(t328) = |form_parameter|.
        APPEND t328 TO t327->items.
        DATA(t329) = CAST zlnt_runtime_arra_8ecd6afe19e0( t325 ).
        t324 = t329.
        t322 = t324.
      ELSE.
        DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t330.
        t322 = t330.
      ENDIF.
      DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t331.
      t316 = NEW zcl_lnt_typed_identifier( i_token = t317 i_filename = t318 i_type_9913 = t320 i_meta = t322 i_value = t331 ).
      result = t316.
      RETURN.
    ENDIF.
    DATA t332 TYPE REF TO zcl_lnt_abstract_type.
    DATA t333 TYPE REF TO zcl_lnt_abstract_type.
    DATA t334 TYPE REF TO zcl_lnt_basic_types.
    DATA(t335) = CAST zcl_lnt_syntax_input( t2 ).
    t334 = NEW zcl_lnt_basic_types( i_input_967e = t335 ).
    DATA(t336) = CAST zcl_lnt_expression_node( t1 ).
    DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t337.
    t333 = t334->parse_type( i_node = t336 i_qualified_name = t337 ).
    t332 = t333.
    DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t341.
    DATA t342 TYPE REF TO zcl_lnt_expression_node.
    DATA t343 TYPE REF TO zcl_lnt_expression_node.
    DATA(t344) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t345) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    t343 = t344->find_first_expression( i_type_9913 = t345 ).
    t342 = t343.
    DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t346.
    DATA(t347) = VALUE abap_bool( ).
    DATA(t348) = CAST zcl_lnt_expression_node( t342 ).
    IF t348 IS INITIAL.
      t347 = abap_true.
    ENDIF.
    IF t347 = abap_true.
      DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t349.
      t346 = t349.
    ELSE.
      DATA t350 TYPE string.
      DATA t351 TYPE REF TO zcl_lnt_expression_node.
      DATA(t352) = CAST zcl_lnt_expression_node( t342 ).
      t351 = t352.
      t350 = t351->concat_tokens( ).
      DATA(t353) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t353->has = abap_true.
      t353->value = t350.
      t346 = t353.
    ENDIF.
    t341 = t346.
    t340 = t341.
    DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t354.
    DATA(t355) = VALUE abap_bool( ).
    DATA(t356) = CAST zlnt_runtime_opti_4ba3bdccd169( t340 ).
    IF t356 IS INITIAL.
      t355 = abap_true.
    ELSEIF t356->has = abap_false.
      t355 = abap_true.
    ENDIF.
    IF t355 = abap_true.
      DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t357.
      t354 = t357.
    ELSE.
      DATA t358 TYPE string.
      DATA t359 TYPE string.
      DATA(t360) = CAST zlnt_runtime_opti_4ba3bdccd169( t340 ).
      t359 = t360->value.
      DATA(t361) = strlen( t359 ).
      t358 = t359.
      IF t358 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t358 TO UPPER CASE.
      ELSE.
        t358 = zlnt_runtime_uppe_91169605024d=>full( t358 ).
      ENDIF.
      DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t362->has = abap_true.
      t362->value = t358.
      t354 = t362.
    ENDIF.
    t339 = t354.
    t338 = t339.
    DATA(t363) = VALUE abap_bool( ).
    DATA(t364) = VALUE abap_bool( ).
    DATA(t365) = VALUE abap_bool( ).
    DATA t366 TYPE REF TO zcl_lnt_expression_node.
    DATA t367 TYPE REF TO zcl_lnt_expression_node.
    DATA(t368) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t369) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d144_e73838d999aa ).
    t367 = t368->find_first_expression( i_type_9913 = t369 ).
    t366 = t367.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    t370 = t371.
    DATA(t372) = VALUE abap_bool( ).
    DATA(t373) = VALUE abap_bool( ).
    DATA(t374) = CAST zcl_lnt_expression_node( t366 ).
    IF t374 IS INITIAL.
      t373 = abap_true.
    ENDIF.
    t372 = xsdbool( t373 = abap_false ).
    t365 = t372.
    t364 = t365.
    IF t365 = abap_false.
      DATA(t375) = VALUE abap_bool( ).
      DATA t376 TYPE REF TO zcl_lnt_expression_node.
      DATA t377 TYPE REF TO zcl_lnt_expression_node.
      DATA(t378) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t379) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
      t377 = t378->find_first_expression( i_type_9913 = t379 ).
      t376 = t377.
      DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t381.
      t380 = t381.
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = VALUE abap_bool( ).
      DATA(t384) = CAST zcl_lnt_expression_node( t376 ).
      IF t384 IS INITIAL.
        t383 = abap_true.
      ENDIF.
      t382 = xsdbool( t383 = abap_false ).
      t375 = t382.
      t364 = t375.
    ENDIF.
    t363 = t364.
    DATA t385 TYPE abap_bool.
    DATA(t386) = t363.
    DATA(t387) = abap_false.
    t385 = xsdbool( t386 = t387 ).
    IF t385 = abap_true.
      DATA(t388) = VALUE abap_bool( ).
      DATA(t389) = VALUE abap_bool( ).
      DATA(t390) = CAST zlnt_runtime_opti_4ba3bdccd169( t338 ).
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t391.
      DATA(t392) = abap_true.
      IF t392 = abap_true.
        DATA(t393) = |C|.
        DATA(t394) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t394->has = abap_true.
        t394->value = t393.
        t391 = t394.
      ELSE.
        DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t395.
        t391 = t395.
      ENDIF.
      DATA(t396) = VALUE abap_bool( ).
      DATA(t397) = VALUE abap_bool( ).
      IF t390 IS BOUND.
        t396 = t390->has.
      ENDIF.
      IF t391 IS BOUND.
        t397 = t391->has.
      ENDIF.
      IF t396 = t397.
        IF t396 = abap_false.
          t389 = abap_true.
        ELSEIF t390->value = t391->value.
          t389 = abap_true.
        ENDIF.
      ENDIF.
      t388 = t389.
      IF t389 = abap_true.
        DATA t398 TYPE abap_bool.
        DATA(t399) = CAST zcl_lnt_abstract_type( t332 ).
        t398 = xsdbool( t399 IS BOUND AND t399 IS INSTANCE OF zcl_lnt_character_type ).
        t388 = t398.
      ENDIF.
      IF t388 = abap_true.
        DATA(t400) = CAST zcl_lnt_c_generic_type( zcl_lnt_c_generic_type=>get_db65( ) ).
        t332 = t400.
      ELSE.
        DATA(t401) = VALUE abap_bool( ).
        DATA(t402) = VALUE abap_bool( ).
        DATA(t403) = CAST zlnt_runtime_opti_4ba3bdccd169( t338 ).
        DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t404.
        DATA(t405) = abap_true.
        IF t405 = abap_true.
          DATA(t406) = |X|.
          DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t407->has = abap_true.
          t407->value = t406.
          t404 = t407.
        ELSE.
          DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t408.
          t404 = t408.
        ENDIF.
        DATA(t409) = VALUE abap_bool( ).
        DATA(t410) = VALUE abap_bool( ).
        IF t403 IS BOUND.
          t409 = t403->has.
        ENDIF.
        IF t404 IS BOUND.
          t410 = t404->has.
        ENDIF.
        IF t409 = t410.
          IF t409 = abap_false.
            t402 = abap_true.
          ELSEIF t403->value = t404->value.
            t402 = abap_true.
          ENDIF.
        ENDIF.
        t401 = t402.
        IF t402 = abap_true.
          DATA t411 TYPE abap_bool.
          DATA(t412) = CAST zcl_lnt_abstract_type( t332 ).
          t411 = xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_hex_type ).
          t401 = t411.
        ENDIF.
        IF t401 = abap_true.
          DATA(t413) = CAST zcl_lnt_x_generic_type( zcl_lnt_x_generic_type=>get_db65( ) ).
          t332 = t413.
        ELSE.
          DATA(t414) = VALUE abap_bool( ).
          DATA(t415) = VALUE abap_bool( ).
          DATA(t416) = CAST zlnt_runtime_opti_4ba3bdccd169( t338 ).
          DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t417.
          DATA(t418) = abap_true.
          IF t418 = abap_true.
            DATA(t419) = |P|.
            DATA(t420) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t420->has = abap_true.
            t420->value = t419.
            t417 = t420.
          ELSE.
            DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t421.
            t417 = t421.
          ENDIF.
          DATA(t422) = VALUE abap_bool( ).
          DATA(t423) = VALUE abap_bool( ).
          IF t416 IS BOUND.
            t422 = t416->has.
          ENDIF.
          IF t417 IS BOUND.
            t423 = t417->has.
          ENDIF.
          IF t422 = t423.
            IF t422 = abap_false.
              t415 = abap_true.
            ELSEIF t416->value = t417->value.
              t415 = abap_true.
            ENDIF.
          ENDIF.
          t414 = t415.
          IF t415 = abap_true.
            DATA t424 TYPE abap_bool.
            DATA(t425) = CAST zcl_lnt_abstract_type( t332 ).
            t424 = xsdbool( t425 IS BOUND AND t425 IS INSTANCE OF zcl_lnt_packed_type ).
            t414 = t424.
          ENDIF.
          IF t414 = abap_true.
            DATA(t426) = CAST zcl_lnt_p_generic_type( zcl_lnt_p_generic_type=>get_db65( ) ).
            t332 = t426.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t427 TYPE abap_bool.
    DATA t428 TYPE abap_bool.
    DATA(t429) = CAST zcl_lnt_abstract_token( t21 ).
    t428 = xsdbool( t429 IS BOUND ).
    t427 = t428.
    IF t428 = abap_true.
      DATA t430 TYPE abap_bool.
      DATA(t431) = CAST zcl_lnt_abstract_type( t332 ).
      t430 = xsdbool( t431 IS BOUND ).
      t427 = t430.
    ENDIF.
    IF t427 = abap_true.
      DATA t432 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t432.
      DATA(t433) = CAST zcl_lnt_abstract_token( t21 ).
      DATA t434 TYPE string.
      DATA(t435) = CAST zcl_lnt_syntax_input( t2 ).
      t434 = t435->filename.
      DATA t436 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t437) = CAST zcl_lnt_abstract_type( t332 ).
      t436 = t437.
      DATA t438 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t438.
      DATA(t439) = abap_true.
      IF t439 = abap_true.
        DATA t440 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t441 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t442 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t442.
        t441 = t442.
        DATA(t443) = CAST zlnt_runtime_arra_8ecd6afe19e0( t441 ).
        DATA(t444) = |form_parameter|.
        APPEND t444 TO t443->items.
        DATA(t445) = CAST zlnt_runtime_arra_8ecd6afe19e0( t441 ).
        t440 = t445.
        t438 = t440.
      ELSE.
        DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t446.
        t438 = t446.
      ENDIF.
      DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t447.
      t432 = NEW zcl_lnt_typed_identifier( i_token = t433 i_filename = t434 i_type_9913 = t436 i_meta = t438 i_value = t447 ).
      result = t432.
      RETURN.
    ENDIF.
    DATA t448 TYPE abap_bool.
    DATA(t449) = CAST zcl_lnt_abstract_token( t21 ).
    t448 = xsdbool( t449 IS BOUND ).
    IF t448 = abap_true.
      DATA t450 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t450.
      DATA(t451) = CAST zcl_lnt_abstract_token( t21 ).
      DATA t452 TYPE string.
      DATA(t453) = CAST zcl_lnt_syntax_input( t2 ).
      t452 = t453->filename.
      DATA t454 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t455) = |FormParam, todo|.
      DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t456.
      t454 = NEW zcl_lnt_unknown_type( i_error = t455 i_qualified_name = t456 ).
      DATA t457 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t457.
      DATA(t458) = abap_true.
      IF t458 = abap_true.
        DATA t459 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t460 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t461.
        t460 = t461.
        DATA(t462) = CAST zlnt_runtime_arra_8ecd6afe19e0( t460 ).
        DATA(t463) = |form_parameter|.
        APPEND t463 TO t462->items.
        DATA(t464) = CAST zlnt_runtime_arra_8ecd6afe19e0( t460 ).
        t459 = t464.
        t457 = t459.
      ELSE.
        DATA t465 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t465.
        t457 = t465.
      ENDIF.
      DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t466.
      t450 = NEW zcl_lnt_typed_identifier( i_token = t451 i_filename = t452 i_type_9913 = t454 i_meta = t457 i_value = t466 ).
      result = t450.
      RETURN.
    ENDIF.
    DATA t467 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    CLEAR t467.
    DATA t468 TYPE REF TO zcx_lnt_assert_error.
    CLEAR t468.
    DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t469.
    DATA(t470) = abap_true.
    IF t470 = abap_true.
      DATA(t471) = |FormParam, unexpected node|.
      DATA(t472) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t472->has = abap_true.
      t472->value = t471.
      t469 = t472.
    ELSE.
      DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t473.
      t469 = t473.
    ENDIF.
    t468 = NEW zcx_lnt_assert_error( i_message_26cb = t469 ).
    t467 = NEW #( ).
    t467->payload = t468.
    RAISE EXCEPTION t467.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d786_3f6916c1eafa.
  ENDMETHOD.
ENDCLASS.
