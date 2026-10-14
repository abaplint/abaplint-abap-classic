* TS: src/abap/5_syntax/expressions/string_template.ts:10:1 StringTemplate
CLASS zcl_lnt_sy_string_template DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS validate_escape_sequences IMPORTING i_str TYPE string i_input_967e TYPE REF TO zcl_lnt_syntax_input i_node TYPE REF TO zcl_lnt_token_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_string_template IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_type_utils.
    DATA t4 TYPE REF TO zcl_lnt_type_utils.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = CAST zcl_lnt_syntax_input( t2 ).
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
    DATA(t13) = CAST zcl_lnt_expression_node( t1 ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = CAST zcl_lnt_abstract_node( t12 ).
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    LOOP AT t10->items INTO t17.
      t16 ?= t17.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      DATA(t20) = CAST zif_lnt_union_4cf1d054( t16 ).
      t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_expression_node ).
      t18 = t19.
      IF t19 = abap_true.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE REF TO zif_lnt_statement_runnable.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = CAST zif_lnt_union_4cf1d054( t16 ).
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        t22 = t23->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_string_template_source ).
        t18 = t21.
      ENDIF.
      IF t18 = abap_true.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        DATA t28 TYPE REF TO zcl_lnt_expression_node.
        DATA(t29) = CAST zif_lnt_union_4cf1d054( t16 ).
        DATA t30 TYPE REF TO object.
        t30 = t29.
        t28 ?= t30.
        DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
        t27 = t28->find_direct_expression( i_type_9913 = t31 ).
        t26 = t27.
        DATA t32 TYPE REF TO zcl_lnt_abstract_type.
        DATA t33 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t34) = CAST zcl_lnt_expression_node( t26 ).
        DATA(t35) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t36) = CAST zcl_lnt_string_type( t7 ).
        DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t39.
        t33 = zcl_lnt_sy_source=>run_syntax( i_node = t34 i_input_967e = t35 i_target_type = t36 i_write_reference = t37 i_allow_generic_deference = t38 i_read_reference = t39 ).
        t32 = t33.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t42) = CAST zcl_lnt_abstract_type( t32 ).
        t41 = t42.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        t43 = t44.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = CAST zcl_lnt_abstract_type( t41 ).
        IF t46 IS INITIAL.
          t45 = abap_true.
        ENDIF.
        t40 = t45.
        IF t40 = abap_true.
          DATA t47 TYPE string.
          DATA(t48) = |No target type determined|.
          t47 = t48.
          DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t50) = CAST zcl_lnt_syntax_input( t2 ).
          t49 = t50->issues.
          DATA t51 TYPE REF TO zcl_lnt_issue.
          DATA(t52) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t53 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t54) = CAST zcl_lnt_expression_node( t1 ).
          t53 = t54->get_first_token( ).
          DATA(t55) = t47.
          DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t56.
          t51 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t52 i_token = t53 i_message_26cb = t55 i_fix = t56 ).
          APPEND t51 TO t49->items.
          DATA t57 TYPE REF TO zcl_lnt_void_type.
          CLEAR t57.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t58.
          DATA(t59) = abap_true.
          IF t59 = abap_true.
            DATA(t60) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t61->has = abap_true.
            t61->value = t60.
            t58 = t61.
          ELSE.
            DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t62.
            t58 = t62.
          ENDIF.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t57 = zcl_lnt_void_type=>get_db65( i_voided = t58 i_qualified_name = t63 ).
          result = t57.
          RETURN.
        ELSE.
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = CAST zcl_lnt_type_utils( t3 ).
          DATA t70 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t70.
          DATA(t71) = abap_true.
          IF t71 = abap_true.
            DATA t72 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t73) = CAST zcl_lnt_abstract_type( t32 ).
            t72 = t73.
            t70 = t72.
          ELSE.
            DATA t74 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t74.
            t70 = t74.
          ENDIF.
          t68 = t69->is_char_like( i_type_9913 = t70 ).
          DATA(t75) = abap_false.
          t67 = xsdbool( t68 = t75 ).
          t66 = t67.
          IF t67 = abap_true.
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = CAST zcl_lnt_type_utils( t3 ).
            DATA t79 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t79.
            DATA(t80) = abap_true.
            IF t80 = abap_true.
              DATA t81 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t82) = CAST zcl_lnt_abstract_type( t32 ).
              t81 = t82.
              t79 = t81.
            ELSE.
              DATA t83 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t83.
              t79 = t83.
            ENDIF.
            t77 = t78->is_hex_like( i_type_9913 = t79 ).
            DATA(t84) = abap_false.
            t76 = xsdbool( t77 = t84 ).
            t66 = t76.
          ENDIF.
          t65 = t66.
          IF t66 = abap_true.
            DATA t85 TYPE abap_bool.
            DATA t86 TYPE abap_bool.
            DATA(t87) = CAST zcl_lnt_abstract_type( t32 ).
            t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_utc_long_type ).
            t85 = xsdbool( t86 = abap_false ).
            t65 = t85.
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            DATA t88 TYPE abap_bool.
            DATA(t89) = CAST zcl_lnt_abstract_type( t32 ).
            t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_structure_type ).
            t64 = t88.
          ENDIF.
          IF t64 = abap_true.
            DATA t90 TYPE string.
            DATA t91 TYPE string.
            DATA(t92) = |String template, not character like, |.
            DATA t93 TYPE string.
            DATA t94 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA t95 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t96) = CAST zcl_lnt_abstract_type( t32 ).
            t95 = t96.
            t94 = t95->zlnt_builtin_clas_3f891b097658( ).
            t93 = t94->name.
            DATA(t97) = strlen( t92 ).
            t91 = |{ t92 }{ t93 }|.
            t90 = t91.
            DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t99) = CAST zcl_lnt_syntax_input( t2 ).
            t98 = t99->issues.
            DATA t100 TYPE REF TO zcl_lnt_issue.
            DATA(t101) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t102 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t103) = CAST zcl_lnt_expression_node( t1 ).
            t102 = t103->get_first_token( ).
            DATA(t104) = t90.
            DATA t105 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t105.
            t100 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t101 i_token = t102 i_message_26cb = t104 i_fix = t105 ).
            APPEND t100 TO t98->items.
            DATA t106 TYPE REF TO zcl_lnt_void_type.
            CLEAR t106.
            DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t107.
            DATA(t108) = abap_true.
            IF t108 = abap_true.
              DATA(t109) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t110->has = abap_true.
              t110->value = t109.
              t107 = t110.
            ELSE.
              DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t111.
              t107 = t111.
            ENDIF.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            t106 = zcl_lnt_void_type=>get_db65( i_voided = t107 i_qualified_name = t112 ).
            result = t106.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t113 TYPE REF TO zcl_lnt_expression_node.
        DATA t114 TYPE REF TO zcl_lnt_expression_node.
        DATA t115 TYPE REF TO zcl_lnt_expression_node.
        DATA(t116) = CAST zif_lnt_union_4cf1d054( t16 ).
        DATA t117 TYPE REF TO object.
        t117 = t116.
        t115 ?= t117.
        DATA(t118) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d330_a5190e54e774 ).
        t114 = t115->find_direct_expression( i_type_9913 = t118 ).
        t113 = t114.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_expression_node.
        DATA(t122) = CAST zcl_lnt_expression_node( t113 ).
        t121 = t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA(t124) = VALUE abap_bool( ).
        DATA(t125) = CAST zcl_lnt_expression_node( t121 ).
        IF t125 IS INITIAL.
          t124 = abap_true.
        ENDIF.
        IF t124 = abap_true.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          t123 = t126.
        ELSE.
          DATA t127 TYPE string.
          DATA t128 TYPE REF TO zcl_lnt_expression_node.
          DATA(t129) = CAST zcl_lnt_expression_node( t121 ).
          t128 = t129.
          t127 = t128->concat_tokens( ).
          DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t130->has = abap_true.
          t130->value = t127.
          t123 = t130.
        ENDIF.
        t120 = t123.
        t119 = t120.
        DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t132.
        DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t133.
        DATA t134 TYPE REF TO zcl_lnt_expression_node.
        DATA(t135) = CAST zcl_lnt_expression_node( t113 ).
        t134 = t135.
        DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t136.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = CAST zcl_lnt_expression_node( t134 ).
        IF t138 IS INITIAL.
          t137 = abap_true.
        ENDIF.
        IF t137 = abap_true.
          DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t139.
          t136 = t139.
        ELSE.
          DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t141 TYPE REF TO zcl_lnt_expression_node.
          DATA(t142) = CAST zcl_lnt_expression_node( t134 ).
          t141 = t142.
          DATA(t143) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
          t140 = t141->find_all_expressions( i_type_9913 = t143 ).
          t136 = t140.
        ENDIF.
        t133 = t136.
        t132 = t133.
        DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t144.
        DATA t145 TYPE abap_bool.
        DATA(t146) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
        t145 = xsdbool( t146 IS BOUND ).
        IF t145 = abap_true.
          DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t148) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
          t147 = t148.
          t144 = t147.
        ELSE.
          DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t149.
          t144 = t149.
        ENDIF.
        t131 = t144.
        DATA t150 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t150.
        DATA t151 TYPE REF TO object.
        CLEAR t151.
        LOOP AT t131->items INTO t151.
          t150 ?= t151.
          DATA t152 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t153.
          DATA(t154) = abap_true.
          IF t154 = abap_true.
            DATA(t155) = CAST zcl_lnt_expression_node( t150 ).
            t153 = t155.
          ELSE.
            DATA t156 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t156.
            t153 = t156.
          ENDIF.
          DATA(t157) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t158 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t158.
          DATA t159 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t160.
          DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t161.
          t152 = zcl_lnt_sy_source=>run_syntax( i_node = t153 i_input_967e = t157 i_target_type = t158 i_write_reference = t159 i_allow_generic_deference = t160 i_read_reference = t161 ).
        ENDLOOP.
        DATA(t162) = VALUE abap_bool( ).
        DATA(t163) = VALUE abap_bool( ).
        DATA(t164) = VALUE abap_bool( ).
        DATA(t165) = VALUE abap_bool( ).
        DATA(t166) = VALUE abap_bool( ).
        DATA(t167) = VALUE abap_bool( ).
        DATA(t168) = VALUE abap_bool( ).
        DATA(t169) = VALUE abap_bool( ).
        DATA t170 TYPE abap_bool.
        DATA t171 TYPE abap_bool.
        DATA(t172) = CAST zcl_lnt_expression_node( t113 ).
        t171 = xsdbool( t172 IS BOUND ).
        t170 = t171.
        IF t171 = abap_true.
          DATA(t173) = VALUE abap_bool( ).
          DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t174.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t176) = CAST zlnt_runtime_opti_4ba3bdccd169( t119 ).
          t175 = t176.
          DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t177.
          DATA(t178) = VALUE abap_bool( ).
          DATA(t179) = CAST zlnt_runtime_opti_4ba3bdccd169( t175 ).
          IF t179 IS INITIAL.
            t178 = abap_true.
          ELSEIF t179->has = abap_false.
            t178 = abap_true.
          ENDIF.
          IF t178 = abap_true.
            DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t180.
            t177 = t180.
          ELSE.
            DATA(t181) = VALUE abap_bool( ).
            DATA(t182) = VALUE i( ).
            DATA t183 TYPE string.
            DATA(t184) = CAST zlnt_runtime_opti_4ba3bdccd169( t175 ).
            t183 = t184->value.
            DATA(t185) = |ALPHA = |.
            DATA(t186) = strlen( t183 ).
            IF t185 IS INITIAL.
              t182 = 0.
            ELSE.
              FIND t185 IN t183 MATCH OFFSET t182.
              IF sy-subrc <> 0.
                t182 = -1.
              ENDIF.
            ENDIF.
            DATA(t187) = 0.
            t181 = xsdbool( t182 >= t187 ).
            DATA(t188) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t188->has = abap_true.
            t188->value = t181.
            t177 = t188.
          ENDIF.
          t174 = t177.
          IF t174 IS BOUND.
            IF t174->has = abap_true.
              t173 = xsdbool( t174->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t170 = t173.
        ENDIF.
        t169 = t170.
        IF t170 = abap_true.
          DATA t189 TYPE abap_bool.
          DATA t190 TYPE abap_bool.
          DATA(t191) = CAST zcl_lnt_abstract_type( t32 ).
          t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_unknown_type ).
          t189 = xsdbool( t190 = abap_false ).
          t169 = t189.
        ENDIF.
        t168 = t169.
        IF t169 = abap_true.
          DATA t192 TYPE abap_bool.
          DATA t193 TYPE abap_bool.
          DATA(t194) = CAST zcl_lnt_abstract_type( t32 ).
          t193 = xsdbool( t194 IS BOUND AND t194 IS INSTANCE OF zcl_lnt_void_type ).
          t192 = xsdbool( t193 = abap_false ).
          t168 = t192.
        ENDIF.
        t167 = t168.
        IF t168 = abap_true.
          DATA t195 TYPE abap_bool.
          DATA t196 TYPE abap_bool.
          DATA(t197) = CAST zcl_lnt_abstract_type( t32 ).
          t196 = xsdbool( t197 IS BOUND AND t197 IS INSTANCE OF zcl_lnt_string_type ).
          t195 = xsdbool( t196 = abap_false ).
          t167 = t195.
        ENDIF.
        t166 = t167.
        IF t167 = abap_true.
          DATA t198 TYPE abap_bool.
          DATA t199 TYPE abap_bool.
          DATA(t200) = CAST zcl_lnt_abstract_type( t32 ).
          t199 = xsdbool( t200 IS BOUND AND t200 IS INSTANCE OF zcl_lnt_c_like_type ).
          t198 = xsdbool( t199 = abap_false ).
          t166 = t198.
        ENDIF.
        t165 = t166.
        IF t166 = abap_true.
          DATA t201 TYPE abap_bool.
          DATA t202 TYPE abap_bool.
          DATA(t203) = CAST zcl_lnt_abstract_type( t32 ).
          t202 = xsdbool( t203 IS BOUND AND t203 IS INSTANCE OF zcl_lnt_character_type ).
          t201 = xsdbool( t202 = abap_false ).
          t165 = t201.
        ENDIF.
        t164 = t165.
        IF t165 = abap_true.
          DATA t204 TYPE abap_bool.
          DATA t205 TYPE abap_bool.
          DATA(t206) = CAST zcl_lnt_abstract_type( t32 ).
          t205 = xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
          t204 = xsdbool( t205 = abap_false ).
          t164 = t204.
        ENDIF.
        t163 = t164.
        IF t164 = abap_true.
          DATA t207 TYPE abap_bool.
          DATA t208 TYPE abap_bool.
          DATA(t209) = CAST zcl_lnt_abstract_type( t32 ).
          t208 = xsdbool( t209 IS BOUND AND t209 IS INSTANCE OF zcl_lnt_numeric_type ).
          t207 = xsdbool( t208 = abap_false ).
          t163 = t207.
        ENDIF.
        t162 = t163.
        IF t163 = abap_true.
          DATA t210 TYPE abap_bool.
          DATA t211 TYPE abap_bool.
          DATA(t212) = CAST zcl_lnt_abstract_type( t32 ).
          t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_any_type ).
          t210 = xsdbool( t211 = abap_false ).
          t162 = t210.
        ENDIF.
        IF t162 = abap_true.
          DATA t213 TYPE string.
          DATA t214 TYPE string.
          DATA t215 TYPE string.
          DATA(t216) = |Cannot apply ALPHA to this type (|.
          DATA t217 TYPE string.
          DATA t218 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t219 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t220) = CAST zcl_lnt_abstract_type( t32 ).
          t219 = t220.
          t218 = t219->zlnt_builtin_clas_3f891b097658( ).
          t217 = t218->name.
          DATA(t221) = strlen( t216 ).
          t215 = |{ t216 }{ t217 }|.
          DATA(t222) = |)|.
          DATA(t223) = strlen( t215 ).
          t214 = |{ t215 }{ t222 }|.
          t213 = t214.
          DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t225) = CAST zcl_lnt_syntax_input( t2 ).
          t224 = t225->issues.
          DATA t226 TYPE REF TO zcl_lnt_issue.
          DATA(t227) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t228 TYPE REF TO zcl_lnt_abstract_token.
          DATA t229 TYPE REF TO zcl_lnt_expression_node.
          DATA(t230) = CAST zcl_lnt_expression_node( t113 ).
          t229 = t230.
          t228 = t229->get_first_token( ).
          DATA(t231) = t213.
          DATA t232 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t232.
          t226 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t227 i_token = t228 i_message_26cb = t231 i_fix = t232 ).
          APPEND t226 TO t224->items.
          DATA t233 TYPE REF TO zcl_lnt_void_type.
          CLEAR t233.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          DATA(t235) = abap_true.
          IF t235 = abap_true.
            DATA(t236) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t237->has = abap_true.
            t237->value = t236.
            t234 = t237.
          ELSE.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            t234 = t238.
          ENDIF.
          DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t239.
          t233 = zcl_lnt_void_type=>get_db65( i_voided = t234 i_qualified_name = t239 ).
          result = t233.
          RETURN.
        ENDIF.
      ELSE.
        DATA t240 TYPE abap_bool.
        DATA(t241) = CAST zif_lnt_union_4cf1d054( t16 ).
        t240 = xsdbool( t241 IS BOUND AND t241 IS INSTANCE OF zcl_lnt_token_node ).
        IF t240 = abap_true.
          DATA t242 TYPE REF TO zcl_lnt_abstract_token.
          DATA t243 TYPE REF TO zcl_lnt_abstract_token.
          DATA t244 TYPE REF TO zcl_lnt_token_node.
          DATA(t245) = CAST zif_lnt_union_4cf1d054( t16 ).
          DATA t246 TYPE REF TO object.
          t246 = t245.
          t244 ?= t246.
          t243 = t244->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t242 = t243.
          DATA(t247) = VALUE abap_bool( ).
          DATA(t248) = VALUE abap_bool( ).
          DATA t249 TYPE abap_bool.
          DATA t250 TYPE abap_bool.
          DATA(t251) = CAST zcl_lnt_abstract_token( t242 ).
          t250 = xsdbool( t251 IS BOUND AND t251 IS INSTANCE OF zcl_lnt_lx_string_template ).
          t249 = t250.
          IF t250 = abap_false.
            DATA t252 TYPE abap_bool.
            DATA(t253) = CAST zcl_lnt_abstract_token( t242 ).
            t252 = xsdbool( t253 IS BOUND AND t253 IS INSTANCE OF zcl_lnt_string_template_begin ).
            t249 = t252.
          ENDIF.
          t248 = t249.
          IF t249 = abap_false.
            DATA t254 TYPE abap_bool.
            DATA(t255) = CAST zcl_lnt_abstract_token( t242 ).
            t254 = xsdbool( t255 IS BOUND AND t255 IS INSTANCE OF zcl_lnt_string_template_middle ).
            t248 = t254.
          ENDIF.
          t247 = t248.
          IF t248 = abap_false.
            DATA t256 TYPE abap_bool.
            DATA(t257) = CAST zcl_lnt_abstract_token( t242 ).
            t256 = xsdbool( t257 IS BOUND AND t257 IS INSTANCE OF zcl_lnt_string_template_end ).
            t247 = t256.
          ENDIF.
          IF t247 = abap_true.
            DATA t258 TYPE REF TO zcl_lnt_issue.
            DATA t259 TYPE REF TO zcl_lnt_issue.
            DATA t260 TYPE string.
            DATA t261 TYPE REF TO zif_lnt_union_a14e6efb.
            DATA(t262) = CAST zcl_lnt_abstract_token( t242 ).
            t261 ?= t262.
            t260 = t261->get_str( ).
            DATA(t263) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t264 TYPE REF TO zcl_lnt_token_node.
            DATA(t265) = CAST zif_lnt_union_4cf1d054( t16 ).
            DATA t266 TYPE REF TO object.
            t266 = t265.
            t264 ?= t266.
            t259 = zcl_lnt_sy_string_template=>validate_escape_sequences( i_str = t260 i_input_967e = t263 i_node = t264 ).
            t258 = t259.
            DATA t267 TYPE abap_bool.
            DATA(t268) = CAST zcl_lnt_issue( t258 ).
            t267 = xsdbool( t268 IS BOUND ).
            IF t267 = abap_true.
              DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t270) = CAST zcl_lnt_syntax_input( t2 ).
              t269 = t270->issues.
              DATA t271 TYPE REF TO zcl_lnt_issue.
              DATA(t272) = CAST zcl_lnt_issue( t258 ).
              t271 = t272.
              APPEND t271 TO t269->items.
              DATA t273 TYPE REF TO zcl_lnt_void_type.
              CLEAR t273.
              DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t274.
              DATA(t275) = abap_true.
              IF t275 = abap_true.
                DATA(t276) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t277) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t277->has = abap_true.
                t277->value = t276.
                t274 = t277.
              ELSE.
                DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t278.
                t274 = t278.
              ENDIF.
              DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t279.
              t273 = zcl_lnt_void_type=>get_db65( i_voided = t274 i_qualified_name = t279 ).
              result = t273.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t280) = CAST zcl_lnt_string_type( t7 ).
    result = t280.

  ENDMETHOD.
  METHOD validate_escape_sequences.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = i_str.
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_token_node( i_node ).
    DATA t4 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t5) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t7) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
    DATA(t8) = `\|`.
    t6 = t7->add( p0 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t10) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
    DATA(t11) = `\{`.
    t9 = t10->add( p0 = t11 ).
    DATA t12 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t13) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
    DATA(t14) = `\}`.
    t12 = t13->add( p0 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t16) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
    DATA(t17) = `\\`.
    t15 = t16->add( p0 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t19) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
    DATA(t20) = `\n`.
    t18 = t19->add( p0 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t22) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
    DATA(t23) = `\r`.
    t21 = t22->add( p0 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t25) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
    DATA(t26) = `\t`.
    t24 = t25->add( p0 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t28) = CAST zlnt_runtime_set__1827558fd4c7( t4 ).
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
        DATA t56 TYPE int8.
        DATA t57 TYPE int8.
        DATA t58 TYPE i.
        DATA(t59) = t29.
        t58 = t59.
        t57 = t58.
        DATA(t60) = CONV int8( 2 ).
        t56 = t57 + t60.
        IF t56 < range_int8_bound_min OR t56 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        IF t56 < range_int_check_lo_nzik0zk OR t56 > range_int_check_hi_zik0zj.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t55 = t56.
        DATA(t61) = strlen( t52 ).
        t53 = COND i( WHEN t53 < 0 THEN 0 WHEN t53 > t61 THEN t61 ELSE t53 ).
        t55 = COND i( WHEN t55 < 0 THEN 0 WHEN t55 > t61 THEN t61 ELSE t55 ).
        IF t53 > t55.
          t61 = t53.
          t53 = t55.
          t55 = t61.
        ENDIF.
        t61 = t55 - t53.
        t51 = t52+t53(t61).
        t50 = t51.
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA(t64) = CAST zlnt_runtime_set__1827558fd4c7( t27 ).
        DATA(t65) = t50.
        t63 = t64->has( p0 = t65 ).
        t62 = xsdbool( t63 = abap_false ).
        IF t62 = abap_true.
          DATA t66 TYPE REF TO zcl_lnt_issue.
          CLEAR t66.
          DATA(t67) = abap_true.
          IF t67 = abap_true.
            DATA t68 TYPE REF TO zcl_lnt_issue.
            DATA(t69) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t70 TYPE REF TO zcl_lnt_abstract_token.
            DATA t71 TYPE REF TO zcl_lnt_token_node.
            DATA(t72) = CAST zcl_lnt_token_node( t3 ).
            t71 = t72.
            DATA t73 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t74) = CAST zcl_lnt_token_node( t71 ).
            t73 = t74->token.
            t70 = t73.
            DATA t75 TYPE string.
            DATA t76 TYPE string.
            DATA(t77) = |Invalid escape sequence "|.
            DATA(t78) = t50.
            DATA(t79) = strlen( t77 ).
            t76 = |{ t77 }{ t78 }|.
            DATA(t80) = |" in string template|.
            DATA(t81) = strlen( t76 ).
            t75 = |{ t76 }{ t80 }|.
            DATA t82 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t82.
            t68 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t69 i_token = t70 i_message_26cb = t75 i_fix = t82 ).
            t66 = t68.
          ELSE.
            DATA t83 TYPE REF TO zcl_lnt_issue.
            CLEAR t83.
            t66 = t83.
          ENDIF.
          result = t66.
          RETURN.
        ENDIF.
        DATA(t84) = VALUE int8( ).
        DATA(t85) = VALUE i( ).
        DATA t86 TYPE int8.
        DATA(t87) = t29.
        DATA(t88) = CONV int8( 1 ).
        t86 = t87 + t88.
        IF t86 < range_int8_bound_min OR t86 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t85 = t86.
        t84 = t85.
        t29 = t84.
      ENDIF.
      DATA t89 TYPE int8.
      DATA(t90) = t29.
      DATA(t91) = CONV int8( 1 ).
      t89 = t90 + t91.
      IF t89 < range_int8_bound_min OR t89 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t29 = t89.
    ENDDO.
    DATA t92 TYPE REF TO zcl_lnt_issue.
    CLEAR t92.
    result = t92.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d820_8ca0c693815f.
  ENDMETHOD.
ENDCLASS.
