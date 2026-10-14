* TS: src/rules/omit_receiving.ts:11:1 OmitReceiving
CLASS zcl_lnt_omit_receiving DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_omit_receiving_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_om_rc_ts_om_rcv RETURNING VALUE(result) TYPE REF TO zcl_lnt_omit_receiving_conf.
    METHODS st_cn_in_sr_rl_om_rc_ts_om_rcv IMPORTING i_conf TYPE REF TO zcl_lnt_omit_receiving_conf.
    METHODS rn_pr_in_sr_rl_om_rc_ts_om_rcv IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_omit_receiving IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_omit_receiving_conf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |omit_receiving|.
    DATA(t3) = |Omit RECEIVING|.
    DATA(t4) = |Omit RECEIVING|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = ||.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      upload_pack(|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |        EXPORTING|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |          io_client       = lo_client|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |          iv_url          = iv_url|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |          iv_deepen_level = iv_deepen_level|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |          it_hashes       = lt_hashes|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |        RECEIVING|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |          rt_objects      = et_objects ).|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t7.
      t5 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t5 = t17.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA(t20) = ||.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t21 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |      et_objects = upload_pack(|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t22 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |        io_client       = lo_client|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t23 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |        iv_url          = iv_url|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t24 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |        iv_deepen_level = iv_deepen_level|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t25 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |        it_hashes       = lt_hashes ).|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t20.
      t18 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t18 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t30 = t30 && |nABAP.md#omit-receiving|.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t30.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      t28 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t37.
      t36 = t37.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t36 ).
      DATA(t39) = |Styleguide|.
      APPEND t39 TO t38->items.
      DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t36 ).
      DATA(t41) = |SingleFile|.
      APPEND t41 TO t40->items.
      DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t36 ).
      t35 = t42.
      t33 = t35.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t43.
      t33 = t43.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t18 i_extended_information = t28 i_tags = t33 i_pragma = t44 i_pseudo_comment = t45 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_om_rc_ts_om_rcv.
    DATA(t1) = CAST zcl_lnt_omit_receiving_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_om_rc_ts_om_rcv.
    DATA(t1) = CAST zcl_lnt_omit_receiving_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/omit_receiving.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_om_rc_ts_om_rcv.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/omit_receiving.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_omit_receiving_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_om_rc_ts_om_rcv( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_om_rc_ts_om_rcv( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1540_65b33af71542.
  ENDMETHOD.
ENDCLASS.
