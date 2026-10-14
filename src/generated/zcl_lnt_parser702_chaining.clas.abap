* TS: src/rules/parser_702_chaining.ts:14:1 Parser702Chaining
CLASS zcl_lnt_parser702_chaining DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_in_sr_rl_pr_70_ch_ts_pr_ch RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS s_c_in_sr_rl_pr_70_ch_ts_pr_ch IMPORTING i_conf TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS r_p_in_sr_rl_pr_70_ch_ts_pr_ch IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS ensr_src_hs_n_prcdrl_kywrds IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS push_issue IMPORTING i_message_26cb TYPE string i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser702_chaining IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prsr702_chnng_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |parser_702_chaining|.
    DATA(t3) = |Parser Error, bad chaining on 702|.
    DATA(t4) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
    t4 = t4 && |G/EXPORTING/CHANGING keywords,|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |this rule finds these and reports errors.|.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t6 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Only active on target version 702 and below.|.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t10.
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t13 = t14.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t13 ).
      DATA(t16) = |Syntax|.
      APPEND t16 TO t15->items.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t13 ).
      DATA(t18) = |SingleFile|.
      APPEND t18 TO t17->items.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t13 ).
      t12 = t19.
      t10 = t12.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      t10 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t7 i_good_example = t8 i_extended_information = t9 i_tags = t10 i_pragma = t21 i_pseudo_comment = t22 ).
    result = t1.

  ENDMETHOD.

  METHOD g_c_in_sr_rl_pr_70_ch_ts_pr_ch.
    DATA(t1) = CAST zcl_lnt_prsr702_chnng_cnf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD s_c_in_sr_rl_pr_70_ch_ts_pr_ch.
    DATA(t1) = CAST zcl_lnt_prsr702_chnng_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_702_chaining.ts:33|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD r_p_in_sr_rl_pr_70_ch_ts_pr_ch.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_702_chaining.ts:37|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD ensr_src_hs_n_prcdrl_kywrds.
    DATA(t1) = CAST zcl_lnt_expression_node( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/parser_702_chaining.ts:99|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD push_issue.
    DATA(t1) = i_message_26cb.
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/parser_702_chaining.ts:111|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prsr702_chnng_cnf( me->g_c_in_sr_rl_pr_70_ch_ts_pr_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prsr702_chnng_cnf( me->g_c_in_sr_rl_pr_70_ch_ts_pr_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_in_sr_rl_pr_70_ch_ts_pr_ch( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_in_sr_rl_pr_70_ch_ts_pr_ch( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1542_de7d4e6d2a91.
  ENDMETHOD.
ENDCLASS.
