* TS: src/rules/dynpro_checks.ts:14:1 DynproChecks
CLASS zcl_lnt_dynpro_checks DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_dynpro_checks_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_dyn_chc_ts_dyn_chc IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_dynpro_checks.
    METHODS gt_cn_in_sr_rl_dy_ch_ts_dy_chc RETURNING VALUE(result) TYPE REF TO zcl_lnt_dynpro_checks_conf.
    METHODS st_cn_in_sr_rl_dy_ch_ts_dy_chc IMPORTING i_conf TYPE REF TO zcl_lnt_dynpro_checks_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_overlapping_fields IMPORTING i_dynpro TYPE REF TO zcl_lnt_dynpro_header i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS hs_cntnr_rltv_crdnts IMPORTING i_field_d104 TYPE REF TO zcl_lnt_dynpro_field RETURNING VALUE(result) TYPE abap_bool.
    METHODS overlaps IMPORTING i_first TYPE REF TO zcl_lnt_dynpro_field i_second TYPE REF TO zcl_lnt_dynpro_field RETURNING VALUE(result) TYPE abap_bool.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dynpro_checks IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_dynpro_checks_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |dynpro_checks|.
    DATA(t3) = |Dynpro Checks|.
    DATA(t4) = |Various Dynpro checks|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |* Check length of PUSH elements less than 132|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Check for overlapping screen elements|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t9.
      t7 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t7 = t12.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t17.
      t16 = t17.
      DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
      DATA(t19) = |Syntax|.
      APPEND t19 TO t18->items.
      DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
      t15 = t20.
      t13 = t15.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t13 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t13 i_pragma = t22 i_pseudo_comment = t23 ).
    result = t1.
    
  ENDMETHOD.
  METHOD in_in_sr_rl_dyn_chc_ts_dyn_chc.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dynpro_checks.ts:27|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_dy_ch_ts_dy_chc.
    DATA(t1) = CAST zcl_lnt_dynpro_checks_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_dy_ch_ts_dy_chc.
    DATA(t1) = CAST zcl_lnt_dynpro_checks_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dynpro_checks.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dynpro_checks.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_overlapping_fields.
    DATA(t1) = CAST zcl_lnt_dynpro_header( i_dynpro ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/dynpro_checks.ts:65|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD hs_cntnr_rltv_crdnts.
    DATA(t1) = CAST zcl_lnt_dynpro_field( i_field_d104 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dynpro_checks.ts:89|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD overlaps.
    DATA(t1) = CAST zcl_lnt_dynpro_field( i_first ).
    DATA(t2) = CAST zcl_lnt_dynpro_field( i_second ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/dynpro_checks.ts:93|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dynpro_checks.ts:27|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/dynpro_checks.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1387_c574d2412058.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config(  i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize(  i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value(  ).
  ENDMETHOD.
ENDCLASS.
