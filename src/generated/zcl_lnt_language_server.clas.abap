* TS: src/lsp/language_server.ts:27:1 LanguageServer
CLASS zcl_lnt_language_server DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS document_symbol IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_idcmnt_symbl_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS hover IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_748ae280.
    METHODS goto_definition IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_location.
    METHODS document_formatting IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_shape_1cd8e7a1 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS diagnostics IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS prepare_rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_d6dafb2c.
    METHODS rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    METHODS code_actions IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_icode_action_params RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS document_highlight IMPORTING i_params_c5c7 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS implementation IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS references IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS semantic_tokens_legend RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_2d2f513b.
    METHODS semantic_tokens_range IMPORTING i_range TYPE REF TO zcl_lnt_itext_document_range RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_d48da73b.
    METHODS code_lens IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_settings TYPE REF TO zcl_lnt_code_lens_settings RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS inlay_hints IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_settings TYPE REF TO zcl_lnt_inlay_hints_settings RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS help IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position RETURNING VALUE(result) TYPE string.
    METHODS list_definition_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_read_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_language_server IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD document_symbol.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_symbols.
    DATA(t5) = me->reg.
    t4 = NEW zcl_lnt_symbols( i_reg_f149 = t5 ).
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t8) = t1.
    t7 = t8->text_document.
    t6 = t7->zlnt_view_read_no_0041136eb871( ).
    t3 = t4->find_8f95( i_uri = t6 ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD hover.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_shape_d0b60cb0.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_d0b60cb0.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_hover.
    CLEAR t4.
    DATA(t5) = me->reg.
    t4 = NEW zcl_lnt_hover( i_reg_f149 = t5 ).
    DATA(t6) = t1.
    t3 = t4->find_8f95( i_pos = t6 ).
    t2 = t3.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_shape_748ae280.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA t11 TYPE REF TO zcl_lnt_shape_748ae280.
        CLEAR t11.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t12.
        DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t13.
        DATA(t14) = abap_true.
        IF t14 = abap_true.
          DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t15.
          DATA t16 TYPE REF TO zcl_lnt_shape_d0b60cb0.
          CLEAR t16.
          DATA(t17) = t2.
          t16 = t17.
          CLEAR t15.
          IF t16 IS BOUND.
            DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t18.
            DATA t19 TYPE REF TO object.
            CLEAR t19.
            CLEAR t18.
            t19 = t16.
            TRY.
                t15 ?= t19.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t15 IS NOT BOUND.
              TRY.
                  t18 ?= t16.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t18 IS BOUND.
                t15 = t18->source( ).
              ENDIF.
              IF t15 IS NOT BOUND.
                CREATE OBJECT t15.
                t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t15->oval = t16.
              ENDIF.
            ENDIF.
          ENDIF.
          t13 = t15.
        ELSE.
          DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t20.
          t13 = t20.
        ENDIF.
        t12 = t13.
        DATA t21 TYPE REF TO zcl_lnt_range.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_range.
        CLEAR t22.
        t21 = t22.
        t11 = NEW zcl_lnt_shape_748ae280( i_contents = t12 i_range = t21 ).
        CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
        t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `contents` p1 = t23 ).
        ENDIF.
        CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
        t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t24) = |contents|.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
        ENDIF.
        t9 = t11.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_shape_748ae280.
        CLEAR t26.
        t9 = t26.
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_shape_748ae280.
    CLEAR t27.
    result = t27.

  ENDMETHOD.

  METHOD goto_definition.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_location.
    DATA t3 TYPE REF TO zcl_lnt_definition.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_definition( i_reg_f149 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t6) = t1.
    t5 = t6->zlnt_view_read_sr_ecd019429cea( ).
    DATA t7 TYPE REF TO zcl_lnt_no_position.
    DATA(t8) = t1.
    t7 = t8->zlnt_view_read_sr_5fb39d89ef2d( ).
    t2 = t3->find_8f95( i_text_document = t5 i_position_a3fd = t7 ).
    result = t2.

  ENDMETHOD.

  METHOD document_formatting.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t7) = t1.
    t6 = t7->text_document.
    t5 = t6->zlnt_view_read_no_0041136eb871( ).
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    DATA t18 TYPE REF TO zcl_lnt_pretty_printer.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t2.
    t19 = t20.
    DATA t21 TYPE REF TO zif_lnt_configuration.
    DATA(t22) = me->reg.
    t21 = t22->get_config( ).
    t18 = NEW zcl_lnt_pretty_printer( i_file = t19 i_config = t21 ).
    t17 = t18->run( ).
    t16 = t17.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t25 TYPE REF TO zcl_lnt_abap_file.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    DATA(t27) = t2.
    t26 = t27.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t29 TYPE REF TO zif_lnt_file.
    DATA(t30) = t25.
    t29 = t30->file.
    t28 = t29->get_raw_rows( ).
    t24 = t28.
    t23 = t24.
    DATA t31 TYPE abap_bool.
    DATA(t32) = t16.
    DATA t33 TYPE string.
    DATA t34 TYPE REF TO zcl_lnt_abap_file.
    DATA t35 TYPE REF TO zcl_lnt_abap_file.
    DATA(t36) = t2.
    t35 = t36.
    t34 = t35.
    DATA t37 TYPE string.
    DATA t38 TYPE REF TO zif_lnt_file.
    DATA(t39) = t34.
    t38 = t39->file.
    t37 = t38->get_raw( ).
    t33 = t37.
    t31 = xsdbool( t32 = t33 ).
    IF t31 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t40.
      result = t40.
      RETURN.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t42 = t43.
      DATA(t44) = t42.
      DATA t45 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_range.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_range.
      CLEAR t47.
      DATA t48 TYPE i.
      DATA(t49) = 0.
      t48 = t49.
      DATA t50 TYPE i.
      DATA(t51) = 0.
      t50 = t51.
      DATA t52 TYPE i.
      DATA t53 TYPE i.
      DATA(t54) = t23.
      t54->load( ).
      t53 = lines( t54->items ).
      t52 = t53.
      DATA(t55) = VALUE int8( ).
      DATA(t56) = VALUE int8( ).
      DATA(t57) = VALUE int8( ).
      DATA(t58) = VALUE i( ).
      DATA(t59) = VALUE string( ).
      DATA(t60) = t23.
      DATA t61 TYPE i.
      DATA t62 TYPE i.
      DATA(t63) = t23.
      t63->load( ).
      t62 = lines( t63->items ).
      DATA(t64) = 1.
      t61 = t62 - t64.
      t61 = t61 + 1.
      IF t60->has( t61 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t60->load( ).
      CLEAR t59.
      READ TABLE t60->items INDEX t61 INTO t59.
      DATA(t65) = strlen( t59 ).
      t58 = t65.
      t57 = t58.
      DATA(t66) = CONV int8( 1 ).
      t56 = t57 + t66.
      t55 = t56.
      DATA t67 TYPE REF TO zcl_lnt_range.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_no_position.
      CLEAR t68.
      DATA t69 TYPE REF TO zcl_lnt_no_position.
      DATA t70 TYPE f.
      DATA(t71) = t48.
      t70 = t71.
      DATA t72 TYPE f.
      DATA(t73) = t50.
      t72 = t73.
      DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t74->has = abap_true.
      t74->value = t72.
      t69 = NEW zcl_lnt_no_position( i_line = t70 i_character = t74 ).
      CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
      t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t75 ).
      ENDIF.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t76 ).
      ENDIF.
      t68 = t69.
      DATA t77 TYPE REF TO zcl_lnt_no_position.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_no_position.
      DATA t79 TYPE f.
      DATA(t80) = t52.
      t79 = t80.
      DATA t81 TYPE f.
      DATA(t82) = t55.
      t81 = t82.
      DATA(t83) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t83->has = abap_true.
      t83->value = t81.
      t78 = NEW zcl_lnt_no_position( i_line = t79 i_character = t83 ).
      CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
      t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t84 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t85 ).
      ENDIF.
      t77 = t78.
      t67 = NEW zcl_lnt_range( i_start = t68 i_end = t77 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t86 ).
      ENDIF.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t87 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t88) = |start|.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
      ENDIF.
      DATA(t90) = |end|.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
      ENDIF.
      t47 = t67.
      t46 = t47.
      DATA t92 TYPE string.
      DATA(t93) = t16.
      t92 = t93.
      t45 = NEW zcl_lnt_text_edit( i_range = t46 i_new_text = t92 ).
      CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
      t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t94 ).
      ENDIF.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t95 ).
      ENDIF.
      CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
      t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t96) = |range|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      ENDIF.
      DATA(t98) = |newText|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      t44->load( ).
      APPEND t45 TO t44->items.
      t44->save( ).
      DATA(t100) = t42.
      t41 = t100.
      result = t41.

    ENDIF.
  ENDMETHOD.

  METHOD diagnostics.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_diagnostics.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_diagnostics( i_reg_f149 = t4 ).
    DATA(t5) = t1.
    t2 = t3->find_8f95( i_text_document = t5 ).
    result = t2.

  ENDMETHOD.

  METHOD prepare_rename.
    DATA(t1) = i_params_4c59.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |lowering trap: src/lsp/language_server.ts:83:3: HIR verifica|.
    t3 = t3 && |tion: node 152576 (src/lsp/language_server.ts:84:5): assignm|.
    t3 = t3 && |ent type mismatch|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD rename.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t3 TYPE REF TO object.
    DATA t4 TYPE REF TO zcl_lnt_rename.
    DATA(t5) = me->reg.
    t4 = NEW zcl_lnt_rename( i_reg_f149 = t5 ).
    DATA(t6) = t1.
    t3 = t4->rename( i_params_4c59 = t6 ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD code_actions.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_code_actions.
    DATA(t5) = me->reg.
    t4 = NEW zcl_lnt_code_actions( i_reg_f149 = t5 ).
    DATA(t6) = t1.
    t3 = t4->find_8f95( i_params_4c59 = t6 ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD document_highlight.
    DATA(t1) = i_params_c5c7.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    result = t2.

  ENDMETHOD.

  METHOD implementation.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_implementation.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_implementation( i_reg_f149 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t6) = t1.
    t5 = t6->zlnt_view_read_sr_ecd019429cea( ).
    DATA t7 TYPE REF TO zcl_lnt_no_position.
    DATA(t8) = t1.
    t7 = t8->zlnt_view_read_sr_5fb39d89ef2d( ).
    t2 = t3->find_8f95( i_text_document = t5 i_position_a3fd = t7 ).
    result = t2.

  ENDMETHOD.

  METHOD references.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_references.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_references( i_reg_f149 = t4 ).
    DATA(t5) = t1.
    t2 = t3->references( i_pos = t5 ).
    result = t2.

  ENDMETHOD.

  METHOD semantic_tokens_legend.
    DATA(t1) = CAST zcl_lnt_shape_2d2f513b( zcl_lnt_semantic_highlighting=>semantic_tokens_legend( ) ).
    result = t1.

  ENDMETHOD.

  METHOD semantic_tokens_range.
    DATA(t1) = i_range.
    DATA t2 TYPE REF TO zcl_lnt_shape_d48da73b.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_semantic_highlighting.
    CLEAR t3.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_semantic_highlighting( i_reg_f149 = t4 ).
    DATA(t5) = t1.
    t2 = t3->semantic_tokens_range( i_range = t5 ).
    result = t2.

  ENDMETHOD.

  METHOD code_lens.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_code_lens.
    DATA(t5) = me->reg.
    t4 = NEW zcl_lnt_code_lens( i_reg_f149 = t5 ).
    DATA(t6) = t1.
    DATA(t7) = t2.
    t3 = t4->list( i_text_document = t6 i_settings = t7 ).
    result = t3.

  ENDMETHOD.

  METHOD inlay_hints.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_inlay_hints.
    DATA(t5) = me->reg.
    t4 = NEW zcl_lnt_inlay_hints( i_reg_f149 = t5 ).
    DATA(t6) = t1.
    DATA(t7) = t2.
    t3 = t4->list( i_text_document = t6 i_settings = t7 ).
    result = t3.

  ENDMETHOD.

  METHOD help.
    DATA(t1) = i_text_document.
    DATA(t2) = i_position_a3fd.
    DATA t3 TYPE string.
    DATA(t4) = me->reg.
    DATA(t5) = t1.
    DATA(t6) = t2.
    t3 = zcl_lnt_help=>find_8f95( i_reg_f149 = t4 i_text_document = t5 i_position_a3fd = t6 ).
    result = t3.

  ENDMETHOD.

  METHOD list_definition_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_highlight.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_highlight( i_reg_f149 = t4 ).
    DATA(t5) = t1.
    t2 = t3->list_definition_positions( i_text_document = t5 ).
    result = t2.

  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_highlight.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_highlight( i_reg_f149 = t4 ).
    DATA(t5) = t1.
    t2 = t3->list_read_positions( i_text_document = t5 ).
    result = t2.

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_highlight.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_highlight( i_reg_f149 = t4 ).
    DATA(t5) = t1.
    t2 = t3->list_write_positions( i_text_document = t5 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1173_68d9a944e1cb.
  ENDMETHOD.
ENDCLASS.
