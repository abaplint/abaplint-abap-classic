* TS: src/abap/5_syntax/statements/constant.ts:10:1 Constant
CLASS zcl_lnt_sy_statem_constant DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS is_name_too_long IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_only_digits IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS allow_only_digits_name IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statem_constant IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t4.
    DATA(t5) = t2.
    t4 = NEW zcl_lnt_basic_types( i_input_967e = t5 ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t7.
    DATA(t8) = t3.
    DATA(t9) = t1.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    t7 = t8->simple_type( i_node = t9 i_qualified_name_prefix = t10 ).
    t6 = t7.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = t3.
      DATA(t16) = t1.
      t14 = t15->find_value( i_node = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      CREATE OBJECT t20.
      t19 = t20.
      DATA(t21) = t19.
      DATA(t22) = |read_only|.
      t21->load( ).
      APPEND t22 TO t21->items.
      t21->save( ).
      DATA(t23) = t19.
      DATA(t24) = |static|.
      t23->load( ).
      APPEND t24 TO t23->items.
      t23->save( ).
      DATA(t25) = t19.
      t18 = t25.
      t17 = t18.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA(t31) = VALUE string( ).
        DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t33.
        DATA(t34) = t6.
        t33 = t34.
        t32 = t33.
        DATA(t35) = VALUE string( ).
        DATA(t36) = VALUE string( ).
        DATA(t37) = VALUE string( ).
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t39.
        DATA(t40) = t32.
        t39 = t40->token.
        t38 = t39.
        DATA(t41) = VALUE string( ).
        DATA(t42) = t38.
        t41 = t42->str.
        t37 = t41.
        t36 = t37.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE string( ).
        DATA(t45) = t36.
        DATA(t46) = 0.
        DATA(t47) = 1.
        DATA(t48) = strlen( t45 ).
        IF t46 < 0.
          t46 = t46 + t48.
          IF t46 < 0.
            t46 = 0.
          ENDIF.
        ENDIF.
        IF t46 > t48 OR t47 <= 0.
          CLEAR t44.
        ELSE.
          IF t47 > t48 - t46.
            t47 = t48 - t46.
          ENDIF.
          t44 = t45+t46(t47).
        ENDIF.
        DATA(t49) = |!|.
        t43 = xsdbool( t44 = t49 ).
        IF t43 = abap_true.
          DATA(t50) = VALUE string( ).
          DATA(t51) = VALUE string( ).
          DATA(t52) = t36.
          t51 = t52.
          DATA(t53) = VALUE string( ).
          DATA(t54) = t51.
          DATA(t55) = 1.
          DATA(t56) = VALUE i( ).
          DATA(t57) = t51.
          DATA(t58) = strlen( t57 ).
          t56 = t58.
          DATA(t59) = strlen( t54 ).
          IF t55 < 0.
            t55 = t55 + t59.
            IF t55 < 0.
              t55 = 0.
            ENDIF.
          ENDIF.
          IF t55 > t59 OR t56 <= 0.
            CLEAR t53.
          ELSE.
            IF t56 > t59 - t55.
              t56 = t59 - t55.
            ENDIF.
            t53 = t54+t55(t56).
          ENDIF.
          t50 = t53.
          t36 = t50.
        ENDIF.
        DATA(t60) = t36.
        t35 = t60.
        t31 = t35.
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t31.
        t29 = t61.
      ELSE.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        t29 = t62.
      ENDIF.
      t28 = t29.
      DATA(t63) = VALUE abap_bool( ).
      DATA t64 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t64.
      DATA(t65) = |^[0-9]+$|.
      DATA(t66) = ||.
      CREATE OBJECT t64 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t65 flags = t66.
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA(t69) = t28.
      t68 = t69.
      DATA(t70) = VALUE string( ).
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = t68.
      IF t72 IS INITIAL.
        t71 = abap_true.
      ELSEIF t72->has = abap_false.
        t71 = abap_true.
      ENDIF.
      IF t71 = abap_true.
        DATA(t73) = |undefined|.
        t70 = t73.
      ELSE.
        DATA(t74) = VALUE string( ).
        DATA(t75) = t68.
        t74 = t75->value.
        t70 = t74.
      ENDIF.
      t67 = t70.
      t63 = t64->test( p0 = t67 ).
      t27 = t63.
      t26 = t27.
      IF t27 = abap_true.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t78.
        DATA(t79) = t1.
        t78 = t79.
        DATA t80 TYPE REF TO zcl_lnt_syntax_input.
        CLEAR t80.
        DATA(t81) = t2.
        t80 = t81.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        DATA t85 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t85.
        DATA(t86) = t80.
        t85 = t86->scope.
        t84 = t85->is_any_oo( ).
        DATA(t87) = abap_false.
        t83 = xsdbool( t84 = t87 ).
        t82 = t83.
        IF t83 = abap_true.
          DATA(t88) = VALUE abap_bool( ).
          DATA t89 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t89.
          DATA t90 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t91.
          DATA(t92) = t78.
          t91 = t92.
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t93.
          DATA(t94) = t91.
          t93 = t94->colon.
          t90 = t93.
          t89 = t90.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          t95 = t96.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = VALUE abap_bool( ).
          DATA(t99) = t89.
          IF t99 IS INITIAL.
            t98 = abap_true.
          ENDIF.
          t97 = xsdbool( t98 = abap_false ).
          t88 = t97.
          t82 = t88.
        ENDIF.
        t77 = t82.
        DATA(t100) = abap_false.
        t76 = xsdbool( t77 = t100 ).
        t26 = t76.
      ENDIF.
      IF t26 = abap_true.
        DATA(t101) = VALUE string( ).
        DATA(t102) = |not possible to have a name with only digits|.
        t101 = t102.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t103.
        DATA(t104) = t2.
        t103 = t104->issues.
        DATA t105 TYPE REF TO zcl_lnt_issue.
        CLEAR t105.
        DATA(t106) = t2.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t107.
        DATA t108 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t108.
        DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t109.
        DATA(t110) = t6.
        t109 = t110.
        t108 = t109.
        DATA t111 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t111.
        DATA(t112) = t108.
        t111 = t112->token.
        t107 = t111.
        DATA(t113) = t101.
        DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t114.
        t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t106 i_token = t107 i_message_26cb = t113 i_fix = t114 ).
        t103->load( ).
        APPEND t105 TO t103->items.
        t103->save( ).
        DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t116.
        DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t117.
        DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t118.
        DATA(t119) = t6.
        t118 = t119.
        t117 = t118.
        DATA t120 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t120.
        DATA(t121) = t117.
        t120 = t121->token.
        t116 = t120.
        DATA(t122) = VALUE string( ).
        DATA(t123) = t2.
        t122 = t123->filename.
        DATA t124 TYPE REF TO zcl_lnt_void_type.
        CLEAR t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA(t126) = abap_true.
        IF t126 = abap_true.
          DATA(t127) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = t127.
          t125 = t128.
        ELSE.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          t125 = t129.
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        t124 = zcl_lnt_void_type=>get_db65( i_voided = t125 i_qualified_name = t130 ).
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t131.
        DATA(t132) = abap_true.
        IF t132 = abap_true.
          DATA(t133) = t17.
          t131 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t134.
          t131 = t134.
        ENDIF.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          DATA(t138) = t13.
          CLEAR t137.
          IF t138 IS BOUND AND t138->has = abap_true.
            CLEAR t137.
            CREATE OBJECT t137.
            t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t137->sval = t138->value.
          ENDIF.
          t135 = t137.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          t135 = t139.
        ENDIF.
        t115 = NEW zcl_lnt_typed_identifier( i_token = t116 i_filename = t122 i_type_9913 = t124 i_meta = t131 i_value = t135 ).
        result = t115.
        RETURN.
      ENDIF.
      DATA(t140) = VALUE abap_bool( ).
      DATA(t141) = VALUE string( ).
      DATA(t142) = VALUE string( ).
      DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t144.
      DATA(t145) = t6.
      t144 = t145.
      t143 = t144.
      DATA(t146) = VALUE string( ).
      DATA(t147) = VALUE string( ).
      DATA(t148) = VALUE string( ).
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t149.
      DATA t150 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t150.
      DATA(t151) = t143.
      t150 = t151->token.
      t149 = t150.
      DATA(t152) = VALUE string( ).
      DATA(t153) = t149.
      t152 = t153->str.
      t148 = t152.
      t147 = t148.
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = VALUE string( ).
      DATA(t156) = t147.
      DATA(t157) = 0.
      DATA(t158) = 1.
      DATA(t159) = strlen( t156 ).
      IF t157 < 0.
        t157 = t157 + t159.
        IF t157 < 0.
          t157 = 0.
        ENDIF.
      ENDIF.
      IF t157 > t159 OR t158 <= 0.
        CLEAR t155.
      ELSE.
        IF t158 > t159 - t157.
          t158 = t159 - t157.
        ENDIF.
        t155 = t156+t157(t158).
      ENDIF.
      DATA(t160) = |!|.
      t154 = xsdbool( t155 = t160 ).
      IF t154 = abap_true.
        DATA(t161) = VALUE string( ).
        DATA(t162) = VALUE string( ).
        DATA(t163) = t147.
        t162 = t163.
        DATA(t164) = VALUE string( ).
        DATA(t165) = t162.
        DATA(t166) = 1.
        DATA(t167) = VALUE i( ).
        DATA(t168) = t162.
        DATA(t169) = strlen( t168 ).
        t167 = t169.
        DATA(t170) = strlen( t165 ).
        IF t166 < 0.
          t166 = t166 + t170.
          IF t166 < 0.
            t166 = 0.
          ENDIF.
        ENDIF.
        IF t166 > t170 OR t167 <= 0.
          CLEAR t164.
        ELSE.
          IF t167 > t170 - t166.
            t167 = t170 - t166.
          ENDIF.
          t164 = t165+t166(t167).
        ENDIF.
        t161 = t164.
        t147 = t161.
      ENDIF.
      DATA(t171) = t147.
      t146 = t171.
      t142 = t146.
      t141 = t142.
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = VALUE i( ).
      DATA(t174) = t141.
      DATA(t175) = strlen( t174 ).
      t173 = t175.
      DATA(t176) = 30.
      t172 = xsdbool( t173 > t176 ).
      t140 = t172.
      IF t140 = abap_true.
        DATA(t177) = VALUE string( ).
        DATA(t178) = VALUE string( ).
        DATA(t179) = |CONSTANTS name too long, |.
        DATA(t180) = VALUE string( ).
        DATA t181 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t181.
        DATA t182 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t182.
        DATA(t183) = t6.
        t182 = t183.
        t181 = t182.
        DATA(t184) = VALUE string( ).
        DATA(t185) = VALUE string( ).
        DATA(t186) = VALUE string( ).
        DATA t187 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t187.
        DATA t188 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t188.
        DATA(t189) = t181.
        t188 = t189->token.
        t187 = t188.
        DATA(t190) = VALUE string( ).
        DATA(t191) = t187.
        t190 = t191->str.
        t186 = t190.
        t185 = t186.
        DATA(t192) = VALUE abap_bool( ).
        DATA(t193) = VALUE string( ).
        DATA(t194) = t185.
        DATA(t195) = 0.
        DATA(t196) = 1.
        DATA(t197) = strlen( t194 ).
        IF t195 < 0.
          t195 = t195 + t197.
          IF t195 < 0.
            t195 = 0.
          ENDIF.
        ENDIF.
        IF t195 > t197 OR t196 <= 0.
          CLEAR t193.
        ELSE.
          IF t196 > t197 - t195.
            t196 = t197 - t195.
          ENDIF.
          t193 = t194+t195(t196).
        ENDIF.
        DATA(t198) = |!|.
        t192 = xsdbool( t193 = t198 ).
        IF t192 = abap_true.
          DATA(t199) = VALUE string( ).
          DATA(t200) = VALUE string( ).
          DATA(t201) = t185.
          t200 = t201.
          DATA(t202) = VALUE string( ).
          DATA(t203) = t200.
          DATA(t204) = 1.
          DATA(t205) = VALUE i( ).
          DATA(t206) = t200.
          DATA(t207) = strlen( t206 ).
          t205 = t207.
          DATA(t208) = strlen( t203 ).
          IF t204 < 0.
            t204 = t204 + t208.
            IF t204 < 0.
              t204 = 0.
            ENDIF.
          ENDIF.
          IF t204 > t208 OR t205 <= 0.
            CLEAR t202.
          ELSE.
            IF t205 > t208 - t204.
              t205 = t208 - t204.
            ENDIF.
            t202 = t203+t204(t205).
          ENDIF.
          t199 = t202.
          t185 = t199.
        ENDIF.
        DATA(t209) = t185.
        t184 = t209.
        t180 = t184.
        DATA(t210) = strlen( t179 ).
        t178 = |{ t179 }{ t180 }|.
        t177 = t178.
        DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t211.
        DATA(t212) = t2.
        t211 = t212->issues.
        DATA t213 TYPE REF TO zcl_lnt_issue.
        CLEAR t213.
        DATA(t214) = t2.
        DATA t215 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t215.
        DATA t216 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t216.
        DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t217.
        DATA(t218) = t6.
        t217 = t218.
        t216 = t217.
        DATA t219 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t219.
        DATA(t220) = t216.
        t219 = t220->token.
        t215 = t219.
        DATA(t221) = t177.
        DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t222.
        t213 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t214 i_token = t215 i_message_26cb = t221 i_fix = t222 ).
        t211->load( ).
        APPEND t213 TO t211->items.
        t211->save( ).
      ENDIF.
      DATA t223 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t223.
      DATA t224 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t224.
      DATA t225 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t225.
      DATA t226 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t226.
      DATA(t227) = t6.
      t226 = t227.
      t225 = t226.
      DATA t228 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t228.
      DATA(t229) = t225.
      t228 = t229->token.
      t224 = t228.
      DATA(t230) = VALUE string( ).
      DATA(t231) = t2.
      t230 = t231->filename.
      DATA t232 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t232.
      DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t233.
      DATA t234 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t234.
      DATA(t235) = t6.
      t234 = t235.
      t233 = t234.
      DATA t236 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t236.
      DATA(t237) = t233.
      t236 = t237->type_cba0.
      t232 = t236.
      DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t238.
      DATA(t239) = abap_true.
      IF t239 = abap_true.
        DATA(t240) = t17.
        t238 = t240.
      ELSE.
        DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t241.
        t238 = t241.
      ENDIF.
      DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t242.
      DATA(t243) = abap_true.
      IF t243 = abap_true.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        DATA(t245) = t13.
        CLEAR t244.
        IF t245 IS BOUND AND t245->has = abap_true.
          CLEAR t244.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t244->sval = t245->value.
        ENDIF.
        t242 = t244.
      ELSE.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        t242 = t246.
      ENDIF.
      t223 = NEW zcl_lnt_typed_identifier( i_token = t224 i_filename = t230 i_type_9913 = t232 i_meta = t238 i_value = t242 ).
      result = t223.
      RETURN.
    ENDIF.
    DATA t247 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t247.
    DATA t248 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t248.
    DATA(t249) = t1.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t248 = t249->find_first_expression( i_type_9913 = t250 ).
    t247 = t248.
    DATA(t251) = VALUE abap_bool( ).
    DATA(t252) = t247.
    t251 = xsdbool( t252 IS BOUND ).
    IF t251 = abap_true.
      DATA(t253) = VALUE abap_bool( ).
      DATA(t254) = VALUE abap_bool( ).
      DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t255.
      DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t256.
      DATA(t257) = abap_true.
      IF t257 = abap_true.
        DATA(t258) = VALUE string( ).
        DATA t259 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t259.
        DATA(t260) = t247.
        t259 = t260.
        t258 = t259->concat_tokens( ).
        DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t261->has = abap_true.
        t261->value = t258.
        t256 = t261.
      ELSE.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        t256 = t262.
      ENDIF.
      t255 = t256.
      DATA(t263) = VALUE abap_bool( ).
      DATA t264 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t264.
      DATA(t265) = |^[0-9]+$|.
      DATA(t266) = ||.
      CREATE OBJECT t264 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t265 flags = t266.
      DATA(t267) = VALUE string( ).
      DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t268.
      DATA(t269) = t255.
      t268 = t269.
      DATA(t270) = VALUE string( ).
      DATA(t271) = VALUE abap_bool( ).
      DATA(t272) = t268.
      IF t272 IS INITIAL.
        t271 = abap_true.
      ELSEIF t272->has = abap_false.
        t271 = abap_true.
      ENDIF.
      IF t271 = abap_true.
        DATA(t273) = |undefined|.
        t270 = t273.
      ELSE.
        DATA(t274) = VALUE string( ).
        DATA(t275) = t268.
        t274 = t275->value.
        t270 = t274.
      ENDIF.
      t267 = t270.
      t263 = t264->test( p0 = t267 ).
      t254 = t263.
      t253 = t254.
      IF t254 = abap_true.
        DATA(t276) = VALUE abap_bool( ).
        DATA(t277) = VALUE abap_bool( ).
        DATA t278 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t278.
        DATA(t279) = t1.
        t278 = t279.
        DATA t280 TYPE REF TO zcl_lnt_syntax_input.
        CLEAR t280.
        DATA(t281) = t2.
        t280 = t281.
        DATA(t282) = VALUE abap_bool( ).
        DATA(t283) = VALUE abap_bool( ).
        DATA(t284) = VALUE abap_bool( ).
        DATA t285 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t285.
        DATA(t286) = t280.
        t285 = t286->scope.
        t284 = t285->is_any_oo( ).
        DATA(t287) = abap_false.
        t283 = xsdbool( t284 = t287 ).
        t282 = t283.
        IF t283 = abap_true.
          DATA(t288) = VALUE abap_bool( ).
          DATA t289 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t289.
          DATA t290 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t290.
          DATA t291 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t291.
          DATA(t292) = t278.
          t291 = t292.
          DATA t293 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t293.
          DATA(t294) = t291.
          t293 = t294->colon.
          t290 = t293.
          t289 = t290.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          t295 = t296.
          DATA(t297) = VALUE abap_bool( ).
          DATA(t298) = VALUE abap_bool( ).
          DATA(t299) = t289.
          IF t299 IS INITIAL.
            t298 = abap_true.
          ENDIF.
          t297 = xsdbool( t298 = abap_false ).
          t288 = t297.
          t282 = t288.
        ENDIF.
        t277 = t282.
        DATA(t300) = abap_false.
        t276 = xsdbool( t277 = t300 ).
        t253 = t276.
      ENDIF.
      IF t253 = abap_true.
        DATA(t301) = VALUE string( ).
        DATA(t302) = |not possible to have a name with only digits|.
        t301 = t302.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t303.
        DATA(t304) = t2.
        t303 = t304->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        CLEAR t305.
        DATA(t306) = t2.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t307.
        DATA t308 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t308.
        DATA(t309) = t247.
        t308 = t309.
        t307 = t308->get_first_token( ).
        DATA(t310) = t301.
        DATA t311 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t311.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t306 i_token = t307 i_message_26cb = t310 i_fix = t311 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
      ENDIF.
      DATA(t312) = VALUE abap_bool( ).
      DATA(t313) = VALUE string( ).
      DATA(t314) = VALUE string( ).
      DATA t315 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t315.
      DATA(t316) = t247.
      t315 = t316.
      t314 = t315->concat_tokens( ).
      t313 = t314.
      DATA(t317) = VALUE abap_bool( ).
      DATA(t318) = VALUE i( ).
      DATA(t319) = t313.
      DATA(t320) = strlen( t319 ).
      t318 = t320.
      DATA(t321) = 30.
      t317 = xsdbool( t318 > t321 ).
      t312 = t317.
      IF t312 = abap_true.
        DATA(t322) = VALUE string( ).
        DATA(t323) = VALUE string( ).
        DATA(t324) = |CONSTANTS name too long, |.
        DATA(t325) = VALUE string( ).
        DATA t326 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t326.
        DATA(t327) = t247.
        t326 = t327.
        t325 = t326->concat_tokens( ).
        DATA(t328) = strlen( t324 ).
        t323 = |{ t324 }{ t325 }|.
        t322 = t323.
        DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t329.
        DATA(t330) = t2.
        t329 = t330->issues.
        DATA t331 TYPE REF TO zcl_lnt_issue.
        CLEAR t331.
        DATA(t332) = t2.
        DATA t333 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t333.
        DATA t334 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t334.
        DATA(t335) = t247.
        t334 = t335.
        t333 = t334->get_first_token( ).
        DATA(t336) = t322.
        DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t337.
        t331 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t332 i_token = t333 i_message_26cb = t336 i_fix = t337 ).
        t329->load( ).
        APPEND t331 TO t329->items.
        t329->save( ).
      ENDIF.
      DATA t338 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t338.
      DATA t339 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t339.
      DATA t340 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t340.
      DATA(t341) = t247.
      t340 = t341.
      t339 = t340->get_first_token( ).
      DATA(t342) = VALUE string( ).
      DATA(t343) = t2.
      t342 = t343->filename.
      DATA t344 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t344.
      DATA(t345) = |constant, fallback|.
      DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t346.
      t344 = NEW zcl_lnt_unknown_type( i_error = t345 i_qualified_name = t346 ).
      DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t347.
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t348.
      t338 = NEW zcl_lnt_typed_identifier( i_token = t339 i_filename = t342 i_type_9913 = t344 i_meta = t347 i_value = t348 ).
      result = t338.
      RETURN.
    ENDIF.
    DATA t349 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    CLEAR t349.
    DATA t350 TYPE REF TO zcx_lnt_assert_error.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t351.
    DATA(t352) = abap_true.
    IF t352 = abap_true.
      DATA(t353) = |Statement Constant: unexpected structure|.
      DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t354->has = abap_true.
      t354->value = t353.
      t351 = t354.
    ELSE.
      DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t355.
      t351 = t355.
    ENDIF.
    t350 = NEW zcx_lnt_assert_error( i_message_26cb = t351 ).
    t349 = NEW #( ).
    t349->payload = t350.
    CLEAR t349->source_value.
    IF t350 IS BOUND.
      DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t356.
      DATA t357 TYPE REF TO object.
      CLEAR t357.
      CLEAR t356.
      t357 = t350.
      TRY.
          t349->source_value ?= t357.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349->source_value IS NOT BOUND.
        TRY.
            t356 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t356 IS BOUND.
          t349->source_value = t356->source( ).
        ENDIF.
        IF t349->source_value IS NOT BOUND.
          CREATE OBJECT t349->source_value.
          t349->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->source_value->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t349.
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
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = |^[0-9]+$|.
    DATA(t5) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = t1.
    t7 = t8.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t7.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA(t12) = |undefined|.
      t9 = t12.
    ELSE.
      DATA t13 TYPE string.
      DATA(t14) = t7.
      t13 = t14->value.
      t9 = t13.
    ENDIF.
    t6 = t9.
    t2 = t3->test( p0 = t6 ).
    result = t2.

  ENDMETHOD.

  METHOD allow_only_digits_name.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    DATA(t7) = t2.
    t6 = t7->scope.
    t5 = t6->is_any_oo( ).
    DATA(t8) = abap_false.
    t4 = xsdbool( t5 = t8 ).
    t3 = t4.
    IF t4 = abap_true.
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      DATA(t13) = t1.
      t12 = t13.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t15) = t12.
      t14 = t15->colon.
      t11 = t14.
      t10 = t11.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t10.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t18 = xsdbool( t19 = abap_false ).
      t9 = t18.
      t3 = t9.
    ENDIF.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d881_71710c063965.
  ENDMETHOD.
ENDCLASS.
