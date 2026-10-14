* TS: src/rules/check_subrc.ts:26:1 CheckSubrc
CLASS zcl_lnt_check_subrc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_check_subrc_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ch_sb_ts_ch_sbr RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_subrc_conf.
    METHODS st_cn_in_sr_rl_ch_sb_ts_ch_sbr IMPORTING i_conf TYPE REF TO zcl_lnt_check_subrc_conf.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_fix.
    METHODS rn_pr_in_sr_rl_ch_sb_ts_ch_sbr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_simple_assign IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_exempted_find IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS checks_dbcnt IMPORTING i_index TYPE int8 i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_checked IMPORTING i_index TYPE int8 i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_subrc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_check_subrc_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |check_subrc|.
    DATA(t3) = |Check sy-subrc|.
    DATA(t4) = |Check sy-subrc|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
      t9 = t9 && |gs|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |If sy-dbcnt is checked after database statements, it is cons|.
      t9 = t9 && |idered okay.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t12 INTO t9 RESPECTING BLANKS.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t13 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |"SELECT SINGLE @abap_true FROM " is considered as an existen|.
      t9 = t9 && |ce check, also "SELECT COUNT( * )" is considered okay|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t14 INTO t9 RESPECTING BLANKS.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t15 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |If IS ASSIGNED is checked after assigning, it is considered |.
      t9 = t9 && |okay.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t16 INTO t9 RESPECTING BLANKS.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t17 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |FIND statement with MATCH COUNT is considered okay if subrc |.
      t9 = t9 && |is not checked|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t9.
      t7 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t7 = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t24.
      t23 = t24.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t26) = |SingleFile|.
      APPEND t26 TO t25->items.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t28) = |Quickfix|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      t22 = t29.
      t20 = t22.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      t20 = t30.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |##SUBRC_OK|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA(t37) = abap_true.
    IF t37 = abap_true.
      DATA(t38) = |EC CI_SUBRC|.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t38.
      t36 = t39.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      t36 = t40.
    ENDIF.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t20 i_pragma = t31 i_pseudo_comment = t36 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_ch_sb_ts_ch_sbr.
    DATA(t1) = CAST zcl_lnt_check_subrc_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_ch_sb_ts_ch_sbr.
    DATA(t1) = CAST zcl_lnt_check_subrc_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/check_subrc.ts:53|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD build_fix.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/check_subrc.ts:57|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_ch_sb_ts_ch_sbr.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/check_subrc.ts:64|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_simple_assign.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/check_subrc.ts:158|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_exempted_find.
    DATA(t1) = CAST zcl_lnt_statement_node( i_s ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/check_subrc.ts:169|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD checks_dbcnt.
    DATA(t1) = i_index.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/check_subrc.ts:174|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD is_checked.
    DATA(t1) = i_index.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/check_subrc.ts:190|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_check_subrc_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_ch_sb_ts_ch_sbr( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ch_sb_ts_ch_sbr( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1343_c715beb186c6.
  ENDMETHOD.
ENDCLASS.
