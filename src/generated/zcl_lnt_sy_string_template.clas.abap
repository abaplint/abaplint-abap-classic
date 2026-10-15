* TS: src/abap/5_syntax/expressions/string_template.ts:10:1 StringTemplate
CLASS zcl_lnt_sy_string_template DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS validate_escape_sequences IMPORTING i_str TYPE string i_input_967e TYPE REF TO zcl_lnt_syntax_input i_node TYPE REF TO zcl_lnt_token_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_string_template IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_type_utils.
    DATA t4 TYPE REF TO zcl_lnt_type_utils.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = t2.
    t5 = t6->scope.
    t4 = NEW zcl_lnt_type_utils( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_string_type.
    DATA t8 TYPE REF TO zcl_lnt_string_type.
    DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t9.
    t8 = zcl_lnt_string_type=>get_db65( i_input_967e = t9 ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t12.
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t10->load( ).
      IF t18 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t10->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t16.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_expression_node ).
      t21 = t22.
      IF t22 = abap_true.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE REF TO zif_lnt_statement_runnable.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA(t27) = t16.
        DATA t28 TYPE REF TO object.
        t28 = t27.
        t26 ?= t28.
        t25 = t26->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_string_template_source ).
        t21 = t24.
      ENDIF.
      IF t21 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        DATA(t32) = t16.
        DATA t33 TYPE REF TO object.
        t33 = t32.
        t31 ?= t33.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t30 = t31->find_direct_expression( i_type_9913 = t34 ).
        t29 = t30.
        DATA t35 TYPE REF TO zcl_lnt_abstract_type.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t37) = t29.
        DATA(t38) = t2.
        DATA(t39) = t7.
        DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t42.
        t36 = zcl_lnt_sy_source=>run_syntax( i_node = t37 i_input_967e = t38 i_target_type = t39 i_write_reference = t40 i_allow_generic_deference = t41 i_read_reference = t42 ).
        t35 = t36.
        DATA(t43) = VALUE abap_bool( ).
        DATA t44 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t45) = t35.
        t44 = t45.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        t46 = t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = t44.
        IF t49 IS INITIAL.
          t48 = abap_true.
        ENDIF.
        t43 = t48.
        IF t43 = abap_true.
          DATA t50 TYPE string.
          DATA(t51) = |No target type determined|.
          t50 = t51.
          DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t53) = t2.
          t52 = t53->issues.
          DATA t54 TYPE REF TO zcl_lnt_issue.
          DATA(t55) = t2.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t57) = t1.
          t56 = t57->get_first_token( ).
          DATA(t58) = t50.
          DATA t59 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t59.
          t54 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t55 i_token = t56 i_message_26cb = t58 i_fix = t59 ).
          t52->load( ).
          APPEND t54 TO t52->items.
          t52->save( ).
          DATA t60 TYPE REF TO zcl_lnt_void_type.
          CLEAR t60.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t61.
          DATA(t62) = abap_true.
          IF t62 = abap_true.
            DATA(t63) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t64->has = abap_true.
            t64->value = t63.
            t61 = t64.
          ELSE.
            DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t65.
            t61 = t65.
          ENDIF.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          t60 = zcl_lnt_void_type=>get_db65( i_voided = t61 i_qualified_name = t66 ).
          result = t60.
          RETURN.
        ELSE.
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = t3.
          DATA t73 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t73.
          DATA(t74) = abap_true.
          IF t74 = abap_true.
            DATA t75 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t76) = t35.
            t75 = t76.
            t73 = t75.
          ELSE.
            DATA t77 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t77.
            t73 = t77.
          ENDIF.
          t71 = t72->is_char_like( i_type_9913 = t73 ).
          DATA(t78) = abap_false.
          t70 = xsdbool( t71 = t78 ).
          t69 = t70.
          IF t70 = abap_true.
            DATA(t79) = VALUE abap_bool( ).
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = t3.
            DATA t82 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t82.
            DATA(t83) = abap_true.
            IF t83 = abap_true.
              DATA t84 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t85) = t35.
              t84 = t85.
              t82 = t84.
            ELSE.
              DATA t86 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t86.
              t82 = t86.
            ENDIF.
            t80 = t81->is_hex_like( i_type_9913 = t82 ).
            DATA(t87) = abap_false.
            t79 = xsdbool( t80 = t87 ).
            t69 = t79.
          ENDIF.
          t68 = t69.
          IF t69 = abap_true.
            DATA t88 TYPE abap_bool.
            DATA t89 TYPE abap_bool.
            DATA(t90) = t35.
            t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_utc_long_type ).
            t88 = xsdbool( t89 = abap_false ).
            t68 = t88.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA t91 TYPE abap_bool.
            DATA(t92) = t35.
            t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_structure_type ).
            t67 = t91.
          ENDIF.
          IF t67 = abap_true.
            DATA t93 TYPE string.
            DATA t94 TYPE string.
            DATA(t95) = |String template, not character like, |.
            DATA t96 TYPE string.
            DATA t97 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA t98 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t99) = t35.
            t98 = t99.
            t97 = t98->zlnt_builtin_clas_3f891b097658( ).
            t96 = t97->name.
            DATA(t100) = strlen( t95 ).
            t94 = |{ t95 }{ t96 }|.
            t93 = t94.
            DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t102) = t2.
            t101 = t102->issues.
            DATA t103 TYPE REF TO zcl_lnt_issue.
            DATA(t104) = t2.
            DATA t105 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t106) = t1.
            t105 = t106->get_first_token( ).
            DATA(t107) = t93.
            DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t108.
            t103 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t104 i_token = t105 i_message_26cb = t107 i_fix = t108 ).
            t101->load( ).
            APPEND t103 TO t101->items.
            t101->save( ).
            DATA t109 TYPE REF TO zcl_lnt_void_type.
            CLEAR t109.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            DATA(t111) = abap_true.
            IF t111 = abap_true.
              DATA(t112) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t113->has = abap_true.
              t113->value = t112.
              t110 = t113.
            ELSE.
              DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t114.
              t110 = t114.
            ENDIF.
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            t109 = zcl_lnt_void_type=>get_db65( i_voided = t110 i_qualified_name = t115 ).
            result = t109.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t116 TYPE REF TO zcl_lnt_expression_node.
        DATA t117 TYPE REF TO zcl_lnt_expression_node.
        DATA t118 TYPE REF TO zcl_lnt_expression_node.
        DATA(t119) = t16.
        DATA t120 TYPE REF TO object.
        t120 = t119.
        t118 ?= t120.
        DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d347_94341124f92e.
        t117 = t118->find_direct_expression( i_type_9913 = t121 ).
        t116 = t117.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t124 TYPE REF TO zcl_lnt_expression_node.
        DATA(t125) = t116.
        t124 = t125.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        DATA(t127) = VALUE abap_bool( ).
        DATA(t128) = t124.
        IF t128 IS INITIAL.
          t127 = abap_true.
        ENDIF.
        IF t127 = abap_true.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          t126 = t129.
        ELSE.
          DATA t130 TYPE string.
          DATA t131 TYPE REF TO zcl_lnt_expression_node.
          DATA(t132) = t124.
          t131 = t132.
          t130 = t131->concat_tokens( ).
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t130.
          t126 = t133.
        ENDIF.
        t123 = t126.
        t122 = t123.
        DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t136.
        DATA t137 TYPE REF TO zcl_lnt_expression_node.
        DATA(t138) = t116.
        t137 = t138.
        DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t139.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = t137.
        IF t141 IS INITIAL.
          t140 = abap_true.
        ENDIF.
        IF t140 = abap_true.
          DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t142.
          t139 = t142.
        ELSE.
          DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t144 TYPE REF TO zcl_lnt_expression_node.
          DATA(t145) = t137.
          t144 = t145.
          DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
          t143 = t144->find_all_expressions( i_type_9913 = t146 ).
          t139 = t143.
        ENDIF.
        t136 = t139.
        t135 = t136.
        DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t147.
        DATA t148 TYPE abap_bool.
        DATA(t149) = t135.
        t148 = xsdbool( t149 IS BOUND ).
        IF t148 = abap_true.
          DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t151) = t135.
          t150 = t151.
          t147 = t150.
        ELSE.
          DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t152.
          t147 = t152.
        ENDIF.
        t134 = t147.
        DATA t153 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t153.
        DATA t154 TYPE REF TO object.
        CLEAR t154.
        DATA(t155) = VALUE i( ).
        DO.
          t134->load( ).
          IF t155 >= lines( t134->items ).
            EXIT.
          ENDIF.
          CLEAR t154.
          READ TABLE t134->items INDEX t155 + 1 INTO t154.
          t155 = t155 + 1.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          CLEAR t153.
          IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t156 ?= t154.
            DATA t157 TYPE REF TO object.
            t157 = t156->as_ref( ).
            t153 ?= t157.
          ELSE.
            t153 ?= t154.
          ENDIF.
          DATA t158 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t158.
          DATA t159 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t159.
          DATA(t160) = abap_true.
          IF t160 = abap_true.
            DATA(t161) = t153.
            t159 = t161.
          ELSE.
            DATA t162 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t162.
            t159 = t162.
          ENDIF.
          DATA(t163) = t2.
          DATA t164 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t165.
          DATA t166 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t166.
          DATA t167 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t167.
          t158 = zcl_lnt_sy_source=>run_syntax( i_node = t159 i_input_967e = t163 i_target_type = t164 i_write_reference = t165 i_allow_generic_deference = t166 i_read_reference = t167 ).
        ENDDO.
        DATA(t168) = VALUE abap_bool( ).
        DATA(t169) = VALUE abap_bool( ).
        DATA(t170) = VALUE abap_bool( ).
        DATA(t171) = VALUE abap_bool( ).
        DATA(t172) = VALUE abap_bool( ).
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = VALUE abap_bool( ).
        DATA(t175) = VALUE abap_bool( ).
        DATA t176 TYPE abap_bool.
        DATA t177 TYPE abap_bool.
        DATA(t178) = t116.
        t177 = xsdbool( t178 IS BOUND ).
        t176 = t177.
        IF t177 = abap_true.
          DATA(t179) = VALUE abap_bool( ).
          DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t180.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t182) = t122.
          t181 = t182.
          DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = t181.
          IF t185 IS INITIAL.
            t184 = abap_true.
          ELSEIF t185->has = abap_false.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t186.
            t183 = t186.
          ELSE.
            DATA(t187) = VALUE abap_bool( ).
            DATA(t188) = VALUE i( ).
            DATA t189 TYPE string.
            DATA(t190) = t181.
            t189 = t190->value.
            DATA(t191) = |ALPHA = |.
            DATA(t192) = strlen( t189 ).
            IF t191 IS INITIAL.
              t188 = 0.
            ELSE.
              FIND t191 IN t189 MATCH OFFSET t188.
              IF sy-subrc <> 0.
                t188 = -1.
              ENDIF.
            ENDIF.
            DATA(t193) = 0.
            t187 = xsdbool( t188 >= t193 ).
            DATA(t194) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t194->has = abap_true.
            t194->value = t187.
            t183 = t194.
          ENDIF.
          t180 = t183.
          IF t180 IS BOUND.
            IF t180->has = abap_true.
              t179 = xsdbool( t180->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t176 = t179.
        ENDIF.
        t175 = t176.
        IF t176 = abap_true.
          DATA t195 TYPE abap_bool.
          DATA t196 TYPE abap_bool.
          DATA(t197) = t35.
          t196 = xsdbool( t197 IS BOUND AND t197 IS INSTANCE OF zcl_lnt_unknown_type ).
          t195 = xsdbool( t196 = abap_false ).
          t175 = t195.
        ENDIF.
        t174 = t175.
        IF t175 = abap_true.
          DATA t198 TYPE abap_bool.
          DATA t199 TYPE abap_bool.
          DATA(t200) = t35.
          t199 = xsdbool( t200 IS BOUND AND t200 IS INSTANCE OF zcl_lnt_void_type ).
          t198 = xsdbool( t199 = abap_false ).
          t174 = t198.
        ENDIF.
        t173 = t174.
        IF t174 = abap_true.
          DATA t201 TYPE abap_bool.
          DATA t202 TYPE abap_bool.
          DATA(t203) = t35.
          t202 = xsdbool( t203 IS BOUND AND t203 IS INSTANCE OF zcl_lnt_string_type ).
          t201 = xsdbool( t202 = abap_false ).
          t173 = t201.
        ENDIF.
        t172 = t173.
        IF t173 = abap_true.
          DATA t204 TYPE abap_bool.
          DATA t205 TYPE abap_bool.
          DATA(t206) = t35.
          t205 = xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_c_like_type ).
          t204 = xsdbool( t205 = abap_false ).
          t172 = t204.
        ENDIF.
        t171 = t172.
        IF t172 = abap_true.
          DATA t207 TYPE abap_bool.
          DATA t208 TYPE abap_bool.
          DATA(t209) = t35.
          t208 = xsdbool( t209 IS BOUND AND t209 IS INSTANCE OF zcl_lnt_character_type ).
          t207 = xsdbool( t208 = abap_false ).
          t171 = t207.
        ENDIF.
        t170 = t171.
        IF t171 = abap_true.
          DATA t210 TYPE abap_bool.
          DATA t211 TYPE abap_bool.
          DATA(t212) = t35.
          t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
          t210 = xsdbool( t211 = abap_false ).
          t170 = t210.
        ENDIF.
        t169 = t170.
        IF t170 = abap_true.
          DATA t213 TYPE abap_bool.
          DATA t214 TYPE abap_bool.
          DATA(t215) = t35.
          t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_numeric_type ).
          t213 = xsdbool( t214 = abap_false ).
          t169 = t213.
        ENDIF.
        t168 = t169.
        IF t169 = abap_true.
          DATA t216 TYPE abap_bool.
          DATA t217 TYPE abap_bool.
          DATA(t218) = t35.
          t217 = xsdbool( t218 IS BOUND AND t218 IS INSTANCE OF zcl_lnt_any_type ).
          t216 = xsdbool( t217 = abap_false ).
          t168 = t216.
        ENDIF.
        IF t168 = abap_true.
          DATA t219 TYPE string.
          DATA t220 TYPE string.
          DATA t221 TYPE string.
          DATA(t222) = |Cannot apply ALPHA to this type (|.
          DATA t223 TYPE string.
          DATA t224 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t225 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t226) = t35.
          t225 = t226.
          t224 = t225->zlnt_builtin_clas_3f891b097658( ).
          t223 = t224->name.
          DATA(t227) = strlen( t222 ).
          t221 = |{ t222 }{ t223 }|.
          DATA(t228) = |)|.
          DATA(t229) = strlen( t221 ).
          t220 = |{ t221 }{ t228 }|.
          t219 = t220.
          DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t231) = t2.
          t230 = t231->issues.
          DATA t232 TYPE REF TO zcl_lnt_issue.
          DATA(t233) = t2.
          DATA t234 TYPE REF TO zcl_lnt_abstract_token.
          DATA t235 TYPE REF TO zcl_lnt_expression_node.
          DATA(t236) = t116.
          t235 = t236.
          t234 = t235->get_first_token( ).
          DATA(t237) = t219.
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t238.
          t232 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t233 i_token = t234 i_message_26cb = t237 i_fix = t238 ).
          t230->load( ).
          APPEND t232 TO t230->items.
          t230->save( ).
          DATA t239 TYPE REF TO zcl_lnt_void_type.
          CLEAR t239.
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t240.
          DATA(t241) = abap_true.
          IF t241 = abap_true.
            DATA(t242) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t243->has = abap_true.
            t243->value = t242.
            t240 = t243.
          ELSE.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            t240 = t244.
          ENDIF.
          DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t245.
          t239 = zcl_lnt_void_type=>get_db65( i_voided = t240 i_qualified_name = t245 ).
          result = t239.
          RETURN.
        ENDIF.
      ELSE.
        DATA t246 TYPE abap_bool.
        DATA(t247) = t16.
        t246 = xsdbool( t247 IS BOUND AND t247 IS INSTANCE OF zcl_lnt_token_node ).
        IF t246 = abap_true.
          DATA t248 TYPE REF TO zcl_lnt_abstract_token.
          DATA t249 TYPE REF TO zcl_lnt_abstract_token.
          DATA t250 TYPE REF TO zcl_lnt_token_node.
          DATA(t251) = t16.
          DATA t252 TYPE REF TO object.
          t252 = t251.
          t250 ?= t252.
          t249 = t250->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t248 = t249.
          DATA(t253) = VALUE abap_bool( ).
          DATA(t254) = VALUE abap_bool( ).
          DATA t255 TYPE abap_bool.
          DATA t256 TYPE abap_bool.
          DATA(t257) = t248.
          t256 = xsdbool( t257 IS BOUND AND t257 IS INSTANCE OF zcl_lnt_lx_string_template ).
          t255 = t256.
          IF t256 = abap_false.
            DATA t258 TYPE abap_bool.
            DATA(t259) = t248.
            t258 = xsdbool( t259 IS BOUND AND t259 IS INSTANCE OF zcl_lnt_string_template_begin ).
            t255 = t258.
          ENDIF.
          t254 = t255.
          IF t255 = abap_false.
            DATA t260 TYPE abap_bool.
            DATA(t261) = t248.
            t260 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_string_template_middle ).
            t254 = t260.
          ENDIF.
          t253 = t254.
          IF t254 = abap_false.
            DATA t262 TYPE abap_bool.
            DATA(t263) = t248.
            t262 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_string_template_end ).
            t253 = t262.
          ENDIF.
          IF t253 = abap_true.
            DATA t264 TYPE REF TO zcl_lnt_issue.
            DATA t265 TYPE REF TO zcl_lnt_issue.
            DATA t266 TYPE string.
            DATA t267 TYPE REF TO zif_lnt_union_a14e6efb.
            DATA(t268) = t248.
            t267 ?= t268.
            t266 = t267->get_str( ).
            DATA(t269) = t2.
            DATA t270 TYPE REF TO zcl_lnt_token_node.
            DATA(t271) = t16.
            DATA t272 TYPE REF TO object.
            t272 = t271.
            t270 ?= t272.
            t265 = zcl_lnt_sy_string_template=>validate_escape_sequences( i_str = t266 i_input_967e = t269 i_node = t270 ).
            t264 = t265.
            DATA t273 TYPE abap_bool.
            DATA(t274) = t264.
            t273 = xsdbool( t274 IS BOUND ).
            IF t273 = abap_true.
              DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t276) = t2.
              t275 = t276->issues.
              DATA t277 TYPE REF TO zcl_lnt_issue.
              DATA(t278) = t264.
              t277 = t278.
              t275->load( ).
              APPEND t277 TO t275->items.
              t275->save( ).
              DATA t279 TYPE REF TO zcl_lnt_void_type.
              CLEAR t279.
              DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t280.
              DATA(t281) = abap_true.
              IF t281 = abap_true.
                DATA(t282) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t283->has = abap_true.
                t283->value = t282.
                t280 = t283.
              ELSE.
                DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t284.
                t280 = t284.
              ENDIF.
              DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t285.
              t279 = zcl_lnt_void_type=>get_db65( i_voided = t280 i_qualified_name = t285 ).
              result = t279.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t286) = t7.
    result = t286.

  ENDMETHOD.

  METHOD validate_escape_sequences.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_str.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_node.
    DATA t4 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t5) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t7) = t4.
    DATA(t8) = `\|`.
    t6 = t7->add( p0 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t10) = t4.
    DATA(t11) = `\{`.
    t9 = t10->add( p0 = t11 ).
    DATA t12 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t13) = t4.
    DATA(t14) = `\}`.
    t12 = t13->add( p0 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t16) = t4.
    DATA(t17) = `\\`.
    t15 = t16->add( p0 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t19) = t4.
    DATA(t20) = `\n`.
    t18 = t19->add( p0 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t22) = t4.
    DATA(t23) = `\r`.
    t21 = t22->add( p0 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t25) = t4.
    DATA(t26) = `\t`.
    t24 = t25->add( p0 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t28) = t4.
    t27 = t28.
    DATA t29 TYPE int8.
    DATA(t30) = CONV int8( 0 ).
    t29 = t30.
    DO.
      DATA t31 TYPE abap_bool.
      DATA(t32) = t29.
      DATA t33 TYPE int8.
      DATA t34 TYPE i.
      DATA(t35) = t1.
      DATA(t36) = strlen( t35 ).
      t34 = t36.
      t33 = t34.
      t31 = xsdbool( t32 < t33 ).
      IF t31 = abap_false.
        EXIT.
      ENDIF.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA(t39) = t1.
      DATA t40 TYPE i.
      DATA(t41) = t29.
      t40 = t41.
      DATA(t42) = strlen( t39 ).
      IF t40 < 0 OR t40 >= t42.
        CLEAR t38.
      ELSE.
        t38 = NEW #( ).
        t38->has = abap_true.
        t38->value = t39+t40(1).
      ENDIF.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA(t45) = `\`.
        DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t46->has = abap_true.
        t46->value = t45.
        t43 = t46.
      ELSE.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        t43 = t47.
      ENDIF.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE abap_bool( ).
      IF t38 IS BOUND.
        t48 = t38->has.
      ENDIF.
      IF t43 IS BOUND.
        t49 = t43->has.
      ENDIF.
      IF t48 = t49.
        IF t48 = abap_false.
          t37 = abap_true.
        ELSEIF t38->value = t43->value.
          t37 = abap_true.
        ENDIF.
      ENDIF.
      IF t37 = abap_true.
        DATA(t50) = VALUE string( ).
        DATA(t51) = VALUE string( ).
        DATA(t52) = t1.
        DATA t53 TYPE i.
        DATA(t54) = t29.
        t53 = t54.
        DATA(t55) = VALUE i( ).
        DATA t56 TYPE f.
        DATA t57 TYPE int8.
        DATA t58 TYPE int8.
        DATA t59 TYPE i.
        DATA(t60) = t29.
        t59 = t60.
        t58 = t59.
        DATA(t61) = CONV int8( 2 ).
        t57 = t58 + t61.
        t56 = t57.
        IF t56 > range_i32_upper.
          t55 = range_i32_upper.
        ELSEIF t56 < range_i32_lower.
          t55 = range_i32_lower.
        ELSE.
          t55 = trunc( t56 ).
        ENDIF.
        DATA(t62) = strlen( t52 ).
        t53 = COND i( WHEN t53 < 0 THEN 0 WHEN t53 > t62 THEN t62 ELSE t53 ).
        t55 = COND i( WHEN t55 < 0 THEN 0 WHEN t55 > t62 THEN t62 ELSE t55 ).
        IF t53 > t55.
          t62 = t53.
          t53 = t55.
          t55 = t62.
        ENDIF.
        t62 = t55 - t53.
        t51 = t52+t53(t62).
        t50 = t51.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE abap_bool.
        DATA(t65) = t27.
        DATA(t66) = t50.
        t64 = t65->has( p0 = t66 ).
        t63 = xsdbool( t64 = abap_false ).
        IF t63 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_issue.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA t69 TYPE REF TO zcl_lnt_issue.
            DATA(t70) = t2.
            DATA t71 TYPE REF TO zcl_lnt_abstract_token.
            DATA t72 TYPE REF TO zcl_lnt_token_node.
            DATA(t73) = t3.
            t72 = t73.
            DATA t74 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t75) = t72.
            t74 = t75->token.
            t71 = t74.
            DATA t76 TYPE string.
            DATA t77 TYPE string.
            DATA(t78) = |Invalid escape sequence "|.
            DATA(t79) = t50.
            DATA(t80) = strlen( t78 ).
            t77 = |{ t78 }{ t79 }|.
            DATA(t81) = |" in string template|.
            DATA(t82) = strlen( t77 ).
            t76 = |{ t77 }{ t81 }|.
            DATA t83 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t83.
            t69 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t70 i_token = t71 i_message_26cb = t76 i_fix = t83 ).
            t67 = t69.
          ELSE.
            DATA t84 TYPE REF TO zcl_lnt_issue.
            CLEAR t84.
            t67 = t84.
          ENDIF.
          result = t67.
          RETURN.
        ENDIF.
        DATA t85 TYPE int8.
        DATA t86 TYPE i.
        DATA t87 TYPE int8.
        DATA(t88) = t29.
        DATA(t89) = CONV int8( 1 ).
        t87 = t88 + t89.
        t86 = t87.
        t85 = t86.
        t29 = t85.
      ENDIF.
      DATA t90 TYPE int8.
      DATA(t91) = t29.
      DATA(t92) = CONV int8( 1 ).
      t90 = t91 + t92.
      t29 = t90.
    ENDDO.
    DATA t93 TYPE REF TO zcl_lnt_issue.
    CLEAR t93.
    result = t93.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d842_680f91660a76.
  ENDMETHOD.
ENDCLASS.
