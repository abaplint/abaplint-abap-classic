* TS: src/rules/unnecessary_return.ts:15:1 UnnecessaryReturn
CLASS zcl_lnt_unnecessary_return DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_rt_ts_un_rtr RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS st_cn_in_sr_rl_un_rt_ts_un_rtr IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS rn_pr_in_sr_rl_un_rt_ts_un_rtr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_return IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_unncssry_rtrn_cnf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |unnecessary_return|.
    DATA(t3) = |Unnecessary Return|.
    DATA(t4) = |Finds unnecessary RETURN statements|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |FORM hello1.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  WRITE 'world'.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  RETURN.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDFORM.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |FORM foo.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  IF 1 = 2.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    RETURN.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ENDIF.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDFORM.|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t7.
      t5 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t5 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |FORM hello2.|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t22 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |  WRITE 'world'.|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t23 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |ENDFORM.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t21.
      t19 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t19 = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA(t28) = |Finds unnecessary RETURN statements|.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t28.
      t26 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t26 = t30.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t35.
      t34 = t35.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t37) = |SingleFile|.
      APPEND t37 TO t36->items.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t39) = |Quickfix|.
      APPEND t39 TO t38->items.
      DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      t33 = t40.
      t31 = t33.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t41.
      t31 = t41.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t19 i_extended_information = t26 i_tags = t31 i_pragma = t42 i_pseudo_comment = t43 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_un_rt_ts_un_rtr.
    DATA(t1) = CAST zcl_lnt_unncssry_rtrn_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_un_rt_ts_un_rtr.
    DATA(t1) = CAST zcl_lnt_unncssry_rtrn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unnecessary_return.ts:45|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_un_rt_ts_un_rtr.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unnecessary_return.ts:49|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_un_rt_ts_un_rtr( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_rt_ts_un_rtr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1647_7a524a243458.
  ENDMETHOD.
ENDCLASS.
