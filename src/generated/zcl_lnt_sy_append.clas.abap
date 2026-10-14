* TS: src/abap/5_syntax/statements/append.ts:14:1 Append
CLASS zcl_lnt_sy_append DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_append IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t6 = t7->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA(t10) = CAST zcl_lnt_expression_node( t5 ).
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t13) = CAST zcl_lnt_expression_node( t5 ).
      t12 = t13.
      DATA(t14) = CAST zcl_lnt_syntax_input( t2 ).
      t11 = zcl_lnt_sy_target=>run_syntax( i_node = t12 i_input_967e = t14 ).
      t3 = t11.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t18) = |ASSIGNING|.
    t16 = t17->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    DATA(t21) = CAST zcl_lnt_expression_node( t15 ).
    t20 = xsdbool( t21 IS BOUND ).
    t19 = t20.
    IF t20 = abap_true.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = CAST zcl_lnt_expression_node( t15 ).
      t24 = t25.
      t23 = t24->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_fs_target ).
      t19 = t22.
    ENDIF.
    IF t19 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA(t30) = CAST zcl_lnt_abstract_type( t3 ).
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t28 = xsdbool( t29 = abap_false ).
      t27 = t28.
      IF t28 = abap_true.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        DATA(t33) = CAST zcl_lnt_abstract_type( t3 ).
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_void_type ).
        t31 = xsdbool( t32 = abap_false ).
        t27 = t31.
      ENDIF.
      t26 = t27.
      IF t27 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE abap_bool.
        DATA(t36) = CAST zcl_lnt_abstract_type( t3 ).
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_unknown_type ).
        t34 = xsdbool( t35 = abap_false ).
        t26 = t34.
      ENDIF.
      IF t26 = abap_true.
        DATA(t37) = VALUE string( ).
        DATA(t38) = VALUE string( ).
        DATA(t39) = |APPEND to non table type, |.
        DATA(t40) = VALUE string( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t46) = CAST zcl_lnt_abstract_type( t3 ).
        t45 = t46.
        DATA t47 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = CAST zcl_lnt_abstract_type( t45 ).
        IF t49 IS INITIAL.
          t48 = abap_true.
        ENDIF.
        IF t48 = abap_true.
          DATA t50 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t50.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t52 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t53) = CAST zcl_lnt_abstract_type( t45 ).
          t52 = t53.
          t51 = t52->zlnt_builtin_clas_3f891b097658( ).
          t47 = t51.
        ENDIF.
        t44 = t47.
        t43 = t44.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = CAST zlnt_runtime_clas_a39833db3295( t43 ).
        IF t56 IS INITIAL.
          t55 = abap_true.
        ENDIF.
        IF t55 = abap_true.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          t54 = t57.
        ELSE.
          DATA t58 TYPE string.
          DATA t59 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( t43 ).
          t59 = t60.
          t58 = t59->name.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t58.
          t54 = t61.
        ENDIF.
        t42 = t54.
        t41 = t42.
        DATA(t62) = VALUE string( ).
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t41 ).
        IF t64 IS INITIAL.
          t63 = abap_true.
        ELSEIF t64->has = abap_false.
          t63 = abap_true.
        ENDIF.
        IF t63 = abap_true.
          DATA(t65) = |undefined|.
          t62 = t65.
        ELSE.
          DATA t66 TYPE string.
          DATA(t67) = CAST zlnt_runtime_opti_4ba3bdccd169( t41 ).
          t66 = t67->value.
          t62 = t66.
        ENDIF.
        t40 = t62.
        DATA(t68) = strlen( t39 ).
        t38 = |{ t39 }{ t40 }|.
        t37 = t38.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t70) = CAST zcl_lnt_syntax_input( t2 ).
        t69 = t70->issues.
        DATA t71 TYPE REF TO zcl_lnt_issue.
        DATA(t72) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t74) = CAST zcl_lnt_statement_node( t1 ).
        t73 = t74->get_first_token( ).
        DATA(t75) = t37.
        DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t76.
        t71 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t72 i_token = t73 i_message_26cb = t75 i_fix = t76 ).
        APPEND t71 TO t69->items.
        RETURN.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t78.
      DATA t79 TYPE abap_bool.
      DATA(t80) = CAST zcl_lnt_abstract_type( t3 ).
      t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t79 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_abstract_type.
        DATA t82 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t83 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t84) = CAST zcl_lnt_abstract_type( t3 ).
        t83 ?= t84.
        t82 = t83.
        DATA t85 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t86) = CAST zcl_lnt_ty_table_type( t82 ).
        t85 = t86->row_type.
        t81 = t85.
        t78 = t81.
      ELSE.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        DATA t88 TYPE REF TO zif_lnt_union_adffe656.
        DATA t89 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t90) = CAST zcl_lnt_abstract_type( t3 ).
        t89 = t90.
        t88 ?= t89.
        t87 ?= t88.
        t78 = t87.
      ENDIF.
      t77 = t78.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      DATA(t92) = CAST zcl_lnt_expression_node( t15 ).
      t91 = t92.
      DATA(t93) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t94 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = CAST zcl_lnt_abstract_type( t77 ).
        t94 = t96.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t97.
        t94 = t97.
      ENDIF.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t91 i_input_967e = t93 i_type_9913 = t94 ).
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_expression_node.
    DATA t99 TYPE REF TO zcl_lnt_expression_node.
    DATA(t100) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t101) = |INTO|.
    t99 = t100->find_expression_after_token( i_text = t101 ).
    t98 = t99.
    DATA t102 TYPE abap_bool.
    DATA t103 TYPE abap_bool.
    DATA(t104) = CAST zcl_lnt_expression_node( t98 ).
    t103 = xsdbool( t104 IS BOUND ).
    t102 = t103.
    IF t103 = abap_true.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = VALUE i( ).
      DATA t107 TYPE string.
      DATA t108 TYPE string.
      DATA(t109) = CAST zcl_lnt_statement_node( t1 ).
      t108 = t109->concat_tokens( ).
      DATA(t110) = strlen( t108 ).
      t107 = t108.
      IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t107 TO UPPER CASE.
      ELSE.
        t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
      ENDIF.
      DATA(t111) = | REFERENCE INTO DATA(|.
      DATA(t112) = strlen( t107 ).
      IF t111 IS INITIAL.
        t106 = 0.
      ELSE.
        FIND t111 IN t107 MATCH OFFSET t106.
        IF sy-subrc <> 0.
          t106 = -1.
        ENDIF.
      ENDIF.
      DATA(t113) = 0.
      t105 = xsdbool( t106 >= t113 ).
      t102 = t105.
    ENDIF.
    IF t102 = abap_true.
      DATA(t114) = VALUE abap_bool( ).
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE abap_bool.
      DATA t117 TYPE abap_bool.
      DATA(t118) = CAST zcl_lnt_abstract_type( t3 ).
      t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t116 = xsdbool( t117 = abap_false ).
      t115 = t116.
      IF t116 = abap_true.
        DATA t119 TYPE abap_bool.
        DATA t120 TYPE abap_bool.
        DATA(t121) = CAST zcl_lnt_abstract_type( t3 ).
        t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_void_type ).
        t119 = xsdbool( t120 = abap_false ).
        t115 = t119.
      ENDIF.
      t114 = t115.
      IF t115 = abap_true.
        DATA t122 TYPE abap_bool.
        DATA t123 TYPE abap_bool.
        DATA(t124) = CAST zcl_lnt_abstract_type( t3 ).
        t123 = xsdbool( t124 IS BOUND AND t124 IS INSTANCE OF zcl_lnt_unknown_type ).
        t122 = xsdbool( t123 = abap_false ).
        t114 = t122.
      ENDIF.
      IF t114 = abap_true.
        DATA(t125) = VALUE string( ).
        DATA(t126) = VALUE string( ).
        DATA(t127) = |APPEND to non table type, |.
        DATA(t128) = VALUE string( ).
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        DATA t131 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t132.
        DATA t133 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t134) = CAST zcl_lnt_abstract_type( t3 ).
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t135.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = CAST zcl_lnt_abstract_type( t133 ).
        IF t137 IS INITIAL.
          t136 = abap_true.
        ENDIF.
        IF t136 = abap_true.
          DATA t138 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t138.
          t135 = t138.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t140 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t141) = CAST zcl_lnt_abstract_type( t133 ).
          t140 = t141.
          t139 = t140->zlnt_builtin_clas_3f891b097658( ).
          t135 = t139.
        ENDIF.
        t132 = t135.
        t131 = t132.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = CAST zlnt_runtime_clas_a39833db3295( t131 ).
        IF t144 IS INITIAL.
          t143 = abap_true.
        ENDIF.
        IF t143 = abap_true.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t142 = t145.
        ELSE.
          DATA t146 TYPE string.
          DATA t147 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA(t148) = CAST zlnt_runtime_clas_a39833db3295( t131 ).
          t147 = t148.
          t146 = t147->name.
          DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t149->has = abap_true.
          t149->value = t146.
          t142 = t149.
        ENDIF.
        t130 = t142.
        t129 = t130.
        DATA(t150) = VALUE string( ).
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = CAST zlnt_runtime_opti_4ba3bdccd169( t129 ).
        IF t152 IS INITIAL.
          t151 = abap_true.
        ELSEIF t152->has = abap_false.
          t151 = abap_true.
        ENDIF.
        IF t151 = abap_true.
          DATA(t153) = |undefined|.
          t150 = t153.
        ELSE.
          DATA t154 TYPE string.
          DATA(t155) = CAST zlnt_runtime_opti_4ba3bdccd169( t129 ).
          t154 = t155->value.
          t150 = t154.
        ENDIF.
        t128 = t150.
        DATA(t156) = strlen( t127 ).
        t126 = |{ t127 }{ t128 }|.
        t125 = t126.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t158) = CAST zcl_lnt_syntax_input( t2 ).
        t157 = t158->issues.
        DATA t159 TYPE REF TO zcl_lnt_issue.
        DATA(t160) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t161 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t162) = CAST zcl_lnt_statement_node( t1 ).
        t161 = t162->get_first_token( ).
        DATA(t163) = t125.
        DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t164.
        t159 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t160 i_token = t161 i_message_26cb = t163 i_fix = t164 ).
        APPEND t159 TO t157->items.
        RETURN.
      ENDIF.
      DATA t165 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t166.
      DATA t167 TYPE abap_bool.
      DATA(t168) = CAST zcl_lnt_abstract_type( t3 ).
      t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t167 = abap_true.
        DATA t169 TYPE REF TO zcl_lnt_abstract_type.
        DATA t170 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t171 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t172) = CAST zcl_lnt_abstract_type( t3 ).
        t171 ?= t172.
        t170 = t171.
        DATA t173 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t174) = CAST zcl_lnt_ty_table_type( t170 ).
        t173 = t174->row_type.
        t169 = t173.
        t166 = t169.
      ELSE.
        DATA t175 TYPE REF TO zcl_lnt_abstract_type.
        DATA t176 TYPE REF TO zif_lnt_union_adffe656.
        DATA t177 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t178) = CAST zcl_lnt_abstract_type( t3 ).
        t177 = t178.
        t176 ?= t177.
        t175 ?= t176.
        t166 = t175.
      ENDIF.
      t165 = t166.
      DATA t179 TYPE REF TO zcl_lnt_expression_node.
      DATA(t180) = CAST zcl_lnt_expression_node( t98 ).
      t179 = t180.
      DATA(t181) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t182 TYPE REF TO zcl_lnt_data_reference.
      DATA(t183) = CAST zcl_lnt_abstract_type( t165 ).
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      t182 = NEW zcl_lnt_data_reference( i_type_9913 = t183 i_qualified_name = t184 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t179 i_input_967e = t181 i_type_9913 = t182 ).
    ENDIF.
    DATA t185 TYPE REF TO zcl_lnt_expression_node.
    DATA t186 TYPE REF TO zcl_lnt_expression_node.
    DATA(t187) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t188) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390 ).
    t186 = t187->find_direct_expression( i_type_9913 = t188 ).
    t185 = t186.
    DATA(t189) = VALUE abap_bool( ).
    DATA t190 TYPE REF TO zcl_lnt_expression_node.
    DATA(t191) = CAST zcl_lnt_expression_node( t185 ).
    t190 = t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    t192 = t193.
    DATA(t194) = VALUE abap_bool( ).
    DATA(t195) = CAST zcl_lnt_expression_node( t190 ).
    IF t195 IS INITIAL.
      t194 = abap_true.
    ENDIF.
    t189 = t194.
    IF t189 = abap_true.
      DATA t196 TYPE REF TO zcl_lnt_expression_node.
      DATA(t197) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t198) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t196 = t197->find_direct_expression( i_type_9913 = t198 ).
      t185 = t196.
    ENDIF.
    DATA t199 TYPE abap_bool.
    DATA(t200) = CAST zcl_lnt_expression_node( t185 ).
    t199 = xsdbool( t200 IS BOUND ).
    IF t199 = abap_true.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = VALUE abap_bool( ).
      DATA(t204) = VALUE abap_bool( ).
      DATA(t205) = VALUE abap_bool( ).
      DATA t206 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t207) = CAST zcl_lnt_abstract_type( t3 ).
      t206 = t207.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t209.
      t208 = t209.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = VALUE abap_bool( ).
      DATA(t212) = CAST zcl_lnt_abstract_type( t206 ).
      IF t212 IS INITIAL.
        t211 = abap_true.
      ENDIF.
      t210 = xsdbool( t211 = abap_false ).
      t205 = t210.
      t204 = t205.
      IF t205 = abap_true.
        DATA t213 TYPE abap_bool.
        DATA t214 TYPE abap_bool.
        DATA t215 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t216) = CAST zcl_lnt_abstract_type( t3 ).
        t215 = t216.
        t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t213 = xsdbool( t214 = abap_false ).
        t204 = t213.
      ENDIF.
      t203 = t204.
      IF t204 = abap_true.
        DATA t217 TYPE abap_bool.
        DATA t218 TYPE abap_bool.
        DATA(t219) = CAST zcl_lnt_abstract_type( t3 ).
        t218 = xsdbool( t219 IS BOUND AND t219 IS INSTANCE OF zcl_lnt_unknown_type ).
        t217 = xsdbool( t218 = abap_false ).
        t203 = t217.
      ENDIF.
      t202 = t203.
      IF t203 = abap_true.
        DATA t220 TYPE abap_bool.
        DATA(t221) = CAST zcl_lnt_expression_node( t98 ).
        DATA(t222) = CAST zcl_lnt_expression_node( t5 ).
        t220 = xsdbool( t221 <> t222 ).
        t202 = t220.
      ENDIF.
      t201 = t202.
      IF t202 = abap_true.
        DATA t223 TYPE abap_bool.
        DATA t224 TYPE abap_bool.
        DATA(t225) = CAST zcl_lnt_abstract_type( t3 ).
        t224 = xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_void_type ).
        t223 = xsdbool( t224 = abap_false ).
        t201 = t223.
      ENDIF.
      IF t201 = abap_true.
        DATA t226 TYPE string.
        DATA t227 TYPE string.
        DATA t228 TYPE string.
        DATA(t229) = |Append, target not a table type (|.
        DATA t230 TYPE string.
        DATA t231 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t232 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t233) = CAST zcl_lnt_abstract_type( t3 ).
        t232 = t233.
        t231 = t232->zlnt_builtin_clas_3f891b097658( ).
        t230 = t231->name.
        DATA(t234) = strlen( t229 ).
        t228 = |{ t229 }{ t230 }|.
        DATA(t235) = |)|.
        DATA(t236) = strlen( t228 ).
        t227 = |{ t228 }{ t235 }|.
        t226 = t227.
        DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t238) = CAST zcl_lnt_syntax_input( t2 ).
        t237 = t238->issues.
        DATA t239 TYPE REF TO zcl_lnt_issue.
        DATA(t240) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t242) = CAST zcl_lnt_statement_node( t1 ).
        t241 = t242->get_first_token( ).
        DATA(t243) = t226.
        DATA t244 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t244.
        t239 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t240 i_token = t241 i_message_26cb = t243 i_fix = t244 ).
        APPEND t239 TO t237->items.
        RETURN.
      ENDIF.
      DATA t245 TYPE REF TO zcl_lnt_abstract_type.
      DATA t246 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t246.
      t245 = t246.
      DATA t247 TYPE abap_bool.
      DATA(t248) = CAST zcl_lnt_abstract_type( t3 ).
      t247 = xsdbool( t248 IS BOUND AND t248 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t247 = abap_true.
        DATA t249 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t249.
        DATA(t250) = abap_true.
        IF t250 = abap_true.
          DATA t251 TYPE REF TO zcl_lnt_abstract_type.
          DATA t252 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t253 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t254) = CAST zcl_lnt_abstract_type( t3 ).
          t253 ?= t254.
          t252 = t253.
          DATA t255 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t256) = CAST zcl_lnt_ty_table_type( t252 ).
          t255 = t256->row_type.
          t251 = t255.
          t249 = t251.
        ELSE.
          DATA t257 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t257.
          t249 = t257.
        ENDIF.
        t245 = t249.
      ELSE.
        DATA t258 TYPE abap_bool.
        DATA(t259) = CAST zcl_lnt_abstract_type( t3 ).
        t258 = xsdbool( t259 IS BOUND AND t259 IS INSTANCE OF zcl_lnt_void_type ).
        IF t258 = abap_true.
          DATA t260 TYPE REF TO zcl_lnt_void_type.
          DATA(t261) = CAST zcl_lnt_abstract_type( t3 ).
          t260 ?= t261.
          t245 = t260.
        ENDIF.
      ENDIF.
      DATA t262 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t262.
      DATA t263 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t263.
      DATA t264 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t264.
      DATA(t265) = abap_true.
      IF t265 = abap_true.
        DATA t266 TYPE REF TO zcl_lnt_expression_node.
        DATA(t267) = CAST zcl_lnt_expression_node( t185 ).
        t266 = t267.
        t264 = t266.
      ELSE.
        DATA t268 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t268.
        t264 = t268.
      ENDIF.
      DATA(t269) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t270) = CAST zcl_lnt_abstract_type( t245 ).
      DATA t271 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t271.
      DATA t272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t272.
      DATA t273 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t273.
      t263 = zcl_lnt_sy_source=>run_syntax( i_node = t264 i_input_967e = t269 i_target_type = t270 i_write_reference = t271 i_allow_generic_deference = t272 i_read_reference = t273 ).
      t262 = t263.
      DATA t274 TYPE abap_bool.
      DATA t275 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t276) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t277) = |LINES|.
      t275 = t276->find_direct_token_by_text( i_text = t277 ).
      t274 = xsdbool( t275 IS BOUND ).
      IF t274 = abap_true.
        DATA t278 TYPE abap_bool.
        DATA(t279) = CAST zcl_lnt_abstract_type( t262 ).
        t278 = xsdbool( t279 IS BOUND AND t279 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t278 = abap_true.
          DATA t280 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t280.
          DATA(t281) = abap_true.
          IF t281 = abap_true.
            DATA t282 TYPE REF TO zcl_lnt_abstract_type.
            DATA t283 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t284 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t285) = CAST zcl_lnt_abstract_type( t262 ).
            t284 ?= t285.
            t283 = t284.
            DATA t286 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t287) = CAST zcl_lnt_ty_table_type( t283 ).
            t286 = t287->row_type.
            t282 = t286.
            t280 = t282.
          ELSE.
            DATA t288 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t288.
            t280 = t288.
          ENDIF.
          t262 = t280.
        ELSE.
          DATA t289 TYPE abap_bool.
          DATA t290 TYPE abap_bool.
          DATA t291 TYPE abap_bool.
          DATA(t292) = CAST zcl_lnt_abstract_type( t262 ).
          t291 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_void_type ).
          t290 = xsdbool( t291 = abap_false ).
          t289 = t290.
          IF t290 = abap_true.
            DATA t293 TYPE abap_bool.
            DATA t294 TYPE abap_bool.
            DATA(t295) = CAST zcl_lnt_abstract_type( t262 ).
            t294 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_unknown_type ).
            t293 = xsdbool( t294 = abap_false ).
            t289 = t293.
          ENDIF.
          IF t289 = abap_true.
            DATA t296 TYPE string.
            DATA(t297) = |LINES OF must be a table type|.
            t296 = t297.
            DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t299) = CAST zcl_lnt_syntax_input( t2 ).
            t298 = t299->issues.
            DATA t300 TYPE REF TO zcl_lnt_issue.
            DATA(t301) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t302 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t303) = CAST zcl_lnt_statement_node( t1 ).
            t302 = t303->get_first_token( ).
            DATA(t304) = t296.
            DATA t305 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t305.
            t300 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t301 i_token = t302 i_message_26cb = t304 i_fix = t305 ).
            APPEND t300 TO t298->items.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t306 TYPE abap_bool.
        DATA(t307) = CAST zcl_lnt_abstract_type( t3 ).
        t306 = xsdbool( t307 IS BOUND AND t307 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t306 = abap_true.
          DATA t308 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA t310 TYPE REF TO zcl_lnt_abstract_type.
            DATA t311 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t312 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t313) = CAST zcl_lnt_abstract_type( t3 ).
            t312 ?= t313.
            t311 = t312.
            DATA t314 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t315) = CAST zcl_lnt_ty_table_type( t311 ).
            t314 = t315->row_type.
            t310 = t314.
            t308 = t310.
          ELSE.
            DATA t316 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t316.
            t308 = t316.
          ENDIF.
          t3 = t308.
        ENDIF.
        DATA(t317) = VALUE abap_bool( ).
        DATA(t318) = VALUE abap_bool( ).
        DATA t319 TYPE REF TO zcl_lnt_type_utils.
        DATA t320 TYPE REF TO zcl_lnt_current_scope.
        DATA(t321) = CAST zcl_lnt_syntax_input( t2 ).
        t320 = t321->scope.
        t319 = NEW zcl_lnt_type_utils( i_scope = t320 ).
        DATA t322 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t322.
        DATA(t323) = abap_true.
        IF t323 = abap_true.
          DATA t324 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t325) = CAST zcl_lnt_abstract_type( t262 ).
          t324 = t325.
          t322 = t324.
        ELSE.
          DATA t326 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t326.
          t322 = t326.
        ENDIF.
        DATA(t327) = CAST zcl_lnt_abstract_type( t3 ).
        t318 = t319->is_assignable( i_source_75cf = t322 i_target_5f8a = t327 ).
        DATA(t328) = abap_false.
        t317 = xsdbool( t318 = t328 ).
        IF t317 = abap_true.
          DATA t329 TYPE string.
          DATA(t330) = |Incompatible types|.
          t329 = t330.
          DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t332) = CAST zcl_lnt_syntax_input( t2 ).
          t331 = t332->issues.
          DATA t333 TYPE REF TO zcl_lnt_issue.
          DATA(t334) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t335 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t336) = CAST zcl_lnt_statement_node( t1 ).
          t335 = t336->get_first_token( ).
          DATA(t337) = t329.
          DATA t338 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t338.
          t333 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t334 i_token = t335 i_message_26cb = t337 i_fix = t338 ).
          APPEND t333 TO t331->items.
          RETURN.
        ENDIF.
      ELSE.
        DATA t339 TYPE abap_bool.
        DATA t340 TYPE abap_bool.
        DATA t341 TYPE REF TO zcl_lnt_type_utils.
        DATA t342 TYPE REF TO zcl_lnt_current_scope.
        DATA(t343) = CAST zcl_lnt_syntax_input( t2 ).
        t342 = t343->scope.
        t341 = NEW zcl_lnt_type_utils( i_scope = t342 ).
        DATA(t344) = CAST zcl_lnt_abstract_type( t262 ).
        DATA(t345) = CAST zcl_lnt_abstract_type( t245 ).
        t340 = t341->is_assignable( i_source_75cf = t344 i_target_5f8a = t345 ).
        DATA(t346) = abap_false.
        t339 = xsdbool( t340 = t346 ).
        IF t339 = abap_true.
          DATA t347 TYPE string.
          DATA(t348) = |Incompatible types|.
          t347 = t348.
          DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t350) = CAST zcl_lnt_syntax_input( t2 ).
          t349 = t350->issues.
          DATA t351 TYPE REF TO zcl_lnt_issue.
          DATA(t352) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t353 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t354) = CAST zcl_lnt_statement_node( t1 ).
          t353 = t354->get_first_token( ).
          DATA(t355) = t347.
          DATA t356 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t356.
          t351 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t352 i_token = t353 i_message_26cb = t355 i_fix = t356 ).
          APPEND t351 TO t349->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t357 TYPE REF TO zcl_lnt_expression_node.
    DATA t358 TYPE REF TO zcl_lnt_expression_node.
    DATA(t359) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t360) = |FROM|.
    t358 = t359->find_expression_after_token( i_text = t360 ).
    t357 = t358.
    DATA t361 TYPE abap_bool.
    DATA t362 TYPE abap_bool.
    DATA(t363) = CAST zcl_lnt_expression_node( t357 ).
    t362 = xsdbool( t363 IS BOUND ).
    t361 = t362.
    IF t362 = abap_true.
      DATA t364 TYPE abap_bool.
      DATA t365 TYPE REF TO zif_lnt_statement_runnable.
      DATA t366 TYPE REF TO zcl_lnt_expression_node.
      DATA(t367) = CAST zcl_lnt_expression_node( t357 ).
      t366 = t367.
      t365 = t366->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t364 = xsdbool( t365 IS BOUND AND t365 IS INSTANCE OF zcl_lnt_st_source ).
      t361 = t364.
    ENDIF.
    IF t361 = abap_true.
      DATA t368 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t368.
      DATA t369 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t369.
      DATA(t370) = abap_true.
      IF t370 = abap_true.
        DATA t371 TYPE REF TO zcl_lnt_expression_node.
        DATA(t372) = CAST zcl_lnt_expression_node( t357 ).
        t371 = t372.
        t369 = t371.
      ELSE.
        DATA t373 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t373.
        t369 = t373.
      ENDIF.
      DATA(t374) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t375 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t375.
      DATA t376 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t376.
      DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t377.
      DATA t378 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t378.
      t368 = zcl_lnt_sy_source=>run_syntax( i_node = t369 i_input_967e = t374 i_target_type = t375 i_write_reference = t376 i_allow_generic_deference = t377 i_read_reference = t378 ).
    ENDIF.
    DATA t379 TYPE REF TO zcl_lnt_expression_node.
    DATA t380 TYPE REF TO zcl_lnt_expression_node.
    DATA(t381) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t382) = |TO|.
    t380 = t381->find_expression_after_token( i_text = t382 ).
    t379 = t380.
    DATA t383 TYPE abap_bool.
    DATA t384 TYPE abap_bool.
    DATA(t385) = CAST zcl_lnt_expression_node( t379 ).
    t384 = xsdbool( t385 IS BOUND ).
    t383 = t384.
    IF t384 = abap_true.
      DATA t386 TYPE abap_bool.
      DATA t387 TYPE REF TO zif_lnt_statement_runnable.
      DATA t388 TYPE REF TO zcl_lnt_expression_node.
      DATA(t389) = CAST zcl_lnt_expression_node( t379 ).
      t388 = t389.
      t387 = t388->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t386 = xsdbool( t387 IS BOUND AND t387 IS INSTANCE OF zcl_lnt_st_source ).
      t383 = t386.
    ENDIF.
    IF t383 = abap_true.
      DATA t390 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t390.
      DATA t391 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t391.
      DATA(t392) = abap_true.
      IF t392 = abap_true.
        DATA t393 TYPE REF TO zcl_lnt_expression_node.
        DATA(t394) = CAST zcl_lnt_expression_node( t379 ).
        t393 = t394.
        t391 = t393.
      ELSE.
        DATA t395 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t395.
        t391 = t395.
      ENDIF.
      DATA(t396) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t397 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t397.
      DATA t398 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t398.
      DATA t399 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t399.
      DATA t400 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t400.
      t390 = zcl_lnt_sy_source=>run_syntax( i_node = t391 i_input_967e = t396 i_target_type = t397 i_write_reference = t398 i_allow_generic_deference = t399 i_read_reference = t400 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d833_44fc5bb2f891.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
