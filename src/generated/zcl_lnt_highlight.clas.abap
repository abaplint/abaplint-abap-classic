* TS: src/lsp/highlight.ts:8:1 Highlight
CLASS zcl_lnt_highlight DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS list_definition_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_read_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_syntax IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope.
    METHODS find_object IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_highlight IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.

  METHOD list_definition_positions.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/highlight.ts:15|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/highlight.ts:29|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/highlight.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/highlight.ts:59|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_object.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/highlight.ts:67|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1071_189ac6ea6f88.
  ENDMETHOD.
ENDCLASS.
