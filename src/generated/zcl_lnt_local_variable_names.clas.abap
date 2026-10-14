* TS: src/rules/local_variable_names.ts:22:1 LocalVariableNames
CLASS zcl_lnt_local_variable_names DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm IMPORTING i_conf TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_locals IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_name IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file i_expected TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_local_variable_names IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_lcl_vrbl_nms_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |local_variable_names|.
    DATA(t3) = |Local variable naming conventions|.
    DATA(t4) = ||.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Allows you to enforce a pattern, such as a prefix, for local|.
    t4 = t4 && | variables, constants and field symbols.|.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t6 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Regexes are case-insensitive.|.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |FORM bar.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |  DATA foo.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |ENDFORM.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t9.
      t7 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t7 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = |FORM bar.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t17 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  DATA lv_foo.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t18 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |ENDFORM.|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t16.
      t14 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t14 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t25 = t26.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t28) = |Naming|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t30) = |SingleFile|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      t24 = t31.
      t22 = t24.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t22 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t7 i_good_example = t14 i_extended_information = t21 i_tags = t22 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/local_variable_names.ts:43|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    DATA(t1) = CAST zcl_lnt_lcl_vrbl_nms_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    DATA(t1) = CAST zcl_lnt_lcl_vrbl_nms_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/local_variable_names.ts:53|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/local_variable_names.ts:57|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_locals.
    DATA(t1) = CAST zcl_lnt_structure_node( i_structure ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/local_variable_names.ts:82|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_name.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = i_expected.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/local_variable_names.ts:152|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_lcl_vrbl_nms_cnf( me->g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_lcl_vrbl_nms_cnf( me->g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1472_e77984f30f1d.
  ENDMETHOD.
ENDCLASS.
