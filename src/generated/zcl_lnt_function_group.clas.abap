* TS: src/objects/function_group.ts:8:1 FunctionGroup
CLASS zcl_lnt_function_group DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_d439e5f2.
    DATA includes TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA modules TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dynpros TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_dynpros RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_modules RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_include_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_include IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS get_main_abap_file REDEFINITION.
    METHODS get_includes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_module IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    METHODS get_text_symbols REDEFINITION.
    METHODS parse_xml.
    METHODS find_text_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_function_group IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    me->includes = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    me->modules = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    me->description = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    me->dynpros = t6.
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |FUGR|.
    result = t1.

  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_dirty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:26|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_dynpros.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:41|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_sequenced_files.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:48|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_modules.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:70|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_include_files.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:81|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_include.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/function_group.ts:109|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_main_abap_file.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:120|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_includes.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:130|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_module.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/function_group.ts:141|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_text_symbols.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:150|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse_xml.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:170|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD find_text_file.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/function_group.ts:203|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1161_e6f63eca2277.
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~add_file.
    me->add_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~contains_file.
    result = me->contains_file(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~debug_description.
    result = me->debug_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_abap_file_by_name.
    result = me->get_abap_file_by_name(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_abap_files.
    result = me->get_abap_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_allowed_naming.
    result = me->get_allowed_naming(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_dynpros.
    result = me->get_dynpros(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_files.
    result = me->get_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_identifier.
    result = me->get_identifier(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_main_abap_file.
    result = me->get_main_abap_file(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_name.
    result = me->get_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_parsing_issues.
    result = me->get_parsing_issues(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_sequenced_files.
    result = me->get_sequenced_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_text_elements.
    result = me->get_text_elements(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_text_elements_translations.
    result = me->get_text_elements_translations(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_text_symbols.
    result = me->get_text_symbols(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_type.
    result = me->get_type(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_xml.
    result = me->get_xml(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_xml_file.
    result = me->get_xml_file(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~is_dirty.
    result = me->is_dirty(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~parse.
    result = me->parse(  i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~remove_file.
    me->remove_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~set_dirty.
    me->set_dirty(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~update_file.
    me->update_file(  i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
