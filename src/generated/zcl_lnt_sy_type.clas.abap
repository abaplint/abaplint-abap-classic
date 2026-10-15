* TS: src/abap/5_syntax/statements/type.ts:9:1 Type
CLASS zcl_lnt_sy_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_qualified_name_prefix.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t11) = t1.
      DATA(t12) = t2.
      DATA(t13) = t3.
      t10 = zcl_lnt_sy_type_table=>run_syntax( i_node = t11 i_input_967e = t12 i_qualified_name_prefix = t13 ).
      result = t10.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t16 TYPE REF TO zcl_lnt_basic_types.
    DATA(t17) = t2.
    t16 = NEW zcl_lnt_basic_types( i_input_967e = t17 ).
    DATA(t18) = t1.
    DATA(t19) = t3.
    t15 = t16->simple_type( i_node = t18 i_qualified_name_prefix = t19 ).
    t14 = t15.
    DATA t20 TYPE abap_bool.
    DATA(t21) = t14.
    t20 = xsdbool( t21 IS BOUND ).
    IF t20 = abap_true.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t29) = t14.
      t28 = t29.
      t27 = t28.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t27.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t33.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t36) = t27.
        t35 = t36.
        DATA t37 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t38) = t35.
        t37 = t38->type_cba0.
        t34 = t37.
        t30 = t34.
      ENDIF.
      t26 = t30.
      t25 = t26.
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t25.
      IF t41 IS INITIAL.
        t40 = abap_true.
      ENDIF.
      IF t40 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t42.
        t39 = t42.
      ELSE.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t45) = t25.
        t44 = t45.
        t43 = t44->is_generic( ).
        DATA(t46) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t46->has = abap_true.
        t46->value = t43.
        t39 = t46.
      ENDIF.
      t24 = t39.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = abap_true.
        DATA(t50) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t50->has = abap_true.
        t50->value = t49.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t51.
        t47 = t51.
      ENDIF.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      IF t24 IS BOUND.
        t52 = t24->has.
      ENDIF.
      IF t47 IS BOUND.
        t53 = t47->has.
      ENDIF.
      IF t52 = t53.
        IF t52 = abap_false.
          t23 = abap_true.
        ELSEIF t24->value = t47->value.
          t23 = abap_true.
        ENDIF.
      ENDIF.
      t22 = t23.
      IF t23 = abap_true.
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t60) = t14.
        t59 = t60.
        t58 = t59.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t61.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = t58.
        IF t63 IS INITIAL.
          t62 = abap_true.
        ENDIF.
        IF t62 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t64.
          t61 = t64.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_abstract_type.
          DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t67) = t58.
          t66 = t67.
          DATA t68 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t69) = t66.
          t68 = t69->type_cba0.
          t65 = t68.
          t61 = t65.
        ENDIF.
        t57 = t61.
        t56 = t57.
        DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t70.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = t56.
        IF t72 IS INITIAL.
          t71 = abap_true.
        ENDIF.
        IF t71 = abap_true.
          DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t73.
          t70 = t73.
        ELSE.
          DATA t74 TYPE abap_bool.
          DATA t75 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t76) = t56.
          t75 = t76.
          t74 = t75->contains_void( ).
          DATA(t77) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t77->has = abap_true.
          t77->value = t74.
          t70 = t77.
        ENDIF.
        t55 = t70.
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA(t80) = abap_false.
          DATA(t81) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t81->has = abap_true.
          t81->value = t80.
          t78 = t81.
        ELSE.
          DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t82.
          t78 = t82.
        ENDIF.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        IF t55 IS BOUND.
          t83 = t55->has.
        ENDIF.
        IF t78 IS BOUND.
          t84 = t78->has.
        ENDIF.
        IF t83 = t84.
          IF t83 = abap_false.
            t54 = abap_true.
          ELSEIF t55->value = t78->value.
            t54 = abap_true.
          ENDIF.
        ENDIF.
        t22 = t54.
      ENDIF.
      IF t22 = abap_true.
        DATA(t85) = VALUE string( ).
        DATA(t86) = VALUE string( ).
        DATA(t87) = |TYPES definition cannot be generic, |.
        DATA(t88) = VALUE string( ).
        DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t91) = t14.
        t90 = t91.
        t89 = t90.
        DATA(t92) = VALUE string( ).
        DATA t93 TYPE string.
        DATA t94 TYPE string.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        DATA t96 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t97) = t89.
        t96 = t97->token.
        t95 = t96.
        DATA t98 TYPE string.
        DATA(t99) = t95.
        t98 = t99->str.
        t94 = t98.
        t93 = t94.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = VALUE string( ).
        DATA(t102) = t93.
        DATA(t103) = 0.
        DATA(t104) = 1.
        DATA(t105) = strlen( t102 ).
        IF t103 < 0.
          t103 = t103 + t105.
          IF t103 < 0.
            t103 = 0.
          ENDIF.
        ENDIF.
        IF t103 > t105 OR t104 <= 0.
          CLEAR t101.
        ELSE.
          IF t104 > t105 - t103.
            t104 = t105 - t103.
          ENDIF.
          t101 = t102+t103(t104).
        ENDIF.
        DATA(t106) = |!|.
        t100 = xsdbool( t101 = t106 ).
        IF t100 = abap_true.
          DATA(t107) = VALUE string( ).
          DATA t108 TYPE string.
          DATA(t109) = t93.
          t108 = t109.
          DATA(t110) = VALUE string( ).
          DATA(t111) = t108.
          DATA(t112) = 1.
          DATA t113 TYPE i.
          DATA(t114) = t108.
          DATA(t115) = strlen( t114 ).
          t113 = t115.
          DATA(t116) = strlen( t111 ).
          IF t112 < 0.
            t112 = t112 + t116.
            IF t112 < 0.
              t112 = 0.
            ENDIF.
          ENDIF.
          IF t112 > t116 OR t113 <= 0.
            CLEAR t110.
          ELSE.
            IF t113 > t116 - t112.
              t113 = t116 - t112.
            ENDIF.
            t110 = t111+t112(t113).
          ENDIF.
          t107 = t110.
          t93 = t107.
        ENDIF.
        DATA(t117) = t93.
        t92 = t117.
        t88 = t92.
        DATA(t118) = strlen( t87 ).
        t86 = |{ t87 }{ t88 }|.
        t85 = t86.
        DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t120) = t2.
        t119 = t120->issues.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        DATA(t122) = t2.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t124) = t1.
        t123 = t124->get_first_token( ).
        DATA(t125) = t85.
        DATA t126 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t126.
        t121 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t122 i_token = t123 i_message_26cb = t125 i_fix = t126 ).
        t119->load( ).
        APPEND t121 TO t119->items.
        t119->save( ).
        DATA t127 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t127.
        DATA(t128) = abap_true.
        IF t128 = abap_true.
          DATA t129 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t129.
          DATA t130 TYPE REF TO zcl_lnt_abstract_token.
          DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t132 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t133) = t14.
          t132 = t133.
          t131 = t132.
          DATA t134 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t135) = t131.
          t134 = t135->token.
          t130 = t134.
          DATA t136 TYPE string.
          DATA(t137) = t2.
          t136 = t137->filename.
          DATA t138 TYPE REF TO zcl_lnt_void_type.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          DATA(t140) = abap_true.
          IF t140 = abap_true.
            DATA(t141) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t142->has = abap_true.
            t142->value = t141.
            t139 = t142.
          ELSE.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            t139 = t143.
          ENDIF.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          t138 = zcl_lnt_void_type=>get_db65( i_voided = t139 i_qualified_name = t144 ).
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          t129 = NEW zcl_lnt_typed_identifier( i_token = t130 i_filename = t136 i_type_9913 = t138 i_meta = t145 i_value = t146 ).
          t127 = t129.
        ELSE.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t147.
          t127 = t147.
        ENDIF.
        result = t127.
        RETURN.
      ENDIF.
      DATA t148 TYPE abap_bool.
      DATA t149 TYPE abap_bool.
      DATA t150 TYPE REF TO zcl_lnt_current_scope.
      DATA(t151) = t2.
      t150 = t151->scope.
      t149 = t150->is_any_oo( ).
      t148 = t149.
      IF t149 = abap_true.
        DATA t152 TYPE abap_bool.
        DATA t153 TYPE REF TO zcl_lnt_abstract_type.
        DATA t154 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t155 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t156) = t14.
        t155 = t156.
        t154 = t155.
        DATA t157 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t158) = t154.
        t157 = t158->type_cba0.
        t153 = t157.
        t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_packed_type ).
        t148 = t152.
      ENDIF.
      IF t148 = abap_true.
        DATA(t159) = VALUE string( ).
        DATA t160 TYPE string.
        DATA t161 TYPE string.
        DATA(t162) = t1.
        t161 = t162->concat_tokens( ).
        DATA(t163) = strlen( t161 ).
        t160 = t161.
        IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t160 TO UPPER CASE.
        ELSE.
          t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
        ENDIF.
        t159 = t160.
        DATA(t164) = VALUE abap_bool( ).
        DATA(t165) = VALUE abap_bool( ).
        DATA(t166) = VALUE abap_bool( ).
        DATA(t167) = VALUE i( ).
        DATA(t168) = t159.
        DATA(t169) = | TYPE P |.
        DATA(t170) = strlen( t168 ).
        IF t169 IS INITIAL.
          t167 = 0.
        ELSE.
          FIND t169 IN t168 MATCH OFFSET t167.
          IF sy-subrc <> 0.
            t167 = -1.
          ENDIF.
        ENDIF.
        DATA(t171) = 0.
        t166 = xsdbool( t167 >= t171 ).
        t165 = t166.
        IF t166 = abap_false.
          DATA(t172) = VALUE abap_bool( ).
          DATA(t173) = VALUE i( ).
          DATA(t174) = t159.
          DATA(t175) = | TYPE P.|.
          DATA(t176) = strlen( t174 ).
          IF t175 IS INITIAL.
            t173 = 0.
          ELSE.
            FIND t175 IN t174 MATCH OFFSET t173.
            IF sy-subrc <> 0.
              t173 = -1.
            ENDIF.
          ENDIF.
          DATA(t177) = 0.
          t172 = xsdbool( t173 >= t177 ).
          t165 = t172.
        ENDIF.
        t164 = t165.
        IF t165 = abap_true.
          DATA(t178) = VALUE abap_bool( ).
          DATA(t179) = VALUE abap_bool( ).
          DATA(t180) = VALUE i( ).
          DATA(t181) = t159.
          DATA(t182) = | DECIMALS |.
          DATA(t183) = strlen( t181 ).
          IF t182 IS INITIAL.
            t180 = 0.
          ELSE.
            FIND t182 IN t181 MATCH OFFSET t180.
            IF sy-subrc <> 0.
              t180 = -1.
            ENDIF.
          ENDIF.
          DATA(t184) = 0.
          t179 = xsdbool( t180 >= t184 ).
          DATA(t185) = abap_false.
          t178 = xsdbool( t179 = t185 ).
          t164 = t178.
        ENDIF.
        IF t164 = abap_true.
          DATA t186 TYPE string.
          DATA(t187) = |Specify DECIMALS in OO context for packed|.
          t186 = t187.
          DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t189) = t2.
          t188 = t189->issues.
          DATA t190 TYPE REF TO zcl_lnt_issue.
          DATA(t191) = t2.
          DATA t192 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t193) = t1.
          t192 = t193->get_first_token( ).
          DATA(t194) = t186.
          DATA t195 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t195.
          t190 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t191 i_token = t192 i_message_26cb = t194 i_fix = t195 ).
          t188->load( ).
          APPEND t190 TO t188->items.
          t188->save( ).
          DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t196.
          DATA(t197) = abap_true.
          IF t197 = abap_true.
            DATA t198 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t198.
            DATA t199 TYPE REF TO zcl_lnt_abstract_token.
            DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t202) = t14.
            t201 = t202.
            t200 = t201.
            DATA t203 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t204) = t200.
            t203 = t204->token.
            t199 = t203.
            DATA t205 TYPE string.
            DATA(t206) = t2.
            t205 = t206->filename.
            DATA t207 TYPE REF TO zcl_lnt_void_type.
            CLEAR t207.
            DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t208.
            DATA(t209) = abap_true.
            IF t209 = abap_true.
              DATA(t210) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t211->has = abap_true.
              t211->value = t210.
              t208 = t211.
            ELSE.
              DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t212.
              t208 = t212.
            ENDIF.
            DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t213.
            t207 = zcl_lnt_void_type=>get_db65( i_voided = t208 i_qualified_name = t213 ).
            DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t214.
            DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t215.
            t198 = NEW zcl_lnt_typed_identifier( i_token = t199 i_filename = t205 i_type_9913 = t207 i_meta = t214 i_value = t215 ).
            t196 = t198.
          ELSE.
            DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t216.
            t196 = t216.
          ENDIF.
          result = t196.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t217.
      DATA(t218) = abap_true.
      IF t218 = abap_true.
        DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t220) = t14.
        t219 = t220.
        t217 = t219.
      ELSE.
        DATA t221 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t221.
        t217 = t221.
      ENDIF.
      result = t217.
      RETURN.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_expression_node.
    DATA t223 TYPE REF TO zcl_lnt_expression_node.
    DATA(t224) = t1.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t223 = t224->find_first_expression( i_type_9913 = t225 ).
    t222 = t223.
    DATA t226 TYPE abap_bool.
    DATA(t227) = t222.
    t226 = xsdbool( t227 IS BOUND ).
    IF t226 = abap_true.
      DATA t228 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t228.
      DATA(t229) = abap_true.
      IF t229 = abap_true.
        DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t231 TYPE REF TO zcl_lnt_abstract_token.
        DATA t232 TYPE REF TO zcl_lnt_expression_node.
        DATA(t233) = t222.
        t232 = t233.
        t231 = t232->get_first_token( ).
        DATA t234 TYPE string.
        DATA(t235) = t2.
        t234 = t235->filename.
        DATA t236 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t237) = |Type, fallback|.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        t236 = NEW zcl_lnt_unknown_type( i_error = t237 i_qualified_name = t238 ).
        DATA t239 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t239.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        t230 = NEW zcl_lnt_typed_identifier( i_token = t231 i_filename = t234 i_type_9913 = t236 i_meta = t239 i_value = t240 ).
        t228 = t230.
      ELSE.
        DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t241.
        t228 = t241.
      ENDIF.
      result = t228.
      RETURN.
    ENDIF.
    DATA t242 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t242.
    result = t242.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d979_1a91b28d9760.
  ENDMETHOD.
ENDCLASS.
