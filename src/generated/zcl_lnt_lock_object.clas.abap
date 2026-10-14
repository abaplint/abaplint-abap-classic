* TS: src/objects/lock_object.ts:10:1 LockObject
CLASS zcl_lnt_lock_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e3559bc5.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_c295e2a7.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_primary_table RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS pr_in_sr_ob_lck_obj_ts_lck_obj RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_description REDEFINITION.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lock_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |ENQU|.
    result = t1.

  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/lock_object.ts:25|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_dirty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/lock_object.ts:33|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_primary_table.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/lock_object.ts:38|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_parameters.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/lock_object.ts:43|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse_type.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/lock_object.ts:48|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD pr_in_sr_ob_lck_obj_ts_lck_obj.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/lock_object.ts:70|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/lock_object.ts:105|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1186_5d9f7c8a4e85.
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
