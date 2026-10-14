* TS: src/rules/no_aliases.ts:14:1 NoAliases
CLASS zcl_lnt_no_aliases DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_aliases_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rls_n_als_ts_n_als RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_aliases_conf.
    METHODS st_cn_in_sr_rls_n_als_ts_n_als IMPORTING i_conf TYPE REF TO zcl_lnt_no_aliases_conf.
    METHODS rn_pr_in_sr_rls_n_als_ts_n_als IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS skip_alias IMPORTING i_alias TYPE REF TO zcl_lnt_info_alias RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_aliases IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_no_aliases_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |no_aliases|.
    DATA(t3) = |No ALIASES|.
    DATA(t4) = |Detects use of the ALIAS statement|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |INTERFACE lif_foo.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  METHODS long_method_name.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ALIASES short FOR long_method_name.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDINTERFACE.|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t7.
      t5 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t5 = t12.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = |INTERFACE lif_foo.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t16 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |  METHODS long_method_name.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t17 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |ENDINTERFACE.|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t15.
      t13 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t13 = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
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
      t23 = t28.
      t21 = t23.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t21 = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t13 i_extended_information = t20 i_tags = t21 i_pragma = t30 i_pseudo_comment = t31 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rls_n_als_ts_n_als.
    DATA(t1) = CAST zcl_lnt_no_aliases_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rls_n_als_ts_n_als.
    DATA(t1) = CAST zcl_lnt_no_aliases_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_aliases.ts:37|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rls_n_als_ts_n_als.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_aliases.ts:41|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD skip_alias.
    DATA(t1) = CAST zcl_lnt_info_alias( i_alias ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_aliases.ts:63|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_no_aliases_conf( me->gt_cn_in_sr_rls_n_als_ts_n_als(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_no_aliases_conf( me->gt_cn_in_sr_rls_n_als_ts_n_als(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_aliases_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rls_n_als_ts_n_als( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_als_ts_n_als( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1506_3ad9b6fd14bd.
  ENDMETHOD.
ENDCLASS.
