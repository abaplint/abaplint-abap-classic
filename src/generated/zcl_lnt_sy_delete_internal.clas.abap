* TS: src/abap/5_syntax/statements/delete_internal.ts:13:1 DeleteInternal
CLASS zcl_lnt_sy_delete_internal DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_delete_internal IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = t6.
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = t2.
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zcl_lnt_abstract_type.
    DATA t19 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    t21 = t22->find_direct_expression( i_type_9913 = t23 ).
    t20 = t21.
    DATA t24 TYPE abap_bool.
    DATA(t25) = t20.
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE string.
      DATA t27 TYPE string.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = t20.
      t28 = t29.
      t27 = t28->concat_tokens( ).
      t26 = t27.
      DATA t30 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t31 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t31.
      t30 = t31.
      DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_current_scope.
      DATA t35 TYPE REF TO zcl_lnt_current_scope.
      DATA(t36) = t2.
      t35 = t36->scope.
      t34 = t35.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA(t40) = t26.
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t40.
        t38 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t38 = t42.
      ENDIF.
      t37 = t38.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t46) = t37.
      t45 = t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      t47 = t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t45.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ELSEIF t50->has = abap_false.
        t49 = abap_true.
      ENDIF.
      t44 = t49.
      IF t44 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t51.
        t43 = t51.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t57) = t34.
        t56 = t57->current.
        t55 = t56.
        DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = t55.
        IF t60 IS INITIAL.
          t59 = abap_true.
        ENDIF.
        IF t59 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t61.
          t58 = t61.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t64) = t55.
          t63 = t64.
          DATA t65 TYPE string.
          DATA(t66) = t37.
          t65 = t66->value.
          t62 = t63->find_variable( i_name = t65 ).
          t58 = t62.
        ENDIF.
        t54 = t58.
        t53 = t54.
        DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t67.
        DATA t68 TYPE abap_bool.
        DATA(t69) = t53.
        t68 = xsdbool( t69 IS BOUND ).
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t70.
          DATA(t71) = abap_true.
          IF t71 = abap_true.
            DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t73) = t53.
            t72 = t73.
            t70 = t72.
          ELSE.
            DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t74.
            t70 = t74.
          ENDIF.
          t67 = t70.
        ELSE.
          DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t75.
          DATA(t76) = t34.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          DATA(t78) = abap_true.
          IF t78 = abap_true.
            DATA t79 TYPE string.
            DATA(t80) = t37.
            t79 = t80->value.
            DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t81->has = abap_true.
            t81->value = t79.
            t77 = t81.
          ELSE.
            DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t82.
            t77 = t82.
          ENDIF.
          t75 = t76->find_type_pool_constant( i_name = t77 ).
          t67 = t75.
        ENDIF.
        t52 = t67.
        t43 = t52.
      ENDIF.
      t33 = t43.
      t32 = t33.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t87) = t32.
      t86 = t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      t88 = t89.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = t86.
      IF t91 IS INITIAL.
        t90 = abap_true.
      ENDIF.
      t85 = t90.
      t84 = t85.
      IF t85 = abap_true.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE i.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t96 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t97) = t1.
        t96 = t97.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t99) = t96.
        t98 = t99->children.
        t95 = t98.
        t94 ?= t95.
        t93 = lines( t94->items ).
        DATA(t100) = 5.
        t92 = xsdbool( t93 = t100 ).
        t84 = t92.
      ENDIF.
      t83 = t84.
      IF t84 = abap_true.
        DATA(t101) = VALUE abap_bool( ).
        DATA t102 TYPE string.
        DATA t103 TYPE string.
        DATA t104 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t107 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t108) = t1.
        t107 = t108.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t110) = t107.
        t109 = t110->children.
        t106 = t109.
        t105 ?= t106.
        DATA t111 TYPE REF TO object.
        CLEAR t111.
        READ TABLE t105->items INDEX 3 INTO t111.
        t104 ?= t111.
        t103 = t104->concat_tokens( ).
        DATA(t112) = strlen( t103 ).
        t102 = t103.
        IF t102 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t102 TO UPPER CASE.
        ELSE.
          t102 = zlnt_runtime_uppe_91169605024d=>full( t102 ).
        ENDIF.
        DATA(t113) = |FROM|.
        t101 = xsdbool( t102 = t113 ).
        t83 = t101.
      ENDIF.
      IF t83 = abap_true.
        DATA t114 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t114.
        DATA t115 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_ddic.
        DATA t117 TYPE REF TO zcl_lnt_ddic.
        DATA t118 TYPE REF TO zcl_lnt_current_scope.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        DATA(t120) = t2.
        t119 = t120->scope.
        t118 = t119.
        DATA t121 TYPE REF TO zcl_lnt_ddic.
        DATA t122 TYPE REF TO zif_lnt_registry.
        DATA(t123) = t118.
        t122 = t123->reg.
        t121 = NEW zcl_lnt_ddic( i_reg_f149 = t122 ).
        t117 = t121.
        t116 = t117.
        DATA t124 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t124.
        DATA(t125) = VALUE abap_bool( ).
        DATA(t126) = t116.
        IF t126 IS INITIAL.
          t125 = abap_true.
        ENDIF.
        IF t125 = abap_true.
          DATA t127 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t127.
          t124 = t127.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_ddic.
          DATA(t130) = t116.
          t129 = t130.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t133) = abap_true.
          IF t133 = abap_true.
            DATA(t134) = t26.
            DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t135->has = abap_true.
            t135->value = t134.
            t132 = t135.
          ELSE.
            DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t136.
            t132 = t136.
          ENDIF.
          t131 = t132.
          DATA t137 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t137.
          DATA(t138) = VALUE abap_bool( ).
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t140) = t131.
          t139 = t140.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
            DATA t145 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t146 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t147) = |undefined, lookupTableOrView|.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            t146 = NEW zcl_lnt_unknown_type( i_error = t147 i_qualified_name = t148 ).
            DATA t149 TYPE REF TO zif_lnt_object.
            CLEAR t149.
            t145 = NEW zcl_lnt_ilookup_result( i_type_9913 = t146 i_object_19cd = t149 ).
            t137 = t145.
          ELSE.
            DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t150.
            DATA t151 TYPE REF TO zcl_lnt_table.
            CLEAR t151.
            DATA t152 TYPE REF TO zcl_lnt_table.
            CLEAR t152.
            DATA t153 TYPE REF TO zif_lnt_object.
            CLEAR t153.
            DATA t154 TYPE REF TO zif_lnt_registry.
            DATA(t155) = t129.
            t154 = t155->reg.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            DATA(t157) = abap_true.
            IF t157 = abap_true.
              DATA(t158) = |TABL|.
              DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t159->has = abap_true.
              t159->value = t158.
              t156 = t159.
            ELSE.
              DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t160.
              t156 = t160.
            ENDIF.
            DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t161.
            DATA(t162) = abap_true.
            IF t162 = abap_true.
              DATA t163 TYPE string.
              DATA(t164) = t131.
              t163 = t164->value.
              DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t165->has = abap_true.
              t165->value = t163.
              t161 = t165.
            ELSE.
              DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t166.
              t161 = t166.
            ENDIF.
            t153 = t154->get_object( i_type_9913 = t156 i_name = t161 ).
            DATA t167 TYPE REF TO object.
            t167 = t153.
            t152 ?= t167.
            t151 = t152.
            DATA t168 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t168.
            DATA t169 TYPE abap_bool.
            DATA(t170) = t151.
            t169 = xsdbool( t170 IS BOUND ).
            IF t169 = abap_true.
              DATA t171 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t172 TYPE REF TO zcl_lnt_abstract_type.
              DATA t173 TYPE REF TO zcl_lnt_table.
              DATA(t174) = t151.
              t173 = t174.
              DATA t175 TYPE REF TO zif_lnt_registry.
              DATA(t176) = t129.
              t175 = t176->reg.
              t172 = t173->parse_type( i_reg_f149 = t175 ).
              DATA t177 TYPE REF TO zcl_lnt_table.
              DATA(t178) = t151.
              t177 = t178.
              t171 = NEW zcl_lnt_ilookup_result( i_type_9913 = t172 i_object_19cd = t177 ).
              t168 = t171.
            ELSE.
              DATA t179 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t179.
              DATA t180 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t180.
              DATA t181 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t181.
              DATA(t182) = t129.
              DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t183.
              DATA(t184) = abap_true.
              IF t184 = abap_true.
                DATA t185 TYPE string.
                DATA(t186) = t131.
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
              t181 = t182->lookup_ddls( i_name = t183 ).
              t180 = t181.
              DATA t189 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t189.
              DATA t190 TYPE abap_bool.
              DATA(t191) = t180.
              t190 = xsdbool( t191 IS BOUND ).
              IF t190 = abap_true.
                DATA t192 TYPE REF TO zcl_lnt_ilookup_result.
                DATA(t193) = t180.
                t192 = t193.
                t189 = t192.
              ELSE.
                DATA t194 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t194.
                DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t195.
                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t196.
                DATA(t197) = abap_true.
                IF t197 = abap_true.
                  DATA t198 TYPE string.
                  DATA(t199) = t131.
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
                t195 = t196.
                DATA t202 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t202.
                DATA(t203) = VALUE abap_bool( ).
                DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t205) = t195.
                t204 = t205.
                DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t207.
                t206 = t207.
                DATA(t208) = VALUE abap_bool( ).
                DATA(t209) = t204.
                IF t209 IS INITIAL.
                  t208 = abap_true.
                ELSEIF t209->has = abap_false.
                  t208 = abap_true.
                ENDIF.
                t203 = t208.
                IF t203 = abap_true.
                  DATA t210 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t211 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t212) = |undefined, lookupView|.
                  DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t213.
                  t211 = NEW zcl_lnt_unknown_type( i_error = t212 i_qualified_name = t213 ).
                  DATA t214 TYPE REF TO zif_lnt_object.
                  CLEAR t214.
                  t210 = NEW zcl_lnt_ilookup_result( i_type_9913 = t211 i_object_19cd = t214 ).
                  t202 = t210.
                ELSE.
                  DATA t215 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t215.
                  DATA t216 TYPE REF TO zcl_lnt_table.
                  CLEAR t216.
                  DATA t217 TYPE REF TO zcl_lnt_table.
                  CLEAR t217.
                  DATA t218 TYPE REF TO zif_lnt_object.
                  CLEAR t218.
                  DATA t219 TYPE REF TO zif_lnt_registry.
                  DATA(t220) = t129.
                  t219 = t220->reg.
                  DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t221.
                  DATA(t222) = abap_true.
                  IF t222 = abap_true.
                    DATA(t223) = |VIEW|.
                    DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t224->has = abap_true.
                    t224->value = t223.
                    t221 = t224.
                  ELSE.
                    DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t225.
                    t221 = t225.
                  ENDIF.
                  DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t226.
                  DATA(t227) = abap_true.
                  IF t227 = abap_true.
                    DATA t228 TYPE string.
                    DATA(t229) = t195.
                    t228 = t229->value.
                    DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t230->has = abap_true.
                    t230->value = t228.
                    t226 = t230.
                  ELSE.
                    DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t231.
                    t226 = t231.
                  ENDIF.
                  t218 = t219->get_object( i_type_9913 = t221 i_name = t226 ).
                  DATA t232 TYPE REF TO object.
                  t232 = t218.
                  t217 ?= t232.
                  t216 = t217.
                  DATA t233 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t233.
                  DATA t234 TYPE abap_bool.
                  DATA(t235) = t216.
                  t234 = xsdbool( t235 IS BOUND ).
                  IF t234 = abap_true.
                    DATA t236 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t237 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t238 TYPE REF TO zcl_lnt_table.
                    DATA(t239) = t216.
                    t238 = t239.
                    DATA t240 TYPE REF TO zif_lnt_registry.
                    DATA(t241) = t129.
                    t240 = t241->reg.
                    t237 = t238->parse_type( i_reg_f149 = t240 ).
                    DATA t242 TYPE REF TO zcl_lnt_table.
                    DATA(t243) = t216.
                    t242 = t243.
                    t236 = NEW zcl_lnt_ilookup_result( i_type_9913 = t237 i_object_19cd = t242 ).
                    t233 = t236.
                  ELSE.
                    DATA t244 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t244.
                    DATA t245 TYPE abap_bool.
                    DATA t246 TYPE REF TO zif_lnt_registry.
                    DATA(t247) = t129.
                    t246 = t247->reg.
                    DATA t248 TYPE string.
                    DATA(t249) = t195.
                    t248 = t249->value.
                    t245 = t246->in_error_namespace( i_name = t248 ).
                    IF t245 = abap_true.
                      DATA t250 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t251 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t252 TYPE string.
                      DATA t253 TYPE string.
                      DATA(t254) = t195.
                      t253 = t254->value.
                      DATA(t255) = | not found, lookupView|.
                      DATA(t256) = strlen( t253 ).
                      t252 = |{ t253 }{ t255 }|.
                      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t257.
                      t251 = NEW zcl_lnt_unknown_type( i_error = t252 i_qualified_name = t257 ).
                      DATA t258 TYPE REF TO zif_lnt_object.
                      CLEAR t258.
                      t250 = NEW zcl_lnt_ilookup_result( i_type_9913 = t251 i_object_19cd = t258 ).
                      t244 = t250.
                    ELSE.
                      DATA t259 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t259.
                      DATA t260 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t260.
                      DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t261.
                      DATA(t262) = abap_true.
                      IF t262 = abap_true.
                        DATA t263 TYPE string.
                        DATA(t264) = t195.
                        t263 = t264->value.
                        DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t265->has = abap_true.
                        t265->value = t263.
                        t261 = t265.
                      ELSE.
                        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t266.
                        t261 = t266.
                      ENDIF.
                      DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t267.
                      t260 = zcl_lnt_void_type=>get_db65( i_voided = t261 i_qualified_name = t267 ).
                      DATA t268 TYPE REF TO zif_lnt_object.
                      CLEAR t268.
                      t259 = NEW zcl_lnt_ilookup_result( i_type_9913 = t260 i_object_19cd = t268 ).
                      t244 = t259.
                    ENDIF.
                    t233 = t244.
                  ENDIF.
                  t215 = t233.
                  t202 = t215.
                ENDIF.
                t194 = t202.
                t189 = t194.
              ENDIF.
              t179 = t189.
              t168 = t179.
            ENDIF.
            t150 = t168.
            t137 = t150.
          ENDIF.
          t128 = t137.
          t124 = t128.
        ENDIF.
        t115 = t124.
        t114 = t115.
        DATA(t269) = VALUE abap_bool( ).
        DATA t270 TYPE REF TO zif_lnt_object.
        CLEAR t270.
        DATA t271 TYPE REF TO zif_lnt_object.
        CLEAR t271.
        DATA t272 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t273 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t274) = t114.
        t273 = t274.
        t272 = t273.
        DATA t275 TYPE REF TO zif_lnt_object.
        CLEAR t275.
        DATA(t276) = VALUE abap_bool( ).
        DATA(t277) = t272.
        IF t277 IS INITIAL.
          t276 = abap_true.
        ENDIF.
        IF t276 = abap_true.
          DATA t278 TYPE REF TO zif_lnt_object.
          CLEAR t278.
          t275 = t278.
        ELSE.
          DATA t279 TYPE REF TO zif_lnt_object.
          DATA(t280) = t272.
          t279 = t280->object_a393.
          t275 = t279.
        ENDIF.
        t271 = t275.
        t270 = t271.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        t281 = t282.
        DATA(t283) = VALUE abap_bool( ).
        DATA(t284) = VALUE abap_bool( ).
        DATA(t285) = t270.
        IF t285 IS INITIAL.
          t284 = abap_true.
        ENDIF.
        t283 = xsdbool( t284 = abap_false ).
        t269 = t283.
        IF t269 = abap_true.
          DATA t286 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t286.
          DATA(t287) = abap_true.
          IF t287 = abap_true.
            DATA t288 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t289) = t114.
            t288 = t289.
            t286 = t288.
          ELSE.
            DATA t290 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t290.
            t286 = t290.
          ENDIF.
          t30 = t286.
          DATA t291 TYPE REF TO zif_lnt_ddic_references.
          DATA t292 TYPE REF TO zcl_lnt_current_scope.
          DATA t293 TYPE REF TO zcl_lnt_current_scope.
          DATA(t294) = t2.
          t293 = t294->scope.
          t292 = t293.
          DATA t295 TYPE REF TO zif_lnt_ddic_references.
          DATA t296 TYPE REF TO zif_lnt_registry.
          DATA(t297) = t292.
          t296 = t297->reg.
          t295 = t296->get_ddic_references( ).
          t291 = t295.
          DATA t298 TYPE REF TO zif_lnt_object.
          DATA t299 TYPE REF TO zcl_lnt_current_scope.
          DATA t300 TYPE REF TO zcl_lnt_current_scope.
          DATA(t301) = t2.
          t300 = t301->scope.
          t299 = t300.
          DATA t302 TYPE REF TO zif_lnt_object.
          DATA(t303) = t299.
          t302 = t303->parent_obj.
          t298 = t302.
          DATA t304 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t304.
          DATA(t305) = abap_true.
          IF t305 = abap_true.
            DATA t306 TYPE REF TO zcl_lnt_iobject_and_token.
            DATA t307 TYPE REF TO zif_lnt_object.
            DATA t308 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t309) = t30.
            t308 = t309.
            t307 = t308->object_a393.
            DATA t310 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t310.
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t311.
            t306 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t307 i_token = t310 i_filename = t311 ).
            t304 = t306.
          ELSE.
            DATA t312 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t312.
            t304 = t312.
          ENDIF.
          t291->add_using( i_obj_1ed0 = t298 i_using = t304 ).
        ENDIF.
      ENDIF.
      DATA(t313) = VALUE abap_bool( ).
      DATA t314 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t315) = t30.
      t314 = t315.
      DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t317.
      t316 = t317.
      DATA(t318) = VALUE abap_bool( ).
      DATA(t319) = t314.
      IF t319 IS INITIAL.
        t318 = abap_true.
      ENDIF.
      t313 = t318.
      IF t313 = abap_true.
        DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t320.
        DATA t321 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t321.
        DATA t322 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t323 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t324 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA t325 TYPE REF TO zif_lnt_configuration.
        DATA t326 TYPE REF TO zif_lnt_registry.
        DATA t327 TYPE REF TO zcl_lnt_current_scope.
        DATA t328 TYPE REF TO zcl_lnt_current_scope.
        DATA(t329) = t2.
        t328 = t329->scope.
        t327 = t328.
        DATA t330 TYPE REF TO zif_lnt_registry.
        DATA(t331) = t327.
        t330 = t331->reg.
        t326 = t330.
        t325 = t326->get_config( ).
        t324 = t325->get_syntax_setttings( ).
        t323 = t324->ambigious_voids.
        t322 = t323.
        DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t332.
        DATA t333 TYPE abap_bool.
        DATA(t334) = t322.
        t333 = xsdbool( t334 IS BOUND ).
        IF t333 = abap_true.
          DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t336) = t322.
          t335 = t336.
          t332 = t335.
        ELSE.
          DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t337.
          t332 = t337.
        ENDIF.
        t321 = t332.
        t320 = t321.
        DATA(t338) = VALUE abap_bool( ).
        DATA t339 TYPE abap_bool.
        DATA(t340) = abap_false.
        t339 = t340.
        DATA(t341) = t320.
        DATA(t342) = VALUE string( ).
        LOOP AT t341->items INTO t342.
          DATA(t343) = VALUE abap_bool( ).
          DATA t344 TYPE string.
          DATA(t345) = t342.
          DATA(t346) = strlen( t345 ).
          t344 = t345.
          IF t344 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t344 TO UPPER CASE.
          ELSE.
            t344 = zlnt_runtime_uppe_91169605024d=>full( t344 ).
          ENDIF.
          DATA t347 TYPE string.
          DATA(t348) = t26.
          DATA(t349) = strlen( t348 ).
          t347 = t348.
          IF t347 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t347 TO UPPER CASE.
          ELSE.
            t347 = zlnt_runtime_uppe_91169605024d=>full( t347 ).
          ENDIF.
          t343 = xsdbool( t344 = t347 ).
          IF t343 = abap_true.
            DATA(t350) = abap_true.
            t339 = t350.
            EXIT.
          ENDIF.
        ENDLOOP.
        DATA(t351) = t339.
        t338 = t351.
        IF t338 = abap_true.
          DATA t352 TYPE REF TO zcl_lnt_void_type.
          CLEAR t352.
          DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t353.
          DATA(t354) = abap_true.
          IF t354 = abap_true.
            DATA(t355) = t26.
            DATA(t356) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t356->has = abap_true.
            t356->value = t355.
            t353 = t356.
          ELSE.
            DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t357.
            t353 = t357.
          ENDIF.
          DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t358.
          t352 = zcl_lnt_void_type=>get_db65( i_voided = t353 i_qualified_name = t358 ).
          t18 = t352.
        ELSE.
          DATA t359 TYPE REF TO zcl_lnt_abstract_type.
          DATA t360 TYPE REF TO zcl_lnt_expression_node.
          DATA(t361) = t20.
          t360 = t361.
          DATA(t362) = t2.
          t359 = zcl_lnt_sy_target=>run_syntax( i_node = t360 i_input_967e = t362 ).
          t18 = t359.
        ENDIF.
        DATA(t363) = VALUE abap_bool( ).
        DATA(t364) = VALUE abap_bool( ).
        DATA(t365) = VALUE abap_bool( ).
        DATA(t366) = VALUE abap_bool( ).
        DATA(t367) = VALUE abap_bool( ).
        DATA t368 TYPE REF TO zcl_lnt_abstract_token.
        DATA t369 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t370) = t1.
        DATA(t371) = |TABLE|.
        t369 = t370->find_direct_token_by_text( i_text = t371 ).
        t368 = t369.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        t372 = t373.
        DATA(t374) = VALUE abap_bool( ).
        DATA(t375) = t368.
        IF t375 IS INITIAL.
          t374 = abap_true.
        ENDIF.
        t367 = t374.
        t366 = t367.
        IF t367 = abap_true.
          DATA(t376) = VALUE abap_bool( ).
          DATA t377 TYPE REF TO zcl_lnt_abstract_token.
          DATA t378 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t379) = t1.
          DATA(t380) = |ADJACENT|.
          t378 = t379->find_direct_token_by_text( i_text = t380 ).
          t377 = t378.
          DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t382.
          t381 = t382.
          DATA(t383) = VALUE abap_bool( ).
          DATA(t384) = t377.
          IF t384 IS INITIAL.
            t383 = abap_true.
          ENDIF.
          t376 = t383.
          t366 = t376.
        ENDIF.
        t365 = t366.
        IF t366 = abap_true.
          DATA t385 TYPE abap_bool.
          DATA t386 TYPE abap_bool.
          DATA t387 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t388) = t1.
          DATA(t389) = |FROM|.
          t387 = t388->find_direct_token_by_text( i_text = t389 ).
          t386 = xsdbool( t387 IS BOUND ).
          t385 = t386.
          IF t386 = abap_false.
            DATA t390 TYPE abap_bool.
            DATA t391 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t392) = t1.
            DATA(t393) = |INDEX|.
            t391 = t392->find_direct_token_by_text( i_text = t393 ).
            t390 = xsdbool( t391 IS BOUND ).
            t385 = t390.
          ENDIF.
          t365 = t385.
        ENDIF.
        t364 = t365.
        IF t365 = abap_true.
          DATA t394 TYPE abap_bool.
          DATA(t395) = t18.
          t394 = xsdbool( t395 IS BOUND AND t395 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t364 = t394.
        ENDIF.
        t363 = t364.
        IF t364 = abap_true.
          DATA(t396) = VALUE abap_bool( ).
          DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t397.
          DATA t398 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t399 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t400) = t18.
          t399 ?= t400.
          t398 = t399.
          DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t401.
          DATA t402 TYPE REF TO zcl_lnt_itable_key.
          DATA t403 TYPE REF TO zcl_lnt_itable_key.
          DATA t404 TYPE REF TO zcl_lnt_itable_options.
          DATA(t405) = t398.
          t404 = t405->options.
          t403 = t404->primary_key.
          t402 = t403.
          DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t406.
          DATA(t407) = VALUE abap_bool( ).
          DATA(t408) = t402.
          IF t408 IS INITIAL.
            t407 = abap_true.
          ENDIF.
          IF t407 = abap_true.
            DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t409.
            t406 = t409.
          ELSE.
            DATA t410 TYPE string.
            DATA t411 TYPE REF TO zcl_lnt_itable_key.
            DATA(t412) = t402.
            t411 = t412.
            t410 = t411->type_cba0.
            DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t413->has = abap_true.
            t413->value = t410.
            t406 = t413.
          ENDIF.
          t401 = t406.
          t397 = t401.
          DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t414.
          DATA(t415) = abap_true.
          IF t415 = abap_true.
            DATA(t416) = |HASHED|.
            DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t417->has = abap_true.
            t417->value = t416.
            t414 = t417.
          ELSE.
            DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t418.
            t414 = t418.
          ENDIF.
          DATA(t419) = VALUE abap_bool( ).
          DATA(t420) = VALUE abap_bool( ).
          IF t397 IS BOUND.
            t419 = t397->has.
          ENDIF.
          IF t414 IS BOUND.
            t420 = t414->has.
          ENDIF.
          IF t419 = t420.
            IF t419 = abap_false.
              t396 = abap_true.
            ELSEIF t397->value = t414->value.
              t396 = abap_true.
            ENDIF.
          ENDIF.
          t363 = t396.
        ENDIF.
        IF t363 = abap_true.
          DATA t421 TYPE string.
          DATA(t422) = |Implicit or explicit index operation on hashed table is not |.
          t422 = t422 && |possible|.
          t421 = t422.
          DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t424) = t2.
          t423 = t424->issues.
          DATA t425 TYPE REF TO zcl_lnt_issue.
          DATA(t426) = t2.
          DATA t427 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t428) = t1.
          t427 = t428->get_first_token( ).
          DATA(t429) = t421.
          DATA t430 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t430.
          t425 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t426 i_token = t427 i_message_26cb = t429 i_fix = t430 ).
          APPEND t425 TO t423->items.
          RETURN.
        ENDIF.
        DATA t431 TYPE abap_bool.
        DATA(t432) = t18.
        t431 = xsdbool( t432 IS BOUND AND t432 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t431 = abap_true.
          DATA t433 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t433.
          DATA(t434) = abap_true.
          IF t434 = abap_true.
            DATA t435 TYPE REF TO zcl_lnt_abstract_type.
            DATA t436 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t437 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t438) = t18.
            t437 ?= t438.
            t436 = t437.
            DATA t439 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t440) = t436.
            t439 = t440->row_type.
            t435 = t439.
            t433 = t435.
          ELSE.
            DATA t441 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t441.
            t433 = t441.
          ENDIF.
          t18 = t433.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t443) = t1.
    DATA(t444) = zlnt_runtime_desc_78196487750d=>zlnt_member_d126_c330c74d8713.
    t442 = t443->find_direct_expressions( i_type_9913 = t444 ).
    DATA t445 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t445.
    DATA t446 TYPE REF TO object.
    CLEAR t446.
    LOOP AT t442->items INTO t446.
      t445 ?= t446.
      DATA(t447) = t445.
      DATA(t448) = t2.
      DATA(t449) = t18.
      DATA t450 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t450.
      zcl_lnt_sy_component_compare=>run_syntax( i_node = t447 i_input_967e = t448 i_left_type = t449 i_right_type = t450 ).
    ENDLOOP.
    DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t452) = t1.
    DATA(t453) = zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56.
    t451 = t452->find_direct_expressions( i_type_9913 = t453 ).
    DATA t454 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t454.
    DATA t455 TYPE REF TO object.
    CLEAR t455.
    LOOP AT t451->items INTO t455.
      t454 ?= t455.
      DATA(t456) = t454.
      DATA(t457) = t2.
      DATA(t458) = t18.
      DATA t459 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t459.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t456 i_input_967e = t457 i_left_type = t458 i_right_type = t459 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d867_aefe8b3813e5.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
