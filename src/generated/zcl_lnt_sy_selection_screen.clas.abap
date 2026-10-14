* TS: src/abap/5_syntax/statements/selection_screen.ts:8:1 SelectionScreen
CLASS zcl_lnt_sy_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_selection_screen IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d105_86aa91718a3c ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t9 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = CAST zcl_lnt_expression_node( t9 ).
      t16 = t17.
      t15 = t16->get_first_token(  ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = CAST zcl_lnt_expression_node( t3 ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zcl_lnt_expression_node( t20 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE string.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = CAST zcl_lnt_expression_node( t20 ).
      t27 = t28.
      t26 = t27->concat_tokens(  ).
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t26.
      t22 = t29.
    ENDIF.
    t19 = t22.
    t18 = t19.
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE string.
    DATA t32 TYPE string.
    DATA(t33) = CAST zcl_lnt_statement_node( t1 ).
    t32 = t33->concat_tokens(  ).
    DATA(t34) = strlen( t32 ).
    t31 = t32.
    IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t31 TO UPPER CASE.
    ELSE.
      t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
    ENDIF.
    t30 = t31.
    DATA(t35) = VALUE i( ).
    DATA(t36) = VALUE i( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE i( ).
    DATA(t39) = t30.
    DATA(t40) = |BEGIN OF TABBED BLOCK|.
    DATA(t41) = strlen( t39 ).
    IF t40 IS INITIAL.
      t38 = 0.
    ELSE.
      FIND t40 IN t39 MATCH OFFSET t38.
      IF sy-subrc <> 0.
        t38 = -1.
      ENDIF.
    ENDIF.
    DATA(t42) = 0.
    t37 = xsdbool( t38 >= t42 ).
    IF t37 = abap_true.
      DATA(t43) = 16.
      t36 = t43.
    ELSE.
      DATA(t44) = 20.
      t36 = t44.
    ENDIF.
    t35 = t36.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t48) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = CAST zlnt_runtime_opti_4ba3bdccd169( t47 ).
    IF t53 IS INITIAL.
      t52 = abap_true.
    ELSEIF t53->has = abap_false.
      t52 = abap_true.
    ENDIF.
    t51 = xsdbool( t52 = abap_false ).
    t46 = t51.
    t45 = t46.
    IF t46 = abap_true.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE i.
      DATA t56 TYPE string.
      DATA(t57) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
      t56 = t57->value.
      DATA(t58) = strlen( t56 ).
      t55 = t58.
      DATA(t59) = t35.
      t54 = xsdbool( t55 > t59 ).
      t45 = t54.
    ENDIF.
    IF t45 = abap_true.
      DATA t60 TYPE string.
      DATA t61 TYPE string.
      DATA(t62) = |SELECTION-SCREEN block name too long, |.
      DATA t63 TYPE string.
      DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
      t63 = t64->value.
      DATA(t65) = strlen( t62 ).
      t61 = |{ t62 }{ t63 }|.
      t60 = t61.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t67) = CAST zcl_lnt_syntax_input( t2 ).
      t66 = t67->issues.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      DATA(t69) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t71) = CAST zcl_lnt_statement_node( t1 ).
      t70 = t71->get_first_token(  ).
      DATA(t72) = t60.
      DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t73.
      t68 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t69 i_token = t70 i_message_26cb = t72 i_fix = t73 ).
      APPEND t68 TO t66->items.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zcl_lnt_expression_node.
    DATA t75 TYPE REF TO zcl_lnt_expression_node.
    DATA(t76) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a ).
    t75 = t76->find_first_expression( i_type_9913 = t77 ).
    t74 = t75.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    DATA t80 TYPE REF TO zcl_lnt_expression_node.
    DATA(t81) = CAST zcl_lnt_expression_node( t74 ).
    t80 = t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    t82 = t83.
    DATA(t84) = VALUE abap_bool( ).
    DATA(t85) = VALUE abap_bool( ).
    DATA(t86) = CAST zcl_lnt_expression_node( t80 ).
    IF t86 IS INITIAL.
      t85 = abap_true.
    ENDIF.
    t84 = xsdbool( t85 = abap_false ).
    t79 = t84.
    t78 = t79.
    IF t79 = abap_true.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE i.
      DATA t89 TYPE string.
      DATA t90 TYPE REF TO zcl_lnt_expression_node.
      DATA(t91) = CAST zcl_lnt_expression_node( t74 ).
      t90 = t91.
      t89 = t90->concat_tokens(  ).
      DATA(t92) = strlen( t89 ).
      t88 = t92.
      DATA(t93) = 8.
      t87 = xsdbool( t88 > t93 ).
      t78 = t87.
    ENDIF.
    IF t78 = abap_true.
      DATA t94 TYPE string.
      DATA t95 TYPE string.
      DATA(t96) = |SELECTION-SCREEN name too long, |.
      DATA t97 TYPE string.
      DATA t98 TYPE REF TO zcl_lnt_expression_node.
      DATA(t99) = CAST zcl_lnt_expression_node( t74 ).
      t98 = t99.
      t97 = t98->concat_tokens(  ).
      DATA(t100) = strlen( t96 ).
      t95 = |{ t96 }{ t97 }|.
      t94 = t95.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t102) = CAST zcl_lnt_syntax_input( t2 ).
      t101 = t102->issues.
      DATA t103 TYPE REF TO zcl_lnt_issue.
      DATA(t104) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t105 TYPE REF TO zcl_lnt_abstract_token.
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      DATA(t107) = CAST zcl_lnt_expression_node( t74 ).
      t106 = t107.
      t105 = t106->get_first_token(  ).
      DATA(t108) = t94.
      DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t109.
      t103 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t104 i_token = t105 i_message_26cb = t108 i_fix = t109 ).
      APPEND t103 TO t101->items.
      RETURN.
    ENDIF.
    DATA t110 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t110.
    DATA t111 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t111.
    DATA t112 TYPE REF TO zcl_lnt_expression_node.
    DATA(t113) = CAST zcl_lnt_expression_node( t74 ).
    t112 = t113.
    DATA t114 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t114.
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = CAST zcl_lnt_expression_node( t112 ).
    IF t116 IS INITIAL.
      t115 = abap_true.
    ENDIF.
    IF t115 = abap_true.
      DATA t117 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t117.
      t114 = t117.
    ELSE.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      DATA t119 TYPE REF TO zcl_lnt_expression_node.
      DATA(t120) = CAST zcl_lnt_expression_node( t112 ).
      t119 = t120.
      t118 = t119->get_first_token(  ).
      t114 = t118.
    ENDIF.
    t111 = t114.
    t110 = t111.
    DATA(t121) = VALUE abap_bool( ).
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = VALUE i( ).
    DATA(t124) = t30.
    DATA(t125) = |BEGIN OF TABBED BLOCK|.
    DATA(t126) = strlen( t124 ).
    IF t125 IS INITIAL.
      t123 = 0.
    ELSE.
      FIND t125 IN t124 MATCH OFFSET t123.
      IF sy-subrc <> 0.
        t123 = -1.
      ENDIF.
    ENDIF.
    DATA(t127) = 0.
    t122 = xsdbool( t123 >= t127 ).
    t121 = t122.
    IF t122 = abap_true.
      DATA t128 TYPE abap_bool.
      DATA(t129) = CAST zcl_lnt_abstract_token( t7 ).
      t128 = xsdbool( t129 IS BOUND ).
      t121 = t128.
    ENDIF.
    IF t121 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_structure_type.
      DATA t131 TYPE REF TO zcl_lnt_structure_type.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t134.
      t133 = t134.
      DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
      DATA t136 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t137) = |PROG|.
      DATA t138 TYPE REF TO zcl_lnt_character_type.
      DATA(t139) = CONV int8( 40 ).
      DATA t140 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t140.
      t138 = NEW zcl_lnt_character_type( i_length = t139 i_extra = t140 ).
      DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      t136 = NEW zcl_lnt_istructure_component( i_name = t137 i_type_9913 = t138 i_as_include = t141 i_suffix = t142 ).
      APPEND t136 TO t135->items.
      DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
      DATA t144 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t145) = |DYNNR|.
      DATA t146 TYPE REF TO zcl_lnt_character_type.
      DATA(t147) = CONV int8( 4 ).
      DATA t148 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t148.
      t146 = NEW zcl_lnt_character_type( i_length = t147 i_extra = t148 ).
      DATA t149 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t149.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t150.
      t144 = NEW zcl_lnt_istructure_component( i_name = t145 i_type_9913 = t146 i_as_include = t149 i_suffix = t150 ).
      APPEND t144 TO t143->items.
      DATA(t151) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
      DATA t152 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t153) = |ACTIVETAB|.
      DATA t154 TYPE REF TO zcl_lnt_character_type.
      DATA(t155) = CONV int8( 132 ).
      DATA t156 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t156.
      t154 = NEW zcl_lnt_character_type( i_length = t155 i_extra = t156 ).
      DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t157.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      t152 = NEW zcl_lnt_istructure_component( i_name = t153 i_type_9913 = t154 i_as_include = t157 i_suffix = t158 ).
      APPEND t152 TO t151->items.
      DATA(t159) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
      t132 = t159.
      DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t160.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      t131 = NEW zcl_lnt_structure_type( i_components = t132 i_qualified_name = t160 i_ddic_name = t161 i_description = t162 ).
      t130 = t131.
      DATA t163 TYPE REF TO zcl_lnt_current_scope.
      DATA t164 TYPE REF TO zcl_lnt_current_scope.
      DATA(t165) = CAST zcl_lnt_syntax_input( t2 ).
      t164 = t165->scope.
      t163 = t164.
      DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t166.
      DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t167.
      DATA(t168) = abap_true.
      IF t168 = abap_true.
        DATA t169 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t171) = CAST zcl_lnt_abstract_token( t7 ).
        t170 = t171.
        DATA t172 TYPE string.
        DATA(t173) = CAST zcl_lnt_syntax_input( t2 ).
        t172 = t173->filename.
        DATA(t174) = CAST zcl_lnt_structure_type( t130 ).
        DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t175.
        DATA(t176) = abap_true.
        IF t176 = abap_true.
          DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t179.
          t178 = t179.
          DATA(t180) = CAST zlnt_runtime_arra_8ecd6afe19e0( t178 ).
          DATA(t181) = |selection_screen_tab|.
          APPEND t181 TO t180->items.
          DATA(t182) = CAST zlnt_runtime_arra_8ecd6afe19e0( t178 ).
          t177 = t182.
          t175 = t177.
        ELSE.
          DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t183.
          t175 = t183.
        ENDIF.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        t169 = NEW zcl_lnt_typed_identifier( i_token = t170 i_filename = t172 i_type_9913 = t174 i_meta = t175 i_value = t184 ).
        t167 = t169.
      ELSE.
        DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t185.
        t167 = t185.
      ENDIF.
      t166 = t167.
      DATA(t186) = VALUE abap_bool( ).
      DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t188) = CAST zcl_lnt_typed_identifier( t166 ).
      t187 = t188.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      t189 = t190.
      DATA(t191) = VALUE abap_bool( ).
      DATA(t192) = CAST zcl_lnt_typed_identifier( t187 ).
      IF t192 IS INITIAL.
        t191 = abap_true.
      ENDIF.
      t186 = t191.
      IF t186 = abap_true.
      ELSE.
        DATA(t193) = CAST zcl_lnt_current_scope( t163 ).
        DATA(t194) = VALUE string( ).
        DATA t195 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t197) = CAST zcl_lnt_typed_identifier( t166 ).
        t196 = t197.
        t195 = t196.
        DATA(t198) = VALUE string( ).
        DATA t199 TYPE string.
        DATA t200 TYPE string.
        DATA t201 TYPE REF TO zcl_lnt_abstract_token.
        DATA t202 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t203) = CAST zcl_lnt_fi_identifier( t195 ).
        t202 = t203->token.
        t201 = t202.
        DATA t204 TYPE string.
        DATA(t205) = CAST zcl_lnt_abstract_token( t201 ).
        t204 = t205->str.
        t200 = t204.
        t199 = t200.
        DATA(t206) = VALUE abap_bool( ).
        DATA(t207) = VALUE string( ).
        DATA(t208) = t199.
        DATA(t209) = 0.
        DATA(t210) = 1.
        DATA(t211) = strlen( t208 ).
        IF t209 < 0.
          t209 = t209 + t211.
          IF t209 < 0.
            t209 = 0.
          ENDIF.
        ENDIF.
        IF t209 > t211 OR t210 <= 0.
          CLEAR t207.
        ELSE.
          IF t210 > t211 - t209.
            t210 = t211 - t209.
          ENDIF.
          t207 = t208+t209(t210).
        ENDIF.
        DATA(t212) = |!|.
        t206 = xsdbool( t207 = t212 ).
        IF t206 = abap_true.
          DATA(t213) = VALUE string( ).
          DATA t214 TYPE string.
          DATA(t215) = t199.
          t214 = t215.
          DATA(t216) = VALUE string( ).
          DATA(t217) = t214.
          DATA(t218) = 1.
          DATA t219 TYPE i.
          DATA(t220) = t214.
          DATA(t221) = strlen( t220 ).
          t219 = t221.
          DATA(t222) = strlen( t217 ).
          IF t218 < 0.
            t218 = t218 + t222.
            IF t218 < 0.
              t218 = 0.
            ENDIF.
          ENDIF.
          IF t218 > t222 OR t219 <= 0.
            CLEAR t216.
          ELSE.
            IF t219 > t222 - t218.
              t219 = t222 - t218.
            ENDIF.
            t216 = t217+t218(t219).
          ENDIF.
          t213 = t216.
          t199 = t213.
        ENDIF.
        DATA(t223) = t199.
        t198 = t223.
        t194 = t198.
        DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t225) = CAST zcl_lnt_typed_identifier( t166 ).
        t224 = t225.
        t193->add_named_identifier( i_name = t194 i_identifier = t224 ).
      ENDIF.
    ELSE.
      DATA(t226) = VALUE abap_bool( ).
      DATA(t227) = VALUE abap_bool( ).
      DATA(t228) = t30.
      DATA(t229) = |SELECTION-SCREEN TAB|.
      DATA(t230) = strlen( t228 ).
      DATA t231 TYPE i.
      DATA(t232) = VALUE i( ).
      DATA(t233) = VALUE string( ).
      t231 = strlen( t229 ).
      IF t231 = 0.
        t227 = abap_true.
      ELSEIF t231 <= t230.
        t232 = 0.
        t233 = t228+t232(t231).
        IF t233 = t229.
          t227 = abap_true.
        ENDIF.
      ENDIF.
      t226 = t227.
      IF t227 = abap_true.
        DATA t234 TYPE abap_bool.
        DATA(t235) = CAST zcl_lnt_abstract_token( t110 ).
        t234 = xsdbool( t235 IS BOUND ).
        t226 = t234.
      ENDIF.
      IF t226 = abap_true.
        DATA t236 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t236.
        DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t237.
        DATA t238 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t239) = CAST zcl_lnt_abstract_token( t110 ).
        t238 = t239.
        DATA t240 TYPE string.
        DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
        t240 = t241->filename.
        DATA t242 TYPE REF TO zcl_lnt_character_type.
        DATA(t243) = CONV int8( 83 ).
        DATA t244 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t244.
        t242 = NEW zcl_lnt_character_type( i_length = t243 i_extra = t244 ).
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t245.
        DATA(t246) = abap_true.
        IF t246 = abap_true.
          DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t249.
          t248 = t249.
          DATA(t250) = CAST zlnt_runtime_arra_8ecd6afe19e0( t248 ).
          DATA(t251) = |selection_screen_tab|.
          APPEND t251 TO t250->items.
          DATA(t252) = CAST zlnt_runtime_arra_8ecd6afe19e0( t248 ).
          t247 = t252.
          t245 = t247.
        ELSE.
          DATA t253 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t253.
          t245 = t253.
        ENDIF.
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        t237 = NEW zcl_lnt_typed_identifier( i_token = t238 i_filename = t240 i_type_9913 = t242 i_meta = t245 i_value = t254 ).
        t236 = t237.
        DATA t255 TYPE REF TO zcl_lnt_current_scope.
        DATA(t256) = CAST zcl_lnt_syntax_input( t2 ).
        t255 = t256->scope.
        DATA t257 TYPE string.
        DATA t258 TYPE REF TO zcl_lnt_expression_node.
        DATA(t259) = CAST zcl_lnt_expression_node( t74 ).
        t258 = t259.
        t257 = t258->concat_tokens(  ).
        DATA(t260) = CAST zcl_lnt_typed_identifier( t236 ).
        t255->add_named_identifier( i_name = t257 i_identifier = t260 ).
      ELSE.
        DATA t261 TYPE abap_bool.
        DATA(t262) = CAST zcl_lnt_abstract_token( t110 ).
        t261 = xsdbool( t262 IS BOUND ).
        IF t261 = abap_true.
          DATA t263 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t264 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t265 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t266) = CAST zcl_lnt_abstract_token( t110 ).
          t265 = t266.
          DATA t267 TYPE string.
          DATA(t268) = CAST zcl_lnt_syntax_input( t2 ).
          t267 = t268->filename.
          DATA t269 TYPE REF TO zcl_lnt_character_type.
          DATA(t270) = CONV int8( 83 ).
          DATA t271 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t271.
          t269 = NEW zcl_lnt_character_type( i_length = t270 i_extra = t271 ).
          DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t272.
          DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t273.
          t264 = NEW zcl_lnt_typed_identifier( i_token = t265 i_filename = t267 i_type_9913 = t269 i_meta = t272 i_value = t273 ).
          t263 = t264.
          DATA t274 TYPE REF TO zcl_lnt_current_scope.
          DATA(t275) = CAST zcl_lnt_syntax_input( t2 ).
          t274 = t275->scope.
          DATA t276 TYPE string.
          DATA t277 TYPE REF TO zcl_lnt_expression_node.
          DATA(t278) = CAST zcl_lnt_expression_node( t74 ).
          t277 = t278.
          t276 = t277->concat_tokens(  ).
          DATA(t279) = CAST zcl_lnt_typed_identifier( t263 ).
          t274->add_named_identifier( i_name = t276 i_identifier = t279 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d936_b0342153e232.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
