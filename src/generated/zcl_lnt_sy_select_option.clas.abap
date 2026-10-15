* TS: src/abap/5_syntax/statements/selectoption.ts:11:1 SelectOption
CLASS zcl_lnt_sy_select_option DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_select_option IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t3.
    t16 = t17.
    t15 = t16->get_first_token( ).
    t14 = t15.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE i.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = t3.
    t23 = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t22.
    t25 = t26->children.
    t21 = t25.
    t20 ?= t21.
    t20->load( ).
    t19 = lines( t20->items ).
    DATA(t27) = 1.
    t18 = xsdbool( t19 > t27 ).
    IF t18 = abap_true.
      DATA t28 TYPE string.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = t3.
      t32 = t33.
      t31 = t32->concat_tokens( ).
      DATA t34 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t34.
      DATA(t35) = `\(.+$`.
      DATA(t36) = `\([^`.
      t36 = t36 && |\n\r|.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t36 t37 INTO t36 RESPECTING BLANKS.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t36 t38 INTO t36 RESPECTING BLANKS.
      t36 = t36 && |]+$|.
      DATA(t39) = ||.
      CREATE OBJECT t34 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t36 flags = t39.
      t34->source = t35.
      DATA(t40) = ||.
      DATA(t41) = strlen( t31 ).
      t30 = t34->replace( p0 = t31 p1 = t40 ).
      DATA t42 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t42.
      DATA(t43) = `\[\]$`.
      DATA(t44) = ||.
      CREATE OBJECT t42 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t43 flags = t44.
      DATA(t45) = ||.
      DATA(t46) = strlen( t30 ).
      t29 = t42->replace( p0 = t30 p1 = t45 ).
      t28 = t29.
      DATA t47 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t48 TYPE REF TO zcl_lnt_position.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t50) = t14.
      t49 = t50.
      DATA t51 TYPE REF TO zcl_lnt_position.
      DATA(t52) = t49.
      t51 = t52->start.
      t48 = t51.
      DATA(t53) = t28.
      t47 = NEW zcl_lnt_lx_identifier( i_start = t48 i_str = t53 ).
      t14 = t47.
    ENDIF.
    DATA t54 TYPE abap_bool.
    DATA t55 TYPE abap_bool.
    DATA(t56) = t14.
    t55 = xsdbool( t56 IS BOUND ).
    t54 = t55.
    IF t55 = abap_true.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE i.
      DATA t59 TYPE string.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t61) = t14.
      t60 = t61.
      DATA t62 TYPE string.
      DATA(t63) = t60.
      t62 = t63->str.
      t59 = t62.
      DATA(t64) = strlen( t59 ).
      t58 = t64.
      DATA(t65) = 8.
      t57 = xsdbool( t58 > t65 ).
      t54 = t57.
    ENDIF.
    IF t54 = abap_true.
      DATA t66 TYPE string.
      DATA t67 TYPE string.
      DATA(t68) = |Select-option name too long, |.
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t71) = t14.
      t70 = t71.
      DATA t72 TYPE string.
      DATA(t73) = t70.
      t72 = t73->str.
      t69 = t72.
      DATA(t74) = strlen( t68 ).
      t67 = |{ t68 }{ t69 }|.
      t66 = t67.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t76) = t2.
      t75 = t76->issues.
      DATA t77 TYPE REF TO zcl_lnt_issue.
      DATA(t78) = t2.
      DATA(t79) = t14.
      DATA(t80) = t66.
      DATA t81 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t81.
      t77 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t78 i_token = t79 i_message_26cb = t80 i_fix = t81 ).
      t75->load( ).
      APPEND t77 TO t75->items.
      t75->save( ).
      RETURN.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t83) = t1.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t82 = t83->find_direct_expressions( i_type_9913 = t84 ).
    DATA t85 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t85.
    DATA t86 TYPE REF TO object.
    CLEAR t86.
    DATA(t87) = VALUE i( ).
    DO.
      t82->load( ).
      IF t87 >= lines( t82->items ).
        EXIT.
      ENDIF.
      CLEAR t86.
      READ TABLE t82->items INDEX t87 + 1 INTO t86.
      t87 = t87 + 1.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      CLEAR t85.
      IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t88 ?= t86.
        DATA t89 TYPE REF TO object.
        t89 = t88->as_ref( ).
        t85 ?= t89.
      ELSE.
        t85 ?= t86.
      ENDIF.
      DATA(t90) = t85.
      DATA(t91) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t90 i_input_967e = t91 ).
      DATA t92 TYPE REF TO zcl_lnt_current_scope.
      DATA t93 TYPE REF TO zcl_lnt_current_scope.
      DATA(t94) = t2.
      t93 = t94->scope.
      t92 = t93.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t95.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t96.
      DATA(t97) = abap_true.
      IF t97 = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t98.
        DATA(t99) = t14.
        DATA t100 TYPE string.
        DATA(t101) = t2.
        t100 = t101->filename.
        DATA t102 TYPE REF TO zcl_lnt_void_type.
        CLEAR t102.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        DATA(t104) = abap_true.
        IF t104 = abap_true.
          DATA(t105) = |DYNAMIC_SELECT_OPTION|.
          DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t106->has = abap_true.
          t106->value = t105.
          t103 = t106.
        ELSE.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t107.
          t103 = t107.
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        t102 = zcl_lnt_void_type=>get_db65( i_voided = t103 i_qualified_name = t108 ).
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        t98 = NEW zcl_lnt_typed_identifier( i_token = t99 i_filename = t100 i_type_9913 = t102 i_meta = t109 i_value = t110 ).
        t96 = t98.
      ELSE.
        DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t111.
        t96 = t111.
      ENDIF.
      t95 = t96.
      DATA(t112) = VALUE abap_bool( ).
      DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t114) = t95.
      t113 = t114.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t115 = t116.
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = t113.
      IF t118 IS INITIAL.
        t117 = abap_true.
      ENDIF.
      t112 = t117.
      IF t112 = abap_true.
      ELSE.
        DATA(t119) = t92.
        DATA(t120) = VALUE string( ).
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t122 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t123) = t95.
        t122 = t123.
        t121 = t122.
        DATA(t124) = VALUE string( ).
        DATA t125 TYPE string.
        DATA t126 TYPE string.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        DATA t128 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t129) = t121.
        t128 = t129->token.
        t127 = t128.
        DATA t130 TYPE string.
        DATA(t131) = t127.
        t130 = t131->str.
        t126 = t130.
        t125 = t126.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = VALUE string( ).
        DATA(t134) = t125.
        DATA(t135) = 0.
        DATA(t136) = 1.
        DATA(t137) = strlen( t134 ).
        IF t135 < 0.
          t135 = t135 + t137.
          IF t135 < 0.
            t135 = 0.
          ENDIF.
        ENDIF.
        IF t135 > t137 OR t136 <= 0.
          CLEAR t133.
        ELSE.
          IF t136 > t137 - t135.
            t136 = t137 - t135.
          ENDIF.
          t133 = t134+t135(t136).
        ENDIF.
        DATA(t138) = |!|.
        t132 = xsdbool( t133 = t138 ).
        IF t132 = abap_true.
          DATA(t139) = VALUE string( ).
          DATA t140 TYPE string.
          DATA(t141) = t125.
          t140 = t141.
          DATA(t142) = VALUE string( ).
          DATA(t143) = t140.
          DATA(t144) = 1.
          DATA t145 TYPE i.
          DATA(t146) = t140.
          DATA(t147) = strlen( t146 ).
          t145 = t147.
          DATA(t148) = strlen( t143 ).
          IF t144 < 0.
            t144 = t144 + t148.
            IF t144 < 0.
              t144 = 0.
            ENDIF.
          ENDIF.
          IF t144 > t148 OR t145 <= 0.
            CLEAR t142.
          ELSE.
            IF t145 > t148 - t144.
              t145 = t148 - t144.
            ENDIF.
            t142 = t143+t144(t145).
          ENDIF.
          t139 = t142.
          t125 = t139.
        ENDIF.
        DATA(t149) = t125.
        t124 = t149.
        t120 = t124.
        DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t151) = t95.
        t150 = t151.
        t119->add_named_identifier( i_name = t120 i_identifier = t150 ).
      ENDIF.
      RETURN.
    ENDDO.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    DATA t153 TYPE REF TO zcl_lnt_expression_node.
    DATA(t154) = t1.
    DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t153 = t154->find_first_expression( i_type_9913 = t155 ).
    t152 = t153.
    DATA t156 TYPE REF TO zcl_lnt_abstract_type.
    DATA t157 TYPE REF TO zcl_lnt_abstract_type.
    DATA t158 TYPE REF TO zcl_lnt_basic_types.
    DATA(t159) = t2.
    t158 = NEW zcl_lnt_basic_types( i_input_967e = t159 ).
    DATA(t160) = t152.
    DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t161.
    t157 = t158->resolve_like_name( i_node = t160 i_header_logic = t161 ).
    t156 = t157.
    DATA t162 TYPE abap_bool.
    DATA(t163) = t156.
    t162 = xsdbool( t163 IS BOUND ).
    IF t162 = abap_true.
      DATA t164 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t165.
      DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t166.
      DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t168.
      t167 = t168.
      DATA(t169) = t167.
      DATA t170 TYPE REF TO zcl_lnt_istructure_component.
      DATA t171 TYPE string.
      DATA(t172) = |SIGN|.
      t171 = t172.
      DATA t173 TYPE REF TO zcl_lnt_abstract_type.
      DATA t174 TYPE REF TO zcl_lnt_character_type.
      DATA(t175) = CONV f( 1 ).
      DATA t176 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t176.
      t174 = NEW zcl_lnt_character_type( i_length = t175 i_extra = t176 ).
      t173 = t174.
      DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t178.
      t177 = t178.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t180.
      t179 = t180.
      t170 = NEW zcl_lnt_istructure_component( i_name = t171 i_type_9913 = t173 i_as_include = t177 i_suffix = t179 ).
      CREATE OBJECT t170->zlnt_view_ownkeys_b0e8086400eb.
      t170->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t181 ).
      ENDIF.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t182 ).
      ENDIF.
      CREATE OBJECT t170->zlnt_json_ownkeys_70e5fd461788.
      t170->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t183) = |name|.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
      ENDIF.
      DATA(t185) = |type|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      ENDIF.
      t169->load( ).
      APPEND t170 TO t169->items.
      t169->save( ).
      DATA(t187) = t167.
      DATA t188 TYPE REF TO zcl_lnt_istructure_component.
      DATA t189 TYPE string.
      DATA(t190) = |OPTION|.
      t189 = t190.
      DATA t191 TYPE REF TO zcl_lnt_abstract_type.
      DATA t192 TYPE REF TO zcl_lnt_character_type.
      DATA(t193) = CONV f( 2 ).
      DATA t194 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t194.
      t192 = NEW zcl_lnt_character_type( i_length = t193 i_extra = t194 ).
      t191 = t192.
      DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t196.
      t195 = t196.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t198.
      t197 = t198.
      t188 = NEW zcl_lnt_istructure_component( i_name = t189 i_type_9913 = t191 i_as_include = t195 i_suffix = t197 ).
      CREATE OBJECT t188->zlnt_view_ownkeys_b0e8086400eb.
      t188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t199 ).
      ENDIF.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t200 ).
      ENDIF.
      CREATE OBJECT t188->zlnt_json_ownkeys_70e5fd461788.
      t188->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t201) = |name|.
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t202.
      IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
      ENDIF.
      DATA(t203) = |type|.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
      ENDIF.
      t187->load( ).
      APPEND t188 TO t187->items.
      t187->save( ).
      DATA(t205) = t167.
      DATA t206 TYPE REF TO zcl_lnt_istructure_component.
      DATA t207 TYPE string.
      DATA(t208) = |LOW|.
      t207 = t208.
      DATA t209 TYPE REF TO zcl_lnt_abstract_type.
      DATA t210 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t211) = t156.
      t210 = t211.
      t209 = t210.
      DATA t212 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t213 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t213.
      t212 = t213.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      t214 = t215.
      t206 = NEW zcl_lnt_istructure_component( i_name = t207 i_type_9913 = t209 i_as_include = t212 i_suffix = t214 ).
      CREATE OBJECT t206->zlnt_view_ownkeys_b0e8086400eb.
      t206->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      IF t206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t216 ).
      ENDIF.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      IF t206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t217 ).
      ENDIF.
      CREATE OBJECT t206->zlnt_json_ownkeys_70e5fd461788.
      t206->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t218) = |name|.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t219.
      IF t206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
      ENDIF.
      DATA(t220) = |type|.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t221.
      IF t206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
      ENDIF.
      t205->load( ).
      APPEND t206 TO t205->items.
      t205->save( ).
      DATA(t222) = t167.
      DATA t223 TYPE REF TO zcl_lnt_istructure_component.
      DATA t224 TYPE string.
      DATA(t225) = |HIGH|.
      t224 = t225.
      DATA t226 TYPE REF TO zcl_lnt_abstract_type.
      DATA t227 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t228) = t156.
      t227 = t228.
      t226 = t227.
      DATA t229 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t230 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t230.
      t229 = t230.
      DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t232.
      t231 = t232.
      t223 = NEW zcl_lnt_istructure_component( i_name = t224 i_type_9913 = t226 i_as_include = t229 i_suffix = t231 ).
      CREATE OBJECT t223->zlnt_view_ownkeys_b0e8086400eb.
      t223->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t233.
      IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t233 ).
      ENDIF.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t234.
      IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t234 ).
      ENDIF.
      CREATE OBJECT t223->zlnt_json_ownkeys_70e5fd461788.
      t223->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t235) = |name|.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
      ENDIF.
      DATA(t237) = |type|.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
      ENDIF.
      t222->load( ).
      APPEND t223 TO t222->items.
      t222->save( ).
      DATA(t239) = t167.
      t166 = t239.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t240.
      DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t241.
      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t242.
      t165 = NEW zcl_lnt_structure_type( i_components = t166 i_qualified_name = t240 i_ddic_name = t241 i_description = t242 ).
      t164 = t165.
      DATA t243 TYPE REF TO zcl_lnt_current_scope.
      DATA t244 TYPE REF TO zcl_lnt_current_scope.
      DATA(t245) = t2.
      t244 = t245->scope.
      t243 = t244.
      DATA t246 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t246.
      DATA t247 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t247.
      DATA(t248) = abap_true.
      IF t248 = abap_true.
        DATA t249 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t249.
        DATA(t250) = t14.
        DATA t251 TYPE string.
        DATA(t252) = t2.
        t251 = t252->filename.
        DATA t253 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t253.
        DATA(t254) = t164.
        DATA t255 TYPE REF TO zcl_lnt_itable_options.
        DATA t256 TYPE abap_bool.
        DATA(t257) = abap_true.
        t256 = t257.
        DATA t258 TYPE string.
        DATA(t259) = |DEFAULT|.
        t258 = t259.
        DATA t260 TYPE REF TO zcl_lnt_itable_key.
        DATA t261 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t261.
        t260 = t261.
        DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t263.
        t262 = t263.
        t255 = NEW zcl_lnt_itable_options( i_with_header = t256 i_key_type = t258 i_primary_key = t260 i_secondary = t262 ).
        CREATE OBJECT t255->zlnt_view_ownkeys_b0e8086400eb.
        t255->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t264 ).
        ENDIF.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t265.
        IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t265 ).
        ENDIF.
        CREATE OBJECT t255->zlnt_json_ownkeys_70e5fd461788.
        t255->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t266) = |withHeader|.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
        ENDIF.
        DATA(t268) = |keyType|.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
        ENDIF.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        t253 = NEW zcl_lnt_ty_table_type( i_row_type = t254 i_options = t255 i_qualified_name = t270 i_description = t271 ).
        DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t272.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        t249 = NEW zcl_lnt_typed_identifier( i_token = t250 i_filename = t251 i_type_9913 = t253 i_meta = t272 i_value = t273 ).
        t247 = t249.
      ELSE.
        DATA t274 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t274.
        t247 = t274.
      ENDIF.
      t246 = t247.
      DATA(t275) = VALUE abap_bool( ).
      DATA t276 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t277) = t246.
      t276 = t277.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t279.
      t278 = t279.
      DATA(t280) = VALUE abap_bool( ).
      DATA(t281) = t276.
      IF t281 IS INITIAL.
        t280 = abap_true.
      ENDIF.
      t275 = t280.
      IF t275 = abap_true.
      ELSE.
        DATA(t282) = t243.
        DATA(t283) = VALUE string( ).
        DATA t284 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t285 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t286) = t246.
        t285 = t286.
        t284 = t285.
        DATA(t287) = VALUE string( ).
        DATA t288 TYPE string.
        DATA t289 TYPE string.
        DATA t290 TYPE REF TO zcl_lnt_abstract_token.
        DATA t291 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t292) = t284.
        t291 = t292->token.
        t290 = t291.
        DATA t293 TYPE string.
        DATA(t294) = t290.
        t293 = t294->str.
        t289 = t293.
        t288 = t289.
        DATA(t295) = VALUE abap_bool( ).
        DATA(t296) = VALUE string( ).
        DATA(t297) = t288.
        DATA(t298) = 0.
        DATA(t299) = 1.
        DATA(t300) = strlen( t297 ).
        IF t298 < 0.
          t298 = t298 + t300.
          IF t298 < 0.
            t298 = 0.
          ENDIF.
        ENDIF.
        IF t298 > t300 OR t299 <= 0.
          CLEAR t296.
        ELSE.
          IF t299 > t300 - t298.
            t299 = t300 - t298.
          ENDIF.
          t296 = t297+t298(t299).
        ENDIF.
        DATA(t301) = |!|.
        t295 = xsdbool( t296 = t301 ).
        IF t295 = abap_true.
          DATA(t302) = VALUE string( ).
          DATA t303 TYPE string.
          DATA(t304) = t288.
          t303 = t304.
          DATA(t305) = VALUE string( ).
          DATA(t306) = t303.
          DATA(t307) = 1.
          DATA t308 TYPE i.
          DATA(t309) = t303.
          DATA(t310) = strlen( t309 ).
          t308 = t310.
          DATA(t311) = strlen( t306 ).
          IF t307 < 0.
            t307 = t307 + t311.
            IF t307 < 0.
              t307 = 0.
            ENDIF.
          ENDIF.
          IF t307 > t311 OR t308 <= 0.
            CLEAR t305.
          ELSE.
            IF t308 > t311 - t307.
              t308 = t311 - t307.
            ENDIF.
            t305 = t306+t307(t308).
          ENDIF.
          t302 = t305.
          t288 = t302.
        ENDIF.
        DATA(t312) = t288.
        t287 = t312.
        t283 = t287.
        DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t314) = t246.
        t313 = t314.
        t282->add_named_identifier( i_name = t283 i_identifier = t313 ).
      ENDIF.
    ELSE.
      DATA t315 TYPE REF TO zcl_lnt_current_scope.
      DATA t316 TYPE REF TO zcl_lnt_current_scope.
      DATA(t317) = t2.
      t316 = t317->scope.
      t315 = t316.
      DATA t318 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t318.
      DATA t319 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t319.
      DATA(t320) = abap_true.
      IF t320 = abap_true.
        DATA t321 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t322) = t14.
        DATA t323 TYPE string.
        DATA(t324) = t2.
        t323 = t324->filename.
        DATA t325 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t326) = |Select option, fallback|.
        DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t327.
        t325 = NEW zcl_lnt_unknown_type( i_error = t326 i_qualified_name = t327 ).
        DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t328.
        DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t329.
        t321 = NEW zcl_lnt_typed_identifier( i_token = t322 i_filename = t323 i_type_9913 = t325 i_meta = t328 i_value = t329 ).
        t319 = t321.
      ELSE.
        DATA t330 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t330.
        t319 = t330.
      ENDIF.
      t318 = t319.
      DATA(t331) = VALUE abap_bool( ).
      DATA t332 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t333) = t318.
      t332 = t333.
      DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t335.
      t334 = t335.
      DATA(t336) = VALUE abap_bool( ).
      DATA(t337) = t332.
      IF t337 IS INITIAL.
        t336 = abap_true.
      ENDIF.
      t331 = t336.
      IF t331 = abap_true.
      ELSE.
        DATA(t338) = t315.
        DATA(t339) = VALUE string( ).
        DATA t340 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t342) = t318.
        t341 = t342.
        t340 = t341.
        DATA(t343) = VALUE string( ).
        DATA t344 TYPE string.
        DATA t345 TYPE string.
        DATA t346 TYPE REF TO zcl_lnt_abstract_token.
        DATA t347 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t348) = t340.
        t347 = t348->token.
        t346 = t347.
        DATA t349 TYPE string.
        DATA(t350) = t346.
        t349 = t350->str.
        t345 = t349.
        t344 = t345.
        DATA(t351) = VALUE abap_bool( ).
        DATA(t352) = VALUE string( ).
        DATA(t353) = t344.
        DATA(t354) = 0.
        DATA(t355) = 1.
        DATA(t356) = strlen( t353 ).
        IF t354 < 0.
          t354 = t354 + t356.
          IF t354 < 0.
            t354 = 0.
          ENDIF.
        ENDIF.
        IF t354 > t356 OR t355 <= 0.
          CLEAR t352.
        ELSE.
          IF t355 > t356 - t354.
            t355 = t356 - t354.
          ENDIF.
          t352 = t353+t354(t355).
        ENDIF.
        DATA(t357) = |!|.
        t351 = xsdbool( t352 = t357 ).
        IF t351 = abap_true.
          DATA(t358) = VALUE string( ).
          DATA t359 TYPE string.
          DATA(t360) = t344.
          t359 = t360.
          DATA(t361) = VALUE string( ).
          DATA(t362) = t359.
          DATA(t363) = 1.
          DATA t364 TYPE i.
          DATA(t365) = t359.
          DATA(t366) = strlen( t365 ).
          t364 = t366.
          DATA(t367) = strlen( t362 ).
          IF t363 < 0.
            t363 = t363 + t367.
            IF t363 < 0.
              t363 = 0.
            ENDIF.
          ENDIF.
          IF t363 > t367 OR t364 <= 0.
            CLEAR t361.
          ELSE.
            IF t364 > t367 - t363.
              t364 = t367 - t363.
            ENDIF.
            t361 = t362+t363(t364).
          ENDIF.
          t358 = t361.
          t344 = t358.
        ENDIF.
        DATA(t368) = t344.
        t343 = t368.
        t339 = t343.
        DATA t369 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t370) = t318.
        t369 = t370.
        t338->add_named_identifier( i_name = t339 i_identifier = t369 ).
      ENDIF.
    ENDIF.
    DATA t371 TYPE string.
    DATA t372 TYPE string.
    DATA t373 TYPE string.
    DATA(t374) = |%_|.
    DATA t375 TYPE string.
    DATA t376 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t377) = t14.
    t376 = t377.
    DATA t378 TYPE string.
    DATA(t379) = t376.
    t378 = t379->str.
    t375 = t378.
    DATA(t380) = strlen( t374 ).
    t373 = |{ t374 }{ t375 }|.
    DATA(t381) = |_%_app_%|.
    DATA(t382) = strlen( t373 ).
    t372 = |{ t373 }{ t381 }|.
    t371 = t372.
    DATA t383 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t384 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t385 TYPE REF TO zcl_lnt_position.
    DATA t386 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t387) = t14.
    t386 = t387.
    DATA t388 TYPE REF TO zcl_lnt_position.
    DATA(t389) = t386.
    t388 = t389->start.
    t385 = t388.
    DATA(t390) = t371.
    t384 = NEW zcl_lnt_lx_identifier( i_start = t385 i_str = t390 ).
    t383 = t384.
    DATA t391 TYPE REF TO zcl_lnt_current_scope.
    DATA t392 TYPE REF TO zcl_lnt_current_scope.
    DATA(t393) = t2.
    t392 = t393->scope.
    t391 = t392.
    DATA t394 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t394.
    DATA t395 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t395.
    DATA(t396) = abap_true.
    IF t396 = abap_true.
      DATA t397 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t397.
      DATA(t398) = t383.
      DATA t399 TYPE string.
      DATA(t400) = t2.
      t399 = t400->filename.
      DATA t401 TYPE REF TO zcl_lnt_void_type.
      CLEAR t401.
      DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t402.
      DATA(t403) = abap_true.
      IF t403 = abap_true.
        DATA(t404) = |SELECT-OPTION magic|.
        DATA(t405) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t405->has = abap_true.
        t405->value = t404.
        t402 = t405.
      ELSE.
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t406.
        t402 = t406.
      ENDIF.
      DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t407.
      t401 = zcl_lnt_void_type=>get_db65( i_voided = t402 i_qualified_name = t407 ).
      DATA t408 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t408.
      DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t409.
      t397 = NEW zcl_lnt_typed_identifier( i_token = t398 i_filename = t399 i_type_9913 = t401 i_meta = t408 i_value = t409 ).
      t395 = t397.
    ELSE.
      DATA t410 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t410.
      t395 = t410.
    ENDIF.
    t394 = t395.
    DATA(t411) = VALUE abap_bool( ).
    DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t413) = t394.
    t412 = t413.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    t414 = t415.
    DATA(t416) = VALUE abap_bool( ).
    DATA(t417) = t412.
    IF t417 IS INITIAL.
      t416 = abap_true.
    ENDIF.
    t411 = t416.
    IF t411 = abap_true.
    ELSE.
      DATA(t418) = t391.
      DATA(t419) = VALUE string( ).
      DATA t420 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t421 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t422) = t394.
      t421 = t422.
      t420 = t421.
      DATA(t423) = VALUE string( ).
      DATA t424 TYPE string.
      DATA t425 TYPE string.
      DATA t426 TYPE REF TO zcl_lnt_abstract_token.
      DATA t427 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t428) = t420.
      t427 = t428->token.
      t426 = t427.
      DATA t429 TYPE string.
      DATA(t430) = t426.
      t429 = t430->str.
      t425 = t429.
      t424 = t425.
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = VALUE string( ).
      DATA(t433) = t424.
      DATA(t434) = 0.
      DATA(t435) = 1.
      DATA(t436) = strlen( t433 ).
      IF t434 < 0.
        t434 = t434 + t436.
        IF t434 < 0.
          t434 = 0.
        ENDIF.
      ENDIF.
      IF t434 > t436 OR t435 <= 0.
        CLEAR t432.
      ELSE.
        IF t435 > t436 - t434.
          t435 = t436 - t434.
        ENDIF.
        t432 = t433+t434(t435).
      ENDIF.
      DATA(t437) = |!|.
      t431 = xsdbool( t432 = t437 ).
      IF t431 = abap_true.
        DATA(t438) = VALUE string( ).
        DATA t439 TYPE string.
        DATA(t440) = t424.
        t439 = t440.
        DATA(t441) = VALUE string( ).
        DATA(t442) = t439.
        DATA(t443) = 1.
        DATA t444 TYPE i.
        DATA(t445) = t439.
        DATA(t446) = strlen( t445 ).
        t444 = t446.
        DATA(t447) = strlen( t442 ).
        IF t443 < 0.
          t443 = t443 + t447.
          IF t443 < 0.
            t443 = 0.
          ENDIF.
        ENDIF.
        IF t443 > t447 OR t444 <= 0.
          CLEAR t441.
        ELSE.
          IF t444 > t447 - t443.
            t444 = t447 - t443.
          ENDIF.
          t441 = t442+t443(t444).
        ENDIF.
        t438 = t441.
        t424 = t438.
      ENDIF.
      DATA(t448) = t424.
      t423 = t448.
      t419 = t423.
      DATA t449 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t450) = t394.
      t449 = t450.
      t418->add_named_identifier( i_name = t419 i_identifier = t449 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d959_17227a025f5d.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
