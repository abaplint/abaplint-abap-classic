* TS: src/rules/rfc_error_handling.ts:12:1 RFCErrorHandling
CLASS zcl_lnt_rfc_error_handling DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_rf_er_hn_ts_rf_er_hn RETURNING VALUE(result) TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    METHODS s_c_i_s_r_rf_er_hn_ts_rf_er_hn IMPORTING i_conf TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    METHODS r_p_i_s_r_rf_er_hn_ts_rf_er_hn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rfc_error_handling IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_rfc_errr_hndlng_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |rfc_error_handling|.
    DATA(t3) = |RFC error handling|.
    DATA(t4) = |Checks that exceptions 'system_failure' and 'communication_f|.
    t4 = t4 && |ailure' are handled in RFC calls|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CALL FUNCTION 'ZRFC'|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  DESTINATION lv_rfc.|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t7.
      t5 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t5 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = |CALL FUNCTION 'ZRFC'|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t14 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |  DESTINATION lv_rfc|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t15 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |  EXCEPTIONS|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t16 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |    system_failure        = 1 MESSAGE msg|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t17 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |    communication_failure = 2 MESSAGE msg|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t18 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |    resource_failure      = 3|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t19 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |    OTHERS                = 4.|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t13.
      t11 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t11 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA(t24) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t24 = t24 && |-US/abenrfc_exception.html|.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t24.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t22 = t26.
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
      DATA(t33) = |SingleFile|.
      APPEND t33 TO t32->items.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      t29 = t34.
      t27 = t29.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      t27 = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t11 i_extended_information = t22 i_tags = t27 i_pragma = t36 i_pseudo_comment = t37 ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/rfc_error_handling.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_rf_er_hn_ts_rf_er_hn.
    DATA(t1) = CAST zcl_lnt_rfc_errr_hndlng_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_rf_er_hn_ts_rf_er_hn.
    DATA(t1) = CAST zcl_lnt_rfc_errr_hndlng_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/rfc_error_handling.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_rf_er_hn_ts_rf_er_hn.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/rfc_error_handling.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rfc_errr_hndlng_cnf( me->g_c_i_s_r_rf_er_hn_ts_rf_er_hn(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rfc_errr_hndlng_cnf( me->g_c_i_s_r_rf_er_hn_ts_rf_er_hn(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_rf_er_hn_ts_rf_er_hn( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rf_er_hn_ts_rf_er_hn( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1585_810423b1ed35.
  ENDMETHOD.
ENDCLASS.
