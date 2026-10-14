* TS: src/abap/5_syntax/expressions/message_source.ts:6:1 MessageSource
CLASS zcl_lnt_sy_message_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_message_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t18 = t19->find_direct_expressions( i_type_9913 = t20 ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t18->items INTO t22.
      t21 ?= t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA(t26) = CAST zcl_lnt_expression_node( t21 ).
        t24 = t26.
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t27.
        t24 = t27.
      ENDIF.
      DATA(t28) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t32.
      t23 = zcl_lnt_sy_source=>run_syntax( i_node = t24 i_input_967e = t28 i_target_type = t29 i_write_reference = t30 i_allow_generic_deference = t31 i_read_reference = t32 ).
    ENDLOOP.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE string.
    DATA t35 TYPE string.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t38) = CAST zcl_lnt_expression_node( t1 ).
    t37 = t38->get_first_token( ).
    t36 = t37.
    DATA t39 TYPE string.
    DATA(t40) = CAST zcl_lnt_abstract_token( t36 ).
    t39 = t40->str.
    t35 = t39.
    DATA(t41) = strlen( t35 ).
    t34 = t35.
    IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t34 TO UPPER CASE.
    ELSE.
      t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
    ENDIF.
    DATA(t42) = |ID|.
    t33 = xsdbool( t34 = t42 ).
    IF t33 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      DATA(t47) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t48) = |ID|.
      t46 = t47->find_expression_after_token( i_text = t48 ).
      t45 = t46.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = CAST zcl_lnt_expression_node( t45 ).
      IF t51 IS INITIAL.
        t50 = abap_true.
      ENDIF.
      IF t50 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t49 = t52.
      ELSE.
        DATA t53 TYPE string.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        DATA(t55) = CAST zcl_lnt_expression_node( t45 ).
        t54 = t55.
        t53 = t54->concat_tokens( ).
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t53.
        t49 = t56.
      ENDIF.
      t44 = t49.
      t43 = t44.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA(t61) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494 ).
      t60 = t61->find_direct_expression( i_type_9913 = t62 ).
      t59 = t60.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = CAST zcl_lnt_expression_node( t59 ).
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE string.
        DATA t68 TYPE REF TO zcl_lnt_expression_node.
        DATA(t69) = CAST zcl_lnt_expression_node( t59 ).
        t68 = t69.
        t67 = t68->concat_tokens( ).
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t67.
        t63 = t70.
      ENDIF.
      t58 = t63.
      t57 = t58.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t73) = CAST zlnt_runtime_opti_4ba3bdccd169( t57 ).
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = CAST zlnt_runtime_opti_4ba3bdccd169( t72 ).
      IF t77 IS INITIAL.
        t76 = abap_true.
      ELSEIF t77->has = abap_false.
        t76 = abap_true.
      ENDIF.
      t71 = t76.
      IF t71 = abap_true.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_expression_node.
        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        DATA(t82) = CAST zcl_lnt_expression_node( t1 ).
        DATA(t83) = |NUMBER|.
        t81 = t82->find_expression_after_token( i_text = t83 ).
        t80 = t81.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = CAST zcl_lnt_expression_node( t80 ).
        IF t86 IS INITIAL.
          t85 = abap_true.
        ENDIF.
        IF t85 = abap_true.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          t84 = t87.
        ELSE.
          DATA t88 TYPE string.
          DATA t89 TYPE REF TO zcl_lnt_expression_node.
          DATA(t90) = CAST zcl_lnt_expression_node( t80 ).
          t89 = t90.
          t88 = t89->concat_tokens( ).
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t88.
          t84 = t91.
        ENDIF.
        t79 = t84.
        t78 = t79.
        DATA(t92) = VALUE abap_bool( ).
        DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t93.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t95) = CAST zlnt_runtime_opti_4ba3bdccd169( t78 ).
        t94 = t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t96.
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = CAST zlnt_runtime_opti_4ba3bdccd169( t94 ).
        IF t98 IS INITIAL.
          t97 = abap_true.
        ELSEIF t98->has = abap_false.
          t97 = abap_true.
        ENDIF.
        IF t97 = abap_true.
          DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t99.
          t96 = t99.
        ELSE.
          DATA(t100) = VALUE abap_bool( ).
          DATA t101 TYPE string.
          DATA(t102) = CAST zlnt_runtime_opti_4ba3bdccd169( t94 ).
          t101 = t102->value.
          DATA(t103) = |'|.
          DATA(t104) = strlen( t101 ).
          DATA t105 TYPE i.
          DATA(t106) = VALUE i( ).
          DATA(t107) = VALUE string( ).
          t105 = strlen( t103 ).
          IF t105 = 0.
            t100 = abap_true.
          ELSEIF t105 <= t104.
            t106 = 0.
            t107 = t101+t106(t105).
            IF t107 = t103.
              t100 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t108) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t108->has = abap_true.
          t108->value = t100.
          t96 = t108.
        ENDIF.
        t93 = t96.
        IF t93 IS BOUND.
          IF t93->has = abap_true.
            t92 = xsdbool( t93->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t92 = abap_true.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t110) = abap_true.
          IF t110 = abap_true.
            DATA(t111) = VALUE string( ).
            DATA(t112) = VALUE string( ).
            DATA t113 TYPE string.
            DATA(t114) = CAST zlnt_runtime_opti_4ba3bdccd169( t78 ).
            t113 = t114->value.
            DATA(t115) = 1.
            DATA t116 TYPE i.
            DATA t117 TYPE i.
            DATA t118 TYPE string.
            DATA(t119) = CAST zlnt_runtime_opti_4ba3bdccd169( t78 ).
            t118 = t119->value.
            DATA(t120) = strlen( t118 ).
            t117 = t120.
            DATA(t121) = 1.
            t116 = t117 - t121.
            DATA(t122) = strlen( t113 ).
            t115 = COND i( WHEN t115 < 0 THEN 0 WHEN t115 > t122 THEN t122 ELSE t115 ).
            t116 = COND i( WHEN t116 < 0 THEN 0 WHEN t116 > t122 THEN t122 ELSE t116 ).
            IF t115 > t116.
              t122 = t115.
              t115 = t116.
              t116 = t122.
            ENDIF.
            t122 = t116 - t115.
            t112 = t113+t115(t122).
            DATA(t123) = strlen( t112 ).
            t111 = t112.
            IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t111 TO UPPER CASE.
            ELSE.
              t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
            ENDIF.
            DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t124->has = abap_true.
            t124->value = t111.
            t109 = t124.
          ELSE.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            t109 = t125.
          ENDIF.
          t57 = t109.
        ENDIF.
      ENDIF.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = VALUE abap_bool( ).
      DATA t128 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t130) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
      t129 = t130.
      DATA t131 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t131.
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = CAST zlnt_runtime_opti_4ba3bdccd169( t129 ).
      IF t133 IS INITIAL.
        t132 = abap_true.
      ELSEIF t133->has = abap_false.
        t132 = abap_true.
      ENDIF.
      IF t132 = abap_true.
        DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t134.
        t131 = t134.
      ELSE.
        DATA(t135) = VALUE abap_bool( ).
        DATA t136 TYPE string.
        DATA(t137) = CAST zlnt_runtime_opti_4ba3bdccd169( t129 ).
        t136 = t137->value.
        DATA(t138) = |'|.
        DATA(t139) = strlen( t136 ).
        DATA t140 TYPE i.
        DATA(t141) = VALUE i( ).
        DATA(t142) = VALUE string( ).
        t140 = strlen( t138 ).
        IF t140 = 0.
          t135 = abap_true.
        ELSEIF t140 <= t139.
          t141 = 0.
          t142 = t136+t141(t140).
          IF t142 = t138.
            t135 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t143) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t143->has = abap_true.
        t143->value = t135.
        t131 = t143.
      ENDIF.
      t128 = t131.
      IF t128 IS BOUND.
        IF t128->has = abap_true.
          t127 = xsdbool( t128->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t126 = t127.
      IF t127 = abap_true.
        DATA(t144) = VALUE abap_bool( ).
        DATA(t145) = CAST zlnt_runtime_opti_4ba3bdccd169( t57 ).
        IF t145 IS BOUND.
          IF t145->has = abap_true.
            t144 = xsdbool( strlen( t145->value ) > 0 ).
          ENDIF.
        ENDIF.
        t126 = t144.
      ENDIF.
      IF t126 = abap_true.
        DATA(t146) = VALUE string( ).
        DATA(t147) = VALUE string( ).
        DATA(t148) = VALUE string( ).
        DATA t149 TYPE string.
        DATA(t150) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
        t149 = t150->value.
        DATA(t151) = 1.
        DATA t152 TYPE i.
        DATA t153 TYPE i.
        DATA t154 TYPE string.
        DATA(t155) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
        t154 = t155->value.
        DATA(t156) = strlen( t154 ).
        t153 = t156.
        DATA(t157) = 1.
        t152 = t153 - t157.
        DATA(t158) = strlen( t149 ).
        t151 = COND i( WHEN t151 < 0 THEN 0 WHEN t151 > t158 THEN t158 ELSE t151 ).
        t152 = COND i( WHEN t152 < 0 THEN 0 WHEN t152 > t158 THEN t158 ELSE t152 ).
        IF t151 > t152.
          t158 = t151.
          t151 = t152.
          t152 = t158.
        ENDIF.
        t158 = t152 - t151.
        t148 = t149+t151(t158).
        DATA(t159) = strlen( t148 ).
        t147 = t148.
        IF t147 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t147 TO UPPER CASE.
        ELSE.
          t147 = zlnt_runtime_uppe_91169605024d=>full( t147 ).
        ENDIF.
        t146 = t147.
        DATA t160 TYPE REF TO zif_lnt_msag_references.
        DATA t161 TYPE REF TO zcl_lnt_current_scope.
        DATA t162 TYPE REF TO zcl_lnt_current_scope.
        DATA(t163) = CAST zcl_lnt_syntax_input( t2 ).
        t162 = t163->scope.
        t161 = t162.
        DATA t164 TYPE REF TO zif_lnt_msag_references.
        DATA t165 TYPE REF TO zif_lnt_registry.
        DATA(t166) = CAST zcl_lnt_current_scope( t161 ).
        t165 = t166->reg.
        t164 = t165->get_msag_references( ).
        t160 = t164.
        DATA t167 TYPE string.
        DATA(t168) = CAST zcl_lnt_syntax_input( t2 ).
        t167 = t168->filename.
        DATA t169 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t170) = CAST zcl_lnt_expression_node( t1 ).
        t169 = t170->get_first_token( ).
        DATA(t171) = t146.
        DATA t172 TYPE string.
        DATA(t173) = CAST zlnt_runtime_opti_4ba3bdccd169( t57 ).
        t172 = t173->value.
        t160->add_using( i_filename = t167 i_token = t169 i_message_class = t171 i_number = t172 ).
      ENDIF.
    ELSE.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t175.
      DATA t176 TYPE REF TO zcl_lnt_expression_node.
      DATA t177 TYPE REF TO zcl_lnt_expression_node.
      DATA(t178) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t179) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c ).
      t177 = t178->find_direct_expression( i_type_9913 = t179 ).
      t176 = t177.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t180.
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = CAST zcl_lnt_expression_node( t176 ).
      IF t182 IS INITIAL.
        t181 = abap_true.
      ENDIF.
      IF t181 = abap_true.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        t180 = t183.
      ELSE.
        DATA t184 TYPE string.
        DATA t185 TYPE REF TO zcl_lnt_expression_node.
        DATA(t186) = CAST zcl_lnt_expression_node( t176 ).
        t185 = t186.
        t184 = t185->concat_tokens( ).
        DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t187->has = abap_true.
        t187->value = t184.
        t180 = t187.
      ENDIF.
      t175 = t180.
      t174 = t175.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t189.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t191) = CAST zlnt_runtime_opti_4ba3bdccd169( t174 ).
      t190 = t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      DATA(t193) = VALUE abap_bool( ).
      DATA(t194) = CAST zlnt_runtime_opti_4ba3bdccd169( t190 ).
      IF t194 IS INITIAL.
        t193 = abap_true.
      ELSEIF t194->has = abap_false.
        t193 = abap_true.
      ENDIF.
      IF t193 = abap_true.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        t192 = t195.
      ELSE.
        DATA(t196) = VALUE string( ).
        DATA t197 TYPE string.
        DATA t198 TYPE string.
        DATA(t199) = CAST zlnt_runtime_opti_4ba3bdccd169( t190 ).
        t198 = t199->value.
        t197 = t198.
        DATA(t200) = VALUE string( ).
        DATA(t201) = t197.
        DATA(t202) = 1.
        DATA t203 TYPE i.
        DATA(t204) = t197.
        DATA(t205) = strlen( t204 ).
        t203 = t205.
        DATA(t206) = strlen( t201 ).
        t202 = COND i( WHEN t202 < 0 THEN 0 WHEN t202 > t206 THEN t206 ELSE t202 ).
        t203 = COND i( WHEN t203 < 0 THEN 0 WHEN t203 > t206 THEN t206 ELSE t203 ).
        IF t202 > t203.
          t206 = t202.
          t202 = t203.
          t203 = t206.
        ENDIF.
        t206 = t203 - t202.
        t200 = t201+t202(t206).
        t196 = t200.
        DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t207->has = abap_true.
        t207->value = t196.
        t192 = t207.
      ENDIF.
      t189 = t192.
      t188 = t189.
      DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t209.
      DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t210.
      DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t211.
      DATA t212 TYPE REF TO zcl_lnt_expression_node.
      DATA t213 TYPE REF TO zcl_lnt_expression_node.
      DATA(t214) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t215) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d209_c21e0d8a3b4e ).
      t213 = t214->find_direct_expression( i_type_9913 = t215 ).
      t212 = t213.
      DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t216.
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = CAST zcl_lnt_expression_node( t212 ).
      IF t218 IS INITIAL.
        t217 = abap_true.
      ENDIF.
      IF t217 = abap_true.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        t216 = t219.
      ELSE.
        DATA t220 TYPE string.
        DATA t221 TYPE REF TO zcl_lnt_expression_node.
        DATA(t222) = CAST zcl_lnt_expression_node( t212 ).
        t221 = t222.
        t220 = t221->concat_tokens( ).
        DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t223->has = abap_true.
        t223->value = t220.
        t216 = t223.
      ENDIF.
      t211 = t216.
      t210 = t211.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA(t225) = VALUE abap_bool( ).
      DATA(t226) = CAST zlnt_runtime_opti_4ba3bdccd169( t210 ).
      IF t226 IS INITIAL.
        t225 = abap_true.
      ELSEIF t226->has = abap_false.
        t225 = abap_true.
      ENDIF.
      IF t225 = abap_true.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        t224 = t227.
      ELSE.
        DATA t228 TYPE string.
        DATA t229 TYPE string.
        DATA(t230) = CAST zlnt_runtime_opti_4ba3bdccd169( t210 ).
        t229 = t230->value.
        DATA(t231) = strlen( t229 ).
        t228 = t229.
        IF t228 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t228 TO UPPER CASE.
        ELSE.
          t228 = zlnt_runtime_uppe_91169605024d=>full( t228 ).
        ENDIF.
        DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t232->has = abap_true.
        t232->value = t228.
        t224 = t232.
      ENDIF.
      t209 = t224.
      t208 = t209.
      DATA(t233) = VALUE abap_bool( ).
      DATA(t234) = VALUE abap_bool( ).
      DATA(t235) = CAST zlnt_runtime_opti_4ba3bdccd169( t188 ).
      IF t235 IS BOUND.
        IF t235->has = abap_true.
          t234 = xsdbool( strlen( t235->value ) > 0 ).
        ENDIF.
      ENDIF.
      t233 = t234.
      IF t234 = abap_true.
        DATA(t236) = VALUE abap_bool( ).
        DATA(t237) = CAST zlnt_runtime_opti_4ba3bdccd169( t208 ).
        IF t237 IS BOUND.
          IF t237->has = abap_true.
            t236 = xsdbool( strlen( t237->value ) > 0 ).
          ENDIF.
        ENDIF.
        t233 = t236.
      ENDIF.
      IF t233 = abap_true.
        DATA t238 TYPE REF TO zif_lnt_msag_references.
        DATA t239 TYPE REF TO zcl_lnt_current_scope.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
        t240 = t241->scope.
        t239 = t240.
        DATA t242 TYPE REF TO zif_lnt_msag_references.
        DATA t243 TYPE REF TO zif_lnt_registry.
        DATA(t244) = CAST zcl_lnt_current_scope( t239 ).
        t243 = t244->reg.
        t242 = t243->get_msag_references( ).
        t238 = t242.
        DATA t245 TYPE string.
        DATA(t246) = CAST zcl_lnt_syntax_input( t2 ).
        t245 = t246->filename.
        DATA t247 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t248) = CAST zcl_lnt_expression_node( t1 ).
        t247 = t248->get_first_token( ).
        DATA t249 TYPE string.
        DATA(t250) = CAST zlnt_runtime_opti_4ba3bdccd169( t208 ).
        t249 = t250->value.
        DATA t251 TYPE string.
        DATA(t252) = CAST zlnt_runtime_opti_4ba3bdccd169( t188 ).
        t251 = t252->value.
        t238->add_using( i_filename = t245 i_token = t247 i_message_class = t249 i_number = t251 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d795_e406b9e872b1.
  ENDMETHOD.
ENDCLASS.
