* TS: src/rules/unnecessary_chaining.ts:19:1 UnnecessaryChaining
CLASS zcl_lnt_unnecessary_chaining DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_ch_ts_un_chn RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS st_cn_in_sr_rl_un_ch_ts_un_chn IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_chaining IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_unncssry_chnng_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |unnecessary_chaining|.
    DATA(t3) = |Unnecessary Chaining|.
    DATA(t4) = |Find unnecessary chaining, all statements are checked|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |WRITE: bar.|.
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
      DATA(t12) = |WRITE bar.|.
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
      DATA(t17) = ||.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
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
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t20 i_pragma = t31 i_pseudo_comment = t32 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_un_ch_ts_un_chn.
    DATA(t1) = CAST zcl_lnt_unncssry_chnng_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_un_ch_ts_un_chn.
    DATA(t1) = CAST zcl_lnt_unncssry_chnng_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unnecessary_chaining.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/unnecessary_chaining.ts:43|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_un_ch_ts_un_chn( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1643_fb61e317a4d3.
  ENDMETHOD.
ENDCLASS.
