* TS: src/abap/5_syntax/statements/fieldsymbol.ts:10:1 FieldSymbol
CLASS zcl_lnt_sy_field_symbol DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_symbol IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t3.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->get_first_token( ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = t3.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    t18 = t19.
    IF t19 = abap_false.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t28) = t7.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      t29 = t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t27.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      t26 = t31.
      t18 = t26.
    ENDIF.
    IF t18 = abap_true.
      RETURN.
    ENDIF.
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE i.
    DATA t35 TYPE string.
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    DATA(t37) = t3.
    t36 = t37.
    t35 = t36->concat_tokens( ).
    DATA(t38) = strlen( t35 ).
    t34 = t38.
    DATA(t39) = 30.
    t33 = xsdbool( t34 > t39 ).
    IF t33 = abap_true.
      DATA t40 TYPE string.
      DATA t41 TYPE string.
      DATA(t42) = |FIELD-SYMBOLS name too long, |.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = t3.
      t44 = t45.
      t43 = t44->concat_tokens( ).
      DATA(t46) = strlen( t42 ).
      t41 = |{ t42 }{ t43 }|.
      t40 = t41.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t48) = t2.
      t47 = t48->issues.
      DATA t49 TYPE REF TO zcl_lnt_issue.
      DATA(t50) = t2.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t52) = t7.
      t51 = t52.
      DATA(t53) = t40.
      DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t54.
      t49 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t50 i_token = t51 i_message_26cb = t53 i_fix = t54 ).
      t47->load( ).
      APPEND t49 TO t47->items.
      t47->save( ).
    ENDIF.
    DATA t55 TYPE abap_bool.
    DATA t56 TYPE i.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t60) = t1.
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t62) = t59.
    t61 = t62->children.
    t58 = t61.
    t57 ?= t58.
    t57->load( ).
    t56 = lines( t57->items ).
    DATA(t63) = 5.
    t55 = xsdbool( t56 = t63 ).
    IF t55 = abap_true.
      DATA t64 TYPE REF TO zcl_lnt_current_scope.
      DATA t65 TYPE REF TO zcl_lnt_current_scope.
      DATA(t66) = t2.
      t65 = t66->scope.
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t72) = t7.
        t71 = t72.
        DATA t73 TYPE string.
        DATA(t74) = t2.
        t73 = t74->filename.
        DATA t75 TYPE REF TO zcl_lnt_void_type.
        CLEAR t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA(t77) = abap_true.
        IF t77 = abap_true.
          DATA(t78) = |FS-SIMPLE|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t78.
          t76 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t76 = t80.
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t75 = zcl_lnt_void_type=>get_db65( i_voided = t76 i_qualified_name = t81 ).
        DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        t70 = NEW zcl_lnt_typed_identifier( i_token = t71 i_filename = t73 i_type_9913 = t75 i_meta = t82 i_value = t83 ).
        t68 = t70.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t84.
        t68 = t84.
      ENDIF.
      t67 = t68.
      DATA(t85) = VALUE abap_bool( ).
      DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t87) = t67.
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
      IF t85 = abap_true.
      ELSE.
        DATA(t92) = t64.
        DATA(t93) = VALUE string( ).
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t96) = t67.
        t95 = t96.
        t94 = t95.
        DATA(t97) = VALUE string( ).
        DATA t98 TYPE string.
        DATA t99 TYPE string.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t102) = t94.
        t101 = t102->token.
        t100 = t101.
        DATA t103 TYPE string.
        DATA(t104) = t100.
        t103 = t104->str.
        t99 = t103.
        t98 = t99.
        DATA(t105) = VALUE abap_bool( ).
        DATA(t106) = VALUE string( ).
        DATA(t107) = t98.
        DATA(t108) = 0.
        DATA(t109) = 1.
        DATA(t110) = strlen( t107 ).
        IF t108 < 0.
          t108 = t108 + t110.
          IF t108 < 0.
            t108 = 0.
          ENDIF.
        ENDIF.
        IF t108 > t110 OR t109 <= 0.
          CLEAR t106.
        ELSE.
          IF t109 > t110 - t108.
            t109 = t110 - t108.
          ENDIF.
          t106 = t107+t108(t109).
        ENDIF.
        DATA(t111) = |!|.
        t105 = xsdbool( t106 = t111 ).
        IF t105 = abap_true.
          DATA(t112) = VALUE string( ).
          DATA t113 TYPE string.
          DATA(t114) = t98.
          t113 = t114.
          DATA(t115) = VALUE string( ).
          DATA(t116) = t113.
          DATA(t117) = 1.
          DATA t118 TYPE i.
          DATA(t119) = t113.
          DATA(t120) = strlen( t119 ).
          t118 = t120.
          DATA(t121) = strlen( t116 ).
          IF t117 < 0.
            t117 = t117 + t121.
            IF t117 < 0.
              t117 = 0.
            ENDIF.
          ENDIF.
          IF t117 > t121 OR t118 <= 0.
            CLEAR t115.
          ELSE.
            IF t118 > t121 - t117.
              t118 = t121 - t117.
            ENDIF.
            t115 = t116+t117(t118).
          ENDIF.
          t112 = t115.
          t98 = t112.
        ENDIF.
        DATA(t122) = t98.
        t97 = t122.
        t93 = t97.
        DATA t123 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t124) = t67.
        t123 = t124.
        t92->add_named_identifier( i_name = t93 i_identifier = t123 ).
      ENDIF.
      RETURN.
    ENDIF.
    DATA t125 TYPE REF TO zcl_lnt_abstract_type.
    DATA t126 TYPE REF TO zcl_lnt_abstract_type.
    DATA t127 TYPE REF TO zcl_lnt_basic_types.
    DATA(t128) = t2.
    t127 = NEW zcl_lnt_basic_types( i_input_967e = t128 ).
    DATA(t129) = t1.
    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t130.
    t126 = t127->parse_type( i_node = t129 i_qualified_name = t130 ).
    t125 = t126.
    DATA t131 TYPE abap_bool.
    DATA(t132) = t125.
    t131 = xsdbool( t132 IS BOUND ).
    IF t131 = abap_true.
      DATA t133 TYPE REF TO zcl_lnt_current_scope.
      DATA t134 TYPE REF TO zcl_lnt_current_scope.
      DATA(t135) = t2.
      t134 = t135->scope.
      t133 = t134.
      DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t137.
      DATA(t138) = abap_true.
      IF t138 = abap_true.
        DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t141) = t7.
        t140 = t141.
        DATA t142 TYPE string.
        DATA(t143) = t2.
        t142 = t143->filename.
        DATA t144 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t145) = t125.
        t144 = t145.
        DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t146.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        t139 = NEW zcl_lnt_typed_identifier( i_token = t140 i_filename = t142 i_type_9913 = t144 i_meta = t146 i_value = t147 ).
        t137 = t139.
      ELSE.
        DATA t148 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t148.
        t137 = t148.
      ENDIF.
      t136 = t137.
      DATA(t149) = VALUE abap_bool( ).
      DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t151) = t136.
      t150 = t151.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      t152 = t153.
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = t150.
      IF t155 IS INITIAL.
        t154 = abap_true.
      ENDIF.
      t149 = t154.
      IF t149 = abap_true.
      ELSE.
        DATA(t156) = t133.
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t160) = t136.
        t159 = t160.
        t158 = t159.
        DATA(t161) = VALUE string( ).
        DATA t162 TYPE string.
        DATA t163 TYPE string.
        DATA t164 TYPE REF TO zcl_lnt_abstract_token.
        DATA t165 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t166) = t158.
        t165 = t166->token.
        t164 = t165.
        DATA t167 TYPE string.
        DATA(t168) = t164.
        t167 = t168->str.
        t163 = t167.
        t162 = t163.
        DATA(t169) = VALUE abap_bool( ).
        DATA(t170) = VALUE string( ).
        DATA(t171) = t162.
        DATA(t172) = 0.
        DATA(t173) = 1.
        DATA(t174) = strlen( t171 ).
        IF t172 < 0.
          t172 = t172 + t174.
          IF t172 < 0.
            t172 = 0.
          ENDIF.
        ENDIF.
        IF t172 > t174 OR t173 <= 0.
          CLEAR t170.
        ELSE.
          IF t173 > t174 - t172.
            t173 = t174 - t172.
          ENDIF.
          t170 = t171+t172(t173).
        ENDIF.
        DATA(t175) = |!|.
        t169 = xsdbool( t170 = t175 ).
        IF t169 = abap_true.
          DATA(t176) = VALUE string( ).
          DATA t177 TYPE string.
          DATA(t178) = t162.
          t177 = t178.
          DATA(t179) = VALUE string( ).
          DATA(t180) = t177.
          DATA(t181) = 1.
          DATA t182 TYPE i.
          DATA(t183) = t177.
          DATA(t184) = strlen( t183 ).
          t182 = t184.
          DATA(t185) = strlen( t180 ).
          IF t181 < 0.
            t181 = t181 + t185.
            IF t181 < 0.
              t181 = 0.
            ENDIF.
          ENDIF.
          IF t181 > t185 OR t182 <= 0.
            CLEAR t179.
          ELSE.
            IF t182 > t185 - t181.
              t182 = t185 - t181.
            ENDIF.
            t179 = t180+t181(t182).
          ENDIF.
          t176 = t179.
          t162 = t176.
        ENDIF.
        DATA(t186) = t162.
        t161 = t186.
        t157 = t161.
        DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t188) = t136.
        t187 = t188.
        t156->add_named_identifier( i_name = t157 i_identifier = t187 ).
      ENDIF.
      RETURN.
    ENDIF.
    DATA t189 TYPE REF TO zcl_lnt_current_scope.
    DATA t190 TYPE REF TO zcl_lnt_current_scope.
    DATA(t191) = t2.
    t190 = t191->scope.
    t189 = t190.
    DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t192.
    DATA t193 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t193.
    DATA(t194) = abap_true.
    IF t194 = abap_true.
      DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t196 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t197) = t7.
      t196 = t197.
      DATA t198 TYPE string.
      DATA(t199) = t2.
      t198 = t199->filename.
      DATA t200 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t201) = |Fieldsymbol, fallback|.
      DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t202.
      t200 = NEW zcl_lnt_unknown_type( i_error = t201 i_qualified_name = t202 ).
      DATA t203 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t203.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      t195 = NEW zcl_lnt_typed_identifier( i_token = t196 i_filename = t198 i_type_9913 = t200 i_meta = t203 i_value = t204 ).
      t193 = t195.
    ELSE.
      DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t205.
      t193 = t205.
    ENDIF.
    t192 = t193.
    DATA(t206) = VALUE abap_bool( ).
    DATA t207 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t208) = t192.
    t207 = t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    t209 = t210.
    DATA(t211) = VALUE abap_bool( ).
    DATA(t212) = t207.
    IF t212 IS INITIAL.
      t211 = abap_true.
    ENDIF.
    t206 = t211.
    IF t206 = abap_true.
    ELSE.
      DATA(t213) = t189.
      DATA(t214) = VALUE string( ).
      DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t217) = t192.
      t216 = t217.
      t215 = t216.
      DATA(t218) = VALUE string( ).
      DATA t219 TYPE string.
      DATA t220 TYPE string.
      DATA t221 TYPE REF TO zcl_lnt_abstract_token.
      DATA t222 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t223) = t215.
      t222 = t223->token.
      t221 = t222.
      DATA t224 TYPE string.
      DATA(t225) = t221.
      t224 = t225->str.
      t220 = t224.
      t219 = t220.
      DATA(t226) = VALUE abap_bool( ).
      DATA(t227) = VALUE string( ).
      DATA(t228) = t219.
      DATA(t229) = 0.
      DATA(t230) = 1.
      DATA(t231) = strlen( t228 ).
      IF t229 < 0.
        t229 = t229 + t231.
        IF t229 < 0.
          t229 = 0.
        ENDIF.
      ENDIF.
      IF t229 > t231 OR t230 <= 0.
        CLEAR t227.
      ELSE.
        IF t230 > t231 - t229.
          t230 = t231 - t229.
        ENDIF.
        t227 = t228+t229(t230).
      ENDIF.
      DATA(t232) = |!|.
      t226 = xsdbool( t227 = t232 ).
      IF t226 = abap_true.
        DATA(t233) = VALUE string( ).
        DATA t234 TYPE string.
        DATA(t235) = t219.
        t234 = t235.
        DATA(t236) = VALUE string( ).
        DATA(t237) = t234.
        DATA(t238) = 1.
        DATA t239 TYPE i.
        DATA(t240) = t234.
        DATA(t241) = strlen( t240 ).
        t239 = t241.
        DATA(t242) = strlen( t237 ).
        IF t238 < 0.
          t238 = t238 + t242.
          IF t238 < 0.
            t238 = 0.
          ENDIF.
        ENDIF.
        IF t238 > t242 OR t239 <= 0.
          CLEAR t236.
        ELSE.
          IF t239 > t242 - t238.
            t239 = t242 - t238.
          ENDIF.
          t236 = t237+t238(t239).
        ENDIF.
        t233 = t236.
        t219 = t233.
      ENDIF.
      DATA(t243) = t219.
      t218 = t243.
      t214 = t218.
      DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t245) = t192.
      t244 = t245.
      t213->add_named_identifier( i_name = t214 i_identifier = t244 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d900_7047e86f643a.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
