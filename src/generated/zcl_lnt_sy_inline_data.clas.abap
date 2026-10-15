* TS: src/abap/5_syntax/expressions/inline_data.ts:9:1 InlineData
CLASS zcl_lnt_sy_inline_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS strip_derived_from_constant IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inline_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t6.
      t15 = t16.
      t14 = t15->get_first_token( ).
      t10 = t14.
    ENDIF.
    t5 = t10.
    t4 = t5.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE abap_bool.
    DATA(t19) = t4.
    t18 = xsdbool( t19 IS BOUND ).
    t17 = t18.
    IF t18 = abap_true.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE i.
      DATA t22 TYPE string.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t25) = t4.
      t24 = t25.
      t23 = t24.
      DATA t26 TYPE string.
      DATA(t27) = t23.
      t26 = t27->str.
      t22 = t26.
      DATA(t28) = strlen( t22 ).
      t21 = t28.
      DATA(t29) = 30.
      t20 = xsdbool( t21 > t29 ).
      t17 = t20.
    ENDIF.
    IF t17 = abap_true.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA(t32) = |DATA name too long, |.
      DATA t33 TYPE string.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t36) = t4.
      t35 = t36.
      t34 = t35.
      DATA t37 TYPE string.
      DATA(t38) = t34.
      t37 = t38->str.
      t33 = t37.
      DATA(t39) = strlen( t32 ).
      t31 = |{ t32 }{ t33 }|.
      t30 = t31.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = t2.
      t40 = t41->issues.
      DATA t42 TYPE REF TO zcl_lnt_issue.
      DATA(t43) = t2.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t4.
      t44 = t45.
      DATA(t46) = t30.
      DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t47.
      t42 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t43 i_token = t44 i_message_26cb = t46 i_fix = t47 ).
      t40->load( ).
      APPEND t42 TO t40->items.
      t40->save( ).
    ENDIF.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE abap_bool.
    DATA(t50) = t4.
    t49 = xsdbool( t50 IS BOUND ).
    t48 = t49.
    IF t49 = abap_true.
      DATA t51 TYPE abap_bool.
      DATA(t52) = t3.
      t51 = xsdbool( t52 IS BOUND ).
      t48 = t51.
    ENDIF.
    IF t48 = abap_true.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      DATA(t55) = t3.
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t53 = t54.
      IF t54 = abap_false.
        DATA t56 TYPE abap_bool.
        DATA(t57) = t3.
        t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_c_like_type ).
        t53 = t56.
      ENDIF.
      IF t53 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_string_type.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t59.
        t58 = zcl_lnt_string_type=>get_db65( i_input_967e = t59 ).
        t3 = t58.
      ELSE.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t3.
        t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_x_sequence_type ).
        IF t60 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_string_type.
          DATA t63 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t63.
          t62 = zcl_lnt_string_type=>get_db65( i_input_967e = t63 ).
          t3 = t62.
        ELSE.
          DATA t64 TYPE abap_bool.
          DATA(t65) = t3.
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_c_generic_type ).
          IF t64 = abap_true.
            DATA t66 TYPE string.
            DATA(t67) = |InlineData, generic type C cannot be used for inferred type|.
            t66 = t67.
            DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t69) = t2.
            t68 = t69->issues.
            DATA t70 TYPE REF TO zcl_lnt_issue.
            DATA(t71) = t2.
            DATA t72 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t73) = t1.
            t72 = t73->get_first_token( ).
            DATA(t74) = t66.
            DATA t75 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t75.
            t70 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t71 i_token = t72 i_message_26cb = t74 i_fix = t75 ).
            t68->load( ).
            APPEND t70 TO t68->items.
            t68->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t76 TYPE abap_bool.
      DATA t77 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t78) = t3.
      t77 = t78.
      t76 = t77->is_generic( ).
      IF t76 = abap_true.
        DATA t79 TYPE string.
        DATA t80 TYPE string.
        DATA(t81) = |DATA definition cannot be generic, |.
        DATA t82 TYPE string.
        DATA t83 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t85) = t3.
        t84 = t85.
        t83 = t84->zlnt_builtin_clas_3f891b097658( ).
        t82 = t83->name.
        DATA(t86) = strlen( t81 ).
        t80 = |{ t81 }{ t82 }|.
        t79 = t80.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t88) = t2.
        t87 = t88->issues.
        DATA t89 TYPE REF TO zcl_lnt_issue.
        DATA(t90) = t2.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t92) = t1.
        t91 = t92->get_first_token( ).
        DATA(t93) = t79.
        DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t94.
        t89 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t90 i_token = t91 i_message_26cb = t93 i_fix = t94 ).
        t87->load( ).
        APPEND t89 TO t87->items.
        t87->save( ).
        DATA t95 TYPE REF TO zcl_lnt_void_type.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA(t97) = abap_true.
        IF t97 = abap_true.
          DATA(t98) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t99->has = abap_true.
          t99->value = t98.
          t96 = t99.
        ELSE.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t96 = t100.
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        t95 = zcl_lnt_void_type=>get_db65( i_voided = t96 i_qualified_name = t101 ).
        t3 = t95.
      ENDIF.
      DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t102.
      DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t103.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t105) = t4.
      t104 = t105.
      DATA t106 TYPE string.
      DATA(t107) = t2.
      t106 = t107->filename.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t110) = t3.
      t109 = t110.
      t108 = zcl_lnt_sy_inline_data=>strip_derived_from_constant( i_type_9913 = t109 ).
      DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t115.
        t114 = t115.
        DATA(t116) = t114.
        DATA(t117) = |inline|.
        t116->load( ).
        APPEND t117 TO t116->items.
        t116->save( ).
        DATA(t118) = t114.
        t113 = t118.
        t111 = t113.
      ELSE.
        DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t119.
        t111 = t119.
      ENDIF.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      t103 = NEW zcl_lnt_typed_identifier( i_token = t104 i_filename = t106 i_type_9913 = t108 i_meta = t111 i_value = t120 ).
      t102 = t103.
      DATA t121 TYPE REF TO zcl_lnt_current_scope.
      DATA t122 TYPE REF TO zcl_lnt_current_scope.
      DATA(t123) = t2.
      t122 = t123->scope.
      t121 = t122.
      DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t124.
      DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t125.
      DATA(t126) = abap_true.
      IF t126 = abap_true.
        DATA(t127) = t102.
        t125 = t127.
      ELSE.
        DATA t128 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t128.
        t125 = t128.
      ENDIF.
      t124 = t125.
      DATA(t129) = VALUE abap_bool( ).
      DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t131) = t124.
      t130 = t131.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      t132 = t133.
      DATA(t134) = VALUE abap_bool( ).
      DATA(t135) = t130.
      IF t135 IS INITIAL.
        t134 = abap_true.
      ENDIF.
      t129 = t134.
      IF t129 = abap_true.
      ELSE.
        DATA(t136) = t121.
        DATA(t137) = VALUE string( ).
        DATA t138 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t140) = t124.
        t139 = t140.
        t138 = t139.
        DATA(t141) = VALUE string( ).
        DATA t142 TYPE string.
        DATA t143 TYPE string.
        DATA t144 TYPE REF TO zcl_lnt_abstract_token.
        DATA t145 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t146) = t138.
        t145 = t146->token.
        t144 = t145.
        DATA t147 TYPE string.
        DATA(t148) = t144.
        t147 = t148->str.
        t143 = t147.
        t142 = t143.
        DATA(t149) = VALUE abap_bool( ).
        DATA(t150) = VALUE string( ).
        DATA(t151) = t142.
        DATA(t152) = 0.
        DATA(t153) = 1.
        DATA(t154) = strlen( t151 ).
        IF t152 < 0.
          t152 = t152 + t154.
          IF t152 < 0.
            t152 = 0.
          ENDIF.
        ENDIF.
        IF t152 > t154 OR t153 <= 0.
          CLEAR t150.
        ELSE.
          IF t153 > t154 - t152.
            t153 = t154 - t152.
          ENDIF.
          t150 = t151+t152(t153).
        ENDIF.
        DATA(t155) = |!|.
        t149 = xsdbool( t150 = t155 ).
        IF t149 = abap_true.
          DATA(t156) = VALUE string( ).
          DATA t157 TYPE string.
          DATA(t158) = t142.
          t157 = t158.
          DATA(t159) = VALUE string( ).
          DATA(t160) = t157.
          DATA(t161) = 1.
          DATA t162 TYPE i.
          DATA(t163) = t157.
          DATA(t164) = strlen( t163 ).
          t162 = t164.
          DATA(t165) = strlen( t160 ).
          IF t161 < 0.
            t161 = t161 + t165.
            IF t161 < 0.
              t161 = 0.
            ENDIF.
          ENDIF.
          IF t161 > t165 OR t162 <= 0.
            CLEAR t159.
          ELSE.
            IF t162 > t165 - t161.
              t162 = t165 - t161.
            ENDIF.
            t159 = t160+t161(t162).
          ENDIF.
          t156 = t159.
          t142 = t156.
        ENDIF.
        DATA(t166) = t142.
        t141 = t166.
        t137 = t141.
        DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t168) = t124.
        t167 = t168.
        t136->add_named_identifier( i_name = t137 i_identifier = t167 ).
      ENDIF.
      DATA t169 TYPE REF TO zcl_lnt_current_scope.
      DATA(t170) = t2.
      t169 = t170->scope.
      DATA t171 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t171.
      DATA(t172) = abap_true.
      IF t172 = abap_true.
        DATA t173 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t174) = t4.
        t173 = t174.
        t171 = t173.
      ELSE.
        DATA t175 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t175.
        t171 = t175.
      ENDIF.
      DATA(t176) = t102.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      DATA(t178) = |Write To|.
      CLEAR t177.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t177->sval = t178.
      DATA t179 TYPE string.
      DATA(t180) = t2.
      t179 = t180->filename.
      DATA t181 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t181.
      t169->add_reference( i_usage = t171 i_referencing = t176 i_type_9913 = t177 i_filename = t179 i_extra = t181 ).
    ELSE.
      DATA t182 TYPE abap_bool.
      DATA(t183) = t4.
      t182 = xsdbool( t183 IS BOUND ).
      IF t182 = abap_true.
        DATA t184 TYPE string.
        DATA t185 TYPE string.
        DATA t186 TYPE string.
        DATA(t187) = |InlineData, could not determine type for "|.
        DATA t188 TYPE string.
        DATA t189 TYPE REF TO zcl_lnt_abstract_token.
        DATA t190 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t191) = t4.
        t190 = t191.
        t189 = t190.
        DATA t192 TYPE string.
        DATA(t193) = t189.
        t192 = t193->str.
        t188 = t192.
        DATA(t194) = strlen( t187 ).
        t186 = |{ t187 }{ t188 }|.
        DATA(t195) = |"|.
        DATA(t196) = strlen( t186 ).
        t185 = |{ t186 }{ t195 }|.
        t184 = t185.
        DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t197.
        DATA t198 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t198.
        DATA t199 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t200) = t4.
        t199 = t200.
        DATA t201 TYPE string.
        DATA(t202) = t2.
        t201 = t202->filename.
        DATA t203 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t204) = t184.
        DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t205.
        t203 = NEW zcl_lnt_unknown_type( i_error = t204 i_qualified_name = t205 ).
        DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t206.
        DATA(t207) = abap_true.
        IF t207 = abap_true.
          DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t210.
          t209 = t210.
          DATA(t211) = t209.
          DATA(t212) = |inline|.
          t211->load( ).
          APPEND t212 TO t211->items.
          t211->save( ).
          DATA(t213) = t209.
          t208 = t213.
          t206 = t208.
        ELSE.
          DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t214.
          t206 = t214.
        ENDIF.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        t198 = NEW zcl_lnt_typed_identifier( i_token = t199 i_filename = t201 i_type_9913 = t203 i_meta = t206 i_value = t215 ).
        t197 = t198.
        DATA t216 TYPE REF TO zcl_lnt_current_scope.
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        DATA(t218) = t2.
        t217 = t218->scope.
        t216 = t217.
        DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t219.
        DATA t220 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t220.
        DATA(t221) = abap_true.
        IF t221 = abap_true.
          DATA(t222) = t197.
          t220 = t222.
        ELSE.
          DATA t223 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t223.
          t220 = t223.
        ENDIF.
        t219 = t220.
        DATA(t224) = VALUE abap_bool( ).
        DATA t225 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t226) = t219.
        t225 = t226.
        DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        t227 = t228.
        DATA(t229) = VALUE abap_bool( ).
        DATA(t230) = t225.
        IF t230 IS INITIAL.
          t229 = abap_true.
        ENDIF.
        t224 = t229.
        IF t224 = abap_true.
        ELSE.
          DATA(t231) = t216.
          DATA(t232) = VALUE string( ).
          DATA t233 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t234 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t235) = t219.
          t234 = t235.
          t233 = t234.
          DATA(t236) = VALUE string( ).
          DATA t237 TYPE string.
          DATA t238 TYPE string.
          DATA t239 TYPE REF TO zcl_lnt_abstract_token.
          DATA t240 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t241) = t233.
          t240 = t241->token.
          t239 = t240.
          DATA t242 TYPE string.
          DATA(t243) = t239.
          t242 = t243->str.
          t238 = t242.
          t237 = t238.
          DATA(t244) = VALUE abap_bool( ).
          DATA(t245) = VALUE string( ).
          DATA(t246) = t237.
          DATA(t247) = 0.
          DATA(t248) = 1.
          DATA(t249) = strlen( t246 ).
          IF t247 < 0.
            t247 = t247 + t249.
            IF t247 < 0.
              t247 = 0.
            ENDIF.
          ENDIF.
          IF t247 > t249 OR t248 <= 0.
            CLEAR t245.
          ELSE.
            IF t248 > t249 - t247.
              t248 = t249 - t247.
            ENDIF.
            t245 = t246+t247(t248).
          ENDIF.
          DATA(t250) = |!|.
          t244 = xsdbool( t245 = t250 ).
          IF t244 = abap_true.
            DATA(t251) = VALUE string( ).
            DATA t252 TYPE string.
            DATA(t253) = t237.
            t252 = t253.
            DATA(t254) = VALUE string( ).
            DATA(t255) = t252.
            DATA(t256) = 1.
            DATA t257 TYPE i.
            DATA(t258) = t252.
            DATA(t259) = strlen( t258 ).
            t257 = t259.
            DATA(t260) = strlen( t255 ).
            IF t256 < 0.
              t256 = t256 + t260.
              IF t256 < 0.
                t256 = 0.
              ENDIF.
            ENDIF.
            IF t256 > t260 OR t257 <= 0.
              CLEAR t254.
            ELSE.
              IF t257 > t260 - t256.
                t257 = t260 - t256.
              ENDIF.
              t254 = t255+t256(t257).
            ENDIF.
            t251 = t254.
            t237 = t251.
          ENDIF.
          DATA(t261) = t237.
          t236 = t261.
          t232 = t236.
          DATA t262 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t263) = t219.
          t262 = t263.
          t231->add_named_identifier( i_name = t232 i_identifier = t262 ).
        ENDIF.
        DATA t264 TYPE REF TO zcl_lnt_current_scope.
        DATA(t265) = t2.
        t264 = t265->scope.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t266.
        DATA(t267) = abap_true.
        IF t267 = abap_true.
          DATA t268 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t269) = t4.
          t268 = t269.
          t266 = t268.
        ELSE.
          DATA t270 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t270.
          t266 = t270.
        ENDIF.
        DATA(t271) = t197.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        DATA(t273) = |Write To|.
        CLEAR t272.
        CREATE OBJECT t272.
        t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t272->sval = t273.
        DATA t274 TYPE string.
        DATA(t275) = t2.
        t274 = t275->filename.
        DATA t276 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t276.
        t264->add_reference( i_usage = t266 i_referencing = t271 i_type_9913 = t272 i_filename = t274 i_extra = t276 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD strip_derived_from_constant.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t7) = t4.
    t6 = t7->data_56cc.
    t3 = t6.
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t11) = t2.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t10.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t18) = t10.
      t17 = t18.
      t16 = t17->zlnt_view_read_sr_b01015468803( ).
      t12 = t16.
    ENDIF.
    t9 = t12.
    DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = abap_true.
      DATA(t22) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    IF t9 IS BOUND.
      t24 = t9->has.
    ENDIF.
    IF t19 IS BOUND.
      t25 = t19->has.
    ENDIF.
    IF t24 = t25.
      IF t24 = abap_false.
        t8 = abap_true.
      ELSEIF t9->value = t19->value.
        t8 = abap_true.
      ENDIF.
    ENDIF.
    IF t8 = abap_true.
      t8 = abap_false.
    ELSE.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA(t26) = t1.
      result = t26.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t28 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t29) = t2.
    t28 = t29.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t32) = t27.
    t31 = t32->zlnt_view_read_sr_b01015468803( ).
    t30 = t31.
    DATA t33 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t36) = t27.
    t35 = t36->zlnt_view_read_sr_c978da49ae47( ).
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t38) = t27.
    t37 = t38->zlnt_view_read_sr_dfbdd4b4a00f( ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t41) = t27.
    t40 = t41->zlnt_view_read_sr_19ee0de30d00( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = t27.
    t42 = t43->zlnt_view_read_sr_a5933bdf8829( ).
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t45) = t27.
    t44 = t45->zlnt_view_read_sr_b2a3e27508db( ).
    t34 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t35 i_conversion_exit = t37 i_derived_from_constant = t39 i_ddic_name = t40 i_rtti_name = t42 i_description = t44 ).
    t33 = t34.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t1.
    t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_character_type ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_character_type.
      CLEAR t48.
      DATA t49 TYPE f.
      DATA t50 TYPE REF TO zcl_lnt_character_type.
      DATA t51 TYPE REF TO zcl_lnt_character_type.
      DATA(t52) = t1.
      t51 ?= t52.
      t50 = t51.
      DATA t53 TYPE f.
      DATA(t54) = t50.
      t53 = t54->length.
      t49 = t53.
      DATA t55 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA(t57) = t33.
        t55 = t57.
      ELSE.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t58.
        t55 = t58.
      ENDIF.
      t48 = NEW zcl_lnt_character_type( i_length = t49 i_extra = t55 ).
      result = t48.
      RETURN.
    ELSE.
      DATA t59 TYPE abap_bool.
      DATA(t60) = t1.
      t59 = xsdbool( t60 IS BOUND AND t60 IS INSTANCE OF zcl_lnt_integer_type ).
      IF t59 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_integer_type.
        CLEAR t61.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA(t64) = t33.
          t62 = t64.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t65.
          t62 = t65.
        ENDIF.
        t61 = zcl_lnt_integer_type=>get_db65( i_input_967e = t62 ).
        result = t61.
        RETURN.
      ELSE.
        DATA t66 TYPE abap_bool.
        DATA(t67) = t1.
        t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_string_type ).
        IF t66 = abap_true.
          DATA t68 TYPE REF TO zcl_lnt_string_type.
          CLEAR t68.
          DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t69.
          DATA(t70) = abap_true.
          IF t70 = abap_true.
            DATA(t71) = t33.
            t69 = t71.
          ELSE.
            DATA t72 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t72.
            t69 = t72.
          ENDIF.
          t68 = zcl_lnt_string_type=>get_db65( i_input_967e = t69 ).
          result = t68.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t73) = t1.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d811_4af0000f48d5.
  ENDMETHOD.
ENDCLASS.
