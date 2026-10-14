* TS: src/rules/dangerous_statement.ts:34:1 DangerousStatement
CLASS zcl_lnt_dangerous_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_statement TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_dn_st_ts_dn_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS st_cn_in_sr_rl_dn_st_ts_dn_stt IMPORTING i_conf TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS rn_pr_in_sr_rl_dn_st_ts_dn_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_dynamic_sql IMPORTING i_statement_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dangerous_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_dngrs_sttmnt_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |dangerous_statement|.
    DATA(t3) = |Dangerous statement|.
    DATA(t4) = |Detects potentially dangerous statements|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
      DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t8->has = abap_true.
      t8->value = t7.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t5 = t9.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA(t12) = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t10 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t18 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |dynamic SQL can potentially create SQL injection problems|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t17.
      t15 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t15 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t25.
      t24 = t25.
      DATA(t26) = CAST zlnt_runtime_arra_8ecd6afe19e0( t24 ).
      DATA(t27) = |SingleFile|.
      APPEND t27 TO t26->items.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t24 ).
      DATA(t29) = |Security|.
      APPEND t29 TO t28->items.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t24 ).
      t23 = t30.
      t21 = t23.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t31.
      t21 = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t21 i_pragma = t32 i_pseudo_comment = t33 ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = i_statement.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dangerous_statement.ts:51|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_dn_st_ts_dn_stt.
    DATA(t1) = CAST zcl_lnt_dngrs_sttmnt_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_dn_st_ts_dn_stt.
    DATA(t1) = CAST zcl_lnt_dngrs_sttmnt_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dangerous_statement.ts:59|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_dn_st_ts_dn_stt.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dangerous_statement.ts:63|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_dynamic_sql.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dangerous_statement.ts:123|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_dngrs_sttmnt_cnf( me->gt_cn_in_sr_rl_dn_st_ts_dn_stt(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_dngrs_sttmnt_cnf( me->gt_cn_in_sr_rl_dn_st_ts_dn_stt(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_dn_st_ts_dn_stt( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_dn_st_ts_dn_stt( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1374_ed21c460cae9.
  ENDMETHOD.
ENDCLASS.
