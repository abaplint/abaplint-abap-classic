* TS: src/objects/rename/renamer_helper.ts:16:1 RenamerHelper
CLASS zcl_lnt_renamer_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS rename_references IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddic_code_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddictabl_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddicdtel_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddicttyp_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddicauth_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_xml_file_edits IMPORTING i_object_19cd TYPE REF TO zcl_lnt_abstract_object i_xml_tag TYPE string i_old_name TYPE string i_new_name TYPE string i_use_lower_case TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING
    VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_url_file_edits IMPORTING i_object_19cd TYPE REF TO zcl_lnt_abstract_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_files IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS replace_refs IMPORTING i_refs TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_references IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_identifier TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rnm_icf_srvc_hndlr_rfrncs IMPORTING i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_renamer_helper IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.

  METHOD rename_references.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_id ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:23|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD rename_ddic_code_references.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:49|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD rename_ddictabl_references.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:68|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD rename_ddicdtel_references.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:89|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD rename_ddicttyp_references.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:107|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD rename_ddicauth_references.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:125|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD build_xml_file_edits.
    DATA(t1) = CAST zcl_lnt_abstract_object( i_object_19cd ).
    DATA(t2) = i_xml_tag.
    DATA(t3) = i_old_name.
    DATA(t4) = i_new_name.
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( i_use_lower_case ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/objects/rename/renamer_helper.ts:143|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.

  METHOD build_url_file_edits.
    DATA(t1) = CAST zcl_lnt_abstract_object( i_object_19cd ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:175|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD rename_files.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:216|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD replace_refs.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_refs ).
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer_helper.ts:233|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD find_references.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/objects/rename/renamer_helper.ts:255|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD rnm_icf_srvc_hndlr_rfrncs.
    DATA(t1) = i_old_name.
    DATA(t2) = i_new_name.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/objects/rename/renamer_helper.ts:279|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1241_37a39c8eff0c.
  ENDMETHOD.
ENDCLASS.
