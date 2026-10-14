* TS: src/abap/5_syntax/statements/read_table.ts:14:1 ReadTable
CLASS zcl_lnt_sy_read_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_read_table IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = CAST zcl_lnt_statement_node( t1 ).
    t5 = t6->concat_tokens(  ).
    DATA(t7) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = CAST zcl_lnt_statement_node( t1 ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    APPEND t15 TO t14->items.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2 ).
    APPEND t17 TO t16->items.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t11 = t18.
    t9 = t10->find_direct_expressions_multi( i_type_9913 = t11 ).
    t8 = t9.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    READ TABLE t21->items INDEX 1 INTO t22.
    t20 ?= t22.
    t19 = t20.
    DATA t23 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t24.
    DATA t25 TYPE abap_bool.
    DATA(t26) = CAST zcl_lnt_expression_node( t19 ).
    t25 = xsdbool( t26 IS BOUND ).
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = CAST zcl_lnt_expression_node( t19 ).
        t28 = t30.
      ELSE.
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t31.
        t28 = t31.
      ENDIF.
      DATA(t32) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t36.
      t27 = zcl_lnt_sy_source=>run_syntax( i_node = t28 i_input_967e = t32 i_target_type = t33 i_write_reference = t34 i_allow_generic_deference = t35 i_read_reference = t36 ).
      t24 = t27.
    ELSE.
      DATA t37 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t37.
      t24 = t37.
    ENDIF.
    t23 = t24.
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t40) = CAST zcl_lnt_abstract_type( t23 ).
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    t41 = t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = CAST zcl_lnt_abstract_type( t39 ).
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    t38 = t43.
    IF t38 = abap_true.
      DATA t45 TYPE string.
      DATA(t46) = |No source type determined, read table|.
      t45 = t46.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t48) = CAST zcl_lnt_syntax_input( t2 ).
      t47 = t48->issues.
      DATA t49 TYPE REF TO zcl_lnt_issue.
      DATA(t50) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t52) = CAST zcl_lnt_statement_node( t1 ).
      t51 = t52->get_first_token(  ).
      DATA(t53) = t45.
      DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t54.
      t49 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t50 i_token = t51 i_message_26cb = t53 i_fix = t54 ).
      APPEND t49 TO t47->items.
      RETURN.
    ELSE.
      DATA t55 TYPE abap_bool.
      DATA(t56) = CAST zcl_lnt_abstract_type( t23 ).
      t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t55 = abap_true.
      ELSE.
        DATA t57 TYPE abap_bool.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE abap_bool.
        DATA(t60) = CAST zcl_lnt_abstract_type( t23 ).
        t59 = xsdbool( t60 IS BOUND AND t60 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t58 = xsdbool( t59 = abap_false ).
        t57 = t58.
        IF t58 = abap_true.
          DATA t61 TYPE abap_bool.
          DATA t62 TYPE abap_bool.
          DATA(t63) = CAST zcl_lnt_abstract_type( t23 ).
          t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_void_type ).
          t61 = xsdbool( t62 = abap_false ).
          t57 = t61.
        ENDIF.
        IF t57 = abap_true.
          DATA t64 TYPE string.
          DATA(t65) = |Read table, not a table type|.
          t64 = t65.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t67) = CAST zcl_lnt_syntax_input( t2 ).
          t66 = t67->issues.
          DATA t68 TYPE REF TO zcl_lnt_issue.
          DATA(t69) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t71) = CAST zcl_lnt_statement_node( t1 ).
          t70 = t71->get_first_token(  ).
          DATA(t72) = t64.
          DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t73.
          t68 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t69 i_token = t70 i_message_26cb = t72 i_fix = t73 ).
          APPEND t68 TO t66->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zcl_lnt_abstract_type.
    DATA t75 TYPE REF TO zcl_lnt_abstract_type.
    DATA t76 TYPE REF TO zif_lnt_union_297610d4.
    DATA t77 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t78) = CAST zcl_lnt_abstract_type( t23 ).
    t77 = t78.
    t76 ?= t77.
    t75 ?= t76.
    t74 = t75.
    DATA t79 TYPE abap_bool.
    DATA(t80) = CAST zcl_lnt_abstract_type( t74 ).
    t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t79 = abap_true.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type.
      DATA t82 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t83 TYPE REF TO zcl_lnt_ty_table_type.
      DATA(t84) = CAST zcl_lnt_abstract_type( t74 ).
      t83 ?= t84.
      t82 = t83.
      DATA t85 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t86) = CAST zcl_lnt_ty_table_type( t82 ).
      t85 = t86->row_type.
      t81 = t85.
      t74 = t81.
    ENDIF.
    DATA t87 TYPE REF TO zcl_lnt_expression_node.
    DATA t88 TYPE REF TO zcl_lnt_expression_node.
    DATA(t89) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t90) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7 ).
    t88 = t89->find_direct_expression( i_type_9913 = t90 ).
    t87 = t88.
    DATA(t91) = VALUE abap_bool( ).
    DATA t92 TYPE REF TO zcl_lnt_expression_node.
    DATA(t93) = CAST zcl_lnt_expression_node( t87 ).
    t92 = t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    t94 = t95.
    DATA(t96) = VALUE abap_bool( ).
    DATA(t97) = VALUE abap_bool( ).
    DATA(t98) = CAST zcl_lnt_expression_node( t92 ).
    IF t98 IS INITIAL.
      t97 = abap_true.
    ENDIF.
    t96 = xsdbool( t97 = abap_false ).
    t91 = t96.
    IF t91 = abap_true.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      DATA(t100) = CAST zcl_lnt_expression_node( t87 ).
      t99 = t100.
      DATA(t101) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t102) = CAST zcl_lnt_abstract_type( t74 ).
      zcl_lnt_sy_cmpnnt_cmpr_smpl=>run_syntax( i_node = t99 i_input_967e = t101 i_row_type = t102 ).
    ENDIF.
    DATA t103 TYPE REF TO zcl_lnt_expression_node.
    DATA t104 TYPE REF TO zcl_lnt_expression_node.
    DATA(t105) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t106) = |INDEX|.
    t104 = t105->find_expression_after_token( i_text = t106 ).
    t103 = t104.
    DATA t107 TYPE abap_bool.
    DATA(t108) = CAST zcl_lnt_expression_node( t103 ).
    t107 = xsdbool( t108 IS BOUND ).
    IF t107 = abap_true.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t110.
      DATA t111 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA t113 TYPE REF TO zcl_lnt_expression_node.
        DATA(t114) = CAST zcl_lnt_expression_node( t103 ).
        t113 = t114.
        t111 = t113.
      ELSE.
        DATA t115 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t115.
        t111 = t115.
      ENDIF.
      DATA(t116) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t117 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t117.
      DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t118.
      DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t119.
      DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t120.
      t110 = zcl_lnt_sy_source=>run_syntax( i_node = t111 i_input_967e = t116 i_target_type = t117 i_write_reference = t118 i_allow_generic_deference = t119 i_read_reference = t120 ).
      t109 = t110.
      DATA t121 TYPE abap_bool.
      DATA t122 TYPE abap_bool.
      DATA t123 TYPE REF TO zcl_lnt_type_utils.
      DATA t124 TYPE REF TO zcl_lnt_current_scope.
      DATA(t125) = CAST zcl_lnt_syntax_input( t2 ).
      t124 = t125->scope.
      t123 = NEW zcl_lnt_type_utils( i_scope = t124 ).
      DATA(t126) = CAST zcl_lnt_abstract_type( t109 ).
      DATA t127 TYPE REF TO zcl_lnt_integer_type.
      DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t128.
      t127 = zcl_lnt_integer_type=>get_db65( i_input_967e = t128 ).
      t122 = t123->is_assignable( i_source_75cf = t126 i_target_5f8a = t127 ).
      DATA(t129) = abap_false.
      t121 = xsdbool( t122 = t129 ).
      IF t121 = abap_true.
        DATA(t130) = VALUE string( ).
        DATA(t131) = VALUE string( ).
        DATA(t132) = |READ TABLE, INDEX must be simple, got |.
        DATA(t133) = VALUE string( ).
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t136.
        DATA t137 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t137.
        DATA t138 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t139) = CAST zcl_lnt_abstract_type( t109 ).
        t138 = t139.
        DATA t140 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t140.
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = CAST zcl_lnt_abstract_type( t138 ).
        IF t142 IS INITIAL.
          t141 = abap_true.
        ENDIF.
        IF t141 = abap_true.
          DATA t143 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t143.
          t140 = t143.
        ELSE.
          DATA t144 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t145 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t146) = CAST zcl_lnt_abstract_type( t138 ).
          t145 = t146.
          t144 = t145->zlnt_builtin_clas_3f891b097658( ).
          t140 = t144.
        ENDIF.
        t137 = t140.
        t136 = t137.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( t136 ).
        IF t149 IS INITIAL.
          t148 = abap_true.
        ENDIF.
        IF t148 = abap_true.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          t147 = t150.
        ELSE.
          DATA t151 TYPE string.
          DATA t152 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA(t153) = CAST zlnt_runtime_clas_a39833db3295( t136 ).
          t152 = t153.
          t151 = t152->name.
          DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t154->has = abap_true.
          t154->value = t151.
          t147 = t154.
        ENDIF.
        t135 = t147.
        t134 = t135.
        DATA(t155) = VALUE string( ).
        DATA(t156) = VALUE abap_bool( ).
        DATA(t157) = CAST zlnt_runtime_opti_4ba3bdccd169( t134 ).
        IF t157 IS INITIAL.
          t156 = abap_true.
        ELSEIF t157->has = abap_false.
          t156 = abap_true.
        ENDIF.
        IF t156 = abap_true.
          DATA(t158) = |undefined|.
          t155 = t158.
        ELSE.
          DATA t159 TYPE string.
          DATA(t160) = CAST zlnt_runtime_opti_4ba3bdccd169( t134 ).
          t159 = t160->value.
          t155 = t159.
        ENDIF.
        t133 = t155.
        DATA(t161) = strlen( t132 ).
        t131 = |{ t132 }{ t133 }|.
        t130 = t131.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t163) = CAST zcl_lnt_syntax_input( t2 ).
        t162 = t163->issues.
        DATA t164 TYPE REF TO zcl_lnt_issue.
        DATA(t165) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t166 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t167) = CAST zcl_lnt_statement_node( t1 ).
        t166 = t167->get_first_token(  ).
        DATA(t168) = t130.
        DATA t169 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t169.
        t164 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t165 i_token = t166 i_message_26cb = t168 i_fix = t169 ).
        APPEND t164 TO t162->items.
        RETURN.
      ELSE.
        DATA t170 TYPE abap_bool.
        DATA t171 TYPE abap_bool.
        DATA(t172) = CAST zcl_lnt_abstract_type( t23 ).
        t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t170 = t171.
        IF t171 = abap_true.
          DATA(t173) = VALUE abap_bool( ).
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA t175 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t176 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t177) = CAST zcl_lnt_abstract_type( t23 ).
          t176 ?= t177.
          t175 = t176.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          DATA t179 TYPE REF TO zcl_lnt_itable_key.
          DATA t180 TYPE REF TO zcl_lnt_itable_key.
          DATA t181 TYPE REF TO zcl_lnt_itable_options.
          DATA(t182) = CAST zcl_lnt_ty_table_type( t175 ).
          t181 = t182->options.
          t180 = t181->primary_key.
          t179 = t180.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = CAST zcl_lnt_itable_key( t179 ).
          IF t185 IS INITIAL.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            t183 = t186.
          ELSE.
            DATA t187 TYPE string.
            DATA t188 TYPE REF TO zcl_lnt_itable_key.
            DATA(t189) = CAST zcl_lnt_itable_key( t179 ).
            t188 = t189.
            t187 = t188->type_cba0.
            DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t190->has = abap_true.
            t190->value = t187.
            t183 = t190.
          ENDIF.
          t178 = t183.
          t174 = t178.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          DATA(t192) = abap_true.
          IF t192 = abap_true.
            DATA(t193) = |HASHED|.
            DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t194->has = abap_true.
            t194->value = t193.
            t191 = t194.
          ELSE.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            t191 = t195.
          ENDIF.
          DATA(t196) = VALUE abap_bool( ).
          DATA(t197) = VALUE abap_bool( ).
          IF t174 IS BOUND.
            t196 = t174->has.
          ENDIF.
          IF t191 IS BOUND.
            t197 = t191->has.
          ENDIF.
          IF t196 = t197.
            IF t196 = abap_false.
              t173 = abap_true.
            ELSEIF t174->value = t191->value.
              t173 = abap_true.
            ENDIF.
          ENDIF.
          t170 = t173.
        ENDIF.
        IF t170 = abap_true.
          DATA t198 TYPE string.
          DATA(t199) = |INDEX on hashed table not possible|.
          t198 = t199.
          DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t201) = CAST zcl_lnt_syntax_input( t2 ).
          t200 = t201->issues.
          DATA t202 TYPE REF TO zcl_lnt_issue.
          DATA(t203) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t204 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t205) = CAST zcl_lnt_statement_node( t1 ).
          t204 = t205->get_first_token(  ).
          DATA(t206) = t198.
          DATA t207 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t207.
          t202 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t203 i_token = t204 i_message_26cb = t206 i_fix = t207 ).
          APPEND t202 TO t200->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t208 TYPE REF TO zcl_lnt_expression_node.
    DATA t209 TYPE REF TO zcl_lnt_expression_node.
    DATA(t210) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t211) = |FROM|.
    t209 = t210->find_expression_after_token( i_text = t211 ).
    t208 = t209.
    DATA t212 TYPE abap_bool.
    DATA(t213) = CAST zcl_lnt_expression_node( t208 ).
    t212 = xsdbool( t213 IS BOUND ).
    IF t212 = abap_true.
      DATA t214 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t214.
      DATA t215 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t215.
      DATA t216 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t216.
      DATA(t217) = abap_true.
      IF t217 = abap_true.
        DATA t218 TYPE REF TO zcl_lnt_expression_node.
        DATA(t219) = CAST zcl_lnt_expression_node( t208 ).
        t218 = t219.
        t216 = t218.
      ELSE.
        DATA t220 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t220.
        t216 = t220.
      ENDIF.
      DATA(t221) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t222 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t225.
      t215 = zcl_lnt_sy_source=>run_syntax( i_node = t216 i_input_967e = t221 i_target_type = t222 i_write_reference = t223 i_allow_generic_deference = t224 i_read_reference = t225 ).
      t214 = t215.
      DATA(t226) = VALUE abap_bool( ).
      DATA(t227) = VALUE abap_bool( ).
      DATA t228 TYPE REF TO zcl_lnt_type_utils.
      DATA t229 TYPE REF TO zcl_lnt_current_scope.
      DATA(t230) = CAST zcl_lnt_syntax_input( t2 ).
      t229 = t230->scope.
      t228 = NEW zcl_lnt_type_utils( i_scope = t229 ).
      DATA(t231) = CAST zcl_lnt_abstract_type( t214 ).
      DATA t232 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t232.
      DATA(t233) = abap_true.
      IF t233 = abap_true.
        DATA(t234) = CAST zcl_lnt_abstract_type( t74 ).
        t232 = t234.
      ELSE.
        DATA t235 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t235.
        t232 = t235.
      ENDIF.
      t227 = t228->is_assignable( i_source_75cf = t231 i_target_5f8a = t232 ).
      DATA(t236) = abap_false.
      t226 = xsdbool( t227 = t236 ).
      IF t226 = abap_true.
        DATA t237 TYPE string.
        DATA(t238) = |READ TABLE, FROM must be compatible|.
        t237 = t238.
        DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t240) = CAST zcl_lnt_syntax_input( t2 ).
        t239 = t240->issues.
        DATA t241 TYPE REF TO zcl_lnt_issue.
        DATA(t242) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t243 TYPE REF TO zcl_lnt_abstract_token.
        DATA t244 TYPE REF TO zcl_lnt_expression_node.
        DATA(t245) = CAST zcl_lnt_expression_node( t208 ).
        t244 = t245.
        t243 = t244->get_first_token(  ).
        DATA(t246) = t237.
        DATA t247 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t247.
        t241 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t242 i_token = t243 i_message_26cb = t246 i_fix = t247 ).
        APPEND t241 TO t239->items.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t248 TYPE REF TO zcl_lnt_expression_node.
    DATA t249 TYPE REF TO zcl_lnt_expression_node.
    DATA(t250) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t251) = |KEY|.
    t249 = t250->find_expression_after_token( i_text = t251 ).
    t248 = t249.
    DATA(t252) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t253 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t253.
    DATA t254 TYPE REF TO object.
    CLEAR t254.
    LOOP AT t252->items INTO t254.
      t253 ?= t254.
      DATA(t255) = VALUE abap_bool( ).
      DATA t256 TYPE abap_bool.
      DATA t257 TYPE abap_bool.
      DATA(t258) = CAST zcl_lnt_expression_node( t253 ).
      DATA(t259) = CAST zcl_lnt_expression_node( t19 ).
      t257 = xsdbool( t258 = t259 ).
      t256 = t257.
      IF t257 = abap_false.
        DATA(t260) = VALUE abap_bool( ).
        DATA t261 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t261.
        DATA(t262) = abap_true.
        IF t262 = abap_true.
          DATA(t263) = CAST zcl_lnt_expression_node( t253 ).
          t261 = t263.
        ELSE.
          DATA t264 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t264.
          t261 = t264.
        ENDIF.
        DATA(t265) = CAST zcl_lnt_expression_node( t103 ).
        t260 = xsdbool( t261 = t265 ).
        t256 = t260.
      ENDIF.
      t255 = t256.
      IF t256 = abap_false.
        DATA(t266) = VALUE abap_bool( ).
        DATA t267 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t267.
        DATA(t268) = abap_true.
        IF t268 = abap_true.
          DATA(t269) = CAST zcl_lnt_expression_node( t253 ).
          t267 = t269.
        ELSE.
          DATA t270 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t270.
          t267 = t270.
        ENDIF.
        DATA(t271) = CAST zcl_lnt_expression_node( t208 ).
        t266 = xsdbool( t267 = t271 ).
        t255 = t266.
      ENDIF.
      IF t255 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t272 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t272.
      DATA t273 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t273.
      DATA t274 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t274.
      DATA(t275) = abap_true.
      IF t275 = abap_true.
        DATA(t276) = CAST zcl_lnt_expression_node( t253 ).
        t274 = t276.
      ELSE.
        DATA t277 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t277.
        t274 = t277.
      ENDIF.
      DATA(t278) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t279 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t279.
      DATA t280 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t280.
      DATA t281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t281.
      DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t282.
      t273 = zcl_lnt_sy_source=>run_syntax( i_node = t274 i_input_967e = t278 i_target_type = t279 i_write_reference = t280 i_allow_generic_deference = t281 i_read_reference = t282 ).
      t272 = t273.
      DATA(t283) = VALUE abap_bool( ).
      DATA t284 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t284.
      DATA(t285) = abap_true.
      IF t285 = abap_true.
        DATA(t286) = CAST zcl_lnt_expression_node( t253 ).
        t284 = t286.
      ELSE.
        DATA t287 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t287.
        t284 = t287.
      ENDIF.
      DATA(t288) = CAST zcl_lnt_expression_node( t248 ).
      t283 = xsdbool( t284 = t288 ).
      IF t283 = abap_true.
        DATA(t289) = VALUE abap_bool( ).
        DATA t290 TYPE abap_bool.
        DATA t291 TYPE abap_bool.
        DATA(t292) = CAST zcl_lnt_abstract_type( t272 ).
        t291 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_string_type ).
        t290 = t291.
        IF t291 = abap_false.
          DATA t293 TYPE abap_bool.
          DATA t294 TYPE abap_bool.
          DATA(t295) = CAST zcl_lnt_abstract_type( t272 ).
          t294 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t293 = t294.
          IF t294 = abap_true.
            DATA t296 TYPE abap_bool.
            DATA t297 TYPE abap_bool.
            DATA t298 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t299 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t300) = CAST zcl_lnt_abstract_type( t272 ).
            t299 ?= t300.
            t298 = t299.
            DATA t301 TYPE abap_bool.
            DATA t302 TYPE REF TO zcl_lnt_itable_options.
            DATA(t303) = CAST zcl_lnt_ty_table_type( t298 ).
            t302 = t303->options.
            t301 = t302->with_header.
            t297 = t301.
            DATA(t304) = abap_false.
            t296 = xsdbool( t297 = t304 ).
            t293 = t296.
          ENDIF.
          t290 = t293.
        ENDIF.
        t289 = t290.
        IF t290 = abap_false.
          DATA t305 TYPE abap_bool.
          DATA(t306) = CAST zcl_lnt_abstract_type( t272 ).
          t305 = xsdbool( t306 IS BOUND AND t306 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t289 = t305.
        ENDIF.
        IF t289 = abap_true.
          DATA t307 TYPE string.
          DATA(t308) = |Key cannot be string or table or reference|.
          t307 = t308.
          DATA t309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t310) = CAST zcl_lnt_syntax_input( t2 ).
          t309 = t310->issues.
          DATA t311 TYPE REF TO zcl_lnt_issue.
          DATA(t312) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t313 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t314) = CAST zcl_lnt_expression_node( t253 ).
          t313 = t314->get_first_token(  ).
          DATA(t315) = t307.
          DATA t316 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t316.
          t311 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t312 i_token = t313 i_message_26cb = t315 i_fix = t316 ).
          APPEND t311 TO t309->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t317 TYPE REF TO zcl_lnt_expression_node.
    DATA t318 TYPE REF TO zcl_lnt_expression_node.
    DATA(t319) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t320) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d243_4c26f150237d ).
    t318 = t319->find_direct_expression( i_type_9913 = t320 ).
    t317 = t318.
    DATA t321 TYPE abap_bool.
    DATA(t322) = CAST zcl_lnt_expression_node( t317 ).
    t321 = xsdbool( t322 IS BOUND ).
    IF t321 = abap_true.
      DATA(t323) = VALUE abap_bool( ).
      DATA(t324) = VALUE i( ).
      DATA(t325) = t3.
      DATA(t326) = | REFERENCE INTO |.
      DATA(t327) = strlen( t325 ).
      IF t326 IS INITIAL.
        t324 = 0.
      ELSE.
        FIND t326 IN t325 MATCH OFFSET t324.
        IF sy-subrc <> 0.
          t324 = -1.
        ENDIF.
      ENDIF.
      DATA(t328) = 0.
      t323 = xsdbool( t324 >= t328 ).
      IF t323 = abap_true.
        DATA t329 TYPE REF TO zcl_lnt_data_reference.
        DATA(t330) = CAST zcl_lnt_abstract_type( t74 ).
        DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t331.
        t329 = NEW zcl_lnt_data_reference( i_type_9913 = t330 i_qualified_name = t331 ).
        t74 = t329.
      ENDIF.
      DATA t332 TYPE REF TO zcl_lnt_expression_node.
      DATA t333 TYPE REF TO zcl_lnt_expression_node.
      DATA t334 TYPE REF TO zcl_lnt_expression_node.
      DATA(t335) = CAST zcl_lnt_expression_node( t317 ).
      t334 = t335.
      DATA(t336) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t333 = t334->find_first_expression( i_type_9913 = t336 ).
      t332 = t333.
      DATA t337 TYPE REF TO zcl_lnt_expression_node.
      DATA t338 TYPE REF TO zcl_lnt_expression_node.
      DATA t339 TYPE REF TO zcl_lnt_expression_node.
      DATA(t340) = CAST zcl_lnt_expression_node( t317 ).
      t339 = t340.
      DATA(t341) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c ).
      t338 = t339->find_direct_expression( i_type_9913 = t341 ).
      t337 = t338.
      DATA t342 TYPE REF TO zcl_lnt_expression_node.
      DATA t343 TYPE REF TO zcl_lnt_expression_node.
      DATA t344 TYPE REF TO zcl_lnt_expression_node.
      DATA(t345) = CAST zcl_lnt_expression_node( t317 ).
      t344 = t345.
      DATA(t346) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
      t343 = t344->find_first_expression( i_type_9913 = t346 ).
      t342 = t343.
      DATA t347 TYPE abap_bool.
      DATA(t348) = CAST zcl_lnt_expression_node( t332 ).
      t347 = xsdbool( t348 IS BOUND ).
      IF t347 = abap_true.
        DATA t349 TYPE REF TO zcl_lnt_expression_node.
        DATA(t350) = CAST zcl_lnt_expression_node( t332 ).
        t349 = t350.
        DATA(t351) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t352 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t352.
        DATA(t353) = abap_true.
        IF t353 = abap_true.
          DATA(t354) = CAST zcl_lnt_abstract_type( t74 ).
          t352 = t354.
        ELSE.
          DATA t355 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t355.
          t352 = t355.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t349 i_input_967e = t351 i_type_9913 = t352 ).
      ELSE.
        DATA t356 TYPE abap_bool.
        DATA(t357) = CAST zcl_lnt_expression_node( t337 ).
        t356 = xsdbool( t357 IS BOUND ).
        IF t356 = abap_true.
          DATA t358 TYPE REF TO zcl_lnt_expression_node.
          DATA(t359) = CAST zcl_lnt_expression_node( t337 ).
          t358 = t359.
          DATA(t360) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t361 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t361.
          DATA(t362) = abap_true.
          IF t362 = abap_true.
            DATA(t363) = CAST zcl_lnt_abstract_type( t74 ).
            t361 = t363.
          ELSE.
            DATA t364 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t364.
            t361 = t364.
          ENDIF.
          zcl_lnt_sy_fs_target=>run_syntax( i_node = t358 i_input_967e = t360 i_type_9913 = t361 ).
        ELSE.
          DATA t365 TYPE abap_bool.
          DATA(t366) = CAST zcl_lnt_expression_node( t342 ).
          t365 = xsdbool( t366 IS BOUND ).
          IF t365 = abap_true.
            DATA t367 TYPE REF TO zcl_lnt_abstract_type.
            DATA t368 TYPE REF TO zcl_lnt_abstract_type.
            DATA t369 TYPE REF TO zcl_lnt_expression_node.
            DATA(t370) = CAST zcl_lnt_expression_node( t342 ).
            t369 = t370.
            DATA(t371) = CAST zcl_lnt_syntax_input( t2 ).
            t368 = zcl_lnt_sy_target=>run_syntax( i_node = t369 i_input_967e = t371 ).
            t367 = t368.
            DATA(t372) = VALUE abap_bool( ).
            DATA(t373) = VALUE abap_bool( ).
            DATA t374 TYPE REF TO zcl_lnt_type_utils.
            DATA t375 TYPE REF TO zcl_lnt_current_scope.
            DATA(t376) = CAST zcl_lnt_syntax_input( t2 ).
            t375 = t376->scope.
            t374 = NEW zcl_lnt_type_utils( i_scope = t375 ).
            DATA t377 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t377.
            DATA(t378) = abap_true.
            IF t378 = abap_true.
              DATA(t379) = CAST zcl_lnt_abstract_type( t74 ).
              t377 = t379.
            ELSE.
              DATA t380 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t380.
              t377 = t380.
            ENDIF.
            DATA(t381) = CAST zcl_lnt_abstract_type( t367 ).
            t373 = t374->is_assignable( i_source_75cf = t377 i_target_5f8a = t381 ).
            DATA(t382) = abap_false.
            t372 = xsdbool( t373 = t382 ).
            IF t372 = abap_true.
              DATA t383 TYPE string.
              DATA(t384) = |Incompatible types|.
              t383 = t384.
              DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t386) = CAST zcl_lnt_syntax_input( t2 ).
              t385 = t386->issues.
              DATA t387 TYPE REF TO zcl_lnt_issue.
              DATA(t388) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t389 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t390) = CAST zcl_lnt_statement_node( t1 ).
              t389 = t390->get_first_token(  ).
              DATA(t391) = t383.
              DATA t392 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t392.
              t387 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t388 i_token = t389 i_message_26cb = t391 i_fix = t392 ).
              APPEND t387 TO t385->items.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t393) = VALUE abap_bool( ).
    DATA(t394) = VALUE abap_bool( ).
    DATA t395 TYPE REF TO zcl_lnt_expression_node.
    DATA(t396) = CAST zcl_lnt_expression_node( t317 ).
    t395 = t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    t397 = t398.
    DATA(t399) = VALUE abap_bool( ).
    DATA(t400) = CAST zcl_lnt_expression_node( t395 ).
    IF t400 IS INITIAL.
      t399 = abap_true.
    ENDIF.
    t394 = t399.
    t393 = t394.
    IF t394 = abap_true.
      DATA(t401) = VALUE abap_bool( ).
      DATA(t402) = VALUE abap_bool( ).
      DATA(t403) = VALUE i( ).
      DATA(t404) = t3.
      DATA(t405) = | TRANSPORTING NO FIELDS |.
      DATA(t406) = strlen( t404 ).
      IF t405 IS INITIAL.
        t403 = 0.
      ELSE.
        FIND t405 IN t404 MATCH OFFSET t403.
        IF sy-subrc <> 0.
          t403 = -1.
        ENDIF.
      ENDIF.
      DATA(t407) = 0.
      t402 = xsdbool( t403 >= t407 ).
      DATA(t408) = abap_false.
      t401 = xsdbool( t402 = t408 ).
      t393 = t401.
    ENDIF.
    IF t393 = abap_true.
      DATA t409 TYPE abap_bool.
      DATA t410 TYPE abap_bool.
      DATA(t411) = CAST zcl_lnt_abstract_type( t23 ).
      t410 = xsdbool( t411 IS BOUND AND t411 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t409 = t410.
      IF t410 = abap_true.
        DATA t412 TYPE abap_bool.
        DATA t413 TYPE abap_bool.
        DATA t414 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t415 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t416) = CAST zcl_lnt_abstract_type( t23 ).
        t415 ?= t416.
        t414 = t415.
        DATA t417 TYPE abap_bool.
        DATA t418 TYPE REF TO zcl_lnt_itable_options.
        DATA(t419) = CAST zcl_lnt_ty_table_type( t414 ).
        t418 = t419->options.
        t417 = t418->with_header.
        t413 = t417.
        DATA(t420) = abap_false.
        t412 = xsdbool( t413 = t420 ).
        t409 = t412.
      ENDIF.
      IF t409 = abap_true.
        DATA t421 TYPE string.
        DATA(t422) = |READ TABLE, define INTO or TRANSPORTING NO FIELDS|.
        t421 = t422.
        DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t424) = CAST zcl_lnt_syntax_input( t2 ).
        t423 = t424->issues.
        DATA t425 TYPE REF TO zcl_lnt_issue.
        DATA(t426) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t427 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t428) = CAST zcl_lnt_statement_node( t1 ).
        t427 = t428->get_first_token(  ).
        DATA(t429) = t421.
        DATA t430 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t430.
        t425 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t426 i_token = t427 i_message_26cb = t429 i_fix = t430 ).
        APPEND t425 TO t423->items.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t431 TYPE REF TO zcl_lnt_expression_node.
    DATA t432 TYPE REF TO zcl_lnt_expression_node.
    DATA(t433) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t434) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d334_bd47c7b95e69 ).
    t432 = t433->find_direct_expression( i_type_9913 = t434 ).
    t431 = t432.
    DATA(t435) = VALUE abap_bool( ).
    DATA(t436) = VALUE abap_bool( ).
    DATA t437 TYPE abap_bool.
    DATA t438 TYPE abap_bool.
    DATA(t439) = CAST zcl_lnt_expression_node( t431 ).
    t438 = xsdbool( t439 IS BOUND ).
    t437 = t438.
    IF t438 = abap_true.
      DATA t440 TYPE abap_bool.
      DATA t441 TYPE abap_bool.
      DATA(t442) = CAST zcl_lnt_abstract_type( t74 ).
      t441 = xsdbool( t442 IS BOUND AND t442 IS INSTANCE OF zcl_lnt_void_type ).
      t440 = xsdbool( t441 = abap_false ).
      t437 = t440.
    ENDIF.
    t436 = t437.
    IF t437 = abap_true.
      DATA t443 TYPE abap_bool.
      DATA t444 TYPE abap_bool.
      DATA(t445) = CAST zcl_lnt_abstract_type( t74 ).
      t444 = xsdbool( t445 IS BOUND AND t445 IS INSTANCE OF zcl_lnt_unknown_type ).
      t443 = xsdbool( t444 = abap_false ).
      t436 = t443.
    ENDIF.
    t435 = t436.
    IF t436 = abap_true.
      DATA t446 TYPE abap_bool.
      DATA t447 TYPE abap_bool.
      DATA(t448) = CAST zcl_lnt_abstract_type( t74 ).
      t447 = xsdbool( t448 IS BOUND AND t448 IS INSTANCE OF zcl_lnt_any_type ).
      t446 = xsdbool( t447 = abap_false ).
      t435 = t446.
    ENDIF.
    IF t435 = abap_true.
      DATA t449 TYPE abap_bool.
      DATA t450 TYPE abap_bool.
      DATA(t451) = CAST zcl_lnt_abstract_type( t74 ).
      t450 = xsdbool( t451 IS BOUND AND t451 IS INSTANCE OF zcl_lnt_structure_type ).
      t449 = xsdbool( t450 = abap_false ).
      IF t449 = abap_true.
        DATA t452 TYPE string.
        DATA(t453) = |READ TABLE, source not structured|.
        t452 = t453.
        DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t455) = CAST zcl_lnt_syntax_input( t2 ).
        t454 = t455->issues.
        DATA t456 TYPE REF TO zcl_lnt_issue.
        DATA(t457) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t458 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t459) = CAST zcl_lnt_statement_node( t1 ).
        t458 = t459->get_first_token(  ).
        DATA(t460) = t452.
        DATA t461 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t461.
        t456 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t457 i_token = t458 i_message_26cb = t460 i_fix = t461 ).
        APPEND t456 TO t454->items.
        RETURN.
      ENDIF.
      DATA t462 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t462.
      DATA t463 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t463.
      DATA t464 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t464.
      DATA t465 TYPE REF TO zcl_lnt_expression_node.
      DATA t466 TYPE REF TO zcl_lnt_expression_node.
      DATA(t467) = CAST zcl_lnt_expression_node( t431 ).
      t466 = t467.
      t465 = t466.
      DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t468.
      DATA(t469) = VALUE abap_bool( ).
      DATA(t470) = CAST zcl_lnt_expression_node( t465 ).
      IF t470 IS INITIAL.
        t469 = abap_true.
      ENDIF.
      IF t469 = abap_true.
        DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t471.
        t468 = t471.
      ELSE.
        DATA t472 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t473) = CAST zcl_lnt_expression_node( t465 ).
        DATA(t474) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
        t472 = t473->find_direct_expressions( i_type_9913 = t474 ).
        t468 = t472.
      ENDIF.
      t464 = t468.
      t463 = t464.
      DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t475.
      DATA t476 TYPE abap_bool.
      DATA(t477) = CAST zlnt_runtime_arra_c22708faf2e3( t463 ).
      t476 = xsdbool( t477 IS BOUND ).
      IF t476 = abap_true.
        DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t479) = CAST zlnt_runtime_arra_c22708faf2e3( t463 ).
        t478 = t479.
        t475 = t478.
      ELSE.
        DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t480.
        t475 = t480.
      ENDIF.
      t462 = t475.
      DATA t481 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t481.
      DATA t482 TYPE REF TO object.
      CLEAR t482.
      LOOP AT t462->items INTO t482.
        t481 ?= t482.
        DATA t483 TYPE string.
        DATA t484 TYPE string.
        DATA(t485) = CAST zcl_lnt_expression_node( t481 ).
        t484 = t485->concat_tokens(  ).
        t483 = t484.
        DATA(t486) = VALUE abap_bool( ).
        DATA(t487) = VALUE i( ).
        DATA(t488) = t483.
        DATA(t489) = |-|.
        DATA(t490) = strlen( t488 ).
        IF t489 IS INITIAL.
          t487 = 0.
        ELSE.
          FIND t489 IN t488 MATCH OFFSET t487.
          IF sy-subrc <> 0.
            t487 = -1.
          ENDIF.
        ENDIF.
        DATA(t491) = 0.
        t486 = xsdbool( t487 >= t491 ).
        IF t486 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t492) = VALUE abap_bool( ).
        DATA t493 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t493.
        DATA t494 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t494.
        DATA t495 TYPE REF TO zcl_lnt_structure_type.
        DATA t496 TYPE REF TO zcl_lnt_structure_type.
        DATA(t497) = CAST zcl_lnt_abstract_type( t74 ).
        t496 ?= t497.
        t495 = t496.
        DATA t498 TYPE string.
        DATA(t499) = t483.
        t498 = t499.
        DATA t500 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t500.
        DATA t501 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t502) = CAST zcl_lnt_structure_type( t495 ).
        t501 = t502->indexed.
        DATA t503 TYPE string.
        DATA(t504) = t498.
        DATA(t505) = strlen( t504 ).
        t503 = t504.
        IF t503 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t503 TO UPPER CASE.
        ELSE.
          t503 = zlnt_runtime_uppe_91169605024d=>full( t503 ).
        ENDIF.
        t500 = t501->get( p0 = t503 ).
        t494 = t500.
        t493 = t494.
        DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t507.
        t506 = t507.
        DATA(t508) = VALUE abap_bool( ).
        DATA(t509) = CAST zcl_lnt_abstract_type( t493 ).
        IF t509 IS INITIAL.
          t508 = abap_true.
        ENDIF.
        t492 = t508.
        IF t492 = abap_true.
          DATA t510 TYPE string.
          DATA t511 TYPE string.
          DATA t512 TYPE string.
          DATA(t513) = |READ TABLE, field |.
          DATA(t514) = t483.
          DATA(t515) = strlen( t513 ).
          t512 = |{ t513 }{ t514 }|.
          DATA(t516) = | not found in source|.
          DATA(t517) = strlen( t512 ).
          t511 = |{ t512 }{ t516 }|.
          t510 = t511.
          DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t519) = CAST zcl_lnt_syntax_input( t2 ).
          t518 = t519->issues.
          DATA t520 TYPE REF TO zcl_lnt_issue.
          DATA(t521) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t522 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t523) = CAST zcl_lnt_statement_node( t1 ).
          t522 = t523->get_first_token(  ).
          DATA(t524) = t510.
          DATA t525 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t525.
          t520 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t521 i_token = t522 i_message_26cb = t524 i_fix = t525 ).
          APPEND t520 TO t518->items.
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d926_77d35099444b.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
