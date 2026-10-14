* TS: src/lsp/symbols.ts:13:1 Symbols
CLASS zcl_lnt_symbols DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_uri TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS selection_range IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_9ead17bd.
    METHODS range IMPORTING i_identifer TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_9ead17bd.
    METHODS new_symbol_ranged IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_kind TYPE int8 i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_range TYPE REF TO zcl_lnt_shape_9ead17bd RETURNING VALUE(result) TYPE REF TO object.
    METHODS new_symbol IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_kind TYPE int8 i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS output_forms IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_modules IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_classes IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_method_implementations IMPORTING i_methods TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_class_attributes IMPORTING i_attr TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_symbols IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.
  METHOD find_8f95.
    DATA(t1) = i_uri.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/symbols.ts:20|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD selection_range.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/symbols.ts:33|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD range.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_identifer ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/symbols.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD new_symbol_ranged.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t2) = i_kind.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t4) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/lsp/symbols.ts:45|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD new_symbol.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t2) = i_kind.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/lsp/symbols.ts:57|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD output_forms.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/symbols.ts:69|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD output_modules.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/symbols.ts:78|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD output_classes.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/symbols.ts:96|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD output_method_implementations.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_methods ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/lsp/symbols.ts:116|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD output_class_attributes.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_attr ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/symbols.ts:145|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
  ENDMETHOD.
ENDCLASS.
