* TS: src/abap/5_syntax/statements/class_implementation.ts:12:1 ClassImplementation
CLASS zcl_lnt_sy_clss_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_clss_implmnttn IMPLEMENTATION.
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
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA(t9) = CAST zcl_lnt_object_oriented( t3 ).
    DATA(t10) = CAST zcl_lnt_statement_node( t1 ).
    t8 = t9->find_class_name( i_node = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_current_scope.
    DATA t12 TYPE REF TO zcl_lnt_current_scope.
    DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
    t12 = t13->scope.
    t11 = t12.
    DATA t14 TYPE string.
    DATA(t15) = t7.
    t14 = t15.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = CAST zcl_lnt_statement_node( t1 ).
    t19 = t20->get_first_token( ).
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA(t22) = CAST zcl_lnt_abstract_token( t18 ).
    t21 = t22->start.
    t17 = t21.
    t16 = t17.
    DATA t23 TYPE string.
    DATA t24 TYPE string.
    DATA(t25) = CAST zcl_lnt_syntax_input( t2 ).
    t24 = t25->filename.
    t23 = t24.
    DATA t26 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t27 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t28) = |class_implementation|.
    DATA(t29) = t14.
    DATA(t30) = t23.
    DATA(t31) = CAST zcl_lnt_position( t16 ).
    DATA t32 TYPE REF TO zcl_lnt_position.
    CLEAR t32.
    t27 = NEW zcl_lnt_iscope_identifier( i_stype = t28 i_sname = t29 i_filename = t30 i_start = t31 i_end = t32 ).
    t26 = t27.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t36) = CAST zcl_lnt_current_scope( t11 ).
    t35 = t36->current.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    t37 = t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = CAST zcl_lnt_spaghetti_scope_node( t34 ).
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    t33 = t39.
    IF t33 = abap_true.
      DATA(t41) = CAST zcl_lnt_current_scope( t11 ).
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t45) = CAST zcl_lnt_iscope_identifier( t26 ).
        DATA t46 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t46.
        t44 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t45 i_parent = t46 ).
        t42 = t44.
      ELSE.
        DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t47.
        t42 = t47.
      ENDIF.
      t41->current = t42.
    ELSE.
      DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t51) = CAST zcl_lnt_current_scope( t11 ).
      t50 = t51->current.
      t49 = t50.
      t48 = t49.
      DATA(t52) = CAST zcl_lnt_current_scope( t11 ).
      DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t55.
        DATA(t56) = CAST zcl_lnt_iscope_identifier( t26 ).
        DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t57.
        DATA(t58) = abap_true.
        IF t58 = abap_true.
          DATA(t59) = CAST zcl_lnt_spaghetti_scope_node( t48 ).
          t57 = t59.
        ELSE.
          DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t60.
          t57 = t60.
        ENDIF.
        t55 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t56 i_parent = t57 ).
        t53 = t55.
      ELSE.
        DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t61.
        t53 = t61.
      ENDIF.
      t52->current = t53.
      DATA(t62) = CAST zcl_lnt_spaghetti_scope_node( t48 ).
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t65) = CAST zcl_lnt_current_scope( t11 ).
      t64 = t65->current.
      t63 = t64.
      t62->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t63 ).
    ENDIF.
    DATA t66 TYPE REF TO zif_lnt_class_definition.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_class_definition.
    CLEAR t67.
    DATA t68 TYPE REF TO zcl_lnt_current_scope.
    DATA t69 TYPE REF TO zcl_lnt_current_scope.
    DATA(t70) = CAST zcl_lnt_syntax_input( t2 ).
    t69 = t70->scope.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t72.
    DATA(t73) = abap_true.
    IF t73 = abap_true.
      DATA(t74) = t7.
      DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t75->has = abap_true.
      t75->value = t74.
      t72 = t75.
    ELSE.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      t72 = t76.
    ENDIF.
    t71 = t72.
    DATA t77 TYPE REF TO zif_lnt_class_definition.
    CLEAR t77.
    DATA(t78) = VALUE abap_bool( ).
    DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t71 ).
    t79 = t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    t81 = t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA(t84) = CAST zlnt_runtime_opti_4ba3bdccd169( t79 ).
    IF t84 IS INITIAL.
      t83 = abap_true.
    ELSEIF t84->has = abap_false.
      t83 = abap_true.
    ENDIF.
    t78 = t83.
    IF t78 = abap_true.
      DATA t85 TYPE REF TO zif_lnt_class_definition.
      CLEAR t85.
      t77 = t85.
    ELSE.
      DATA t86 TYPE REF TO zif_lnt_class_definition.
      CLEAR t86.
      DATA t87 TYPE REF TO zif_lnt_class_definition.
      CLEAR t87.
      DATA t88 TYPE REF TO zif_lnt_class_definition.
      CLEAR t88.
      DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t91) = CAST zcl_lnt_current_scope( t68 ).
      t90 = t91->current.
      t89 = t90.
      DATA t92 TYPE REF TO zif_lnt_class_definition.
      CLEAR t92.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = CAST zcl_lnt_spaghetti_scope_node( t89 ).
      IF t94 IS INITIAL.
        t93 = abap_true.
      ENDIF.
      IF t93 = abap_true.
        DATA t95 TYPE REF TO zif_lnt_class_definition.
        CLEAR t95.
        t92 = t95.
      ELSE.
        DATA t96 TYPE REF TO zif_lnt_class_definition.
        DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t98) = CAST zcl_lnt_spaghetti_scope_node( t89 ).
        t97 = t98.
        DATA t99 TYPE string.
        DATA(t100) = CAST zlnt_runtime_opti_4ba3bdccd169( t71 ).
        t99 = t100->value.
        t96 = t97->find_class_definition( i_name = t99 ).
        t92 = t96.
      ENDIF.
      t88 = t92.
      t87 = t88.
      DATA t101 TYPE REF TO zif_lnt_class_definition.
      CLEAR t101.
      DATA t102 TYPE abap_bool.
      DATA(t103) = CAST zif_lnt_class_definition( t87 ).
      t102 = xsdbool( t103 IS BOUND ).
      IF t102 = abap_true.
        DATA t104 TYPE REF TO zif_lnt_class_definition.
        CLEAR t104.
        DATA(t105) = abap_true.
        IF t105 = abap_true.
          DATA t106 TYPE REF TO zif_lnt_class_definition.
          DATA(t107) = CAST zif_lnt_class_definition( t87 ).
          t106 = t107.
          t104 = t106.
        ELSE.
          DATA t108 TYPE REF TO zif_lnt_class_definition.
          CLEAR t108.
          t104 = t108.
        ENDIF.
        t101 = t104.
      ELSE.
        DATA t109 TYPE REF TO zif_lnt_class_definition.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_class.
        CLEAR t110.
        DATA t111 TYPE REF TO zcl_lnt_class.
        CLEAR t111.
        DATA t112 TYPE REF TO zif_lnt_object.
        CLEAR t112.
        DATA t113 TYPE REF TO zif_lnt_registry.
        DATA(t114) = CAST zcl_lnt_current_scope( t68 ).
        t113 = t114->reg.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = |CLAS|.
          DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t118->has = abap_true.
          t118->value = t117.
          t115 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          t115 = t119.
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = abap_true.
        IF t121 = abap_true.
          DATA t122 TYPE string.
          DATA(t123) = CAST zlnt_runtime_opti_4ba3bdccd169( t71 ).
          t122 = t123->value.
          DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t124->has = abap_true.
          t124->value = t122.
          t120 = t124.
        ELSE.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          t120 = t125.
        ENDIF.
        t112 = t113->get_object( i_type_9913 = t115 i_name = t120 ).
        DATA t126 TYPE REF TO object.
        t126 = t112.
        t111 ?= t126.
        t110 = t111.
        DATA t127 TYPE REF TO zif_lnt_class_definition.
        CLEAR t127.
        DATA t128 TYPE abap_bool.
        DATA(t129) = CAST zcl_lnt_class( t110 ).
        t128 = xsdbool( t129 IS BOUND ).
        IF t128 = abap_true.
          DATA t130 TYPE REF TO zif_lnt_class_definition.
          DATA t131 TYPE REF TO zcl_lnt_class.
          DATA(t132) = CAST zcl_lnt_class( t110 ).
          t131 = t132.
          t130 = t131->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t127 = t130.
        ELSE.
          DATA t133 TYPE REF TO zif_lnt_class_definition.
          CLEAR t133.
          t127 = t133.
        ENDIF.
        t109 = t127.
        t101 = t109.
      ENDIF.
      t86 = t101.
      t77 = t86.
    ENDIF.
    t67 = t77.
    t66 = t67.
    DATA(t134) = VALUE abap_bool( ).
    DATA t135 TYPE REF TO zif_lnt_class_definition.
    DATA(t136) = CAST zif_lnt_class_definition( t66 ).
    t135 = t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    t137 = t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = CAST zif_lnt_class_definition( t135 ).
    IF t140 IS INITIAL.
      t139 = abap_true.
    ENDIF.
    t134 = t139.
    IF t134 = abap_true.
      DATA t141 TYPE string.
      DATA t142 TYPE string.
      DATA t143 TYPE string.
      DATA(t144) = |Class definition for "|.
      DATA(t145) = t7.
      DATA(t146) = strlen( t144 ).
      t143 = |{ t144 }{ t145 }|.
      DATA(t147) = |" not found|.
      DATA(t148) = strlen( t143 ).
      t142 = |{ t143 }{ t147 }|.
      t141 = t142.
      DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t150) = CAST zcl_lnt_syntax_input( t2 ).
      t149 = t150->issues.
      DATA t151 TYPE REF TO zcl_lnt_issue.
      DATA(t152) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t153 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t154) = CAST zcl_lnt_statement_node( t1 ).
      t153 = t154->get_first_token( ).
      DATA(t155) = t141.
      DATA t156 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t156.
      t151 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t152 i_token = t153 i_message_26cb = t155 i_fix = t156 ).
      APPEND t151 TO t149->items.
      RETURN.
    ENDIF.
    DATA t157 TYPE REF TO zif_lnt_type_definitions.
    DATA t158 TYPE REF TO zif_lnt_type_definitions.
    DATA t159 TYPE REF TO zif_lnt_class_definition.
    DATA(t160) = CAST zif_lnt_class_definition( t66 ).
    t159 = t160.
    t158 = t159->get_type_definitions( ).
    t157 = t158.
    DATA(t161) = VALUE abap_bool( ).
    DATA t162 TYPE REF TO zif_lnt_type_definitions.
    DATA(t163) = CAST zif_lnt_type_definitions( t157 ).
    t162 = t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    t164 = t165.
    DATA(t166) = VALUE abap_bool( ).
    DATA(t167) = VALUE abap_bool( ).
    DATA(t168) = CAST zif_lnt_type_definitions( t162 ).
    IF t168 IS INITIAL.
      t167 = abap_true.
    ENDIF.
    t166 = xsdbool( t167 = abap_false ).
    t161 = t166.
    IF t161 = abap_true.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t170) = CAST zif_lnt_type_definitions( t157 ).
      t169 = t170->get_all( ).
      DATA t171 TYPE REF TO zcl_lnt_type_definitions_entry.
      CLEAR t171.
      DATA t172 TYPE REF TO object.
      CLEAR t172.
      LOOP AT t169->items INTO t172.
        t171 ?= t172.
        DATA t173 TYPE REF TO zcl_lnt_current_scope.
        DATA t174 TYPE REF TO zcl_lnt_current_scope.
        DATA(t175) = CAST zcl_lnt_syntax_input( t2 ).
        t174 = t175->scope.
        t173 = t174.
        DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t176.
        DATA t177 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t177.
        DATA(t178) = abap_true.
        IF t178 = abap_true.
          DATA t179 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t180) = CAST zcl_lnt_type_definitions_entry( t171 ).
          t179 = t180->type_cba0.
          t177 = t179.
        ELSE.
          DATA t181 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t181.
          t177 = t181.
        ENDIF.
        t176 = t177.
        DATA(t182) = VALUE abap_bool( ).
        DATA t183 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t184) = CAST zcl_lnt_typed_identifier( t176 ).
        t183 = t184.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        t185 = t186.
        DATA(t187) = VALUE abap_bool( ).
        DATA(t188) = CAST zcl_lnt_typed_identifier( t183 ).
        IF t188 IS INITIAL.
          t187 = abap_true.
        ENDIF.
        t182 = t187.
        IF t182 = abap_true.
        ELSE.
          DATA(t189) = CAST zcl_lnt_current_scope( t173 ).
          DATA(t190) = VALUE string( ).
          DATA t191 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t193) = CAST zcl_lnt_typed_identifier( t176 ).
          t192 = t193.
          t191 = t192.
          DATA(t194) = VALUE string( ).
          DATA t195 TYPE string.
          DATA t196 TYPE string.
          DATA t197 TYPE REF TO zcl_lnt_abstract_token.
          DATA t198 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t199) = CAST zcl_lnt_fi_identifier( t191 ).
          t198 = t199->token.
          t197 = t198.
          DATA t200 TYPE string.
          DATA(t201) = CAST zcl_lnt_abstract_token( t197 ).
          t200 = t201->str.
          t196 = t200.
          t195 = t196.
          DATA(t202) = VALUE abap_bool( ).
          DATA(t203) = VALUE string( ).
          DATA(t204) = t195.
          DATA(t205) = 0.
          DATA(t206) = 1.
          DATA(t207) = strlen( t204 ).
          IF t205 < 0.
            t205 = t205 + t207.
            IF t205 < 0.
              t205 = 0.
            ENDIF.
          ENDIF.
          IF t205 > t207 OR t206 <= 0.
            CLEAR t203.
          ELSE.
            IF t206 > t207 - t205.
              t206 = t207 - t205.
            ENDIF.
            t203 = t204+t205(t206).
          ENDIF.
          DATA(t208) = |!|.
          t202 = xsdbool( t203 = t208 ).
          IF t202 = abap_true.
            DATA(t209) = VALUE string( ).
            DATA t210 TYPE string.
            DATA(t211) = t195.
            t210 = t211.
            DATA(t212) = VALUE string( ).
            DATA(t213) = t210.
            DATA(t214) = 1.
            DATA t215 TYPE i.
            DATA(t216) = t210.
            DATA(t217) = strlen( t216 ).
            t215 = t217.
            DATA(t218) = strlen( t213 ).
            IF t214 < 0.
              t214 = t214 + t218.
              IF t214 < 0.
                t214 = 0.
              ENDIF.
            ENDIF.
            IF t214 > t218 OR t215 <= 0.
              CLEAR t212.
            ELSE.
              IF t215 > t218 - t214.
                t215 = t218 - t214.
              ENDIF.
              t212 = t213+t214(t215).
            ENDIF.
            t209 = t212.
            t195 = t209.
          ENDIF.
          DATA(t219) = t195.
          t194 = t219.
          t190 = t194.
          DATA t220 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t220.
          DATA(t221) = abap_true.
          IF t221 = abap_true.
            DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t223) = CAST zcl_lnt_typed_identifier( t176 ).
            t222 = t223.
            t220 = t222.
          ELSE.
            DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t224.
            t220 = t224.
          ENDIF.
          t189->add_type_named( i_name = t190 i_type_9913 = t220 ).
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t225 TYPE REF TO zif_lnt_class_definition.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_class_definition.
    CLEAR t226.
    DATA t227 TYPE REF TO zcl_lnt_current_scope.
    DATA t228 TYPE REF TO zcl_lnt_current_scope.
    DATA(t229) = CAST zcl_lnt_syntax_input( t2 ).
    t228 = t229->scope.
    t227 = t228.
    DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t232 TYPE REF TO zif_lnt_class_definition.
    DATA(t233) = CAST zif_lnt_class_definition( t66 ).
    t232 = t233.
    t231 = t232->get_super_class( ).
    t230 = t231.
    DATA t234 TYPE REF TO zif_lnt_class_definition.
    CLEAR t234.
    DATA(t235) = VALUE abap_bool( ).
    DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t237) = CAST zlnt_runtime_opti_4ba3bdccd169( t230 ).
    t236 = t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    t238 = t239.
    DATA(t240) = VALUE abap_bool( ).
    DATA(t241) = CAST zlnt_runtime_opti_4ba3bdccd169( t236 ).
    IF t241 IS INITIAL.
      t240 = abap_true.
    ELSEIF t241->has = abap_false.
      t240 = abap_true.
    ENDIF.
    t235 = t240.
    IF t235 = abap_true.
      DATA t242 TYPE REF TO zif_lnt_class_definition.
      CLEAR t242.
      t234 = t242.
    ELSE.
      DATA t243 TYPE REF TO zif_lnt_class_definition.
      CLEAR t243.
      DATA t244 TYPE REF TO zif_lnt_class_definition.
      CLEAR t244.
      DATA t245 TYPE REF TO zif_lnt_class_definition.
      CLEAR t245.
      DATA t246 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t247 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t248) = CAST zcl_lnt_current_scope( t227 ).
      t247 = t248->current.
      t246 = t247.
      DATA t249 TYPE REF TO zif_lnt_class_definition.
      CLEAR t249.
      DATA(t250) = VALUE abap_bool( ).
      DATA(t251) = CAST zcl_lnt_spaghetti_scope_node( t246 ).
      IF t251 IS INITIAL.
        t250 = abap_true.
      ENDIF.
      IF t250 = abap_true.
        DATA t252 TYPE REF TO zif_lnt_class_definition.
        CLEAR t252.
        t249 = t252.
      ELSE.
        DATA t253 TYPE REF TO zif_lnt_class_definition.
        DATA t254 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t255) = CAST zcl_lnt_spaghetti_scope_node( t246 ).
        t254 = t255.
        DATA t256 TYPE string.
        DATA(t257) = CAST zlnt_runtime_opti_4ba3bdccd169( t230 ).
        t256 = t257->value.
        t253 = t254->find_class_definition( i_name = t256 ).
        t249 = t253.
      ENDIF.
      t245 = t249.
      t244 = t245.
      DATA t258 TYPE REF TO zif_lnt_class_definition.
      CLEAR t258.
      DATA t259 TYPE abap_bool.
      DATA(t260) = CAST zif_lnt_class_definition( t244 ).
      t259 = xsdbool( t260 IS BOUND ).
      IF t259 = abap_true.
        DATA t261 TYPE REF TO zif_lnt_class_definition.
        CLEAR t261.
        DATA(t262) = abap_true.
        IF t262 = abap_true.
          DATA t263 TYPE REF TO zif_lnt_class_definition.
          DATA(t264) = CAST zif_lnt_class_definition( t244 ).
          t263 = t264.
          t261 = t263.
        ELSE.
          DATA t265 TYPE REF TO zif_lnt_class_definition.
          CLEAR t265.
          t261 = t265.
        ENDIF.
        t258 = t261.
      ELSE.
        DATA t266 TYPE REF TO zif_lnt_class_definition.
        CLEAR t266.
        DATA t267 TYPE REF TO zcl_lnt_class.
        CLEAR t267.
        DATA t268 TYPE REF TO zcl_lnt_class.
        CLEAR t268.
        DATA t269 TYPE REF TO zif_lnt_object.
        CLEAR t269.
        DATA t270 TYPE REF TO zif_lnt_registry.
        DATA(t271) = CAST zcl_lnt_current_scope( t227 ).
        t270 = t271->reg.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA(t273) = abap_true.
        IF t273 = abap_true.
          DATA(t274) = |CLAS|.
          DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t275->has = abap_true.
          t275->value = t274.
          t272 = t275.
        ELSE.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          t272 = t276.
        ENDIF.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA(t278) = abap_true.
        IF t278 = abap_true.
          DATA t279 TYPE string.
          DATA(t280) = CAST zlnt_runtime_opti_4ba3bdccd169( t230 ).
          t279 = t280->value.
          DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t281->has = abap_true.
          t281->value = t279.
          t277 = t281.
        ELSE.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t282.
          t277 = t282.
        ENDIF.
        t269 = t270->get_object( i_type_9913 = t272 i_name = t277 ).
        DATA t283 TYPE REF TO object.
        t283 = t269.
        t268 ?= t283.
        t267 = t268.
        DATA t284 TYPE REF TO zif_lnt_class_definition.
        CLEAR t284.
        DATA t285 TYPE abap_bool.
        DATA(t286) = CAST zcl_lnt_class( t267 ).
        t285 = xsdbool( t286 IS BOUND ).
        IF t285 = abap_true.
          DATA t287 TYPE REF TO zif_lnt_class_definition.
          DATA t288 TYPE REF TO zcl_lnt_class.
          DATA(t289) = CAST zcl_lnt_class( t267 ).
          t288 = t289.
          t287 = t288->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t284 = t287.
        ELSE.
          DATA t290 TYPE REF TO zif_lnt_class_definition.
          CLEAR t290.
          t284 = t290.
        ENDIF.
        t266 = t284.
        t258 = t266.
      ENDIF.
      t243 = t258.
      t234 = t243.
    ENDIF.
    t226 = t234.
    t225 = t226.
    DATA t291 TYPE abap_bool.
    DATA(t292) = CAST zif_lnt_class_definition( t225 ).
    t291 = xsdbool( t292 IS BOUND ).
    IF t291 = abap_true.
      DATA t293 TYPE REF TO zcl_lnt_current_scope.
      DATA t294 TYPE REF TO zcl_lnt_current_scope.
      DATA(t295) = CAST zcl_lnt_syntax_input( t2 ).
      t294 = t295->scope.
      t293 = t294.
      DATA t296 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t296.
      DATA t297 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t297.
      DATA(t298) = abap_true.
      IF t298 = abap_true.
        DATA t299 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t300 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t301 TYPE REF TO zcl_lnt_position.
        DATA(t302) = CONV int8( 1 ).
        DATA(t303) = CONV int8( 1 ).
        t301 = NEW zcl_lnt_position( i_row = t302 i_col = t303 ).
        DATA(t304) = |super|.
        t300 = NEW zcl_lnt_lx_identifier( i_start = t301 i_str = t304 ).
        DATA(t305) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t306 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t307 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t308 TYPE REF TO zif_lnt_class_definition.
        DATA(t309) = CAST zif_lnt_class_definition( t225 ).
        t308 = t309.
        t307 ?= t308.
        DATA t310 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t310.
        t306 = NEW zcl_lnt_object_reference_type( i_id = t307 i_extra = t310 ).
        DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t311.
        DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t312.
        t299 = NEW zcl_lnt_typed_identifier( i_token = t300 i_filename = t305 i_type_9913 = t306 i_meta = t311 i_value = t312 ).
        t297 = t299.
      ELSE.
        DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t313.
        t297 = t313.
      ENDIF.
      t296 = t297.
      DATA(t314) = VALUE abap_bool( ).
      DATA t315 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t316) = CAST zcl_lnt_typed_identifier( t296 ).
      t315 = t316.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      t317 = t318.
      DATA(t319) = VALUE abap_bool( ).
      DATA(t320) = CAST zcl_lnt_typed_identifier( t315 ).
      IF t320 IS INITIAL.
        t319 = abap_true.
      ENDIF.
      t314 = t319.
      IF t314 = abap_true.
      ELSE.
        DATA(t321) = CAST zcl_lnt_current_scope( t293 ).
        DATA(t322) = VALUE string( ).
        DATA t323 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t324 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t325) = CAST zcl_lnt_typed_identifier( t296 ).
        t324 = t325.
        t323 = t324.
        DATA(t326) = VALUE string( ).
        DATA t327 TYPE string.
        DATA t328 TYPE string.
        DATA t329 TYPE REF TO zcl_lnt_abstract_token.
        DATA t330 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t331) = CAST zcl_lnt_fi_identifier( t323 ).
        t330 = t331->token.
        t329 = t330.
        DATA t332 TYPE string.
        DATA(t333) = CAST zcl_lnt_abstract_token( t329 ).
        t332 = t333->str.
        t328 = t332.
        t327 = t328.
        DATA(t334) = VALUE abap_bool( ).
        DATA(t335) = VALUE string( ).
        DATA(t336) = t327.
        DATA(t337) = 0.
        DATA(t338) = 1.
        DATA(t339) = strlen( t336 ).
        IF t337 < 0.
          t337 = t337 + t339.
          IF t337 < 0.
            t337 = 0.
          ENDIF.
        ENDIF.
        IF t337 > t339 OR t338 <= 0.
          CLEAR t335.
        ELSE.
          IF t338 > t339 - t337.
            t338 = t339 - t337.
          ENDIF.
          t335 = t336+t337(t338).
        ENDIF.
        DATA(t340) = |!|.
        t334 = xsdbool( t335 = t340 ).
        IF t334 = abap_true.
          DATA(t341) = VALUE string( ).
          DATA t342 TYPE string.
          DATA(t343) = t327.
          t342 = t343.
          DATA(t344) = VALUE string( ).
          DATA(t345) = t342.
          DATA(t346) = 1.
          DATA t347 TYPE i.
          DATA(t348) = t342.
          DATA(t349) = strlen( t348 ).
          t347 = t349.
          DATA(t350) = strlen( t345 ).
          IF t346 < 0.
            t346 = t346 + t350.
            IF t346 < 0.
              t346 = 0.
            ENDIF.
          ENDIF.
          IF t346 > t350 OR t347 <= 0.
            CLEAR t344.
          ELSE.
            IF t347 > t350 - t346.
              t347 = t350 - t346.
            ENDIF.
            t344 = t345+t346(t347).
          ENDIF.
          t341 = t344.
          t327 = t341.
        ENDIF.
        DATA(t351) = t327.
        t326 = t351.
        t322 = t326.
        DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t353) = CAST zcl_lnt_typed_identifier( t296 ).
        t352 = t353.
        t321->add_named_identifier( i_name = t322 i_identifier = t352 ).
      ENDIF.
    ELSE.
      DATA t354 TYPE REF TO zcl_lnt_current_scope.
      DATA t355 TYPE REF TO zcl_lnt_current_scope.
      DATA(t356) = CAST zcl_lnt_syntax_input( t2 ).
      t355 = t356->scope.
      t354 = t355.
      DATA t357 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t357.
      DATA t358 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t358.
      DATA(t359) = abap_true.
      IF t359 = abap_true.
        DATA t360 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t360.
        DATA t361 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t362 TYPE REF TO zcl_lnt_position.
        DATA(t363) = CONV int8( 1 ).
        DATA(t364) = CONV int8( 1 ).
        t362 = NEW zcl_lnt_position( i_row = t363 i_col = t364 ).
        DATA(t365) = |super|.
        t361 = NEW zcl_lnt_lx_identifier( i_start = t362 i_str = t365 ).
        DATA(t366) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t367 TYPE REF TO zcl_lnt_void_type.
        CLEAR t367.
        DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t368.
        DATA(t369) = abap_true.
        IF t369 = abap_true.
          DATA(t370) = |noSuperClass|.
          DATA(t371) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t371->has = abap_true.
          t371->value = t370.
          t368 = t371.
        ELSE.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t372.
          t368 = t372.
        ENDIF.
        DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t373.
        t367 = zcl_lnt_void_type=>get_db65( i_voided = t368 i_qualified_name = t373 ).
        DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t374.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        t360 = NEW zcl_lnt_typed_identifier( i_token = t361 i_filename = t366 i_type_9913 = t367 i_meta = t374 i_value = t375 ).
        t358 = t360.
      ELSE.
        DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t376.
        t358 = t376.
      ENDIF.
      t357 = t358.
      DATA(t377) = VALUE abap_bool( ).
      DATA t378 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t379) = CAST zcl_lnt_typed_identifier( t357 ).
      t378 = t379.
      DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t381.
      t380 = t381.
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = CAST zcl_lnt_typed_identifier( t378 ).
      IF t383 IS INITIAL.
        t382 = abap_true.
      ENDIF.
      t377 = t382.
      IF t377 = abap_true.
      ELSE.
        DATA(t384) = CAST zcl_lnt_current_scope( t354 ).
        DATA(t385) = VALUE string( ).
        DATA t386 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t387 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t388) = CAST zcl_lnt_typed_identifier( t357 ).
        t387 = t388.
        t386 = t387.
        DATA(t389) = VALUE string( ).
        DATA t390 TYPE string.
        DATA t391 TYPE string.
        DATA t392 TYPE REF TO zcl_lnt_abstract_token.
        DATA t393 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t394) = CAST zcl_lnt_fi_identifier( t386 ).
        t393 = t394->token.
        t392 = t393.
        DATA t395 TYPE string.
        DATA(t396) = CAST zcl_lnt_abstract_token( t392 ).
        t395 = t396->str.
        t391 = t395.
        t390 = t391.
        DATA(t397) = VALUE abap_bool( ).
        DATA(t398) = VALUE string( ).
        DATA(t399) = t390.
        DATA(t400) = 0.
        DATA(t401) = 1.
        DATA(t402) = strlen( t399 ).
        IF t400 < 0.
          t400 = t400 + t402.
          IF t400 < 0.
            t400 = 0.
          ENDIF.
        ENDIF.
        IF t400 > t402 OR t401 <= 0.
          CLEAR t398.
        ELSE.
          IF t401 > t402 - t400.
            t401 = t402 - t400.
          ENDIF.
          t398 = t399+t400(t401).
        ENDIF.
        DATA(t403) = |!|.
        t397 = xsdbool( t398 = t403 ).
        IF t397 = abap_true.
          DATA(t404) = VALUE string( ).
          DATA t405 TYPE string.
          DATA(t406) = t390.
          t405 = t406.
          DATA(t407) = VALUE string( ).
          DATA(t408) = t405.
          DATA(t409) = 1.
          DATA t410 TYPE i.
          DATA(t411) = t405.
          DATA(t412) = strlen( t411 ).
          t410 = t412.
          DATA(t413) = strlen( t408 ).
          IF t409 < 0.
            t409 = t409 + t413.
            IF t409 < 0.
              t409 = 0.
            ENDIF.
          ENDIF.
          IF t409 > t413 OR t410 <= 0.
            CLEAR t407.
          ELSE.
            IF t410 > t413 - t409.
              t410 = t413 - t409.
            ENDIF.
            t407 = t408+t409(t410).
          ENDIF.
          t404 = t407.
          t390 = t404.
        ENDIF.
        DATA(t414) = t390.
        t389 = t414.
        t385 = t389.
        DATA t415 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t416) = CAST zcl_lnt_typed_identifier( t357 ).
        t415 = t416.
        t384->add_named_identifier( i_name = t385 i_identifier = t415 ).
      ENDIF.
    ENDIF.
    DATA t417 TYPE REF TO zcl_lnt_current_scope.
    DATA t418 TYPE REF TO zcl_lnt_current_scope.
    DATA(t419) = CAST zcl_lnt_syntax_input( t2 ).
    t418 = t419->scope.
    t417 = t418.
    DATA t420 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t420.
    DATA t421 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t421.
    DATA(t422) = abap_true.
    IF t422 = abap_true.
      DATA t423 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t424 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t425 TYPE REF TO zcl_lnt_position.
      DATA(t426) = CONV int8( 1 ).
      DATA(t427) = CONV int8( 1 ).
      t425 = NEW zcl_lnt_position( i_row = t426 i_col = t427 ).
      DATA(t428) = |me|.
      t424 = NEW zcl_lnt_lx_identifier( i_start = t425 i_str = t428 ).
      DATA(t429) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t430 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t431 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t432 TYPE REF TO zif_lnt_class_definition.
      DATA(t433) = CAST zif_lnt_class_definition( t66 ).
      t432 = t433.
      t431 ?= t432.
      DATA t434 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t434.
      t430 = NEW zcl_lnt_object_reference_type( i_id = t431 i_extra = t434 ).
      DATA t435 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t435.
      DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t436.
      t423 = NEW zcl_lnt_typed_identifier( i_token = t424 i_filename = t429 i_type_9913 = t430 i_meta = t435 i_value = t436 ).
      t421 = t423.
    ELSE.
      DATA t437 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t437.
      t421 = t437.
    ENDIF.
    t420 = t421.
    DATA(t438) = VALUE abap_bool( ).
    DATA t439 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t440) = CAST zcl_lnt_typed_identifier( t420 ).
    t439 = t440.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t442.
    t441 = t442.
    DATA(t443) = VALUE abap_bool( ).
    DATA(t444) = CAST zcl_lnt_typed_identifier( t439 ).
    IF t444 IS INITIAL.
      t443 = abap_true.
    ENDIF.
    t438 = t443.
    IF t438 = abap_true.
    ELSE.
      DATA(t445) = CAST zcl_lnt_current_scope( t417 ).
      DATA(t446) = VALUE string( ).
      DATA t447 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t448 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t449) = CAST zcl_lnt_typed_identifier( t420 ).
      t448 = t449.
      t447 = t448.
      DATA(t450) = VALUE string( ).
      DATA t451 TYPE string.
      DATA t452 TYPE string.
      DATA t453 TYPE REF TO zcl_lnt_abstract_token.
      DATA t454 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t455) = CAST zcl_lnt_fi_identifier( t447 ).
      t454 = t455->token.
      t453 = t454.
      DATA t456 TYPE string.
      DATA(t457) = CAST zcl_lnt_abstract_token( t453 ).
      t456 = t457->str.
      t452 = t456.
      t451 = t452.
      DATA(t458) = VALUE abap_bool( ).
      DATA(t459) = VALUE string( ).
      DATA(t460) = t451.
      DATA(t461) = 0.
      DATA(t462) = 1.
      DATA(t463) = strlen( t460 ).
      IF t461 < 0.
        t461 = t461 + t463.
        IF t461 < 0.
          t461 = 0.
        ENDIF.
      ENDIF.
      IF t461 > t463 OR t462 <= 0.
        CLEAR t459.
      ELSE.
        IF t462 > t463 - t461.
          t462 = t463 - t461.
        ENDIF.
        t459 = t460+t461(t462).
      ENDIF.
      DATA(t464) = |!|.
      t458 = xsdbool( t459 = t464 ).
      IF t458 = abap_true.
        DATA(t465) = VALUE string( ).
        DATA t466 TYPE string.
        DATA(t467) = t451.
        t466 = t467.
        DATA(t468) = VALUE string( ).
        DATA(t469) = t466.
        DATA(t470) = 1.
        DATA t471 TYPE i.
        DATA(t472) = t466.
        DATA(t473) = strlen( t472 ).
        t471 = t473.
        DATA(t474) = strlen( t469 ).
        IF t470 < 0.
          t470 = t470 + t474.
          IF t470 < 0.
            t470 = 0.
          ENDIF.
        ENDIF.
        IF t470 > t474 OR t471 <= 0.
          CLEAR t468.
        ELSE.
          IF t471 > t474 - t470.
            t471 = t474 - t470.
          ENDIF.
          t468 = t469+t470(t471).
        ENDIF.
        t465 = t468.
        t451 = t465.
      ENDIF.
      DATA(t475) = t451.
      t450 = t475.
      t446 = t450.
      DATA t476 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t477) = CAST zcl_lnt_typed_identifier( t420 ).
      t476 = t477.
      t445->add_named_identifier( i_name = t446 i_identifier = t476 ).
    ENDIF.
    DATA(t478) = CAST zcl_lnt_object_oriented( t3 ).
    DATA t479 TYPE REF TO zif_lnt_class_definition.
    DATA(t480) = CAST zif_lnt_class_definition( t66 ).
    t479 = t480.
    t478->add_aliased_attributes( i_class_definition_ad05 = t479 ).
    DATA(t481) = CAST zcl_lnt_object_oriented( t3 ).
    DATA t482 TYPE REF TO zif_lnt_class_definition.
    DATA(t483) = CAST zif_lnt_class_definition( t66 ).
    t482 = t483.
    t481->add_aliased_types( i_class_definition_ad05 = t482 ).
    DATA t484 TYPE REF TO zif_lnt_attributes.
    DATA t485 TYPE REF TO zif_lnt_attributes.
    DATA t486 TYPE REF TO zif_lnt_class_definition.
    DATA(t487) = CAST zif_lnt_class_definition( t66 ).
    t486 = t487.
    t485 = t486->get_attributes( ).
    t484 = t485.
    DATA(t488) = VALUE abap_bool( ).
    DATA t489 TYPE REF TO zif_lnt_attributes.
    DATA(t490) = CAST zif_lnt_attributes( t484 ).
    t489 = t490.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t492.
    t491 = t492.
    DATA(t493) = VALUE abap_bool( ).
    DATA(t494) = VALUE abap_bool( ).
    DATA(t495) = CAST zif_lnt_attributes( t489 ).
    IF t495 IS INITIAL.
      t494 = abap_true.
    ENDIF.
    t493 = xsdbool( t494 = abap_false ).
    t488 = t493.
    IF t488 = abap_true.
      DATA t496 TYPE REF TO zcl_lnt_current_scope.
      DATA(t497) = CAST zcl_lnt_syntax_input( t2 ).
      t496 = t497->scope.
      DATA t498 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t499) = CAST zif_lnt_attributes( t484 ).
      t498 = t499->get_constants( ).
      t496->add_list( i_identifiers = t498 ).
      DATA t500 TYPE REF TO zcl_lnt_current_scope.
      DATA(t501) = CAST zcl_lnt_syntax_input( t2 ).
      t500 = t501->scope.
      DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t503) = CAST zif_lnt_attributes( t484 ).
      t502 = t503->get_static( ).
      t500->add_list( i_identifiers = t502 ).
      DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t505) = CAST zif_lnt_attributes( t484 ).
      t504 = t505->get_instance( ).
      DATA t506 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t506.
      DATA t507 TYPE REF TO object.
      CLEAR t507.
      LOOP AT t504->items INTO t507.
        t506 ?= t507.
        DATA t508 TYPE REF TO zcl_lnt_current_scope.
        DATA t509 TYPE REF TO zcl_lnt_current_scope.
        DATA(t510) = CAST zcl_lnt_syntax_input( t2 ).
        t509 = t510->scope.
        t508 = t509.
        DATA t511 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t512) = CAST zcl_lnt_class_attribute( t506 ).
        t511 = t512.
        DATA(t513) = VALUE abap_bool( ).
        DATA t514 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t515) = CAST zcl_lnt_typed_identifier( t511 ).
        t514 = t515.
        DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t517.
        t516 = t517.
        DATA(t518) = VALUE abap_bool( ).
        DATA(t519) = CAST zcl_lnt_typed_identifier( t514 ).
        IF t519 IS INITIAL.
          t518 = abap_true.
        ENDIF.
        t513 = t518.
        IF t513 = abap_true.
        ELSE.
          DATA(t520) = CAST zcl_lnt_current_scope( t508 ).
          DATA(t521) = VALUE string( ).
          DATA t522 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t523 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t524) = CAST zcl_lnt_typed_identifier( t511 ).
          t523 = t524.
          t522 = t523.
          DATA(t525) = VALUE string( ).
          DATA t526 TYPE string.
          DATA t527 TYPE string.
          DATA t528 TYPE REF TO zcl_lnt_abstract_token.
          DATA t529 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t530) = CAST zcl_lnt_fi_identifier( t522 ).
          t529 = t530->token.
          t528 = t529.
          DATA t531 TYPE string.
          DATA(t532) = CAST zcl_lnt_abstract_token( t528 ).
          t531 = t532->str.
          t527 = t531.
          t526 = t527.
          DATA(t533) = VALUE abap_bool( ).
          DATA(t534) = VALUE string( ).
          DATA(t535) = t526.
          DATA(t536) = 0.
          DATA(t537) = 1.
          DATA(t538) = strlen( t535 ).
          IF t536 < 0.
            t536 = t536 + t538.
            IF t536 < 0.
              t536 = 0.
            ENDIF.
          ENDIF.
          IF t536 > t538 OR t537 <= 0.
            CLEAR t534.
          ELSE.
            IF t537 > t538 - t536.
              t537 = t538 - t536.
            ENDIF.
            t534 = t535+t536(t537).
          ENDIF.
          DATA(t539) = |!|.
          t533 = xsdbool( t534 = t539 ).
          IF t533 = abap_true.
            DATA(t540) = VALUE string( ).
            DATA t541 TYPE string.
            DATA(t542) = t526.
            t541 = t542.
            DATA(t543) = VALUE string( ).
            DATA(t544) = t541.
            DATA(t545) = 1.
            DATA t546 TYPE i.
            DATA(t547) = t541.
            DATA(t548) = strlen( t547 ).
            t546 = t548.
            DATA(t549) = strlen( t544 ).
            IF t545 < 0.
              t545 = t545 + t549.
              IF t545 < 0.
                t545 = 0.
              ENDIF.
            ENDIF.
            IF t545 > t549 OR t546 <= 0.
              CLEAR t543.
            ELSE.
              IF t546 > t549 - t545.
                t546 = t549 - t545.
              ENDIF.
              t543 = t544+t545(t546).
            ENDIF.
            t540 = t543.
            t526 = t540.
          ENDIF.
          DATA(t550) = t526.
          t525 = t550.
          t521 = t525.
          DATA t551 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t551.
          DATA(t552) = abap_true.
          IF t552 = abap_true.
            DATA t553 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t554) = CAST zcl_lnt_typed_identifier( t511 ).
            t553 = t554.
            t551 = t553.
          ELSE.
            DATA t555 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t555.
            t551 = t555.
          ENDIF.
          t520->add_extra_like_type_named( i_name = t521 i_type_9913 = t551 ).
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t556 TYPE REF TO zcl_lnt_object_oriented.
    DATA(t557) = CAST zcl_lnt_object_oriented( t3 ).
    t556 = t557.
    DATA t558 TYPE REF TO zif_lnt_class_definition.
    DATA t559 TYPE REF TO zif_lnt_class_definition.
    DATA(t560) = CAST zif_lnt_class_definition( t66 ).
    t559 = t560.
    t558 = t559.
    DATA t561 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t562 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t563) = CAST zcl_lnt_object_oriented( t556 ).
    DATA(t564) = CAST zif_lnt_class_definition( t558 ).
    t562 = t563->from_super_classes( i_child = t564 ).
    t561 = t562.
    DATA t565 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t565.
    DATA(t566) = CAST zcl_lnt_object_oriented( t556 ).
    DATA t567 TYPE REF TO zif_lnt_interface_definition.
    DATA(t568) = CAST zif_lnt_class_definition( t558 ).
    t567 ?= t568.
    DATA t569 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t569.
    DATA(t570) = abap_true.
    IF t570 = abap_true.
      DATA(t571) = CAST zlnt_runtime_arra_8ecd6afe19e0( t561 ).
      t569 = t571.
    ELSE.
      DATA t572 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t572.
      t569 = t572.
    ENDIF.
    t565 = t566->from_interfaces( i_definition = t567 i_skip_34cc = t569 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d850_2895fed0662d.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
