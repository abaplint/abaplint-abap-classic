* TS: src/lsp/inlay_hints.ts:15:1 InlayHints
CLASS zcl_lnt_inlay_hints DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS list IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_settings TYPE REF TO zcl_lnt_inlay_hints_settings RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_implicit_references IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_inlay_hints IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_inlay_hints_settings.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA t7 TYPE REF TO zcl_lnt_inlay_hints_settings.
        DATA t8 TYPE abap_bool.
        DATA(t9) = abap_true.
        t8 = t9.
        t7 = NEW zcl_lnt_inlay_hints_settings( i_inferred_types = t8 ).
        CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
        t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t10.
        IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `inferredTypes` p1 = t10 ).
        ENDIF.
        CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
        t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t11) = |inferredTypes|.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t12.
        IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t11 p1 = t12 ).
        ENDIF.
        t5 = t7.
      ELSE.
        DATA t13 TYPE REF TO zcl_lnt_inlay_hints_settings.
        CLEAR t13.
        t5 = t13.
      ENDIF.
      t2 = t5.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abap_file.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = me->reg.
    DATA t17 TYPE string.
    DATA(t18) = t1.
    t17 = t18->zlnt_view_read_no_0041136eb871( ).
    t15 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t16 i_filename = t17 ).
    t14 = t15.
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zcl_lnt_abap_file.
    DATA(t21) = t14.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    IF t19 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      result = t26.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zif_lnt_object.
    DATA t28 TYPE REF TO zif_lnt_object.
    DATA(t29) = me->reg.
    DATA t30 TYPE REF TO zcl_lnt_abap_file.
    DATA(t31) = t14.
    t30 = t31.
    t28 = t29->find_object_for_file( i_file = t30 ).
    t27 = t28.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zif_lnt_object.
    DATA(t35) = t27.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t34.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ENDIF.
    t33 = t38.
    t32 = t33.
    IF t33 = abap_false.
      DATA t40 TYPE abap_bool.
      DATA t41 TYPE abap_bool.
      DATA(t42) = t27.
      t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_abap_object ).
      t40 = xsdbool( t41 = abap_false ).
      t32 = t40.
    ENDIF.
    IF t32 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      result = t43.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t45 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t46 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t47 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t48 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t49) = me->reg.
    DATA t50 TYPE REF TO zcl_lnt_abap_object.
    DATA(t51) = t27.
    DATA t52 TYPE REF TO object.
    t52 = t51.
    t50 ?= t52.
    t48 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t49 i_object_19cd = t50 ).
    t47 = t48->run( ).
    t46 = t47->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t45 = t46->get_top( ).
    t44 = t45.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t53 = t54.
    DATA t55 TYPE abap_bool.
    DATA t56 TYPE abap_bool.
    DATA t57 TYPE REF TO zcl_lnt_inlay_hints_settings.
    DATA(t58) = t2.
    t57 = t58.
    t56 = t57->inferred_types.
    DATA(t59) = abap_true.
    t55 = xsdbool( t56 = t59 ).
    IF t55 = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t62) = t44.
      t61 = me->find_implicit_references( i_node = t62 ).
      t60 = t61.
      DATA(t63) = t60.
      DATA t64 TYPE REF TO zcl_lnt_ireference.
      CLEAR t64.
      DATA t65 TYPE REF TO object.
      CLEAR t65.
      DATA(t66) = VALUE i( ).
      DO.
        t63->load( ).
        IF t66 >= lines( t63->items ).
          EXIT.
        ENDIF.
        CLEAR t65.
        READ TABLE t63->items INDEX t66 + 1 INTO t65.
        t66 = t66 + 1.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        CLEAR t64.
        IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t67 ?= t65.
          DATA t68 TYPE REF TO object.
          t68 = t67->as_ref( ).
          t64 ?= t68.
        ELSE.
          t64 ?= t65.
        ENDIF.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t69 = t70.
        DATA t71 TYPE abap_bool.
        DATA t72 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t73) = t64.
        t72 = t73->resolved.
        t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_typed_identifier ).
        IF t71 = abap_true.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t75) = abap_true.
          IF t75 = abap_true.
            DATA t76 TYPE string.
            DATA(t77) = |TYPE |.
            DATA t78 TYPE string.
            DATA t79 TYPE REF TO zcl_lnt_abstract_type.
            DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t83) = t64.
            t82 = t83->resolved.
            t81 ?= t82.
            t80 = t81.
            DATA t84 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t85) = t80.
            t84 = t85->type_cba0.
            t79 = t84.
            t78 = t79->to_abap( ).
            DATA(t86) = strlen( t77 ).
            t76 = |{ t77 }{ t78 }|.
            DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t87->has = abap_true.
            t87->value = t76.
            t74 = t87.
          ELSE.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            t74 = t88.
          ENDIF.
          t69 = t74.
        ELSE.
          DATA t89 TYPE abap_bool.
          DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t91) = t64.
          t90 = t91->resolved.
          t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          IF t89 = abap_true.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            DATA(t93) = abap_true.
            IF t93 = abap_true.
              DATA(t94) = VALUE string( ).
              DATA(t95) = |TYPE REF TO |.
              DATA(t96) = VALUE string( ).
              DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t98 TYPE REF TO zcl_lnt_ty_class_definition.
              DATA t99 TYPE REF TO zcl_lnt_fi_identifier.
              DATA(t100) = t64.
              t99 = t100->resolved.
              t98 ?= t99.
              t97 = t98.
              DATA(t101) = VALUE string( ).
              DATA t102 TYPE string.
              DATA t103 TYPE string.
              DATA t104 TYPE REF TO zcl_lnt_abstract_token.
              DATA t105 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t106) = t97.
              t105 = t106->token.
              t104 = t105.
              DATA t107 TYPE string.
              DATA(t108) = t104.
              t107 = t108->str.
              t103 = t107.
              t102 = t103.
              DATA(t109) = VALUE abap_bool( ).
              DATA(t110) = VALUE string( ).
              DATA(t111) = t102.
              DATA(t112) = 0.
              DATA(t113) = 1.
              DATA(t114) = strlen( t111 ).
              IF t112 < 0.
                t112 = t112 + t114.
                IF t112 < 0.
                  t112 = 0.
                ENDIF.
              ENDIF.
              IF t112 > t114 OR t113 <= 0.
                CLEAR t110.
              ELSE.
                IF t113 > t114 - t112.
                  t113 = t114 - t112.
                ENDIF.
                t110 = t111+t112(t113).
              ENDIF.
              DATA(t115) = |!|.
              t109 = xsdbool( t110 = t115 ).
              IF t109 = abap_true.
                DATA(t116) = VALUE string( ).
                DATA t117 TYPE string.
                DATA(t118) = t102.
                t117 = t118.
                DATA(t119) = VALUE string( ).
                DATA(t120) = t117.
                DATA(t121) = 1.
                DATA t122 TYPE i.
                DATA(t123) = t117.
                DATA(t124) = strlen( t123 ).
                t122 = t124.
                DATA(t125) = strlen( t120 ).
                IF t121 < 0.
                  t121 = t121 + t125.
                  IF t121 < 0.
                    t121 = 0.
                  ENDIF.
                ENDIF.
                IF t121 > t125 OR t122 <= 0.
                  CLEAR t119.
                ELSE.
                  IF t122 > t125 - t121.
                    t122 = t125 - t121.
                  ENDIF.
                  t119 = t120+t121(t122).
                ENDIF.
                t116 = t119.
                t102 = t116.
              ENDIF.
              DATA(t126) = t102.
              t101 = t126.
              t96 = t101.
              DATA(t127) = strlen( t95 ).
              t94 = |{ t95 }{ t96 }|.
              DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t128->has = abap_true.
              t128->value = t94.
              t92 = t128.
            ELSE.
              DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t129.
              t92 = t129.
            ENDIF.
            t69 = t92.
          ENDIF.
        ENDIF.
        DATA(t130) = VALUE abap_bool( ).
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t132) = t69.
        t131 = t132.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        t133 = t134.
        DATA(t135) = VALUE abap_bool( ).
        DATA(t136) = t131.
        IF t136 IS INITIAL.
          t135 = abap_true.
        ELSEIF t136->has = abap_false.
          t135 = abap_true.
        ENDIF.
        t130 = t135.
        IF t130 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t137) = t53.
        DATA t138 TYPE REF TO zcl_lnt_shape_5ae9c337.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        DATA(t141) = abap_true.
        IF t141 = abap_true.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          DATA t143 TYPE string.
          DATA(t144) = t69.
          t143 = t144->value.
          CLEAR t142.
          CREATE OBJECT t142.
          t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t142->sval = t143.
          t140 = t142.
        ELSE.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          t140 = t145.
        ENDIF.
        t139 = t140.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        DATA(t148) = abap_true.
        IF t148 = abap_true.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          DATA(t150) = |Inferred type|.
          CLEAR t149.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t149->sval = t150.
          t147 = t149.
        ELSE.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          t147 = t151.
        ENDIF.
        t146 = t147.
        DATA t152 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t152.
        DATA t153 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t153.
        DATA(t154) = abap_true.
        IF t154 = abap_true.
          DATA(t155) = CONV f( 1 ).
          DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t156->has = abap_true.
          t156->value = t155.
          t153 = t156.
        ELSE.
          DATA t157 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t157.
          t153 = t157.
        ENDIF.
        t152 = t153.
        DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t158.
        DATA t159 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t159.
        DATA(t160) = abap_true.
        IF t160 = abap_true.
          DATA(t161) = abap_true.
          DATA(t162) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t162->has = abap_true.
          t162->value = t161.
          t159 = t162.
        ELSE.
          DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t163.
          t159 = t163.
        ENDIF.
        t158 = t159.
        DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t164.
        DATA t165 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t165.
        DATA(t166) = abap_true.
        IF t166 = abap_true.
          DATA(t167) = abap_true.
          DATA(t168) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t168->has = abap_true.
          t168->value = t167.
          t165 = t168.
        ELSE.
          DATA t169 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t169.
          t165 = t169.
        ENDIF.
        t164 = t165.
        DATA t170 TYPE REF TO zcl_lnt_no_position.
        CLEAR t170.
        DATA t171 TYPE REF TO zcl_lnt_no_position.
        CLEAR t171.
        DATA(t172) = abap_true.
        IF t172 = abap_true.
          DATA t173 TYPE REF TO zcl_lnt_no_position.
          DATA t174 TYPE REF TO zcl_lnt_position.
          DATA t175 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t176 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t177) = t64.
          t176 = t177->position_7b94.
          t175 = t176.
          DATA t178 TYPE REF TO zcl_lnt_position.
          DATA t179 TYPE REF TO zcl_lnt_abstract_token.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t181) = t175.
          t180 = t181->token.
          t179 = t180.
          DATA t182 TYPE REF TO zcl_lnt_position.
          DATA t183 TYPE f.
          DATA t184 TYPE REF TO zcl_lnt_position.
          DATA t185 TYPE REF TO zcl_lnt_position.
          DATA(t186) = t179.
          t185 = t186->start.
          t184 = t185.
          DATA t187 TYPE f.
          DATA(t188) = t184.
          t187 = t188->row.
          t183 = t187.
          DATA t189 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t190 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t191 TYPE REF TO zcl_lnt_position.
          DATA t192 TYPE REF TO zcl_lnt_position.
          DATA(t193) = t179.
          t192 = t193->start.
          t191 = t192.
          DATA t194 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t195) = t191.
          t194 = t195->col.
          t190 = t194.
          DATA t196 TYPE f.
          DATA t197 TYPE i.
          DATA t198 TYPE string.
          DATA(t199) = t179.
          t198 = t199->str.
          DATA(t200) = strlen( t198 ).
          t197 = t200.
          t196 = t197.
          DATA(t201) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t201->has = abap_true.
          t201->value = t196.
          t189 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t190 right = t201 op = `+` ).
          t182 = NEW zcl_lnt_position( i_row = t183 i_col = t189 ).
          t178 = t182.
          t174 = t178.
          t173 = zcl_lnt_lsp_utils=>position_to_ls( i_pos = t174 ).
          t171 = t173.
        ELSE.
          DATA t202 TYPE REF TO zcl_lnt_no_position.
          CLEAR t202.
          t171 = t202.
        ENDIF.
        t170 = t171.
        DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t204.
        t203 = t204.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        t205 = t206.
        t138 = NEW zcl_lnt_shape_5ae9c337( i_position_a3fd = t170 i_label = t139 i_kind = t152 i_text_edits = t203 i_tooltip = t146 i_padding_left = t158 i_padding_right = t164 i_data_dc02 = t205 ).
        CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
        t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `label` p1 = t207 ).
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tooltip` p1 = t208 ).
        ENDIF.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t209 ).
        ENDIF.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `paddingLeft` p1 = t210 ).
        ENDIF.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `paddingRight` p1 = t211 ).
        ENDIF.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t212 ).
        ENDIF.
        CREATE OBJECT t138->zlnt_json_ownkeys_70e5fd461788.
        t138->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t213) = |label|.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
        ENDIF.
        DATA(t215) = |tooltip|.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
        ENDIF.
        DATA(t217) = |kind|.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
        ENDIF.
        DATA(t219) = |paddingLeft|.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
        ENDIF.
        DATA(t221) = |paddingRight|.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
        ENDIF.
        DATA(t223) = |position|.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
        ENDIF.
        t137->load( ).
        APPEND t138 TO t137->items.
        t137->save( ).
      ENDDO.
    ENDIF.
    DATA(t225) = t53.
    result = t225.

  ENDMETHOD.

  METHOD find_implicit_references.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t6) = t1.
    t5 = t6->get_data( ).
    t4 = t5->references.
    DATA t7 TYPE REF TO zcl_lnt_ireference.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE string.
      DATA(t15) = t7.
      t14 = t15->reference_type.
      DATA(t16) = |Inferred Type|.
      t13 = xsdbool( t14 = t16 ).
      t12 = t13.
      IF t13 = abap_false.
        DATA t17 TYPE abap_bool.
        DATA t18 TYPE string.
        DATA(t19) = t7.
        t18 = t19->reference_type.
        DATA(t20) = |Write To|.
        t17 = xsdbool( t18 = t20 ).
        t12 = t17.
      ENDIF.
      IF t12 = abap_true.
        DATA(t21) = t2.
        DATA(t22) = t7.
        t21->load( ).
        APPEND t22 TO t21->items.
        t21->save( ).
      ENDIF.
    ENDDO.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = t1.
    t23 = t24->get_children( ).
    DATA t25 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    DATA(t27) = VALUE i( ).
    DO.
      t23->load( ).
      IF t27 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t23->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      DATA(t30) = VALUE i( ).
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t25.
      t31 = me->find_implicit_references( i_node = t32 ).
      DATA t33 TYPE REF TO zcl_lnt_ireference.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      DATA(t35) = VALUE i( ).
      DO.
        t31->load( ).
        IF t35 >= lines( t31->items ).
          EXIT.
        ENDIF.
        CLEAR t34.
        READ TABLE t31->items INDEX t35 + 1 INTO t34.
        t35 = t35 + 1.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        CLEAR t33.
        IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t36 ?= t34.
          DATA t37 TYPE REF TO object.
          t37 = t36->as_ref( ).
          t33 ?= t37.
        ELSE.
          t33 ?= t34.
        ENDIF.
        DATA(t38) = t2.
        DATA(t39) = t33.
        t38->load( ).
        APPEND t39 TO t38->items.
        t38->save( ).
      ENDDO.
      DATA t40 TYPE i.
      DATA(t41) = t2.
      t41->load( ).
      t40 = lines( t41->items ).
      t30 = t40.
    ENDDO.
    DATA(t42) = t2.
    result = t42.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1172_2183d295f816.
  ENDMETHOD.
ENDCLASS.
