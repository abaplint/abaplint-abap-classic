* TS: src/lsp/semantic.ts:22:1 SemanticHighlighting
CLASS zcl_lnt_semantic_highlighting DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    CLASS-DATA token_types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA token_type_map TYPE REF TO zlnt_runtime_map__117a2401283c.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    CLASS-METHODS semantic_tokens_legend RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_2d2f513b.
    CLASS-METHODS init_legend.
    METHODS semantic_tokens_range IMPORTING i_range TYPE REF TO zcl_lnt_itext_document_range RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_d48da73b.
    METHODS encode_tokens IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    CLASS-DATA zlnt_builtin_init_ceda21d7331d TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_1c3f77c0f160.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_semantic_highlighting IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/semantic.ts:27|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD semantic_tokens_legend.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/lsp/semantic.ts:32|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD init_legend.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/lsp/semantic.ts:42|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD semantic_tokens_range.
    DATA(t1) = CAST zcl_lnt_itext_document_range( i_range ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/semantic.ts:58|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD encode_tokens.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/semantic.ts:120|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_builtin_init_1c3f77c0f160.
    IF zlnt_builtin_init_ceda21d7331d = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_ceda21d7331d = abap_true.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    zcl_lnt_semantic_highlighting=>token_types = t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
  ENDMETHOD.
ENDCLASS.
