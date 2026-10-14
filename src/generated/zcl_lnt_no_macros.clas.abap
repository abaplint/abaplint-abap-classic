* TS: src/rules/no_macros.ts:11:1 NoMacros
CLASS zcl_lnt_no_macros DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rls_n_mcr_ts_n_mcr RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS st_cn_in_sr_rls_n_mcr_ts_n_mcr IMPORTING i_conf TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS rn_pr_in_sr_rls_n_mcr_ts_n_mcr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_macros IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_no_macros_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |no_macros|.
    DATA(t3) = |No macros|.
    DATA(t4) = |Checks that macros are not used|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DEFINE _macro.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  WRITE 'hello'.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |END-OF-DEFINITION.|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t7.
      t5 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t5 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA(t14) = |WRITE 'hello'.|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t12 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = |Macros reduce readability and are difficult to debug, use me|.
      t19 = t19 && |thods or form routines instead.|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t20 INTO t19 RESPECTING BLANKS.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t21 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t19 = t19 && |-US/abenmacros_guidl.html|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t19.
      t17 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t17 = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t28.
      t27 = t28.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t30) = |SingleFile|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      t26 = t31.
      t24 = t26.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t24 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t17 i_tags = t24 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rls_n_mcr_ts_n_mcr.
    DATA(t1) = CAST zcl_lnt_no_macros_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rls_n_mcr_ts_n_mcr.
    DATA(t1) = CAST zcl_lnt_no_macros_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_macros.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rls_n_mcr_ts_n_mcr.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_macros.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_no_macros_conf( me->gt_cn_in_sr_rls_n_mcr_ts_n_mcr(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_no_macros_conf( me->gt_cn_in_sr_rls_n_mcr_ts_n_mcr(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_macros_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rls_n_mcr_ts_n_mcr( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_mcr_ts_n_mcr( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1520_e19dd372dc88.
  ENDMETHOD.
ENDCLASS.
