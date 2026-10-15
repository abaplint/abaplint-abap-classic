* TS: src/abap/5_syntax/expressions/inline_fs.ts:9:1 InlineFS
CLASS zcl_lnt_sy_inline_fs DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inline_fs IMPLEMENTATION.
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
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
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
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = t1.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    t18 = t19->find_first_expression( i_type_9913 = t20 ).
    t17 = t18.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t17.
    t22 = xsdbool( t23 IS BOUND ).
    t21 = t22.
    IF t22 = abap_true.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE i.
      DATA t26 TYPE string.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = t17.
      t27 = t28.
      t26 = t27->concat_tokens( ).
      DATA(t29) = strlen( t26 ).
      t25 = t29.
      DATA(t30) = 30.
      t24 = xsdbool( t25 > t30 ).
      t21 = t24.
    ENDIF.
    IF t21 = abap_true.
      DATA t31 TYPE string.
      DATA t32 TYPE string.
      DATA(t33) = |FIELD-SYMBOLS name too long, |.
      DATA t34 TYPE string.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = t17.
      t35 = t36.
      t34 = t35->concat_tokens( ).
      DATA(t37) = strlen( t33 ).
      t32 = |{ t33 }{ t34 }|.
      t31 = t32.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t39) = t2.
      t38 = t39->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      DATA(t41) = t2.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = t17.
      t43 = t44.
      t42 = t43->get_first_token( ).
      DATA(t45) = t31.
      DATA t46 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t46.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t41 i_token = t42 i_message_26cb = t45 i_fix = t46 ).
      t38->load( ).
      APPEND t40 TO t38->items.
      t38->save( ).
    ENDIF.
    DATA t47 TYPE abap_bool.
    DATA t48 TYPE abap_bool.
    DATA(t49) = t4.
    t48 = xsdbool( t49 IS BOUND ).
    t47 = t48.
    IF t48 = abap_true.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t3.
      t50 = xsdbool( t51 IS BOUND ).
      t47 = t50.
    ENDIF.
    IF t47 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t52.
      DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t55) = t4.
      t54 = t55.
      DATA t56 TYPE string.
      DATA(t57) = t2.
      t56 = t57->filename.
      DATA t58 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t59) = t3.
      t58 = t59.
      DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t64.
        t63 = t64.
        DATA(t65) = t63.
        DATA(t66) = |inline|.
        t65->load( ).
        APPEND t66 TO t65->items.
        t65->save( ).
        DATA(t67) = t63.
        t62 = t67.
        t60 = t62.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t68.
        t60 = t68.
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t53 = NEW zcl_lnt_typed_identifier( i_token = t54 i_filename = t56 i_type_9913 = t58 i_meta = t60 i_value = t69 ).
      t52 = t53.
      DATA t70 TYPE REF TO zcl_lnt_current_scope.
      DATA t71 TYPE REF TO zcl_lnt_current_scope.
      DATA(t72) = t2.
      t71 = t72->scope.
      t70 = t71.
      DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t73.
      DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t74.
      DATA(t75) = abap_true.
      IF t75 = abap_true.
        DATA(t76) = t52.
        t74 = t76.
      ELSE.
        DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t77.
        t74 = t77.
      ENDIF.
      t73 = t74.
      DATA(t78) = VALUE abap_bool( ).
      DATA t79 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t80) = t73.
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
      ELSE.
        DATA(t85) = t70.
        DATA(t86) = VALUE string( ).
        DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t88 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t89) = t73.
        t88 = t89.
        t87 = t88.
        DATA(t90) = VALUE string( ).
        DATA t91 TYPE string.
        DATA t92 TYPE string.
        DATA t93 TYPE REF TO zcl_lnt_abstract_token.
        DATA t94 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t95) = t87.
        t94 = t95->token.
        t93 = t94.
        DATA t96 TYPE string.
        DATA(t97) = t93.
        t96 = t97->str.
        t92 = t96.
        t91 = t92.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE string( ).
        DATA(t100) = t91.
        DATA(t101) = 0.
        DATA(t102) = 1.
        DATA(t103) = strlen( t100 ).
        IF t101 < 0.
          t101 = t101 + t103.
          IF t101 < 0.
            t101 = 0.
          ENDIF.
        ENDIF.
        IF t101 > t103 OR t102 <= 0.
          CLEAR t99.
        ELSE.
          IF t102 > t103 - t101.
            t102 = t103 - t101.
          ENDIF.
          t99 = t100+t101(t102).
        ENDIF.
        DATA(t104) = |!|.
        t98 = xsdbool( t99 = t104 ).
        IF t98 = abap_true.
          DATA(t105) = VALUE string( ).
          DATA t106 TYPE string.
          DATA(t107) = t91.
          t106 = t107.
          DATA(t108) = VALUE string( ).
          DATA(t109) = t106.
          DATA(t110) = 1.
          DATA t111 TYPE i.
          DATA(t112) = t106.
          DATA(t113) = strlen( t112 ).
          t111 = t113.
          DATA(t114) = strlen( t109 ).
          IF t110 < 0.
            t110 = t110 + t114.
            IF t110 < 0.
              t110 = 0.
            ENDIF.
          ENDIF.
          IF t110 > t114 OR t111 <= 0.
            CLEAR t108.
          ELSE.
            IF t111 > t114 - t110.
              t111 = t114 - t110.
            ENDIF.
            t108 = t109+t110(t111).
          ENDIF.
          t105 = t108.
          t91 = t105.
        ENDIF.
        DATA(t115) = t91.
        t90 = t115.
        t86 = t90.
        DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t117) = t73.
        t116 = t117.
        t85->add_named_identifier( i_name = t86 i_identifier = t116 ).
      ENDIF.
      DATA t118 TYPE REF TO zcl_lnt_current_scope.
      DATA(t119) = t2.
      t118 = t119->scope.
      DATA t120 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t120.
      DATA(t121) = abap_true.
      IF t121 = abap_true.
        DATA t122 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t123) = t4.
        t122 = t123.
        t120 = t122.
      ELSE.
        DATA t124 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t124.
        t120 = t124.
      ENDIF.
      DATA(t125) = t52.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      DATA(t127) = |Write To|.
      CLEAR t126.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t126->sval = t127.
      DATA t128 TYPE string.
      DATA(t129) = t2.
      t128 = t129->filename.
      DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t130.
      t118->add_reference( i_usage = t120 i_referencing = t125 i_type_9913 = t126 i_filename = t128 i_extra = t130 ).
    ELSE.
      DATA t131 TYPE abap_bool.
      DATA(t132) = t4.
      t131 = xsdbool( t132 IS BOUND ).
      IF t131 = abap_true.
        DATA t133 TYPE string.
        DATA t134 TYPE string.
        DATA t135 TYPE string.
        DATA(t136) = |InlineFS, could not determine type for "|.
        DATA t137 TYPE string.
        DATA t138 TYPE REF TO zcl_lnt_abstract_token.
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t140) = t4.
        t139 = t140.
        t138 = t139.
        DATA t141 TYPE string.
        DATA(t142) = t138.
        t141 = t142->str.
        t137 = t141.
        DATA(t143) = strlen( t136 ).
        t135 = |{ t136 }{ t137 }|.
        DATA(t144) = |"|.
        DATA(t145) = strlen( t135 ).
        t134 = |{ t135 }{ t144 }|.
        t133 = t134.
        DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t146.
        DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t147.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t149) = t4.
        t148 = t149.
        DATA t150 TYPE string.
        DATA(t151) = t2.
        t150 = t151->filename.
        DATA t152 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t153) = t133.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        t152 = NEW zcl_lnt_unknown_type( i_error = t153 i_qualified_name = t154 ).
        DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t155.
        DATA(t156) = abap_true.
        IF t156 = abap_true.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t159.
          t158 = t159.
          DATA(t160) = t158.
          DATA(t161) = |inline|.
          t160->load( ).
          APPEND t161 TO t160->items.
          t160->save( ).
          DATA(t162) = t158.
          t157 = t162.
          t155 = t157.
        ELSE.
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t163.
          t155 = t163.
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        t147 = NEW zcl_lnt_typed_identifier( i_token = t148 i_filename = t150 i_type_9913 = t152 i_meta = t155 i_value = t164 ).
        t146 = t147.
        DATA t165 TYPE REF TO zcl_lnt_current_scope.
        DATA t166 TYPE REF TO zcl_lnt_current_scope.
        DATA(t167) = t2.
        t166 = t167->scope.
        t165 = t166.
        DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t168.
        DATA t169 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t169.
        DATA(t170) = abap_true.
        IF t170 = abap_true.
          DATA(t171) = t146.
          t169 = t171.
        ELSE.
          DATA t172 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t172.
          t169 = t172.
        ENDIF.
        t168 = t169.
        DATA(t173) = VALUE abap_bool( ).
        DATA t174 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t175) = t168.
        t174 = t175.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        t176 = t177.
        DATA(t178) = VALUE abap_bool( ).
        DATA(t179) = t174.
        IF t179 IS INITIAL.
          t178 = abap_true.
        ENDIF.
        t173 = t178.
        IF t173 = abap_true.
        ELSE.
          DATA(t180) = t165.
          DATA(t181) = VALUE string( ).
          DATA t182 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t183 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t184) = t168.
          t183 = t184.
          t182 = t183.
          DATA(t185) = VALUE string( ).
          DATA t186 TYPE string.
          DATA t187 TYPE string.
          DATA t188 TYPE REF TO zcl_lnt_abstract_token.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t190) = t182.
          t189 = t190->token.
          t188 = t189.
          DATA t191 TYPE string.
          DATA(t192) = t188.
          t191 = t192->str.
          t187 = t191.
          t186 = t187.
          DATA(t193) = VALUE abap_bool( ).
          DATA(t194) = VALUE string( ).
          DATA(t195) = t186.
          DATA(t196) = 0.
          DATA(t197) = 1.
          DATA(t198) = strlen( t195 ).
          IF t196 < 0.
            t196 = t196 + t198.
            IF t196 < 0.
              t196 = 0.
            ENDIF.
          ENDIF.
          IF t196 > t198 OR t197 <= 0.
            CLEAR t194.
          ELSE.
            IF t197 > t198 - t196.
              t197 = t198 - t196.
            ENDIF.
            t194 = t195+t196(t197).
          ENDIF.
          DATA(t199) = |!|.
          t193 = xsdbool( t194 = t199 ).
          IF t193 = abap_true.
            DATA(t200) = VALUE string( ).
            DATA t201 TYPE string.
            DATA(t202) = t186.
            t201 = t202.
            DATA(t203) = VALUE string( ).
            DATA(t204) = t201.
            DATA(t205) = 1.
            DATA t206 TYPE i.
            DATA(t207) = t201.
            DATA(t208) = strlen( t207 ).
            t206 = t208.
            DATA(t209) = strlen( t204 ).
            IF t205 < 0.
              t205 = t205 + t209.
              IF t205 < 0.
                t205 = 0.
              ENDIF.
            ENDIF.
            IF t205 > t209 OR t206 <= 0.
              CLEAR t203.
            ELSE.
              IF t206 > t209 - t205.
                t206 = t209 - t205.
              ENDIF.
              t203 = t204+t205(t206).
            ENDIF.
            t200 = t203.
            t186 = t200.
          ENDIF.
          DATA(t210) = t186.
          t185 = t210.
          t181 = t185.
          DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t212) = t168.
          t211 = t212.
          t180->add_named_identifier( i_name = t181 i_identifier = t211 ).
        ENDIF.
        DATA t213 TYPE REF TO zcl_lnt_current_scope.
        DATA(t214) = t2.
        t213 = t214->scope.
        DATA t215 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t215.
        DATA(t216) = abap_true.
        IF t216 = abap_true.
          DATA t217 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t218) = t4.
          t217 = t218.
          t215 = t217.
        ELSE.
          DATA t219 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t219.
          t215 = t219.
        ENDIF.
        DATA(t220) = t146.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        DATA(t222) = |Write To|.
        CLEAR t221.
        CREATE OBJECT t221.
        t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t221->sval = t222.
        DATA t223 TYPE string.
        DATA(t224) = t2.
        t223 = t224->filename.
        DATA t225 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t225.
        t213->add_reference( i_usage = t215 i_referencing = t220 i_type_9913 = t221 i_filename = t223 i_extra = t225 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d813_25344fc234da.
  ENDMETHOD.
ENDCLASS.
