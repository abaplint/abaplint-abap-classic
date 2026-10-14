* TS: src/objects/data_element.ts:13:1 DataElement
CLASS zcl_lnt_data_element DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e3559bc5.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_01c562b5.
    DATA parsed_type TYPE REF TO zcl_lnt_abstract_type.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_identifier REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_domain_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_data_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_texts RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_66add1d1.
    METHODS get_text_max_lengths RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_66add1d1.
    METHODS get_texts_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_dtel_master RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS pr_in_src_obj_dt_elm_ts_dt_elm RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_aff_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_data_element IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_shape_01c562b5.
    CLEAR t3.
    me->parsed_xml = t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    me->parsed_type = t4.
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |DTEL|.
    result = t1.

  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:50|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:55|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_identifier.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:62|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_dirty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:75|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_domain_name.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:81|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_data_type.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/data_element.ts:88|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_texts.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:102|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_text_max_lengths.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:107|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_texts_translations.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:112|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_dtel_master.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:117|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse_type.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/data_element.ts:122|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD pr_in_src_obj_dt_elm_ts_dt_elm.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:207|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_aff_file.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/data_element.ts:294|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1139_8cc561f83e38.
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~add_file.
    me->add_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~contains_file.
    result = me->contains_file(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_allowed_naming.
    result = me->get_allowed_naming(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_files.
    result = me->get_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_identifier.
    result = me->get_identifier(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_name.
    result = me->get_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_parsing_issues.
    result = me->get_parsing_issues(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_type.
    result = me->get_type(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_xml.
    result = me->get_xml(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~get_xml_file.
    result = me->get_xml_file(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~is_dirty.
    result = me->is_dirty(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~parse.
    result = me->parse(  i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~parse_type.
    result = me->parse_type(  i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~remove_file.
    me->remove_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~set_dirty.
    me->set_dirty(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_e3559bc5~update_file.
    me->update_file(  i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
