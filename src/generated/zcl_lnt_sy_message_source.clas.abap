* TS: src/abap/5_syntax/expressions/message_source.ts:6:1 MessageSource
CLASS zcl_lnt_sy_message_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_message_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t21 = t22->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = t24.
        t30 = t32.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        t30 = t33.
      ENDIF.
      DATA(t34) = t2.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      t29 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t34 i_target_type = t35 i_write_reference = t36 i_allow_generic_deference = t37 i_read_reference = t38 ).
    ENDDO.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE string.
    DATA t41 TYPE string.
    DATA t42 TYPE REF TO zcl_lnt_abstract_token.
    DATA t43 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t44) = t1.
    t43 = t44->get_first_token( ).
    t42 = t43.
    DATA t45 TYPE string.
    DATA(t46) = t42.
    t45 = t46->str.
    t41 = t45.
    DATA(t47) = strlen( t41 ).
    t40 = t41.
    IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t40 TO UPPER CASE.
    ELSE.
      t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
    ENDIF.
    DATA(t48) = |ID|.
    t39 = xsdbool( t40 = t48 ).
    IF t39 = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      DATA(t53) = t1.
      DATA(t54) = |ID|.
      t52 = t53->find_expression_after_token( i_text = t54 ).
      t51 = t52.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t51.
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t55 = t58.
      ELSE.
        DATA t59 TYPE string.
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        DATA(t61) = t51.
        t60 = t61.
        t59 = t60->concat_tokens( ).
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t59.
        t55 = t62.
      ENDIF.
      t50 = t55.
      t49 = t50.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_expression_node.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      DATA(t67) = t1.
      DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d216_5867c1ce5807.
      t66 = t67->find_direct_expression( i_type_9913 = t68 ).
      t65 = t66.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t65.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ENDIF.
      IF t70 = abap_true.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t69 = t72.
      ELSE.
        DATA t73 TYPE string.
        DATA t74 TYPE REF TO zcl_lnt_expression_node.
        DATA(t75) = t65.
        t74 = t75.
        t73 = t74->concat_tokens( ).
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t73.
        t69 = t76.
      ENDIF.
      t64 = t69.
      t63 = t64.
      DATA(t77) = VALUE abap_bool( ).
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t79) = t63.
      t78 = t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      t80 = t81.
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = t78.
      IF t83 IS INITIAL.
        t82 = abap_true.
      ELSEIF t83->has = abap_false.
        t82 = abap_true.
      ENDIF.
      t77 = t82.
      IF t77 = abap_true.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA t87 TYPE REF TO zcl_lnt_expression_node.
        DATA(t88) = t1.
        DATA(t89) = |NUMBER|.
        t87 = t88->find_expression_after_token( i_text = t89 ).
        t86 = t87.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = t86.
        IF t92 IS INITIAL.
          t91 = abap_true.
        ENDIF.
        IF t91 = abap_true.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t90 = t93.
        ELSE.
          DATA t94 TYPE string.
          DATA t95 TYPE REF TO zcl_lnt_expression_node.
          DATA(t96) = t86.
          t95 = t96.
          t94 = t95->concat_tokens( ).
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t94.
          t90 = t97.
        ENDIF.
        t85 = t90.
        t84 = t85.
        DATA(t98) = VALUE abap_bool( ).
        DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t101) = t84.
        t100 = t101.
        DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t102.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = t100.
        IF t104 IS INITIAL.
          t103 = abap_true.
        ELSEIF t104->has = abap_false.
          t103 = abap_true.
        ENDIF.
        IF t103 = abap_true.
          DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t105.
          t102 = t105.
        ELSE.
          DATA(t106) = VALUE abap_bool( ).
          DATA t107 TYPE string.
          DATA(t108) = t100.
          t107 = t108->value.
          DATA(t109) = |'|.
          DATA(t110) = strlen( t107 ).
          DATA t111 TYPE i.
          DATA(t112) = VALUE i( ).
          DATA(t113) = VALUE string( ).
          t111 = strlen( t109 ).
          IF t111 = 0.
            t106 = abap_true.
          ELSEIF t111 <= t110.
            t112 = 0.
            t113 = t107+t112(t111).
            IF t113 = t109.
              t106 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t114) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t114->has = abap_true.
          t114->value = t106.
          t102 = t114.
        ENDIF.
        t99 = t102.
        IF t99 IS BOUND.
          IF t99->has = abap_true.
            t98 = xsdbool( t99->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t98 = abap_true.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t116) = abap_true.
          IF t116 = abap_true.
            DATA(t117) = VALUE string( ).
            DATA(t118) = VALUE string( ).
            DATA t119 TYPE string.
            DATA(t120) = t84.
            t119 = t120->value.
            DATA(t121) = 1.
            DATA t122 TYPE i.
            DATA t123 TYPE i.
            DATA t124 TYPE string.
            DATA(t125) = t84.
            t124 = t125->value.
            DATA(t126) = strlen( t124 ).
            t123 = t126.
            DATA(t127) = 1.
            t122 = t123 - t127.
            DATA(t128) = strlen( t119 ).
            t121 = COND i( WHEN t121 < 0 THEN 0 WHEN t121 > t128 THEN t128 ELSE t121 ).
            t122 = COND i( WHEN t122 < 0 THEN 0 WHEN t122 > t128 THEN t128 ELSE t122 ).
            IF t121 > t122.
              t128 = t121.
              t121 = t122.
              t122 = t128.
            ENDIF.
            t128 = t122 - t121.
            t118 = t119+t121(t128).
            DATA(t129) = strlen( t118 ).
            t117 = t118.
            IF t117 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t117 TO UPPER CASE.
            ELSE.
              t117 = zlnt_runtime_uppe_91169605024d=>full( t117 ).
            ENDIF.
            DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t130->has = abap_true.
            t130->value = t117.
            t115 = t130.
          ELSE.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            t115 = t131.
          ENDIF.
          t63 = t115.
        ENDIF.
      ENDIF.
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t136) = t49.
      t135 = t136.
      DATA t137 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = t135.
      IF t139 IS INITIAL.
        t138 = abap_true.
      ELSEIF t139->has = abap_false.
        t138 = abap_true.
      ENDIF.
      IF t138 = abap_true.
        DATA t140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t140.
        t137 = t140.
      ELSE.
        DATA(t141) = VALUE abap_bool( ).
        DATA t142 TYPE string.
        DATA(t143) = t135.
        t142 = t143->value.
        DATA(t144) = |'|.
        DATA(t145) = strlen( t142 ).
        DATA t146 TYPE i.
        DATA(t147) = VALUE i( ).
        DATA(t148) = VALUE string( ).
        t146 = strlen( t144 ).
        IF t146 = 0.
          t141 = abap_true.
        ELSEIF t146 <= t145.
          t147 = 0.
          t148 = t142+t147(t146).
          IF t148 = t144.
            t141 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t149) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t149->has = abap_true.
        t149->value = t141.
        t137 = t149.
      ENDIF.
      t134 = t137.
      IF t134 IS BOUND.
        IF t134->has = abap_true.
          t133 = xsdbool( t134->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t132 = t133.
      IF t133 = abap_true.
        DATA(t150) = VALUE abap_bool( ).
        DATA(t151) = t63.
        IF t151 IS BOUND.
          IF t151->has = abap_true.
            t150 = xsdbool( strlen( t151->value ) > 0 ).
          ENDIF.
        ENDIF.
        t132 = t150.
      ENDIF.
      IF t132 = abap_true.
        DATA(t152) = VALUE string( ).
        DATA(t153) = VALUE string( ).
        DATA(t154) = VALUE string( ).
        DATA t155 TYPE string.
        DATA(t156) = t49.
        t155 = t156->value.
        DATA(t157) = 1.
        DATA t158 TYPE i.
        DATA t159 TYPE i.
        DATA t160 TYPE string.
        DATA(t161) = t49.
        t160 = t161->value.
        DATA(t162) = strlen( t160 ).
        t159 = t162.
        DATA(t163) = 1.
        t158 = t159 - t163.
        DATA(t164) = strlen( t155 ).
        t157 = COND i( WHEN t157 < 0 THEN 0 WHEN t157 > t164 THEN t164 ELSE t157 ).
        t158 = COND i( WHEN t158 < 0 THEN 0 WHEN t158 > t164 THEN t164 ELSE t158 ).
        IF t157 > t158.
          t164 = t157.
          t157 = t158.
          t158 = t164.
        ENDIF.
        t164 = t158 - t157.
        t154 = t155+t157(t164).
        DATA(t165) = strlen( t154 ).
        t153 = t154.
        IF t153 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t153 TO UPPER CASE.
        ELSE.
          t153 = zlnt_runtime_uppe_91169605024d=>full( t153 ).
        ENDIF.
        t152 = t153.
        DATA t166 TYPE REF TO zif_lnt_msag_references.
        DATA t167 TYPE REF TO zcl_lnt_current_scope.
        DATA t168 TYPE REF TO zcl_lnt_current_scope.
        DATA(t169) = t2.
        t168 = t169->scope.
        t167 = t168.
        DATA t170 TYPE REF TO zif_lnt_msag_references.
        DATA t171 TYPE REF TO zif_lnt_registry.
        DATA(t172) = t167.
        t171 = t172->reg.
        t170 = t171->get_msag_references( ).
        t166 = t170.
        DATA t173 TYPE string.
        DATA(t174) = t2.
        t173 = t174->filename.
        DATA t175 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t176) = t1.
        t175 = t176->get_first_token( ).
        DATA(t177) = t152.
        DATA t178 TYPE string.
        DATA(t179) = t63.
        t178 = t179->value.
        t166->add_using( i_filename = t173 i_token = t175 i_message_class = t177 i_number = t178 ).
      ENDIF.
    ELSE.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t180.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t181.
      DATA t182 TYPE REF TO zcl_lnt_expression_node.
      DATA t183 TYPE REF TO zcl_lnt_expression_node.
      DATA(t184) = t1.
      DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d217_b89e20eef6cb.
      t183 = t184->find_direct_expression( i_type_9913 = t185 ).
      t182 = t183.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t186.
      DATA(t187) = VALUE abap_bool( ).
      DATA(t188) = t182.
      IF t188 IS INITIAL.
        t187 = abap_true.
      ENDIF.
      IF t187 = abap_true.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t186 = t189.
      ELSE.
        DATA t190 TYPE string.
        DATA t191 TYPE REF TO zcl_lnt_expression_node.
        DATA(t192) = t182.
        t191 = t192.
        t190 = t191->concat_tokens( ).
        DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t193->has = abap_true.
        t193->value = t190.
        t186 = t193.
      ENDIF.
      t181 = t186.
      t180 = t181.
      DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t194.
      DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t195.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t197) = t180.
      t196 = t197.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t198.
      DATA(t199) = VALUE abap_bool( ).
      DATA(t200) = t196.
      IF t200 IS INITIAL.
        t199 = abap_true.
      ELSEIF t200->has = abap_false.
        t199 = abap_true.
      ENDIF.
      IF t199 = abap_true.
        DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t201.
        t198 = t201.
      ELSE.
        DATA(t202) = VALUE string( ).
        DATA t203 TYPE string.
        DATA t204 TYPE string.
        DATA(t205) = t196.
        t204 = t205->value.
        t203 = t204.
        DATA(t206) = VALUE string( ).
        DATA(t207) = t203.
        DATA(t208) = 1.
        DATA t209 TYPE i.
        DATA(t210) = t203.
        DATA(t211) = strlen( t210 ).
        t209 = t211.
        DATA(t212) = strlen( t207 ).
        t208 = COND i( WHEN t208 < 0 THEN 0 WHEN t208 > t212 THEN t212 ELSE t208 ).
        t209 = COND i( WHEN t209 < 0 THEN 0 WHEN t209 > t212 THEN t212 ELSE t209 ).
        IF t208 > t209.
          t212 = t208.
          t208 = t209.
          t209 = t212.
        ENDIF.
        t212 = t209 - t208.
        t206 = t207+t208(t212).
        t202 = t206.
        DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t213->has = abap_true.
        t213->value = t202.
        t198 = t213.
      ENDIF.
      t195 = t198.
      t194 = t195.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t214.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t216.
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t217.
      DATA t218 TYPE REF TO zcl_lnt_expression_node.
      DATA t219 TYPE REF TO zcl_lnt_expression_node.
      DATA(t220) = t1.
      DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f.
      t219 = t220->find_direct_expression( i_type_9913 = t221 ).
      t218 = t219.
      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t222.
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = t218.
      IF t224 IS INITIAL.
        t223 = abap_true.
      ENDIF.
      IF t223 = abap_true.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        t222 = t225.
      ELSE.
        DATA t226 TYPE string.
        DATA t227 TYPE REF TO zcl_lnt_expression_node.
        DATA(t228) = t218.
        t227 = t228.
        t226 = t227->concat_tokens( ).
        DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t229->has = abap_true.
        t229->value = t226.
        t222 = t229.
      ENDIF.
      t217 = t222.
      t216 = t217.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t230.
      DATA(t231) = VALUE abap_bool( ).
      DATA(t232) = t216.
      IF t232 IS INITIAL.
        t231 = abap_true.
      ELSEIF t232->has = abap_false.
        t231 = abap_true.
      ENDIF.
      IF t231 = abap_true.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t233.
        t230 = t233.
      ELSE.
        DATA t234 TYPE string.
        DATA t235 TYPE string.
        DATA(t236) = t216.
        t235 = t236->value.
        DATA(t237) = strlen( t235 ).
        t234 = t235.
        IF t234 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t234 TO UPPER CASE.
        ELSE.
          t234 = zlnt_runtime_uppe_91169605024d=>full( t234 ).
        ENDIF.
        DATA(t238) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t238->has = abap_true.
        t238->value = t234.
        t230 = t238.
      ENDIF.
      t215 = t230.
      t214 = t215.
      DATA(t239) = VALUE abap_bool( ).
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = t194.
      IF t241 IS BOUND.
        IF t241->has = abap_true.
          t240 = xsdbool( strlen( t241->value ) > 0 ).
        ENDIF.
      ENDIF.
      t239 = t240.
      IF t240 = abap_true.
        DATA(t242) = VALUE abap_bool( ).
        DATA(t243) = t214.
        IF t243 IS BOUND.
          IF t243->has = abap_true.
            t242 = xsdbool( strlen( t243->value ) > 0 ).
          ENDIF.
        ENDIF.
        t239 = t242.
      ENDIF.
      IF t239 = abap_true.
        DATA t244 TYPE REF TO zif_lnt_msag_references.
        DATA t245 TYPE REF TO zcl_lnt_current_scope.
        DATA t246 TYPE REF TO zcl_lnt_current_scope.
        DATA(t247) = t2.
        t246 = t247->scope.
        t245 = t246.
        DATA t248 TYPE REF TO zif_lnt_msag_references.
        DATA t249 TYPE REF TO zif_lnt_registry.
        DATA(t250) = t245.
        t249 = t250->reg.
        t248 = t249->get_msag_references( ).
        t244 = t248.
        DATA t251 TYPE string.
        DATA(t252) = t2.
        t251 = t252->filename.
        DATA t253 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t254) = t1.
        t253 = t254->get_first_token( ).
        DATA t255 TYPE string.
        DATA(t256) = t214.
        t255 = t256->value.
        DATA t257 TYPE string.
        DATA(t258) = t194.
        t257 = t258->value.
        t244->add_using( i_filename = t251 i_token = t253 i_message_class = t255 i_number = t257 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d817_cd5ad42efa97.
  ENDMETHOD.
ENDCLASS.
