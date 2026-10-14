* TS: src/abap/5_syntax/statements/parameter.ts:10:1 Parameter
CLASS zcl_lnt_sy_parameter_parameter DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS has_user_command IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS has_length IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_parameter_parameter IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
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
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = CAST zcl_lnt_expression_node( t3 ).
    t16 = t17.
    t15 = t16->get_first_token(  ).
    t14 = t15.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE i.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = CAST zcl_lnt_expression_node( t3 ).
    t23 = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = CAST zcl_lnt_abstract_node( t22 ).
    t25 = t26->children.
    t21 = t25.
    t20 ?= t21.
    t19 = lines( t20->items ).
    DATA(t27) = 1.
    t18 = xsdbool( t19 > t27 ).
    IF t18 = abap_true.
      DATA t28 TYPE string.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = CAST zcl_lnt_expression_node( t3 ).
      t32 = t33.
      t31 = t32->concat_tokens(  ).
      DATA t34 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t34.
      DATA(t35) = `\(.+$`.
      DATA(t36) = ||.
      CREATE OBJECT t34 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t35 flags = t36.
      DATA(t37) = ||.
      DATA(t38) = strlen( t31 ).
      t30 = t34->replace( p0 = t31 p1 = t37 ).
      DATA t39 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t39.
      DATA(t40) = `\[\]$`.
      DATA(t41) = ||.
      CREATE OBJECT t39 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t40 flags = t41.
      DATA(t42) = ||.
      DATA(t43) = strlen( t30 ).
      t29 = t39->replace( p0 = t30 p1 = t42 ).
      t28 = t29.
      DATA t44 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t45 TYPE REF TO zcl_lnt_position.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t47) = CAST zcl_lnt_abstract_token( t14 ).
      t46 = t47.
      DATA t48 TYPE REF TO zcl_lnt_position.
      DATA(t49) = CAST zcl_lnt_abstract_token( t46 ).
      t48 = t49->start.
      t45 = t48.
      DATA(t50) = t28.
      t44 = NEW zcl_lnt_lx_identifier( i_start = t45 i_str = t50 ).
      t14 = t44.
    ENDIF.
    DATA t51 TYPE abap_bool.
    DATA t52 TYPE abap_bool.
    DATA(t53) = CAST zcl_lnt_abstract_token( t14 ).
    t52 = xsdbool( t53 IS BOUND ).
    t51 = t52.
    IF t52 = abap_true.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE i.
      DATA t56 TYPE string.
      DATA t57 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t58) = CAST zcl_lnt_abstract_token( t14 ).
      t57 = t58.
      DATA t59 TYPE string.
      DATA(t60) = CAST zcl_lnt_abstract_token( t57 ).
      t59 = t60->str.
      t56 = t59.
      DATA(t61) = strlen( t56 ).
      t55 = t61.
      DATA(t62) = 8.
      t54 = xsdbool( t55 > t62 ).
      t51 = t54.
    ENDIF.
    IF t51 = abap_true.
      DATA t63 TYPE string.
      DATA t64 TYPE string.
      DATA(t65) = |Parameter name too long, |.
      DATA t66 TYPE string.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t68) = CAST zcl_lnt_abstract_token( t14 ).
      t67 = t68.
      DATA t69 TYPE string.
      DATA(t70) = CAST zcl_lnt_abstract_token( t67 ).
      t69 = t70->str.
      t66 = t69.
      DATA(t71) = strlen( t65 ).
      t64 = |{ t65 }{ t66 }|.
      t63 = t64.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t73) = CAST zcl_lnt_syntax_input( t2 ).
      t72 = t73->issues.
      DATA t74 TYPE REF TO zcl_lnt_issue.
      DATA(t75) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t76 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t77) = CAST zcl_lnt_statement_node( t1 ).
      t76 = t77->get_first_token(  ).
      DATA(t78) = t63.
      DATA t79 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t79.
      t74 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t75 i_token = t76 i_message_26cb = t78 i_fix = t79 ).
      APPEND t74 TO t72->items.
      RETURN.
    ENDIF.
    DATA t80 TYPE abap_bool.
    DATA t81 TYPE abap_bool.
    DATA t82 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t83) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t84) = |RADIOBUTTON|.
    t82 = t83->find_direct_token_by_text( i_text = t84 ).
    t81 = xsdbool( t82 IS BOUND ).
    t80 = t81.
    IF t81 = abap_true.
      DATA t85 TYPE abap_bool.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t87) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t88) = |LENGTH|.
      t86 = t87->find_direct_token_by_text( i_text = t88 ).
      t85 = xsdbool( t86 IS BOUND ).
      t80 = t85.
    ENDIF.
    IF t80 = abap_true.
      DATA t89 TYPE string.
      DATA(t90) = |RADIOBUTTON and LENGTH not possible together|.
      t89 = t90.
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t92) = CAST zcl_lnt_syntax_input( t2 ).
      t91 = t92->issues.
      DATA t93 TYPE REF TO zcl_lnt_issue.
      DATA(t94) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t95 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t96) = CAST zcl_lnt_statement_node( t1 ).
      t95 = t96->get_first_token(  ).
      DATA(t97) = t89.
      DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t98.
      t93 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t94 i_token = t95 i_message_26cb = t97 i_fix = t98 ).
      APPEND t93 TO t91->items.
      RETURN.
    ENDIF.
    DATA t99 TYPE REF TO zcl_lnt_expression_node.
    DATA t100 TYPE REF TO zcl_lnt_expression_node.
    DATA(t101) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95 ).
    t100 = t101->find_first_expression( i_type_9913 = t102 ).
    t99 = t100.
    DATA t103 TYPE abap_bool.
    DATA t104 TYPE abap_bool.
    DATA(t105) = CAST zcl_lnt_expression_node( t99 ).
    t104 = xsdbool( t105 IS BOUND ).
    t103 = t104.
    IF t104 = abap_true.
      DATA t106 TYPE abap_bool.
      DATA t107 TYPE i.
      DATA t108 TYPE string.
      DATA t109 TYPE REF TO zcl_lnt_expression_node.
      DATA(t110) = CAST zcl_lnt_expression_node( t99 ).
      t109 = t110.
      t108 = t109->concat_tokens(  ).
      DATA(t111) = strlen( t108 ).
      t107 = t111.
      DATA(t112) = 4.
      t106 = xsdbool( t107 > t112 ).
      t103 = t106.
    ENDIF.
    IF t103 = abap_true.
      DATA t113 TYPE string.
      DATA t114 TYPE string.
      DATA(t115) = |Radio button group name too long, |.
      DATA t116 TYPE string.
      DATA t117 TYPE REF TO zcl_lnt_expression_node.
      DATA(t118) = CAST zcl_lnt_expression_node( t99 ).
      t117 = t118.
      t116 = t117->concat_tokens(  ).
      DATA(t119) = strlen( t115 ).
      t114 = |{ t115 }{ t116 }|.
      t113 = t114.
      DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t121) = CAST zcl_lnt_syntax_input( t2 ).
      t120 = t121->issues.
      DATA t122 TYPE REF TO zcl_lnt_issue.
      DATA(t123) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t124 TYPE REF TO zcl_lnt_abstract_token.
      DATA t125 TYPE REF TO zcl_lnt_expression_node.
      DATA(t126) = CAST zcl_lnt_expression_node( t99 ).
      t125 = t126.
      t124 = t125->get_first_token(  ).
      DATA(t127) = t113.
      DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t128.
      t122 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t123 i_token = t124 i_message_26cb = t127 i_fix = t128 ).
      APPEND t122 TO t120->items.
    ENDIF.
    DATA t129 TYPE abap_bool.
    DATA t130 TYPE abap_bool.
    DATA(t131) = CAST zcl_lnt_statement_node( t1 ).
    t130 = me->has_user_command( i_node = t131 ).
    t129 = t130.
    IF t130 = abap_true.
      DATA t132 TYPE abap_bool.
      DATA(t133) = CAST zcl_lnt_statement_node( t1 ).
      t132 = me->has_length( i_node = t133 ).
      t129 = t132.
    ENDIF.
    IF t129 = abap_true.
      DATA t134 TYPE string.
      DATA(t135) = |USER-COMMAND and LENGTH not possible together|.
      t134 = t135.
      DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t137) = CAST zcl_lnt_syntax_input( t2 ).
      t136 = t137->issues.
      DATA t138 TYPE REF TO zcl_lnt_issue.
      DATA(t139) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t140 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t141) = CAST zcl_lnt_statement_node( t1 ).
      t140 = t141->get_first_token(  ).
      DATA(t142) = t134.
      DATA t143 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t143.
      t138 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t139 i_token = t140 i_message_26cb = t142 i_fix = t143 ).
      APPEND t138 TO t136->items.
      RETURN.
    ENDIF.
    DATA t144 TYPE REF TO zcl_lnt_abstract_type.
    DATA t145 TYPE REF TO zcl_lnt_abstract_type.
    DATA t146 TYPE REF TO zcl_lnt_basic_types.
    DATA(t147) = CAST zcl_lnt_syntax_input( t2 ).
    t146 = NEW zcl_lnt_basic_types( i_input_967e = t147 ).
    DATA(t148) = CAST zcl_lnt_statement_node( t1 ).
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t149.
    t145 = t146->parse_type( i_node = t148 i_qualified_name = t149 ).
    t144 = t145.
    DATA t150 TYPE abap_bool.
    DATA(t151) = CAST zcl_lnt_abstract_type( t144 ).
    t150 = xsdbool( t151 IS BOUND ).
    IF t150 = abap_true.
      DATA t152 TYPE REF TO zcl_lnt_current_scope.
      DATA t153 TYPE REF TO zcl_lnt_current_scope.
      DATA(t154) = CAST zcl_lnt_syntax_input( t2 ).
      t153 = t154->scope.
      t152 = t153.
      DATA t155 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t155.
      DATA t156 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t156.
      DATA(t157) = abap_true.
      IF t157 = abap_true.
        DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t159) = CAST zcl_lnt_abstract_token( t14 ).
        DATA t160 TYPE string.
        DATA(t161) = CAST zcl_lnt_syntax_input( t2 ).
        t160 = t161->filename.
        DATA t162 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t163) = CAST zcl_lnt_abstract_type( t144 ).
        t162 = t163.
        DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        t158 = NEW zcl_lnt_typed_identifier( i_token = t159 i_filename = t160 i_type_9913 = t162 i_meta = t164 i_value = t165 ).
        t156 = t158.
      ELSE.
        DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t166.
        t156 = t166.
      ENDIF.
      t155 = t156.
      DATA(t167) = VALUE abap_bool( ).
      DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t169) = CAST zcl_lnt_typed_identifier( t155 ).
      t168 = t169.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      t170 = t171.
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = CAST zcl_lnt_typed_identifier( t168 ).
      IF t173 IS INITIAL.
        t172 = abap_true.
      ENDIF.
      t167 = t172.
      IF t167 = abap_true.
      ELSE.
        DATA(t174) = CAST zcl_lnt_current_scope( t152 ).
        DATA(t175) = VALUE string( ).
        DATA t176 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t177 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t178) = CAST zcl_lnt_typed_identifier( t155 ).
        t177 = t178.
        t176 = t177.
        DATA(t179) = VALUE string( ).
        DATA t180 TYPE string.
        DATA t181 TYPE string.
        DATA t182 TYPE REF TO zcl_lnt_abstract_token.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t184) = CAST zcl_lnt_fi_identifier( t176 ).
        t183 = t184->token.
        t182 = t183.
        DATA t185 TYPE string.
        DATA(t186) = CAST zcl_lnt_abstract_token( t182 ).
        t185 = t186->str.
        t181 = t185.
        t180 = t181.
        DATA(t187) = VALUE abap_bool( ).
        DATA(t188) = VALUE string( ).
        DATA(t189) = t180.
        DATA(t190) = 0.
        DATA(t191) = 1.
        DATA(t192) = strlen( t189 ).
        IF t190 < 0.
          t190 = t190 + t192.
          IF t190 < 0.
            t190 = 0.
          ENDIF.
        ENDIF.
        IF t190 > t192 OR t191 <= 0.
          CLEAR t188.
        ELSE.
          IF t191 > t192 - t190.
            t191 = t192 - t190.
          ENDIF.
          t188 = t189+t190(t191).
        ENDIF.
        DATA(t193) = |!|.
        t187 = xsdbool( t188 = t193 ).
        IF t187 = abap_true.
          DATA(t194) = VALUE string( ).
          DATA t195 TYPE string.
          DATA(t196) = t180.
          t195 = t196.
          DATA(t197) = VALUE string( ).
          DATA(t198) = t195.
          DATA(t199) = 1.
          DATA t200 TYPE i.
          DATA(t201) = t195.
          DATA(t202) = strlen( t201 ).
          t200 = t202.
          DATA(t203) = strlen( t198 ).
          IF t199 < 0.
            t199 = t199 + t203.
            IF t199 < 0.
              t199 = 0.
            ENDIF.
          ENDIF.
          IF t199 > t203 OR t200 <= 0.
            CLEAR t197.
          ELSE.
            IF t200 > t203 - t199.
              t200 = t203 - t199.
            ENDIF.
            t197 = t198+t199(t200).
          ENDIF.
          t194 = t197.
          t180 = t194.
        ENDIF.
        DATA(t204) = t180.
        t179 = t204.
        t175 = t179.
        DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t206) = CAST zcl_lnt_typed_identifier( t155 ).
        t205 = t206.
        t174->add_named_identifier( i_name = t175 i_identifier = t205 ).
      ENDIF.
    ELSE.
      DATA t207 TYPE REF TO zcl_lnt_current_scope.
      DATA t208 TYPE REF TO zcl_lnt_current_scope.
      DATA(t209) = CAST zcl_lnt_syntax_input( t2 ).
      t208 = t209->scope.
      t207 = t208.
      DATA t210 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t210.
      DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t211.
      DATA(t212) = abap_true.
      IF t212 = abap_true.
        DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t214) = CAST zcl_lnt_abstract_token( t14 ).
        DATA t215 TYPE string.
        DATA(t216) = CAST zcl_lnt_syntax_input( t2 ).
        t215 = t216->filename.
        DATA t217 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t218) = |Parameter, fallback|.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        t217 = NEW zcl_lnt_unknown_type( i_error = t218 i_qualified_name = t219 ).
        DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t220.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        t213 = NEW zcl_lnt_typed_identifier( i_token = t214 i_filename = t215 i_type_9913 = t217 i_meta = t220 i_value = t221 ).
        t211 = t213.
      ELSE.
        DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t222.
        t211 = t222.
      ENDIF.
      t210 = t211.
      DATA(t223) = VALUE abap_bool( ).
      DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t225) = CAST zcl_lnt_typed_identifier( t210 ).
      t224 = t225.
      DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t227.
      t226 = t227.
      DATA(t228) = VALUE abap_bool( ).
      DATA(t229) = CAST zcl_lnt_typed_identifier( t224 ).
      IF t229 IS INITIAL.
        t228 = abap_true.
      ENDIF.
      t223 = t228.
      IF t223 = abap_true.
      ELSE.
        DATA(t230) = CAST zcl_lnt_current_scope( t207 ).
        DATA(t231) = VALUE string( ).
        DATA t232 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t234) = CAST zcl_lnt_typed_identifier( t210 ).
        t233 = t234.
        t232 = t233.
        DATA(t235) = VALUE string( ).
        DATA t236 TYPE string.
        DATA t237 TYPE string.
        DATA t238 TYPE REF TO zcl_lnt_abstract_token.
        DATA t239 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t240) = CAST zcl_lnt_fi_identifier( t232 ).
        t239 = t240->token.
        t238 = t239.
        DATA t241 TYPE string.
        DATA(t242) = CAST zcl_lnt_abstract_token( t238 ).
        t241 = t242->str.
        t237 = t241.
        t236 = t237.
        DATA(t243) = VALUE abap_bool( ).
        DATA(t244) = VALUE string( ).
        DATA(t245) = t236.
        DATA(t246) = 0.
        DATA(t247) = 1.
        DATA(t248) = strlen( t245 ).
        IF t246 < 0.
          t246 = t246 + t248.
          IF t246 < 0.
            t246 = 0.
          ENDIF.
        ENDIF.
        IF t246 > t248 OR t247 <= 0.
          CLEAR t244.
        ELSE.
          IF t247 > t248 - t246.
            t247 = t248 - t246.
          ENDIF.
          t244 = t245+t246(t247).
        ENDIF.
        DATA(t249) = |!|.
        t243 = xsdbool( t244 = t249 ).
        IF t243 = abap_true.
          DATA(t250) = VALUE string( ).
          DATA t251 TYPE string.
          DATA(t252) = t236.
          t251 = t252.
          DATA(t253) = VALUE string( ).
          DATA(t254) = t251.
          DATA(t255) = 1.
          DATA t256 TYPE i.
          DATA(t257) = t251.
          DATA(t258) = strlen( t257 ).
          t256 = t258.
          DATA(t259) = strlen( t254 ).
          IF t255 < 0.
            t255 = t255 + t259.
            IF t255 < 0.
              t255 = 0.
            ENDIF.
          ENDIF.
          IF t255 > t259 OR t256 <= 0.
            CLEAR t253.
          ELSE.
            IF t256 > t259 - t255.
              t256 = t259 - t255.
            ENDIF.
            t253 = t254+t255(t256).
          ENDIF.
          t250 = t253.
          t236 = t250.
        ENDIF.
        DATA(t260) = t236.
        t235 = t260.
        t231 = t235.
        DATA t261 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t262) = CAST zcl_lnt_typed_identifier( t210 ).
        t261 = t262.
        t230->add_named_identifier( i_name = t231 i_identifier = t261 ).
      ENDIF.
    ENDIF.
    DATA t263 TYPE string.
    DATA t264 TYPE string.
    DATA t265 TYPE string.
    DATA(t266) = |%_|.
    DATA t267 TYPE string.
    DATA t268 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t269) = CAST zcl_lnt_abstract_token( t14 ).
    t268 = t269.
    DATA t270 TYPE string.
    DATA(t271) = CAST zcl_lnt_abstract_token( t268 ).
    t270 = t271->str.
    t267 = t270.
    DATA(t272) = strlen( t266 ).
    t265 = |{ t266 }{ t267 }|.
    DATA(t273) = |_%_app_%|.
    DATA(t274) = strlen( t265 ).
    t264 = |{ t265 }{ t273 }|.
    t263 = t264.
    DATA t275 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t276 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t277 TYPE REF TO zcl_lnt_position.
    DATA t278 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t279) = CAST zcl_lnt_abstract_token( t14 ).
    t278 = t279.
    DATA t280 TYPE REF TO zcl_lnt_position.
    DATA(t281) = CAST zcl_lnt_abstract_token( t278 ).
    t280 = t281->start.
    t277 = t280.
    DATA(t282) = t263.
    t276 = NEW zcl_lnt_lx_identifier( i_start = t277 i_str = t282 ).
    t275 = t276.
    DATA t283 TYPE REF TO zcl_lnt_current_scope.
    DATA t284 TYPE REF TO zcl_lnt_current_scope.
    DATA(t285) = CAST zcl_lnt_syntax_input( t2 ).
    t284 = t285->scope.
    t283 = t284.
    DATA t286 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t286.
    DATA t287 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t287.
    DATA(t288) = abap_true.
    IF t288 = abap_true.
      DATA t289 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t289.
      DATA(t290) = CAST zcl_lnt_lx_identifier( t275 ).
      DATA t291 TYPE string.
      DATA(t292) = CAST zcl_lnt_syntax_input( t2 ).
      t291 = t292->filename.
      DATA t293 TYPE REF TO zcl_lnt_void_type.
      CLEAR t293.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      DATA(t295) = abap_true.
      IF t295 = abap_true.
        DATA(t296) = |PARAMETER-MAGIC|.
        DATA(t297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t297->has = abap_true.
        t297->value = t296.
        t294 = t297.
      ELSE.
        DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t298.
        t294 = t298.
      ENDIF.
      DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t299.
      t293 = zcl_lnt_void_type=>get_db65( i_voided = t294 i_qualified_name = t299 ).
      DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t300.
      DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t301.
      t289 = NEW zcl_lnt_typed_identifier( i_token = t290 i_filename = t291 i_type_9913 = t293 i_meta = t300 i_value = t301 ).
      t287 = t289.
    ELSE.
      DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t302.
      t287 = t302.
    ENDIF.
    t286 = t287.
    DATA(t303) = VALUE abap_bool( ).
    DATA t304 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t305) = CAST zcl_lnt_typed_identifier( t286 ).
    t304 = t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    t306 = t307.
    DATA(t308) = VALUE abap_bool( ).
    DATA(t309) = CAST zcl_lnt_typed_identifier( t304 ).
    IF t309 IS INITIAL.
      t308 = abap_true.
    ENDIF.
    t303 = t308.
    IF t303 = abap_true.
    ELSE.
      DATA(t310) = CAST zcl_lnt_current_scope( t283 ).
      DATA(t311) = VALUE string( ).
      DATA t312 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t314) = CAST zcl_lnt_typed_identifier( t286 ).
      t313 = t314.
      t312 = t313.
      DATA(t315) = VALUE string( ).
      DATA t316 TYPE string.
      DATA t317 TYPE string.
      DATA t318 TYPE REF TO zcl_lnt_abstract_token.
      DATA t319 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t320) = CAST zcl_lnt_fi_identifier( t312 ).
      t319 = t320->token.
      t318 = t319.
      DATA t321 TYPE string.
      DATA(t322) = CAST zcl_lnt_abstract_token( t318 ).
      t321 = t322->str.
      t317 = t321.
      t316 = t317.
      DATA(t323) = VALUE abap_bool( ).
      DATA(t324) = VALUE string( ).
      DATA(t325) = t316.
      DATA(t326) = 0.
      DATA(t327) = 1.
      DATA(t328) = strlen( t325 ).
      IF t326 < 0.
        t326 = t326 + t328.
        IF t326 < 0.
          t326 = 0.
        ENDIF.
      ENDIF.
      IF t326 > t328 OR t327 <= 0.
        CLEAR t324.
      ELSE.
        IF t327 > t328 - t326.
          t327 = t328 - t326.
        ENDIF.
        t324 = t325+t326(t327).
      ENDIF.
      DATA(t329) = |!|.
      t323 = xsdbool( t324 = t329 ).
      IF t323 = abap_true.
        DATA(t330) = VALUE string( ).
        DATA t331 TYPE string.
        DATA(t332) = t316.
        t331 = t332.
        DATA(t333) = VALUE string( ).
        DATA(t334) = t331.
        DATA(t335) = 1.
        DATA t336 TYPE i.
        DATA(t337) = t331.
        DATA(t338) = strlen( t337 ).
        t336 = t338.
        DATA(t339) = strlen( t334 ).
        IF t335 < 0.
          t335 = t335 + t339.
          IF t335 < 0.
            t335 = 0.
          ENDIF.
        ENDIF.
        IF t335 > t339 OR t336 <= 0.
          CLEAR t333.
        ELSE.
          IF t336 > t339 - t335.
            t336 = t339 - t335.
          ENDIF.
          t333 = t334+t335(t336).
        ENDIF.
        t330 = t333.
        t316 = t330.
      ENDIF.
      DATA(t340) = t316.
      t315 = t340.
      t311 = t315.
      DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t342) = CAST zcl_lnt_typed_identifier( t286 ).
      t341 = t342.
      t310->add_named_identifier( i_name = t311 i_identifier = t341 ).
    ENDIF.
  ENDMETHOD.
  METHOD has_user_command.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    t3 = t4->get_tokens(  ).
    t2 = t3.
    DATA t5 TYPE i.
    DATA(t6) = 0.
    t5 = t6.
    DO.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t5.
      DATA t9 TYPE i.
      DATA t10 TYPE i.
      DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t10 = lines( t11->items ).
      DATA(t12) = 2.
      t9 = t10 - t12.
      t7 = xsdbool( t8 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t21) = t5.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      READ TABLE t20->items INDEX t21 INTO t22.
      t19 ?= t22.
      t18 = t19.
      DATA t23 TYPE string.
      DATA(t24) = CAST zcl_lnt_abstract_token( t18 ).
      t23 = t24->str.
      t17 = t23.
      DATA(t25) = strlen( t17 ).
      t16 = t17.
      IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t16 TO UPPER CASE.
      ELSE.
        t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
      ENDIF.
      DATA(t26) = |USER|.
      t15 = xsdbool( t16 = t26 ).
      t14 = t15.
      IF t15 = abap_true.
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE string.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t32 TYPE i.
        DATA(t33) = t5.
        DATA(t34) = 1.
        t32 = t33 + t34.
        t32 = t32 + 1.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        READ TABLE t31->items INDEX t32 INTO t35.
        t30 ?= t35.
        t29 = t30.
        DATA t36 TYPE string.
        DATA(t37) = CAST zcl_lnt_abstract_token( t29 ).
        t36 = t37->str.
        t28 = t36.
        DATA(t38) = |-|.
        t27 = xsdbool( t28 = t38 ).
        t14 = t27.
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE string.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t45 TYPE i.
        DATA(t46) = t5.
        DATA(t47) = 2.
        t45 = t46 + t47.
        t45 = t45 + 1.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        READ TABLE t44->items INDEX t45 INTO t48.
        t43 ?= t48.
        t42 = t43.
        DATA t49 TYPE string.
        DATA(t50) = CAST zcl_lnt_abstract_token( t42 ).
        t49 = t50->str.
        t41 = t49.
        DATA(t51) = strlen( t41 ).
        t40 = t41.
        IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t40 TO UPPER CASE.
        ELSE.
          t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
        ENDIF.
        DATA(t52) = |COMMAND|.
        t39 = xsdbool( t40 = t52 ).
        t13 = t39.
      ENDIF.
      IF t13 = abap_true.
        DATA(t53) = abap_true.
        result = t53.
        RETURN.
      ENDIF.
      DATA t54 TYPE i.
      DATA(t55) = t5.
      DATA(t56) = 1.
      t54 = t55 + t56.
      t5 = t54.
    ENDDO.
    DATA(t57) = abap_false.
    result = t57.

  ENDMETHOD.
  METHOD has_length.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/statements/parameter.ts:74|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d918_2412a1956230.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
