* TS: src/abap/5_syntax/statements/write.ts:12:1 Write
CLASS zcl_lnt_sy_write DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_write IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t4 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t8) = CAST zcl_lnt_statement_node( t1 ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = CAST zcl_lnt_abstract_node( t7 ).
    t9 = t10->children.
    t6 = t9.
    t5 ?= t6.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    READ TABLE t5->items INDEX 2 INTO t11.
    t4 ?= t11.
    t3 = t4.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE REF TO object.
    DATA(t14) = CAST zif_lnt_union_4cf1d054( t3 ).
    t13 = t14->get_db65(  ).
    t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_write_offset_length ).
    IF t12 = abap_true.
      DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t19) = CAST zcl_lnt_statement_node( t1 ).
      t18 = t19.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = CAST zcl_lnt_abstract_node( t18 ).
      t20 = t21->children.
      t17 = t20.
      t16 ?= t17.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      READ TABLE t16->items INDEX 3 INTO t22.
      t15 ?= t22.
      t3 = t15.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t23 = t24->find_direct_expressions( i_type_9913 = t25 ).
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    LOOP AT t23->items INTO t27.
      t26 ?= t27.
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = CAST zcl_lnt_expression_node( t26 ).
        t30 = t32.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        t30 = t33.
      ENDIF.
      DATA(t34) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      t29 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t34 i_target_type = t35 i_write_reference = t36 i_allow_generic_deference = t37 i_read_reference = t38 ).
      t28 = t29.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE abap_bool.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t43) = CAST zcl_lnt_expression_node( t26 ).
      t42 ?= t43.
      DATA(t44) = CAST zif_lnt_union_4cf1d054( t3 ).
      t41 = xsdbool( t42 = t44 ).
      t40 = t41.
      IF t41 = abap_true.
        DATA t45 TYPE abap_bool.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE REF TO zcl_lnt_type_utils.
        DATA t48 TYPE REF TO zcl_lnt_current_scope.
        DATA(t49) = CAST zcl_lnt_syntax_input( t2 ).
        t48 = t49->scope.
        t47 = NEW zcl_lnt_type_utils( i_scope = t48 ).
        DATA(t50) = CAST zcl_lnt_abstract_type( t28 ).
        t46 = t47->is_char_like( i_type_9913 = t50 ).
        DATA(t51) = abap_false.
        t45 = xsdbool( t46 = t51 ).
        t40 = t45.
      ENDIF.
      t39 = t40.
      IF t40 = abap_true.
        DATA t52 TYPE abap_bool.
        DATA t53 TYPE abap_bool.
        DATA t54 TYPE REF TO zcl_lnt_type_utils.
        DATA t55 TYPE REF TO zcl_lnt_current_scope.
        DATA(t56) = CAST zcl_lnt_syntax_input( t2 ).
        t55 = t56->scope.
        t54 = NEW zcl_lnt_type_utils( i_scope = t55 ).
        DATA(t57) = CAST zcl_lnt_abstract_type( t28 ).
        t53 = t54->is_hex_like( i_type_9913 = t57 ).
        DATA(t58) = abap_false.
        t52 = xsdbool( t53 = t58 ).
        t39 = t52.
      ENDIF.
      IF t39 = abap_true.
        DATA t59 TYPE string.
        DATA(t60) = |Source not character like|.
        t59 = t60.
        DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t62) = CAST zcl_lnt_syntax_input( t2 ).
        t61 = t62->issues.
        DATA t63 TYPE REF TO zcl_lnt_issue.
        DATA(t64) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t66) = CAST zcl_lnt_expression_node( t26 ).
        t65 = t66->get_first_token(  ).
        DATA(t67) = t59.
        DATA t68 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t68.
        t63 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t64 i_token = t65 i_message_26cb = t67 i_fix = t68 ).
        APPEND t63 TO t61->items.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    DATA t73 TYPE REF TO zcl_lnt_expression_node.
    DATA(t74) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d340_8d8d1acca482 ).
    t73 = t74->find_direct_expression( i_type_9913 = t75 ).
    t72 = t73.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = CAST zcl_lnt_expression_node( t72 ).
    IF t78 IS INITIAL.
      t77 = abap_true.
    ENDIF.
    IF t77 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t79.
      t76 = t79.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t81 TYPE REF TO zcl_lnt_expression_node.
      DATA(t82) = CAST zcl_lnt_expression_node( t72 ).
      t81 = t82.
      DATA(t83) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
      t80 = t81->find_direct_expressions( i_type_9913 = t83 ).
      t76 = t80.
    ENDIF.
    t71 = t76.
    t70 = t71.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    DATA t85 TYPE abap_bool.
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
    t85 = xsdbool( t86 IS BOUND ).
    IF t85 = abap_true.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
      t87 = t88.
      t84 = t87.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t89.
      t84 = t89.
    ENDIF.
    t69 = t84.
    DATA t90 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t90.
    DATA t91 TYPE REF TO object.
    CLEAR t91.
    LOOP AT t69->items INTO t91.
      t90 ?= t91.
      DATA t92 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t92.
      DATA(t93) = CAST zcl_lnt_expression_node( t90 ).
      DATA(t94) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      DATA(t96) = abap_true.
      IF t96 = abap_true.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t98) = |Read From|.
        CREATE OBJECT t97.
        t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t97->sval = t98.
        t95 = t97.
      ELSE.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        t95 = t99.
      ENDIF.
      DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t100.
      t92 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t93 i_input_967e = t94 i_ref_type = t95 i_allow_generic_deference = t100 ).
    ENDLOOP.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t102) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t103) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t101 = t102->find_all_expressions( i_type_9913 = t103 ).
    DATA t104 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t104.
    DATA t105 TYPE REF TO object.
    CLEAR t105.
    LOOP AT t101->items INTO t105.
      t104 ?= t105.
      DATA(t106) = CAST zcl_lnt_expression_node( t104 ).
      DATA(t107) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t106 i_input_967e = t107 ).
    ENDLOOP.
    DATA t108 TYPE REF TO zcl_lnt_expression_node.
    DATA t109 TYPE REF TO zcl_lnt_expression_node.
    DATA(t110) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t109 = t110->find_direct_expression( i_type_9913 = t111 ).
    t108 = t109.
    DATA t112 TYPE abap_bool.
    DATA(t113) = CAST zcl_lnt_expression_node( t108 ).
    t112 = xsdbool( t113 IS BOUND ).
    IF t112 = abap_true.
      DATA t114 TYPE REF TO zcl_lnt_abstract_type.
      DATA t115 TYPE REF TO zcl_lnt_abstract_type.
      DATA t116 TYPE REF TO zcl_lnt_expression_node.
      DATA(t117) = CAST zcl_lnt_expression_node( t108 ).
      t116 = t117.
      DATA(t118) = CAST zcl_lnt_syntax_input( t2 ).
      t115 = zcl_lnt_sy_target=>run_syntax( i_node = t116 i_input_967e = t118 ).
      t114 = t115.
      DATA(t119) = VALUE abap_bool( ).
      DATA(t120) = VALUE abap_bool( ).
      DATA t121 TYPE REF TO zcl_lnt_type_utils.
      DATA t122 TYPE REF TO zcl_lnt_type_utils.
      DATA t123 TYPE REF TO zcl_lnt_current_scope.
      DATA(t124) = CAST zcl_lnt_syntax_input( t2 ).
      t123 = t124->scope.
      t122 = NEW zcl_lnt_type_utils( i_scope = t123 ).
      t121 = t122.
      DATA t125 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t126) = CAST zcl_lnt_abstract_type( t114 ).
      t125 = t126.
      DATA(t127) = VALUE abap_bool( ).
      DATA t128 TYPE abap_bool.
      DATA t129 TYPE abap_bool.
      DATA(t130) = CAST zcl_lnt_abstract_type( t125 ).
      t129 = xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_structure_type ).
      t128 = t129.
      IF t129 = abap_false.
        DATA t131 TYPE abap_bool.
        DATA t132 TYPE abap_bool.
        DATA(t133) = CAST zcl_lnt_abstract_type( t125 ).
        t132 = xsdbool( t133 IS BOUND AND t133 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t131 = t132.
        IF t132 = abap_true.
          DATA t134 TYPE abap_bool.
          DATA t135 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t136 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t137) = CAST zcl_lnt_abstract_type( t125 ).
          t136 ?= t137.
          t135 = t136.
          DATA t138 TYPE abap_bool.
          DATA t139 TYPE REF TO zcl_lnt_itable_options.
          DATA(t140) = CAST zcl_lnt_ty_table_type( t135 ).
          t139 = t140->options.
          t138 = t139->with_header.
          t134 = t138.
          t131 = t134.
        ENDIF.
        t128 = t131.
      ENDIF.
      IF t128 = abap_true.
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = CAST zcl_lnt_type_utils( t121 ).
        DATA t143 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t143.
        DATA(t144) = abap_true.
        IF t144 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abstract_type.
          DATA t146 TYPE REF TO zif_lnt_union_2724f734.
          DATA t147 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t148) = CAST zcl_lnt_abstract_type( t125 ).
          t147 = t148.
          t146 ?= t147.
          t145 ?= t146.
          t143 = t145.
        ELSE.
          DATA t149 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t149.
          t143 = t149.
        ENDIF.
        t141 = t142->is_char_like_strict( i_type_9913 = t143 ).
        t127 = t141.
      ELSE.
        DATA(t150) = VALUE abap_bool( ).
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = VALUE abap_bool( ).
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = VALUE abap_bool( ).
        DATA(t156) = VALUE abap_bool( ).
        DATA t157 TYPE abap_bool.
        DATA t158 TYPE abap_bool.
        DATA(t159) = CAST zcl_lnt_abstract_type( t125 ).
        t158 = xsdbool( t159 IS BOUND AND t159 IS INSTANCE OF zcl_lnt_character_type ).
        t157 = t158.
        IF t158 = abap_false.
          DATA t160 TYPE abap_bool.
          DATA(t161) = CAST zcl_lnt_abstract_type( t125 ).
          t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_numeric_type ).
          t157 = t160.
        ENDIF.
        t156 = t157.
        IF t157 = abap_false.
          DATA t162 TYPE abap_bool.
          DATA(t163) = CAST zcl_lnt_abstract_type( t125 ).
          t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_date_type ).
          t156 = t162.
        ENDIF.
        t155 = t156.
        IF t156 = abap_false.
          DATA t164 TYPE abap_bool.
          DATA(t165) = CAST zcl_lnt_abstract_type( t125 ).
          t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_time_type ).
          t155 = t164.
        ENDIF.
        t154 = t155.
        IF t155 = abap_false.
          DATA t166 TYPE abap_bool.
          DATA(t167) = CAST zcl_lnt_abstract_type( t125 ).
          t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_c_generic_type ).
          t154 = t166.
        ENDIF.
        t153 = t154.
        IF t154 = abap_false.
          DATA t168 TYPE abap_bool.
          DATA(t169) = CAST zcl_lnt_abstract_type( t125 ).
          t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_c_like_type ).
          t153 = t168.
        ENDIF.
        t152 = t153.
        IF t153 = abap_false.
          DATA t170 TYPE abap_bool.
          DATA(t171) = CAST zcl_lnt_abstract_type( t125 ).
          t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_any_type ).
          t152 = t170.
        ENDIF.
        t151 = t152.
        IF t152 = abap_false.
          DATA t172 TYPE abap_bool.
          DATA(t173) = CAST zcl_lnt_abstract_type( t125 ).
          t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_unknown_type ).
          t151 = t172.
        ENDIF.
        t150 = t151.
        IF t151 = abap_false.
          DATA t174 TYPE abap_bool.
          DATA(t175) = CAST zcl_lnt_abstract_type( t125 ).
          t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_void_type ).
          t150 = t174.
        ENDIF.
        t127 = t150.
      ENDIF.
      t120 = t127.
      DATA(t176) = abap_false.
      t119 = xsdbool( t120 = t176 ).
      IF t119 = abap_true.
        DATA(t177) = VALUE string( ).
        DATA(t178) = VALUE string( ).
        DATA(t179) = VALUE string( ).
        DATA t180 TYPE string.
        DATA t181 TYPE string.
        DATA(t182) = |"|.
        DATA t183 TYPE string.
        DATA t184 TYPE REF TO zcl_lnt_expression_node.
        DATA(t185) = CAST zcl_lnt_expression_node( t108 ).
        t184 = t185.
        t183 = t184->concat_tokens(  ).
        DATA(t186) = strlen( t182 ).
        t181 = |{ t182 }{ t183 }|.
        DATA(t187) = |" must be a character-like field (data type C, N, D, or T, g|.
        t187 = t187 && |ot "|.
        DATA(t188) = strlen( t181 ).
        t180 = |{ t181 }{ t187 }|.
        DATA(t189) = VALUE string( ).
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        DATA t192 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t192.
        DATA t193 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t193.
        DATA t194 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t195) = CAST zcl_lnt_abstract_type( t114 ).
        t194 = t195.
        DATA t196 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t196.
        DATA(t197) = VALUE abap_bool( ).
        DATA(t198) = CAST zcl_lnt_abstract_type( t194 ).
        IF t198 IS INITIAL.
          t197 = abap_true.
        ENDIF.
        IF t197 = abap_true.
          DATA t199 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t199.
          t196 = t199.
        ELSE.
          DATA t200 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t201 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t202) = CAST zcl_lnt_abstract_type( t194 ).
          t201 = t202.
          t200 = t201->zlnt_builtin_clas_3f891b097658( ).
          t196 = t200.
        ENDIF.
        t193 = t196.
        t192 = t193.
        DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t203.
        DATA(t204) = VALUE abap_bool( ).
        DATA(t205) = CAST zlnt_runtime_clas_a39833db3295( t192 ).
        IF t205 IS INITIAL.
          t204 = abap_true.
        ENDIF.
        IF t204 = abap_true.
          DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t206.
          t203 = t206.
        ELSE.
          DATA t207 TYPE string.
          DATA t208 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA(t209) = CAST zlnt_runtime_clas_a39833db3295( t192 ).
          t208 = t209.
          t207 = t208->name.
          DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t210->has = abap_true.
          t210->value = t207.
          t203 = t210.
        ENDIF.
        t191 = t203.
        t190 = t191.
        DATA(t211) = VALUE string( ).
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = CAST zlnt_runtime_opti_4ba3bdccd169( t190 ).
        IF t213 IS INITIAL.
          t212 = abap_true.
        ELSEIF t213->has = abap_false.
          t212 = abap_true.
        ENDIF.
        IF t212 = abap_true.
          DATA(t214) = |undefined|.
          t211 = t214.
        ELSE.
          DATA t215 TYPE string.
          DATA(t216) = CAST zlnt_runtime_opti_4ba3bdccd169( t190 ).
          t215 = t216->value.
          t211 = t215.
        ENDIF.
        t189 = t211.
        DATA(t217) = strlen( t180 ).
        t179 = |{ t180 }{ t189 }|.
        DATA(t218) = |")|.
        DATA(t219) = strlen( t179 ).
        t178 = |{ t179 }{ t218 }|.
        t177 = t178.
        DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t221) = CAST zcl_lnt_syntax_input( t2 ).
        t220 = t221->issues.
        DATA t222 TYPE REF TO zcl_lnt_issue.
        DATA(t223) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t224 TYPE REF TO zcl_lnt_abstract_token.
        DATA t225 TYPE REF TO zcl_lnt_expression_node.
        DATA(t226) = CAST zcl_lnt_expression_node( t108 ).
        t225 = t226.
        t224 = t225->get_first_token(  ).
        DATA(t227) = t177.
        DATA t228 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t228.
        t222 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t223 i_token = t224 i_message_26cb = t227 i_fix = t228 ).
        APPEND t222 TO t220->items.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d967_20f9e6921048.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
