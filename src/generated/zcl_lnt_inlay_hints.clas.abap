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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_inlay_hints_settings.
      t7 = NEW zcl_lnt_inlay_hints_settings( i_inferred_types = abap_true ).
      CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
      t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `inferredTypes` p1 = t10 ).
      CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
      t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |inferredTypes| p1 = t12 ).
      t2 = t7.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = me->reg.
    t14 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t16 i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zif_lnt_object.
    t27 = me->reg->find_object_for_file( i_file = t14 ).
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33 = xsdbool( t27 IS INITIAL ).
    t32 = t33.
    IF t33 = abap_false.
      t32 = xsdbool( xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
    ENDIF.
    IF t32 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t45 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t49) = me->reg.
    DATA t50 TYPE REF TO zcl_lnt_abap_object.
    DATA t52 TYPE REF TO object.
    t52 = t27.
    t50 ?= t52.
    t45 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t49 i_object_19cd = t50 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    IF xsdbool( t2->inferred_types = abap_true ) = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t60 = me->find_implicit_references( i_node = t45 ).
      DATA t64 TYPE REF TO zcl_lnt_ireference.
      DATA t65 TYPE REF TO object.
      DATA(t66) = VALUE i( ).
      DO.
        t60->load( ).
        IF t66 >= lines( t60->items ).
          EXIT.
        ENDIF.
        CLEAR t65.
        READ TABLE t60->items INDEX t66 + 1 INTO t65.
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
        CLEAR t69.
        DATA t72 TYPE REF TO zcl_lnt_fi_identifier.
        t72 = t64->resolved.
        IF xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_typed_identifier ) = abap_true.
          DATA t76 TYPE string.
          DATA(t77) = |TYPE |.
          DATA t78 TYPE string.
          DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
          t82 = t64->resolved.
          t81 ?= t82.
          t78 = t81->type_cba0->to_abap( ).
          DATA(t86) = strlen( t77 ).
          t76 = |{ t77 }{ t78 }|.
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t76.
          t69 = t87.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
          t90 = t64->resolved.
          IF xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_ty_class_definition ) = abap_true.
            DATA(t94) = VALUE string( ).
            DATA(t95) = |TYPE REF TO |.
            DATA(t96) = VALUE string( ).
            DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t98 TYPE REF TO zcl_lnt_ty_class_definition.
            DATA t99 TYPE REF TO zcl_lnt_fi_identifier.
            t99 = t64->resolved.
            t98 ?= t99.
            t97 = t98.
            DATA t102 TYPE string.
            t102 = t97->token->str.
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
            ELSE.
              IF t113 > t114 - t112.
                t113 = t114 - t112.
              ENDIF.
              t110 = t111+t112(t113).
            ENDIF.
            IF xsdbool( t110 = |!| ) = abap_true.
              DATA t117 TYPE string.
              t117 = t102.
              DATA(t119) = VALUE string( ).
              DATA(t121) = 1.
              DATA t122 TYPE i.
              t122 = strlen( t117 ).
              DATA(t125) = strlen( t117 ).
              IF t121 < 0.
                t121 = t121 + t125.
                IF t121 < 0.
                  t121 = 0.
                ENDIF.
              ENDIF.
              IF t121 > t125 OR t122 <= 0.
              ELSE.
                IF t122 > t125 - t121.
                  t122 = t125 - t121.
                ENDIF.
                t119 = t117+t121(t122).
              ENDIF.
              t102 = t119.
            ENDIF.
            t96 = t102.
            DATA(t127) = strlen( t95 ).
            t94 = |{ t95 }{ t96 }|.
            DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t128->has = abap_true.
            t128->value = t94.
            t69 = t128.
          ENDIF.
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t131 = t69.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        DATA(t135) = VALUE abap_bool( ).
        IF t131 IS INITIAL.
          t135 = abap_true.
        ELSEIF t131->has = abap_false.
          t135 = abap_true.
        ENDIF.
        IF t135 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t138 TYPE REF TO zcl_lnt_shape_5ae9c337.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        DATA t143 TYPE string.
        t143 = t69->value.
        CLEAR t142.
        CREATE OBJECT t142.
        t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t142->sval = t143.
        t139 = t142.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        CLEAR t149.
        CREATE OBJECT t149.
        t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t149->sval = |Inferred type|.
        t146 = t149.
        DATA t152 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t152.
        DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t156->has = abap_true.
        t156->value = CONV f( 1 ).
        t152 = t156.
        DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t158.
        DATA(t162) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t162->has = abap_true.
        t162->value = abap_true.
        t158 = t162.
        DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t164.
        DATA(t168) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t168->has = abap_true.
        t168->value = abap_true.
        t164 = t168.
        DATA t170 TYPE REF TO zcl_lnt_no_position.
        CLEAR t170.
        DATA t179 TYPE REF TO zcl_lnt_abstract_token.
        t179 = t64->position_7b94->token.
        DATA t183 TYPE f.
        t183 = t179->start->row.
        DATA t190 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t190 = t179->start->col.
        DATA t196 TYPE f.
        t196 = strlen( t179->str ).
        DATA(t201) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t201->has = abap_true.
        t201->value = t196.
        t170 = zcl_lnt_lsp_utils=>position_to_ls( i_pos = NEW zcl_lnt_position( i_row = t183 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t190 right = t201 op = `+` ) ) ).
        DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t203.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t205.
        t138 = NEW zcl_lnt_shape_5ae9c337( i_position_a3fd = t170 i_label = t139 i_kind = t152 i_text_edits = t203 i_tooltip = t146 i_padding_left = t158 i_padding_right = t164 i_data_dc02 = t205 ).
        CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
        t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `label` p1 = t207 ).
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
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |label| p1 = t214 ).
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tooltip| p1 = t216 ).
        ENDIF.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t218 ).
        ENDIF.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |paddingLeft| p1 = t220 ).
        ENDIF.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |paddingRight| p1 = t222 ).
        ENDIF.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |position| p1 = t224 ).
        ENDIF.
        t53->load( ).
        APPEND t138 TO t53->items.
        t53->save( ).
      ENDDO.
    ENDIF.
    result = t53.

  ENDMETHOD.

  METHOD find_implicit_references.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->get_data( )->references.
    DATA t7 TYPE REF TO zcl_lnt_ireference.
    DATA t8 TYPE REF TO object.
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
      t13 = xsdbool( t7->reference_type = |Inferred Type| ).
      t12 = t13.
      IF t13 = abap_false.
        t12 = xsdbool( t7->reference_type = |Write To| ).
      ENDIF.
      IF t12 = abap_true.
        t2->load( ).
        APPEND t7 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t23 = t1->get_children( ).
    DATA t25 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t26 TYPE REF TO object.
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
      t31 = me->find_implicit_references( i_node = t25 ).
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
        t2->load( ).
        APPEND t33 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t30 = lines( t2->items ).
    ENDDO.
    result = t2.

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
