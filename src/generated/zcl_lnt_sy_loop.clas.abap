* TS: src/abap/5_syntax/statements/loop.ts:17:1 Loop
CLASS zcl_lnt_sy_loop DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_loop IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d207_e6b5df1debdc ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t9 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = CAST zcl_lnt_expression_node( t9 ).
      t16 = t17.
      DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
      t15 = t16->find_direct_expression( i_type_9913 = t18 ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t19 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t20.
    DATA t21 TYPE abap_bool.
    DATA(t22) = CAST zcl_lnt_expression_node( t7 ).
    t21 = xsdbool( t22 IS BOUND ).
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = CAST zcl_lnt_expression_node( t7 ).
      t24 = t25.
      DATA(t26) = CAST zcl_lnt_syntax_input( t2 ).
      t23 = zcl_lnt_sy_target=>run_syntax( i_node = t24 i_input_967e = t26 ).
      t20 = t23.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      t20 = t27.
    ENDIF.
    t19 = t20.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = CAST zcl_lnt_expression_node( t7 ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zcl_lnt_expression_node( t29 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c ).
      t35 = t36->find_direct_expression( i_type_9913 = t37 ).
      t7 = t35.
    ENDIF.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA(t43) = CAST zcl_lnt_expression_node( t3 ).
    t42 = t43.
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = CAST zcl_lnt_expression_node( t42 ).
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    IF t45 = abap_true.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t47.
      t44 = t47.
    ELSE.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      DATA(t50) = CAST zcl_lnt_expression_node( t42 ).
      t49 = t50.
      DATA(t51) = |ASSIGNING|.
      t48 = t49->find_direct_token_by_text( i_text = t51 ).
      t44 = t48.
    ENDIF.
    t41 = t44.
    t40 = t41.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    t52 = t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = CAST zcl_lnt_abstract_token( t40 ).
    IF t56 IS INITIAL.
      t55 = abap_true.
    ENDIF.
    t54 = xsdbool( t55 = abap_false ).
    t39 = t54.
    t38 = t39.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t59) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t58 = t59->find_direct_expressions( i_type_9913 = t60 ).
    t57 = t58.
    DATA t61 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    DATA(t66) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d205_211e28be3777 ).
    t65 = t66->find_direct_expression( i_type_9913 = t67 ).
    t64 = t65.
    DATA t68 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t68.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = CAST zcl_lnt_expression_node( t64 ).
    IF t70 IS INITIAL.
      t69 = abap_true.
    ENDIF.
    IF t69 = abap_true.
      DATA t71 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t71.
      t68 = t71.
    ELSE.
      DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t72.
      DATA t73 TYPE REF TO zif_lnt_node.
      CLEAR t73.
      DATA t74 TYPE REF TO zcl_lnt_abstract_node.
      DATA t75 TYPE REF TO zcl_lnt_expression_node.
      DATA(t76) = CAST zcl_lnt_expression_node( t64 ).
      t75 = t76.
      t74 = t75.
      DATA t77 TYPE REF TO zif_lnt_node.
      CLEAR t77.
      DATA(t78) = abap_true.
      IF t78 = abap_true.
        DATA t79 TYPE REF TO zif_lnt_node.
        DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t81) = CAST zcl_lnt_abstract_node( t74 ).
        t80 = t81->children.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        READ TABLE t80->items INDEX 1 INTO t82.
        t79 ?= t82.
        t77 = t79.
      ELSE.
        DATA t83 TYPE REF TO zif_lnt_node.
        CLEAR t83.
        t77 = t83.
      ENDIF.
      t73 = t77.
      t72 ?= t73.
      t68 = t72.
    ENDIF.
    t63 = t68.
    DATA t84 TYPE REF TO object.
    t84 = t63.
    t62 ?= t84.
    t61 = t62.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zcl_lnt_expression_node.
    DATA(t87) = CAST zcl_lnt_expression_node( t61 ).
    t86 = t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    t88 = t89.
    DATA(t90) = VALUE abap_bool( ).
    DATA(t91) = CAST zcl_lnt_expression_node( t86 ).
    IF t91 IS INITIAL.
      t90 = abap_true.
    ENDIF.
    t85 = t90.
    IF t85 = abap_true.
      DATA t92 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t92.
      DATA(t93) = abap_true.
      IF t93 = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_expression_node.
        DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
        DATA t96 TYPE REF TO object.
        CLEAR t96.
        READ TABLE t95->items INDEX 1 INTO t96.
        t94 ?= t96.
        t92 = t94.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t97.
        t92 = t97.
      ENDIF.
      t61 = t92.
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t98.
    DATA t99 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t99.
    DATA t100 TYPE abap_bool.
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    DATA(t102) = CAST zcl_lnt_expression_node( t61 ).
    t101 = t102.
    t100 = xsdbool( t101 IS BOUND ).
    IF t100 = abap_true.
      DATA t103 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t103.
      DATA t104 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t104.
      DATA(t105) = abap_true.
      IF t105 = abap_true.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        DATA(t107) = CAST zcl_lnt_expression_node( t61 ).
        t106 = t107.
        t104 = t106.
      ELSE.
        DATA t108 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t108.
        t104 = t108.
      ENDIF.
      DATA(t109) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t110) = CAST zcl_lnt_abstract_type( t19 ).
      DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA(t113) = t38.
        DATA(t114) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t114->has = abap_true.
        t114->value = t113.
        t111 = t114.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t115.
        t111 = t115.
      ENDIF.
      DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t117.
      t103 = zcl_lnt_sy_source=>run_syntax( i_node = t104 i_input_967e = t109 i_target_type = t110 i_write_reference = t111 i_allow_generic_deference = t116 i_read_reference = t117 ).
      t99 = t103.
    ELSE.
      DATA t118 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t118.
      t99 = t118.
    ENDIF.
    t98 = t99.
    DATA t119 TYPE REF TO zcl_lnt_abstract_type.
    DATA t120 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t120.
    t119 = t120.
    DATA(t121) = VALUE string( ).
    DATA t122 TYPE string.
    DATA t123 TYPE string.
    DATA(t124) = CAST zcl_lnt_statement_node( t1 ).
    t123 = t124->concat_tokens( ).
    DATA(t125) = strlen( t123 ).
    t122 = t123.
    IF t122 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t122 TO UPPER CASE.
    ELSE.
      t122 = zlnt_runtime_uppe_91169605024d=>full( t122 ).
    ENDIF.
    t121 = t122.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t128) = CAST zcl_lnt_abstract_type( t98 ).
    t127 = t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    t129 = t130.
    DATA(t131) = VALUE abap_bool( ).
    DATA(t132) = CAST zcl_lnt_abstract_type( t127 ).
    IF t132 IS INITIAL.
      t131 = abap_true.
    ENDIF.
    t126 = t131.
    IF t126 = abap_true.
      DATA t133 TYPE abap_bool.
      DATA(t134) = t121.
      DATA(t135) = |LOOP.|.
      t133 = xsdbool( t134 <> t135 ).
      IF t133 = abap_true.
        DATA t136 TYPE string.
        DATA(t137) = |No source type determined|.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t139) = CAST zcl_lnt_syntax_input( t2 ).
        t138 = t139->issues.
        DATA t140 TYPE REF TO zcl_lnt_issue.
        DATA(t141) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t142 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t143) = CAST zcl_lnt_statement_node( t1 ).
        t142 = t143->get_first_token( ).
        DATA(t144) = t136.
        DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t145.
        t140 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t141 i_token = t142 i_message_26cb = t144 i_fix = t145 ).
        APPEND t140 TO t138->items.
      ENDIF.
    ELSE.
      DATA t146 TYPE abap_bool.
      DATA(t147) = CAST zcl_lnt_abstract_type( t98 ).
      t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t146 = abap_true.
        DATA t148 TYPE string.
        DATA t149 TYPE string.
        DATA(t150) = |Loop, not a table type, |.
        DATA t151 TYPE string.
        DATA t152 TYPE REF TO zcl_lnt_unknown_type.
        DATA t153 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t154) = CAST zcl_lnt_abstract_type( t98 ).
        t153 ?= t154.
        t152 = t153.
        DATA t155 TYPE string.
        DATA(t156) = CAST zcl_lnt_unknown_type( t152 ).
        t155 = t156->error.
        t151 = t155.
        DATA(t157) = strlen( t150 ).
        t149 = |{ t150 }{ t151 }|.
        t148 = t149.
        DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t159) = CAST zcl_lnt_syntax_input( t2 ).
        t158 = t159->issues.
        DATA t160 TYPE REF TO zcl_lnt_issue.
        DATA(t161) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t162 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t163) = CAST zcl_lnt_statement_node( t1 ).
        t162 = t163->get_first_token( ).
        DATA(t164) = t148.
        DATA t165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t165.
        t160 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t161 i_token = t162 i_message_26cb = t164 i_fix = t165 ).
        APPEND t160 TO t158->items.
        DATA t166 TYPE REF TO zcl_lnt_void_type.
        CLEAR t166.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t167.
        DATA(t168) = abap_true.
        IF t168 = abap_true.
          DATA(t169) = |Loop, not a table type|.
          DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t170->has = abap_true.
          t170->value = t169.
          t167 = t170.
        ELSE.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t171.
          t167 = t171.
        ENDIF.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        t166 = zcl_lnt_void_type=>get_db65( i_voided = t167 i_qualified_name = t172 ).
        t98 = t166.
      ELSE.
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = VALUE abap_bool( ).
        DATA t175 TYPE abap_bool.
        DATA t176 TYPE abap_bool.
        DATA(t177) = CAST zcl_lnt_abstract_type( t98 ).
        t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t175 = t176.
        IF t176 = abap_true.
          DATA(t178) = VALUE abap_bool( ).
          DATA t179 TYPE REF TO zcl_lnt_expression_node.
          DATA(t180) = CAST zcl_lnt_expression_node( t7 ).
          t179 = t180.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          t181 = t182.
          DATA(t183) = VALUE abap_bool( ).
          DATA(t184) = CAST zcl_lnt_expression_node( t179 ).
          IF t184 IS INITIAL.
            t183 = abap_true.
          ENDIF.
          t178 = t183.
          t175 = t178.
        ENDIF.
        t174 = t175.
        IF t175 = abap_true.
          DATA t185 TYPE abap_bool.
          DATA t186 TYPE abap_bool.
          DATA t187 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t188 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t189) = CAST zcl_lnt_abstract_type( t98 ).
          t188 ?= t189.
          t187 = t188.
          DATA t190 TYPE abap_bool.
          DATA t191 TYPE REF TO zcl_lnt_itable_options.
          DATA(t192) = CAST zcl_lnt_ty_table_type( t187 ).
          t191 = t192->options.
          t190 = t191->with_header.
          t186 = t190.
          DATA(t193) = abap_false.
          t185 = xsdbool( t186 = t193 ).
          t174 = t185.
        ENDIF.
        t173 = t174.
        IF t174 = abap_true.
          DATA t194 TYPE abap_bool.
          DATA t195 TYPE i.
          DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t198 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t199) = CAST zcl_lnt_statement_node( t1 ).
          t198 = t199.
          DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t201) = CAST zcl_lnt_abstract_node( t198 ).
          t200 = t201->children.
          t197 = t200.
          t196 ?= t197.
          t195 = lines( t196->items ).
          DATA(t202) = 4.
          t194 = xsdbool( t195 = t202 ).
          t173 = t194.
        ENDIF.
        IF t173 = abap_true.
          DATA t203 TYPE string.
          DATA(t204) = |Loop, no header line|.
          t203 = t204.
          DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t206) = CAST zcl_lnt_syntax_input( t2 ).
          t205 = t206->issues.
          DATA t207 TYPE REF TO zcl_lnt_issue.
          DATA(t208) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t209 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t210) = CAST zcl_lnt_statement_node( t1 ).
          t209 = t210->get_first_token( ).
          DATA(t211) = t203.
          DATA t212 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t212.
          t207 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t208 i_token = t209 i_message_26cb = t211 i_fix = t212 ).
          APPEND t207 TO t205->items.
        ELSE.
          DATA(t213) = VALUE abap_bool( ).
          DATA(t214) = VALUE abap_bool( ).
          DATA(t215) = VALUE abap_bool( ).
          DATA t216 TYPE abap_bool.
          DATA t217 TYPE abap_bool.
          DATA t218 TYPE abap_bool.
          DATA(t219) = CAST zcl_lnt_abstract_type( t98 ).
          t218 = xsdbool( t219 IS BOUND AND t219 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t217 = xsdbool( t218 = abap_false ).
          t216 = t217.
          IF t217 = abap_true.
            DATA t220 TYPE abap_bool.
            DATA t221 TYPE abap_bool.
            DATA(t222) = CAST zcl_lnt_abstract_type( t98 ).
            t221 = xsdbool( t222 IS BOUND AND t222 IS INSTANCE OF zcl_lnt_any_type ).
            t220 = xsdbool( t221 = abap_false ).
            t216 = t220.
          ENDIF.
          t215 = t216.
          IF t216 = abap_true.
            DATA t223 TYPE abap_bool.
            DATA t224 TYPE abap_bool.
            DATA(t225) = CAST zcl_lnt_abstract_type( t98 ).
            t224 = xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_data_type ).
            t223 = xsdbool( t224 = abap_false ).
            t215 = t223.
          ENDIF.
          t214 = t215.
          IF t215 = abap_true.
            DATA t226 TYPE abap_bool.
            DATA t227 TYPE abap_bool.
            DATA(t228) = CAST zcl_lnt_abstract_type( t98 ).
            t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_void_type ).
            t226 = xsdbool( t227 = abap_false ).
            t214 = t226.
          ENDIF.
          t213 = t214.
          IF t214 = abap_true.
            DATA(t229) = VALUE abap_bool( ).
            DATA(t230) = VALUE abap_bool( ).
            DATA(t231) = t121.
            DATA(t232) = |LOOP AT GROUP |.
            DATA(t233) = strlen( t231 ).
            DATA t234 TYPE i.
            DATA(t235) = VALUE i( ).
            DATA(t236) = VALUE string( ).
            t234 = strlen( t232 ).
            IF t234 = 0.
              t230 = abap_true.
            ELSEIF t234 <= t233.
              t235 = 0.
              t236 = t231+t235(t234).
              IF t236 = t232.
                t230 = abap_true.
              ENDIF.
            ENDIF.
            DATA(t237) = abap_false.
            t229 = xsdbool( t230 = t237 ).
            t213 = t229.
          ENDIF.
          IF t213 = abap_true.
            DATA t238 TYPE string.
            DATA(t239) = |Loop, not a table type|.
            t238 = t239.
            DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
            t240 = t241->issues.
            DATA t242 TYPE REF TO zcl_lnt_issue.
            DATA(t243) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t244 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t245) = CAST zcl_lnt_statement_node( t1 ).
            t244 = t245->get_first_token( ).
            DATA(t246) = t238.
            DATA t247 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t247.
            t242 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t243 i_token = t244 i_message_26cb = t246 i_fix = t247 ).
            APPEND t242 TO t240->items.
          ELSE.
            DATA(t248) = VALUE abap_bool( ).
            DATA(t249) = VALUE abap_bool( ).
            DATA(t250) = VALUE abap_bool( ).
            DATA t251 TYPE REF TO zcl_lnt_expression_node.
            DATA(t252) = CAST zcl_lnt_expression_node( t3 ).
            t251 = t252.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            t253 = t254.
            DATA(t255) = VALUE abap_bool( ).
            DATA(t256) = CAST zcl_lnt_expression_node( t251 ).
            IF t256 IS INITIAL.
              t255 = abap_true.
            ENDIF.
            t250 = t255.
            t249 = t250.
            IF t250 = abap_true.
              DATA t257 TYPE abap_bool.
              DATA(t258) = CAST zcl_lnt_abstract_type( t98 ).
              t257 = xsdbool( t258 IS BOUND AND t258 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t249 = t257.
            ENDIF.
            t248 = t249.
            IF t249 = abap_true.
              DATA t259 TYPE abap_bool.
              DATA t260 TYPE abap_bool.
              DATA t261 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t262 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t263) = CAST zcl_lnt_abstract_type( t98 ).
              t262 ?= t263.
              t261 = t262.
              DATA t264 TYPE abap_bool.
              DATA t265 TYPE REF TO zcl_lnt_itable_options.
              DATA(t266) = CAST zcl_lnt_ty_table_type( t261 ).
              t265 = t266->options.
              t264 = t265->with_header.
              t260 = t264.
              DATA(t267) = abap_false.
              t259 = xsdbool( t260 = t267 ).
              t248 = t259.
            ENDIF.
            IF t248 = abap_true.
              DATA t268 TYPE string.
              DATA(t269) = |Loop, no header|.
              t268 = t269.
              DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t271) = CAST zcl_lnt_syntax_input( t2 ).
              t270 = t271->issues.
              DATA t272 TYPE REF TO zcl_lnt_issue.
              DATA(t273) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t274 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t275) = CAST zcl_lnt_statement_node( t1 ).
              t274 = t275->get_first_token( ).
              DATA(t276) = t268.
              DATA t277 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t277.
              t272 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t273 i_token = t274 i_message_26cb = t276 i_fix = t277 ).
              APPEND t272 TO t270->items.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t281.
    DATA t282 TYPE REF TO zcl_lnt_expression_node.
    DATA(t283) = CAST zcl_lnt_expression_node( t3 ).
    t282 = t283.
    DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t284.
    DATA(t285) = VALUE abap_bool( ).
    DATA(t286) = CAST zcl_lnt_expression_node( t282 ).
    IF t286 IS INITIAL.
      t285 = abap_true.
    ENDIF.
    IF t285 = abap_true.
      DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t287.
      t284 = t287.
    ELSE.
      DATA t288 TYPE string.
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      DATA(t290) = CAST zcl_lnt_expression_node( t282 ).
      t289 = t290.
      t288 = t289->concat_tokens( ).
      DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t291->has = abap_true.
      t291->value = t288.
      t284 = t291.
    ENDIF.
    t281 = t284.
    t280 = t281.
    DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t292.
    DATA(t293) = VALUE abap_bool( ).
    DATA(t294) = CAST zlnt_runtime_opti_4ba3bdccd169( t280 ).
    IF t294 IS INITIAL.
      t293 = abap_true.
    ELSEIF t294->has = abap_false.
      t293 = abap_true.
    ENDIF.
    IF t293 = abap_true.
      DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t295.
      t292 = t295.
    ELSE.
      DATA t296 TYPE string.
      DATA t297 TYPE string.
      DATA(t298) = CAST zlnt_runtime_opti_4ba3bdccd169( t280 ).
      t297 = t298->value.
      DATA(t299) = strlen( t297 ).
      t296 = t297.
      IF t296 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t296 TO UPPER CASE.
      ELSE.
        t296 = zlnt_runtime_uppe_91169605024d=>full( t296 ).
      ENDIF.
      DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t300->has = abap_true.
      t300->value = t296.
      t292 = t300.
    ENDIF.
    t279 = t292.
    t278 = t279.
    DATA t301 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t302) = CAST zcl_lnt_abstract_type( t98 ).
    t301 = t302.
    DATA(t303) = VALUE abap_bool( ).
    DATA(t304) = VALUE abap_bool( ).
    DATA t305 TYPE abap_bool.
    DATA t306 TYPE abap_bool.
    DATA(t307) = CAST zcl_lnt_abstract_type( t301 ).
    t306 = xsdbool( t307 IS BOUND AND t307 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t305 = t306.
    IF t306 = abap_true.
      DATA(t308) = VALUE abap_bool( ).
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t309.
      DATA t310 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t311 TYPE REF TO zcl_lnt_ty_table_type.
      DATA(t312) = CAST zcl_lnt_abstract_type( t301 ).
      t311 ?= t312.
      t310 = t311.
      DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t313.
      DATA t314 TYPE REF TO zcl_lnt_itable_key.
      DATA t315 TYPE REF TO zcl_lnt_itable_key.
      DATA t316 TYPE REF TO zcl_lnt_itable_options.
      DATA(t317) = CAST zcl_lnt_ty_table_type( t310 ).
      t316 = t317->options.
      t315 = t316->primary_key.
      t314 = t315.
      DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t318.
      DATA(t319) = VALUE abap_bool( ).
      DATA(t320) = CAST zcl_lnt_itable_key( t314 ).
      IF t320 IS INITIAL.
        t319 = abap_true.
      ENDIF.
      IF t319 = abap_true.
        DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t321.
        t318 = t321.
      ELSE.
        DATA t322 TYPE string.
        DATA t323 TYPE REF TO zcl_lnt_itable_key.
        DATA(t324) = CAST zcl_lnt_itable_key( t314 ).
        t323 = t324.
        t322 = t323->type_cba0.
        DATA(t325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t325->has = abap_true.
        t325->value = t322.
        t318 = t325.
      ENDIF.
      t313 = t318.
      t309 = t313.
      DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t326.
      DATA(t327) = abap_true.
      IF t327 = abap_true.
        DATA(t328) = |HASHED|.
        DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t329->has = abap_true.
        t329->value = t328.
        t326 = t329.
      ELSE.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t330.
        t326 = t330.
      ENDIF.
      DATA(t331) = VALUE abap_bool( ).
      DATA(t332) = VALUE abap_bool( ).
      IF t309 IS BOUND.
        t331 = t309->has.
      ENDIF.
      IF t326 IS BOUND.
        t332 = t326->has.
      ENDIF.
      IF t331 = t332.
        IF t331 = abap_false.
          t308 = abap_true.
        ELSEIF t309->value = t326->value.
          t308 = abap_true.
        ENDIF.
      ENDIF.
      t305 = t308.
    ENDIF.
    t304 = t305.
    IF t305 = abap_true.
      DATA(t333) = VALUE abap_bool( ).
      DATA t334 TYPE REF TO zcl_lnt_abstract_token.
      DATA t335 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t336) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t337) = |USING|.
      t335 = t336->find_direct_token_by_text( i_text = t337 ).
      t334 = t335.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t339.
      t338 = t339.
      DATA(t340) = VALUE abap_bool( ).
      DATA(t341) = CAST zcl_lnt_abstract_token( t334 ).
      IF t341 IS INITIAL.
        t340 = abap_true.
      ENDIF.
      t333 = t340.
      t304 = t333.
    ENDIF.
    t303 = t304.
    IF t304 = abap_true.
      DATA t342 TYPE abap_bool.
      DATA t343 TYPE abap_bool.
      DATA t344 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t345) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t346) = |FROM|.
      t344 = t345->find_direct_token_by_text( i_text = t346 ).
      t343 = xsdbool( t344 IS BOUND ).
      t342 = t343.
      IF t343 = abap_false.
        DATA t347 TYPE abap_bool.
        DATA t348 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t349) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t350) = |TO|.
        t348 = t349->find_direct_token_by_text( i_text = t350 ).
        t347 = xsdbool( t348 IS BOUND ).
        t342 = t347.
      ENDIF.
      t303 = t342.
    ENDIF.
    IF t303 = abap_true.
      DATA t351 TYPE string.
      DATA(t352) = |Implicit or explicit index operation on hashed table is not |.
      t352 = t352 && |possible|.
      t351 = t352.
      DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t354) = CAST zcl_lnt_syntax_input( t2 ).
      t353 = t354->issues.
      DATA t355 TYPE REF TO zcl_lnt_issue.
      DATA(t356) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t357 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t358) = CAST zcl_lnt_statement_node( t1 ).
      t357 = t358->get_first_token( ).
      DATA(t359) = t351.
      DATA t360 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t360.
      t355 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t356 i_token = t357 i_message_26cb = t359 i_fix = t360 ).
      APPEND t355 TO t353->items.
      RETURN.
    ENDIF.
    DATA t361 TYPE abap_bool.
    DATA(t362) = CAST zcl_lnt_abstract_type( t98 ).
    t361 = xsdbool( t362 IS BOUND AND t362 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t361 = abap_true.
      DATA t363 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t363.
      DATA(t364) = abap_true.
      IF t364 = abap_true.
        DATA t365 TYPE REF TO zcl_lnt_abstract_type.
        DATA t366 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t367 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t368) = CAST zcl_lnt_abstract_type( t98 ).
        t367 ?= t368.
        t366 = t367.
        DATA t369 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t370) = CAST zcl_lnt_ty_table_type( t366 ).
        t369 = t370->row_type.
        t365 = t369.
        t363 = t365.
      ELSE.
        DATA t371 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t371.
        t363 = t371.
      ENDIF.
      t119 = t363.
      DATA t372 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t372.
      DATA(t373) = abap_true.
      IF t373 = abap_true.
        DATA t374 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t375) = CAST zcl_lnt_abstract_type( t119 ).
        t374 = t375.
        t372 = t374.
      ELSE.
        DATA t376 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t376.
        t372 = t376.
      ENDIF.
      t98 = t372.
      DATA(t377) = VALUE abap_bool( ).
      DATA t378 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t378.
      DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t380) = CAST zlnt_runtime_opti_4ba3bdccd169( t278 ).
      t379 = t380.
      DATA t381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t381.
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = CAST zlnt_runtime_opti_4ba3bdccd169( t379 ).
      IF t383 IS INITIAL.
        t382 = abap_true.
      ELSEIF t383->has = abap_false.
        t382 = abap_true.
      ENDIF.
      IF t382 = abap_true.
        DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t384.
        t381 = t384.
      ELSE.
        DATA(t385) = VALUE abap_bool( ).
        DATA t386 TYPE string.
        DATA(t387) = CAST zlnt_runtime_opti_4ba3bdccd169( t379 ).
        t386 = t387->value.
        DATA(t388) = |REFERENCE INTO |.
        DATA(t389) = strlen( t386 ).
        DATA t390 TYPE i.
        DATA(t391) = VALUE i( ).
        DATA(t392) = VALUE string( ).
        t390 = strlen( t388 ).
        IF t390 = 0.
          t385 = abap_true.
        ELSEIF t390 <= t389.
          t391 = 0.
          t392 = t386+t391(t390).
          IF t392 = t388.
            t385 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t393) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t393->has = abap_true.
        t393->value = t385.
        t381 = t393.
      ENDIF.
      t378 = t381.
      IF t378 IS BOUND.
        IF t378->has = abap_true.
          t377 = xsdbool( t378->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t377 = abap_true.
        DATA t394 TYPE REF TO zcl_lnt_data_reference.
        DATA t395 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t396) = CAST zcl_lnt_abstract_type( t98 ).
        t395 = t396.
        DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t397.
        t394 = NEW zcl_lnt_data_reference( i_type_9913 = t395 i_qualified_name = t397 ).
        t98 = t394.
      ENDIF.
    ENDIF.
    DATA t398 TYPE REF TO zcl_lnt_expression_node.
    DATA t399 TYPE REF TO zcl_lnt_expression_node.
    DATA(t400) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t401) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56 ).
    t399 = t400->find_direct_expression( i_type_9913 = t401 ).
    t398 = t399.
    DATA(t402) = VALUE abap_bool( ).
    DATA t403 TYPE REF TO zcl_lnt_expression_node.
    DATA(t404) = CAST zcl_lnt_expression_node( t398 ).
    t403 = t404.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t406.
    t405 = t406.
    DATA(t407) = VALUE abap_bool( ).
    DATA(t408) = VALUE abap_bool( ).
    DATA(t409) = CAST zcl_lnt_expression_node( t403 ).
    IF t409 IS INITIAL.
      t408 = abap_true.
    ENDIF.
    t407 = xsdbool( t408 = abap_false ).
    t402 = t407.
    IF t402 = abap_true.
      DATA t410 TYPE REF TO zcl_lnt_expression_node.
      DATA(t411) = CAST zcl_lnt_expression_node( t398 ).
      t410 = t411.
      DATA(t412) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t413) = CAST zcl_lnt_abstract_type( t119 ).
      DATA t414 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t414.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t410 i_input_967e = t412 i_left_type = t413 i_right_type = t414 ).
    ENDIF.
    DATA(t415) = VALUE abap_bool( ).
    DATA(t416) = VALUE abap_bool( ).
    DATA(t417) = VALUE abap_bool( ).
    DATA(t418) = CAST zlnt_runtime_opti_4ba3bdccd169( t278 ).
    IF t418 IS BOUND.
      IF t418->has = abap_true.
        t417 = xsdbool( strlen( t418->value ) > 0 ).
      ENDIF.
    ENDIF.
    t416 = t417.
    IF t417 = abap_true.
      DATA(t419) = VALUE abap_bool( ).
      DATA t420 TYPE string.
      DATA(t421) = CAST zlnt_runtime_opti_4ba3bdccd169( t278 ).
      t420 = t421->value.
      DATA(t422) = |TRANSPORTING |.
      DATA(t423) = strlen( t420 ).
      DATA t424 TYPE i.
      DATA(t425) = VALUE i( ).
      DATA(t426) = VALUE string( ).
      t424 = strlen( t422 ).
      IF t424 = 0.
        t419 = abap_true.
      ELSEIF t424 <= t423.
        t425 = 0.
        t426 = t420+t425(t424).
        IF t426 = t422.
          t419 = abap_true.
        ENDIF.
      ENDIF.
      t416 = t419.
    ENDIF.
    t415 = t416.
    IF t416 = abap_true.
      DATA(t427) = VALUE abap_bool( ).
      DATA t428 TYPE REF TO zcl_lnt_abstract_token.
      DATA t429 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t430) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t431) = |WHERE|.
      t429 = t430->find_direct_token_by_text( i_text = t431 ).
      t428 = t429.
      DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t433.
      t432 = t433.
      DATA(t434) = VALUE abap_bool( ).
      DATA(t435) = CAST zcl_lnt_abstract_token( t428 ).
      IF t435 IS INITIAL.
        t434 = abap_true.
      ENDIF.
      t427 = t434.
      t415 = t427.
    ENDIF.
    IF t415 = abap_true.
      DATA t436 TYPE string.
      DATA(t437) = |Loop, TRANSPORTING NO FIELDS only with WHERE|.
      t436 = t437.
      DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t439) = CAST zcl_lnt_syntax_input( t2 ).
      t438 = t439->issues.
      DATA t440 TYPE REF TO zcl_lnt_issue.
      DATA(t441) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t442 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t443) = CAST zcl_lnt_statement_node( t1 ).
      t442 = t443->get_first_token( ).
      DATA(t444) = t436.
      DATA t445 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t445.
      t440 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t441 i_token = t442 i_message_26cb = t444 i_fix = t445 ).
      APPEND t440 TO t438->items.
      RETURN.
    ENDIF.
    DATA(t446) = VALUE abap_bool( ).
    DATA(t447) = VALUE abap_bool( ).
    DATA(t448) = VALUE abap_bool( ).
    DATA t449 TYPE REF TO zcl_lnt_abstract_token.
    DATA t450 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t451) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t452) = |USING|.
    t450 = t451->find_direct_token_by_text( i_text = t452 ).
    t449 = t450.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    t453 = t454.
    DATA(t455) = VALUE abap_bool( ).
    DATA(t456) = VALUE abap_bool( ).
    DATA(t457) = CAST zcl_lnt_abstract_token( t449 ).
    IF t457 IS INITIAL.
      t456 = abap_true.
    ENDIF.
    t455 = xsdbool( t456 = abap_false ).
    t448 = t455.
    t447 = t448.
    IF t448 = abap_true.
      DATA(t458) = VALUE abap_bool( ).
      DATA t459 TYPE REF TO zcl_lnt_expression_node.
      DATA(t460) = CAST zcl_lnt_expression_node( t398 ).
      t459 = t460.
      DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t462.
      t461 = t462.
      DATA(t463) = VALUE abap_bool( ).
      DATA(t464) = VALUE abap_bool( ).
      DATA(t465) = CAST zcl_lnt_expression_node( t459 ).
      IF t465 IS INITIAL.
        t464 = abap_true.
      ENDIF.
      t463 = xsdbool( t464 = abap_false ).
      t458 = t463.
      t447 = t458.
    ENDIF.
    t446 = t447.
    IF t447 = abap_true.
      DATA t466 TYPE abap_bool.
      DATA(t467) = CAST zcl_lnt_abstract_type( t301 ).
      t466 = xsdbool( t467 IS BOUND AND t467 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t446 = t466.
    ENDIF.
    IF t446 = abap_true.
      DATA t468 TYPE REF TO zcl_lnt_expression_node.
      DATA t469 TYPE REF TO zcl_lnt_expression_node.
      DATA(t470) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t471) = |KEY|.
      t469 = t470->find_expression_after_token( i_text = t471 ).
      t468 = t469.
      DATA t472 TYPE REF TO zcl_lnt_itable_key.
      DATA t473 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t473.
      t472 = t473.
      DATA(t474) = VALUE abap_bool( ).
      DATA t475 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t475.
      DATA t476 TYPE REF TO zcl_lnt_expression_node.
      DATA(t477) = CAST zcl_lnt_expression_node( t468 ).
      t476 = t477.
      DATA t478 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t478.
      DATA(t479) = VALUE abap_bool( ).
      DATA(t480) = CAST zcl_lnt_expression_node( t476 ).
      IF t480 IS INITIAL.
        t479 = abap_true.
      ENDIF.
      IF t479 = abap_true.
        DATA t481 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t481.
        t478 = t481.
      ELSE.
        DATA t482 TYPE REF TO zif_lnt_statement_runnable.
        DATA t483 TYPE REF TO zcl_lnt_expression_node.
        DATA(t484) = CAST zcl_lnt_expression_node( t476 ).
        t483 = t484.
        t482 = t483->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t478 = t482.
      ENDIF.
      t475 = t478.
      t474 = xsdbool( t475 IS BOUND AND t475 IS INSTANCE OF zcl_lnt_simple_name ).
      IF t474 = abap_true.
        DATA t485 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t485.
        DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t488 TYPE REF TO zcl_lnt_itable_options.
        DATA t489 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t490 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t491) = CAST zcl_lnt_abstract_type( t301 ).
        t490 ?= t491.
        t489 = t490.
        DATA t492 TYPE REF TO zcl_lnt_itable_options.
        DATA(t493) = CAST zcl_lnt_ty_table_type( t489 ).
        t492 = t493->options.
        t488 = t492.
        t487 = t488->secondary.
        t486 = t487.
        DATA t494 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t494.
        DATA(t495) = VALUE abap_bool( ).
        DATA(t496) = CAST zlnt_runtime_arra_c22708faf2e3( t486 ).
        IF t496 IS INITIAL.
          t495 = abap_true.
        ENDIF.
        IF t495 = abap_true.
          DATA t497 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t497.
          t494 = t497.
        ELSE.
          DATA t498 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t498.
          DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t500 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t501) = CAST zlnt_runtime_arra_c22708faf2e3( t486 ).
          t500 = t501.
          t499 = t500.
          DATA t502 TYPE i.
          DATA t503 TYPE i.
          DATA(t504) = CAST zlnt_runtime_arra_c22708faf2e3( t499 ).
          t503 = lines( t504->items ).
          t502 = t503.
          DATA t505 TYPE i.
          DATA(t506) = 0.
          t505 = t506.
          DATA t507 TYPE REF TO zcl_lnt_itable_key.
          DATA t508 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t508.
          t507 = t508.
          DO.
            DATA t509 TYPE abap_bool.
            DATA(t510) = t505.
            DATA(t511) = t502.
            t509 = xsdbool( t510 < t511 ).
            IF t509 = abap_false.
              EXIT.
            ENDIF.
            DATA t512 TYPE REF TO zcl_lnt_itable_key.
            DATA t513 TYPE REF TO zcl_lnt_itable_key.
            DATA t514 TYPE REF TO zcl_lnt_itable_key.
            DATA(t515) = CAST zlnt_runtime_arra_c22708faf2e3( t499 ).
            DATA(t516) = t505.
            DATA t517 TYPE REF TO object.
            t517 = t515->get( p0 = t516 ).
            t514 ?= t517.
            t513 = t514.
            t512 = t513.
            DATA(t518) = VALUE abap_bool( ).
            DATA t519 TYPE string.
            DATA t520 TYPE string.
            DATA(t521) = CAST zcl_lnt_itable_key( t512 ).
            t520 = t521->name.
            DATA(t522) = strlen( t520 ).
            t519 = t520.
            IF t519 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t519 TO UPPER CASE.
            ELSE.
              t519 = zlnt_runtime_uppe_91169605024d=>full( t519 ).
            ENDIF.
            DATA t523 TYPE string.
            DATA t524 TYPE string.
            DATA t525 TYPE REF TO zcl_lnt_abstract_token.
            DATA t526 TYPE REF TO zcl_lnt_abstract_token.
            DATA t527 TYPE REF TO zcl_lnt_expression_node.
            DATA(t528) = CAST zcl_lnt_expression_node( t468 ).
            t527 = t528.
            t526 = t527->get_first_token( ).
            t525 = t526.
            DATA t529 TYPE string.
            DATA(t530) = CAST zcl_lnt_abstract_token( t525 ).
            t529 = t530->str.
            t524 = t529.
            DATA(t531) = strlen( t524 ).
            t523 = t524.
            IF t523 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t523 TO UPPER CASE.
            ELSE.
              t523 = zlnt_runtime_uppe_91169605024d=>full( t523 ).
            ENDIF.
            t518 = xsdbool( t519 = t523 ).
            IF t518 = abap_true.
              DATA t532 TYPE REF TO zcl_lnt_itable_key.
              CLEAR t532.
              DATA(t533) = abap_true.
              IF t533 = abap_true.
                DATA(t534) = CAST zcl_lnt_itable_key( t512 ).
                t532 = t534.
              ELSE.
                DATA t535 TYPE REF TO zcl_lnt_itable_key.
                CLEAR t535.
                t532 = t535.
              ENDIF.
              t507 = t532.
              EXIT.
            ENDIF.
            DATA t536 TYPE i.
            DATA(t537) = t505.
            DATA(t538) = 1.
            t536 = t537 + t538.
            t505 = t536.
          ENDDO.
          DATA(t539) = CAST zcl_lnt_itable_key( t507 ).
          t498 = t539.
          t494 = t498.
        ENDIF.
        t485 = t494.
        t472 = t485.
        DATA(t540) = VALUE abap_bool( ).
        DATA t541 TYPE REF TO zcl_lnt_itable_key.
        DATA(t542) = CAST zcl_lnt_itable_key( t472 ).
        t541 = t542.
        DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t544.
        t543 = t544.
        DATA(t545) = VALUE abap_bool( ).
        DATA(t546) = CAST zcl_lnt_itable_key( t541 ).
        IF t546 IS INITIAL.
          t545 = abap_true.
        ENDIF.
        t540 = t545.
        IF t540 = abap_true.
          DATA(t547) = VALUE string( ).
          DATA(t548) = VALUE string( ).
          DATA(t549) = VALUE string( ).
          DATA(t550) = |Key |.
          DATA(t551) = VALUE string( ).
          DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t552.
          DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t553.
          DATA t554 TYPE REF TO zcl_lnt_expression_node.
          DATA t555 TYPE REF TO zcl_lnt_expression_node.
          DATA(t556) = CAST zcl_lnt_expression_node( t468 ).
          t555 = t556.
          t554 = t555.
          DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t557.
          DATA(t558) = VALUE abap_bool( ).
          DATA(t559) = CAST zcl_lnt_expression_node( t554 ).
          IF t559 IS INITIAL.
            t558 = abap_true.
          ENDIF.
          IF t558 = abap_true.
            DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t560.
            t557 = t560.
          ELSE.
            DATA t561 TYPE string.
            DATA(t562) = CAST zcl_lnt_expression_node( t554 ).
            t561 = t562->concat_tokens( ).
            DATA(t563) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t563->has = abap_true.
            t563->value = t561.
            t557 = t563.
          ENDIF.
          t553 = t557.
          t552 = t553.
          DATA(t564) = VALUE string( ).
          DATA(t565) = VALUE abap_bool( ).
          DATA(t566) = CAST zlnt_runtime_opti_4ba3bdccd169( t552 ).
          IF t566 IS INITIAL.
            t565 = abap_true.
          ELSEIF t566->has = abap_false.
            t565 = abap_true.
          ENDIF.
          IF t565 = abap_true.
            DATA(t567) = |undefined|.
            t564 = t567.
          ELSE.
            DATA t568 TYPE string.
            DATA(t569) = CAST zlnt_runtime_opti_4ba3bdccd169( t552 ).
            t568 = t569->value.
            t564 = t568.
          ENDIF.
          t551 = t564.
          DATA(t570) = strlen( t550 ).
          t549 = |{ t550 }{ t551 }|.
          DATA(t571) = | not found in table type|.
          DATA(t572) = strlen( t549 ).
          t548 = |{ t549 }{ t571 }|.
          t547 = t548.
          DATA t573 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t574) = CAST zcl_lnt_syntax_input( t2 ).
          t573 = t574->issues.
          DATA t575 TYPE REF TO zcl_lnt_issue.
          DATA(t576) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t577 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t578) = CAST zcl_lnt_statement_node( t1 ).
          t577 = t578->get_first_token( ).
          DATA(t579) = t547.
          DATA t580 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t580.
          t575 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t576 i_token = t577 i_message_26cb = t579 i_fix = t580 ).
          APPEND t575 TO t573->items.
          RETURN.
        ENDIF.
        DATA(t581) = VALUE abap_bool( ).
        DATA(t582) = VALUE abap_bool( ).
        DATA t583 TYPE REF TO zcl_lnt_abap_release.
        DATA t584 TYPE REF TO zcl_lnt_current_scope.
        DATA t585 TYPE REF TO zcl_lnt_current_scope.
        DATA(t586) = CAST zcl_lnt_syntax_input( t2 ).
        t585 = t586->scope.
        t584 = t585.
        DATA t587 TYPE REF TO zcl_lnt_abap_release.
        DATA t588 TYPE REF TO zif_lnt_configuration.
        DATA t589 TYPE REF TO zif_lnt_registry.
        DATA(t590) = CAST zcl_lnt_current_scope( t584 ).
        t589 = t590->reg.
        t588 = t589->get_config( ).
        t587 = t588->get_release( ).
        t583 = t587.
        DATA t591 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t591.
        DATA t592 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t592.
        DATA t593 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t593.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t593 = zcl_lnt_version_module=>release_b8cd.
        DATA(t594) = |v740sp02|.
        t592 = t593->get( p0 = t594 ).
        t591 = t592.
        t582 = zcl_lnt_version_module=>release_at_least( i_running = t583 i_required = t591 ).
        t581 = xsdbool( t582 = abap_false ).
        IF t581 = abap_true.
          DATA t595 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t595.
          DATA t596 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t596.
          DATA t597 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t598 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t598.
          t597 = t598.
          DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t600 TYPE REF TO zcl_lnt_expression_node.
          DATA(t601) = CAST zcl_lnt_expression_node( t398 ).
          t600 = t601.
          DATA(t602) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d126_c330c74d8713 ).
          t599 = t600->find_all_expressions_recursive( i_type_9913 = t602 ).
          DATA t603 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t603.
          DATA t604 TYPE REF TO object.
          CLEAR t604.
          LOOP AT t599->items INTO t604.
            t603 ?= t604.
            DATA(t605) = CAST zlnt_runtime_arra_8ecd6afe19e0( t597 ).
            DATA t606 TYPE string.
            DATA t607 TYPE string.
            DATA(t608) = CAST zcl_lnt_expression_node( t603 ).
            t607 = t608->concat_tokens( ).
            DATA(t609) = strlen( t607 ).
            t606 = t607.
            IF t606 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t606 TO UPPER CASE.
            ELSE.
              t606 = zlnt_runtime_uppe_91169605024d=>full( t606 ).
            ENDIF.
            APPEND t606 TO t605->items.
          ENDLOOP.
          DATA(t610) = CAST zlnt_runtime_arra_8ecd6afe19e0( t597 ).
          t596 = t610.
          t595 = t596.
          DATA t611 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t612 TYPE REF TO zcl_lnt_itable_key.
          DATA(t613) = CAST zcl_lnt_itable_key( t472 ).
          t612 = t613.
          t611 = t612->key_fields.
          DATA(t614) = VALUE string( ).
          LOOP AT t611->items INTO t614.
            DATA(t615) = VALUE abap_bool( ).
            DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t616.
            DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t617.
            DATA t618 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t619) = CAST zlnt_runtime_arra_8ecd6afe19e0( t595 ).
            t618 = t619.
            DATA t620 TYPE i.
            DATA t621 TYPE i.
            DATA(t622) = CAST zlnt_runtime_arra_8ecd6afe19e0( t618 ).
            t621 = lines( t622->items ).
            t620 = t621.
            DATA t623 TYPE i.
            DATA(t624) = 0.
            t623 = t624.
            DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t626.
            t625 = t626.
            DO.
              DATA t627 TYPE abap_bool.
              DATA(t628) = t623.
              DATA(t629) = t620.
              t627 = xsdbool( t628 < t629 ).
              IF t627 = abap_false.
                EXIT.
              ENDIF.
              DATA t630 TYPE string.
              DATA t631 TYPE string.
              DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t633) = CAST zlnt_runtime_arra_8ecd6afe19e0( t618 ).
              DATA(t634) = t623.
              t632 = t633->get( p0 = t634 ).
              t631 = t632->value.
              t630 = t631.
              DATA(t635) = VALUE abap_bool( ).
              DATA(t636) = t630.
              DATA(t637) = VALUE string( ).
              DATA t638 TYPE string.
              DATA(t639) = t614.
              DATA(t640) = strlen( t639 ).
              t638 = t639.
              IF t638 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t638 TO UPPER CASE.
              ELSE.
                t638 = zlnt_runtime_uppe_91169605024d=>full( t638 ).
              ENDIF.
              DATA(t641) = | IS INITIAL|.
              DATA(t642) = strlen( t638 ).
              t637 = |{ t638 }{ t641 }|.
              t635 = xsdbool( t636 = t637 ).
              IF t635 = abap_true.
                DATA t643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t643.
                DATA(t644) = abap_true.
                IF t644 = abap_true.
                  DATA(t645) = t630.
                  DATA(t646) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t646->has = abap_true.
                  t646->value = t645.
                  t643 = t646.
                ELSE.
                  DATA t647 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t647.
                  t643 = t647.
                ENDIF.
                t625 = t643.
                EXIT.
              ENDIF.
              DATA t648 TYPE i.
              DATA(t649) = t623.
              DATA(t650) = 1.
              t648 = t649 + t650.
              t623 = t648.
            ENDDO.
            DATA(t651) = CAST zlnt_runtime_opti_4ba3bdccd169( t625 ).
            t617 = t651.
            t616 = t617.
            DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t653.
            t652 = t653.
            DATA(t654) = VALUE abap_bool( ).
            DATA(t655) = VALUE abap_bool( ).
            DATA(t656) = CAST zlnt_runtime_opti_4ba3bdccd169( t616 ).
            IF t656 IS INITIAL.
              t655 = abap_true.
            ELSEIF t656->has = abap_false.
              t655 = abap_true.
            ENDIF.
            t654 = xsdbool( t655 = abap_false ).
            t615 = t654.
            IF t615 = abap_true.
              DATA t657 TYPE string.
              DATA(t658) = |Loop, key check with IS INITIAL cannot optimized before 7.40|.
              t658 = t658 && | SP02|.
              t657 = t658.
              DATA t659 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t660) = CAST zcl_lnt_syntax_input( t2 ).
              t659 = t660->issues.
              DATA t661 TYPE REF TO zcl_lnt_issue.
              DATA(t662) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t663 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t664) = CAST zcl_lnt_statement_node( t1 ).
              t663 = t664->get_first_token( ).
              DATA(t665) = t657.
              DATA t666 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t666.
              t661 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t662 i_token = t663 i_message_26cb = t665 i_fix = t666 ).
              APPEND t661 TO t659->items.
              RETURN.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t667 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t667.
    DATA t668 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t668.
    DATA t669 TYPE REF TO zcl_lnt_expression_node.
    DATA(t670) = CAST zcl_lnt_expression_node( t7 ).
    t669 = t670.
    DATA t671 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t671.
    DATA(t672) = VALUE abap_bool( ).
    DATA(t673) = CAST zcl_lnt_expression_node( t669 ).
    IF t673 IS INITIAL.
      t672 = abap_true.
    ENDIF.
    IF t672 = abap_true.
      DATA t674 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t674.
      t671 = t674.
    ELSE.
      DATA t675 TYPE REF TO zcl_lnt_expression_node.
      DATA t676 TYPE REF TO zcl_lnt_expression_node.
      DATA(t677) = CAST zcl_lnt_expression_node( t669 ).
      t676 = t677.
      DATA(t678) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t675 = t676->find_direct_expression( i_type_9913 = t678 ).
      t671 = t675.
    ENDIF.
    t668 = t671.
    t667 = t668.
    DATA t679 TYPE abap_bool.
    DATA(t680) = CAST zcl_lnt_expression_node( t667 ).
    t679 = xsdbool( t680 IS BOUND ).
    IF t679 = abap_true.
      DATA t681 TYPE REF TO zcl_lnt_expression_node.
      DATA(t682) = CAST zcl_lnt_expression_node( t667 ).
      t681 = t682.
      DATA(t683) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t684) = CAST zcl_lnt_abstract_type( t98 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t681 i_input_967e = t683 i_type_9913 = t684 ).
    ENDIF.
    DATA(t685) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    DATA t686 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t686.
    DATA t687 TYPE REF TO object.
    CLEAR t687.
    LOOP AT t685->items INTO t687.
      t686 ?= t687.
      DATA t688 TYPE abap_bool.
      DATA(t689) = CAST zcl_lnt_expression_node( t686 ).
      DATA t690 TYPE REF TO zcl_lnt_expression_node.
      DATA(t691) = CAST zcl_lnt_expression_node( t61 ).
      t690 = t691.
      t688 = xsdbool( t689 = t690 ).
      IF t688 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t692 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t692.
      DATA t693 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t693.
      DATA(t694) = abap_true.
      IF t694 = abap_true.
        DATA(t695) = CAST zcl_lnt_expression_node( t686 ).
        t693 = t695.
      ELSE.
        DATA t696 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t696.
        t693 = t696.
      ENDIF.
      DATA(t697) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t698 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t698.
      DATA t699 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t699.
      DATA t700 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t700.
      DATA t701 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t701.
      t692 = zcl_lnt_sy_source=>run_syntax( i_node = t693 i_input_967e = t697 i_target_type = t698 i_write_reference = t699 i_allow_generic_deference = t700 i_read_reference = t701 ).
    ENDLOOP.
    DATA t702 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t702.
    DATA t703 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t703.
    DATA t704 TYPE REF TO zcl_lnt_expression_node.
    DATA(t705) = CAST zcl_lnt_expression_node( t7 ).
    t704 = t705.
    DATA t706 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t706.
    DATA(t707) = VALUE abap_bool( ).
    DATA(t708) = CAST zcl_lnt_expression_node( t704 ).
    IF t708 IS INITIAL.
      t707 = abap_true.
    ENDIF.
    IF t707 = abap_true.
      DATA t709 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t709.
      t706 = t709.
    ELSE.
      DATA t710 TYPE REF TO zcl_lnt_expression_node.
      DATA t711 TYPE REF TO zcl_lnt_expression_node.
      DATA(t712) = CAST zcl_lnt_expression_node( t704 ).
      t711 = t712.
      DATA(t713) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c ).
      t710 = t711->find_direct_expression( i_type_9913 = t713 ).
      t706 = t710.
    ENDIF.
    t703 = t706.
    t702 = t703.
    DATA t714 TYPE abap_bool.
    DATA(t715) = CAST zcl_lnt_expression_node( t702 ).
    t714 = xsdbool( t715 IS BOUND ).
    IF t714 = abap_true.
      DATA t716 TYPE REF TO zcl_lnt_expression_node.
      DATA(t717) = CAST zcl_lnt_expression_node( t702 ).
      t716 = t717.
      DATA(t718) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t719) = CAST zcl_lnt_abstract_type( t98 ).
      zcl_lnt_sy_inline_fs=>run_syntax( i_node = t716 i_input_967e = t718 i_type_9913 = t719 ).
    ELSE.
      DATA t720 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t720.
      DATA t721 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t721.
      DATA t722 TYPE REF TO zcl_lnt_expression_node.
      DATA(t723) = CAST zcl_lnt_expression_node( t3 ).
      t722 = t723.
      DATA t724 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t724.
      DATA(t725) = VALUE abap_bool( ).
      DATA(t726) = CAST zcl_lnt_expression_node( t722 ).
      IF t726 IS INITIAL.
        t725 = abap_true.
      ENDIF.
      IF t725 = abap_true.
        DATA t727 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t727.
        t724 = t727.
      ELSE.
        DATA t728 TYPE REF TO zcl_lnt_expression_node.
        DATA t729 TYPE REF TO zcl_lnt_expression_node.
        DATA(t730) = CAST zcl_lnt_expression_node( t722 ).
        t729 = t730.
        DATA(t731) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c ).
        t728 = t729->find_direct_expression( i_type_9913 = t731 ).
        t724 = t728.
      ENDIF.
      t721 = t724.
      t720 = t721.
      DATA t732 TYPE abap_bool.
      DATA(t733) = CAST zcl_lnt_expression_node( t720 ).
      t732 = xsdbool( t733 IS BOUND ).
      IF t732 = abap_true.
        DATA t734 TYPE REF TO zcl_lnt_expression_node.
        DATA(t735) = CAST zcl_lnt_expression_node( t720 ).
        t734 = t735.
        DATA(t736) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t737) = CAST zcl_lnt_abstract_type( t98 ).
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t734 i_input_967e = t736 i_type_9913 = t737 ).
      ENDIF.
    ENDIF.
    DATA t738 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t739) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t740) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t738 = t739->find_direct_expressions( i_type_9913 = t740 ).
    DATA t741 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t741.
    DATA t742 TYPE REF TO object.
    CLEAR t742.
    LOOP AT t738->items INTO t742.
      t741 ?= t742.
      DATA(t743) = CAST zcl_lnt_expression_node( t741 ).
      DATA(t744) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t743 i_input_967e = t744 ).
    ENDLOOP.
    DATA t745 TYPE REF TO zcl_lnt_expression_node.
    DATA t746 TYPE REF TO zcl_lnt_expression_node.
    DATA(t747) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t748) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604 ).
    t746 = t747->find_direct_expression( i_type_9913 = t748 ).
    t745 = t746.
    DATA t749 TYPE abap_bool.
    DATA(t750) = CAST zcl_lnt_expression_node( t745 ).
    t749 = xsdbool( t750 IS BOUND ).
    IF t749 = abap_true.
      DATA t751 TYPE REF TO zcl_lnt_expression_node.
      DATA(t752) = CAST zcl_lnt_expression_node( t745 ).
      t751 = t752.
      DATA(t753) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_loop_group_by=>run_syntax( i_node = t751 i_input_967e = t753 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d904_14bc253493dd.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
