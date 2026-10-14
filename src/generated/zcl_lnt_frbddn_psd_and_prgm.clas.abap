* TS: src/rules/forbidden_pseudo_and_pragma.ts:20:1 ForbiddenPseudoAndPragma
CLASS zcl_lnt_frbddn_psd_and_prgm DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_f_p_a_p_t_f_ps_an_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS s_c_i_s_r_f_p_a_p_t_f_ps_an_pr IMPORTING i_conf TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS r_p_i_s_r_f_p_a_p_t_f_ps_an_pr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_frbddn_psd_and_prgm IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_frbdd_psd_and_prgm_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |forbidden_pseudo_and_pragma|.
    DATA(t3) = |Forbidden pseudo comments and pragma|.
    DATA(t4) = |Checks for unwanted pseudo comments and pragma|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA i TYPE i. "#EC *|.
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
      DATA(t12) = |DATA i TYPE i.|.
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
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t20.
      t19 = t20.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t22) = |Quickfix|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t24) = |SingleFile|.
      APPEND t24 TO t23->items.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      t18 = t25.
      t16 = t18.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t26.
      t16 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t16 i_pragma = t27 i_pseudo_comment = t28 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->conf ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->conf ).
    t4 = t5->pseudo.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t2 = t8.
    IF t2 = abap_true.
      DATA(t10) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->conf ).
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t11.
      t10->pseudo = t11.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t15) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->conf ).
    t14 = t15->pragmas.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t13 ).
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t12 = t18.
    IF t12 = abap_true.
      DATA(t20) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->conf ).
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t21.
      t20->pragmas = t21.
    ENDIF.
    DATA(t22) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->conf ).
    result = t22.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/forbidden_pseudo_and_pragma.ts:49|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/forbidden_pseudo_and_pragma.ts:55|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->g_c_i_s_r_f_p_a_p_t_f_ps_an_pr(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->g_c_i_s_r_f_p_a_p_t_f_ps_an_pr(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_f_p_a_p_t_f_ps_an_pr( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_f_p_a_p_t_f_ps_an_pr( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1409_114e531cd976.
  ENDMETHOD.
ENDCLASS.
