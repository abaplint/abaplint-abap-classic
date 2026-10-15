CLASS zlnt_runtime_desc_a63becc74831 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA zlnt_member_d0_5ecc9e9989d6ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d1_2d6b79a5b052ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d2_33f63f78ed485d TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d3_93b114c6beac5f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d4_13543b5ca4726d TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d5_fe178efb571dcf TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d6_5c37d88667ed48 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d7_82881b26b0f5bb TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d8_a324bf63049ad1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d9_e4f0b8f112f46b TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d10_bae92c470a3031 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d11_b829914c6cc66c TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d12_bad132cea1e854 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d13_724b547adff3ae TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d14_ce741d8560b489 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d15_00cef1e87bea8f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d16_4dbebe58fab420 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_desc_a63becc74831 IMPLEMENTATION.
  METHOD class_constructor.
    DATA t_empty TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_empty.
    DATA init_parent0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d0_5ecc9e9989d6ba EXPORTING name = `TextDocumentIdentifier` emitted = `zcl_lnt_txt_dcmnt_idntfr` parent = init_parent0 static_names = t_empty.
    DATA init_parent1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d1_2d6b79a5b052ba EXPORTING name = `Position` emitted = `zcl_lnt_no_position` parent = init_parent1 static_names = t_empty.
    DATA init_parent2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d2_33f63f78ed485d EXPORTING name = `Range` emitted = `zcl_lnt_range` parent = init_parent2 static_names = t_empty.
    DATA init_parent3 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d3_93b114c6beac5f EXPORTING name = `Location` emitted = `zcl_lnt_location` parent = init_parent3 static_names = t_empty.
    DATA init_parent4 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d4_13543b5ca4726d EXPORTING name = `TextEdit` emitted = `zcl_lnt_text_edit` parent = init_parent4 static_names = t_empty.
    DATA init_parent5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d5_fe178efb571dcf EXPORTING name = `RenameFile` emitted = `zcl_lnt_rename_file` parent = init_parent5 static_names = t_empty.
    DATA init_parent6 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d6_5c37d88667ed48 EXPORTING name = `ResourceOperation` emitted = `zcl_lnt_resource_operation` parent = init_parent6 static_names = t_empty.
    DATA init_parent7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d7_82881b26b0f5bb EXPORTING name = `RenameFileOptions` emitted = `zcl_lnt_rename_file_options` parent = init_parent7 static_names = t_empty.
    DATA init_parent8 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d8_a324bf63049ad1 EXPORTING name = `TextDocumentEdit` emitted = `zcl_lnt_text_document_edit` parent = init_parent8 static_names = t_empty.
    DATA init_parent9 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d9_e4f0b8f112f46b EXPORTING name = `OptionalVersionedTextDocumentIdentifier` emitted = `zcl_lnt_opt_vrsn_txt_dcmn_idnt` parent = init_parent9 static_names = t_empty.
    DATA init_parent10 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d10_bae92c470a3031 EXPORTING name = `Command` emitted = `zcl_lnt_command` parent = init_parent10 static_names = t_empty.
    DATA init_parent11 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d11_b829914c6cc66c EXPORTING name = `MarkedStringWithLanguage` emitted = `zcl_lnt_mrkd_strng_wth_lngg` parent = init_parent11 static_names = t_empty.
    DATA t_s12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_s12.
    APPEND `ns` TO t_s12->items.
    APPEND `SemanticTokenTypes_namespace` TO t_s12->items.
    DATA init_parent12 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d12_bad132cea1e854 EXPORTING name = `module` emitted = `zcl_lnt_main_d_module` parent = init_parent12 static_names = t_s12.
    DATA init_parent13 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d13_724b547adff3ae EXPORTING name = `CodeActionDisabled` emitted = `zcl_lnt_code_action_disabled` parent = init_parent13 static_names = t_empty.
    DATA init_parent14 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d14_ce741d8560b489 EXPORTING name = `DocumentSymbol` emitted = `zcl_lnt_document_symbol` parent = init_parent14 static_names = t_empty.
    DATA init_parent15 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d15_00cef1e87bea8f EXPORTING name = `VersionedTextDocumentIdentifier` emitted = `zcl_lnt_vrsnd_txt_dcmnt_idntfr` parent = init_parent15 static_names = t_empty.
    DATA init_parent16 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d16_4dbebe58fab420 EXPORTING name = `ValidationError` emitted = `zcl_lnt_n_md_fs_xm_pr_lb_fx_a2` parent = init_parent16 static_names = t_empty.
  ENDMETHOD.
ENDCLASS.
