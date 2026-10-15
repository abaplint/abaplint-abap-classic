* TS: src/abap/5_syntax/statements/class_data.ts:9:1 ClassData
CLASS zcl_lnt_sy_statem_class_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statem_class_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = t3.
      t11 = t12.
      DATA(t13) = t2.
      t10 = zcl_lnt_sy_data_definition=>run_syntax( i_node = t11 i_input_967e = t13 ).
      t9 = t10.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t16) = t9.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t15.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t14 = t19.
      IF t14 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t21.
        result = t21.
        RETURN.
      ENDIF.
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
      DATA(t29) = t9.
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
        DATA(t60) = t9.
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
        DATA(t87) = |DATA definition cannot be generic, |.
        DATA(t88) = VALUE string( ).
        DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t91) = t9.
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
          DATA(t133) = t9.
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
      DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t151.
      t150 = t151.
      DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t154) = t150.
      DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t156 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t157 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t158) = t9.
      t157 = t158.
      t156 = t157.
      DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t160) = t156.
      t159 = t160->meta.
      t155 = t159.
      t153 = t154->concat( p0 = t155 ).
      t152 = t153.
      DATA(t161) = t152.
      DATA(t162) = |static|.
      t161->load( ).
      APPEND t162 TO t161->items.
      t161->save( ).
      DATA(t163) = t152.
      t149 = t163.
      t148 = t149.
      DATA t164 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t164.
      DATA(t165) = abap_true.
      IF t165 = abap_true.
        DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t166.
        DATA t167 TYPE REF TO zcl_lnt_abstract_token.
        DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t169 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t170) = t9.
        t169 = t170.
        t168 = t169.
        DATA t171 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t172) = t168.
        t171 = t172->token.
        t167 = t171.
        DATA t173 TYPE string.
        DATA(t174) = t2.
        t173 = t174->filename.
        DATA t175 TYPE REF TO zcl_lnt_abstract_type.
        DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t177 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t178) = t9.
        t177 = t178.
        t176 = t177.
        DATA t179 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t180) = t176.
        t179 = t180->type_cba0.
        t175 = t179.
        DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t181.
        DATA(t182) = abap_true.
        IF t182 = abap_true.
          DATA(t183) = t148.
          t181 = t183.
        ELSE.
          DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t184.
          t181 = t184.
        ENDIF.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        DATA(t186) = abap_true.
        IF t186 = abap_true.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t188 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t189 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t190) = t9.
          t189 = t190.
          t188 = t189.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t192) = t188.
          t191 = t192->value.
          t187 = t191.
          t185 = t187.
        ELSE.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          t185 = t193.
        ENDIF.
        t166 = NEW zcl_lnt_typed_identifier( i_token = t167 i_filename = t173 i_type_9913 = t175 i_meta = t181 i_value = t185 ).
        t164 = t166.
      ELSE.
        DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t194.
        t164 = t194.
      ENDIF.
      result = t164.
      RETURN.
    ENDIF.
    DATA t195 TYPE REF TO zcl_lnt_expression_node.
    DATA t196 TYPE REF TO zcl_lnt_expression_node.
    DATA(t197) = t1.
    DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t196 = t197->find_first_expression( i_type_9913 = t198 ).
    t195 = t196.
    DATA t199 TYPE abap_bool.
    DATA(t200) = t195.
    t199 = xsdbool( t200 IS BOUND ).
    IF t199 = abap_true.
      DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t201.
      DATA(t202) = abap_true.
      IF t202 = abap_true.
        DATA t203 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t204 TYPE REF TO zcl_lnt_abstract_token.
        DATA t205 TYPE REF TO zcl_lnt_expression_node.
        DATA(t206) = t195.
        t205 = t206.
        t204 = t205->get_first_token( ).
        DATA t207 TYPE string.
        DATA(t208) = t2.
        t207 = t208->filename.
        DATA t209 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t210) = |class data, fallback|.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        t209 = NEW zcl_lnt_unknown_type( i_error = t210 i_qualified_name = t211 ).
        DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t212.
        DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t213.
        t203 = NEW zcl_lnt_typed_identifier( i_token = t204 i_filename = t207 i_type_9913 = t209 i_meta = t212 i_value = t213 ).
        t201 = t203.
      ELSE.
        DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t214.
        t201 = t214.
      ENDIF.
      result = t201.
      RETURN.
    ENDIF.
    DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t215.
    result = t215.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d870_4a696a04c465.
  ENDMETHOD.
ENDCLASS.
