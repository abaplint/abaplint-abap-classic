* TS: src/rules/reduce_procedural_code.ts:13:1 ReduceProceduralCode
CLASS zcl_lnt_reduce_procedural_code DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd RETURNING VALUE(result) TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
    METHODS s_c_i_s_r_rd_pr_cd_ts_rd_pr_cd IMPORTING i_conf TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
    METHODS r_p_i_s_r_rd_pr_cd_ts_rd_pr_cd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_reduce_procedural_code IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_rdc_prcdrl_cd_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |reduce_procedural_code|.
    DATA(t3) = |Reduce procedural code|.
    DATA(t4) = |Checks FORM and FUNCTION-MODULE have few statements|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |FORM foo.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  DATA lv_bar TYPE i.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  lv_bar = 2 + 2.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  IF lv_bar = 4.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    WRITE 'hello world'.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ENDIF.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  DATA lv_bar TYPE i.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  lv_bar = 2 + 2.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  IF lv_bar = 4.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    WRITE 'hello world'.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t17 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ENDIF.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t18 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDFORM.|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t7.
      t5 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t5 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |FORM foo.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t24 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |  NEW zcl_global_class( )->run_logic( ).|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t25 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |ENDFORM.|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t23.
      t21 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t21 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = |Delegate logic to a class method instead of using FORM or FU|.
      t30 = t30 && |NCTION-MODULE.|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t30 t31 INTO t30 RESPECTING BLANKS.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t30 t32 INTO t30 RESPECTING BLANKS.
      t30 = t30 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t30 = t30 && |nABAP.md#prefer-object-orientation-to-procedural-programming|.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t30 t33 INTO t30 RESPECTING BLANKS.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t30 t34 INTO t30 RESPECTING BLANKS.
      t30 = t30 && |Comments are not counted as statements.|.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t30.
      t28 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t28 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t41.
      t40 = t41.
      DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
      DATA(t43) = |SingleFile|.
      APPEND t43 TO t42->items.
      DATA(t44) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
      DATA(t45) = |Styleguide|.
      APPEND t45 TO t44->items.
      DATA(t46) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
      t39 = t46.
      t37 = t39.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t47.
      t37 = t47.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t21 i_extended_information = t28 i_tags = t37 i_pragma = t48 i_pseudo_comment = t49 ).
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    DATA(t1) = CAST zcl_lnt_rdc_prcdrl_cd_cnf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    DATA(t1) = CAST zcl_lnt_rdc_prcdrl_cd_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/reduce_procedural_code.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD r_p_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/reduce_procedural_code.ts:54|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rdc_prcdrl_cd_cnf( me->g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rdc_prcdrl_cd_cnf( me->g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rd_pr_cd_ts_rd_pr_cd( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1575_98caa254def5.
  ENDMETHOD.
ENDCLASS.
