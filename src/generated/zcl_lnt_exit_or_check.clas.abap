* TS: src/rules/exit_or_check.ts:15:1 ExitOrCheck
CLASS zcl_lnt_exit_or_check DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_exit_or_check_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_ex_or_ch_ts_ex_or_ch RETURNING VALUE(result) TYPE REF TO zcl_lnt_exit_or_check_conf.
    METHODS s_c_i_s_r_ex_or_ch_ts_ex_or_ch IMPORTING i_conf TYPE REF TO zcl_lnt_exit_or_check_conf.
    METHODS r_p_i_s_r_ex_or_ch_ts_ex_or_ch IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_exit_or_check IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_exit_or_check_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |exit_or_check|.
    DATA(t3) = |Find EXIT or CHECK outside loops|.
    DATA(t4) = |Detects usages of EXIT or CHECK statements outside of loops.|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Use RETURN to leave procesing blocks instead.|.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA(t8) = |CHECK is_valid = abap_true.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t8 t9 INTO t8 RESPECTING BLANKS.
      t8 = t8 && |do_something( ).|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t8.
      t6 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t6 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA(t14) = |IF is_valid = abap_false.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t15 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |  RETURN.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t16 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |ENDIF.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t17 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |do_something( ).|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t14.
      t12 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t12 = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t22 = t22 && |-US/abenleave_processing_blocks.html|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t23 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t22 = t22 && |-US/abapcheck_processing_blocks.html|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t24 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t22 = t22 && |nABAP.md#check-vs-return|.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t22.
      t20 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t20 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      DATA(t33) = |Styleguide|.
      APPEND t33 TO t32->items.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      DATA(t35) = |SingleFile|.
      APPEND t35 TO t34->items.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      DATA(t37) = |Quickfix|.
      APPEND t37 TO t36->items.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      t29 = t38.
      t27 = t29.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      t27 = t39.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t6 i_good_example = t12 i_extended_information = t20 i_tags = t27 i_pragma = t40 i_pseudo_comment = t41 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_ex_or_ch_ts_ex_or_ch.
    DATA(t1) = CAST zcl_lnt_exit_or_check_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_ex_or_ch_ts_ex_or_ch.
    DATA(t1) = CAST zcl_lnt_exit_or_check_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/exit_or_check.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_ex_or_ch_ts_ex_or_ch.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/exit_or_check.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_exit_or_check_conf( me->g_c_i_s_r_ex_or_ch_ts_ex_or_ch(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_exit_or_check_conf( me->g_c_i_s_r_ex_or_ch_ts_ex_or_ch(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_exit_or_check_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_ex_or_ch_ts_ex_or_ch( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ex_or_ch_ts_ex_or_ch( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1399_298abe3b127d.
  ENDMETHOD.
ENDCLASS.
