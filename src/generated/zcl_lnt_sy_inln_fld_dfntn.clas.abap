* TS: src/abap/5_syntax/expressions/inline_field_definition.ts:12:1 InlineFieldDefinition
CLASS zcl_lnt_sy_inln_fld_dfntn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inln_fld_dfntn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = t1.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t11 = t12->find_direct_expression( i_type_9913 = t13 ).
    t10 = t11.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE abap_bool.
    DATA(t16) = t10.
    t15 = xsdbool( t16 IS BOUND ).
    IF t15 = abap_true.
      DATA(t17) = t10.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = t1.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t18 = t19->find_direct_expression( i_type_9913 = t20 ).
      t14 = t18.
    ENDIF.
    t9 = t14.
    t8 = t9.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t8.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = t8.
      t26 = t27.
      t25 = t26->get_first_token( ).
      t21 = t25.
    ENDIF.
    t7 = t21.
    t6 = t7.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t30) = t6.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA(t38) = t1.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t37 = t38->find_direct_expression( i_type_9913 = t39 ).
    t36 = t37.
    DATA t40 TYPE abap_bool.
    DATA(t41) = t36.
    t40 = xsdbool( t41 IS BOUND ).
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA(t46) = t36.
        t45 = t46.
        t43 = t45.
      ELSE.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t47.
        t43 = t47.
      ENDIF.
      DATA(t48) = t2.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t52.
      t42 = zcl_lnt_sy_source=>run_syntax( i_node = t43 i_input_967e = t48 i_target_type = t49 i_write_reference = t50 i_allow_generic_deference = t51 i_read_reference = t52 ).
      t4 = t42.
    ENDIF.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA(t55) = t1.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t54 = t55->find_direct_expression( i_type_9913 = t56 ).
    t53 = t54.
    DATA t57 TYPE abap_bool.
    DATA(t58) = t53.
    t57 = xsdbool( t58 IS BOUND ).
    IF t57 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type.
      DATA t60 TYPE REF TO zcl_lnt_basic_types.
      DATA(t61) = t2.
      t60 = NEW zcl_lnt_basic_types( i_input_967e = t61 ).
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA(t63) = t53.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      t59 = t60->parse_type( i_node = t62 i_qualified_name = t64 ).
      t4 = t59.
    ENDIF.
    DATA(t65) = VALUE abap_bool( ).
    DATA t66 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t67) = t3.
    t66 = t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    t68 = t69.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = VALUE abap_bool( ).
    DATA(t72) = t66.
    IF t72 IS INITIAL.
      t71 = abap_true.
    ENDIF.
    t70 = xsdbool( t71 = abap_false ).
    t65 = t70.
    IF t65 = abap_true.
      DATA t73 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA t75 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t76) = t3.
        t75 = t76.
        t73 = t75.
      ELSE.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t77.
        t73 = t77.
      ENDIF.
      t4 = t73.
    ENDIF.
    DATA(t78) = VALUE abap_bool( ).
    DATA t79 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t80) = t4.
    t79 = t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    t81 = t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA(t84) = t79.
    IF t84 IS INITIAL.
      t83 = abap_true.
    ENDIF.
    t78 = t83.
    IF t78 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t86) = |InlineFieldDefinition, fallback|.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      t85 = NEW zcl_lnt_unknown_type( i_error = t86 i_qualified_name = t87 ).
      t4 = t85.
    ENDIF.
    DATA t88 TYPE string.
    DATA t89 TYPE string.
    DATA t90 TYPE REF TO zcl_lnt_abstract_token.
    DATA t91 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t92) = t6.
    t91 = t92.
    t90 = t91.
    DATA t93 TYPE string.
    DATA(t94) = t90.
    t93 = t94->str.
    t89 = t93.
    t88 = t89.
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t97.
    DATA t98 TYPE REF TO zcl_lnt_current_scope.
    DATA t99 TYPE REF TO zcl_lnt_current_scope.
    DATA(t100) = t2.
    t99 = t100->scope.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t102.
    DATA(t103) = abap_true.
    IF t103 = abap_true.
      DATA(t104) = t88.
      DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t105->has = abap_true.
      t105->value = t104.
      t102 = t105.
    ELSE.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      t102 = t106.
    ENDIF.
    t101 = t102.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t107.
    DATA(t108) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t110) = t101.
    t109 = t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    t111 = t112.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = t109.
    IF t114 IS INITIAL.
      t113 = abap_true.
    ELSEIF t114->has = abap_false.
      t113 = abap_true.
    ENDIF.
    t108 = t113.
    IF t108 = abap_true.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t115.
      t107 = t115.
    ELSE.
      DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t116.
      DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t117.
      DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t118.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t121) = t98.
      t120 = t121->current.
      t119 = t120.
      DATA t122 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t122.
      DATA(t123) = VALUE abap_bool( ).
      DATA(t124) = t119.
      IF t124 IS INITIAL.
        t123 = abap_true.
      ENDIF.
      IF t123 = abap_true.
        DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t125.
        t122 = t125.
      ELSE.
        DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t127 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t128) = t119.
        t127 = t128.
        DATA t129 TYPE string.
        DATA(t130) = t101.
        t129 = t130->value.
        t126 = t127->find_variable( i_name = t129 ).
        t122 = t126.
      ENDIF.
      t118 = t122.
      t117 = t118.
      DATA t131 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t131.
      DATA t132 TYPE abap_bool.
      DATA(t133) = t117.
      t132 = xsdbool( t133 IS BOUND ).
      IF t132 = abap_true.
        DATA t134 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t137) = t117.
          t136 = t137.
          t134 = t136.
        ELSE.
          DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t138.
          t134 = t138.
        ENDIF.
        t131 = t134.
      ELSE.
        DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t139.
        DATA(t140) = t98.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA t143 TYPE string.
          DATA(t144) = t101.
          t143 = t144->value.
          DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t145->has = abap_true.
          t145->value = t143.
          t141 = t145.
        ELSE.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          t141 = t146.
        ENDIF.
        t139 = t140->find_type_pool_constant( i_name = t141 ).
        t131 = t139.
      ENDIF.
      t116 = t131.
      t107 = t116.
    ENDIF.
    t97 = t107.
    t96 = t97.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    t147 = t148.
    DATA(t149) = VALUE abap_bool( ).
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = t96.
    IF t151 IS INITIAL.
      t150 = abap_true.
    ENDIF.
    t149 = xsdbool( t150 = abap_false ).
    t95 = t149.
    IF t95 = abap_true.
      DATA t152 TYPE string.
      DATA t153 TYPE string.
      DATA t154 TYPE string.
      DATA(t155) = |Variable |.
      DATA(t156) = t88.
      DATA(t157) = strlen( t155 ).
      t154 = |{ t155 }{ t156 }|.
      DATA(t158) = | already defined|.
      DATA(t159) = strlen( t154 ).
      t153 = |{ t154 }{ t158 }|.
      t152 = t153.
      DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t161) = t2.
      t160 = t161->issues.
      DATA t162 TYPE REF TO zcl_lnt_issue.
      DATA(t163) = t2.
      DATA t164 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t165) = t1.
      t164 = t165->get_first_token( ).
      DATA(t166) = t152.
      DATA t167 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t167.
      t162 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t163 i_token = t164 i_message_26cb = t166 i_fix = t167 ).
      t160->load( ).
      APPEND t162 TO t160->items.
      t160->save( ).
      DATA t168 TYPE REF TO zcl_lnt_void_type.
      CLEAR t168.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t169.
      DATA(t170) = abap_true.
      IF t170 = abap_true.
        DATA(t171) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
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
      t168 = zcl_lnt_void_type=>get_db65( i_voided = t169 i_qualified_name = t174 ).
      result = t168.
      RETURN.
    ENDIF.
    DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t175.
    DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t176.
    DATA t177 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t178) = t6.
    t177 = t178.
    DATA t179 TYPE string.
    DATA(t180) = t2.
    t179 = t180->filename.
    DATA t181 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t182) = t4.
    t181 = t182.
    DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t183.
    DATA(t184) = abap_true.
    IF t184 = abap_true.
      DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t187.
      t186 = t187.
      DATA(t188) = t186.
      DATA(t189) = |inline|.
      t188->load( ).
      APPEND t189 TO t188->items.
      t188->save( ).
      DATA(t190) = t186.
      t185 = t190.
      t183 = t185.
    ELSE.
      DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t191.
      t183 = t191.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    t176 = NEW zcl_lnt_typed_identifier( i_token = t177 i_filename = t179 i_type_9913 = t181 i_meta = t183 i_value = t192 ).
    t175 = t176.
    DATA t193 TYPE REF TO zcl_lnt_current_scope.
    DATA(t194) = t2.
    t193 = t194->scope.
    DATA t195 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t195.
    DATA(t196) = abap_true.
    IF t196 = abap_true.
      DATA t197 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t198) = t6.
      t197 = t198.
      t195 = t197.
    ELSE.
      DATA t199 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t199.
      t195 = t199.
    ENDIF.
    DATA(t200) = t175.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA(t202) = |Write To|.
    CLEAR t201.
    CREATE OBJECT t201.
    t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t201->sval = t202.
    DATA t203 TYPE string.
    DATA(t204) = t2.
    t203 = t204->filename.
    DATA t205 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t205.
    t193->add_reference( i_usage = t195 i_referencing = t200 i_type_9913 = t201 i_filename = t203 i_extra = t205 ).
    DATA t206 TYPE REF TO zcl_lnt_current_scope.
    DATA t207 TYPE REF TO zcl_lnt_current_scope.
    DATA(t208) = t2.
    t207 = t208->scope.
    t206 = t207.
    DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t209.
    DATA t210 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t210.
    DATA(t211) = abap_true.
    IF t211 = abap_true.
      DATA(t212) = t175.
      t210 = t212.
    ELSE.
      DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t213.
      t210 = t213.
    ENDIF.
    t209 = t210.
    DATA(t214) = VALUE abap_bool( ).
    DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t216) = t209.
    t215 = t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    t217 = t218.
    DATA(t219) = VALUE abap_bool( ).
    DATA(t220) = t215.
    IF t220 IS INITIAL.
      t219 = abap_true.
    ENDIF.
    t214 = t219.
    IF t214 = abap_true.
    ELSE.
      DATA(t221) = t206.
      DATA(t222) = VALUE string( ).
      DATA t223 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t225) = t209.
      t224 = t225.
      t223 = t224.
      DATA(t226) = VALUE string( ).
      DATA t227 TYPE string.
      DATA t228 TYPE string.
      DATA t229 TYPE REF TO zcl_lnt_abstract_token.
      DATA t230 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t231) = t223.
      t230 = t231->token.
      t229 = t230.
      DATA t232 TYPE string.
      DATA(t233) = t229.
      t232 = t233->str.
      t228 = t232.
      t227 = t228.
      DATA(t234) = VALUE abap_bool( ).
      DATA(t235) = VALUE string( ).
      DATA(t236) = t227.
      DATA(t237) = 0.
      DATA(t238) = 1.
      DATA(t239) = strlen( t236 ).
      IF t237 < 0.
        t237 = t237 + t239.
        IF t237 < 0.
          t237 = 0.
        ENDIF.
      ENDIF.
      IF t237 > t239 OR t238 <= 0.
        CLEAR t235.
      ELSE.
        IF t238 > t239 - t237.
          t238 = t239 - t237.
        ENDIF.
        t235 = t236+t237(t238).
      ENDIF.
      DATA(t240) = |!|.
      t234 = xsdbool( t235 = t240 ).
      IF t234 = abap_true.
        DATA(t241) = VALUE string( ).
        DATA t242 TYPE string.
        DATA(t243) = t227.
        t242 = t243.
        DATA(t244) = VALUE string( ).
        DATA(t245) = t242.
        DATA(t246) = 1.
        DATA t247 TYPE i.
        DATA(t248) = t242.
        DATA(t249) = strlen( t248 ).
        t247 = t249.
        DATA(t250) = strlen( t245 ).
        IF t246 < 0.
          t246 = t246 + t250.
          IF t246 < 0.
            t246 = 0.
          ENDIF.
        ENDIF.
        IF t246 > t250 OR t247 <= 0.
          CLEAR t244.
        ELSE.
          IF t247 > t250 - t246.
            t247 = t250 - t246.
          ENDIF.
          t244 = t245+t246(t247).
        ENDIF.
        t241 = t244.
        t227 = t241.
      ENDIF.
      DATA(t251) = t227.
      t226 = t251.
      t222 = t226.
      DATA t252 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t253) = t209.
      t252 = t253.
      t221->add_named_identifier( i_name = t222 i_identifier = t252 ).
    ENDIF.
    DATA t254 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t254.
    DATA(t255) = abap_true.
    IF t255 = abap_true.
      DATA t256 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t257) = t4.
      t256 = t257.
      t254 = t256.
    ELSE.
      DATA t258 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t258.
      t254 = t258.
    ENDIF.
    result = t254.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d812_6d0e6cec98f8.
  ENDMETHOD.
ENDCLASS.
