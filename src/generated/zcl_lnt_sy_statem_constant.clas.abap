* TS: src/abap/5_syntax/statements/constant.ts:10:1 Constant
CLASS zcl_lnt_sy_statem_constant DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS is_name_too_long IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_only_digits IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS allow_only_digits_name IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statem_constant IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_basic_types.
    DATA t4 TYPE REF TO zcl_lnt_basic_types.
    DATA(t5) = CAST zcl_lnt_syntax_input( t2 ).
    t4 = NEW zcl_lnt_basic_types( i_input_967e = t5 ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t7 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t8) = CAST zcl_lnt_basic_types( t3 ).
    DATA(t9) = CAST zcl_lnt_statement_node( t1 ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    t7 = t8->simple_type( i_node = t9 i_qualified_name_prefix = t10 ).
    t6 = t7.
    DATA t11 TYPE abap_bool.
    DATA(t12) = CAST zcl_lnt_typed_identifier( t6 ).
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t15) = CAST zcl_lnt_basic_types( t3 ).
      DATA(t16) = CAST zcl_lnt_statement_node( t1 ).
      t14 = t15->find_value( i_node = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t20.
      t19 = t20.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t22) = |read_only|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t24) = |static|.
      APPEND t24 TO t23->items.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      t18 = t25.
      t17 = t18.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = VALUE string( ).
      DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t32) = CAST zcl_lnt_typed_identifier( t6 ).
      t31 = t32.
      t30 = t31.
      DATA(t33) = VALUE string( ).
      DATA t34 TYPE string.
      DATA t35 TYPE string.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t38) = CAST zcl_lnt_fi_identifier( t30 ).
      t37 = t38->token.
      t36 = t37.
      DATA t39 TYPE string.
      DATA(t40) = CAST zcl_lnt_abstract_token( t36 ).
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
      t29 = t33.
      t28 = t29.
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t60.
      DATA(t61) = |^[0-9]+$|.
      DATA(t62) = ||.
      CREATE OBJECT t60 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t61 flags = t62.
      DATA(t63) = t28.
      t59 = t60->test( p0 = t63 ).
      t27 = t59.
      t26 = t27.
      IF t27 = abap_true.
        DATA t64 TYPE abap_bool.
        DATA t65 TYPE abap_bool.
        DATA(t66) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t67) = CAST zcl_lnt_syntax_input( t2 ).
        t65 = me->allow_only_digits_name( i_node = t66 i_input_967e = t67 ).
        DATA(t68) = abap_false.
        t64 = xsdbool( t65 = t68 ).
        t26 = t64.
      ENDIF.
      IF t26 = abap_true.
        DATA t69 TYPE string.
        DATA(t70) = |not possible to have a name with only digits|.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t72) = CAST zcl_lnt_syntax_input( t2 ).
        t71 = t72->issues.
        DATA t73 TYPE REF TO zcl_lnt_issue.
        DATA(t74) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        DATA t76 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t78) = CAST zcl_lnt_typed_identifier( t6 ).
        t77 = t78.
        t76 = t77.
        DATA t79 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t80) = CAST zcl_lnt_fi_identifier( t76 ).
        t79 = t80->token.
        t75 = t79.
        DATA(t81) = t69.
        DATA t82 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t82.
        t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t74 i_token = t75 i_message_26cb = t81 i_fix = t82 ).
        APPEND t73 TO t71->items.
        DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_abstract_token.
        DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t87) = CAST zcl_lnt_typed_identifier( t6 ).
        t86 = t87.
        t85 = t86.
        DATA t88 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t89) = CAST zcl_lnt_fi_identifier( t85 ).
        t88 = t89->token.
        t84 = t88.
        DATA t90 TYPE string.
        DATA(t91) = CAST zcl_lnt_syntax_input( t2 ).
        t90 = t91->filename.
        DATA t92 TYPE REF TO zcl_lnt_void_type.
        CLEAR t92.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        DATA(t94) = abap_true.
        IF t94 = abap_true.
          DATA(t95) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = t95.
          t93 = t96.
        ELSE.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t93 = t97.
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t92 = zcl_lnt_void_type=>get_db65( i_voided = t93 i_qualified_name = t98 ).
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA(t101) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
          t99 = t101.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t102.
          t99 = t102.
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        DATA(t104) = abap_true.
        IF t104 = abap_true.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          DATA(t106) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
          IF t106 IS BOUND AND t106->has = abap_true.
            CREATE OBJECT t105.
            t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t105->sval = t106->value.
          ENDIF.
          t103 = t105.
        ELSE.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          t103 = t107.
        ENDIF.
        t83 = NEW zcl_lnt_typed_identifier( i_token = t84 i_filename = t90 i_type_9913 = t92 i_meta = t99 i_value = t103 ).
        result = t83.
        RETURN.
      ENDIF.
      DATA(t108) = VALUE abap_bool( ).
      DATA(t109) = VALUE string( ).
      DATA(t110) = VALUE string( ).
      DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t113) = CAST zcl_lnt_typed_identifier( t6 ).
      t112 = t113.
      t111 = t112.
      DATA(t114) = VALUE string( ).
      DATA t115 TYPE string.
      DATA t116 TYPE string.
      DATA t117 TYPE REF TO zcl_lnt_abstract_token.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t119) = CAST zcl_lnt_fi_identifier( t111 ).
      t118 = t119->token.
      t117 = t118.
      DATA t120 TYPE string.
      DATA(t121) = CAST zcl_lnt_abstract_token( t117 ).
      t120 = t121->str.
      t116 = t120.
      t115 = t116.
      DATA(t122) = VALUE abap_bool( ).
      DATA(t123) = VALUE string( ).
      DATA(t124) = t115.
      DATA(t125) = 0.
      DATA(t126) = 1.
      DATA(t127) = strlen( t124 ).
      IF t125 < 0.
        t125 = t125 + t127.
        IF t125 < 0.
          t125 = 0.
        ENDIF.
      ENDIF.
      IF t125 > t127 OR t126 <= 0.
        CLEAR t123.
      ELSE.
        IF t126 > t127 - t125.
          t126 = t127 - t125.
        ENDIF.
        t123 = t124+t125(t126).
      ENDIF.
      DATA(t128) = |!|.
      t122 = xsdbool( t123 = t128 ).
      IF t122 = abap_true.
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE string.
        DATA(t131) = t115.
        t130 = t131.
        DATA(t132) = VALUE string( ).
        DATA(t133) = t130.
        DATA(t134) = 1.
        DATA t135 TYPE i.
        DATA(t136) = t130.
        DATA(t137) = strlen( t136 ).
        t135 = t137.
        DATA(t138) = strlen( t133 ).
        IF t134 < 0.
          t134 = t134 + t138.
          IF t134 < 0.
            t134 = 0.
          ENDIF.
        ENDIF.
        IF t134 > t138 OR t135 <= 0.
          CLEAR t132.
        ELSE.
          IF t135 > t138 - t134.
            t135 = t138 - t134.
          ENDIF.
          t132 = t133+t134(t135).
        ENDIF.
        t129 = t132.
        t115 = t129.
      ENDIF.
      DATA(t139) = t115.
      t114 = t139.
      t110 = t114.
      t109 = t110.
      DATA t140 TYPE abap_bool.
      DATA t141 TYPE i.
      DATA(t142) = t109.
      DATA(t143) = strlen( t142 ).
      t141 = t143.
      DATA(t144) = 30.
      t140 = xsdbool( t141 > t144 ).
      t108 = t140.
      IF t108 = abap_true.
        DATA(t145) = VALUE string( ).
        DATA(t146) = VALUE string( ).
        DATA(t147) = |CONSTANTS name too long, |.
        DATA(t148) = VALUE string( ).
        DATA t149 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t151) = CAST zcl_lnt_typed_identifier( t6 ).
        t150 = t151.
        t149 = t150.
        DATA(t152) = VALUE string( ).
        DATA t153 TYPE string.
        DATA t154 TYPE string.
        DATA t155 TYPE REF TO zcl_lnt_abstract_token.
        DATA t156 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t157) = CAST zcl_lnt_fi_identifier( t149 ).
        t156 = t157->token.
        t155 = t156.
        DATA t158 TYPE string.
        DATA(t159) = CAST zcl_lnt_abstract_token( t155 ).
        t158 = t159->str.
        t154 = t158.
        t153 = t154.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = VALUE string( ).
        DATA(t162) = t153.
        DATA(t163) = 0.
        DATA(t164) = 1.
        DATA(t165) = strlen( t162 ).
        IF t163 < 0.
          t163 = t163 + t165.
          IF t163 < 0.
            t163 = 0.
          ENDIF.
        ENDIF.
        IF t163 > t165 OR t164 <= 0.
          CLEAR t161.
        ELSE.
          IF t164 > t165 - t163.
            t164 = t165 - t163.
          ENDIF.
          t161 = t162+t163(t164).
        ENDIF.
        DATA(t166) = |!|.
        t160 = xsdbool( t161 = t166 ).
        IF t160 = abap_true.
          DATA(t167) = VALUE string( ).
          DATA t168 TYPE string.
          DATA(t169) = t153.
          t168 = t169.
          DATA(t170) = VALUE string( ).
          DATA(t171) = t168.
          DATA(t172) = 1.
          DATA t173 TYPE i.
          DATA(t174) = t168.
          DATA(t175) = strlen( t174 ).
          t173 = t175.
          DATA(t176) = strlen( t171 ).
          IF t172 < 0.
            t172 = t172 + t176.
            IF t172 < 0.
              t172 = 0.
            ENDIF.
          ENDIF.
          IF t172 > t176 OR t173 <= 0.
            CLEAR t170.
          ELSE.
            IF t173 > t176 - t172.
              t173 = t176 - t172.
            ENDIF.
            t170 = t171+t172(t173).
          ENDIF.
          t167 = t170.
          t153 = t167.
        ENDIF.
        DATA(t177) = t153.
        t152 = t177.
        t148 = t152.
        DATA(t178) = strlen( t147 ).
        t146 = |{ t147 }{ t148 }|.
        t145 = t146.
        DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t180) = CAST zcl_lnt_syntax_input( t2 ).
        t179 = t180->issues.
        DATA t181 TYPE REF TO zcl_lnt_issue.
        DATA(t182) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        DATA t184 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t186) = CAST zcl_lnt_typed_identifier( t6 ).
        t185 = t186.
        t184 = t185.
        DATA t187 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t188) = CAST zcl_lnt_fi_identifier( t184 ).
        t187 = t188->token.
        t183 = t187.
        DATA(t189) = t145.
        DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t190.
        t181 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t182 i_token = t183 i_message_26cb = t189 i_fix = t190 ).
        APPEND t181 TO t179->items.
      ENDIF.
      DATA t191 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t191.
      DATA t192 TYPE REF TO zcl_lnt_abstract_token.
      DATA t193 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t195) = CAST zcl_lnt_typed_identifier( t6 ).
      t194 = t195.
      t193 = t194.
      DATA t196 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t197) = CAST zcl_lnt_fi_identifier( t193 ).
      t196 = t197->token.
      t192 = t196.
      DATA t198 TYPE string.
      DATA(t199) = CAST zcl_lnt_syntax_input( t2 ).
      t198 = t199->filename.
      DATA t200 TYPE REF TO zcl_lnt_abstract_type.
      DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t203) = CAST zcl_lnt_typed_identifier( t6 ).
      t202 = t203.
      t201 = t202.
      DATA t204 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t205) = CAST zcl_lnt_typed_identifier( t201 ).
      t204 = t205->type_cba0.
      t200 = t204.
      DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t206.
      DATA(t207) = abap_true.
      IF t207 = abap_true.
        DATA(t208) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
        t206 = t208.
      ELSE.
        DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t209.
        t206 = t209.
      ENDIF.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t210.
      DATA(t211) = abap_true.
      IF t211 = abap_true.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        DATA(t213) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
        IF t213 IS BOUND AND t213->has = abap_true.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t212->sval = t213->value.
        ENDIF.
        t210 = t212.
      ELSE.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        t210 = t214.
      ENDIF.
      t191 = NEW zcl_lnt_typed_identifier( i_token = t192 i_filename = t198 i_type_9913 = t200 i_meta = t206 i_value = t210 ).
      result = t191.
      RETURN.
    ENDIF.
    DATA t215 TYPE REF TO zcl_lnt_expression_node.
    DATA t216 TYPE REF TO zcl_lnt_expression_node.
    DATA(t217) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t218) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    t216 = t217->find_first_expression( i_type_9913 = t218 ).
    t215 = t216.
    DATA t219 TYPE abap_bool.
    DATA(t220) = CAST zcl_lnt_expression_node( t215 ).
    t219 = xsdbool( t220 IS BOUND ).
    IF t219 = abap_true.
      DATA t221 TYPE abap_bool.
      DATA t222 TYPE abap_bool.
      DATA t223 TYPE string.
      DATA t224 TYPE string.
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      DATA(t226) = CAST zcl_lnt_expression_node( t215 ).
      t225 = t226.
      t224 = t225->concat_tokens( ).
      t223 = t224.
      DATA t227 TYPE abap_bool.
      DATA t228 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t228.
      DATA(t229) = |^[0-9]+$|.
      DATA(t230) = ||.
      CREATE OBJECT t228 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t229 flags = t230.
      DATA(t231) = t223.
      t227 = t228->test( p0 = t231 ).
      t222 = t227.
      t221 = t222.
      IF t222 = abap_true.
        DATA t232 TYPE abap_bool.
        DATA t233 TYPE abap_bool.
        DATA(t234) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t235) = CAST zcl_lnt_syntax_input( t2 ).
        t233 = me->allow_only_digits_name( i_node = t234 i_input_967e = t235 ).
        DATA(t236) = abap_false.
        t232 = xsdbool( t233 = t236 ).
        t221 = t232.
      ENDIF.
      IF t221 = abap_true.
        DATA t237 TYPE string.
        DATA(t238) = |not possible to have a name with only digits|.
        t237 = t238.
        DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t240) = CAST zcl_lnt_syntax_input( t2 ).
        t239 = t240->issues.
        DATA t241 TYPE REF TO zcl_lnt_issue.
        DATA(t242) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t243 TYPE REF TO zcl_lnt_abstract_token.
        DATA t244 TYPE REF TO zcl_lnt_expression_node.
        DATA(t245) = CAST zcl_lnt_expression_node( t215 ).
        t244 = t245.
        t243 = t244->get_first_token( ).
        DATA(t246) = t237.
        DATA t247 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t247.
        t241 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t242 i_token = t243 i_message_26cb = t246 i_fix = t247 ).
        APPEND t241 TO t239->items.
      ENDIF.
      DATA t248 TYPE abap_bool.
      DATA t249 TYPE string.
      DATA t250 TYPE string.
      DATA t251 TYPE REF TO zcl_lnt_expression_node.
      DATA(t252) = CAST zcl_lnt_expression_node( t215 ).
      t251 = t252.
      t250 = t251->concat_tokens( ).
      t249 = t250.
      DATA t253 TYPE abap_bool.
      DATA t254 TYPE i.
      DATA(t255) = t249.
      DATA(t256) = strlen( t255 ).
      t254 = t256.
      DATA(t257) = 30.
      t253 = xsdbool( t254 > t257 ).
      t248 = t253.
      IF t248 = abap_true.
        DATA t258 TYPE string.
        DATA t259 TYPE string.
        DATA(t260) = |CONSTANTS name too long, |.
        DATA t261 TYPE string.
        DATA t262 TYPE REF TO zcl_lnt_expression_node.
        DATA(t263) = CAST zcl_lnt_expression_node( t215 ).
        t262 = t263.
        t261 = t262->concat_tokens( ).
        DATA(t264) = strlen( t260 ).
        t259 = |{ t260 }{ t261 }|.
        t258 = t259.
        DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t266) = CAST zcl_lnt_syntax_input( t2 ).
        t265 = t266->issues.
        DATA t267 TYPE REF TO zcl_lnt_issue.
        DATA(t268) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t269 TYPE REF TO zcl_lnt_abstract_token.
        DATA t270 TYPE REF TO zcl_lnt_expression_node.
        DATA(t271) = CAST zcl_lnt_expression_node( t215 ).
        t270 = t271.
        t269 = t270->get_first_token( ).
        DATA(t272) = t258.
        DATA t273 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t273.
        t267 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t268 i_token = t269 i_message_26cb = t272 i_fix = t273 ).
        APPEND t267 TO t265->items.
      ENDIF.
      DATA t274 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t275 TYPE REF TO zcl_lnt_abstract_token.
      DATA t276 TYPE REF TO zcl_lnt_expression_node.
      DATA(t277) = CAST zcl_lnt_expression_node( t215 ).
      t276 = t277.
      t275 = t276->get_first_token( ).
      DATA t278 TYPE string.
      DATA(t279) = CAST zcl_lnt_syntax_input( t2 ).
      t278 = t279->filename.
      DATA t280 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t281) = |constant, fallback|.
      DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t282.
      t280 = NEW zcl_lnt_unknown_type( i_error = t281 i_qualified_name = t282 ).
      DATA t283 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t283.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t284.
      t274 = NEW zcl_lnt_typed_identifier( i_token = t275 i_filename = t278 i_type_9913 = t280 i_meta = t283 i_value = t284 ).
      result = t274.
      RETURN.
    ENDIF.
    DATA t285 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    CLEAR t285.
    DATA t286 TYPE REF TO zcx_lnt_assert_error.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t287.
    DATA(t288) = abap_true.
    IF t288 = abap_true.
      DATA(t289) = |Statement Constant: unexpected structure|.
      DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t290->has = abap_true.
      t290->value = t289.
      t287 = t290.
    ELSE.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t291.
      t287 = t291.
    ENDIF.
    t286 = NEW zcx_lnt_assert_error( i_message_26cb = t287 ).
    t285 = NEW #( ).
    t285->payload = t286.
    RAISE EXCEPTION t285.
  ENDMETHOD.
  METHOD is_name_too_long.
    DATA(t1) = i_name.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t5.
    DATA(t6) = 30.
    t2 = xsdbool( t3 > t6 ).
    result = t2.

  ENDMETHOD.
  METHOD is_only_digits.
    DATA(t1) = i_name.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = |^[0-9]+$|.
    DATA(t5) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    DATA(t6) = t1.
    t2 = t3->test( p0 = t6 ).
    result = t2.

  ENDMETHOD.
  METHOD allow_only_digits_name.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/statements/constant.ts:53|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d859_61453ad15a19.
  ENDMETHOD.
ENDCLASS.
