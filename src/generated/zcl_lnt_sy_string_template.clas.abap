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
    t5 = t2->scope.
    t4 = NEW zcl_lnt_type_utils( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_string_type.
    DATA t8 TYPE REF TO zcl_lnt_string_type.
    DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
    t8 = zcl_lnt_string_type=>get_db65( i_input_967e = t9 ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    t12 = t1.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t14 = t12->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t17 TYPE REF TO object.
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
      t22 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_expression_node ).
      t21 = t22.
      IF t22 = abap_true.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE REF TO zif_lnt_statement_runnable.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA t28 TYPE REF TO object.
        t28 = t16.
        t26 ?= t28.
        t25 = t26->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_string_template_source ).
        t21 = t24.
      ENDIF.
      IF t21 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        DATA t33 TYPE REF TO object.
        t33 = t16.
        t31 ?= t33.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t30 = t31->find_direct_expression( i_type_9913 = t34 ).
        DATA t35 TYPE REF TO zcl_lnt_abstract_type.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t42.
        t36 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t2 i_target_type = t7 i_write_reference = t40 i_allow_generic_deference = t41 i_read_reference = t42 ).
        t35 = t36.
        DATA(t43) = VALUE abap_bool( ).
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        t43 = xsdbool( t35 IS INITIAL ).
        IF t43 = abap_true.
          DATA(t51) = |No target type determined|.
          DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t52 = t2->issues.
          DATA t54 TYPE REF TO zcl_lnt_issue.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          t56 = t1->get_first_token( ).
          DATA t59 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t59.
          t54 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t56 i_message_26cb = t51 i_fix = t59 ).
          t52->load( ).
          APPEND t54 TO t52->items.
          t52->save( ).
          DATA t60 TYPE REF TO zcl_lnt_void_type.
          CLEAR t60.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t61.
          DATA(t63) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t64->has = abap_true.
          t64->value = t63.
          t61 = t64.
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
          DATA t73 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t73.
          t73 = t35.
          t71 = t3->is_char_like( i_type_9913 = t73 ).
          t70 = xsdbool( t71 = abap_false ).
          t69 = t70.
          IF t70 = abap_true.
            DATA(t79) = VALUE abap_bool( ).
            DATA(t80) = VALUE abap_bool( ).
            DATA t82 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t82.
            t82 = t35.
            t80 = t3->is_hex_like( i_type_9913 = t82 ).
            t79 = xsdbool( t80 = abap_false ).
            t69 = t79.
          ENDIF.
          t68 = t69.
          IF t69 = abap_true.
            DATA t88 TYPE abap_bool.
            DATA t89 TYPE abap_bool.
            t89 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_utc_long_type ).
            t88 = xsdbool( t89 = abap_false ).
            t68 = t88.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA t91 TYPE abap_bool.
            t91 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_structure_type ).
            t67 = t91.
          ENDIF.
          IF t67 = abap_true.
            DATA t94 TYPE string.
            DATA(t95) = |String template, not character like, |.
            DATA t96 TYPE string.
            DATA t97 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA t98 TYPE REF TO zcl_lnt_abstract_type.
            t98 = t35.
            t97 = t98->zlnt_builtin_clas_3f891b097658( ).
            t96 = t97->name.
            DATA(t100) = strlen( t95 ).
            t94 = |{ t95 }{ t96 }|.
            DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t101 = t2->issues.
            DATA t103 TYPE REF TO zcl_lnt_issue.
            DATA t105 TYPE REF TO zcl_lnt_abstract_token.
            t105 = t1->get_first_token( ).
            DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t108.
            t103 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t105 i_message_26cb = t94 i_fix = t108 ).
            t101->load( ).
            APPEND t103 TO t101->items.
            t101->save( ).
            DATA t109 TYPE REF TO zcl_lnt_void_type.
            CLEAR t109.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            DATA(t112) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t113->has = abap_true.
            t113->value = t112.
            t110 = t113.
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
        DATA t120 TYPE REF TO object.
        t120 = t16.
        t118 ?= t120.
        DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d347_94341124f92e.
        t117 = t118->find_direct_expression( i_type_9913 = t121 ).
        t116 = t117.
        DATA t124 TYPE REF TO zcl_lnt_expression_node.
        t124 = t116.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        DATA(t127) = xsdbool( t124 IS INITIAL ).
        IF t127 = abap_true.
          CLEAR t126.
        ELSE.
          DATA t130 TYPE string.
          DATA t131 TYPE REF TO zcl_lnt_expression_node.
          t131 = t124.
          t130 = t131->concat_tokens( ).
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t130.
          t126 = t133.
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t135.
        DATA t137 TYPE REF TO zcl_lnt_expression_node.
        t137 = t116.
        DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t139.
        DATA(t140) = xsdbool( t137 IS INITIAL ).
        IF t140 = abap_true.
          CLEAR t139.
        ELSE.
          DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t144 TYPE REF TO zcl_lnt_expression_node.
          t144 = t137.
          DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
          t143 = t144->find_all_expressions( i_type_9913 = t146 ).
          t139 = t143.
        ENDIF.
        t135 = t139.
        DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t147.
        DATA t148 TYPE abap_bool.
        t148 = xsdbool( t135 IS BOUND ).
        IF t148 = abap_true.
          t147 = t135.
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
          t159 = t153.
          DATA t164 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t165.
          DATA t166 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t166.
          DATA t167 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t167.
          t158 = zcl_lnt_sy_source=>run_syntax( i_node = t159 i_input_967e = t2 i_target_type = t164 i_write_reference = t165 i_allow_generic_deference = t166 i_read_reference = t167 ).
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
        t177 = xsdbool( t116 IS BOUND ).
        t176 = t177.
        IF t177 = abap_true.
          DATA(t179) = VALUE abap_bool( ).
          DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t180.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t181 = t126.
          DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          IF t181 IS INITIAL.
            t184 = abap_true.
          ELSEIF t181->has = abap_false.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
            CLEAR t183.
          ELSE.
            DATA(t187) = VALUE abap_bool( ).
            DATA(t188) = VALUE i( ).
            DATA t189 TYPE string.
            t189 = t181->value.
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
          t196 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_unknown_type ).
          t195 = xsdbool( t196 = abap_false ).
          t175 = t195.
        ENDIF.
        t174 = t175.
        IF t175 = abap_true.
          DATA t198 TYPE abap_bool.
          DATA t199 TYPE abap_bool.
          t199 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_void_type ).
          t198 = xsdbool( t199 = abap_false ).
          t174 = t198.
        ENDIF.
        t173 = t174.
        IF t174 = abap_true.
          DATA t201 TYPE abap_bool.
          DATA t202 TYPE abap_bool.
          t202 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_string_type ).
          t201 = xsdbool( t202 = abap_false ).
          t173 = t201.
        ENDIF.
        t172 = t173.
        IF t173 = abap_true.
          DATA t204 TYPE abap_bool.
          DATA t205 TYPE abap_bool.
          t205 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_c_like_type ).
          t204 = xsdbool( t205 = abap_false ).
          t172 = t204.
        ENDIF.
        t171 = t172.
        IF t172 = abap_true.
          DATA t207 TYPE abap_bool.
          DATA t208 TYPE abap_bool.
          t208 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_character_type ).
          t207 = xsdbool( t208 = abap_false ).
          t171 = t207.
        ENDIF.
        t170 = t171.
        IF t171 = abap_true.
          DATA t210 TYPE abap_bool.
          DATA t211 TYPE abap_bool.
          t211 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
          t210 = xsdbool( t211 = abap_false ).
          t170 = t210.
        ENDIF.
        t169 = t170.
        IF t170 = abap_true.
          DATA t213 TYPE abap_bool.
          DATA t214 TYPE abap_bool.
          t214 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_numeric_type ).
          t213 = xsdbool( t214 = abap_false ).
          t169 = t213.
        ENDIF.
        t168 = t169.
        IF t169 = abap_true.
          DATA t216 TYPE abap_bool.
          DATA t217 TYPE abap_bool.
          t217 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_any_type ).
          t216 = xsdbool( t217 = abap_false ).
          t168 = t216.
        ENDIF.
        IF t168 = abap_true.
          DATA t220 TYPE string.
          DATA t221 TYPE string.
          DATA(t222) = |Cannot apply ALPHA to this type (|.
          DATA t223 TYPE string.
          DATA t224 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t225 TYPE REF TO zcl_lnt_abstract_type.
          t225 = t35.
          t224 = t225->zlnt_builtin_clas_3f891b097658( ).
          t223 = t224->name.
          DATA(t227) = strlen( t222 ).
          t221 = |{ t222 }{ t223 }|.
          DATA(t228) = |)|.
          DATA(t229) = strlen( t221 ).
          t220 = |{ t221 }{ t228 }|.
          DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t230 = t2->issues.
          DATA t232 TYPE REF TO zcl_lnt_issue.
          DATA t234 TYPE REF TO zcl_lnt_abstract_token.
          DATA t235 TYPE REF TO zcl_lnt_expression_node.
          t235 = t116.
          t234 = t235->get_first_token( ).
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t238.
          t232 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t234 i_message_26cb = t220 i_fix = t238 ).
          t230->load( ).
          APPEND t232 TO t230->items.
          t230->save( ).
          DATA t239 TYPE REF TO zcl_lnt_void_type.
          CLEAR t239.
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t240.
          DATA(t242) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t243->has = abap_true.
          t243->value = t242.
          t240 = t243.
          DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t245.
          t239 = zcl_lnt_void_type=>get_db65( i_voided = t240 i_qualified_name = t245 ).
          result = t239.
          RETURN.
        ENDIF.
      ELSE.
        DATA t246 TYPE abap_bool.
        t246 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_token_node ).
        IF t246 = abap_true.
          DATA t248 TYPE REF TO zcl_lnt_abstract_token.
          DATA t249 TYPE REF TO zcl_lnt_abstract_token.
          DATA t250 TYPE REF TO zcl_lnt_token_node.
          DATA t252 TYPE REF TO object.
          t252 = t16.
          t250 ?= t252.
          t249 = t250->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t248 = t249.
          DATA(t253) = VALUE abap_bool( ).
          DATA(t254) = VALUE abap_bool( ).
          DATA t255 TYPE abap_bool.
          DATA t256 TYPE abap_bool.
          t256 = xsdbool( t248 IS BOUND AND t248 IS INSTANCE OF zcl_lnt_lx_string_template ).
          t255 = t256.
          IF t256 = abap_false.
            DATA t258 TYPE abap_bool.
            t258 = xsdbool( t248 IS BOUND AND t248 IS INSTANCE OF zcl_lnt_string_template_begin ).
            t255 = t258.
          ENDIF.
          t254 = t255.
          IF t255 = abap_false.
            DATA t260 TYPE abap_bool.
            t260 = xsdbool( t248 IS BOUND AND t248 IS INSTANCE OF zcl_lnt_string_template_middle ).
            t254 = t260.
          ENDIF.
          t253 = t254.
          IF t254 = abap_false.
            DATA t262 TYPE abap_bool.
            t262 = xsdbool( t248 IS BOUND AND t248 IS INSTANCE OF zcl_lnt_string_template_end ).
            t253 = t262.
          ENDIF.
          IF t253 = abap_true.
            DATA t264 TYPE REF TO zcl_lnt_issue.
            DATA t265 TYPE REF TO zcl_lnt_issue.
            DATA t266 TYPE string.
            DATA t267 TYPE REF TO zif_lnt_union_a14e6efb.
            t267 ?= t248.
            t266 = t267->get_str( ).
            DATA t270 TYPE REF TO zcl_lnt_token_node.
            DATA t272 TYPE REF TO object.
            t272 = t16.
            t270 ?= t272.
            t265 = zcl_lnt_sy_string_template=>validate_escape_sequences( i_str = t266 i_input_967e = t2 i_node = t270 ).
            t264 = t265.
            DATA t273 TYPE abap_bool.
            t273 = xsdbool( t264 IS BOUND ).
            IF t273 = abap_true.
              DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t275 = t2->issues.
              DATA t277 TYPE REF TO zcl_lnt_issue.
              t277 = t264.
              t275->load( ).
              APPEND t277 TO t275->items.
              t275->save( ).
              DATA t279 TYPE REF TO zcl_lnt_void_type.
              CLEAR t279.
              DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t280.
              DATA(t282) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t283->has = abap_true.
              t283->value = t282.
              t280 = t283.
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
    result = t7.

  ENDMETHOD.

  METHOD validate_escape_sequences.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_str.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_node.
    DATA t4 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t4 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t8) = `\|`.
    t6 = t4->add( p0 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t11) = `\{`.
    t9 = t4->add( p0 = t11 ).
    DATA t12 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t14) = `\}`.
    t12 = t4->add( p0 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t17) = `\\`.
    t15 = t4->add( p0 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t20) = `\n`.
    t18 = t4->add( p0 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t23) = `\r`.
    t21 = t4->add( p0 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t26) = `\t`.
    t24 = t4->add( p0 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t27 = t4.
    DATA t29 TYPE int8.
    DATA(t30) = CONV int8( 0 ).
    t29 = t30.
    DO.
      DATA t31 TYPE abap_bool.
      DATA t33 TYPE int8.
      t33 = strlen( t1 ).
      t31 = xsdbool( t29 < t33 ).
      IF t31 = abap_false.
        EXIT.
      ENDIF.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA t40 TYPE i.
      t40 = t29.
      DATA(t42) = strlen( t1 ).
      IF t40 < 0 OR t40 >= t42.
        CLEAR t38.
      ELSE.
        t38 = NEW #( ).
        t38->has = abap_true.
        t38->value = t1+t40(1).
      ENDIF.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA(t45) = `\`.
      DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t46->has = abap_true.
      t46->value = t45.
      t43 = t46.
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
        DATA t53 TYPE i.
        t53 = t29.
        DATA(t55) = VALUE i( ).
        DATA t56 TYPE f.
        DATA t57 TYPE int8.
        DATA t58 TYPE int8.
        DATA t59 TYPE i.
        t59 = t29.
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
        DATA(t62) = strlen( t1 ).
        t53 = COND i( WHEN t53 < 0 THEN 0 WHEN t53 > t62 THEN t62 ELSE t53 ).
        t55 = COND i( WHEN t55 < 0 THEN 0 WHEN t55 > t62 THEN t62 ELSE t55 ).
        IF t53 > t55.
          t62 = t53.
          t53 = t55.
          t55 = t62.
        ENDIF.
        t62 = t55 - t53.
        t51 = t1+t53(t62).
        t50 = t51.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE abap_bool.
        t64 = t27->has( p0 = t50 ).
        t63 = xsdbool( t64 = abap_false ).
        IF t63 = abap_true.
          DATA t69 TYPE REF TO zcl_lnt_issue.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA t74 TYPE REF TO zcl_lnt_abstract_token.
          t74 = t3->token.
          t71 = t74.
          DATA t76 TYPE string.
          DATA t77 TYPE string.
          DATA(t78) = |Invalid escape sequence "|.
          DATA(t80) = strlen( t78 ).
          t77 = |{ t78 }{ t50 }|.
          DATA(t81) = |" in string template|.
          DATA(t82) = strlen( t77 ).
          t76 = |{ t77 }{ t81 }|.
          DATA t83 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t83.
          t69 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t71 i_message_26cb = t76 i_fix = t83 ).
          result = t69.
          RETURN.
        ENDIF.
        DATA t85 TYPE int8.
        DATA t86 TYPE i.
        DATA t87 TYPE int8.
        DATA(t89) = CONV int8( 1 ).
        t87 = t29 + t89.
        t86 = t87.
        t85 = t86.
        t29 = t85.
      ENDIF.
      DATA t90 TYPE int8.
      DATA(t92) = CONV int8( 1 ).
      t90 = t29 + t92.
      t29 = t90.
    ENDDO.
    CLEAR result.

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
