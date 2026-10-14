* TS: src/rules/prefer_raise_exception_new.ts:14:1 PreferRaiseExceptionNew
CLASS zcl_lnt_prfr_rs_excptn_nw DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node i_with_exporting TYPE abap_bool RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_rs_excptn_nw IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prfr_rs_excptn_nw_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |prefer_raise_exception_new|.
    DATA(t3) = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE|.
    DATA(t4) = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |RAISE EXCEPTION TYPE cx_generation_error|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  EXPORTING|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    previous = exception.|.
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
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA(t14) = |RAISE EXCEPTION NEW cx_generation_error( previous = exceptio|.
      t14 = t14 && |n ).|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t12 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = ||.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t20 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t19 = t19 && |nABAP.md#prefer-raise-exception-new-to-raise-exception-type|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t21 INTO t19 RESPECTING BLANKS.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t22 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |From 752 and up|.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t19.
      t17 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      t17 = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t29.
      t28 = t29.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      DATA(t31) = |Styleguide|.
      APPEND t31 TO t30->items.
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      DATA(t33) = |SingleFile|.
      APPEND t33 TO t32->items.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      DATA(t35) = |Quickfix|.
      APPEND t35 TO t34->items.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      DATA(t37) = |Upport|.
      APPEND t37 TO t36->items.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      t27 = t38.
      t25 = t27.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      t25 = t39.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t17 i_tags = t25 i_pragma = t40 i_pseudo_comment = t41 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    DATA(t1) = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    DATA(t1) = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_raise_exception_new.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_raise_exception_new.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_fix.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t3) = i_with_exporting.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/prefer_raise_exception_new.ts:69|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( me->g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( me->g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1565_9ceb87fdd6a5.
  ENDMETHOD.
ENDCLASS.
