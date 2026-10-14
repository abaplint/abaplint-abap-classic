* TS: src/rules/parser_missing_space.ts:15:1 ParserMissingSpace
CLASS zcl_lnt_parser_missing_space DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
    METHODS s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp IMPORTING i_conf TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
    METHODS r_p_i_s_r_pr_ms_sp_ts_pr_ms_sp IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS missing_space IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_sql_cond IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_new_object IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_cond_sub IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_component_cond_sub IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_component_cond IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_value_body_line IMPORTING i_vb TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_cond IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_source IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_method_call_param IMPORTING i_call_bc15 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser_missing_space IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prsr_mssng_spc_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |parser_missing_space|.
    DATA(t3) = |Parser Error, missing space|.
    DATA(t4) = |In special cases the ABAP language allows for not having spa|.
    t4 = t4 && |ces before or after string literals.|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |This rule makes sure the spaces are consistently required ac|.
    t4 = t4 && |ross the language.|.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA(t8) = |IF ( foo = 'bar').|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t8.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t6 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = |IF ( foo = 'bar' ).|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t13.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t11 = t15.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t21.
      t20 = t21.
      DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      DATA(t23) = |Syntax|.
      APPEND t23 TO t22->items.
      DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      DATA(t25) = |Whitespace|.
      APPEND t25 TO t24->items.
      DATA(t26) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      DATA(t27) = |SingleFile|.
      APPEND t27 TO t26->items.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      t19 = t28.
      t17 = t19.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t17 = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t6 i_good_example = t11 i_extended_information = t16 i_tags = t17 i_pragma = t30 i_pseudo_comment = t31 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    DATA(t1) = CAST zcl_lnt_prsr_mssng_spc_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    DATA(t1) = CAST zcl_lnt_prsr_mssng_spc_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:34|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD missing_space.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:55|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_sql_cond.
    DATA(t1) = CAST zcl_lnt_expression_node( i_cond ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:107|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_new_object.
    DATA(t1) = CAST zcl_lnt_expression_node( i_cond ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:131|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_cond_sub.
    DATA(t1) = CAST zcl_lnt_expression_node( i_cond ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:146|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_component_cond_sub.
    DATA(t1) = CAST zcl_lnt_expression_node( i_cond ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:171|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_component_cond.
    DATA(t1) = CAST zcl_lnt_expression_node( i_cond ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:196|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_value_body_line.
    DATA(t1) = CAST zcl_lnt_expression_node( i_vb ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:212|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_cond.
    DATA(t1) = CAST zcl_lnt_expression_node( i_cond ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:240|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_source.
    DATA(t1) = CAST zcl_lnt_expression_node( i_cond ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:272|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_method_call_param.
    DATA(t1) = CAST zcl_lnt_expression_node( i_call_bc15 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_missing_space.ts:305|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prsr_mssng_spc_cnf( me->g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prsr_mssng_spc_cnf( me->g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_ms_sp_ts_pr_ms_sp( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1548_39412f673ae2.
  ENDMETHOD.
ENDCLASS.
