* TS: src/rules/line_length.ts:13:1 LineLength
CLASS zcl_lnt_line_length DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_line_length_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ln_ln_ts_ln_lng RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_length_conf.
    METHODS st_cn_in_sr_rl_ln_ln_ts_ln_lng IMPORTING i_conf TYPE REF TO zcl_lnt_line_length_conf.
    METHODS rn_pr_in_sr_rl_ln_ln_ts_ln_lng IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_line_length IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_line_length_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |line_length|.
    DATA(t3) = |Line length|.
    DATA(t4) = |Detects lines exceeding the provided maximum length.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA long_text TYPE string VALUE 'this line keeps going unti|.
      t7 = t7 && |l it is longer than the configured maximum'.|.
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
      DATA(t12) = |DATA long_text TYPE string.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t12 t13 INTO t12 RESPECTING BLANKS.
      t12 = t12 && |long_text = 'split long expressions across multiple lines'.|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t12.
      t10 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t10 = t15.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t18 = t18 && |nABAP.md#stick-to-a-reasonable-line-length|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t19 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |https://docs.abapopenchecks.org/checks/04/|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t18.
      t16 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t16 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t25 = t26.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t28) = |Styleguide|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t30) = |SingleFile|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      t24 = t31.
      t22 = t24.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t22 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t16 i_tags = t22 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_ln_ln_ts_ln_lng.
    DATA(t1) = CAST zcl_lnt_line_length_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_ln_ln_ts_ln_lng.
    DATA(t1) = CAST zcl_lnt_line_length_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_length.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_ln_ln_ts_ln_lng.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_length.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_line_length_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_ln_ln_ts_ln_lng( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ln_ln_ts_ln_lng( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1464_d8a2b5c1299f.
  ENDMETHOD.
ENDCLASS.
