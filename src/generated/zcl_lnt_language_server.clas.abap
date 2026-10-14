* TS: src/lsp/language_server.ts:27:1 LanguageServer
CLASS zcl_lnt_language_server DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS document_symbol IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_idcmnt_symbl_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS hover IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_801341e6.
    METHODS goto_definition IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_eed5a04f.
    METHODS document_formatting IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_shape_e77d6389 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS diagnostics IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS prepare_rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_a1d4a4d7.
    METHODS rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    METHODS code_actions IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_icode_action_params RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS document_highlight IMPORTING i_params_c5c7 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS implementation IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS references IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS semantic_tokens_legend RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_2d2f513b.
    METHODS semantic_tokens_range IMPORTING i_range TYPE REF TO zcl_lnt_itext_document_range RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_d48da73b.
    METHODS code_lens IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 i_settings TYPE REF TO zcl_lnt_code_lens_settings RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS inlay_hints IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 i_settings TYPE REF TO zcl_lnt_inlay_hints_settings RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS help IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 i_position_a3fd TYPE REF TO zcl_lnt_shape_38f98ddf RETURNING VALUE(result) TYPE string.
    METHODS list_definition_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_read_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_language_server IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.

  METHOD document_symbol.
    DATA(t1) = CAST zcl_lnt_idcmnt_symbl_prms( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD hover.
    DATA(t1) = CAST zcl_lnt_itxt_dcmnt_pstn_prms( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:40|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD goto_definition.
    DATA(t1) = CAST zcl_lnt_itxt_dcmnt_pstn_prms( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:49|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD document_formatting.
    DATA(t1) = CAST zcl_lnt_shape_e77d6389( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:54|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD diagnostics.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:78|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD prepare_rename.
    DATA(t1) = CAST zcl_lnt_itxt_dcmnt_pstn_prms( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:83|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD rename.
    DATA(t1) = CAST zcl_lnt_irename_params( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:88|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD code_actions.
    DATA(t1) = CAST zcl_lnt_icode_action_params( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:93|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD document_highlight.
    DATA(t1) = CAST zcl_lnt_itxt_dcmnt_pstn_prms( i_params_c5c7 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:98|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD implementation.
    DATA(t1) = CAST zcl_lnt_itxt_dcmnt_pstn_prms( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:104|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD references.
    DATA(t1) = CAST zcl_lnt_itxt_dcmnt_pstn_prms( i_params_4c59 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:109|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD semantic_tokens_legend.
    DATA(t1) = CAST zcl_lnt_shape_2d2f513b( zcl_lnt_semantic_highlighting=>semantic_tokens_legend( ) ).
    result = t1.

  ENDMETHOD.

  METHOD semantic_tokens_range.
    DATA(t1) = CAST zcl_lnt_itext_document_range( i_range ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:119|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD code_lens.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = CAST zcl_lnt_code_lens_settings( i_settings ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/lsp/language_server.ts:124|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD inlay_hints.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = CAST zcl_lnt_inlay_hints_settings( i_settings ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/lsp/language_server.ts:129|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD help.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = CAST zcl_lnt_shape_38f98ddf( i_position_a3fd ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/lsp/language_server.ts:143|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD list_definition_positions.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:147|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:151|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/language_server.ts:155|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
  ENDMETHOD.
ENDCLASS.
