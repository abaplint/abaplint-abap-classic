* TS: src/rules/max_one_method_parameter_per_line.ts:13:1 MaxOneMethodParameterPerLine
CLASS zcl_lnt_mx_on_mthd_prmtr_pr_ln DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_m_o_m_p_p_l_t_m_o_m RETURNING VALUE(result) TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
    METHODS s_c_i_s_r_m_o_m_p_p_l_t_m_o_m IMPORTING i_conf TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
    METHODS r_p_i_s_r_m_o_m_p_p_l_t_m_o_m IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mx_on_mthd_prmtr_pr_ln IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_mx_on_mt_prm_pr_ln_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |max_one_method_parameter_per_line|.
    DATA(t3) = |Max one method parameter definition per line|.
    DATA(t4) = |Keep max one method parameter description per line|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = ||.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |METHODS apps_scope_token|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  IMPORTING|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    body TYPE bodyapps_scope_token client_id TYPE str.|.
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
      DATA(t15) = ||.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t16 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |METHODS apps_scope_token|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t17 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |  IMPORTING|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t18 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |    body      TYPE bodyapps_scope_token|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t19 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |    client_id TYPE str.|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t15.
      t13 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t13 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t27.
      t26 = t27.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA(t29) = |SingleFile|.
      APPEND t29 TO t28->items.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA(t31) = |Whitespace|.
      APPEND t31 TO t30->items.
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      t25 = t32.
      t23 = t25.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t33.
      t23 = t33.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t13 i_extended_information = t22 i_tags = t23 i_pragma = t34 i_pseudo_comment = t35 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_m_o_m_p_p_l_t_m_o_m.
    DATA(t1) = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_m_o_m_p_p_l_t_m_o_m.
    DATA(t1) = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/max_one_method_parameter_per_line.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_m_o_m_p_p_l_t_m_o_m.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/max_one_method_parameter_per_line.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( me->g_c_i_s_r_m_o_m_p_p_l_t_m_o_m(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( me->g_c_i_s_r_m_o_m_p_p_l_t_m_o_m(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_m_o_m_p_p_l_t_m_o_m( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_m_o_m_p_p_l_t_m_o_m( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1480_a6781cc908c1.
  ENDMETHOD.
ENDCLASS.
