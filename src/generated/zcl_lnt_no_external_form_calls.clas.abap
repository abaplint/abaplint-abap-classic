* TS: src/rules/no_external_form_calls.ts:12:1 NoExternalFormCalls
CLASS zcl_lnt_no_external_form_calls DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
    METHODS s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl IMPORTING i_conf TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
    METHODS r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_external_form_calls IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_n_extrnl_frm_clls_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |no_external_form_calls|.
    DATA(t3) = |No external FORM calls|.
    DATA(t4) = |Detect external form calls|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |PERFORM foo IN PROGRAM bar.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |PERFORM foo(bar).|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t7.
      t5 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t5 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t18.
      t17 = t18.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      DATA(t20) = |SingleFile|.
      APPEND t20 TO t19->items.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      t16 = t21.
      t14 = t16.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t22.
      t14 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t13 i_tags = t14 i_pragma = t23 i_pseudo_comment = t24 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    DATA(t1) = CAST zcl_lnt_n_extrnl_frm_clls_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    DATA(t1) = CAST zcl_lnt_n_extrnl_frm_clls_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_external_form_calls.ts:32|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_external_form_calls.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_extrnl_frm_clls_cnf( me->g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_extrnl_frm_clls_cnf( me->g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1516_8d2e666f6124.
  ENDMETHOD.
ENDCLASS.
