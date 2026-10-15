* TS: src/abap/5_syntax/statements/selection_screen.ts:8:1 SelectionScreen
CLASS zcl_lnt_sy_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_selection_screen IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t3.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
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
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->get_first_token( ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = t3.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t20.
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
      DATA(t28) = t20.
      t27 = t28.
      t26 = t27->concat_tokens( ).
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
    DATA(t33) = t1.
    t32 = t33->concat_tokens( ).
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
    DATA(t48) = t18.
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = t47.
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
      DATA(t57) = t18.
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
      DATA(t64) = t18.
      t63 = t64->value.
      DATA(t65) = strlen( t62 ).
      t61 = |{ t62 }{ t63 }|.
      t60 = t61.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t67) = t2.
      t66 = t67->issues.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      DATA(t69) = t2.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t71) = t1.
      t70 = t71->get_first_token( ).
      DATA(t72) = t60.
      DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t73.
      t68 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t69 i_token = t70 i_message_26cb = t72 i_fix = t73 ).
      t66->load( ).
      APPEND t68 TO t66->items.
      t66->save( ).
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zcl_lnt_expression_node.
    DATA t75 TYPE REF TO zcl_lnt_expression_node.
    DATA(t76) = t1.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604.
    t75 = t76->find_first_expression( i_type_9913 = t77 ).
    t74 = t75.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    DATA t80 TYPE REF TO zcl_lnt_expression_node.
    DATA(t81) = t74.
    t80 = t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    t82 = t83.
    DATA(t84) = VALUE abap_bool( ).
    DATA(t85) = VALUE abap_bool( ).
    DATA(t86) = t80.
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
      DATA(t91) = t74.
      t90 = t91.
      t89 = t90->concat_tokens( ).
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
      DATA(t99) = t74.
      t98 = t99.
      t97 = t98->concat_tokens( ).
      DATA(t100) = strlen( t96 ).
      t95 = |{ t96 }{ t97 }|.
      t94 = t95.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t102) = t2.
      t101 = t102->issues.
      DATA t103 TYPE REF TO zcl_lnt_issue.
      DATA(t104) = t2.
      DATA t105 TYPE REF TO zcl_lnt_abstract_token.
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      DATA(t107) = t74.
      t106 = t107.
      t105 = t106->get_first_token( ).
      DATA(t108) = t94.
      DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t109.
      t103 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t104 i_token = t105 i_message_26cb = t108 i_fix = t109 ).
      t101->load( ).
      APPEND t103 TO t101->items.
      t101->save( ).
      RETURN.
    ENDIF.
    DATA t110 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t110.
    DATA t111 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t111.
    DATA t112 TYPE REF TO zcl_lnt_expression_node.
    DATA(t113) = t74.
    t112 = t113.
    DATA t114 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t114.
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = t112.
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
      DATA(t120) = t112.
      t119 = t120.
      t118 = t119->get_first_token( ).
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
      DATA(t129) = t7.
      t128 = xsdbool( t129 IS BOUND ).
      t121 = t128.
    ENDIF.
    IF t121 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t130.
      DATA t131 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t131.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t132.
      DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t134.
      t133 = t134.
      DATA(t135) = t133.
      DATA t136 TYPE REF TO zcl_lnt_istructure_component.
      DATA t137 TYPE string.
      DATA(t138) = |PROG|.
      t137 = t138.
      DATA t139 TYPE REF TO zcl_lnt_abstract_type.
      DATA t140 TYPE REF TO zcl_lnt_character_type.
      DATA(t141) = CONV f( 40 ).
      DATA t142 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t142.
      t140 = NEW zcl_lnt_character_type( i_length = t141 i_extra = t142 ).
      t139 = t140.
      DATA t143 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t144.
      t143 = t144.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      t145 = t146.
      t136 = NEW zcl_lnt_istructure_component( i_name = t137 i_type_9913 = t139 i_as_include = t143 i_suffix = t145 ).
      CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
      t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t147 ).
      ENDIF.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t148 ).
      ENDIF.
      CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
      t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t149) = |name|.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
      ENDIF.
      DATA(t151) = |type|.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
      ENDIF.
      t135->load( ).
      APPEND t136 TO t135->items.
      t135->save( ).
      DATA(t153) = t133.
      DATA t154 TYPE REF TO zcl_lnt_istructure_component.
      DATA t155 TYPE string.
      DATA(t156) = |DYNNR|.
      t155 = t156.
      DATA t157 TYPE REF TO zcl_lnt_abstract_type.
      DATA t158 TYPE REF TO zcl_lnt_character_type.
      DATA(t159) = CONV f( 4 ).
      DATA t160 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t160.
      t158 = NEW zcl_lnt_character_type( i_length = t159 i_extra = t160 ).
      t157 = t158.
      DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t162.
      t161 = t162.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t164.
      t163 = t164.
      t154 = NEW zcl_lnt_istructure_component( i_name = t155 i_type_9913 = t157 i_as_include = t161 i_suffix = t163 ).
      CREATE OBJECT t154->zlnt_view_ownkeys_b0e8086400eb.
      t154->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t165 ).
      ENDIF.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t166 ).
      ENDIF.
      CREATE OBJECT t154->zlnt_json_ownkeys_70e5fd461788.
      t154->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t167) = |name|.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
      ENDIF.
      DATA(t169) = |type|.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
      ENDIF.
      t153->load( ).
      APPEND t154 TO t153->items.
      t153->save( ).
      DATA(t171) = t133.
      DATA t172 TYPE REF TO zcl_lnt_istructure_component.
      DATA t173 TYPE string.
      DATA(t174) = |ACTIVETAB|.
      t173 = t174.
      DATA t175 TYPE REF TO zcl_lnt_abstract_type.
      DATA t176 TYPE REF TO zcl_lnt_character_type.
      DATA(t177) = CONV f( 132 ).
      DATA t178 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t178.
      t176 = NEW zcl_lnt_character_type( i_length = t177 i_extra = t178 ).
      t175 = t176.
      DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t180.
      t179 = t180.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t182.
      t181 = t182.
      t172 = NEW zcl_lnt_istructure_component( i_name = t173 i_type_9913 = t175 i_as_include = t179 i_suffix = t181 ).
      CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
      t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t183.
      IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t183 ).
      ENDIF.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t184 ).
      ENDIF.
      CREATE OBJECT t172->zlnt_json_ownkeys_70e5fd461788.
      t172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t185) = |name|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      ENDIF.
      DATA(t187) = |type|.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
      ENDIF.
      t171->load( ).
      APPEND t172 TO t171->items.
      t171->save( ).
      DATA(t189) = t133.
      t132 = t189.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t190.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      t131 = NEW zcl_lnt_structure_type( i_components = t132 i_qualified_name = t190 i_ddic_name = t191 i_description = t192 ).
      t130 = t131.
      DATA t193 TYPE REF TO zcl_lnt_current_scope.
      DATA t194 TYPE REF TO zcl_lnt_current_scope.
      DATA(t195) = t2.
      t194 = t195->scope.
      t193 = t194.
      DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t196.
      DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t197.
      DATA(t198) = abap_true.
      IF t198 = abap_true.
        DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t199.
        DATA t200 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t201) = t7.
        t200 = t201.
        DATA t202 TYPE string.
        DATA(t203) = t2.
        t202 = t203->filename.
        DATA(t204) = t130.
        DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t205.
        DATA(t206) = abap_true.
        IF t206 = abap_true.
          DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t209.
          t208 = t209.
          DATA(t210) = t208.
          DATA(t211) = |selection_screen_tab|.
          t210->load( ).
          APPEND t211 TO t210->items.
          t210->save( ).
          DATA(t212) = t208.
          t207 = t212.
          t205 = t207.
        ELSE.
          DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t213.
          t205 = t213.
        ENDIF.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        t199 = NEW zcl_lnt_typed_identifier( i_token = t200 i_filename = t202 i_type_9913 = t204 i_meta = t205 i_value = t214 ).
        t197 = t199.
      ELSE.
        DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t215.
        t197 = t215.
      ENDIF.
      t196 = t197.
      DATA(t216) = VALUE abap_bool( ).
      DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t218) = t196.
      t217 = t218.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t220.
      t219 = t220.
      DATA(t221) = VALUE abap_bool( ).
      DATA(t222) = t217.
      IF t222 IS INITIAL.
        t221 = abap_true.
      ENDIF.
      t216 = t221.
      IF t216 = abap_true.
      ELSE.
        DATA(t223) = t193.
        DATA(t224) = VALUE string( ).
        DATA t225 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t226 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t227) = t196.
        t226 = t227.
        t225 = t226.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE string.
        DATA t230 TYPE string.
        DATA t231 TYPE REF TO zcl_lnt_abstract_token.
        DATA t232 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t233) = t225.
        t232 = t233->token.
        t231 = t232.
        DATA t234 TYPE string.
        DATA(t235) = t231.
        t234 = t235->str.
        t230 = t234.
        t229 = t230.
        DATA(t236) = VALUE abap_bool( ).
        DATA(t237) = VALUE string( ).
        DATA(t238) = t229.
        DATA(t239) = 0.
        DATA(t240) = 1.
        DATA(t241) = strlen( t238 ).
        IF t239 < 0.
          t239 = t239 + t241.
          IF t239 < 0.
            t239 = 0.
          ENDIF.
        ENDIF.
        IF t239 > t241 OR t240 <= 0.
          CLEAR t237.
        ELSE.
          IF t240 > t241 - t239.
            t240 = t241 - t239.
          ENDIF.
          t237 = t238+t239(t240).
        ENDIF.
        DATA(t242) = |!|.
        t236 = xsdbool( t237 = t242 ).
        IF t236 = abap_true.
          DATA(t243) = VALUE string( ).
          DATA t244 TYPE string.
          DATA(t245) = t229.
          t244 = t245.
          DATA(t246) = VALUE string( ).
          DATA(t247) = t244.
          DATA(t248) = 1.
          DATA t249 TYPE i.
          DATA(t250) = t244.
          DATA(t251) = strlen( t250 ).
          t249 = t251.
          DATA(t252) = strlen( t247 ).
          IF t248 < 0.
            t248 = t248 + t252.
            IF t248 < 0.
              t248 = 0.
            ENDIF.
          ENDIF.
          IF t248 > t252 OR t249 <= 0.
            CLEAR t246.
          ELSE.
            IF t249 > t252 - t248.
              t249 = t252 - t248.
            ENDIF.
            t246 = t247+t248(t249).
          ENDIF.
          t243 = t246.
          t229 = t243.
        ENDIF.
        DATA(t253) = t229.
        t228 = t253.
        t224 = t228.
        DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t255) = t196.
        t254 = t255.
        t223->add_named_identifier( i_name = t224 i_identifier = t254 ).
      ENDIF.
    ELSE.
      DATA(t256) = VALUE abap_bool( ).
      DATA(t257) = VALUE abap_bool( ).
      DATA(t258) = t30.
      DATA(t259) = |SELECTION-SCREEN TAB|.
      DATA(t260) = strlen( t258 ).
      DATA t261 TYPE i.
      DATA(t262) = VALUE i( ).
      DATA(t263) = VALUE string( ).
      t261 = strlen( t259 ).
      IF t261 = 0.
        t257 = abap_true.
      ELSEIF t261 <= t260.
        t262 = 0.
        t263 = t258+t262(t261).
        IF t263 = t259.
          t257 = abap_true.
        ENDIF.
      ENDIF.
      t256 = t257.
      IF t257 = abap_true.
        DATA t264 TYPE abap_bool.
        DATA(t265) = t110.
        t264 = xsdbool( t265 IS BOUND ).
        t256 = t264.
      ENDIF.
      IF t256 = abap_true.
        DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t266.
        DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t267.
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t269) = t110.
        t268 = t269.
        DATA t270 TYPE string.
        DATA(t271) = t2.
        t270 = t271->filename.
        DATA t272 TYPE REF TO zcl_lnt_character_type.
        DATA(t273) = CONV f( 83 ).
        DATA t274 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t274.
        t272 = NEW zcl_lnt_character_type( i_length = t273 i_extra = t274 ).
        DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t275.
        DATA(t276) = abap_true.
        IF t276 = abap_true.
          DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t279 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t279.
          t278 = t279.
          DATA(t280) = t278.
          DATA(t281) = |selection_screen_tab|.
          t280->load( ).
          APPEND t281 TO t280->items.
          t280->save( ).
          DATA(t282) = t278.
          t277 = t282.
          t275 = t277.
        ELSE.
          DATA t283 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t283.
          t275 = t283.
        ENDIF.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        t267 = NEW zcl_lnt_typed_identifier( i_token = t268 i_filename = t270 i_type_9913 = t272 i_meta = t275 i_value = t284 ).
        t266 = t267.
        DATA t285 TYPE REF TO zcl_lnt_current_scope.
        DATA(t286) = t2.
        t285 = t286->scope.
        DATA t287 TYPE string.
        DATA t288 TYPE REF TO zcl_lnt_expression_node.
        DATA(t289) = t74.
        t288 = t289.
        t287 = t288->concat_tokens( ).
        DATA(t290) = t266.
        t285->add_named_identifier( i_name = t287 i_identifier = t290 ).
      ELSE.
        DATA t291 TYPE abap_bool.
        DATA(t292) = t110.
        t291 = xsdbool( t292 IS BOUND ).
        IF t291 = abap_true.
          DATA t293 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t294 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t295 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t296) = t110.
          t295 = t296.
          DATA t297 TYPE string.
          DATA(t298) = t2.
          t297 = t298->filename.
          DATA t299 TYPE REF TO zcl_lnt_character_type.
          DATA(t300) = CONV f( 83 ).
          DATA t301 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t301.
          t299 = NEW zcl_lnt_character_type( i_length = t300 i_extra = t301 ).
          DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t302.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          t294 = NEW zcl_lnt_typed_identifier( i_token = t295 i_filename = t297 i_type_9913 = t299 i_meta = t302 i_value = t303 ).
          t293 = t294.
          DATA t304 TYPE REF TO zcl_lnt_current_scope.
          DATA(t305) = t2.
          t304 = t305->scope.
          DATA t306 TYPE string.
          DATA t307 TYPE REF TO zcl_lnt_expression_node.
          DATA(t308) = t74.
          t307 = t308.
          t306 = t307->concat_tokens( ).
          DATA(t309) = t293.
          t304->add_named_identifier( i_name = t306 i_identifier = t309 ).
        ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d958_c4d32cc39d4e.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
