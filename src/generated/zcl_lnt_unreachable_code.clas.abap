* TS: src/rules/unreachable_code.ts:14:1 UnreachableCode
CLASS zcl_lnt_unreachable_code DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_un_cd_ts_unr_cd RETURNING VALUE(result) TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS st_cn_in_sr_rl_un_cd_ts_unr_cd IMPORTING i_conf TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS rn_pr_in_sr_rl_un_cd_ts_unr_cd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_exit IMPORTING i_n_0c97 TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_structure IMPORTING i_s TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unreachable_code IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_unreachable_code_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |unreachable_code|.
    DATA(t3) = |Unreachable code|.
    DATA(t4) = |Checks for unreachable code.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |RETURN.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |WRITE 'hello'.|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t7.
      t5 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t5 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = |WRITE 'hello'.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t14 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |RETURN.|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t13.
      t11 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t11 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t22.
      t21 = t22.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t21 ).
      DATA(t24) = |SingleFile|.
      APPEND t24 TO t23->items.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t21 ).
      t20 = t25.
      t18 = t20.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t26.
      t18 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t11 i_extended_information = t17 i_tags = t18 i_pragma = t27 i_pseudo_comment = t28 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/unreachable_code.ts:28|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_un_cd_ts_unr_cd.
    DATA(t1) = CAST zcl_lnt_unreachable_code_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_un_cd_ts_unr_cd.
    DATA(t1) = CAST zcl_lnt_unreachable_code_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unreachable_code.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_un_cd_ts_unr_cd.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unreachable_code.ts:40|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_exit.
    DATA(t1) = CAST zcl_lnt_statement_node( i_n_0c97 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unreachable_code.ts:67|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_structure.
    DATA(t1) = CAST zif_lnt_statement( i_s ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unreachable_code.ts:87|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unreachable_code_conf( me->gt_cn_in_sr_rl_un_cd_ts_unr_cd(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unreachable_code_conf( me->gt_cn_in_sr_rl_un_cd_ts_unr_cd(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unreachable_code_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_un_cd_ts_unr_cd( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_cd_ts_unr_cd( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1649_806fe62f03fa.
  ENDMETHOD.
ENDCLASS.
