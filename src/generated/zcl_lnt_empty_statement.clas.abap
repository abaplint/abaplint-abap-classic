* TS: src/rules/empty_statement.ts:13:1 EmptyStatement
CLASS zcl_lnt_empty_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_empty_statement_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_em_st_ts_em_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_empty_statement_conf.
    METHODS st_cn_in_sr_rl_em_st_ts_em_stt IMPORTING i_conf TYPE REF TO zcl_lnt_empty_statement_conf.
    METHODS rn_pr_in_sr_rl_em_st_ts_em_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_empty_statement_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |empty_statement|.
    DATA(t3) = |Remove empty statement|.
    DATA(t4) = |Checks for empty statements (an empty statement is a single |.
    t4 = t4 && |dot)|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |WRITE 'hello world'..|.
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
      DATA(t12) = |WRITE 'hello world'.|.
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
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t20.
      t19 = t20.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t22) = |Quickfix|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t24) = |SingleFile|.
      APPEND t24 TO t23->items.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      t18 = t25.
      t16 = t18.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t26.
      t16 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t16 i_pragma = t27 i_pseudo_comment = t28 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_em_st_ts_em_stt.
    DATA(t1) = CAST zcl_lnt_empty_statement_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_em_st_ts_em_stt.
    DATA(t1) = CAST zcl_lnt_empty_statement_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/empty_statement.ts:32|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_em_st_ts_em_stt.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/empty_statement.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_empty_statement_conf( me->gt_cn_in_sr_rl_em_st_ts_em_stt(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_empty_statement_conf( me->gt_cn_in_sr_rl_em_st_ts_em_stt(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_statement_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_em_st_ts_em_stt( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_em_st_ts_em_stt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1395_795ec6c5c9ab.
  ENDMETHOD.
ENDCLASS.
