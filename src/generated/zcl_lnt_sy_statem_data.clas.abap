* TS: src/abap/5_syntax/statements/data.ts:9:1 Data
CLASS zcl_lnt_sy_statem_data DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_statem_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t1.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
    t8 = t9->find_first_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t7.
      t15 = t16.
      DATA(t17) = t2.
      t14 = zcl_lnt_sy_data_definition=>run_syntax( i_node = t15 i_input_967e = t17 ).
      t13 = t14.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t13.
      t20 = xsdbool( t21 IS BOUND ).
      t19 = t20.
      IF t20 = abap_true.
        DATA(t22) = VALUE abap_bool( ).
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA(t25) = abap_true.
        IF t25 = abap_true.
          DATA(t26) = VALUE string( ).
          DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t29) = t13.
          t28 = t29.
          t27 = t28.
          DATA(t30) = VALUE string( ).
          DATA t31 TYPE string.
          DATA t32 TYPE string.
          DATA t33 TYPE REF TO zcl_lnt_abstract_token.
          DATA t34 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t35) = t27.
          t34 = t35->token.
          t33 = t34.
          DATA t36 TYPE string.
          DATA(t37) = t33.
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
          t26 = t30.
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t26.
          t24 = t56.
        ELSE.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          t24 = t57.
        ENDIF.
        t23 = t24.
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t59.
        DATA(t60) = |^[0-9]+$|.
        DATA(t61) = ||.
        CREATE OBJECT t59 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t60 flags = t61.
        DATA(t62) = VALUE string( ).
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t64) = t23.
        t63 = t64.
        DATA(t65) = VALUE string( ).
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = t63.
        IF t67 IS INITIAL.
          t66 = abap_true.
        ELSEIF t67->has = abap_false.
          t66 = abap_true.
        ENDIF.
        IF t66 = abap_true.
          DATA(t68) = |undefined|.
          t65 = t68.
        ELSE.
          DATA t69 TYPE string.
          DATA(t70) = t63.
          t69 = t70->value.
          t65 = t69.
        ENDIF.
        t62 = t65.
        t58 = t59->test( p0 = t62 ).
        t22 = t58.
        t19 = t22.
      ENDIF.
      t18 = t19.
      IF t19 = abap_true.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE abap_bool( ).
        DATA t73 TYPE REF TO zcl_lnt_statement_node.
        DATA(t74) = t1.
        t73 = t74.
        DATA t75 TYPE REF TO zcl_lnt_syntax_input.
        DATA(t76) = t2.
        t75 = t76.
        DATA t77 TYPE abap_bool.
        DATA t78 TYPE abap_bool.
        DATA t79 TYPE abap_bool.
        DATA t80 TYPE REF TO zcl_lnt_current_scope.
        DATA(t81) = t75.
        t80 = t81->scope.
        t79 = t80->is_any_oo( ).
        DATA(t82) = abap_false.
        t78 = xsdbool( t79 = t82 ).
        t77 = t78.
        IF t78 = abap_true.
          DATA(t83) = VALUE abap_bool( ).
          DATA t84 TYPE REF TO zcl_lnt_abstract_token.
          DATA t85 TYPE REF TO zcl_lnt_abstract_token.
          DATA t86 TYPE REF TO zcl_lnt_statement_node.
          DATA(t87) = t73.
          t86 = t87.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t89) = t86.
          t88 = t89->colon.
          t85 = t88.
          t84 = t85.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t91.
          t90 = t91.
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = VALUE abap_bool( ).
          DATA(t94) = t84.
          IF t94 IS INITIAL.
            t93 = abap_true.
          ENDIF.
          t92 = xsdbool( t93 = abap_false ).
          t83 = t92.
          t77 = t83.
        ENDIF.
        t72 = t77.
        DATA(t95) = abap_false.
        t71 = xsdbool( t72 = t95 ).
        t18 = t71.
      ENDIF.
      IF t18 = abap_true.
        DATA t96 TYPE string.
        DATA(t97) = |not possible to have a name with only digits|.
        t96 = t97.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t99) = t2.
        t98 = t99->issues.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        DATA(t101) = t2.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t105) = t13.
        t104 = t105.
        t103 = t104.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t107) = t103.
        t106 = t107->token.
        t102 = t106.
        DATA(t108) = t96.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t109.
        t100 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t101 i_token = t102 i_message_26cb = t108 i_fix = t109 ).
        t98->load( ).
        APPEND t100 TO t98->items.
        t98->save( ).
        DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t110.
        DATA(t111) = abap_true.
        IF t111 = abap_true.
          DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t112.
          DATA t113 TYPE REF TO zcl_lnt_abstract_token.
          DATA t114 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t116) = t13.
          t115 = t116.
          t114 = t115.
          DATA t117 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t118) = t114.
          t117 = t118->token.
          t113 = t117.
          DATA t119 TYPE string.
          DATA(t120) = t2.
          t119 = t120->filename.
          DATA t121 TYPE REF TO zcl_lnt_void_type.
          CLEAR t121.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t123) = abap_true.
          IF t123 = abap_true.
            DATA(t124) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t125->has = abap_true.
            t125->value = t124.
            t122 = t125.
          ELSE.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t126.
            t122 = t126.
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          t121 = zcl_lnt_void_type=>get_db65( i_voided = t122 i_qualified_name = t127 ).
          DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t128.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          t112 = NEW zcl_lnt_typed_identifier( i_token = t113 i_filename = t119 i_type_9913 = t121 i_meta = t128 i_value = t129 ).
          t110 = t112.
        ELSE.
          DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t130.
          t110 = t130.
        ENDIF.
        result = t110.
        RETURN.
      ENDIF.
      DATA t131 TYPE abap_bool.
      DATA t132 TYPE abap_bool.
      DATA(t133) = t13.
      t132 = xsdbool( t133 IS BOUND ).
      t131 = t132.
      IF t132 = abap_true.
        DATA(t134) = VALUE abap_bool( ).
        DATA(t135) = VALUE string( ).
        DATA(t136) = VALUE string( ).
        DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t139) = t13.
        t138 = t139.
        t137 = t138.
        DATA(t140) = VALUE string( ).
        DATA t141 TYPE string.
        DATA t142 TYPE string.
        DATA t143 TYPE REF TO zcl_lnt_abstract_token.
        DATA t144 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t145) = t137.
        t144 = t145->token.
        t143 = t144.
        DATA t146 TYPE string.
        DATA(t147) = t143.
        t146 = t147->str.
        t142 = t146.
        t141 = t142.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE string( ).
        DATA(t150) = t141.
        DATA(t151) = 0.
        DATA(t152) = 1.
        DATA(t153) = strlen( t150 ).
        IF t151 < 0.
          t151 = t151 + t153.
          IF t151 < 0.
            t151 = 0.
          ENDIF.
        ENDIF.
        IF t151 > t153 OR t152 <= 0.
          CLEAR t149.
        ELSE.
          IF t152 > t153 - t151.
            t152 = t153 - t151.
          ENDIF.
          t149 = t150+t151(t152).
        ENDIF.
        DATA(t154) = |!|.
        t148 = xsdbool( t149 = t154 ).
        IF t148 = abap_true.
          DATA(t155) = VALUE string( ).
          DATA t156 TYPE string.
          DATA(t157) = t141.
          t156 = t157.
          DATA(t158) = VALUE string( ).
          DATA(t159) = t156.
          DATA(t160) = 1.
          DATA t161 TYPE i.
          DATA(t162) = t156.
          DATA(t163) = strlen( t162 ).
          t161 = t163.
          DATA(t164) = strlen( t159 ).
          IF t160 < 0.
            t160 = t160 + t164.
            IF t160 < 0.
              t160 = 0.
            ENDIF.
          ENDIF.
          IF t160 > t164 OR t161 <= 0.
            CLEAR t158.
          ELSE.
            IF t161 > t164 - t160.
              t161 = t164 - t160.
            ENDIF.
            t158 = t159+t160(t161).
          ENDIF.
          t155 = t158.
          t141 = t155.
        ENDIF.
        DATA(t165) = t141.
        t140 = t165.
        t136 = t140.
        t135 = t136.
        DATA t166 TYPE abap_bool.
        DATA t167 TYPE i.
        DATA(t168) = t135.
        DATA(t169) = strlen( t168 ).
        t167 = t169.
        DATA(t170) = 30.
        t166 = xsdbool( t167 > t170 ).
        t134 = t166.
        t131 = t134.
      ENDIF.
      IF t131 = abap_true.
        DATA(t171) = VALUE string( ).
        DATA(t172) = VALUE string( ).
        DATA(t173) = |DATA name too long, |.
        DATA(t174) = VALUE string( ).
        DATA t175 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t177) = t13.
        t176 = t177.
        t175 = t176.
        DATA(t178) = VALUE string( ).
        DATA t179 TYPE string.
        DATA t180 TYPE string.
        DATA t181 TYPE REF TO zcl_lnt_abstract_token.
        DATA t182 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t183) = t175.
        t182 = t183->token.
        t181 = t182.
        DATA t184 TYPE string.
        DATA(t185) = t181.
        t184 = t185->str.
        t180 = t184.
        t179 = t180.
        DATA(t186) = VALUE abap_bool( ).
        DATA(t187) = VALUE string( ).
        DATA(t188) = t179.
        DATA(t189) = 0.
        DATA(t190) = 1.
        DATA(t191) = strlen( t188 ).
        IF t189 < 0.
          t189 = t189 + t191.
          IF t189 < 0.
            t189 = 0.
          ENDIF.
        ENDIF.
        IF t189 > t191 OR t190 <= 0.
          CLEAR t187.
        ELSE.
          IF t190 > t191 - t189.
            t190 = t191 - t189.
          ENDIF.
          t187 = t188+t189(t190).
        ENDIF.
        DATA(t192) = |!|.
        t186 = xsdbool( t187 = t192 ).
        IF t186 = abap_true.
          DATA(t193) = VALUE string( ).
          DATA t194 TYPE string.
          DATA(t195) = t179.
          t194 = t195.
          DATA(t196) = VALUE string( ).
          DATA(t197) = t194.
          DATA(t198) = 1.
          DATA t199 TYPE i.
          DATA(t200) = t194.
          DATA(t201) = strlen( t200 ).
          t199 = t201.
          DATA(t202) = strlen( t197 ).
          IF t198 < 0.
            t198 = t198 + t202.
            IF t198 < 0.
              t198 = 0.
            ENDIF.
          ENDIF.
          IF t198 > t202 OR t199 <= 0.
            CLEAR t196.
          ELSE.
            IF t199 > t202 - t198.
              t199 = t202 - t198.
            ENDIF.
            t196 = t197+t198(t199).
          ENDIF.
          t193 = t196.
          t179 = t193.
        ENDIF.
        DATA(t203) = t179.
        t178 = t203.
        t174 = t178.
        DATA(t204) = strlen( t173 ).
        t172 = |{ t173 }{ t174 }|.
        t171 = t172.
        DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t206) = t2.
        t205 = t206->issues.
        DATA t207 TYPE REF TO zcl_lnt_issue.
        DATA(t208) = t2.
        DATA t209 TYPE REF TO zcl_lnt_abstract_token.
        DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t212) = t13.
        t211 = t212.
        t210 = t211.
        DATA t213 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t214) = t210.
        t213 = t214->token.
        t209 = t213.
        DATA(t215) = t171.
        DATA t216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t216.
        t207 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t208 i_token = t209 i_message_26cb = t215 i_fix = t216 ).
        t205->load( ).
        APPEND t207 TO t205->items.
        t205->save( ).
      ENDIF.
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = VALUE abap_bool( ).
      DATA t219 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t219.
      DATA t220 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t220.
      DATA t221 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t221.
      DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t223) = t13.
      t222 = t223.
      DATA t224 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t224.
      DATA(t225) = VALUE abap_bool( ).
      DATA(t226) = t222.
      IF t226 IS INITIAL.
        t225 = abap_true.
      ENDIF.
      IF t225 = abap_true.
        DATA t227 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t227.
        t224 = t227.
      ELSE.
        DATA t228 TYPE REF TO zcl_lnt_abstract_type.
        DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t231) = t222.
        t230 = t231.
        t229 = t230.
        DATA t232 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t233) = t229.
        t232 = t233->type_cba0.
        t228 = t232.
        t224 = t228.
      ENDIF.
      t221 = t224.
      t220 = t221.
      DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t234.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = t220.
      IF t236 IS INITIAL.
        t235 = abap_true.
      ENDIF.
      IF t235 = abap_true.
        DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t237.
        t234 = t237.
      ELSE.
        DATA t238 TYPE abap_bool.
        DATA t239 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t240) = t220.
        t239 = t240.
        t238 = t239->is_generic( ).
        DATA(t241) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t241->has = abap_true.
        t241->value = t238.
        t234 = t241.
      ENDIF.
      t219 = t234.
      DATA t242 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t242.
      DATA(t243) = abap_true.
      IF t243 = abap_true.
        DATA(t244) = abap_true.
        DATA(t245) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t245->has = abap_true.
        t245->value = t244.
        t242 = t245.
      ELSE.
        DATA t246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t246.
        t242 = t246.
      ENDIF.
      DATA(t247) = VALUE abap_bool( ).
      DATA(t248) = VALUE abap_bool( ).
      IF t219 IS BOUND.
        t247 = t219->has.
      ENDIF.
      IF t242 IS BOUND.
        t248 = t242->has.
      ENDIF.
      IF t247 = t248.
        IF t247 = abap_false.
          t218 = abap_true.
        ELSEIF t219->value = t242->value.
          t218 = abap_true.
        ENDIF.
      ENDIF.
      t217 = t218.
      IF t218 = abap_true.
        DATA(t249) = VALUE abap_bool( ).
        DATA t250 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t250.
        DATA t251 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t251.
        DATA t252 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t252.
        DATA t253 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t255) = t13.
        t254 = t255.
        t253 = t254.
        DATA t256 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t256.
        DATA(t257) = VALUE abap_bool( ).
        DATA(t258) = t253.
        IF t258 IS INITIAL.
          t257 = abap_true.
        ENDIF.
        IF t257 = abap_true.
          DATA t259 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t259.
          t256 = t259.
        ELSE.
          DATA t260 TYPE REF TO zcl_lnt_abstract_type.
          DATA t261 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t262) = t253.
          t261 = t262.
          DATA t263 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t264) = t261.
          t263 = t264->type_cba0.
          t260 = t263.
          t256 = t260.
        ENDIF.
        t252 = t256.
        t251 = t252.
        DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t265.
        DATA(t266) = VALUE abap_bool( ).
        DATA(t267) = t251.
        IF t267 IS INITIAL.
          t266 = abap_true.
        ENDIF.
        IF t266 = abap_true.
          DATA t268 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t268.
          t265 = t268.
        ELSE.
          DATA t269 TYPE abap_bool.
          DATA t270 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t271) = t251.
          t270 = t271.
          t269 = t270->contains_void( ).
          DATA(t272) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t272->has = abap_true.
          t272->value = t269.
          t265 = t272.
        ENDIF.
        t250 = t265.
        DATA t273 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t273.
        DATA(t274) = abap_true.
        IF t274 = abap_true.
          DATA(t275) = abap_false.
          DATA(t276) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t276->has = abap_true.
          t276->value = t275.
          t273 = t276.
        ELSE.
          DATA t277 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t277.
          t273 = t277.
        ENDIF.
        DATA(t278) = VALUE abap_bool( ).
        DATA(t279) = VALUE abap_bool( ).
        IF t250 IS BOUND.
          t278 = t250->has.
        ENDIF.
        IF t273 IS BOUND.
          t279 = t273->has.
        ENDIF.
        IF t278 = t279.
          IF t278 = abap_false.
            t249 = abap_true.
          ELSEIF t250->value = t273->value.
            t249 = abap_true.
          ENDIF.
        ENDIF.
        t217 = t249.
      ENDIF.
      IF t217 = abap_true.
        DATA(t280) = VALUE string( ).
        DATA(t281) = VALUE string( ).
        DATA(t282) = |DATA definition cannot be generic, |.
        DATA(t283) = VALUE string( ).
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t284.
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t285.
        DATA t286 TYPE REF TO zcl_lnt_expression_node.
        DATA(t287) = t3.
        t286 = t287.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        DATA(t289) = VALUE abap_bool( ).
        DATA(t290) = t286.
        IF t290 IS INITIAL.
          t289 = abap_true.
        ENDIF.
        IF t289 = abap_true.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t291.
          t288 = t291.
        ELSE.
          DATA t292 TYPE string.
          DATA t293 TYPE REF TO zcl_lnt_expression_node.
          DATA(t294) = t286.
          t293 = t294.
          t292 = t293->concat_tokens( ).
          DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t295->has = abap_true.
          t295->value = t292.
          t288 = t295.
        ENDIF.
        t285 = t288.
        t284 = t285.
        DATA(t296) = VALUE string( ).
        DATA(t297) = VALUE abap_bool( ).
        DATA(t298) = t284.
        IF t298 IS INITIAL.
          t297 = abap_true.
        ELSEIF t298->has = abap_false.
          t297 = abap_true.
        ENDIF.
        IF t297 = abap_true.
          DATA(t299) = |undefined|.
          t296 = t299.
        ELSE.
          DATA t300 TYPE string.
          DATA(t301) = t284.
          t300 = t301->value.
          t296 = t300.
        ENDIF.
        t283 = t296.
        DATA(t302) = strlen( t282 ).
        t281 = |{ t282 }{ t283 }|.
        t280 = t281.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t304) = t2.
        t303 = t304->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        DATA(t306) = t2.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t308) = t1.
        t307 = t308->get_first_token( ).
        DATA(t309) = t280.
        DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t310.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t306 i_token = t307 i_message_26cb = t309 i_fix = t310 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
        DATA t311 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t311.
        DATA(t312) = abap_true.
        IF t312 = abap_true.
          DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t313.
          DATA t314 TYPE REF TO zcl_lnt_abstract_token.
          DATA t315 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t316 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t317) = t13.
          t316 = t317.
          t315 = t316.
          DATA t318 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t319) = t315.
          t318 = t319->token.
          t314 = t318.
          DATA t320 TYPE string.
          DATA(t321) = t2.
          t320 = t321->filename.
          DATA t322 TYPE REF TO zcl_lnt_void_type.
          CLEAR t322.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t323.
          DATA(t324) = abap_true.
          IF t324 = abap_true.
            DATA(t325) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t326->has = abap_true.
            t326->value = t325.
            t323 = t326.
          ELSE.
            DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t327.
            t323 = t327.
          ENDIF.
          DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t328.
          t322 = zcl_lnt_void_type=>get_db65( i_voided = t323 i_qualified_name = t328 ).
          DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t329.
          DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t330.
          t313 = NEW zcl_lnt_typed_identifier( i_token = t314 i_filename = t320 i_type_9913 = t322 i_meta = t329 i_value = t330 ).
          t311 = t313.
        ELSE.
          DATA t331 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t331.
          t311 = t331.
        ENDIF.
        result = t311.
        RETURN.
      ENDIF.
      DATA(t332) = t13.
      result = t332.
      RETURN.
    ENDIF.
    DATA t333 TYPE abap_bool.
    DATA(t334) = t3.
    t333 = xsdbool( t334 IS BOUND ).
    IF t333 = abap_true.
      DATA(t335) = VALUE abap_bool( ).
      DATA(t336) = VALUE abap_bool( ).
      DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t337.
      DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t338.
      DATA(t339) = abap_true.
      IF t339 = abap_true.
        DATA t340 TYPE string.
        DATA t341 TYPE REF TO zcl_lnt_expression_node.
        DATA(t342) = t3.
        t341 = t342.
        t340 = t341->concat_tokens( ).
        DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t343->has = abap_true.
        t343->value = t340.
        t338 = t343.
      ELSE.
        DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t344.
        t338 = t344.
      ENDIF.
      t337 = t338.
      DATA(t345) = VALUE abap_bool( ).
      DATA t346 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t346.
      DATA(t347) = |^[0-9]+$|.
      DATA(t348) = ||.
      CREATE OBJECT t346 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t347 flags = t348.
      DATA(t349) = VALUE string( ).
      DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t351) = t337.
      t350 = t351.
      DATA(t352) = VALUE string( ).
      DATA(t353) = VALUE abap_bool( ).
      DATA(t354) = t350.
      IF t354 IS INITIAL.
        t353 = abap_true.
      ELSEIF t354->has = abap_false.
        t353 = abap_true.
      ENDIF.
      IF t353 = abap_true.
        DATA(t355) = |undefined|.
        t352 = t355.
      ELSE.
        DATA t356 TYPE string.
        DATA(t357) = t350.
        t356 = t357->value.
        t352 = t356.
      ENDIF.
      t349 = t352.
      t345 = t346->test( p0 = t349 ).
      t336 = t345.
      t335 = t336.
      IF t336 = abap_true.
        DATA(t358) = VALUE abap_bool( ).
        DATA(t359) = VALUE abap_bool( ).
        DATA t360 TYPE REF TO zcl_lnt_statement_node.
        DATA(t361) = t1.
        t360 = t361.
        DATA t362 TYPE REF TO zcl_lnt_syntax_input.
        DATA(t363) = t2.
        t362 = t363.
        DATA t364 TYPE abap_bool.
        DATA t365 TYPE abap_bool.
        DATA t366 TYPE abap_bool.
        DATA t367 TYPE REF TO zcl_lnt_current_scope.
        DATA(t368) = t362.
        t367 = t368->scope.
        t366 = t367->is_any_oo( ).
        DATA(t369) = abap_false.
        t365 = xsdbool( t366 = t369 ).
        t364 = t365.
        IF t365 = abap_true.
          DATA(t370) = VALUE abap_bool( ).
          DATA t371 TYPE REF TO zcl_lnt_abstract_token.
          DATA t372 TYPE REF TO zcl_lnt_abstract_token.
          DATA t373 TYPE REF TO zcl_lnt_statement_node.
          DATA(t374) = t360.
          t373 = t374.
          DATA t375 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t376) = t373.
          t375 = t376->colon.
          t372 = t375.
          t371 = t372.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t378.
          t377 = t378.
          DATA(t379) = VALUE abap_bool( ).
          DATA(t380) = VALUE abap_bool( ).
          DATA(t381) = t371.
          IF t381 IS INITIAL.
            t380 = abap_true.
          ENDIF.
          t379 = xsdbool( t380 = abap_false ).
          t370 = t379.
          t364 = t370.
        ENDIF.
        t359 = t364.
        DATA(t382) = abap_false.
        t358 = xsdbool( t359 = t382 ).
        t335 = t358.
      ENDIF.
      IF t335 = abap_true.
        DATA t383 TYPE string.
        DATA(t384) = |not possible to have a name with only digits|.
        t383 = t384.
        DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t386) = t2.
        t385 = t386->issues.
        DATA t387 TYPE REF TO zcl_lnt_issue.
        DATA(t388) = t2.
        DATA t389 TYPE REF TO zcl_lnt_abstract_token.
        DATA t390 TYPE REF TO zcl_lnt_expression_node.
        DATA(t391) = t3.
        t390 = t391.
        t389 = t390->get_first_token( ).
        DATA(t392) = t383.
        DATA t393 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t393.
        t387 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t388 i_token = t389 i_message_26cb = t392 i_fix = t393 ).
        t385->load( ).
        APPEND t387 TO t385->items.
        t385->save( ).
      ENDIF.
      DATA t394 TYPE abap_bool.
      DATA t395 TYPE string.
      DATA t396 TYPE string.
      DATA t397 TYPE REF TO zcl_lnt_expression_node.
      DATA(t398) = t3.
      t397 = t398.
      t396 = t397->concat_tokens( ).
      t395 = t396.
      DATA t399 TYPE abap_bool.
      DATA t400 TYPE i.
      DATA(t401) = t395.
      DATA(t402) = strlen( t401 ).
      t400 = t402.
      DATA(t403) = 30.
      t399 = xsdbool( t400 > t403 ).
      t394 = t399.
      IF t394 = abap_true.
        DATA t404 TYPE string.
        DATA t405 TYPE string.
        DATA(t406) = |DATA name too long, |.
        DATA t407 TYPE string.
        DATA t408 TYPE REF TO zcl_lnt_expression_node.
        DATA(t409) = t3.
        t408 = t409.
        t407 = t408->concat_tokens( ).
        DATA(t410) = strlen( t406 ).
        t405 = |{ t406 }{ t407 }|.
        t404 = t405.
        DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t412) = t2.
        t411 = t412->issues.
        DATA t413 TYPE REF TO zcl_lnt_issue.
        DATA(t414) = t2.
        DATA t415 TYPE REF TO zcl_lnt_abstract_token.
        DATA t416 TYPE REF TO zcl_lnt_expression_node.
        DATA(t417) = t3.
        t416 = t417.
        t415 = t416->get_first_token( ).
        DATA(t418) = t404.
        DATA t419 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t419.
        t413 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t414 i_token = t415 i_message_26cb = t418 i_fix = t419 ).
        t411->load( ).
        APPEND t413 TO t411->items.
        t411->save( ).
      ENDIF.
      DATA t420 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t420.
      DATA(t421) = abap_true.
      IF t421 = abap_true.
        DATA t422 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t423 TYPE REF TO zcl_lnt_abstract_token.
        DATA t424 TYPE REF TO zcl_lnt_expression_node.
        DATA(t425) = t3.
        t424 = t425.
        t423 = t424->get_first_token( ).
        DATA t426 TYPE string.
        DATA(t427) = t2.
        t426 = t427->filename.
        DATA t428 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t429) = |data, fallback|.
        DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t430.
        t428 = NEW zcl_lnt_unknown_type( i_error = t429 i_qualified_name = t430 ).
        DATA t431 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t431.
        DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t432.
        t422 = NEW zcl_lnt_typed_identifier( i_token = t423 i_filename = t426 i_type_9913 = t428 i_meta = t431 i_value = t432 ).
        t420 = t422.
      ELSE.
        DATA t433 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t433.
        t420 = t433.
      ENDIF.
      result = t420.
      RETURN.
    ENDIF.
    DATA t434 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t434.
    result = t434.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d886_aae9c18153e0.
  ENDMETHOD.
ENDCLASS.
