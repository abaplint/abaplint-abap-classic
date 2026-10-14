* TS: src/rules/downport.ts:139:1 Downport
CLASS zcl_lnt_downport DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA low_reg TYPE REF TO zif_lnt_registry.
    DATA high_reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_downport_conf.
    DATA counter TYPE int8.
    DATA graph TYPE REF TO zcl_lnt_include_graph.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cnf_ins_src_rls_dwn_ts_dwnp RETURNING VALUE(result) TYPE REF TO zcl_lnt_downport_conf.
    METHODS st_cnf_ins_src_rls_dwn_ts_dwnp IMPORTING i_conf TYPE REF TO zcl_lnt_downport_conf.
    METHODS intl_inst_src_rls_dwnp_ts_dwnp IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_downport.
    METHODS list_main_for_include IMPORTING i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS contains_error IMPORTING i_high_obj TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS rn_inst_src_rls_dwnpr_ts_dwnpr IMPORTING i_low_obj TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS init_high_reg.
    METHODS check_statement IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result i_high_file TYPE
    REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_sql_move_into IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_4c7a TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_sql_extras IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_select_existence IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_select_inline IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_select_fields IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_4c7a TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_select_single_inline IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_4c7a TYPE REF TO zcl_lnt_isyntax_result
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_select_table_inline IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS anonymous_table_type IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_message IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS replace_append_expression IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_read_table IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_message_source IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS replace_insert_expression IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS replace_table_expression IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS table_condition IMPORTING i_table_expression TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE string.
    METHODS otln_tbl_exprssn_ky_bltn IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS builtin_return_type IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS outline_catch_simple IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_get_reference_simple IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_data_simple IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS partially_implemented IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS raise_exception IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS empty_key IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS call_function_parameter_simple IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_corresponding_simple IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_ref_simple IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_loop_group IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result i_high_file TYPE REF TO zcl_lnt_abap_file RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_ref IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS assign_with_table IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS assign_component IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS move_with_simple_value IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS downport_enum IMPORTING i_low_51a5 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_4c7a TYPE REF TO zcl_lnt_isyntax_result i_high_file TYPE REF
    TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS move_with_table_target IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS move_with_operator IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS string_template_alpha IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_loop_input IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_loop_target IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_for IMPORTING i_for_loop TYPE REF TO zcl_lnt_expression_node i_indentation TYPE string i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO
    zcl_lnt_shape_b9e98cea.
    METHODS outline_filter IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_switch IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_reduce IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_corresponding IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_value IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_let IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_indentation TYPE string i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE string.
    METHODS rename_variable IMPORTING i_spag TYPE REF TO zif_lnt_spaghetti_scope_node i_name TYPE string i_pos TYPE REF TO zcl_lnt_position i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result.
    METHODS find_type IMPORTING i_i TYPE REF TO zcl_lnt_expression_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result i_ref TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result)
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS outline_fs IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result)
    TYPE REF TO zcl_lnt_issue.
    METHODS outline_data IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS outline_cond IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS build_cond_body IMPORTING i_body TYPE REF TO zcl_lnt_expression_node i_unique_name TYPE string i_indent TYPE string i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE string.
    METHODS outline_conv IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS find_row_type_of IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_source_75cf TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS outline_cast IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS unique_name IMPORTING i_position_a3fd TYPE REF TO zcl_lnt_position i_filename TYPE string i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result i_field_symbol_275d TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE string.
    METHODS exists_recursive IMPORTING i_spag TYPE REF TO zif_lnt_spaghetti_scope_node i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS strp_cll_trnsctn_athrty_chck IMPORTING i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS replace_xsd_bool IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS find_method_call_expression IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS replace_method_conditional IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS get_reference_1fe8 IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_4c7a TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS replace_contains IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS replace_line_functions IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result i_high_file TYPE REF TO zcl_lnt_abap_file RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS find_start_of_if IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_high_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS new_to_create_object IMPORTING i_low_a740 TYPE REF TO zcl_lnt_statement_node i_high TYPE REF TO zcl_lnt_statement_node i_low_file TYPE REF TO zcl_lnt_abap_file i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS new_parameters IMPORTING i_found TYPE REF TO zcl_lnt_expression_node i_name TYPE string i_high_syntax_2023 TYPE REF TO zcl_lnt_isyntax_result i_low_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_constructor IMPORTING i_cdef TYPE REF TO zif_lnt_class_definition i_spag TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_downport IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_downport_conf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |downport|.
    DATA(t3) = |Downport statement|.
    DATA(t4) = |Downport functionality|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Much like the 'commented_code' rule this rule loops through |.
      t9 = t9 && |unknown statements and tries parsing with|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |a higher level language version. If successful, various rule|.
      t9 = t9 && |s are applied to downport the statement.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Target downport version is always v702, thus rule is only en|.
      t9 = t9 && |abled if target version is v702.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t12 INTO t9 RESPECTING BLANKS.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t13 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Current rules:|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t14 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* NEW transformed to CREATE OBJECT, opposite of https://rule|.
      t9 = t9 && |s.abaplint.org/use_new/|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t15 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* DATA() definitions are outlined, opposite of https://rules|.
      t9 = t9 && |.abaplint.org/prefer_inline/|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t16 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* FIELD-SYMBOL() definitions are outlined|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t17 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* CONV is outlined|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t18 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* COND is outlined|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t19 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* REDUCE is outlined|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t20 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* SWITCH is outlined|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t21 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* FILTER is outlined|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t22 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* APPEND expression is outlined|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t23 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* INSERT expression is outlined|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t24 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* EMPTY KEY is changed to DEFAULT KEY, opposite of DEFAULT K|.
      t9 = t9 && |EY in https://rules.abaplint.org/avoid_use/|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t25 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* CAST changed to ?=|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t26 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* LOOP AT method_call( ) is outlined|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t27 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* VALUE # with structure fields|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t28 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* VALUE # with internal table lines|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t29 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Table Expressions are outlined|.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t30 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* SELECT INTO @DATA definitions are outlined|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t31 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Some occurrences of string template formatting option ALPH|.
      t9 = t9 && |A changed to function module call|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t32 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* SELECT/INSERT/MODIFY/DELETE/UPDATE "," in field list remov|.
      t9 = t9 && |ed, "@" in source/targets removed|.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t33 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* PARTIALLY IMPLEMENTED removed, it can be quick fixed via r|.
      t9 = t9 && |ule implement_methods|.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t34 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* RAISE EXCEPTION ... MESSAGE|.
      DATA t35 TYPE c LENGTH 1.
      CLEAR t35.
      t35 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t35 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Moving with +=, -=, /=, *=, &&= is expanded|.
      DATA t36 TYPE c LENGTH 1.
      CLEAR t36.
      t36 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t36 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* line_exists and line_index is downported to READ TABLE|.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t37 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* ENUMs, but does not nessesarily give the correct type and |.
      t9 = t9 && |value|.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t38 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* MESSAGE with non simple source|.
      DATA t39 TYPE c LENGTH 1.
      CLEAR t39.
      t39 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t39 INTO t9 RESPECTING BLANKS.
      DATA t40 TYPE c LENGTH 1.
      CLEAR t40.
      t40 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t40 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Only one transformation is applied to a statement at a time,|.
      t9 = t9 && | so multiple steps might be required to do the full downport|.
      t9 = t9 && |.|.
      DATA t41 TYPE c LENGTH 1.
      CLEAR t41.
      t41 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t41 INTO t9 RESPECTING BLANKS.
      DATA t42 TYPE c LENGTH 1.
      CLEAR t42.
      t42 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t42 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Make sure to test the downported code, it might not always b|.
      t9 = t9 && |e completely correct.|.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t9.
      t7 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t7 = t44.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t45.
    DATA(t46) = abap_true.
    IF t46 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t49.
      t48 = t49.
      DATA(t50) = CAST zlnt_runtime_arra_8ecd6afe19e0( t48 ).
      DATA(t51) = |Downport|.
      APPEND t51 TO t50->items.
      DATA(t52) = CAST zlnt_runtime_arra_8ecd6afe19e0( t48 ).
      DATA(t53) = |Quickfix|.
      APPEND t53 TO t52->items.
      DATA(t54) = CAST zlnt_runtime_arra_8ecd6afe19e0( t48 ).
      t47 = t54.
      t45 = t47.
    ELSE.
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t55.
      t45 = t55.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t57.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t45 i_pragma = t56 i_pseudo_comment = t57 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cnf_ins_src_rls_dwn_ts_dwnp.
    DATA(t1) = CAST zcl_lnt_downport_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cnf_ins_src_rls_dwn_ts_dwnp.
    DATA(t1) = CAST zcl_lnt_downport_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:193|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD intl_inst_src_rls_dwnp_ts_dwnp.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:197|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD list_main_for_include.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_filename ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:206|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD contains_error.
    DATA(t1) = CAST zcl_lnt_abap_object( i_high_obj ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:217|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_inst_src_rls_dwnpr_ts_dwnpr.
    DATA(t1) = CAST zif_lnt_object( i_low_obj ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:232|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD init_high_reg.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/downport.ts:363|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD check_statement.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = CAST zcl_lnt_abap_file( i_high_file ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/downport.ts:387|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD downport_sql_move_into.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_4c7a ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:668|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD downport_sql_extras.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:713|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD downport_select_existence.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:793|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD downport_select_inline.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:824|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD downport_select_fields.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_4c7a ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:846|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD downport_select_single_inline.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_4c7a ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:870|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD downport_select_table_inline.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:939|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD anonymous_table_type.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1017|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD downport_message.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1036|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD replace_append_expression.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1067|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD downport_read_table.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1094|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD downport_message_source.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1113|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD replace_insert_expression.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1133|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD replace_table_expression.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:1160|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD table_condition.
    DATA(t1) = CAST zcl_lnt_expression_node( i_table_expression ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:1224|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD otln_tbl_exprssn_ky_bltn.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:1261|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD builtin_return_type.
    DATA(t1) = CAST zcl_lnt_expression_node( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1304|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD outline_catch_simple.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:1322|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD outline_get_reference_simple.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:1355|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD outline_data_simple.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1381|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD partially_implemented.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:1440|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD raise_exception.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1461|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD empty_key.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1558|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD call_function_parameter_simple.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1585|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD downport_corresponding_simple.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:1617|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD downport_ref_simple.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1653|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD downport_loop_group.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = CAST zcl_lnt_abap_file( i_high_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:1704|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD downport_ref.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:1829|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD assign_with_table.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1856|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD assign_component.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:1905|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD move_with_simple_value.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:1934|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD downport_enum.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_51a5 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_4c7a ).
    DATA(t5) = CAST zcl_lnt_abap_file( i_high_file ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/downport.ts:1987|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD move_with_table_target.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2025|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD move_with_operator.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:2075|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD string_template_alpha.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2124|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_loop_input.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2168|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_loop_target.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:2194|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD outline_for.
    DATA(t1) = CAST zcl_lnt_expression_node( i_for_loop ).
    DATA(t2) = i_indentation.
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2258|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_filter.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2390|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_switch.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2438|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_reduce.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2514|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_corresponding.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2611|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_value.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2658|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_let.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = i_indentation.
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2808|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD rename_variable.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_spag ).
    DATA(t2) = i_name.
    DATA(t3) = CAST zcl_lnt_position( i_pos ).
    DATA(t4) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t5) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/downport.ts:2846|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD find_type.
    DATA(t1) = CAST zcl_lnt_expression_node( i_i ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( i_ref ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2853|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_fs.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2892|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD outline_data.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:2935|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD outline_cond.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:2985|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD build_cond_body.
    DATA(t1) = CAST zcl_lnt_expression_node( i_body ).
    DATA(t2) = i_unique_name.
    DATA(t3) = i_indent.
    DATA(t4) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t5) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/downport.ts:3030|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD outline_conv.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:3080|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD find_row_type_of.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_expression_node( i_source_75cf ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:3123|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD outline_cast.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:3134|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD unique_name.
    DATA(t1) = CAST zcl_lnt_position( i_position_a3fd ).
    DATA(t2) = i_filename.
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( i_field_symbol_275d ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:3161|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD exists_recursive.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_spag ).
    DATA(t2) = i_name.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:3189|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD strp_cll_trnsctn_athrty_chck.
    DATA(t1) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:3206|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD replace_xsd_bool.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:3231|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD find_method_call_expression.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:3265|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD replace_method_conditional.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:3274|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD get_reference_1fe8.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_4c7a ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:3314|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD replace_contains.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/downport.ts:3337|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD replace_line_functions.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = CAST zcl_lnt_abap_file( i_high_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:3382|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD find_start_of_if.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_high_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:3446|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD new_to_create_object.
    DATA(t1) = CAST zcl_lnt_statement_node( i_low_a740 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_high ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:3460|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD new_parameters.
    DATA(t1) = CAST zcl_lnt_expression_node( i_found ).
    DATA(t2) = i_name.
    DATA(t3) = CAST zcl_lnt_isyntax_result( i_high_syntax_2023 ).
    DATA(t4) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:3520|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD find_constructor.
    DATA(t1) = CAST zif_lnt_class_definition( i_cdef ).
    DATA(t2) = CAST zif_lnt_spaghetti_scope_node( i_spag ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:3574|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_downport_conf( me->gt_cnf_ins_src_rls_dwn_ts_dwnp( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_downport_conf( me->gt_cnf_ins_src_rls_dwn_ts_dwnp( ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:193|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:197|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/downport.ts:232|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1385_aa4a9045c4f7.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
