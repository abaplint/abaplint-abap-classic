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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD document_symbol.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_symbols.
    DATA(t5) = me->reg.
    t4 = NEW zcl_lnt_symbols( i_reg_f149 = t5 ).
    DATA t7 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    t7 = t1->text_document.
    t3 = t4->find_8f95( i_uri = t7->zlnt_view_read_no_0041136eb871( ) ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD hover.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_shape_d0b60cb0.
    DATA(t5) = me->reg.
    t2 = NEW zcl_lnt_hover( i_reg_f149 = t5 )->find_8f95( i_pos = t1 ).
    IF xsdbool( t2 IS BOUND ) = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_shape_748ae280.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t16 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      t16 = t2.
      IF t16 IS BOUND.
        DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t19 TYPE REF TO object.
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
      DATA t21 TYPE REF TO zcl_lnt_range.
      t11 = NEW zcl_lnt_shape_748ae280( i_contents = t15 i_range = t21 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `contents` p1 = t23 ).
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = |contents| p1 = t25 ).
      result = t11.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD goto_definition.
    DATA(t1) = i_params_4c59.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_definition( i_reg_f149 = t4 )->find_8f95( i_text_document = t1->zlnt_view_read_sr_ecd019429cea( ) i_position_a3fd = t1->zlnt_view_read_sr_5fb39d89ef2d( ) ).

  ENDMETHOD.

  METHOD document_formatting.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    t2 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = i_params_4c59->text_document->zlnt_view_read_no_0041136eb871( ) ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE string.
    t16 = NEW zcl_lnt_pretty_printer( i_file = t2 i_config = me->reg->get_config( ) )->run( ).
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t23 = t2->file->get_raw_rows( ).
    DATA t38 TYPE REF TO zif_lnt_file.
    t38 = t2->file.
    IF xsdbool( t16 = t38->get_raw( ) ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    DATA t45 TYPE REF TO zcl_lnt_text_edit.
    DATA t53 TYPE i.
    t23->load( ).
    t53 = lines( t23->items ).
    DATA(t56) = VALUE int8( ).
    DATA(t57) = VALUE int8( ).
    DATA(t59) = VALUE string( ).
    DATA t61 TYPE i.
    DATA t62 TYPE i.
    t23->load( ).
    t62 = lines( t23->items ).
    DATA(t64) = 1.
    t61 = t62 - t64.
    t61 = t61 + 1.
    IF t23->has( t61 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t23->load( ).
    READ TABLE t23->items INDEX t61 INTO t59.
    t57 = strlen( t59 ).
    DATA(t66) = CONV int8( 1 ).
    t56 = t57 + t66.
    DATA t67 TYPE REF TO zcl_lnt_range.
    DATA t68 TYPE REF TO zcl_lnt_no_position.
    DATA t69 TYPE REF TO zcl_lnt_no_position.
    DATA t70 TYPE f.
    t70 = 0.
    DATA t72 TYPE f.
    t72 = 0.
    DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t74->has = abap_true.
    t74->value = t72.
    t69 = NEW zcl_lnt_no_position( i_line = t70 i_character = t74 ).
    CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
    t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t75 ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t76 ).
    ENDIF.
    t68 = t69.
    DATA t78 TYPE REF TO zcl_lnt_no_position.
    DATA t79 TYPE f.
    t79 = t53.
    DATA t81 TYPE f.
    t81 = t56.
    DATA(t83) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t83->has = abap_true.
    t83->value = t81.
    t78 = NEW zcl_lnt_no_position( i_line = t79 i_character = t83 ).
    CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
    t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t84 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t85 ).
    ENDIF.
    t67 = NEW zcl_lnt_range( i_start = t68 i_end = t78 ).
    CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
    t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t86 ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t87 ).
    ENDIF.
    CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
    t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t89 ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t91 ).
    ENDIF.
    t45 = NEW zcl_lnt_text_edit( i_range = t67 i_new_text = t16 ).
    CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
    t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t94 ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t95 ).
    ENDIF.
    CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
    t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t97 ).
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t99 ).
    ENDIF.
    t42->load( ).
    APPEND t45 TO t42->items.
    t42->save( ).
    result = t42.


  ENDMETHOD.

  METHOD diagnostics.
    DATA(t1) = i_text_document.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_diagnostics( i_reg_f149 = t4 )->find_8f95( i_text_document = t1 ).

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
    DATA(t5) = me->reg.
    t3 = NEW zcl_lnt_rename( i_reg_f149 = t5 )->rename( i_params_4c59 = t1 ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD code_actions.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = me->reg.
    t3 = NEW zcl_lnt_code_actions( i_reg_f149 = t5 )->find_8f95( i_params_4c59 = t1 ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD document_highlight.
    DATA(t1) = i_params_c5c7.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD implementation.
    DATA(t1) = i_params_4c59.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_implementation( i_reg_f149 = t4 )->find_8f95( i_text_document = t1->zlnt_view_read_sr_ecd019429cea( ) i_position_a3fd = t1->zlnt_view_read_sr_5fb39d89ef2d( ) ).

  ENDMETHOD.

  METHOD references.
    DATA(t1) = i_params_4c59.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_references( i_reg_f149 = t4 )->references( i_pos = t1 ).

  ENDMETHOD.

  METHOD semantic_tokens_legend.
    result = CAST zcl_lnt_shape_2d2f513b( zcl_lnt_semantic_highlighting=>semantic_tokens_legend( ) ).

  ENDMETHOD.

  METHOD semantic_tokens_range.
    DATA(t1) = i_range.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_semantic_highlighting( i_reg_f149 = t4 )->semantic_tokens_range( i_range = t1 ).

  ENDMETHOD.

  METHOD code_lens.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    DATA(t5) = me->reg.
    result = NEW zcl_lnt_code_lens( i_reg_f149 = t5 )->list( i_text_document = t1 i_settings = t2 ).

  ENDMETHOD.

  METHOD inlay_hints.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    DATA(t5) = me->reg.
    result = NEW zcl_lnt_inlay_hints( i_reg_f149 = t5 )->list( i_text_document = t1 i_settings = t2 ).

  ENDMETHOD.

  METHOD help.
    DATA(t2) = i_position_a3fd.
    DATA(t4) = me->reg.
    DATA(t5) = i_text_document.
    result = zcl_lnt_help=>find_8f95( i_reg_f149 = t4 i_text_document = t5 i_position_a3fd = t2 ).

  ENDMETHOD.

  METHOD list_definition_positions.
    DATA(t1) = i_text_document.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_highlight( i_reg_f149 = t4 )->list_definition_positions( i_text_document = t1 ).

  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = i_text_document.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_highlight( i_reg_f149 = t4 )->list_read_positions( i_text_document = t1 ).

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_text_document.
    DATA(t4) = me->reg.
    result = NEW zcl_lnt_highlight( i_reg_f149 = t4 )->list_write_positions( i_text_document = t1 ).

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
