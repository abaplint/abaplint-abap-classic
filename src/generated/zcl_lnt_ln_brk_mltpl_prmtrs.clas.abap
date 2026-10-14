* TS: src/rules/line_break_multiple_parameters.ts:16:1 LineBreakMultipleParameters
CLASS zcl_lnt_ln_brk_mltpl_prmtrs DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_l_b_m_p_t_l_br_ml_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS s_c_i_s_r_l_b_m_p_t_l_br_ml_pr IMPORTING i_conf TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ln_brk_mltpl_prmtrs IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_ln_brk_mltpl_prmtr_cnf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |line_break_multiple_parameters|.
    DATA(t3) = |Line break multiple parameters|.
    DATA(t4) = |Line break multiple parameters|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |method( parameter1 = value parameter2 = value ).|.
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
      DATA(t12) = |method( parameter1 = value|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t12 t13 INTO t12 RESPECTING BLANKS.
      t12 = t12 && |        parameter2 = value ).|.
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
      t18 = t18 && |nABAP.md#line-break-multiple-parameters|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
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
      DATA(t27) = |Whitespace|.
      APPEND t27 TO t26->items.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t24 ).
      DATA(t29) = |Styleguide|.
      APPEND t29 TO t28->items.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t24 ).
      DATA(t31) = |Quickfix|.
      APPEND t31 TO t30->items.
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t24 ).
      DATA(t33) = |SingleFile|.
      APPEND t33 TO t32->items.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t24 ).
      t23 = t34.
      t21 = t23.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      t21 = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t16 i_tags = t21 i_pragma = t36 i_pseudo_comment = t37 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_l_b_m_p_t_l_br_ml_pr.
    DATA(t1) = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_l_b_m_p_t_l_br_ml_pr.
    DATA(t1) = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_break_multiple_parameters.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/line_break_multiple_parameters.ts:40|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( me->g_c_i_s_r_l_b_m_p_t_l_br_ml_pr( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( me->g_c_i_s_r_l_b_m_p_t_l_br_ml_pr( ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_l_b_m_p_t_l_br_ml_pr( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1460_b7c291d392b9.
  ENDMETHOD.
ENDCLASS.
