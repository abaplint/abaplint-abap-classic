* TS: src/objects/cds_metadata_extension.ts:11:1 CDSMetadataExtension
CLASS zcl_lnt_cds_metadata_extension DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parser_error TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA parsed_data TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS has_parser_error RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_description REDEFINITION.
    METHODS find_source_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_metadata_extension IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3.
    me->parser_error = t3.
    DATA t4 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    CLEAR t4.
    me->parsed_data = t4.
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |DDLX|.
    result = t1.

  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/cds_metadata_extension.ts:19|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD has_parser_error.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/cds_metadata_extension.ts:26|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/cds_metadata_extension.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/cds_metadata_extension.ts:50|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD find_source_file.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/cds_metadata_extension.ts:55|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1121_899e29e083be.
  ENDMETHOD.
ENDCLASS.
