CLASS zlnt_runtime_clas_c216c6067abd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS new IMPORTING p0 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO object.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_clas_c216c6067abd IMPLEMENTATION.
  METHOD new.
    DATA class_name TYPE string.
    class_name = p0->emitted.
    TRANSLATE class_name TO UPPER CASE.
    CASE class_name.
      WHEN `ZCL_LNT_IABAPLINT_APP_SETTINGS`.
        CREATE OBJECT result TYPE zcl_lnt_iabaplint_app_settings.
      WHEN `ZCL_LNT_IOBJECT_AND_TOKEN`.
        CREATE OBJECT result TYPE zcl_lnt_iobject_and_token.
      WHEN `ZCL_LNT_IRUN_INPUT`.
        CREATE OBJECT result TYPE zcl_lnt_irun_input.
      WHEN `ZCL_LNT_LEXER`.
        CREATE OBJECT result TYPE zcl_lnt_lexer.
      WHEN `ZCL_LNT_IVER_OPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_iver_options.
      WHEN `ZCX_LNT_FAIL_COMBINATOR_ERROR`.
        CREATE OBJECT result TYPE zcx_lnt_fail_combinator_error.
      WHEN `ZCX_LNT_FAIL_STAR_ERROR`.
        CREATE OBJECT result TYPE zcx_lnt_fail_star_error.
      WHEN `ZCL_LNT_FAIL_COMBINATOR`.
        CREATE OBJECT result TYPE zcl_lnt_fail_combinator.
      WHEN `ZCL_LNT_COMBI`.
        CREATE OBJECT result TYPE zcl_lnt_combi.
      WHEN `ZCL_LNT_ABSTRACT`.
        CREATE OBJECT result TYPE zcl_lnt_abstract.
      WHEN `ZCL_LNT_ABSTRACT_METHODS`.
        CREATE OBJECT result TYPE zcl_lnt_abstract_methods.
      WHEN `ZCL_LNT_AND_RETURN`.
        CREATE OBJECT result TYPE zcl_lnt_and_return.
      WHEN `ZCL_LNT_ARITH_OPERATOR`.
        CREATE OBJECT result TYPE zcl_lnt_arith_operator.
      WHEN `ZCL_LNT_ARROW`.
        CREATE OBJECT result TYPE zcl_lnt_arrow.
      WHEN `ZCL_LNT_ARROW_OR_DASH`.
        CREATE OBJECT result TYPE zcl_lnt_arrow_or_dash.
      WHEN `ZCL_LNT_ASSIGN_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_assign_source.
      WHEN `ZCL_LNT_ST_ATTRIBUTE_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_st_attribute_chain.
      WHEN `ZCL_LNT_ST_ATTRIBUTE_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_st_attribute_name.
      WHEN `ZCL_LNT_BHVR_DFNTN_NM`.
        CREATE OBJECT result TYPE zcl_lnt_bhvr_dfntn_nm.
      WHEN `ZCL_LNT_BLOCK_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_block_name.
      WHEN `ZCL_LNT_CLL_TRNSFRMTN_OPTNS`.
        CREATE OBJECT result TYPE zcl_lnt_cll_trnsfrmtn_optns.
      WHEN `ZCL_LNT_CLL_TRNSFRMTN_PRMTRS`.
        CREATE OBJECT result TYPE zcl_lnt_cll_trnsfrmtn_prmtrs.
      WHEN `ZCL_LNT_ST_CAST`.
        CREATE OBJECT result TYPE zcl_lnt_st_cast.
      WHEN `ZCL_LNT_CLASS_FINAL`.
        CREATE OBJECT result TYPE zcl_lnt_class_final.
      WHEN `ZCL_LNT_CLASS_FRIENDS`.
        CREATE OBJECT result TYPE zcl_lnt_class_friends.
      WHEN `ZCL_LNT_ST_CLASS_GLOBAL`.
        CREATE OBJECT result TYPE zcl_lnt_st_class_global.
      WHEN `ZCL_LNT_CLASS_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_class_name.
      WHEN `ZCL_LNT_COLOR`.
        CREATE OBJECT result TYPE zcl_lnt_color.
      WHEN `ZCL_LNT_ST_COMPARE`.
        CREATE OBJECT result TYPE zcl_lnt_st_compare.
      WHEN `ZCL_LNT_COMPARE_OPERATOR`.
        CREATE OBJECT result TYPE zcl_lnt_compare_operator.
      WHEN `ZCL_LNT_ST_COMPONENT_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_st_component_chain.
      WHEN `ZCL_LNT_COMPONENT_CHAIN_SIMPLE`.
        CREATE OBJECT result TYPE zcl_lnt_component_chain_simple.
      WHEN `ZCL_LNT_ST_COMPONENT_COMPARE`.
        CREATE OBJECT result TYPE zcl_lnt_st_component_compare.
      WHEN `ZCL_LNT_ST_CMPNNT_CMPR_SMPL`.
        CREATE OBJECT result TYPE zcl_lnt_st_cmpnnt_cmpr_smpl.
      WHEN `ZCL_LNT_CMPNNT_CMPR_SNGL`.
        CREATE OBJECT result TYPE zcl_lnt_cmpnnt_cmpr_sngl.
      WHEN `ZCL_LNT_ST_COMPONENT_COND`.
        CREATE OBJECT result TYPE zcl_lnt_st_component_cond.
      WHEN `ZCL_LNT_COMPONENT_COND_SUB`.
        CREATE OBJECT result TYPE zcl_lnt_component_cond_sub.
      WHEN `ZCL_LNT_ST_COMPONENT_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_st_component_name.
      WHEN `ZCL_LNT_CONCATENATED_CONSTANT`.
        CREATE OBJECT result TYPE zcl_lnt_concatenated_constant.
      WHEN `ZCL_LNT_ST_COND`.
        CREATE OBJECT result TYPE zcl_lnt_st_cond.
      WHEN `ZCL_LNT_ST_COND_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_cond_body.
      WHEN `ZCL_LNT_COND_SUB`.
        CREATE OBJECT result TYPE zcl_lnt_cond_sub.
      WHEN `ZCL_LNT_ST_EXPRES_CONSTANT`.
        CREATE OBJECT result TYPE zcl_lnt_st_expres_constant.
      WHEN `ZCL_LNT_CONSTANT_FIELD_LENGTH`.
        CREATE OBJECT result TYPE zcl_lnt_constant_field_length.
      WHEN `ZCL_LNT_CONSTANT_STRING`.
        CREATE OBJECT result TYPE zcl_lnt_constant_string.
      WHEN `ZCL_LNT_ST_CONV_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_conv_body.
      WHEN `ZCL_LNT_ST_CORRESPONDING_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_corresponding_body.
      WHEN `ZCL_LNT_CRRSPNDNG_BDY_BS`.
        CREATE OBJECT result TYPE zcl_lnt_crrspndng_bdy_bs.
      WHEN `ZCL_LNT_ST_DATA_DEFINITION`.
        CREATE OBJECT result TYPE zcl_lnt_st_data_definition.
      WHEN `ZCL_LNT_DATABASE_CONNECTION`.
        CREATE OBJECT result TYPE zcl_lnt_database_connection.
      WHEN `ZCL_LNT_ST_DATABASE_TABLE`.
        CREATE OBJECT result TYPE zcl_lnt_st_database_table.
      WHEN `ZCL_LNT_DECIMALS`.
        CREATE OBJECT result TYPE zcl_lnt_decimals.
      WHEN `ZCL_LNT_ST_DEFAULT`.
        CREATE OBJECT result TYPE zcl_lnt_st_default.
      WHEN `ZCL_LNT_DEFINITION_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_definition_name.
      WHEN `ZCL_LNT_ST_DEREFERENCE`.
        CREATE OBJECT result TYPE zcl_lnt_st_dereference.
      WHEN `ZCL_LNT_DESTINATION`.
        CREATE OBJECT result TYPE zcl_lnt_destination.
      WHEN `ZCL_LNT_ST_DYNAMIC`.
        CREATE OBJECT result TYPE zcl_lnt_st_dynamic.
      WHEN `ZCL_LNT_EML_ENTITY_PATH`.
        CREATE OBJECT result TYPE zcl_lnt_eml_entity_path.
      WHEN `ZCL_LNT_ENTITY_ASSOCIATION`.
        CREATE OBJECT result TYPE zcl_lnt_entity_association.
      WHEN `ZCL_LNT_EVENT_HANDLER`.
        CREATE OBJECT result TYPE zcl_lnt_event_handler.
      WHEN `ZCL_LNT_EVENT_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_event_name.
      WHEN `ZCL_LNT_EXCEPTION_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_exception_name.
      WHEN `ZCL_LNT_ST_EXPRES_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_st_expres_field.
      WHEN `ZCL_LNT_FIELD_ALL`.
        CREATE OBJECT result TYPE zcl_lnt_field_all.
      WHEN `ZCL_LNT_ST_FIELD_ASSIGNMENT`.
        CREATE OBJECT result TYPE zcl_lnt_st_field_assignment.
      WHEN `ZCL_LNT_ST_FIELD_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_st_field_chain.
      WHEN `ZCL_LNT_ST_FIELD_LENGTH`.
        CREATE OBJECT result TYPE zcl_lnt_st_field_length.
      WHEN `ZCL_LNT_ST_FIELD_OFFSET`.
        CREATE OBJECT result TYPE zcl_lnt_st_field_offset.
      WHEN `ZCL_LNT_FIELD_SUB`.
        CREATE OBJECT result TYPE zcl_lnt_field_sub.
      WHEN `ZCL_LNT_ST_EXPRES_FIELD_SYMBOL`.
        CREATE OBJECT result TYPE zcl_lnt_st_expres_field_symbol.
      WHEN `ZCL_LNT_ST_FILTER_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_filter_body.
      WHEN `ZCL_LNT_FINAL_METHODS`.
        CREATE OBJECT result TYPE zcl_lnt_final_methods.
      WHEN `ZCL_LNT_FIND_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_find_type.
      WHEN `ZCL_LNT_ST_FOR`.
        CREATE OBJECT result TYPE zcl_lnt_st_for.
      WHEN `ZCL_LNT_FORM_CHANGING`.
        CREATE OBJECT result TYPE zcl_lnt_form_changing.
      WHEN `ZCL_LNT_FORM_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_form_name.
      WHEN `ZCL_LNT_ST_FORM_PARAM`.
        CREATE OBJECT result TYPE zcl_lnt_st_form_param.
      WHEN `ZCL_LNT_FORM_PARAM_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_form_param_name.
      WHEN `ZCL_LNT_FORM_PARAM_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_form_param_type.
      WHEN `ZCL_LNT_FORM_RAISING`.
        CREATE OBJECT result TYPE zcl_lnt_form_raising.
      WHEN `ZCL_LNT_FORM_TABLES`.
        CREATE OBJECT result TYPE zcl_lnt_form_tables.
      WHEN `ZCL_LNT_FORM_USING`.
        CREATE OBJECT result TYPE zcl_lnt_form_using.
      WHEN `ZCL_LNT_ST_FS_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_st_fs_target.
      WHEN `ZCL_LNT_FUNCTION_EXPORTING`.
        CREATE OBJECT result TYPE zcl_lnt_function_exporting.
      WHEN `ZCL_LNT_FNCTN_EXPRTNG_PRMTR`.
        CREATE OBJECT result TYPE zcl_lnt_fnctn_exprtng_prmtr.
      WHEN `ZCL_LNT_FUNCTION_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_function_name.
      WHEN `ZCL_LNT_ST_FUNCTION_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_st_function_parameters.
      WHEN `ZCL_LNT_INCLUDE_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_include_name.
      WHEN `ZCL_LNT_INLINE_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_inline_field.
      WHEN `ZCL_LNT_ST_INLN_FLD_DFNTN`.
        CREATE OBJECT result TYPE zcl_lnt_st_inln_fld_dfntn.
      WHEN `ZCL_LNT_ST_INLN_LP_DFNTN`.
        CREATE OBJECT result TYPE zcl_lnt_st_inln_lp_dfntn.
      WHEN `ZCL_LNT_ST_INLINE_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_st_inline_data.
      WHEN `ZCL_LNT_ST_INLINE_FS`.
        CREATE OBJECT result TYPE zcl_lnt_st_inline_fs.
      WHEN `ZCL_LNT_INTEGER`.
        CREATE OBJECT result TYPE zcl_lnt_integer.
      WHEN `ZCL_LNT_INTERFACE_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_interface_name.
      WHEN `ZCL_LNT_KERNEL_ID`.
        CREATE OBJECT result TYPE zcl_lnt_kernel_id.
      WHEN `ZCL_LNT_LANGUAGE`.
        CREATE OBJECT result TYPE zcl_lnt_language.
      WHEN `ZCL_LNT_LENGTH`.
        CREATE OBJECT result TYPE zcl_lnt_length.
      WHEN `ZCL_LNT_ST_LET`.
        CREATE OBJECT result TYPE zcl_lnt_st_let.
      WHEN `ZCL_LNT_LOB_HANDLE`.
        CREATE OBJECT result TYPE zcl_lnt_lob_handle.
      WHEN `ZCL_LNT_ST_LOOP_GROUP_BY`.
        CREATE OBJECT result TYPE zcl_lnt_st_loop_group_by.
      WHEN `ZCL_LNT_LP_GRP_BY_CMPNNT`.
        CREATE OBJECT result TYPE zcl_lnt_lp_grp_by_cmpnnt.
      WHEN `ZCL_LNT_LOOP_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_loop_source.
      WHEN `ZCL_LNT_LOOP_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_loop_target.
      WHEN `ZCL_LNT_MACRO_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_macro_name.
      WHEN `ZCL_LNT_ST_MESSAGE_CLASS`.
        CREATE OBJECT result TYPE zcl_lnt_st_message_class.
      WHEN `ZCL_LNT_MESSAGE_NUMBER`.
        CREATE OBJECT result TYPE zcl_lnt_message_number.
      WHEN `ZCL_LNT_ST_MESSAGE_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_st_message_source.
      WHEN `ZCL_LNT_MESSAGE_SOURCE_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_message_source_source.
      WHEN `ZCL_LNT_MSSG_TYP_AND_NMBR`.
        CREATE OBJECT result TYPE zcl_lnt_mssg_typ_and_nmbr.
      WHEN `ZCL_LNT_METHOD_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_method_call.
      WHEN `ZCL_LNT_ST_METHOD_CALL_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_method_call_body.
      WHEN `ZCL_LNT_ST_METHOD_CALL_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_st_method_call_chain.
      WHEN `ZCL_LNT_ST_METHOD_CALL_PARAM`.
        CREATE OBJECT result TYPE zcl_lnt_st_method_call_param.
      WHEN `ZCL_LNT_METHOD_DEF_CHANGING`.
        CREATE OBJECT result TYPE zcl_lnt_method_def_changing.
      WHEN `ZCL_LNT_METHOD_DEF_EXCEPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_method_def_exceptions.
      WHEN `ZCL_LNT_METHOD_DEF_EXPORTING`.
        CREATE OBJECT result TYPE zcl_lnt_method_def_exporting.
      WHEN `ZCL_LNT_METHOD_DEF_IMPORTING`.
        CREATE OBJECT result TYPE zcl_lnt_method_def_importing.
      WHEN `ZCL_LNT_METHOD_DEF_RAISING`.
        CREATE OBJECT result TYPE zcl_lnt_method_def_raising.
      WHEN `ZCL_LNT_ST_MTHD_DF_RTRNNG`.
        CREATE OBJECT result TYPE zcl_lnt_st_mthd_df_rtrnng.
      WHEN `ZCL_LNT_METHOD_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_method_name.
      WHEN `ZCL_LNT_ST_METHOD_PARAM`.
        CREATE OBJECT result TYPE zcl_lnt_st_method_param.
      WHEN `ZCL_LNT_METHOD_PARAM_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_method_param_name.
      WHEN `ZCL_LNT_METHOD_PARAM_OPTIONAL`.
        CREATE OBJECT result TYPE zcl_lnt_method_param_optional.
      WHEN `ZCL_LNT_ST_METHOD_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_st_method_parameters.
      WHEN `ZCL_LNT_ST_METHOD_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_st_method_source.
      WHEN `ZCL_LNT_MODIF`.
        CREATE OBJECT result TYPE zcl_lnt_modif.
      WHEN `ZCL_LNT_NAMESPACE_SIMPLE_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_namespace_simple_name.
      WHEN `ZCL_LNT_ST_NEW_OBJECT`.
        CREATE OBJECT result TYPE zcl_lnt_st_new_object.
      WHEN `ZCL_LNT_OLE_EXPORTING`.
        CREATE OBJECT result TYPE zcl_lnt_ole_exporting.
      WHEN `ZCL_LNT_OR`.
        CREATE OBJECT result TYPE zcl_lnt_or.
      WHEN `ZCL_LNT_PARAMETER_EXCEPTION`.
        CREATE OBJECT result TYPE zcl_lnt_parameter_exception.
      WHEN `ZCL_LNT_PRMTR_LST_EXCPTNS`.
        CREATE OBJECT result TYPE zcl_lnt_prmtr_lst_excptns.
      WHEN `ZCL_LNT_PARAMETER_LIST_S`.
        CREATE OBJECT result TYPE zcl_lnt_parameter_list_s.
      WHEN `ZCL_LNT_PARAMETER_LIST_T`.
        CREATE OBJECT result TYPE zcl_lnt_parameter_list_t.
      WHEN `ZCL_LNT_PARAMETER_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_parameter_name.
      WHEN `ZCL_LNT_PARAMETER_S`.
        CREATE OBJECT result TYPE zcl_lnt_parameter_s.
      WHEN `ZCL_LNT_PARAMETER_T`.
        CREATE OBJECT result TYPE zcl_lnt_parameter_t.
      WHEN `ZCL_LNT_PASS_BY_VALUE`.
        CREATE OBJECT result TYPE zcl_lnt_pass_by_value.
      WHEN `ZCL_LNT_PERFORM_CHANGING`.
        CREATE OBJECT result TYPE zcl_lnt_perform_changing.
      WHEN `ZCL_LNT_PERFORM_TABLES`.
        CREATE OBJECT result TYPE zcl_lnt_perform_tables.
      WHEN `ZCL_LNT_PERFORM_USING`.
        CREATE OBJECT result TYPE zcl_lnt_perform_using.
      WHEN `ZCL_LNT_PROVIDE_FIELD_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_provide_field_name.
      WHEN `ZCL_LNT_RADIO_GROUP_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_radio_group_name.
      WHEN `ZCL_LNT_ST_RAISE_WITH`.
        CREATE OBJECT result TYPE zcl_lnt_st_raise_with.
      WHEN `ZCL_LNT_READ_TABLE_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_read_table_target.
      WHEN `ZCL_LNT_RECEIVE_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_receive_parameters.
      WHEN `ZCL_LNT_REDEFINITION`.
        CREATE OBJECT result TYPE zcl_lnt_redefinition.
      WHEN `ZCL_LNT_ST_REDUCE_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_reduce_body.
      WHEN `ZCL_LNT_ST_REDUCE_NEXT`.
        CREATE OBJECT result TYPE zcl_lnt_st_reduce_next.
      WHEN `ZCL_LNT_REPORT_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_report_name.
      WHEN `ZCL_LNT_ST_EXPRES_SELECT`.
        CREATE OBJECT result TYPE zcl_lnt_st_expres_select.
      WHEN `ZCL_LNT_SELECT_CTE`.
        CREATE OBJECT result TYPE zcl_lnt_select_cte.
      WHEN `ZCL_LNT_SIMPLE_FIELD_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_simple_field_chain.
      WHEN `ZCL_LNT_SIMPLE_FIELD_CHAIN2`.
        CREATE OBJECT result TYPE zcl_lnt_simple_field_chain2.
      WHEN `ZCL_LNT_SIMPLE_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_simple_name.
      WHEN `ZCL_LNT_SIMPLE_SOURCE1`.
        CREATE OBJECT result TYPE zcl_lnt_simple_source1.
      WHEN `ZCL_LNT_SIMPLE_SOURCE2`.
        CREATE OBJECT result TYPE zcl_lnt_simple_source2.
      WHEN `ZCL_LNT_SIMPLE_SOURCE3`.
        CREATE OBJECT result TYPE zcl_lnt_simple_source3.
      WHEN `ZCL_LNT_SIMPLE_SOURCE4`.
        CREATE OBJECT result TYPE zcl_lnt_simple_source4.
      WHEN `ZCL_LNT_SIMPLE_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_simple_target.
      WHEN `ZCL_LNT_ST_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_st_source.
      WHEN `ZCL_LNT_ST_SOURCE_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_st_source_field.
      WHEN `ZCL_LNT_ST_SOURCE_FIELD_SYMBOL`.
        CREATE OBJECT result TYPE zcl_lnt_st_source_field_symbol.
      WHEN `ZCL_LNT_SRC_FLD_SYMBL_CHN`.
        CREATE OBJECT result TYPE zcl_lnt_src_fld_symbl_chn.
      WHEN `ZCL_LNT_SQL_AGGREGATION`.
        CREATE OBJECT result TYPE zcl_lnt_sql_aggregation.
      WHEN `ZCL_LNT_SQL_ALIAS_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_sql_alias_field.
      WHEN `ZCL_LNT_SQL_AS_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_sql_as_name.
      WHEN `ZCL_LNT_SQL_BYPASSING_BUFFER`.
        CREATE OBJECT result TYPE zcl_lnt_sql_bypassing_buffer.
      WHEN `ZCL_LNT_SQL_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_case.
      WHEN `ZCL_LNT_SQLCDS_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_sqlcds_parameters.
      WHEN `ZCL_LNT_SQL_CLIENT`.
        CREATE OBJECT result TYPE zcl_lnt_sql_client.
      WHEN `ZCL_LNT_ST_SQL_COMPARE`.
        CREATE OBJECT result TYPE zcl_lnt_st_sql_compare.
      WHEN `ZCL_LNT_SQL_COMPARE_OPERATOR`.
        CREATE OBJECT result TYPE zcl_lnt_sql_compare_operator.
      WHEN `ZCL_LNT_SQL_COND`.
        CREATE OBJECT result TYPE zcl_lnt_sql_cond.
      WHEN `ZCL_LNT_SQL_CREATING`.
        CREATE OBJECT result TYPE zcl_lnt_sql_creating.
      WHEN `ZCL_LNT_SQLCTE_ASSOCIATIONS`.
        CREATE OBJECT result TYPE zcl_lnt_sqlcte_associations.
      WHEN `ZCL_LNT_SQLCTE_HIERARCHY`.
        CREATE OBJECT result TYPE zcl_lnt_sqlcte_hierarchy.
      WHEN `ZCL_LNT_SQLCTE_PATH_PREFIX`.
        CREATE OBJECT result TYPE zcl_lnt_sqlcte_path_prefix.
      WHEN `ZCL_LNT_SQL_DML_OPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_dml_options.
      WHEN `ZCL_LNT_SQL_EXPOSE_CLIENT_AS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_expose_client_as.
      WHEN `ZCL_LNT_SQL_EXTENDED_RESULT`.
        CREATE OBJECT result TYPE zcl_lnt_sql_extended_result.
      WHEN `ZCL_LNT_SQL_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_sql_field.
      WHEN `ZCL_LNT_SQL_FIELD_AND_VALUE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_field_and_value.
      WHEN `ZCL_LNT_SQL_FIELD_LIST`.
        CREATE OBJECT result TYPE zcl_lnt_sql_field_list.
      WHEN `ZCL_LNT_SQL_FIELD_LIST_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_sql_field_list_loop.
      WHEN `ZCL_LNT_SQL_FIELD_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_sql_field_name.
      WHEN `ZCL_LNT_SQL_FIELDS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_fields.
      WHEN `ZCL_LNT_ST_SQL_FOR_ALL_ENTRIES`.
        CREATE OBJECT result TYPE zcl_lnt_st_sql_for_all_entries.
      WHEN `ZCL_LNT_ST_SQL_FROM`.
        CREATE OBJECT result TYPE zcl_lnt_st_sql_from.
      WHEN `ZCL_LNT_SQL_FROM_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sql_from_body.
      WHEN `ZCL_LNT_SQL_FROM_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_from_source.
      WHEN `ZCL_LNT_SQL_FUNCTION`.
        CREATE OBJECT result TYPE zcl_lnt_sql_function.
      WHEN `ZCL_LNT_SQL_FUNCTION_INPUT`.
        CREATE OBJECT result TYPE zcl_lnt_sql_function_input.
      WHEN `ZCL_LNT_SQL_GROUP_BY`.
        CREATE OBJECT result TYPE zcl_lnt_sql_group_by.
      WHEN `ZCL_LNT_SQL_GROUPING_SETS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_grouping_sets.
      WHEN `ZCL_LNT_SQL_HAVING`.
        CREATE OBJECT result TYPE zcl_lnt_sql_having.
      WHEN `ZCL_LNT_SQL_HIERARCHY_ACCESSOR`.
        CREATE OBJECT result TYPE zcl_lnt_sql_hierarchy_accessor.
      WHEN `ZCL_LNT_SQL_HRRCHY_AGGRGT`.
        CREATE OBJECT result TYPE zcl_lnt_sql_hrrchy_aggrgt.
      WHEN `ZCL_LNT_SQL_HIERARCHY_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_hierarchy_source.
      WHEN `ZCL_LNT_SQL_HINTS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_hints.
      WHEN `ZCL_LNT_ST_SQL_IN`.
        CREATE OBJECT result TYPE zcl_lnt_st_sql_in.
      WHEN `ZCL_LNT_SQL_INDICATORS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_indicators.
      WHEN `ZCL_LNT_SQL_INTO_LIST`.
        CREATE OBJECT result TYPE zcl_lnt_sql_into_list.
      WHEN `ZCL_LNT_SQL_INTO_STRUCTURE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_into_structure.
      WHEN `ZCL_LNT_SQL_INTO_TABLE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_into_table.
      WHEN `ZCL_LNT_SQL_JOIN`.
        CREATE OBJECT result TYPE zcl_lnt_sql_join.
      WHEN `ZCL_LNT_SQL_JOIN_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_join_source.
      WHEN `ZCL_LNT_SQL_LIKE_REGEXPR`.
        CREATE OBJECT result TYPE zcl_lnt_sql_like_regexpr.
      WHEN `ZCL_LNT_SQL_LOCATE_REGEXPR`.
        CREATE OBJECT result TYPE zcl_lnt_sql_locate_regexpr.
      WHEN `ZCL_LNT_SQL_MPPNG_FRM_ENTTY`.
        CREATE OBJECT result TYPE zcl_lnt_sql_mppng_frm_entty.
      WHEN `ZCL_LNT_SQL_OCCRRNCS_RGXPR`.
        CREATE OBJECT result TYPE zcl_lnt_sql_occrrncs_rgxpr.
      WHEN `ZCL_LNT_SQL_OFFSET`.
        CREATE OBJECT result TYPE zcl_lnt_sql_offset.
      WHEN `ZCL_LNT_SQL_OPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_options.
      WHEN `ZCL_LNT_ST_SQL_ORDER_BY`.
        CREATE OBJECT result TYPE zcl_lnt_st_sql_order_by.
      WHEN `ZCL_LNT_SQL_OVER`.
        CREATE OBJECT result TYPE zcl_lnt_sql_over.
      WHEN `ZCL_LNT_SQL_PACKAGE_SIZE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_package_size.
      WHEN `ZCL_LNT_SQL_PATH_FOR_COLUMN`.
        CREATE OBJECT result TYPE zcl_lnt_sql_path_for_column.
      WHEN `ZCL_LNT_SQL_PATH_FOR_ENTITY`.
        CREATE OBJECT result TYPE zcl_lnt_sql_path_for_entity.
      WHEN `ZCL_LNT_SQL_PATH_SEGMENT`.
        CREATE OBJECT result TYPE zcl_lnt_sql_path_segment.
      WHEN `ZCL_LNT_SQL_PRIVILEGED_ACCESS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_privileged_access.
      WHEN `ZCL_LNT_SQL_PROVIDED_BY`.
        CREATE OBJECT result TYPE zcl_lnt_sql_provided_by.
      WHEN `ZCL_LNT_SQL_REGEXPR_FROM`.
        CREATE OBJECT result TYPE zcl_lnt_sql_regexpr_from.
      WHEN `ZCL_LNT_SQL_REGEXPR_GROUP`.
        CREATE OBJECT result TYPE zcl_lnt_sql_regexpr_group.
      WHEN `ZCL_LNT_SQL_REGEXPR_OCCURRENCE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_regexpr_occurrence.
      WHEN `ZCL_LNT_SQL_REGEXPR_PATTERN`.
        CREATE OBJECT result TYPE zcl_lnt_sql_regexpr_pattern.
      WHEN `ZCL_LNT_SQL_REPLACE_REGEXPR`.
        CREATE OBJECT result TYPE zcl_lnt_sql_replace_regexpr.
      WHEN `ZCL_LNT_SQL_SET_OP`.
        CREATE OBJECT result TYPE zcl_lnt_sql_set_op.
      WHEN `ZCL_LNT_ST_SQL_SET_OP_GROUP`.
        CREATE OBJECT result TYPE zcl_lnt_st_sql_set_op_group.
      WHEN `ZCL_LNT_ST_SQL_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_st_sql_source.
      WHEN `ZCL_LNT_SQL_SOURCE_NO_SPACE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_source_no_space.
      WHEN `ZCL_LNT_SQL_SOURCE_SIMPLE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_source_simple.
      WHEN `ZCL_LNT_SQL_SUBSTRING_REGEXPR`.
        CREATE OBJECT result TYPE zcl_lnt_sql_substring_regexpr.
      WHEN `ZCL_LNT_SQL_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_sql_target.
      WHEN `ZCL_LNT_SQL_TYPED_LITERAL`.
        CREATE OBJECT result TYPE zcl_lnt_sql_typed_literal.
      WHEN `ZCL_LNT_SQL_UP_TO`.
        CREATE OBJECT result TYPE zcl_lnt_sql_up_to.
      WHEN `ZCL_LNT_ST_STRING_TEMPLATE`.
        CREATE OBJECT result TYPE zcl_lnt_st_string_template.
      WHEN `ZCL_LNT_STRNG_TMPLT_FRMTTNG`.
        CREATE OBJECT result TYPE zcl_lnt_strng_tmplt_frmttng.
      WHEN `ZCL_LNT_STRING_TEMPLATE_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_string_template_source.
      WHEN `ZCL_LNT_SUPER_CLASS_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_super_class_name.
      WHEN `ZCL_LNT_ST_SWITCH_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_switch_body.
      WHEN `ZCL_LNT_TABLE_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_table_body.
      WHEN `ZCL_LNT_ST_TABLE_EXPRESSION`.
        CREATE OBJECT result TYPE zcl_lnt_st_table_expression.
      WHEN `ZCL_LNT_ST_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_st_target.
      WHEN `ZCL_LNT_TARGET_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_target_field.
      WHEN `ZCL_LNT_TARGET_FIELD_SYMBOL`.
        CREATE OBJECT result TYPE zcl_lnt_target_field_symbol.
      WHEN `ZCL_LNT_TEST_SEAM_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_test_seam_name.
      WHEN `ZCL_LNT_TEXT_ELEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_text_element.
      WHEN `ZCL_LNT_TEXT_ELEMENT_KEY`.
        CREATE OBJECT result TYPE zcl_lnt_text_element_key.
      WHEN `ZCL_LNT_TEXT_ELEMENT_STRING`.
        CREATE OBJECT result TYPE zcl_lnt_text_element_string.
      WHEN `ZCL_LNT_TRANSPORTING_FIELDS`.
        CREATE OBJECT result TYPE zcl_lnt_transporting_fields.
      WHEN `ZCL_LNT_ST_EXPRES_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_st_expres_type.
      WHEN `ZCL_LNT_TYPE_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_type_name.
      WHEN `ZCL_LNT_TYPE_NAME_OR_INFER`.
        CREATE OBJECT result TYPE zcl_lnt_type_name_or_infer.
      WHEN `ZCL_LNT_TYPE_PARAM`.
        CREATE OBJECT result TYPE zcl_lnt_type_param.
      WHEN `ZCL_LNT_TYPE_SIMPLE_REF`.
        CREATE OBJECT result TYPE zcl_lnt_type_simple_ref.
      WHEN `ZCL_LNT_TYPE_STRUCTURE`.
        CREATE OBJECT result TYPE zcl_lnt_type_structure.
      WHEN `ZCL_LNT_ST_TYPE_TABLE`.
        CREATE OBJECT result TYPE zcl_lnt_st_type_table.
      WHEN `ZCL_LNT_ST_TYPE_TABLE_KEY`.
        CREATE OBJECT result TYPE zcl_lnt_st_type_table_key.
      WHEN `ZCL_LNT_VALUE`.
        CREATE OBJECT result TYPE zcl_lnt_value.
      WHEN `ZCL_LNT_VALUE_BASE`.
        CREATE OBJECT result TYPE zcl_lnt_value_base.
      WHEN `ZCL_LNT_ST_VALUE_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_st_value_body.
      WHEN `ZCL_LNT_VALUE_BODY_LINE`.
        CREATE OBJECT result TYPE zcl_lnt_value_body_line.
      WHEN `ZCL_LNT_VALUE_BODY_LINES`.
        CREATE OBJECT result TYPE zcl_lnt_value_body_lines.
      WHEN `ZCL_LNT_WITH_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_with_name.
      WHEN `ZCL_LNT_WRITE_OFFSET_LENGTH`.
        CREATE OBJECT result TYPE zcl_lnt_write_offset_length.
      WHEN `ZCL_LNT_STATEMENT_MAP`.
        CREATE OBJECT result TYPE zcl_lnt_statement_map.
      WHEN `ZCL_LNT_UNKNOWN`.
        CREATE OBJECT result TYPE zcl_lnt_unknown.
      WHEN `ZCL_LNT_ST_COMMENT`.
        CREATE OBJECT result TYPE zcl_lnt_st_comment.
      WHEN `ZCL_LNT_EMPTY`.
        CREATE OBJECT result TYPE zcl_lnt_empty.
      WHEN `ZCL_LNT_MACRO_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_macro_call.
      WHEN `ZCL_LNT_MACRO_CONTENT`.
        CREATE OBJECT result TYPE zcl_lnt_macro_content.
      WHEN `ZCL_LNT_MACRO_RECURSION`.
        CREATE OBJECT result TYPE zcl_lnt_macro_recursion.
      WHEN `ZCL_LNT_NATIVE_SQL`.
        CREATE OBJECT result TYPE zcl_lnt_native_sql.
      WHEN `ZCL_LNT_ST_ADD`.
        CREATE OBJECT result TYPE zcl_lnt_st_add.
      WHEN `ZCL_LNT_ST_ADD_CORRESPONDING`.
        CREATE OBJECT result TYPE zcl_lnt_st_add_corresponding.
      WHEN `ZCL_LNT_ALIASES`.
        CREATE OBJECT result TYPE zcl_lnt_aliases.
      WHEN `ZCL_LNT_ST_APPEND`.
        CREATE OBJECT result TYPE zcl_lnt_st_append.
      WHEN `ZCL_LNT_ST_ASSERT`.
        CREATE OBJECT result TYPE zcl_lnt_st_assert.
      WHEN `ZCL_LNT_ST_ASSIGN`.
        CREATE OBJECT result TYPE zcl_lnt_st_assign.
      WHEN `ZCL_LNT_ASSIGN_LOCAL_COPY`.
        CREATE OBJECT result TYPE zcl_lnt_assign_local_copy.
      WHEN `ZCL_LNT_ST_AT`.
        CREATE OBJECT result TYPE zcl_lnt_st_at.
      WHEN `ZCL_LNT_ST_AT_FIRST`.
        CREATE OBJECT result TYPE zcl_lnt_st_at_first.
      WHEN `ZCL_LNT_ST_AT_LAST`.
        CREATE OBJECT result TYPE zcl_lnt_st_at_last.
      WHEN `ZCL_LNT_AT_LINE_SELECTION`.
        CREATE OBJECT result TYPE zcl_lnt_at_line_selection.
      WHEN `ZCL_LNT_AT_PF`.
        CREATE OBJECT result TYPE zcl_lnt_at_pf.
      WHEN `ZCL_LNT_ST_AT_SELECTION_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_st_at_selection_screen.
      WHEN `ZCL_LNT_AT_USER_COMMAND`.
        CREATE OBJECT result TYPE zcl_lnt_at_user_command.
      WHEN `ZCL_LNT_ST_AUTHORITY_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_st_authority_check.
      WHEN `ZCL_LNT_BACK`.
        CREATE OBJECT result TYPE zcl_lnt_back.
      WHEN `ZCL_LNT_BREAK`.
        CREATE OBJECT result TYPE zcl_lnt_break.
      WHEN `ZCL_LNT_BREAK_ID`.
        CREATE OBJECT result TYPE zcl_lnt_break_id.
      WHEN `ZCL_LNT_ST_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_st_call.
      WHEN `ZCL_LNT_ST_CALL_BADI`.
        CREATE OBJECT result TYPE zcl_lnt_st_call_badi.
      WHEN `ZCL_LNT_CALL_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_call_database.
      WHEN `ZCL_LNT_CALL_DIALOG`.
        CREATE OBJECT result TYPE zcl_lnt_call_dialog.
      WHEN `ZCL_LNT_ST_CALL_FUNCTION`.
        CREATE OBJECT result TYPE zcl_lnt_st_call_function.
      WHEN `ZCL_LNT_ST_CALL_KERNEL`.
        CREATE OBJECT result TYPE zcl_lnt_st_call_kernel.
      WHEN `ZCL_LNT_CALL_OLE`.
        CREATE OBJECT result TYPE zcl_lnt_call_ole.
      WHEN `ZCL_LNT_CALL_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_call_screen.
      WHEN `ZCL_LNT_CALL_SELECTION_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_call_selection_screen.
      WHEN `ZCL_LNT_CALL_SUBSCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_call_subscreen.
      WHEN `ZCL_LNT_ST_CALL_TRANSACTION`.
        CREATE OBJECT result TYPE zcl_lnt_st_call_transaction.
      WHEN `ZCL_LNT_ST_CALL_TRANSFORMATION`.
        CREATE OBJECT result TYPE zcl_lnt_st_call_transformation.
      WHEN `ZCL_LNT_ST_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_st_case.
      WHEN `ZCL_LNT_ST_CASE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_st_case_type.
      WHEN `ZCL_LNT_ST_CATCH`.
        CREATE OBJECT result TYPE zcl_lnt_st_catch.
      WHEN `ZCL_LNT_ST_CTCH_SYSTM_EXCPTNS`.
        CREATE OBJECT result TYPE zcl_lnt_st_ctch_systm_excptns.
      WHEN `ZCL_LNT_ST_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_st_chain.
      WHEN `ZCL_LNT_ST_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_st_check.
      WHEN `ZCL_LNT_CHECK_SELECT_OPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_check_select_options.
      WHEN `ZCL_LNT_ST_CLASS_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_st_class_data.
      WHEN `ZCL_LNT_CLASS_DATA_BEGIN`.
        CREATE OBJECT result TYPE zcl_lnt_class_data_begin.
      WHEN `ZCL_LNT_CLASS_DATA_END`.
        CREATE OBJECT result TYPE zcl_lnt_class_data_end.
      WHEN `ZCL_LNT_ST_CLASS_DEFERRED`.
        CREATE OBJECT result TYPE zcl_lnt_st_class_deferred.
      WHEN `ZCL_LNT_ST_CLASS_DEFINITION`.
        CREATE OBJECT result TYPE zcl_lnt_st_class_definition.
      WHEN `ZCL_LNT_CLASS_DEFINITION_LOAD`.
        CREATE OBJECT result TYPE zcl_lnt_class_definition_load.
      WHEN `ZCL_LNT_ST_CLSS_IMPLMNTTN`.
        CREATE OBJECT result TYPE zcl_lnt_st_clss_implmnttn.
      WHEN `ZCL_LNT_ST_CLASS_LOCAL_FRIENDS`.
        CREATE OBJECT result TYPE zcl_lnt_st_class_local_friends.
      WHEN `ZCL_LNT_ST_CLEANUP`.
        CREATE OBJECT result TYPE zcl_lnt_st_cleanup.
      WHEN `ZCL_LNT_ST_CLEAR`.
        CREATE OBJECT result TYPE zcl_lnt_st_clear.
      WHEN `ZCL_LNT_ST_CLOSE_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_st_close_cursor.
      WHEN `ZCL_LNT_ST_CLOSE_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_st_close_dataset.
      WHEN `ZCL_LNT_ST_COLLECT`.
        CREATE OBJECT result TYPE zcl_lnt_st_collect.
      WHEN `ZCL_LNT_COMMIT`.
        CREATE OBJECT result TYPE zcl_lnt_commit.
      WHEN `ZCL_LNT_ST_COMMIT_ENTITIES`.
        CREATE OBJECT result TYPE zcl_lnt_st_commit_entities.
      WHEN `ZCL_LNT_COMMUNICATION`.
        CREATE OBJECT result TYPE zcl_lnt_communication.
      WHEN `ZCL_LNT_COMPUTE`.
        CREATE OBJECT result TYPE zcl_lnt_compute.
      WHEN `ZCL_LNT_ST_CONCATENATE`.
        CREATE OBJECT result TYPE zcl_lnt_st_concatenate.
      WHEN `ZCL_LNT_ST_CONDENSE`.
        CREATE OBJECT result TYPE zcl_lnt_st_condense.
      WHEN `ZCL_LNT_ST_STATEM_CONSTANT`.
        CREATE OBJECT result TYPE zcl_lnt_st_statem_constant.
      WHEN `ZCL_LNT_CONSTANT_BEGIN`.
        CREATE OBJECT result TYPE zcl_lnt_constant_begin.
      WHEN `ZCL_LNT_CONSTANT_END`.
        CREATE OBJECT result TYPE zcl_lnt_constant_end.
      WHEN `ZCL_LNT_CONTEXTS`.
        CREATE OBJECT result TYPE zcl_lnt_contexts.
      WHEN `ZCL_LNT_CONTINUE`.
        CREATE OBJECT result TYPE zcl_lnt_continue.
      WHEN `ZCL_LNT_ST_CONTROLS`.
        CREATE OBJECT result TYPE zcl_lnt_st_controls.
      WHEN `ZCL_LNT_ST_CONVERT`.
        CREATE OBJECT result TYPE zcl_lnt_st_convert.
      WHEN `ZCL_LNT_CONVERT_TEXT`.
        CREATE OBJECT result TYPE zcl_lnt_convert_text.
      WHEN `ZCL_LNT_ST_CREATE_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_st_create_data.
      WHEN `ZCL_LNT_ST_CREATE_OBJECT`.
        CREATE OBJECT result TYPE zcl_lnt_st_create_object.
      WHEN `ZCL_LNT_CREATE_OLE`.
        CREATE OBJECT result TYPE zcl_lnt_create_ole.
      WHEN `ZCL_LNT_ST_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_st_data.
      WHEN `ZCL_LNT_DATA_BEGIN`.
        CREATE OBJECT result TYPE zcl_lnt_data_begin.
      WHEN `ZCL_LNT_DATA_END`.
        CREATE OBJECT result TYPE zcl_lnt_data_end.
      WHEN `ZCL_LNT_ST_DEFINE`.
        CREATE OBJECT result TYPE zcl_lnt_st_define.
      WHEN `ZCL_LNT_ST_DELETE_CLUSTER`.
        CREATE OBJECT result TYPE zcl_lnt_st_delete_cluster.
      WHEN `ZCL_LNT_ST_DELETE_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_st_delete_database.
      WHEN `ZCL_LNT_DELETE_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_delete_dataset.
      WHEN `ZCL_LNT_DELETE_DYNPRO`.
        CREATE OBJECT result TYPE zcl_lnt_delete_dynpro.
      WHEN `ZCL_LNT_ST_DELETE_INTERNAL`.
        CREATE OBJECT result TYPE zcl_lnt_st_delete_internal.
      WHEN `ZCL_LNT_ST_DELETE_MEMORY`.
        CREATE OBJECT result TYPE zcl_lnt_st_delete_memory.
      WHEN `ZCL_LNT_ST_DELETE_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_st_delete_report.
      WHEN `ZCL_LNT_DELETE_TEXTPOOL`.
        CREATE OBJECT result TYPE zcl_lnt_delete_textpool.
      WHEN `ZCL_LNT_DEMAND`.
        CREATE OBJECT result TYPE zcl_lnt_demand.
      WHEN `ZCL_LNT_ST_DESCRIBE`.
        CREATE OBJECT result TYPE zcl_lnt_st_describe.
      WHEN `ZCL_LNT_DETAIL`.
        CREATE OBJECT result TYPE zcl_lnt_detail.
      WHEN `ZCL_LNT_ST_DIVIDE`.
        CREATE OBJECT result TYPE zcl_lnt_st_divide.
      WHEN `ZCL_LNT_ST_DO`.
        CREATE OBJECT result TYPE zcl_lnt_st_do.
      WHEN `ZCL_LNT_DYNPRO_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_dynpro_loop.
      WHEN `ZCL_LNT_ST_EDITOR_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_st_editor_call.
      WHEN `ZCL_LNT_ST_ELSE`.
        CREATE OBJECT result TYPE zcl_lnt_st_else.
      WHEN `ZCL_LNT_ST_ELSE_IF`.
        CREATE OBJECT result TYPE zcl_lnt_st_else_if.
      WHEN `ZCL_LNT_END_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_end_chain.
      WHEN `ZCL_LNT_END_ENHANCEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_end_enhancement.
      WHEN `ZCL_LNT_END_ENHNCMNT_SCTN`.
        CREATE OBJECT result TYPE zcl_lnt_end_enhncmnt_sctn.
      WHEN `ZCL_LNT_END_OF_PAGE`.
        CREATE OBJECT result TYPE zcl_lnt_end_of_page.
      WHEN `ZCL_LNT_END_OF_SELECTION`.
        CREATE OBJECT result TYPE zcl_lnt_end_of_selection.
      WHEN `ZCL_LNT_END_TEST_INJECTION`.
        CREATE OBJECT result TYPE zcl_lnt_end_test_injection.
      WHEN `ZCL_LNT_END_TEST_SEAM`.
        CREATE OBJECT result TYPE zcl_lnt_end_test_seam.
      WHEN `ZCL_LNT_END_AT`.
        CREATE OBJECT result TYPE zcl_lnt_end_at.
      WHEN `ZCL_LNT_END_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_end_case.
      WHEN `ZCL_LNT_END_CATCH`.
        CREATE OBJECT result TYPE zcl_lnt_end_catch.
      WHEN `ZCL_LNT_END_CLASS`.
        CREATE OBJECT result TYPE zcl_lnt_end_class.
      WHEN `ZCL_LNT_END_OF_DEFINITION`.
        CREATE OBJECT result TYPE zcl_lnt_end_of_definition.
      WHEN `ZCL_LNT_END_DO`.
        CREATE OBJECT result TYPE zcl_lnt_end_do.
      WHEN `ZCL_LNT_END_EXEC`.
        CREATE OBJECT result TYPE zcl_lnt_end_exec.
      WHEN `ZCL_LNT_END_FORM`.
        CREATE OBJECT result TYPE zcl_lnt_end_form.
      WHEN `ZCL_LNT_END_FUNCTION`.
        CREATE OBJECT result TYPE zcl_lnt_end_function.
      WHEN `ZCL_LNT_END_IF`.
        CREATE OBJECT result TYPE zcl_lnt_end_if.
      WHEN `ZCL_LNT_END_INTERFACE`.
        CREATE OBJECT result TYPE zcl_lnt_end_interface.
      WHEN `ZCL_LNT_END_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_end_loop.
      WHEN `ZCL_LNT_END_METHOD`.
        CREATE OBJECT result TYPE zcl_lnt_end_method.
      WHEN `ZCL_LNT_END_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_end_module.
      WHEN `ZCL_LNT_END_ON`.
        CREATE OBJECT result TYPE zcl_lnt_end_on.
      WHEN `ZCL_LNT_END_PROVIDE`.
        CREATE OBJECT result TYPE zcl_lnt_end_provide.
      WHEN `ZCL_LNT_END_SELECT`.
        CREATE OBJECT result TYPE zcl_lnt_end_select.
      WHEN `ZCL_LNT_END_TRY`.
        CREATE OBJECT result TYPE zcl_lnt_end_try.
      WHEN `ZCL_LNT_END_WHILE`.
        CREATE OBJECT result TYPE zcl_lnt_end_while.
      WHEN `ZCL_LNT_END_WITH`.
        CREATE OBJECT result TYPE zcl_lnt_end_with.
      WHEN `ZCL_LNT_ST_ENHANCEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_st_enhancement.
      WHEN `ZCL_LNT_ENHANCEMENT_POINT`.
        CREATE OBJECT result TYPE zcl_lnt_enhancement_point.
      WHEN `ZCL_LNT_ST_ENHANCEMENT_SECTION`.
        CREATE OBJECT result TYPE zcl_lnt_st_enhancement_section.
      WHEN `ZCL_LNT_EVENTS`.
        CREATE OBJECT result TYPE zcl_lnt_events.
      WHEN `ZCL_LNT_ST_EXEC_SQL`.
        CREATE OBJECT result TYPE zcl_lnt_st_exec_sql.
      WHEN `ZCL_LNT_EXIT`.
        CREATE OBJECT result TYPE zcl_lnt_exit.
      WHEN `ZCL_LNT_ST_EXPORT`.
        CREATE OBJECT result TYPE zcl_lnt_st_export.
      WHEN `ZCL_LNT_EXPORT_DYNPRO`.
        CREATE OBJECT result TYPE zcl_lnt_export_dynpro.
      WHEN `ZCL_LNT_EXTRACT`.
        CREATE OBJECT result TYPE zcl_lnt_extract.
      WHEN `ZCL_LNT_ST_FETCH_NEXT_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_st_fetch_next_cursor.
      WHEN `ZCL_LNT_ST_STATEM_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_st_statem_field.
      WHEN `ZCL_LNT_ST_FIELD_GROUP`.
        CREATE OBJECT result TYPE zcl_lnt_st_field_group.
      WHEN `ZCL_LNT_FIELDS`.
        CREATE OBJECT result TYPE zcl_lnt_fields.
      WHEN `ZCL_LNT_ST_STATEM_FIELD_SYMBOL`.
        CREATE OBJECT result TYPE zcl_lnt_st_statem_field_symbol.
      WHEN `ZCL_LNT_ST_FIND`.
        CREATE OBJECT result TYPE zcl_lnt_st_find.
      WHEN `ZCL_LNT_ST_FORM`.
        CREATE OBJECT result TYPE zcl_lnt_st_form.
      WHEN `ZCL_LNT_ST_FORM_DEFINITION`.
        CREATE OBJECT result TYPE zcl_lnt_st_form_definition.
      WHEN `ZCL_LNT_ST_FORMAT`.
        CREATE OBJECT result TYPE zcl_lnt_st_format.
      WHEN `ZCL_LNT_ST_FREE`.
        CREATE OBJECT result TYPE zcl_lnt_st_free.
      WHEN `ZCL_LNT_FREE_MEMORY`.
        CREATE OBJECT result TYPE zcl_lnt_free_memory.
      WHEN `ZCL_LNT_FREE_OBJECT`.
        CREATE OBJECT result TYPE zcl_lnt_free_object.
      WHEN `ZCL_LNT_ST_FUNCTION_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_st_function_module.
      WHEN `ZCL_LNT_FUNCTION_POOL`.
        CREATE OBJECT result TYPE zcl_lnt_function_pool.
      WHEN `ZCL_LNT_GENERATE_DYNPRO`.
        CREATE OBJECT result TYPE zcl_lnt_generate_dynpro.
      WHEN `ZCL_LNT_GENERATE_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_generate_report.
      WHEN `ZCL_LNT_GENERATE_SUBROUTINE`.
        CREATE OBJECT result TYPE zcl_lnt_generate_subroutine.
      WHEN `ZCL_LNT_GET`.
        CREATE OBJECT result TYPE zcl_lnt_get.
      WHEN `ZCL_LNT_ST_GET_BADI`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_badi.
      WHEN `ZCL_LNT_ST_GET_BIT`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_bit.
      WHEN `ZCL_LNT_ST_GET_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_cursor.
      WHEN `ZCL_LNT_GET_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_get_dataset.
      WHEN `ZCL_LNT_ST_GET_LOCALE`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_locale.
      WHEN `ZCL_LNT_ST_GET_PARAMETER`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_parameter.
      WHEN `ZCL_LNT_ST_GET_PERMISSIONS`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_permissions.
      WHEN `ZCL_LNT_ST_GET_PF_STATUS`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_pf_status.
      WHEN `ZCL_LNT_GET_PROPERTY`.
        CREATE OBJECT result TYPE zcl_lnt_get_property.
      WHEN `ZCL_LNT_ST_GET_REFERENCE`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_reference.
      WHEN `ZCL_LNT_ST_GET_RUN_TIME`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_run_time.
      WHEN `ZCL_LNT_ST_GET_TIME`.
        CREATE OBJECT result TYPE zcl_lnt_st_get_time.
      WHEN `ZCL_LNT_HIDE`.
        CREATE OBJECT result TYPE zcl_lnt_hide.
      WHEN `ZCL_LNT_ST_IF`.
        CREATE OBJECT result TYPE zcl_lnt_st_if.
      WHEN `ZCL_LNT_ST_IMPORT`.
        CREATE OBJECT result TYPE zcl_lnt_st_import.
      WHEN `ZCL_LNT_ST_IMPORT_DYNPRO`.
        CREATE OBJECT result TYPE zcl_lnt_st_import_dynpro.
      WHEN `ZCL_LNT_IMPORT_NAMETAB`.
        CREATE OBJECT result TYPE zcl_lnt_import_nametab.
      WHEN `ZCL_LNT_INCLUDE`.
        CREATE OBJECT result TYPE zcl_lnt_include.
      WHEN `ZCL_LNT_ST_INCLUDE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_st_include_type.
      WHEN `ZCL_LNT_INFOTYPES`.
        CREATE OBJECT result TYPE zcl_lnt_infotypes.
      WHEN `ZCL_LNT_INITIALIZATION`.
        CREATE OBJECT result TYPE zcl_lnt_initialization.
      WHEN `ZCL_LNT_INPUT`.
        CREATE OBJECT result TYPE zcl_lnt_input.
      WHEN `ZCL_LNT_ST_INSERT_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_st_insert_database.
      WHEN `ZCL_LNT_ST_INSERT_FIELD_GROUP`.
        CREATE OBJECT result TYPE zcl_lnt_st_insert_field_group.
      WHEN `ZCL_LNT_ST_INSERT_INTERNAL`.
        CREATE OBJECT result TYPE zcl_lnt_st_insert_internal.
      WHEN `ZCL_LNT_ST_INSERT_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_st_insert_report.
      WHEN `ZCL_LNT_ST_INSERT_TEXTPOOL`.
        CREATE OBJECT result TYPE zcl_lnt_st_insert_textpool.
      WHEN `ZCL_LNT_ST_INTERFACE`.
        CREATE OBJECT result TYPE zcl_lnt_st_interface.
      WHEN `ZCL_LNT_INTERFACE_DEF`.
        CREATE OBJECT result TYPE zcl_lnt_interface_def.
      WHEN `ZCL_LNT_ST_INTERFACE_DEFERRED`.
        CREATE OBJECT result TYPE zcl_lnt_st_interface_deferred.
      WHEN `ZCL_LNT_INTERFACE_LOAD`.
        CREATE OBJECT result TYPE zcl_lnt_interface_load.
      WHEN `ZCL_LNT_LEAVE`.
        CREATE OBJECT result TYPE zcl_lnt_leave.
      WHEN `ZCL_LNT_LOAD_OF_PROGRAM`.
        CREATE OBJECT result TYPE zcl_lnt_load_of_program.
      WHEN `ZCL_LNT_LOAD_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_load_report.
      WHEN `ZCL_LNT_LOCAL`.
        CREATE OBJECT result TYPE zcl_lnt_local.
      WHEN `ZCL_LNT_ST_LOG_POINT`.
        CREATE OBJECT result TYPE zcl_lnt_st_log_point.
      WHEN `ZCL_LNT_ST_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_st_loop.
      WHEN `ZCL_LNT_ST_LOOP_AT_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_st_loop_at_screen.
      WHEN `ZCL_LNT_ST_LOOP_EXTRACT`.
        CREATE OBJECT result TYPE zcl_lnt_st_loop_extract.
      WHEN `ZCL_LNT_MERGE_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_merge_database.
      WHEN `ZCL_LNT_ST_MESSAGE`.
        CREATE OBJECT result TYPE zcl_lnt_st_message.
      WHEN `ZCL_LNT_METHOD_DEF`.
        CREATE OBJECT result TYPE zcl_lnt_method_def.
      WHEN `ZCL_LNT_ST_MTHD_IMPLMNTTN`.
        CREATE OBJECT result TYPE zcl_lnt_st_mthd_implmnttn.
      WHEN `ZCL_LNT_ST_MODIFY_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_st_modify_database.
      WHEN `ZCL_LNT_ST_MODIFY_ENTITIES`.
        CREATE OBJECT result TYPE zcl_lnt_st_modify_entities.
      WHEN `ZCL_LNT_ST_MODIFY_INTERNAL`.
        CREATE OBJECT result TYPE zcl_lnt_st_modify_internal.
      WHEN `ZCL_LNT_MODIFY_LINE`.
        CREATE OBJECT result TYPE zcl_lnt_modify_line.
      WHEN `ZCL_LNT_ST_MODIFY_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_st_modify_screen.
      WHEN `ZCL_LNT_ST_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_st_module.
      WHEN `ZCL_LNT_ST_MOVE`.
        CREATE OBJECT result TYPE zcl_lnt_st_move.
      WHEN `ZCL_LNT_ST_MOVE_CORRESPONDING`.
        CREATE OBJECT result TYPE zcl_lnt_st_move_corresponding.
      WHEN `ZCL_LNT_ST_MULTIPLY`.
        CREATE OBJECT result TYPE zcl_lnt_st_multiply.
      WHEN `ZCL_LNT_NEW_LINE`.
        CREATE OBJECT result TYPE zcl_lnt_new_line.
      WHEN `ZCL_LNT_NEW_PAGE`.
        CREATE OBJECT result TYPE zcl_lnt_new_page.
      WHEN `ZCL_LNT_NODES`.
        CREATE OBJECT result TYPE zcl_lnt_nodes.
      WHEN `ZCL_LNT_ST_ON_CHANGE`.
        CREATE OBJECT result TYPE zcl_lnt_st_on_change.
      WHEN `ZCL_LNT_ST_OPEN_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_st_open_cursor.
      WHEN `ZCL_LNT_ST_OPEN_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_st_open_dataset.
      WHEN `ZCL_LNT_OVERLAY`.
        CREATE OBJECT result TYPE zcl_lnt_overlay.
      WHEN `ZCL_LNT_ST_PACK`.
        CREATE OBJECT result TYPE zcl_lnt_st_pack.
      WHEN `ZCL_LNT_ST_PARAMETER`.
        CREATE OBJECT result TYPE zcl_lnt_st_parameter.
      WHEN `ZCL_LNT_ST_PERFORM`.
        CREATE OBJECT result TYPE zcl_lnt_st_perform.
      WHEN `ZCL_LNT_ST_POSITION`.
        CREATE OBJECT result TYPE zcl_lnt_st_position.
      WHEN `ZCL_LNT_PRINT_CONTROL`.
        CREATE OBJECT result TYPE zcl_lnt_print_control.
      WHEN `ZCL_LNT_PRIVATE`.
        CREATE OBJECT result TYPE zcl_lnt_private.
      WHEN `ZCL_LNT_PROCESS_AFTER_INPUT`.
        CREATE OBJECT result TYPE zcl_lnt_process_after_input.
      WHEN `ZCL_LNT_PROCESS_BEFORE_OUTPUT`.
        CREATE OBJECT result TYPE zcl_lnt_process_before_output.
      WHEN `ZCL_LNT_PRCSS_ON_HLP_RQST`.
        CREATE OBJECT result TYPE zcl_lnt_prcss_on_hlp_rqst.
      WHEN `ZCL_LNT_PRCSS_ON_VL_RQST`.
        CREATE OBJECT result TYPE zcl_lnt_prcss_on_vl_rqst.
      WHEN `ZCL_LNT_ST_PROGRAM`.
        CREATE OBJECT result TYPE zcl_lnt_st_program.
      WHEN `ZCL_LNT_PROTECTED`.
        CREATE OBJECT result TYPE zcl_lnt_protected.
      WHEN `ZCL_LNT_ST_PROVIDE`.
        CREATE OBJECT result TYPE zcl_lnt_st_provide.
      WHEN `ZCL_LNT_PUBLIC`.
        CREATE OBJECT result TYPE zcl_lnt_public.
      WHEN `ZCL_LNT_PUT`.
        CREATE OBJECT result TYPE zcl_lnt_put.
      WHEN `ZCL_LNT_ST_RAISE`.
        CREATE OBJECT result TYPE zcl_lnt_st_raise.
      WHEN `ZCL_LNT_RAISE_ENTITY_EVENT`.
        CREATE OBJECT result TYPE zcl_lnt_raise_entity_event.
      WHEN `ZCL_LNT_ST_RAISE_EVENT`.
        CREATE OBJECT result TYPE zcl_lnt_st_raise_event.
      WHEN `ZCL_LNT_ST_RANGES`.
        CREATE OBJECT result TYPE zcl_lnt_st_ranges.
      WHEN `ZCL_LNT_ST_READ_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_st_read_dataset.
      WHEN `ZCL_LNT_ST_READ_ENTITIES`.
        CREATE OBJECT result TYPE zcl_lnt_st_read_entities.
      WHEN `ZCL_LNT_READ_LINE`.
        CREATE OBJECT result TYPE zcl_lnt_read_line.
      WHEN `ZCL_LNT_ST_READ_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_st_read_report.
      WHEN `ZCL_LNT_ST_READ_TABLE`.
        CREATE OBJECT result TYPE zcl_lnt_st_read_table.
      WHEN `ZCL_LNT_ST_READ_TEXTPOOL`.
        CREATE OBJECT result TYPE zcl_lnt_st_read_textpool.
      WHEN `ZCL_LNT_ST_RECEIVE`.
        CREATE OBJECT result TYPE zcl_lnt_st_receive.
      WHEN `ZCL_LNT_ST_REFRESH`.
        CREATE OBJECT result TYPE zcl_lnt_st_refresh.
      WHEN `ZCL_LNT_REFRESH_CONTROL`.
        CREATE OBJECT result TYPE zcl_lnt_refresh_control.
      WHEN `ZCL_LNT_REJECT`.
        CREATE OBJECT result TYPE zcl_lnt_reject.
      WHEN `ZCL_LNT_ST_REPLACE`.
        CREATE OBJECT result TYPE zcl_lnt_st_replace.
      WHEN `ZCL_LNT_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_report.
      WHEN `ZCL_LNT_RESERVE`.
        CREATE OBJECT result TYPE zcl_lnt_reserve.
      WHEN `ZCL_LNT_RESUME`.
        CREATE OBJECT result TYPE zcl_lnt_resume.
      WHEN `ZCL_LNT_RETRY`.
        CREATE OBJECT result TYPE zcl_lnt_retry.
      WHEN `ZCL_LNT_ST_RETURN`.
        CREATE OBJECT result TYPE zcl_lnt_st_return.
      WHEN `ZCL_LNT_ROLLBACK`.
        CREATE OBJECT result TYPE zcl_lnt_rollback.
      WHEN `ZCL_LNT_ROLLBACK_ENTITIES`.
        CREATE OBJECT result TYPE zcl_lnt_rollback_entities.
      WHEN `ZCL_LNT_ST_SCAN`.
        CREATE OBJECT result TYPE zcl_lnt_st_scan.
      WHEN `ZCL_LNT_SCROLL_LIST`.
        CREATE OBJECT result TYPE zcl_lnt_scroll_list.
      WHEN `ZCL_LNT_ST_SEARCH`.
        CREATE OBJECT result TYPE zcl_lnt_st_search.
      WHEN `ZCL_LNT_ST_STATEM_SELECT`.
        CREATE OBJECT result TYPE zcl_lnt_st_statem_select.
      WHEN `ZCL_LNT_ST_SELECT_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_st_select_loop.
      WHEN `ZCL_LNT_ST_SELECTION_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_st_selection_screen.
      WHEN `ZCL_LNT_ST_SELECT_OPTION`.
        CREATE OBJECT result TYPE zcl_lnt_st_select_option.
      WHEN `ZCL_LNT_ST_SET_BIT`.
        CREATE OBJECT result TYPE zcl_lnt_st_set_bit.
      WHEN `ZCL_LNT_SET_BLANK`.
        CREATE OBJECT result TYPE zcl_lnt_set_blank.
      WHEN `ZCL_LNT_SET_COUNTRY`.
        CREATE OBJECT result TYPE zcl_lnt_set_country.
      WHEN `ZCL_LNT_SET_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_set_cursor.
      WHEN `ZCL_LNT_SET_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_set_dataset.
      WHEN `ZCL_LNT_SET_EXTENDED_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_set_extended_check.
      WHEN `ZCL_LNT_ST_SET_HANDLER`.
        CREATE OBJECT result TYPE zcl_lnt_st_set_handler.
      WHEN `ZCL_LNT_SET_LANGUAGE`.
        CREATE OBJECT result TYPE zcl_lnt_set_language.
      WHEN `ZCL_LNT_SET_LEFT`.
        CREATE OBJECT result TYPE zcl_lnt_set_left.
      WHEN `ZCL_LNT_ST_SET_LOCALE`.
        CREATE OBJECT result TYPE zcl_lnt_st_set_locale.
      WHEN `ZCL_LNT_SET_LOCKS`.
        CREATE OBJECT result TYPE zcl_lnt_set_locks.
      WHEN `ZCL_LNT_SET_MARGIN`.
        CREATE OBJECT result TYPE zcl_lnt_set_margin.
      WHEN `ZCL_LNT_ST_SET_PARAMETER`.
        CREATE OBJECT result TYPE zcl_lnt_st_set_parameter.
      WHEN `ZCL_LNT_ST_SET_PF_STATUS`.
        CREATE OBJECT result TYPE zcl_lnt_st_set_pf_status.
      WHEN `ZCL_LNT_SET_PROPERTY`.
        CREATE OBJECT result TYPE zcl_lnt_set_property.
      WHEN `ZCL_LNT_SET_RUN_TIME`.
        CREATE OBJECT result TYPE zcl_lnt_set_run_time.
      WHEN `ZCL_LNT_SET_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_set_screen.
      WHEN `ZCL_LNT_ST_SET_TITLEBAR`.
        CREATE OBJECT result TYPE zcl_lnt_st_set_titlebar.
      WHEN `ZCL_LNT_SET_UPDATE_TASK`.
        CREATE OBJECT result TYPE zcl_lnt_set_update_task.
      WHEN `ZCL_LNT_SET_USER_COMMAND`.
        CREATE OBJECT result TYPE zcl_lnt_set_user_command.
      WHEN `ZCL_LNT_ST_SHIFT`.
        CREATE OBJECT result TYPE zcl_lnt_st_shift.
      WHEN `ZCL_LNT_ST_SKIP`.
        CREATE OBJECT result TYPE zcl_lnt_st_skip.
      WHEN `ZCL_LNT_ST_SORT`.
        CREATE OBJECT result TYPE zcl_lnt_st_sort.
      WHEN `ZCL_LNT_SORT_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_sort_dataset.
      WHEN `ZCL_LNT_ST_SPLIT`.
        CREATE OBJECT result TYPE zcl_lnt_st_split.
      WHEN `ZCL_LNT_START_OF_SELECTION`.
        CREATE OBJECT result TYPE zcl_lnt_start_of_selection.
      WHEN `ZCL_LNT_ST_STATIC`.
        CREATE OBJECT result TYPE zcl_lnt_st_static.
      WHEN `ZCL_LNT_STATIC_BEGIN`.
        CREATE OBJECT result TYPE zcl_lnt_static_begin.
      WHEN `ZCL_LNT_STATIC_END`.
        CREATE OBJECT result TYPE zcl_lnt_static_end.
      WHEN `ZCL_LNT_STOP`.
        CREATE OBJECT result TYPE zcl_lnt_stop.
      WHEN `ZCL_LNT_ST_SUBMIT`.
        CREATE OBJECT result TYPE zcl_lnt_st_submit.
      WHEN `ZCL_LNT_ST_SUBTRACT`.
        CREATE OBJECT result TYPE zcl_lnt_st_subtract.
      WHEN `ZCL_LNT_ST_SBTRCT_CRRSPNDNG`.
        CREATE OBJECT result TYPE zcl_lnt_st_sbtrct_crrspndng.
      WHEN `ZCL_LNT_SUM`.
        CREATE OBJECT result TYPE zcl_lnt_sum.
      WHEN `ZCL_LNT_SUMMARY`.
        CREATE OBJECT result TYPE zcl_lnt_summary.
      WHEN `ZCL_LNT_SUPPLY`.
        CREATE OBJECT result TYPE zcl_lnt_supply.
      WHEN `ZCL_LNT_SUPPRESS_DIALOG`.
        CREATE OBJECT result TYPE zcl_lnt_suppress_dialog.
      WHEN `ZCL_LNT_ST_SYNTAX_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_st_syntax_check.
      WHEN `ZCL_LNT_ST_SYSTEM_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_st_system_call.
      WHEN `ZCL_LNT_ST_TABLES`.
        CREATE OBJECT result TYPE zcl_lnt_st_tables.
      WHEN `ZCL_LNT_ST_TEST_INJECTION`.
        CREATE OBJECT result TYPE zcl_lnt_st_test_injection.
      WHEN `ZCL_LNT_ST_TEST_SEAM`.
        CREATE OBJECT result TYPE zcl_lnt_st_test_seam.
      WHEN `ZCL_LNT_TOP_OF_PAGE`.
        CREATE OBJECT result TYPE zcl_lnt_top_of_page.
      WHEN `ZCL_LNT_ST_TRANSFER`.
        CREATE OBJECT result TYPE zcl_lnt_st_transfer.
      WHEN `ZCL_LNT_ST_TRANSLATE`.
        CREATE OBJECT result TYPE zcl_lnt_st_translate.
      WHEN `ZCL_LNT_ST_TRUNCATE_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_st_truncate_dataset.
      WHEN `ZCL_LNT_ST_TRY`.
        CREATE OBJECT result TYPE zcl_lnt_st_try.
      WHEN `ZCL_LNT_ST_STATEM_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_st_statem_type.
      WHEN `ZCL_LNT_TYPE_BEGIN`.
        CREATE OBJECT result TYPE zcl_lnt_type_begin.
      WHEN `ZCL_LNT_TYPE_END`.
        CREATE OBJECT result TYPE zcl_lnt_type_end.
      WHEN `ZCL_LNT_ST_TYPE_ENUM`.
        CREATE OBJECT result TYPE zcl_lnt_st_type_enum.
      WHEN `ZCL_LNT_TYPE_ENUM_BEGIN`.
        CREATE OBJECT result TYPE zcl_lnt_type_enum_begin.
      WHEN `ZCL_LNT_TYPE_ENUM_END`.
        CREATE OBJECT result TYPE zcl_lnt_type_enum_end.
      WHEN `ZCL_LNT_ST_TYPE_MESH`.
        CREATE OBJECT result TYPE zcl_lnt_st_type_mesh.
      WHEN `ZCL_LNT_TYPE_MESH_BEGIN`.
        CREATE OBJECT result TYPE zcl_lnt_type_mesh_begin.
      WHEN `ZCL_LNT_TYPE_MESH_END`.
        CREATE OBJECT result TYPE zcl_lnt_type_mesh_end.
      WHEN `ZCL_LNT_ST_TYPE_POOL`.
        CREATE OBJECT result TYPE zcl_lnt_st_type_pool.
      WHEN `ZCL_LNT_TYPE_POOLS`.
        CREATE OBJECT result TYPE zcl_lnt_type_pools.
      WHEN `ZCL_LNT_ULINE`.
        CREATE OBJECT result TYPE zcl_lnt_uline.
      WHEN `ZCL_LNT_ST_UNASSIGN`.
        CREATE OBJECT result TYPE zcl_lnt_st_unassign.
      WHEN `ZCL_LNT_ST_UNPACK`.
        CREATE OBJECT result TYPE zcl_lnt_st_unpack.
      WHEN `ZCL_LNT_ST_UPDATE_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_st_update_database.
      WHEN `ZCL_LNT_VERIFICATION_MESSAGE`.
        CREATE OBJECT result TYPE zcl_lnt_verification_message.
      WHEN `ZCL_LNT_ST_WAIT`.
        CREATE OBJECT result TYPE zcl_lnt_st_wait.
      WHEN `ZCL_LNT_ST_WHEN`.
        CREATE OBJECT result TYPE zcl_lnt_st_when.
      WHEN `ZCL_LNT_WHEN_OTHERS`.
        CREATE OBJECT result TYPE zcl_lnt_when_others.
      WHEN `ZCL_LNT_ST_WHEN_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_st_when_type.
      WHEN `ZCL_LNT_ST_WHILE`.
        CREATE OBJECT result TYPE zcl_lnt_st_while.
      WHEN `ZCL_LNT_WINDOW`.
        CREATE OBJECT result TYPE zcl_lnt_window.
      WHEN `ZCL_LNT_ST_WITH`.
        CREATE OBJECT result TYPE zcl_lnt_st_with.
      WHEN `ZCL_LNT_ST_WITH_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_st_with_loop.
      WHEN `ZCL_LNT_ST_WRITE`.
        CREATE OBJECT result TYPE zcl_lnt_st_write.
      WHEN `ZCL_LNT_STRUCTURE_PARSER`.
        CREATE OBJECT result TYPE zcl_lnt_structure_parser.
      WHEN `ZCL_LNT_ANY`.
        CREATE OBJECT result TYPE zcl_lnt_any.
      WHEN `ZCL_LNT_SR_AT`.
        CREATE OBJECT result TYPE zcl_lnt_sr_at.
      WHEN `ZCL_LNT_SR_AT_FIRST`.
        CREATE OBJECT result TYPE zcl_lnt_sr_at_first.
      WHEN `ZCL_LNT_SR_AT_LAST`.
        CREATE OBJECT result TYPE zcl_lnt_sr_at_last.
      WHEN `ZCL_LNT_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_body.
      WHEN `ZCL_LNT_SR_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_case.
      WHEN `ZCL_LNT_SR_CASE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_case_type.
      WHEN `ZCL_LNT_SR_CATCH`.
        CREATE OBJECT result TYPE zcl_lnt_sr_catch.
      WHEN `ZCL_LNT_SR_CTCH_SYSTM_EXCPTNS`.
        CREATE OBJECT result TYPE zcl_lnt_sr_ctch_systm_excptns.
      WHEN `ZCL_LNT_SR_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_sr_chain.
      WHEN `ZCL_LNT_SR_CLASS_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sr_class_data.
      WHEN `ZCL_LNT_SR_CLASS_DEFINITION`.
        CREATE OBJECT result TYPE zcl_lnt_sr_class_definition.
      WHEN `ZCL_LNT_SR_CLASS_GLOBAL`.
        CREATE OBJECT result TYPE zcl_lnt_sr_class_global.
      WHEN `ZCL_LNT_SR_CLSS_IMPLMNTTN`.
        CREATE OBJECT result TYPE zcl_lnt_sr_clss_implmnttn.
      WHEN `ZCL_LNT_SR_CLEANUP`.
        CREATE OBJECT result TYPE zcl_lnt_sr_cleanup.
      WHEN `ZCL_LNT_SR_CONSTANTS`.
        CREATE OBJECT result TYPE zcl_lnt_sr_constants.
      WHEN `ZCL_LNT_SR_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sr_data.
      WHEN `ZCL_LNT_SR_DEFINE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_define.
      WHEN `ZCL_LNT_SR_DO`.
        CREATE OBJECT result TYPE zcl_lnt_sr_do.
      WHEN `ZCL_LNT_DYNPRO_LOGIC`.
        CREATE OBJECT result TYPE zcl_lnt_dynpro_logic.
      WHEN `ZCL_LNT_SR_ELSE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_else.
      WHEN `ZCL_LNT_SR_ELSE_IF`.
        CREATE OBJECT result TYPE zcl_lnt_sr_else_if.
      WHEN `ZCL_LNT_SR_ENHANCEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_sr_enhancement.
      WHEN `ZCL_LNT_SR_ENHANCEMENT_SECTION`.
        CREATE OBJECT result TYPE zcl_lnt_sr_enhancement_section.
      WHEN `ZCL_LNT_SR_EXEC_SQL`.
        CREATE OBJECT result TYPE zcl_lnt_sr_exec_sql.
      WHEN `ZCL_LNT_SR_FORM`.
        CREATE OBJECT result TYPE zcl_lnt_sr_form.
      WHEN `ZCL_LNT_SR_FUNCTION_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_function_module.
      WHEN `ZCL_LNT_SR_IF`.
        CREATE OBJECT result TYPE zcl_lnt_sr_if.
      WHEN `ZCL_LNT_SR_INTERFACE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_interface.
      WHEN `ZCL_LNT_INTERFACE_GLOBAL`.
        CREATE OBJECT result TYPE zcl_lnt_interface_global.
      WHEN `ZCL_LNT_SR_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_sr_loop.
      WHEN `ZCL_LNT_SR_LOOP_AT_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_sr_loop_at_screen.
      WHEN `ZCL_LNT_SR_LOOP_EXTRACT`.
        CREATE OBJECT result TYPE zcl_lnt_sr_loop_extract.
      WHEN `ZCL_LNT_METHOD`.
        CREATE OBJECT result TYPE zcl_lnt_method.
      WHEN `ZCL_LNT_SR_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_module.
      WHEN `ZCL_LNT_NORMAL`.
        CREATE OBJECT result TYPE zcl_lnt_normal.
      WHEN `ZCL_LNT_SR_ON_CHANGE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_on_change.
      WHEN `ZCL_LNT_PRIVATE_SECTION`.
        CREATE OBJECT result TYPE zcl_lnt_private_section.
      WHEN `ZCL_LNT_PROTECTED_SECTION`.
        CREATE OBJECT result TYPE zcl_lnt_protected_section.
      WHEN `ZCL_LNT_SR_PROVIDE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_provide.
      WHEN `ZCL_LNT_PUBLIC_SECTION`.
        CREATE OBJECT result TYPE zcl_lnt_public_section.
      WHEN `ZCL_LNT_SECTION_CONTENTS`.
        CREATE OBJECT result TYPE zcl_lnt_section_contents.
      WHEN `ZCL_LNT_SR_SELECT`.
        CREATE OBJECT result TYPE zcl_lnt_sr_select.
      WHEN `ZCL_LNT_SR_STATICS`.
        CREATE OBJECT result TYPE zcl_lnt_sr_statics.
      WHEN `ZCL_LNT_SR_TEST_INJECTION`.
        CREATE OBJECT result TYPE zcl_lnt_sr_test_injection.
      WHEN `ZCL_LNT_SR_TEST_SEAM`.
        CREATE OBJECT result TYPE zcl_lnt_sr_test_seam.
      WHEN `ZCL_LNT_SR_TRY`.
        CREATE OBJECT result TYPE zcl_lnt_sr_try.
      WHEN `ZCL_LNT_SR_TYPE_ENUM`.
        CREATE OBJECT result TYPE zcl_lnt_sr_type_enum.
      WHEN `ZCL_LNT_SR_TYPE_MESH`.
        CREATE OBJECT result TYPE zcl_lnt_sr_type_mesh.
      WHEN `ZCL_LNT_SR_TYPES`.
        CREATE OBJECT result TYPE zcl_lnt_sr_types.
      WHEN `ZCL_LNT_SR_WHEN`.
        CREATE OBJECT result TYPE zcl_lnt_sr_when.
      WHEN `ZCL_LNT_SR_WHEN_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_when_type.
      WHEN `ZCL_LNT_SR_WHILE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_while.
      WHEN `ZCL_LNT_SR_WITH`.
        CREATE OBJECT result TYPE zcl_lnt_sr_with.
      WHEN `ZCL_LNT_BUILT_IN`.
        CREATE OBJECT result TYPE zcl_lnt_built_in.
      WHEN `ZCL_LNT_IREFERENCE_EXTRAS`.
        CREATE OBJECT result TYPE zcl_lnt_ireference_extras.
      WHEN `ZCX_LNT_ASSERT_ERROR`.
        CREATE OBJECT result TYPE zcx_lnt_assert_error.
      WHEN `ZCL_LNT_SY_ATTRIBUTE_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_attribute_chain.
      WHEN `ZCL_LNT_SY_ATTRIBUTE_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_sy_attribute_name.
      WHEN `ZCL_LNT_SY_CAST`.
        CREATE OBJECT result TYPE zcl_lnt_sy_cast.
      WHEN `ZCL_LNT_SY_COMPARE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_compare.
      WHEN `ZCL_LNT_SY_COMPONENT_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_component_chain.
      WHEN `ZCL_LNT_SY_COMPONENT_COMPARE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_component_compare.
      WHEN `ZCL_LNT_SY_CMPNNT_CMPR_SMPL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_cmpnnt_cmpr_smpl.
      WHEN `ZCL_LNT_SY_COMPONENT_COND`.
        CREATE OBJECT result TYPE zcl_lnt_sy_component_cond.
      WHEN `ZCL_LNT_SY_COMPONENT_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_sy_component_name.
      WHEN `ZCL_LNT_SY_COND`.
        CREATE OBJECT result TYPE zcl_lnt_sy_cond.
      WHEN `ZCL_LNT_SY_COND_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_cond_body.
      WHEN `ZCL_LNT_SY_EXPRES_CONSTANT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_expres_constant.
      WHEN `ZCL_LNT_SY_CONV_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_conv_body.
      WHEN `ZCL_LNT_SY_CORRESPONDING_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_corresponding_body.
      WHEN `ZCL_LNT_SY_DATA_DEFINITION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_data_definition.
      WHEN `ZCL_LNT_SY_DATABASE_TABLE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_database_table.
      WHEN `ZCL_LNT_SY_DEFAULT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_default.
      WHEN `ZCL_LNT_SY_DEREFERENCE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_dereference.
      WHEN `ZCL_LNT_SY_DYNAMIC`.
        CREATE OBJECT result TYPE zcl_lnt_sy_dynamic.
      WHEN `ZCL_LNT_SY_FIELD_ASSIGNMENT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_field_assignment.
      WHEN `ZCL_LNT_SY_FIELD_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_field_chain.
      WHEN `ZCL_LNT_SY_FIELD_LENGTH`.
        CREATE OBJECT result TYPE zcl_lnt_sy_field_length.
      WHEN `ZCL_LNT_SY_FIELD_OFFSET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_field_offset.
      WHEN `ZCL_LNT_SY_FILTER_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_filter_body.
      WHEN `ZCL_LNT_SY_FOR`.
        CREATE OBJECT result TYPE zcl_lnt_sy_for.
      WHEN `ZCL_LNT_SY_FORM_PARAM`.
        CREATE OBJECT result TYPE zcl_lnt_sy_form_param.
      WHEN `ZCL_LNT_SY_FS_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_fs_target.
      WHEN `ZCL_LNT_SY_FUNCTION_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_function_parameters.
      WHEN `ZCL_LNT_SY_INLINE_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sy_inline_data.
      WHEN `ZCL_LNT_SY_INLN_FLD_DFNTN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_inln_fld_dfntn.
      WHEN `ZCL_LNT_SY_INLINE_FS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_inline_fs.
      WHEN `ZCL_LNT_SY_INLN_LP_DFNTN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_inln_lp_dfntn.
      WHEN `ZCL_LNT_SY_LET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_let.
      WHEN `ZCL_LNT_SY_LOOP_GROUP_BY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_loop_group_by.
      WHEN `ZCL_LNT_SY_MESSAGE_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_message_source.
      WHEN `ZCL_LNT_SY_METHOD_CALL_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_method_call_body.
      WHEN `ZCL_LNT_SY_METHOD_CALL_CHAIN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_method_call_chain.
      WHEN `ZCL_LNT_SY_METHOD_CALL_PARAM`.
        CREATE OBJECT result TYPE zcl_lnt_sy_method_call_param.
      WHEN `ZCL_LNT_SY_MTHD_DF_RTRNNG`.
        CREATE OBJECT result TYPE zcl_lnt_sy_mthd_df_rtrnng.
      WHEN `ZCL_LNT_SY_METHOD_PARAM`.
        CREATE OBJECT result TYPE zcl_lnt_sy_method_param.
      WHEN `ZCL_LNT_SY_METHOD_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_method_parameters.
      WHEN `ZCL_LNT_SY_METHOD_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_method_source.
      WHEN `ZCL_LNT_SY_NEW_OBJECT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_new_object.
      WHEN `ZCL_LNT_SY_RAISE_WITH`.
        CREATE OBJECT result TYPE zcl_lnt_sy_raise_with.
      WHEN `ZCL_LNT_SY_REDUCE_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_reduce_body.
      WHEN `ZCL_LNT_SY_REDUCE_NEXT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_reduce_next.
      WHEN `ZCL_LNT_SY_EXPRES_SELECT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_expres_select.
      WHEN `ZCL_LNT_SY_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_source.
      WHEN `ZCL_LNT_SY_SOURCE_FIELD`.
        CREATE OBJECT result TYPE zcl_lnt_sy_source_field.
      WHEN `ZCL_LNT_SY_SOURCE_FIELD_SYMBOL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_source_field_symbol.
      WHEN `ZCL_LNT_SY_SQL_COMPARE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sql_compare.
      WHEN `ZCL_LNT_SY_SQL_FOR_ALL_ENTRIES`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sql_for_all_entries.
      WHEN `ZCL_LNT_SY_SQL_FROM`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sql_from.
      WHEN `ZCL_LNT_SY_SQL_IN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sql_in.
      WHEN `ZCL_LNT_SY_SQL_ORDER_BY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sql_order_by.
      WHEN `ZCL_LNT_SY_SQL_SET_OP_GROUP`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sql_set_op_group.
      WHEN `ZCL_LNT_SY_SQL_SOURCE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sql_source.
      WHEN `ZCL_LNT_SY_STRING_TEMPLATE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_string_template.
      WHEN `ZCL_LNT_SY_SWITCH_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_switch_body.
      WHEN `ZCL_LNT_SY_TABLE_EXPRESSION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_table_expression.
      WHEN `ZCL_LNT_SY_TARGET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_target.
      WHEN `ZCL_LNT_SY_TYPE_TABLE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_type_table.
      WHEN `ZCL_LNT_SY_TYPE_TABLE_KEY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_type_table_key.
      WHEN `ZCL_LNT_SY_VALUE_BODY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_value_body.
      WHEN `ZCL_LNT_SY_ADD`.
        CREATE OBJECT result TYPE zcl_lnt_sy_add.
      WHEN `ZCL_LNT_SY_ADD_CORRESPONDING`.
        CREATE OBJECT result TYPE zcl_lnt_sy_add_corresponding.
      WHEN `ZCL_LNT_SY_APPEND`.
        CREATE OBJECT result TYPE zcl_lnt_sy_append.
      WHEN `ZCL_LNT_SY_ASSERT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_assert.
      WHEN `ZCL_LNT_SY_ASSIGN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_assign.
      WHEN `ZCL_LNT_SY_AT_SELECTION_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_at_selection_screen.
      WHEN `ZCL_LNT_SY_AUTHORITY_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_sy_authority_check.
      WHEN `ZCL_LNT_SY_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_call.
      WHEN `ZCL_LNT_SY_CALL_BADI`.
        CREATE OBJECT result TYPE zcl_lnt_sy_call_badi.
      WHEN `ZCL_LNT_SY_CALL_FUNCTION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_call_function.
      WHEN `ZCL_LNT_SY_CALL_KERNEL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_call_kernel.
      WHEN `ZCL_LNT_SY_CALL_TRANSACTION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_call_transaction.
      WHEN `ZCL_LNT_SY_CALL_TRANSFORMATION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_call_transformation.
      WHEN `ZCL_LNT_SY_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_case.
      WHEN `ZCL_LNT_SY_CASE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_case_type.
      WHEN `ZCL_LNT_SY_CATCH`.
        CREATE OBJECT result TYPE zcl_lnt_sy_catch.
      WHEN `ZCL_LNT_SY_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_sy_check.
      WHEN `ZCL_LNT_SY_STATEM_CLASS_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sy_statem_class_data.
      WHEN `ZCL_LNT_SY_CLASS_DEFERRED`.
        CREATE OBJECT result TYPE zcl_lnt_sy_class_deferred.
      WHEN `ZCL_LNT_SY_CLSS_IMPLMNTTN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_clss_implmnttn.
      WHEN `ZCL_LNT_SY_CLASS_LOCAL_FRIENDS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_class_local_friends.
      WHEN `ZCL_LNT_SY_CLEAR`.
        CREATE OBJECT result TYPE zcl_lnt_sy_clear.
      WHEN `ZCL_LNT_SY_CLOSE_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_sy_close_cursor.
      WHEN `ZCL_LNT_SY_CLOSE_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_close_dataset.
      WHEN `ZCL_LNT_SY_COLLECT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_collect.
      WHEN `ZCL_LNT_SY_COMMIT_ENTITIES`.
        CREATE OBJECT result TYPE zcl_lnt_sy_commit_entities.
      WHEN `ZCL_LNT_SY_CONCATENATE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_concatenate.
      WHEN `ZCL_LNT_SY_CONDENSE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_condense.
      WHEN `ZCL_LNT_SY_STATEM_CONSTANT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_statem_constant.
      WHEN `ZCL_LNT_SY_CONTROLS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_controls.
      WHEN `ZCL_LNT_SY_CONVERT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_convert.
      WHEN `ZCL_LNT_SY_CREATE_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sy_create_data.
      WHEN `ZCL_LNT_SY_CREATE_OBJECT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_create_object.
      WHEN `ZCL_LNT_SY_STATEM_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sy_statem_data.
      WHEN `ZCL_LNT_SY_DELETE_CLUSTER`.
        CREATE OBJECT result TYPE zcl_lnt_sy_delete_cluster.
      WHEN `ZCL_LNT_SY_DELETE_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_delete_database.
      WHEN `ZCL_LNT_SY_DELETE_INTERNAL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_delete_internal.
      WHEN `ZCL_LNT_SY_DELETE_MEMORY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_delete_memory.
      WHEN `ZCL_LNT_SY_DELETE_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_delete_report.
      WHEN `ZCL_LNT_SY_DESCRIBE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_describe.
      WHEN `ZCL_LNT_SY_DIVIDE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_divide.
      WHEN `ZCL_LNT_SY_DO`.
        CREATE OBJECT result TYPE zcl_lnt_sy_do.
      WHEN `ZCL_LNT_SY_EDITOR_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_editor_call.
      WHEN `ZCL_LNT_SY_ELSE_IF`.
        CREATE OBJECT result TYPE zcl_lnt_sy_else_if.
      WHEN `ZCL_LNT_SY_EXPORT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_export.
      WHEN `ZCL_LNT_SY_FETCH_NEXT_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_sy_fetch_next_cursor.
      WHEN `ZCL_LNT_SY_FIELD_GROUP`.
        CREATE OBJECT result TYPE zcl_lnt_sy_field_group.
      WHEN `ZCL_LNT_SY_FIELD_SYMBOL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_field_symbol.
      WHEN `ZCL_LNT_SY_FIND`.
        CREATE OBJECT result TYPE zcl_lnt_sy_find.
      WHEN `ZCL_LNT_SY_FORM`.
        CREATE OBJECT result TYPE zcl_lnt_sy_form.
      WHEN `ZCL_LNT_SY_FORMAT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_format.
      WHEN `ZCL_LNT_SY_FREE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_free.
      WHEN `ZCL_LNT_SY_GET_BADI`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_badi.
      WHEN `ZCL_LNT_SY_GET_BIT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_bit.
      WHEN `ZCL_LNT_SY_GET_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_cursor.
      WHEN `ZCL_LNT_SY_GET_LOCALE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_locale.
      WHEN `ZCL_LNT_SY_GET_PARAMETER`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_parameter.
      WHEN `ZCL_LNT_SY_GET_PERMISSIONS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_permissions.
      WHEN `ZCL_LNT_SY_GET_PF_STATUS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_pf_status.
      WHEN `ZCL_LNT_SY_GET_REFERENCE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_reference.
      WHEN `ZCL_LNT_SY_GET_RUN_TIME`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_run_time.
      WHEN `ZCL_LNT_SY_GET_TIME`.
        CREATE OBJECT result TYPE zcl_lnt_sy_get_time.
      WHEN `ZCL_LNT_SY_IF`.
        CREATE OBJECT result TYPE zcl_lnt_sy_if.
      WHEN `ZCL_LNT_SY_IMPORT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_import.
      WHEN `ZCL_LNT_SY_IMPORT_DYNPRO`.
        CREATE OBJECT result TYPE zcl_lnt_sy_import_dynpro.
      WHEN `ZCL_LNT_SY_INCLUDE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_include_type.
      WHEN `ZCL_LNT_SY_INSERT_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_insert_database.
      WHEN `ZCL_LNT_SY_INSERT_FIELD_GROUP`.
        CREATE OBJECT result TYPE zcl_lnt_sy_insert_field_group.
      WHEN `ZCL_LNT_SY_INSERT_INTERNAL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_insert_internal.
      WHEN `ZCL_LNT_SY_INSERT_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_insert_report.
      WHEN `ZCL_LNT_SY_INSERT_TEXTPOOL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_insert_textpool.
      WHEN `ZCL_LNT_SY_INTERFACE_DEFERRED`.
        CREATE OBJECT result TYPE zcl_lnt_sy_interface_deferred.
      WHEN `ZCL_LNT_SY_LOG_POINT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_log_point.
      WHEN `ZCL_LNT_SY_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_sy_loop.
      WHEN `ZCL_LNT_SY_LOOP_AT_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_loop_at_screen.
      WHEN `ZCL_LNT_SY_MESSAGE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_message.
      WHEN `ZCL_LNT_SY_MTHD_IMPLMNTTN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_mthd_implmnttn.
      WHEN `ZCL_LNT_SY_MODIFY_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_modify_database.
      WHEN `ZCL_LNT_SY_MODIFY_ENTITIES`.
        CREATE OBJECT result TYPE zcl_lnt_sy_modify_entities.
      WHEN `ZCL_LNT_SY_MODIFY_INTERNAL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_modify_internal.
      WHEN `ZCL_LNT_SY_MODIFY_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_modify_screen.
      WHEN `ZCL_LNT_SY_MOVE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_move.
      WHEN `ZCL_LNT_SY_MOVE_CORRESPONDING`.
        CREATE OBJECT result TYPE zcl_lnt_sy_move_corresponding.
      WHEN `ZCL_LNT_SY_MULTIPLY`.
        CREATE OBJECT result TYPE zcl_lnt_sy_multiply.
      WHEN `ZCL_LNT_SY_OPEN_CURSOR`.
        CREATE OBJECT result TYPE zcl_lnt_sy_open_cursor.
      WHEN `ZCL_LNT_SY_OPEN_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_open_dataset.
      WHEN `ZCL_LNT_SY_PACK`.
        CREATE OBJECT result TYPE zcl_lnt_sy_pack.
      WHEN `ZCL_LNT_SY_PARAMETER_PARAMETER`.
        CREATE OBJECT result TYPE zcl_lnt_sy_parameter_parameter.
      WHEN `ZCL_LNT_SY_PERFORM`.
        CREATE OBJECT result TYPE zcl_lnt_sy_perform.
      WHEN `ZCL_LNT_SY_RAISE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_raise.
      WHEN `ZCL_LNT_SY_RAISE_EVENT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_raise_event.
      WHEN `ZCL_LNT_SY_RANGES`.
        CREATE OBJECT result TYPE zcl_lnt_sy_ranges.
      WHEN `ZCL_LNT_SY_READ_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_read_dataset.
      WHEN `ZCL_LNT_SY_READ_ENTITIES`.
        CREATE OBJECT result TYPE zcl_lnt_sy_read_entities.
      WHEN `ZCL_LNT_SY_READ_REPORT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_read_report.
      WHEN `ZCL_LNT_SY_READ_TABLE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_read_table.
      WHEN `ZCL_LNT_SY_READ_TEXTPOOL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_read_textpool.
      WHEN `ZCL_LNT_SY_RECEIVE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_receive.
      WHEN `ZCL_LNT_SY_REFRESH`.
        CREATE OBJECT result TYPE zcl_lnt_sy_refresh.
      WHEN `ZCL_LNT_SY_REPLACE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_replace.
      WHEN `ZCL_LNT_SY_RETURN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_return.
      WHEN `ZCL_LNT_SY_SCAN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_scan.
      WHEN `ZCL_LNT_SY_SEARCH`.
        CREATE OBJECT result TYPE zcl_lnt_sy_search.
      WHEN `ZCL_LNT_SY_STATEM_SELECT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_statem_select.
      WHEN `ZCL_LNT_SY_SELECT_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_sy_select_loop.
      WHEN `ZCL_LNT_SY_SELECTION_SCREEN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_selection_screen.
      WHEN `ZCL_LNT_SY_SELECT_OPTION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_select_option.
      WHEN `ZCL_LNT_SY_SET_BIT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_set_bit.
      WHEN `ZCL_LNT_SY_SET_HANDLER`.
        CREATE OBJECT result TYPE zcl_lnt_sy_set_handler.
      WHEN `ZCL_LNT_SY_SET_LOCALE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_set_locale.
      WHEN `ZCL_LNT_SY_SET_PARAMETER`.
        CREATE OBJECT result TYPE zcl_lnt_sy_set_parameter.
      WHEN `ZCL_LNT_SY_SET_PF_STATUS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_set_pf_status.
      WHEN `ZCL_LNT_SY_SET_TITLEBAR`.
        CREATE OBJECT result TYPE zcl_lnt_sy_set_titlebar.
      WHEN `ZCL_LNT_SY_SHIFT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_shift.
      WHEN `ZCL_LNT_SY_SORT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sort.
      WHEN `ZCL_LNT_SY_SPLIT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_split.
      WHEN `ZCL_LNT_SY_STATIC`.
        CREATE OBJECT result TYPE zcl_lnt_sy_static.
      WHEN `ZCL_LNT_SY_SUBMIT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_submit.
      WHEN `ZCL_LNT_SY_SUBTRACT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_subtract.
      WHEN `ZCL_LNT_SY_SBTRCT_CRRSPNDNG`.
        CREATE OBJECT result TYPE zcl_lnt_sy_sbtrct_crrspndng.
      WHEN `ZCL_LNT_SY_SYNTAX_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_sy_syntax_check.
      WHEN `ZCL_LNT_SY_SYSTEM_CALL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_system_call.
      WHEN `ZCL_LNT_SY_TABLES`.
        CREATE OBJECT result TYPE zcl_lnt_sy_tables.
      WHEN `ZCL_LNT_SY_TRANSFER`.
        CREATE OBJECT result TYPE zcl_lnt_sy_transfer.
      WHEN `ZCL_LNT_SY_TRANSLATE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_translate.
      WHEN `ZCL_LNT_SY_TRUNCATE_DATASET`.
        CREATE OBJECT result TYPE zcl_lnt_sy_truncate_dataset.
      WHEN `ZCL_LNT_SY_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_type.
      WHEN `ZCL_LNT_SY_UNASSIGN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_unassign.
      WHEN `ZCL_LNT_SY_UNPACK`.
        CREATE OBJECT result TYPE zcl_lnt_sy_unpack.
      WHEN `ZCL_LNT_SY_UPDATE_DATABASE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_update_database.
      WHEN `ZCL_LNT_SY_WAIT`.
        CREATE OBJECT result TYPE zcl_lnt_sy_wait.
      WHEN `ZCL_LNT_SY_WHEN`.
        CREATE OBJECT result TYPE zcl_lnt_sy_when.
      WHEN `ZCL_LNT_SY_WHEN_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_when_type.
      WHEN `ZCL_LNT_SY_WHILE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_while.
      WHEN `ZCL_LNT_SY_WITH`.
        CREATE OBJECT result TYPE zcl_lnt_sy_with.
      WHEN `ZCL_LNT_SY_WITH_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_sy_with_loop.
      WHEN `ZCL_LNT_SY_WRITE`.
        CREATE OBJECT result TYPE zcl_lnt_sy_write.
      WHEN `ZCL_LNT_SY_STRUCT_CLASS_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sy_struct_class_data.
      WHEN `ZCL_LNT_SY_CONSTANTS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_constants.
      WHEN `ZCL_LNT_SY_STRUCT_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_sy_struct_data.
      WHEN `ZCL_LNT_SY_STATICS`.
        CREATE OBJECT result TYPE zcl_lnt_sy_statics.
      WHEN `ZCL_LNT_SY_TYPE_ENUM`.
        CREATE OBJECT result TYPE zcl_lnt_sy_type_enum.
      WHEN `ZCL_LNT_SY_TYPE_MESH`.
        CREATE OBJECT result TYPE zcl_lnt_sy_type_mesh.
      WHEN `ZCL_LNT_SY_TYPES`.
        CREATE OBJECT result TYPE zcl_lnt_sy_types.
      WHEN `ZCL_LNT_IABAPPARSER_OPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_iabapparser_options.
      WHEN `ZCL_LNT_ABAP_PARSER`.
        CREATE OBJECT result TYPE zcl_lnt_abap_parser.
      WHEN `ZCL_LNT_LIST`.
        CREATE OBJECT result TYPE zcl_lnt_list.
      WHEN `ZCL_LNT_ARTIFACTS_ABAP`.
        CREATE OBJECT result TYPE zcl_lnt_artifacts_abap.
      WHEN `ZCL_LNT_ANY_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_any_type.
      WHEN `ZCL_LNT_C_GENERIC_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_c_generic_type.
      WHEN `ZCL_LNT_C_LIKE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_c_like_type.
      WHEN `ZCL_LNT_C_SEQUENCE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_c_sequence_type.
      WHEN `ZCL_LNT_DATA_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_data_type.
      WHEN `ZCL_LNT_DATE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_date_type.
      WHEN `ZCL_LNT_DEC_FLOAT16_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_dec_float16_type.
      WHEN `ZCL_LNT_DEC_FLOAT34_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_dec_float34_type.
      WHEN `ZCL_LNT_DEC_FLOAT_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_dec_float_type.
      WHEN `ZCL_LNT_ENUM_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_enum_type.
      WHEN `ZCL_LNT_FLOAT_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_float_type.
      WHEN `ZCL_LNT_GNRC_OBJCT_RFRNC_TYP`.
        CREATE OBJECT result TYPE zcl_lnt_gnrc_objct_rfrnc_typ.
      WHEN `ZCL_LNT_INTEGER8_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_integer8_type.
      WHEN `ZCL_LNT_INTEGER_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_integer_type.
      WHEN `ZCL_LNT_NUMERIC_GENERIC_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_numeric_generic_type.
      WHEN `ZCL_LNT_P_GENERIC_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_p_generic_type.
      WHEN `ZCL_LNT_SIMPLE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_simple_type.
      WHEN `ZCL_LNT_STRING_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_string_type.
      WHEN `ZCL_LNT_TIME_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_time_type.
      WHEN `ZCL_LNT_UTC_LONG_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_utc_long_type.
      WHEN `ZCL_LNT_VOID_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_void_type.
      WHEN `ZCL_LNT_X_GENERIC_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_x_generic_type.
      WHEN `ZCL_LNT_X_SEQUENCE_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_x_sequence_type.
      WHEN `ZCL_LNT_X_STRING_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_x_string_type.
      WHEN `ZCL_LNT_ARTIFACTS_OBJECTS`.
        CREATE OBJECT result TYPE zcl_lnt_artifacts_objects.
      WHEN `ZCL_LNT_ARTIFACTS_RULES`.
        CREATE OBJECT result TYPE zcl_lnt_artifacts_rules.
      WHEN `ZCL_LNT_CD_RESULT`.
        CREATE OBJECT result TYPE zcl_lnt_cd_result.
      WHEN `ZCL_LNT_CDS_LEXER`.
        CREATE OBJECT result TYPE zcl_lnt_cds_lexer.
      WHEN `ZCL_LNT_DDIC_REFERENCES`.
        CREATE OBJECT result TYPE zcl_lnt_ddic_references.
      WHEN `ZCL_LNT_EDIT_HELPER`.
        CREATE OBJECT result TYPE zcl_lnt_edit_helper.
      WHEN `ZCL_LNT_MACRO_REFERENCES`.
        CREATE OBJECT result TYPE zcl_lnt_macro_references.
      WHEN `ZCL_LNT_MSAG_REFERENCES`.
        CREATE OBJECT result TYPE zcl_lnt_msag_references.
      WHEN `ZCL_LNT_PROXY_DATA_ITEM`.
        CREATE OBJECT result TYPE zcl_lnt_proxy_data_item.
      WHEN `ZCL_LNT_INDENT`.
        CREATE OBJECT result TYPE zcl_lnt_indent.
      WHEN `ZCL_LNT_IINDENTATION_OPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_iindentation_options.
      WHEN `ZCL_LNT_PARSING_PERFORMANCE`.
        CREATE OBJECT result TYPE zcl_lnt_parsing_performance.
      WHEN `ZCL_LNT_REGISTRY`.
        CREATE OBJECT result TYPE zcl_lnt_registry.
      WHEN `ZCL_LNT_SEVEN_BIT_ASCII_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_seven_bit_ascii_conf.
      WHEN `ZCL_LNT_SEVEN_BIT_ASCII`.
        CREATE OBJECT result TYPE zcl_lnt_seven_bit_ascii.
      WHEN `ZCL_LNT_ABAPDOC_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_abapdoc_conf.
      WHEN `ZCL_LNT_ABAPDOC`.
        CREATE OBJECT result TYPE zcl_lnt_abapdoc.
      WHEN `ZCL_LNT_ADD_TST_ATTRBTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_add_tst_attrbts_cnf.
      WHEN `ZCL_LNT_ADD_TEST_ATTRIBUTES`.
        CREATE OBJECT result TYPE zcl_lnt_add_test_attributes.
      WHEN `ZCL_LNT_AFF_AND_XML_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_aff_and_xml_conf.
      WHEN `ZCL_LNT_AFF_AND_XML`.
        CREATE OBJECT result TYPE zcl_lnt_aff_and_xml.
      WHEN `ZCL_LNT_ALIGN_PARAMETERS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_align_parameters_conf.
      WHEN `ZCL_LNT_ALIGN_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_align_parameters.
      WHEN `ZCL_LNT_ALGN_PSD_CMMNTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_algn_psd_cmmnts_cnf.
      WHEN `ZCL_LNT_ALIGN_PSEUDO_COMMENTS`.
        CREATE OBJECT result TYPE zcl_lnt_align_pseudo_comments.
      WHEN `ZCL_LNT_ALGN_TYP_EXPRSSNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_algn_typ_exprssns_cnf.
      WHEN `ZCL_LNT_ALIGN_TYPE_EXPRESSIONS`.
        CREATE OBJECT result TYPE zcl_lnt_align_type_expressions.
      WHEN `ZCL_LNT_ALLWD_OBJCT_NMNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_allwd_objct_nmng_cnf.
      WHEN `ZCL_LNT_ALLOWED_OBJECT_NAMING`.
        CREATE OBJECT result TYPE zcl_lnt_allowed_object_naming.
      WHEN `ZCL_LNT_ALLWD_OBJCT_TYPS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_allwd_objct_typs_cnf.
      WHEN `ZCL_LNT_ALLOWED_OBJECT_TYPES`.
        CREATE OBJECT result TYPE zcl_lnt_allowed_object_types.
      WHEN `ZCL_LNT_AMBGS_STTMNT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_ambgs_sttmnt_cnf.
      WHEN `ZCL_LNT_AMBIGUOUS_STATEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_ambiguous_statement.
      WHEN `ZCL_LNT_AVOID_USE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_avoid_use_conf.
      WHEN `ZCL_LNT_AVOID_USE`.
        CREATE OBJECT result TYPE zcl_lnt_avoid_use.
      WHEN `ZCL_LNT_BEGIN_END_NAMES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_begin_end_names_conf.
      WHEN `ZCL_LNT_BEGIN_END_NAMES`.
        CREATE OBJECT result TYPE zcl_lnt_begin_end_names.
      WHEN `ZCL_LNT_BGN_SNGL_INCLD_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_bgn_sngl_incld_cnf.
      WHEN `ZCL_LNT_BEGIN_SINGLE_INCLUDE`.
        CREATE OBJECT result TYPE zcl_lnt_begin_single_include.
      WHEN `ZCL_LNT_CLL_TRNS_ATHR_CHCK_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_cll_trns_athr_chck_cnf.
      WHEN `ZCL_LNT_CLL_TRNSCT_ATHRTY_CHCK`.
        CREATE OBJECT result TYPE zcl_lnt_cll_trnsct_athrty_chck.
      WHEN `ZCL_LNT_CATCH_AND_RAISE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_catch_and_raise_conf.
      WHEN `ZCL_LNT_CATCH_AND_RAISE`.
        CREATE OBJECT result TYPE zcl_lnt_catch_and_raise.
      WHEN `ZCL_LNT_CDS_ASSCTN_NM_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_cds_assctn_nm_cnf.
      WHEN `ZCL_LNT_CDS_ASSOCIATION_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_cds_association_name.
      WHEN `ZCL_LNT_CDS_CHECK_SYNTAX_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cds_check_syntax_conf.
      WHEN `ZCL_LNT_CDS_CHECK_SYNTAX`.
        CREATE OBJECT result TYPE zcl_lnt_cds_check_syntax.
      WHEN `ZCL_LNT_CDS_COMMENT_STYLE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cds_comment_style_conf.
      WHEN `ZCL_LNT_CDS_COMMENT_STYLE`.
        CREATE OBJECT result TYPE zcl_lnt_cds_comment_style.
      WHEN `ZCL_LNT_CDS_FIELD_ORDER_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cds_field_order_conf.
      WHEN `ZCL_LNT_CDS_FIELD_ORDER`.
        CREATE OBJECT result TYPE zcl_lnt_cds_field_order.
      WHEN `ZCL_LNT_CDS_LEGACY_VIEW_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cds_legacy_view_conf.
      WHEN `ZCL_LNT_CDS_LEGACY_VIEW`.
        CREATE OBJECT result TYPE zcl_lnt_cds_legacy_view.
      WHEN `ZCL_LNT_CDS_NAMING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cds_naming_conf.
      WHEN `ZCL_LNT_CDS_NAMING`.
        CREATE OBJECT result TYPE zcl_lnt_cds_naming.
      WHEN `ZCL_LNT_CDS_PARSER_ERROR_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cds_parser_error_conf.
      WHEN `ZCL_LNT_CDS_PARSER_ERROR`.
        CREATE OBJECT result TYPE zcl_lnt_cds_parser_error.
      WHEN `ZCL_LNT_CHN_MNLY_DCLRTNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_chn_mnly_dclrtns_cnf.
      WHEN `ZCL_LNT_CHN_MNLY_DCLRTNS`.
        CREATE OBJECT result TYPE zcl_lnt_chn_mnly_dclrtns.
      WHEN `ZCL_LNT_CHANGE_IF_TO_CASE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_change_if_to_case_conf.
      WHEN `ZCL_LNT_CHANGE_IF_TO_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_change_if_to_case.
      WHEN `ZCL_LNT_CHECK_ABSTRACT_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_check_abstract_conf.
      WHEN `ZCL_LNT_CHECK_ABSTRACT`.
        CREATE OBJECT result TYPE zcl_lnt_check_abstract.
      WHEN `ZCL_LNT_CHECK_COMMENTS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_check_comments_conf.
      WHEN `ZCL_LNT_CHECK_COMMENTS`.
        CREATE OBJECT result TYPE zcl_lnt_check_comments.
      WHEN `ZCL_LNT_CHECK_DDIC_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_check_ddic_conf.
      WHEN `ZCL_LNT_CHECK_DDIC`.
        CREATE OBJECT result TYPE zcl_lnt_check_ddic.
      WHEN `ZCL_LNT_CHECK_INCLUDE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_check_include_conf.
      WHEN `ZCL_LNT_CHECK_INCLUDE`.
        CREATE OBJECT result TYPE zcl_lnt_check_include.
      WHEN `ZCL_LNT_CHECK_SUBRC_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_check_subrc_conf.
      WHEN `ZCL_LNT_CHECK_SUBRC`.
        CREATE OBJECT result TYPE zcl_lnt_check_subrc.
      WHEN `ZCL_LNT_CHECK_SYNTAX_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_check_syntax_conf.
      WHEN `ZCL_LNT_CHECK_SYNTAX`.
        CREATE OBJECT result TYPE zcl_lnt_check_syntax.
      WHEN `ZCL_LNT_CHCK_TXT_ELMNTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_chck_txt_elmnts_cnf.
      WHEN `ZCL_LNT_CHECK_TEXT_ELEMENTS`.
        CREATE OBJECT result TYPE zcl_lnt_check_text_elements.
      WHEN `ZCL_LNT_CHCK_TRNSFRM_EXSTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_chck_trnsfrm_exsts_cnf.
      WHEN `ZCL_LNT_CHCK_TRNSFRMTN_EXSTS`.
        CREATE OBJECT result TYPE zcl_lnt_chck_trnsfrmtn_exsts.
      WHEN `ZCL_LNT_CLSS_ATTRBT_NMS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_clss_attrbt_nms_cnf.
      WHEN `ZCL_LNT_CLASS_ATTRIBUTE_NAMES`.
        CREATE OBJECT result TYPE zcl_lnt_class_attribute_names.
      WHEN `ZCL_LNT_CLSSC_EXCPTN_OVRLP_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_clssc_excptn_ovrlp_cnf.
      WHEN `ZCL_LNT_CLSSC_EXCPTNS_OVRLP`.
        CREATE OBJECT result TYPE zcl_lnt_clssc_excptns_ovrlp.
      WHEN `ZCL_LNT_CLR_EXPRTNG_PRMTRS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_clr_exprtng_prmtrs_cnf.
      WHEN `ZCL_LNT_CLR_EXPRTNG_PRMTRS`.
        CREATE OBJECT result TYPE zcl_lnt_clr_exprtng_prmtrs.
      WHEN `ZCL_LNT_CLOUD_TYPES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cloud_types_conf.
      WHEN `ZCL_LNT_CLOUD_TYPES`.
        CREATE OBJECT result TYPE zcl_lnt_cloud_types.
      WHEN `ZCL_LNT_CLN_MSSNG_SPC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_cln_mssng_spc_cnf.
      WHEN `ZCL_LNT_COLON_MISSING_SPACE`.
        CREATE OBJECT result TYPE zcl_lnt_colon_missing_space.
      WHEN `ZCL_LNT_COMMENTED_CODE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_commented_code_conf.
      WHEN `ZCL_LNT_COMMENTED_CODE`.
        CREATE OBJECT result TYPE zcl_lnt_commented_code.
      WHEN `ZCL_LNT_CONSTANT_CLASSES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_constant_classes_conf.
      WHEN `ZCL_LNT_CONSTANT_CLASSES`.
        CREATE OBJECT result TYPE zcl_lnt_constant_classes.
      WHEN `ZCL_LNT_CNSTRC_VSBLTY_PBLC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_cnstrc_vsblty_pblc_cnf.
      WHEN `ZCL_LNT_CNSTRCTR_VSBLTY_PBLC`.
        CREATE OBJECT result TYPE zcl_lnt_cnstrctr_vsblty_pblc.
      WHEN `ZCL_LNT_CONTAINS_TAB_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_contains_tab_conf.
      WHEN `ZCL_LNT_CONTAINS_TAB`.
        CREATE OBJECT result TYPE zcl_lnt_contains_tab.
      WHEN `ZCL_LNT_CYCLIC_OO_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_cyclic_oo_conf.
      WHEN `ZCL_LNT_CYCLIC_OO`.
        CREATE OBJECT result TYPE zcl_lnt_cyclic_oo.
      WHEN `ZCL_LNT_CYCLMTC_CMPLXTY_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_cyclmtc_cmplxty_cnf.
      WHEN `ZCL_LNT_CYCLOMATIC_COMPLEXITY`.
        CREATE OBJECT result TYPE zcl_lnt_cyclomatic_complexity.
      WHEN `ZCL_LNT_DNGRS_STTMNT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_dngrs_sttmnt_cnf.
      WHEN `ZCL_LNT_DANGEROUS_STATEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_dangerous_statement.
      WHEN `ZCL_LNT_DB_OPRTN_IN_LP_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_db_oprtn_in_lp_cnf.
      WHEN `ZCL_LNT_DB_OPERATION_IN_LOOP`.
        CREATE OBJECT result TYPE zcl_lnt_db_operation_in_loop.
      WHEN `ZCL_LNT_DEFINITIONS_TOP_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_definitions_top_conf.
      WHEN `ZCL_LNT_DEFINITIONS_TOP`.
        CREATE OBJECT result TYPE zcl_lnt_definitions_top.
      WHEN `ZCL_LNT_DESCRIPTION_EMPTY_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_description_empty_conf.
      WHEN `ZCL_LNT_DESCRIPTION_EMPTY`.
        CREATE OBJECT result TYPE zcl_lnt_description_empty.
      WHEN `ZCL_LNT_DOUBLE_SPACE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_double_space_conf.
      WHEN `ZCL_LNT_DOUBLE_SPACE`.
        CREATE OBJECT result TYPE zcl_lnt_double_space.
      WHEN `ZCL_LNT_DOWNPORT_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_downport_conf.
      WHEN `ZCL_LNT_DOWNPORT`.
        CREATE OBJECT result TYPE zcl_lnt_downport.
      WHEN `ZCL_LNT_DYNPRO_CHECKS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_dynpro_checks_conf.
      WHEN `ZCL_LNT_DYNPRO_CHECKS`.
        CREATE OBJECT result TYPE zcl_lnt_dynpro_checks.
      WHEN `ZCL_LNT_ESY_T_FND_MSSGS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_esy_t_fnd_mssgs_cnf.
      WHEN `ZCL_LNT_EASY_TO_FIND_MESSAGES`.
        CREATE OBJECT result TYPE zcl_lnt_easy_to_find_messages.
      WHEN `ZCL_LNT_EMPTY_EVENT_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_empty_event_conf.
      WHEN `ZCL_LNT_EMPTY_EVENT`.
        CREATE OBJECT result TYPE zcl_lnt_empty_event.
      WHEN `ZCL_LNT_EMPTY_LNN_STTMNT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_empty_lnn_sttmnt_cnf.
      WHEN `ZCL_LNT_EMPTY_LINEIN_STATEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_empty_linein_statement.
      WHEN `ZCL_LNT_EMPTY_STATEMENT_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_empty_statement_conf.
      WHEN `ZCL_LNT_EMPTY_STATEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_empty_statement.
      WHEN `ZCL_LNT_EMPTY_STRUCTURE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_empty_structure_conf.
      WHEN `ZCL_LNT_EMPTY_STRUCTURE`.
        CREATE OBJECT result TYPE zcl_lnt_empty_structure.
      WHEN `ZCL_LNT_EXIT_OR_CHECK_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_exit_or_check_conf.
      WHEN `ZCL_LNT_EXIT_OR_CHECK`.
        CREATE OBJECT result TYPE zcl_lnt_exit_or_check.
      WHEN `ZCL_LNT_EXPAND_MACROS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_expand_macros_conf.
      WHEN `ZCL_LNT_RL_EXPAND_MACROS`.
        CREATE OBJECT result TYPE zcl_lnt_rl_expand_macros.
      WHEN `ZCL_LNT_EXPORTING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_exporting_conf.
      WHEN `ZCL_LNT_EXPORTING`.
        CREATE OBJECT result TYPE zcl_lnt_exporting.
      WHEN `ZCL_LNT_FM_GLBL_PRMT_OBSLT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_fm_glbl_prmt_obslt_cnf.
      WHEN `ZCL_LNT_FM_GLBL_PRMTRS_OBSLT`.
        CREATE OBJECT result TYPE zcl_lnt_fm_glbl_prmtrs_obslt.
      WHEN `ZCL_LNT_FRBDDN_IDNTFR_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_frbddn_idntfr_cnf.
      WHEN `ZCL_LNT_FORBIDDEN_IDENTIFIER`.
        CREATE OBJECT result TYPE zcl_lnt_forbidden_identifier.
      WHEN `ZCL_LNT_FRBDD_PSD_AND_PRGM_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_frbdd_psd_and_prgm_cnf.
      WHEN `ZCL_LNT_FRBDDN_PSD_AND_PRGM`.
        CREATE OBJECT result TYPE zcl_lnt_frbddn_psd_and_prgm.
      WHEN `ZCL_LNT_FRBDDN_VD_TYP_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_frbddn_vd_typ_cnf.
      WHEN `ZCL_LNT_FORBIDDEN_VOID_TYPE`.
        CREATE OBJECT result TYPE zcl_lnt_forbidden_void_type.
      WHEN `ZCL_LNT_FRM_TBLS_OBSLT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_frm_tbls_obslt_cnf.
      WHEN `ZCL_LNT_FORM_TABLES_OBSOLETE`.
        CREATE OBJECT result TYPE zcl_lnt_form_tables_obsolete.
      WHEN `ZCL_LNT_FLLY_TYP_CNSNTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_flly_typ_cnsnts_cnf.
      WHEN `ZCL_LNT_FULLY_TYPE_CONSTANTS`.
        CREATE OBJECT result TYPE zcl_lnt_fully_type_constants.
      WHEN `ZCL_LNT_FULLY_TYPE_I_TABS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_fully_type_i_tabs_conf.
      WHEN `ZCL_LNT_FULLY_TYPE_I_TABS`.
        CREATE OBJECT result TYPE zcl_lnt_fully_type_i_tabs.
      WHEN `ZCL_LNT_FNCTN_MDL_RCMMNDTN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
      WHEN `ZCL_LNT_FNCTN_MDL_RCMMNDTNS`.
        CREATE OBJECT result TYPE zcl_lnt_fnctn_mdl_rcmmndtns.
      WHEN `ZCL_LNT_FNCTNL_WRTNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_fnctnl_wrtng_cnf.
      WHEN `ZCL_LNT_FUNCTIONAL_WRITING`.
        CREATE OBJECT result TYPE zcl_lnt_functional_writing.
      WHEN `ZCL_LNT_GLOBAL_CLASS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_global_class_conf.
      WHEN `ZCL_LNT_GLOBAL_CLASS`.
        CREATE OBJECT result TYPE zcl_lnt_global_class.
      WHEN `ZCL_LNT_CONDITIONS`.
        CREATE OBJECT result TYPE zcl_lnt_conditions.
      WHEN `ZCL_LNT_IDNTCL_CNDTNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_idntcl_cndtns_cnf.
      WHEN `ZCL_LNT_IDENTICAL_CONDITIONS`.
        CREATE OBJECT result TYPE zcl_lnt_identical_conditions.
      WHEN `ZCL_LNT_IDNTCL_CNTNTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_idntcl_cntnts_cnf.
      WHEN `ZCL_LNT_IDENTICAL_CONTENTS`.
        CREATE OBJECT result TYPE zcl_lnt_identical_contents.
      WHEN `ZCL_LNT_IDNTCL_DSCRPTNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_idntcl_dscrptns_cnf.
      WHEN `ZCL_LNT_IDENTICAL_DESCRIPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_identical_descriptions.
      WHEN `ZCL_LNT_IDNTCL_FRM_NMS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_idntcl_frm_nms_cnf.
      WHEN `ZCL_LNT_IDENTICAL_FORM_NAMES`.
        CREATE OBJECT result TYPE zcl_lnt_identical_form_names.
      WHEN `ZCL_LNT_IDENTICAL_MOVE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_identical_move_conf.
      WHEN `ZCL_LNT_IDENTICAL_MOVE`.
        CREATE OBJECT result TYPE zcl_lnt_identical_move.
      WHEN `ZCL_LNT_IF_IN_IF_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_if_in_if_conf.
      WHEN `ZCL_LNT_IF_IN_IF`.
        CREATE OBJECT result TYPE zcl_lnt_if_in_if.
      WHEN `ZCL_LNT_IMPLEMENT_METHODS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_implement_methods_conf.
      WHEN `ZCL_LNT_IMPLEMENT_METHODS`.
        CREATE OBJECT result TYPE zcl_lnt_implement_methods.
      WHEN `ZCL_LNT_IMPL_STRT_OF_SLCTN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_impl_strt_of_slctn_cnf.
      WHEN `ZCL_LNT_IMPLCT_STRT_OF_SLCTN`.
        CREATE OBJECT result TYPE zcl_lnt_implct_strt_of_slctn.
      WHEN `ZCL_LNT_IN_STTMNT_INDNTTN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_in_sttmnt_indnttn_cnf.
      WHEN `ZCL_LNT_IN_STTMNT_INDNTTN`.
        CREATE OBJECT result TYPE zcl_lnt_in_sttmnt_indnttn.
      WHEN `ZCL_LNT_INDENTATION_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_indentation_conf.
      WHEN `ZCL_LNT_INDENTATION`.
        CREATE OBJECT result TYPE zcl_lnt_indentation.
      WHEN `ZCL_LNT_INDX_CMPLTLY_CNTND_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_indx_cmpltly_cntnd_cnf.
      WHEN `ZCL_LNT_INDX_CMPLTLY_CNTND`.
        CREATE OBJECT result TYPE zcl_lnt_indx_cmpltly_cntnd.
      WHEN `ZCL_LNT_INLN_DT_OLD_VRSNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_inln_dt_old_vrsns_cnf.
      WHEN `ZCL_LNT_INLN_DT_OLD_VRSNS`.
        CREATE OBJECT result TYPE zcl_lnt_inln_dt_old_vrsns.
      WHEN `ZCL_LNT_INTF_RFRNCNG_CLS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_intf_rfrncng_cls_cnf.
      WHEN `ZCL_LNT_INTF_REFERENCING_CLAS`.
        CREATE OBJECT result TYPE zcl_lnt_intf_referencing_clas.
      WHEN `ZCL_LNT_INVLD_TBL_INDX_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_invld_tbl_indx_cnf.
      WHEN `ZCL_LNT_INVALID_TABLE_INDEX`.
        CREATE OBJECT result TYPE zcl_lnt_invalid_table_index.
      WHEN `ZCL_LNT_K_SN_PR_CL_ON_ON_LN_CN`.
        CREATE OBJECT result TYPE zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
      WHEN `ZCL_LNT_KP_SN_PRM_CLL_ON_ON_LN`.
        CREATE OBJECT result TYPE zcl_lnt_kp_sn_prm_cll_on_on_ln.
      WHEN `ZCL_LNT_KEYWORD_CASE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_keyword_case_conf.
      WHEN `ZCL_LNT_KEYWORD_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_keyword_case.
      WHEN `ZCL_LNT_LN_BRK_MLTPL_PRMTR_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_ln_brk_mltpl_prmtr_cnf.
      WHEN `ZCL_LNT_LN_BRK_MLTPL_PRMTRS`.
        CREATE OBJECT result TYPE zcl_lnt_ln_brk_mltpl_prmtrs.
      WHEN `ZCL_LNT_LINE_BREAK_STYLE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_line_break_style_conf.
      WHEN `ZCL_LNT_LINE_BREAK_STYLE`.
        CREATE OBJECT result TYPE zcl_lnt_line_break_style.
      WHEN `ZCL_LNT_LINE_LENGTH_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_line_length_conf.
      WHEN `ZCL_LNT_LINE_LENGTH`.
        CREATE OBJECT result TYPE zcl_lnt_line_length.
      WHEN `ZCL_LNT_LINE_ONLY_PUNC_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_line_only_punc_conf.
      WHEN `ZCL_LNT_LINE_ONLY_PUNC`.
        CREATE OBJECT result TYPE zcl_lnt_line_only_punc.
      WHEN `ZCL_LNT_LCL_CLSS_NMNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_lcl_clss_nmng_cnf.
      WHEN `ZCL_LNT_LOCAL_CLASS_NAMING`.
        CREATE OBJECT result TYPE zcl_lnt_local_class_naming.
      WHEN `ZCL_LNT_LCL_TSTCLS_CNSSTNC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_lcl_tstcls_cnsstnc_cnf.
      WHEN `ZCL_LNT_LCL_TSTCLSS_CNSSTNCY`.
        CREATE OBJECT result TYPE zcl_lnt_lcl_tstclss_cnsstncy.
      WHEN `ZCL_LNT_LCL_VRBL_NMS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_lcl_vrbl_nms_cnf.
      WHEN `ZCL_LNT_LOCAL_VARIABLE_NAMES`.
        CREATE OBJECT result TYPE zcl_lnt_local_variable_names.
      WHEN `ZCL_LNT_MACRO_NAMING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_macro_naming_conf.
      WHEN `ZCL_LNT_MACRO_NAMING`.
        CREATE OBJECT result TYPE zcl_lnt_macro_naming.
      WHEN `ZCL_LNT_MN_FL_CNTNTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_mn_fl_cntnts_cnf.
      WHEN `ZCL_LNT_MAIN_FILE_CONTENTS`.
        CREATE OBJECT result TYPE zcl_lnt_main_file_contents.
      WHEN `ZCL_LNT_MANY_PARENTHESES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_many_parentheses_conf.
      WHEN `ZCL_LNT_MANY_PARENTHESES`.
        CREATE OBJECT result TYPE zcl_lnt_many_parentheses.
      WHEN `ZCL_LNT_MX_ON_MT_PRM_PR_LN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
      WHEN `ZCL_LNT_MX_ON_MTHD_PRMTR_PR_LN`.
        CREATE OBJECT result TYPE zcl_lnt_mx_on_mthd_prmtr_pr_ln.
      WHEN `ZCL_LNT_MAX_ONE_STATEMENT_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_max_one_statement_conf.
      WHEN `ZCL_LNT_MAX_ONE_STATEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_max_one_statement.
      WHEN `ZCL_LNT_MESSAGE_EXISTS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_message_exists_conf.
      WHEN `ZCL_LNT_MESSAGE_EXISTS_RULE`.
        CREATE OBJECT result TYPE zcl_lnt_message_exists_rule.
      WHEN `ZCL_LNT_MTHD_IMPLMNTD_TWC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_mthd_implmntd_twc_cnf.
      WHEN `ZCL_LNT_MTHD_IMPLMNTD_TWC`.
        CREATE OBJECT result TYPE zcl_lnt_mthd_implmntd_twc.
      WHEN `ZCL_LNT_METHOD_LENGTH_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_method_length_conf.
      WHEN `ZCL_LNT_METHOD_LENGTH`.
        CREATE OBJECT result TYPE zcl_lnt_method_length.
      WHEN `ZCL_LNT_MTHD_OVRWRT_BLT_IN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_mthd_ovrwrt_blt_in_cnf.
      WHEN `ZCL_LNT_MTHD_OVRWRTS_BLT_IN`.
        CREATE OBJECT result TYPE zcl_lnt_mthd_ovrwrts_blt_in.
      WHEN `ZCL_LNT_MTHD_PRMTR_NMS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_mthd_prmtr_nms_cnf.
      WHEN `ZCL_LNT_METHOD_PARAMETER_NAMES`.
        CREATE OBJECT result TYPE zcl_lnt_method_parameter_names.
      WHEN `ZCL_LNT_MIX_RETURNING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_mix_returning_conf.
      WHEN `ZCL_LNT_MIX_RETURNING`.
        CREATE OBJECT result TYPE zcl_lnt_mix_returning.
      WHEN `ZCL_LNT_MDF_ONL_OWN_DB_TBL_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_mdf_onl_own_db_tbl_cnf.
      WHEN `ZCL_LNT_MDFY_ONLY_OWN_DB_TBLS`.
        CREATE OBJECT result TYPE zcl_lnt_mdfy_only_own_db_tbls.
      WHEN `ZCL_LNT_MSAG_CONSISTENCY_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_msag_consistency_conf.
      WHEN `ZCL_LNT_MSAG_CONSISTENCY`.
        CREATE OBJECT result TYPE zcl_lnt_msag_consistency.
      WHEN `ZCL_LNT_NAMES_NO_DASH_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_names_no_dash_conf.
      WHEN `ZCL_LNT_NAMES_NO_DASH`.
        CREATE OBJECT result TYPE zcl_lnt_names_no_dash.
      WHEN `ZCL_LNT_NESTING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_nesting_conf.
      WHEN `ZCL_LNT_NESTING`.
        CREATE OBJECT result TYPE zcl_lnt_nesting.
      WHEN `ZCL_LNT_NWLN_BTWN_MTHDS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_nwln_btwn_mthds_cnf.
      WHEN `ZCL_LNT_NWLN_BTWN_MTHDS`.
        CREATE OBJECT result TYPE zcl_lnt_nwln_btwn_mthds.
      WHEN `ZCL_LNT_NO_ALIASES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_no_aliases_conf.
      WHEN `ZCL_LNT_NO_ALIASES`.
        CREATE OBJECT result TYPE zcl_lnt_no_aliases.
      WHEN `ZCL_LNT_N_CHND_ASSGNMNT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_chnd_assgnmnt_cnf.
      WHEN `ZCL_LNT_NO_CHAINED_ASSIGNMENT`.
        CREATE OBJECT result TYPE zcl_lnt_no_chained_assignment.
      WHEN `ZCL_LNT_N_CMMNT_BTWN_MTHDS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_cmmnt_btwn_mthds_cnf.
      WHEN `ZCL_LNT_N_CMMNTS_BTWN_MTHDS`.
        CREATE OBJECT result TYPE zcl_lnt_n_cmmnts_btwn_mthds.
      WHEN `ZCL_LNT_NO_DYNAMIC_STUFF_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_no_dynamic_stuff_conf.
      WHEN `ZCL_LNT_NO_DYNAMIC_STUFF`.
        CREATE OBJECT result TYPE zcl_lnt_no_dynamic_stuff.
      WHEN `ZCL_LNT_N_EXCLMTN_ESCP_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_exclmtn_escp_cnf.
      WHEN `ZCL_LNT_NO_EXCLAMATION_ESCAPE`.
        CREATE OBJECT result TYPE zcl_lnt_no_exclamation_escape.
      WHEN `ZCL_LNT_N_EXTRNL_FRM_CLLS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_extrnl_frm_clls_cnf.
      WHEN `ZCL_LNT_NO_EXTERNAL_FORM_CALLS`.
        CREATE OBJECT result TYPE zcl_lnt_no_external_form_calls.
      WHEN `ZCL_LNT_N_INL_IN_OPTN_BRNC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_inl_in_optn_brnc_cnf.
      WHEN `ZCL_LNT_N_INLN_IN_OPTNL_BRNCHS`.
        CREATE OBJECT result TYPE zcl_lnt_n_inln_in_optnl_brnchs.
      WHEN `ZCL_LNT_NO_MACROS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_no_macros_conf.
      WHEN `ZCL_LNT_NO_MACROS`.
        CREATE OBJECT result TYPE zcl_lnt_no_macros.
      WHEN `ZCL_LNT_N_MND_IN_DTBS_OPRT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_mnd_in_dtbs_oprt_cnf.
      WHEN `ZCL_LNT_N_MNDT_IN_DTBS_OPRTNS`.
        CREATE OBJECT result TYPE zcl_lnt_n_mndt_in_dtbs_oprtns.
      WHEN `ZCL_LNT_NO_PREFIXES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_no_prefixes_conf.
      WHEN `ZCL_LNT_NO_PREFIXES`.
        CREATE OBJECT result TYPE zcl_lnt_no_prefixes.
      WHEN `ZCL_LNT_N_PBLC_ATTRBTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_pblc_attrbts_cnf.
      WHEN `ZCL_LNT_NO_PUBLIC_ATTRIBUTES`.
        CREATE OBJECT result TYPE zcl_lnt_no_public_attributes.
      WHEN `ZCL_LNT_N_YD_CNDTNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_n_yd_cndtns_cnf.
      WHEN `ZCL_LNT_NO_YODA_CONDITIONS`.
        CREATE OBJECT result TYPE zcl_lnt_no_yoda_conditions.
      WHEN `ZCL_LNT_NROB_CONSISTENCY_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_nrob_consistency_conf.
      WHEN `ZCL_LNT_NROB_CONSISTENCY`.
        CREATE OBJECT result TYPE zcl_lnt_nrob_consistency.
      WHEN `ZCL_LNT_OBJECT_NAMING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_object_naming_conf.
      WHEN `ZCL_LNT_OBJECT_NAMING`.
        CREATE OBJECT result TYPE zcl_lnt_object_naming.
      WHEN `ZCL_LNT_OBSLT_STTMNT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_obslt_sttmnt_cnf.
      WHEN `ZCL_LNT_OBSOLETE_STATEMENT`.
        CREATE OBJECT result TYPE zcl_lnt_obsolete_statement.
      WHEN `ZCL_LNT_OMT_PRMTR_NM_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_omt_prmtr_nm_cnf.
      WHEN `ZCL_LNT_OMIT_PARAMETER_NAME`.
        CREATE OBJECT result TYPE zcl_lnt_omit_parameter_name.
      WHEN `ZCL_LNT_OMT_PRCDNG_ZRS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_omt_prcdng_zrs_cnf.
      WHEN `ZCL_LNT_OMIT_PRECEDING_ZEROS`.
        CREATE OBJECT result TYPE zcl_lnt_omit_preceding_zeros.
      WHEN `ZCL_LNT_OMIT_RECEIVING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_omit_receiving_conf.
      WHEN `ZCL_LNT_OMIT_RECEIVING`.
        CREATE OBJECT result TYPE zcl_lnt_omit_receiving.
      WHEN `ZCL_LNT_PRSR702_CHNNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prsr702_chnng_cnf.
      WHEN `ZCL_LNT_PARSER702_CHAINING`.
        CREATE OBJECT result TYPE zcl_lnt_parser702_chaining.
      WHEN `ZCL_LNT_PRSR_BD_EXCPTNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prsr_bd_excptns_cnf.
      WHEN `ZCL_LNT_PARSER_BAD_EXCEPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_parser_bad_exceptions.
      WHEN `ZCL_LNT_PARSER_ERROR_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_parser_error_conf.
      WHEN `ZCL_LNT_PARSER_ERROR`.
        CREATE OBJECT result TYPE zcl_lnt_parser_error.
      WHEN `ZCL_LNT_PRSR_MSSNG_SPC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prsr_mssng_spc_cnf.
      WHEN `ZCL_LNT_PARSER_MISSING_SPACE`.
        CREATE OBJECT result TYPE zcl_lnt_parser_missing_space.
      WHEN `ZCL_LNT_PRAGMA_STYLE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_pragma_style_conf.
      WHEN `ZCL_LNT_PRAGMA_STYLE`.
        CREATE OBJECT result TYPE zcl_lnt_pragma_style.
      WHEN `ZCL_LNT_PREFER_ABAP_BOOL_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_abap_bool_conf.
      WHEN `ZCL_LNT_PREFER_ABAP_BOOL`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_abap_bool.
      WHEN `ZCL_LNT_PRFR_CRRSPNDNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_crrspndng_cnf.
      WHEN `ZCL_LNT_PREFER_CORRESPONDING`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_corresponding.
      WHEN `ZCL_LNT_PREFER_INLINE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_inline_conf.
      WHEN `ZCL_LNT_PREFER_INLINE`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_inline.
      WHEN `ZCL_LNT_PRFR_INSRT_INT_TBL_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_insrt_int_tbl_cnf.
      WHEN `ZCL_LNT_PRFR_INSRT_INT_TBL`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_insrt_int_tbl.
      WHEN `ZCL_LNT_PREFER_IS_NOT_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_is_not_conf.
      WHEN `ZCL_LNT_PREFER_IS_NOT`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_is_not.
      WHEN `ZCL_LNT_PREFER_PRAGMAS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_pragmas_conf.
      WHEN `ZCL_LNT_PREFER_PRAGMAS`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_pragmas.
      WHEN `ZCL_LNT_PRFR_RS_EXCPTN_NW_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_rs_excptn_nw_cnf.
      WHEN `ZCL_LNT_PRFR_RS_EXCPTN_NW`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_rs_excptn_nw.
      WHEN `ZCL_LNT_PRFR_RTRNN_T_EXPRT_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_rtrnn_t_exprt_cnf.
      WHEN `ZCL_LNT_PRFR_RTRNNG_T_EXPRTNG`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_rtrnng_t_exprtng.
      WHEN `ZCL_LNT_PREFER_XSDBOOL_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_xsdbool_conf.
      WHEN `ZCL_LNT_PREFER_XSDBOOL`.
        CREATE OBJECT result TYPE zcl_lnt_prefer_xsdbool.
      WHEN `ZCL_LNT_PRFRRD_CMPR_OPRTR_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prfrrd_cmpr_oprtr_cnf.
      WHEN `ZCL_LNT_PRFRRD_CMPR_OPRTR`.
        CREATE OBJECT result TYPE zcl_lnt_prfrrd_cmpr_oprtr.
      WHEN `ZCL_LNT_PRFX_IS_CRRNT_CLSS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_prfx_is_crrnt_clss_cnf.
      WHEN `ZCL_LNT_PRFX_IS_CRRNT_CLSS`.
        CREATE OBJECT result TYPE zcl_lnt_prfx_is_crrnt_clss.
      WHEN `ZCL_LNT_RDC_PRCDRL_CD_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_rdc_prcdrl_cd_cnf.
      WHEN `ZCL_LNT_REDUCE_PROCEDURAL_CODE`.
        CREATE OBJECT result TYPE zcl_lnt_reduce_procedural_code.
      WHEN `ZCL_LNT_RDC_STRNG_TMPLTS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_rdc_strng_tmplts_cnf.
      WHEN `ZCL_LNT_RDC_STRNG_TMPLTS`.
        CREATE OBJECT result TYPE zcl_lnt_rdc_strng_tmplts.
      WHEN `ZCL_LNT_RDNDNT_CNVRSN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_rdndnt_cnvrsn_cnf.
      WHEN `ZCL_LNT_REDUNDANT_CONVERSION`.
        CREATE OBJECT result TYPE zcl_lnt_redundant_conversion.
      WHEN `ZCL_LNT_RELEASE_IDOC_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_release_idoc_conf.
      WHEN `ZCL_LNT_RELEASE_IDOC`.
        CREATE OBJECT result TYPE zcl_lnt_release_idoc.
      WHEN `ZCL_LNT_RMV_DSCRPTNS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_rmv_dscrptns_cnf.
      WHEN `ZCL_LNT_REMOVE_DESCRIPTIONS`.
        CREATE OBJECT result TYPE zcl_lnt_remove_descriptions.
      WHEN `ZCL_LNT_RFC_ERRR_HNDLNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_rfc_errr_hndlng_cnf.
      WHEN `ZCL_LNT_RFC_ERROR_HANDLING`.
        CREATE OBJECT result TYPE zcl_lnt_rfc_error_handling.
      WHEN `ZCL_LNT_SLCT_ADD_ORDR_BY_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_slct_add_ordr_by_cnf.
      WHEN `ZCL_LNT_SELECT_ADD_ORDER_BY`.
        CREATE OBJECT result TYPE zcl_lnt_select_add_order_by.
      WHEN `ZCL_LNT_SLCT_PRFRMNC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_slct_prfrmnc_cnf.
      WHEN `ZCL_LNT_SELECT_PERFORMANCE`.
        CREATE OBJECT result TYPE zcl_lnt_select_performance.
      WHEN `ZCL_LNT_SLCT_SNGL_FLL_KY_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_slct_sngl_fll_ky_cnf.
      WHEN `ZCL_LNT_SELECT_SINGLE_FULL_KEY`.
        CREATE OBJECT result TYPE zcl_lnt_select_single_full_key.
      WHEN `ZCL_LNT_SLCTN_SCRN_NMNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_slctn_scrn_nmng_cnf.
      WHEN `ZCL_LNT_SLCTN_SCRN_NMNG`.
        CREATE OBJECT result TYPE zcl_lnt_slctn_scrn_nmng.
      WHEN `ZCL_LNT_SLC_SCRN_TXTS_MSSN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_slc_scrn_txts_mssn_cnf.
      WHEN `ZCL_LNT_SLCTN_SCRN_TXTS_MSSNG`.
        CREATE OBJECT result TYPE zcl_lnt_slctn_scrn_txts_mssng.
      WHEN `ZCL_LNT_SEQUENTIAL_BLANK_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_sequential_blank_conf.
      WHEN `ZCL_LNT_SEQUENTIAL_BLANK`.
        CREATE OBJECT result TYPE zcl_lnt_sequential_blank.
      WHEN `ZCL_LNT_SHORT_CASE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_short_case_conf.
      WHEN `ZCL_LNT_SHORT_CASE`.
        CREATE OBJECT result TYPE zcl_lnt_short_case.
      WHEN `ZCL_LNT_SICF_CONSISTENCY_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_sicf_consistency_conf.
      WHEN `ZCL_LNT_SICF_CONSISTENCY`.
        CREATE OBJECT result TYPE zcl_lnt_sicf_consistency.
      WHEN `ZCL_LNT_SLW_PRMTR_PSSNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_slw_prmtr_pssng_cnf.
      WHEN `ZCL_LNT_SLOW_PARAMETER_PASSING`.
        CREATE OBJECT result TYPE zcl_lnt_slow_parameter_passing.
      WHEN `ZCL_LNT_SMIM_CONSISTENCY_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_smim_consistency_conf.
      WHEN `ZCL_LNT_SMIM_CONSISTENCY`.
        CREATE OBJECT result TYPE zcl_lnt_smim_consistency.
      WHEN `ZCL_LNT_SPC_BFR_CLN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_spc_bfr_cln_cnf.
      WHEN `ZCL_LNT_SPACE_BEFORE_COLON`.
        CREATE OBJECT result TYPE zcl_lnt_space_before_colon.
      WHEN `ZCL_LNT_SPACE_BEFORE_DOT_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_space_before_dot_conf.
      WHEN `ZCL_LNT_SPACE_BEFORE_DOT`.
        CREATE OBJECT result TYPE zcl_lnt_space_before_dot.
      WHEN `ZCL_LNT_SQL_ESCP_HST_VRBLS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_sql_escp_hst_vrbls_cnf.
      WHEN `ZCL_LNT_SQL_ESCP_HST_VRBLS`.
        CREATE OBJECT result TYPE zcl_lnt_sql_escp_hst_vrbls.
      WHEN `ZCL_LNT_SQL_VL_CNVRSN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_sql_vl_cnvrsn_cnf.
      WHEN `ZCL_LNT_SQL_VALUE_CONVERSION`.
        CREATE OBJECT result TYPE zcl_lnt_sql_value_conversion.
      WHEN `ZCL_LNT_START_AT_TAB_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_start_at_tab_conf.
      WHEN `ZCL_LNT_START_AT_TAB`.
        CREATE OBJECT result TYPE zcl_lnt_start_at_tab.
      WHEN `ZCL_LNT_STTC_CLL_V_INSTNC_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_sttc_cll_v_instnc_cnf.
      WHEN `ZCL_LNT_STTC_CLL_V_INSTNC`.
        CREATE OBJECT result TYPE zcl_lnt_sttc_cll_v_instnc.
      WHEN `ZCL_LNT_STRICT_SQL_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_strict_sql_conf.
      WHEN `ZCL_LNT_STRICT_SQL`.
        CREATE OBJECT result TYPE zcl_lnt_strict_sql.
      WHEN `ZCL_LNT_SUPERCLASS_FINAL_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_superclass_final_conf.
      WHEN `ZCL_LNT_SUPERCLASS_FINAL`.
        CREATE OBJECT result TYPE zcl_lnt_superclass_final.
      WHEN `ZCL_LNT_SUPERFLUOUS_VALUE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_superfluous_value_conf.
      WHEN `ZCL_LNT_SUPERFLUOUS_VALUE`.
        CREATE OBJECT result TYPE zcl_lnt_superfluous_value.
      WHEN `ZCL_LNT_SY_MODIFICATION_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_sy_modification_conf.
      WHEN `ZCL_LNT_SY_MODIFICATION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_modification.
      WHEN `ZCL_LNT_SY_RD_RSTRCTN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_sy_rd_rstrctn_cnf.
      WHEN `ZCL_LNT_SY_READ_RESTRICTION`.
        CREATE OBJECT result TYPE zcl_lnt_sy_read_restriction.
      WHEN `ZCL_LNT_TBL_ENHNCMNT_CTGRY_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_tbl_enhncmnt_ctgry_cnf.
      WHEN `ZCL_LNT_TBL_ENHNCMNT_CTGRY`.
        CREATE OBJECT result TYPE zcl_lnt_tbl_enhncmnt_ctgry.
      WHEN `ZCL_LNT_TBLS_DCLRD_LCLLY_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_tbls_dclrd_lclly_cnf.
      WHEN `ZCL_LNT_TBLS_DCLRD_LCLLY`.
        CREATE OBJECT result TYPE zcl_lnt_tbls_dclrd_lclly.
      WHEN `ZCL_LNT_TRY_WITHOUT_CATCH_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_try_without_catch_conf.
      WHEN `ZCL_LNT_TRY_WITHOUT_CATCH`.
        CREATE OBJECT result TYPE zcl_lnt_try_without_catch.
      WHEN `ZCL_LNT_TYP_FRM_PRMTRS_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_typ_frm_prmtrs_cnf.
      WHEN `ZCL_LNT_TYPE_FORM_PARAMETERS`.
        CREATE OBJECT result TYPE zcl_lnt_type_form_parameters.
      WHEN `ZCL_LNT_TYPES_NAMING_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_types_naming_conf.
      WHEN `ZCL_LNT_TYPES_NAMING`.
        CREATE OBJECT result TYPE zcl_lnt_types_naming.
      WHEN `ZCL_LNT_UNCGHT_EXCPTN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_uncght_excptn_cnf.
      WHEN `ZCL_LNT_UNCAUGHT_EXCEPTION`.
        CREATE OBJECT result TYPE zcl_lnt_uncaught_exception.
      WHEN `ZCL_LNT_UNKNOWN_TYPES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unknown_types_conf.
      WHEN `ZCL_LNT_UNKNOWN_TYPES`.
        CREATE OBJECT result TYPE zcl_lnt_unknown_types.
      WHEN `ZCL_LNT_UNNCSSRY_CHNNG_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_unncssry_chnng_cnf.
      WHEN `ZCL_LNT_UNNECESSARY_CHAINING`.
        CREATE OBJECT result TYPE zcl_lnt_unnecessary_chaining.
      WHEN `ZCL_LNT_UNNCSSRY_PRGM_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_unncssry_prgm_cnf.
      WHEN `ZCL_LNT_UNNECESSARY_PRAGMA`.
        CREATE OBJECT result TYPE zcl_lnt_unnecessary_pragma.
      WHEN `ZCL_LNT_UNNCSSRY_RTRN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_unncssry_rtrn_cnf.
      WHEN `ZCL_LNT_UNNECESSARY_RETURN`.
        CREATE OBJECT result TYPE zcl_lnt_unnecessary_return.
      WHEN `ZCL_LNT_UNREACHABLE_CODE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unreachable_code_conf.
      WHEN `ZCL_LNT_UNREACHABLE_CODE`.
        CREATE OBJECT result TYPE zcl_lnt_unreachable_code.
      WHEN `ZCL_LNT_UNSECURE_FAE_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unsecure_fae_conf.
      WHEN `ZCL_LNT_UNSECURE_FAE`.
        CREATE OBJECT result TYPE zcl_lnt_unsecure_fae.
      WHEN `ZCL_LNT_UNUSED_DDIC_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unused_ddic_conf.
      WHEN `ZCL_LNT_UNUSED_DDIC`.
        CREATE OBJECT result TYPE zcl_lnt_unused_ddic.
      WHEN `ZCL_LNT_UNUSED_MACROS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unused_macros_conf.
      WHEN `ZCL_LNT_UNUSED_MACROS`.
        CREATE OBJECT result TYPE zcl_lnt_unused_macros.
      WHEN `ZCL_LNT_UNUSED_METHODS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unused_methods_conf.
      WHEN `ZCL_LNT_RL_UNUSED_METHODS_W_AR`.
        CREATE OBJECT result TYPE zcl_lnt_rl_unused_methods_w_ar.
      WHEN `ZCL_LNT_UNUSED_METHODS`.
        CREATE OBJECT result TYPE zcl_lnt_unused_methods.
      WHEN `ZCL_LNT_RL_UNUSED_TYPES_WRK_AR`.
        CREATE OBJECT result TYPE zcl_lnt_rl_unused_types_wrk_ar.
      WHEN `ZCL_LNT_UNUSED_TYPES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unused_types_conf.
      WHEN `ZCL_LNT_UNUSED_TYPES`.
        CREATE OBJECT result TYPE zcl_lnt_unused_types.
      WHEN `ZCL_LNT_UNUSED_VARIABLES_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_unused_variables_conf.
      WHEN `ZCL_LNT_RL_UNUSED_VARIABL_W_AR`.
        CREATE OBJECT result TYPE zcl_lnt_rl_unused_variabl_w_ar.
      WHEN `ZCL_LNT_UNUSED_VARIABLES`.
        CREATE OBJECT result TYPE zcl_lnt_unused_variables.
      WHEN `ZCL_LNT_US_BL_EXPRSSN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_us_bl_exprssn_cnf.
      WHEN `ZCL_LNT_USE_BOOL_EXPRESSION`.
        CREATE OBJECT result TYPE zcl_lnt_use_bool_expression.
      WHEN `ZCL_LNT_US_CLSS_BSD_EXCPTN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_us_clss_bsd_excptn_cnf.
      WHEN `ZCL_LNT_US_CLSS_BSD_EXCPTNS`.
        CREATE OBJECT result TYPE zcl_lnt_us_clss_bsd_excptns.
      WHEN `ZCL_LNT_USE_LINE_EXISTS_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_use_line_exists_conf.
      WHEN `ZCL_LNT_USE_LINE_EXISTS`.
        CREATE OBJECT result TYPE zcl_lnt_use_line_exists.
      WHEN `ZCL_LNT_USE_NEW_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_use_new_conf.
      WHEN `ZCL_LNT_USE_NEW`.
        CREATE OBJECT result TYPE zcl_lnt_use_new.
      WHEN `ZCL_LNT_WHEN_OTHERS_LAST_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_when_others_last_conf.
      WHEN `ZCL_LNT_WHEN_OTHERS_LAST`.
        CREATE OBJECT result TYPE zcl_lnt_when_others_last.
      WHEN `ZCL_LNT_WHITESPACE_END_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_whitespace_end_conf.
      WHEN `ZCL_LNT_WHITESPACE_END`.
        CREATE OBJECT result TYPE zcl_lnt_whitespace_end.
      WHEN `ZCL_LNT_WRNG_ABPDC_PSTN_CNF`.
        CREATE OBJECT result TYPE zcl_lnt_wrng_abpdc_pstn_cnf.
      WHEN `ZCL_LNT_WRONG_ABAPDOC_POSITION`.
        CREATE OBJECT result TYPE zcl_lnt_wrong_abapdoc_position.
      WHEN `ZCL_LNT_XMLBOM_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_xmlbom_conf.
      WHEN `ZCL_LNT_XMLBOM`.
        CREATE OBJECT result TYPE zcl_lnt_xmlbom.
      WHEN `ZCL_LNT_XML_CONSISTENCY_CONF`.
        CREATE OBJECT result TYPE zcl_lnt_xml_consistency_conf.
      WHEN `ZCL_LNT_XML_CONSISTENCY`.
        CREATE OBJECT result TYPE zcl_lnt_xml_consistency.
      WHEN `ZCL_LNT_SYNTAX_PERFORMANCE`.
        CREATE OBJECT result TYPE zcl_lnt_syntax_performance.
      WHEN `ZCL_LNT_CYCLMTC_CMPLXTY_STTS`.
        CREATE OBJECT result TYPE zcl_lnt_cyclmtc_cmplxty_stts.
      WHEN `ZCL_LNT_EXCLUDE_HELPER`.
        CREATE OBJECT result TYPE zcl_lnt_exclude_helper.
      WHEN `ZCL_LNT_FORM_LENGTH_STATS`.
        CREATE OBJECT result TYPE zcl_lnt_form_length_stats.
      WHEN `ZCL_LNT_FUNCTION_LENGTH_STATS`.
        CREATE OBJECT result TYPE zcl_lnt_function_length_stats.
      WHEN `ZCL_LNT_GRAPH`.
        CREATE OBJECT result TYPE zcl_lnt_graph.
      WHEN `ZCL_LNT_METHOD_LENGTH_STATS`.
        CREATE OBJECT result TYPE zcl_lnt_method_length_stats.
      WHEN `ZCL_LNT_NAME_VALIDATOR`.
        CREATE OBJECT result TYPE zcl_lnt_name_validator.
      WHEN `ZCL_LNT_REGISTRY_RUN`.
        CREATE OBJECT result TYPE zcl_lnt_registry_run.
      WHEN `ZCL_LNT_LX_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_lx_index_module.
      WHEN `ZCL_LNT_ST_EXPRES_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_st_expres_index_module.
      WHEN `ZCL_LNT_ST_STATEM_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_st_statem_index_module.
      WHEN `ZCL_LNT_SR_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_index_module.
      WHEN `ZCL_LNT_ABP_FL_INFRMTN_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_abp_fl_infrmtn_mdl.
      WHEN `ZCL_LNT_TY_BASIC_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_ty_basic_index_module.
      WHEN `ZCL_LNT_INTERFACES_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_interfaces_module.
      WHEN `ZCL_LNT_OB_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_ob_index_module.
      WHEN `ZCL_LNT_RL_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_rl_index_module.
      WHEN `ZCL_LNT_SHAPE_9EAD17BD`.
        CREATE OBJECT result TYPE zcl_lnt_shape_9ead17bd.
      WHEN `ZCL_LNT_SHAPE_C44AE6D7`.
        CREATE OBJECT result TYPE zcl_lnt_shape_c44ae6d7.
      WHEN `ZCL_LNT_SHAPE_BE772522`.
        CREATE OBJECT result TYPE zcl_lnt_shape_be772522.
      WHEN `ZCL_LNT_SHAPE_F7FB0253`.
        CREATE OBJECT result TYPE zcl_lnt_shape_f7fb0253.
      WHEN `ZCL_LNT_SHAPE_BF434F34`.
        CREATE OBJECT result TYPE zcl_lnt_shape_bf434f34.
      WHEN `ZCL_LNT_SHAPE_4358CB83`.
        CREATE OBJECT result TYPE zcl_lnt_shape_4358cb83.
      WHEN `ZCL_LNT_SHAPE_99DA29A3`.
        CREATE OBJECT result TYPE zcl_lnt_shape_99da29a3.
      WHEN `ZCL_LNT_SHAPE_FD0479B1`.
        CREATE OBJECT result TYPE zcl_lnt_shape_fd0479b1.
      WHEN `ZCL_LNT_BUILTIN_E8B3BD7E`.
        CREATE OBJECT result TYPE zcl_lnt_builtin_e8b3bd7e.
      WHEN `ZCL_LNT_SHAPE_9D228663`.
        CREATE OBJECT result TYPE zcl_lnt_shape_9d228663.
      WHEN `ZCL_LNT_SHAPE_1ADC9D0C`.
        CREATE OBJECT result TYPE zcl_lnt_shape_1adc9d0c.
      WHEN `ZCL_LNT_SHAPE_63D6A181`.
        CREATE OBJECT result TYPE zcl_lnt_shape_63d6a181.
      WHEN `ZCL_LNT_SHAPE_C7BFD3D6`.
        CREATE OBJECT result TYPE zcl_lnt_shape_c7bfd3d6.
      WHEN `ZCL_LNT_SHAPE_59E28496`.
        CREATE OBJECT result TYPE zcl_lnt_shape_59e28496.
      WHEN `ZCL_LNT_SHAPE_A38E878F`.
        CREATE OBJECT result TYPE zcl_lnt_shape_a38e878f.
      WHEN `ZCL_LNT_SHAPE_28FAC025`.
        CREATE OBJECT result TYPE zcl_lnt_shape_28fac025.
      WHEN `ZCL_LNT_SHAPE_33D96643`.
        CREATE OBJECT result TYPE zcl_lnt_shape_33d96643.
      WHEN `ZCL_LNT_SHAPE_0DBCB8A9`.
        CREATE OBJECT result TYPE zcl_lnt_shape_0dbcb8a9.
      WHEN `ZCL_LNT_ABSTRACT_TYPE_DATA`.
        CREATE OBJECT result TYPE zcl_lnt_abstract_type_data.
      WHEN `ZCL_LNT_SHAPE_E0536868`.
        CREATE OBJECT result TYPE zcl_lnt_shape_e0536868.
      WHEN `ZCL_LNT_SHAPE_16A9D8B6`.
        CREATE OBJECT result TYPE zcl_lnt_shape_16a9d8b6.
      WHEN `ZCL_LNT_SHAPE_801341E6`.
        CREATE OBJECT result TYPE zcl_lnt_shape_801341e6.
      WHEN `ZCL_LNT_SHAPE_E77D6389`.
        CREATE OBJECT result TYPE zcl_lnt_shape_e77d6389.
      WHEN `ZCL_LNT_SHAPE_63D7D0D8`.
        CREATE OBJECT result TYPE zcl_lnt_shape_63d7d0d8.
      WHEN `ZCL_LNT_SHAPE_2D2F513B`.
        CREATE OBJECT result TYPE zcl_lnt_shape_2d2f513b.
      WHEN `ZCL_LNT_SHAPE_D48DA73B`.
        CREATE OBJECT result TYPE zcl_lnt_shape_d48da73b.
      WHEN `ZCL_LNT_SHAPE_88C047D7`.
        CREATE OBJECT result TYPE zcl_lnt_shape_88c047d7.
      WHEN `ZCL_LNT_SHAPE_90553F00`.
        CREATE OBJECT result TYPE zcl_lnt_shape_90553f00.
      WHEN `ZCL_LNT_PRSD_MTDT_EXTNSN`.
        CREATE OBJECT result TYPE zcl_lnt_prsd_mtdt_extnsn.
      WHEN `ZCL_LNT_SHAPE_E272B380`.
        CREATE OBJECT result TYPE zcl_lnt_shape_e272b380.
      WHEN `ZCL_LNT_SHAPE_66ADD1D1`.
        CREATE OBJECT result TYPE zcl_lnt_shape_66add1d1.
      WHEN `ZCL_LNT_SHAPE_01C562B5`.
        CREATE OBJECT result TYPE zcl_lnt_shape_01c562b5.
      WHEN `ZCL_LNT_SHAPE_B346F020`.
        CREATE OBJECT result TYPE zcl_lnt_shape_b346f020.
      WHEN `ZCL_LNT_SHAPE_55554241`.
        CREATE OBJECT result TYPE zcl_lnt_shape_55554241.
      WHEN `ZCL_LNT_SHAPE_0B343CF6`.
        CREATE OBJECT result TYPE zcl_lnt_shape_0b343cf6.
      WHEN `ZCL_LNT_SHAPE_C9BC8812`.
        CREATE OBJECT result TYPE zcl_lnt_shape_c9bc8812.
      WHEN `ZCL_LNT_SHAPE_71A973D8`.
        CREATE OBJECT result TYPE zcl_lnt_shape_71a973d8.
      WHEN `ZCL_LNT_SHAPE_C295E2A7`.
        CREATE OBJECT result TYPE zcl_lnt_shape_c295e2a7.
      WHEN `ZCL_LNT_SHAPE_CDA19F43`.
        CREATE OBJECT result TYPE zcl_lnt_shape_cda19f43.
      WHEN `ZCL_LNT_PARSED_MESSAGE_CLASS`.
        CREATE OBJECT result TYPE zcl_lnt_parsed_message_class.
      WHEN `ZCL_LNT_SHAPE_C0ACC5F0`.
        CREATE OBJECT result TYPE zcl_lnt_shape_c0acc5f0.
      WHEN `ZCL_LNT_SHAPE_F96FB7AA`.
        CREATE OBJECT result TYPE zcl_lnt_shape_f96fb7aa.
      WHEN `ZCL_LNT_SHAPE_2CD2650E`.
        CREATE OBJECT result TYPE zcl_lnt_shape_2cd2650e.
      WHEN `ZCL_LNT_SHAPE_50070DD1`.
        CREATE OBJECT result TYPE zcl_lnt_shape_50070dd1.
      WHEN `ZCL_LNT_SHAPE_59E889F5`.
        CREATE OBJECT result TYPE zcl_lnt_shape_59e889f5.
      WHEN `ZCL_LNT_SHAPE_11F50E23`.
        CREATE OBJECT result TYPE zcl_lnt_shape_11f50e23.
      WHEN `ZCL_LNT_SHAPE_C1D59DC9`.
        CREATE OBJECT result TYPE zcl_lnt_shape_c1d59dc9.
      WHEN `ZCL_LNT_SHAPE_3940DAAB`.
        CREATE OBJECT result TYPE zcl_lnt_shape_3940daab.
      WHEN `ZCL_LNT_SHAPE_E8FB1D71`.
        CREATE OBJECT result TYPE zcl_lnt_shape_e8fb1d71.
      WHEN `ZCL_LNT_SHAPE_5BD99AC8`.
        CREATE OBJECT result TYPE zcl_lnt_shape_5bd99ac8.
      WHEN `ZCL_LNT_SLCT_RCLSSFY_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_slct_rclssfy_mdl.
      WHEN `ZCL_LNT_ST_COMBI_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_st_combi_module.
      WHEN `ZCL_LNT_DERIVED_TYPES_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_derived_types_module.
      WHEN `ZCL_LNT_DYNAMIC_ACCESS_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_dynamic_access_module.
      WHEN `ZCL_LNT_LOB_HANDLE_TYPE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_lob_handle_type_module.
      WHEN `ZCL_LNT_SELECT_CORE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_select_core_module.
      WHEN `ZCL_LNT_SR_COMBI_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sr_combi_module.
      WHEN `ZCL_LNT_SYNTAX_INPUT_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_syntax_input_module.
      WHEN `ZCL_LNT_CHCK_DTBS_FLDS_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_chck_dtbs_flds_mdl.
      WHEN `ZCL_LNT_CHCK_OFFST_LNGTH_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_chck_offst_lngth_mdl.
      WHEN `ZCL_LNT_SYNTAX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_syntax_module.
      WHEN `ZCL_LNT_DYNPROS_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_dynpros_module.
      WHEN `ZCL_LNT_INCLUDE_GRAPH_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_include_graph_module.
      WHEN `ZCL_LNT_VERSION_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_version_module.
      WHEN `ZCL_LNT_XML_UTILS_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_xml_utils_module.
      WHEN `ZCL_LNT_LEXER_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_lexer_module.
      WHEN `ZCL_LNT_LEXER_STREAM_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_lexer_stream_module.
      WHEN `ZCL_LNT_SQL_AGGREGATION_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_aggregation_module.
      WHEN `ZCL_LNT_SQL_FUNCTION_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_function_module.
      WHEN `ZCL_LNT_SQL_OVER_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_over_module.
      WHEN `ZCL_LNT_SQL_TYPD_LTRL_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_sql_typd_ltrl_mdl.
      WHEN `ZCL_LNT_STTMNT_PRSR_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_sttmnt_prsr_mdl.
      WHEN `ZCL_LNT_SELECT_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_select_module.
      WHEN `ZCL_LNT_SQL_IN_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_sql_in_module.
      WHEN `ZCL_LNT_ABSTRACT_NODE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_abstract_node_module.
      WHEN `ZCL_LNT_STATEMENT_NODE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_statement_node_module.
      WHEN `ZCL_LNT_TOKEN_NODE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_token_node_module.
      WHEN `ZCL_LNT_CDS_NAME_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_cds_name_module.
      WHEN `ZCL_LNT_CDS_RELATION_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_cds_relation_module.
      WHEN `ZCL_LNT_SEMANTIC_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_semantic_module.
      WHEN `ZCL_LNT_ALLWD_OBJCT_NMNG_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_allwd_objct_nmng_mdl.
      WHEN `ZCL_LNT_CDS_CHCK_SYNTX_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_cds_chck_syntx_mdl.
      WHEN `ZCL_LNT_DEFINITIONS_TOP_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_definitions_top_module.
      WHEN `ZCL_LNT_NO_PREFIXES_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_no_prefixes_module.
      WHEN `ZCL_LNT_PRFR_ABP_BL_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_prfr_abp_bl_mdl.
      WHEN `ZCL_LNT_SLCT_PRFRMNC_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_slct_prfrmnc_mdl.
      WHEN `ZCL_LNT_SY_RD_RSTRCTN_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_sy_rd_rstrctn_mdl.
      WHEN `ZCL_LNT_STUFF_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_stuff_module.
      WHEN `ZCL_LNT_SHAPE_27CFCABC`.
        CREATE OBJECT result TYPE zcl_lnt_shape_27cfcabc.
      WHEN `ZCL_LNT_VISIBILITY_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_visibility_module.
      WHEN `ZCL_LNT_REFERENCE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_reference_module.
      WHEN `ZCL_LNT_SCOPE_TYPE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_scope_type_module.
      WHEN `ZCL_LNT_TYPD_IDNTFR_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_typd_idntfr_mdl.
      WHEN `ZCL_LNT_TABLE_TYPE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_table_type_module.
      WHEN `ZCL_LNT_FNCTN_MDL_DFNTN_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_fnctn_mdl_dfntn_mdl.
      WHEN `ZCL_LNT_CDS_LEXER_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_cds_lexer_module.
      WHEN `ZCL_LNT_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_index_module.
      WHEN `ZCL_LNT_RENAME_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_rename_module.
      WHEN `ZCL_LNT_CLASS_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_class_module.
      WHEN `ZCL_LNT_TABLE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_table_module.
      WHEN `ZCL_LNT_IRULE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_irule_module.
      WHEN `ZCL_LNT_CHECK_ABSTRACT_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_check_abstract_module.
      WHEN `ZCL_LNT_CHECK_COMMENTS_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_check_comments_module.
      WHEN `ZCL_LNT_KEYWORD_CASE_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_keyword_case_module.
      WHEN `ZCL_LNT_METHOD_LENGTH_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_method_length_module.
      WHEN `ZCL_LNT_NWLN_BTWN_MTHDS_MDL`.
        CREATE OBJECT result TYPE zcl_lnt_nwln_btwn_mthds_mdl.
      WHEN `ZCL_LNT_SEVERITY_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_severity_module.
      WHEN `ZCL_LNT_SHAPE_DFEB56FD`.
        CREATE OBJECT result TYPE zcl_lnt_shape_dfeb56fd.
      WHEN `ZCL_LNT_SHAPE_4D146093`.
        CREATE OBJECT result TYPE zcl_lnt_shape_4d146093.
      WHEN `ZCL_LNT_SHAPE_EF834E92`.
        CREATE OBJECT result TYPE zcl_lnt_shape_ef834e92.
      WHEN `ZCL_LNT_MAIN_D_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_main_d_module.
      WHEN `ZCL_LNT_ND_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_nd_index_module.
      WHEN `ZCL_LNT_TY_TYPES_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_ty_types_index_module.
      WHEN `ZCL_LNT_CD_INDEX_MODULE`.
        CREATE OBJECT result TYPE zcl_lnt_cd_index_module.
      WHEN `ZCL_LNT_SHAPE_05E4949E`.
        CREATE OBJECT result TYPE zcl_lnt_shape_05e4949e.
      WHEN `ZCL_LNT_SHAPE_F2185CD1`.
        CREATE OBJECT result TYPE zcl_lnt_shape_f2185cd1.
      WHEN OTHERS.
        CREATE OBJECT result TYPE (class_name).
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
