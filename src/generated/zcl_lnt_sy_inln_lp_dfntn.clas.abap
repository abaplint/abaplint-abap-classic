* TS: src/abap/5_syntax/expressions/inline_loop_definition.ts:10:1 InlineLoopDefinition
CLASS zcl_lnt_sy_inln_lp_dfntn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inln_lp_dfntn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = t1.
    t12 = t13.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    t11 = t12->find_direct_expression( i_type_9913 = t14 ).
    t10 = t11.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t10.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    t18 = t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t16.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    t15 = t20.
    IF t15 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = t1.
      t23 = t24.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t22 = t23->find_direct_expression( i_type_9913 = t25 ).
      t10 = t22.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    DATA(t29) = t1.
    t28 = t29.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t27 = t28->find_direct_expression( i_type_9913 = t30 ).
    t26 = t27.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    DATA(t33) = t26.
    t32 = xsdbool( t33 IS BOUND ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t10.
      t34 = xsdbool( t35 IS BOUND ).
      t31 = t34.
    ENDIF.
    IF t31 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        DATA(t41) = t26.
        t40 = t41.
        t38 = t40.
      ELSE.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t42.
        t38 = t42.
      ENDIF.
      DATA(t43) = t2.
      DATA t44 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t47.
      t37 = zcl_lnt_sy_source=>run_syntax( i_node = t38 i_input_967e = t43 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t46 i_read_reference = t47 ).
      t36 = t37.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t49.
      t48 = t49.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t36.
      t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t50 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          DATA t55 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t56 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t57) = t36.
          t56 ?= t57.
          t55 = t56.
          DATA t58 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t59) = t55.
          t58 = t59->row_type.
          t54 = t58.
          t52 = t54.
        ELSE.
          DATA t60 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t60.
          t52 = t60.
        ENDIF.
        t48 = t52.
      ELSE.
        DATA t61 TYPE abap_bool.
        DATA(t62) = t36.
        t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_void_type ).
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_void_type.
          DATA(t64) = t36.
          t63 ?= t64.
          t48 = t63.
        ELSE.
          DATA t65 TYPE abap_bool.
          DATA(t66) = t36.
          t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t65 = abap_true.
            DATA t67 TYPE string.
            DATA t68 TYPE string.
            DATA(t69) = |Unknown type, |.
            DATA t70 TYPE string.
            DATA t71 TYPE REF TO zcl_lnt_unknown_type.
            DATA t72 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t73) = t36.
            t72 ?= t73.
            t71 = t72.
            DATA t74 TYPE string.
            DATA(t75) = t71.
            t74 = t75->error.
            t70 = t74.
            DATA(t76) = strlen( t69 ).
            t68 = |{ t69 }{ t70 }|.
            t67 = t68.
            DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t78) = t2.
            t77 = t78->issues.
            DATA t79 TYPE REF TO zcl_lnt_issue.
            DATA(t80) = t2.
            DATA t81 TYPE REF TO zcl_lnt_abstract_token.
            DATA t82 TYPE REF TO zcl_lnt_expression_node.
            DATA(t83) = t1.
            t82 = t83.
            t81 = t82->get_first_token( ).
            DATA(t84) = t67.
            DATA t85 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t85.
            t79 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t80 i_token = t81 i_message_26cb = t84 i_fix = t85 ).
            t77->load( ).
            APPEND t79 TO t77->items.
            t77->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA t89 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t90) = t48.
      t89 = t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      t91 = t92.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t89.
      IF t94 IS INITIAL.
        t93 = abap_true.
      ENDIF.
      t88 = t93.
      t87 = t88.
      IF t88 = abap_true.
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = VALUE i( ).
        DATA t97 TYPE string.
        DATA t98 TYPE string.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        DATA(t100) = t1.
        t99 = t100.
        t98 = t99->concat_tokens( ).
        DATA(t101) = strlen( t98 ).
        t97 = t98.
        IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t97 TO UPPER CASE.
        ELSE.
          t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
        ENDIF.
        DATA(t102) = | IN GROUP |.
        DATA(t103) = strlen( t97 ).
        IF t102 IS INITIAL.
          t96 = 0.
        ELSE.
          FIND t102 IN t97 MATCH OFFSET t96.
          IF sy-subrc <> 0.
            t96 = -1.
          ENDIF.
        ENDIF.
        DATA(t104) = 0.
        t95 = xsdbool( t96 >= t104 ).
        t87 = t95.
      ENDIF.
      t86 = t87.
      IF t87 = abap_true.
        DATA(t105) = VALUE abap_bool( ).
        DATA t106 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t107) = t36.
        t106 = t107.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        t108 = t109.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = t106.
        IF t112 IS INITIAL.
          t111 = abap_true.
        ENDIF.
        t110 = xsdbool( t111 = abap_false ).
        t105 = t110.
        t86 = t105.
      ENDIF.
      IF t86 = abap_true.
        DATA t113 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t113.
        DATA(t114) = abap_true.
        IF t114 = abap_true.
          DATA t115 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t116) = t36.
          t115 = t116.
          t113 = t115.
        ELSE.
          DATA t117 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t117.
          t113 = t117.
        ENDIF.
        t48 = t113.
      ELSE.
        DATA(t118) = VALUE abap_bool( ).
        DATA t119 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t120) = t48.
        t119 = t120.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        t121 = t122.
        DATA(t123) = VALUE abap_bool( ).
        DATA(t124) = t119.
        IF t124 IS INITIAL.
          t123 = abap_true.
        ENDIF.
        t118 = t123.
        IF t118 = abap_true.
          DATA t125 TYPE string.
          DATA(t126) = |InlineLoopDefinition, not a table type|.
          t125 = t126.
          DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t128) = t2.
          t127 = t128->issues.
          DATA t129 TYPE REF TO zcl_lnt_issue.
          DATA(t130) = t2.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          DATA t132 TYPE REF TO zcl_lnt_expression_node.
          DATA(t133) = t1.
          t132 = t133.
          t131 = t132->get_first_token( ).
          DATA(t134) = t125.
          DATA t135 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t135.
          t129 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t130 i_token = t131 i_message_26cb = t134 i_fix = t135 ).
          t127->load( ).
          APPEND t129 TO t127->items.
          t127->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t137.
      DATA t138 TYPE REF TO zcl_lnt_abstract_token.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      DATA(t140) = t10.
      t139 = t140.
      t138 = t139->get_first_token( ).
      DATA t141 TYPE string.
      DATA(t142) = t2.
      t141 = t142->filename.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t144) = t48.
      t143 = t144.
      DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t145.
      DATA(t146) = abap_true.
      IF t146 = abap_true.
        DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t149.
        t148 = t149.
        DATA(t150) = t148.
        DATA(t151) = |inline|.
        t150->load( ).
        APPEND t151 TO t150->items.
        t150->save( ).
        DATA(t152) = t148.
        t147 = t152.
        t145 = t147.
      ELSE.
        DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t153.
        t145 = t153.
      ENDIF.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      t137 = NEW zcl_lnt_typed_identifier( i_token = t138 i_filename = t141 i_type_9913 = t143 i_meta = t145 i_value = t154 ).
      t136 = t137.
      DATA t155 TYPE REF TO zcl_lnt_current_scope.
      DATA(t156) = t2.
      t155 = t156->scope.
      DATA t157 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t157.
      DATA(t158) = abap_true.
      IF t158 = abap_true.
        DATA t159 TYPE REF TO zcl_lnt_abstract_token.
        DATA t160 TYPE REF TO zcl_lnt_expression_node.
        DATA(t161) = t10.
        t160 = t161.
        t159 = t160->get_first_token( ).
        t157 = t159.
      ELSE.
        DATA t162 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t162.
        t157 = t162.
      ENDIF.
      DATA(t163) = t136.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      DATA(t165) = |Write To|.
      CLEAR t164.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t164->sval = t165.
      DATA t166 TYPE string.
      DATA(t167) = t2.
      t166 = t167->filename.
      DATA t168 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t168.
      t155->add_reference( i_usage = t157 i_referencing = t163 i_type_9913 = t164 i_filename = t166 i_extra = t168 ).
      DATA t169 TYPE REF TO zcl_lnt_current_scope.
      DATA(t170) = t2.
      t169 = t170->scope.
      DATA t171 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t171.
      DATA(t172) = abap_true.
      IF t172 = abap_true.
        DATA t173 TYPE REF TO zcl_lnt_abstract_token.
        DATA t174 TYPE REF TO zcl_lnt_expression_node.
        DATA(t175) = t10.
        t174 = t175.
        t173 = t174->get_first_token( ).
        t171 = t173.
      ELSE.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t176.
        t171 = t176.
      ENDIF.
      DATA(t177) = t136.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      DATA(t179) = |Read From|.
      CLEAR t178.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t178->sval = t179.
      DATA t180 TYPE string.
      DATA(t181) = t2.
      t180 = t181->filename.
      DATA t182 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t182.
      t169->add_reference( i_usage = t171 i_referencing = t177 i_type_9913 = t178 i_filename = t180 i_extra = t182 ).
      DATA t183 TYPE REF TO zcl_lnt_current_scope.
      DATA t184 TYPE REF TO zcl_lnt_current_scope.
      DATA(t185) = t2.
      t184 = t185->scope.
      t183 = t184.
      DATA t186 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t186.
      DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t187.
      DATA(t188) = abap_true.
      IF t188 = abap_true.
        DATA(t189) = t136.
        t187 = t189.
      ELSE.
        DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t190.
        t187 = t190.
      ENDIF.
      t186 = t187.
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t193) = t186.
      t192 = t193.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      t194 = t195.
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = t192.
      IF t197 IS INITIAL.
        t196 = abap_true.
      ENDIF.
      t191 = t196.
      IF t191 = abap_true.
      ELSE.
        DATA(t198) = t183.
        DATA(t199) = VALUE string( ).
        DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t202) = t186.
        t201 = t202.
        t200 = t201.
        DATA(t203) = VALUE string( ).
        DATA t204 TYPE string.
        DATA t205 TYPE string.
        DATA t206 TYPE REF TO zcl_lnt_abstract_token.
        DATA t207 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t208) = t200.
        t207 = t208->token.
        t206 = t207.
        DATA t209 TYPE string.
        DATA(t210) = t206.
        t209 = t210->str.
        t205 = t209.
        t204 = t205.
        DATA(t211) = VALUE abap_bool( ).
        DATA(t212) = VALUE string( ).
        DATA(t213) = t204.
        DATA(t214) = 0.
        DATA(t215) = 1.
        DATA(t216) = strlen( t213 ).
        IF t214 < 0.
          t214 = t214 + t216.
          IF t214 < 0.
            t214 = 0.
          ENDIF.
        ENDIF.
        IF t214 > t216 OR t215 <= 0.
          CLEAR t212.
        ELSE.
          IF t215 > t216 - t214.
            t215 = t216 - t214.
          ENDIF.
          t212 = t213+t214(t215).
        ENDIF.
        DATA(t217) = |!|.
        t211 = xsdbool( t212 = t217 ).
        IF t211 = abap_true.
          DATA(t218) = VALUE string( ).
          DATA t219 TYPE string.
          DATA(t220) = t204.
          t219 = t220.
          DATA(t221) = VALUE string( ).
          DATA(t222) = t219.
          DATA(t223) = 1.
          DATA t224 TYPE i.
          DATA(t225) = t219.
          DATA(t226) = strlen( t225 ).
          t224 = t226.
          DATA(t227) = strlen( t222 ).
          IF t223 < 0.
            t223 = t223 + t227.
            IF t223 < 0.
              t223 = 0.
            ENDIF.
          ENDIF.
          IF t223 > t227 OR t224 <= 0.
            CLEAR t221.
          ELSE.
            IF t224 > t227 - t223.
              t224 = t227 - t223.
            ENDIF.
            t221 = t222+t223(t224).
          ENDIF.
          t218 = t221.
          t204 = t218.
        ENDIF.
        DATA(t228) = t204.
        t203 = t228.
        t199 = t203.
        DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t230) = t186.
        t229 = t230.
        t198->add_named_identifier( i_name = t199 i_identifier = t229 ).
      ENDIF.
    ENDIF.
    DATA t231 TYPE REF TO zcl_lnt_expression_node.
    DATA t232 TYPE REF TO zcl_lnt_expression_node.
    DATA t233 TYPE REF TO zcl_lnt_expression_node.
    DATA(t234) = t1.
    t233 = t234.
    DATA(t235) = |INTO|.
    t232 = t233->find_expression_after_token( i_text = t235 ).
    t231 = t232.
    DATA t236 TYPE abap_bool.
    DATA t237 TYPE abap_bool.
    DATA(t238) = t231.
    t237 = xsdbool( t238 IS BOUND ).
    t236 = t237.
    IF t237 = abap_true.
      DATA t239 TYPE abap_bool.
      DATA t240 TYPE REF TO zif_lnt_statement_runnable.
      DATA t241 TYPE REF TO zcl_lnt_expression_node.
      DATA(t242) = t231.
      t241 = t242.
      t240 = t241->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t239 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_target_field ).
      t236 = t239.
    ENDIF.
    IF t236 = abap_true.
      DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t243.
      DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t244.
      DATA t245 TYPE REF TO zcl_lnt_abstract_token.
      DATA t246 TYPE REF TO zcl_lnt_expression_node.
      DATA(t247) = t231.
      t246 = t247.
      t245 = t246->get_first_token( ).
      DATA t248 TYPE string.
      DATA(t249) = t2.
      t248 = t249->filename.
      DATA t250 TYPE REF TO zcl_lnt_integer_type.
      DATA t251 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t251.
      t250 = zcl_lnt_integer_type=>get_db65( i_input_967e = t251 ).
      DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t252.
      DATA(t253) = abap_true.
      IF t253 = abap_true.
        DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t256.
        t255 = t256.
        DATA(t257) = t255.
        DATA(t258) = |inline|.
        t257->load( ).
        APPEND t258 TO t257->items.
        t257->save( ).
        DATA(t259) = t255.
        t254 = t259.
        t252 = t254.
      ELSE.
        DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t260.
        t252 = t260.
      ENDIF.
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t261.
      t244 = NEW zcl_lnt_typed_identifier( i_token = t245 i_filename = t248 i_type_9913 = t250 i_meta = t252 i_value = t261 ).
      t243 = t244.
      DATA t262 TYPE REF TO zcl_lnt_current_scope.
      DATA(t263) = t2.
      t262 = t263->scope.
      DATA t264 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t264.
      DATA(t265) = abap_true.
      IF t265 = abap_true.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        DATA t267 TYPE REF TO zcl_lnt_expression_node.
        DATA(t268) = t231.
        t267 = t268.
        t266 = t267->get_first_token( ).
        t264 = t266.
      ELSE.
        DATA t269 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t269.
        t264 = t269.
      ENDIF.
      DATA(t270) = t243.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t271.
      DATA(t272) = |Write To|.
      CLEAR t271.
      CREATE OBJECT t271.
      t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t271->sval = t272.
      DATA t273 TYPE string.
      DATA(t274) = t2.
      t273 = t274->filename.
      DATA t275 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t275.
      t262->add_reference( i_usage = t264 i_referencing = t270 i_type_9913 = t271 i_filename = t273 i_extra = t275 ).
      DATA t276 TYPE REF TO zcl_lnt_current_scope.
      DATA t277 TYPE REF TO zcl_lnt_current_scope.
      DATA(t278) = t2.
      t277 = t278->scope.
      t276 = t277.
      DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t279.
      DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t280.
      DATA(t281) = abap_true.
      IF t281 = abap_true.
        DATA(t282) = t243.
        t280 = t282.
      ELSE.
        DATA t283 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t283.
        t280 = t283.
      ENDIF.
      t279 = t280.
      DATA(t284) = VALUE abap_bool( ).
      DATA t285 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t286) = t279.
      t285 = t286.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t288.
      t287 = t288.
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = t285.
      IF t290 IS INITIAL.
        t289 = abap_true.
      ENDIF.
      t284 = t289.
      IF t284 = abap_true.
      ELSE.
        DATA(t291) = t276.
        DATA(t292) = VALUE string( ).
        DATA t293 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t294 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t295) = t279.
        t294 = t295.
        t293 = t294.
        DATA(t296) = VALUE string( ).
        DATA t297 TYPE string.
        DATA t298 TYPE string.
        DATA t299 TYPE REF TO zcl_lnt_abstract_token.
        DATA t300 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t301) = t293.
        t300 = t301->token.
        t299 = t300.
        DATA t302 TYPE string.
        DATA(t303) = t299.
        t302 = t303->str.
        t298 = t302.
        t297 = t298.
        DATA(t304) = VALUE abap_bool( ).
        DATA(t305) = VALUE string( ).
        DATA(t306) = t297.
        DATA(t307) = 0.
        DATA(t308) = 1.
        DATA(t309) = strlen( t306 ).
        IF t307 < 0.
          t307 = t307 + t309.
          IF t307 < 0.
            t307 = 0.
          ENDIF.
        ENDIF.
        IF t307 > t309 OR t308 <= 0.
          CLEAR t305.
        ELSE.
          IF t308 > t309 - t307.
            t308 = t309 - t307.
          ENDIF.
          t305 = t306+t307(t308).
        ENDIF.
        DATA(t310) = |!|.
        t304 = xsdbool( t305 = t310 ).
        IF t304 = abap_true.
          DATA(t311) = VALUE string( ).
          DATA t312 TYPE string.
          DATA(t313) = t297.
          t312 = t313.
          DATA(t314) = VALUE string( ).
          DATA(t315) = t312.
          DATA(t316) = 1.
          DATA t317 TYPE i.
          DATA(t318) = t312.
          DATA(t319) = strlen( t318 ).
          t317 = t319.
          DATA(t320) = strlen( t315 ).
          IF t316 < 0.
            t316 = t316 + t320.
            IF t316 < 0.
              t316 = 0.
            ENDIF.
          ENDIF.
          IF t316 > t320 OR t317 <= 0.
            CLEAR t314.
          ELSE.
            IF t317 > t320 - t316.
              t317 = t320 - t316.
            ENDIF.
            t314 = t315+t316(t317).
          ENDIF.
          t311 = t314.
          t297 = t311.
        ENDIF.
        DATA(t321) = t297.
        t296 = t321.
        t292 = t296.
        DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t323) = t279.
        t322 = t323.
        t291->add_named_identifier( i_name = t292 i_identifier = t322 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d814_a6463a215095.
  ENDMETHOD.
ENDCLASS.
