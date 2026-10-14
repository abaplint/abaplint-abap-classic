* TS: src/rules/remove_descriptions.ts:21:1 RemoveDescriptions
CLASS zcl_lnt_remove_descriptions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_rm_ds_ts_rm_dsc RETURNING VALUE(result) TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    METHODS st_cn_in_sr_rl_rm_ds_ts_rm_dsc IMPORTING i_conf TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    METHODS in_in_sr_rl_rmv_dsc_ts_rmv_dsc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_remove_descriptions.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_interface IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_interface RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_xml IMPORTING i_xml TYPE string i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_remove_descriptions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_rmv_dscrptns_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |remove_descriptions|.
    DATA(t3) = |Remove descriptions|.
    DATA(t4) = |Ensures you have no descriptions in metadata of methods, par|.
    t4 = t4 && |ameters, etc.|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t6 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Class descriptions are required, see rule description_empty.|.
    DATA t7 TYPE c LENGTH 1.
    CLEAR t7.
    t7 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t7 INTO t4 RESPECTING BLANKS.
    DATA t8 TYPE c LENGTH 1.
    CLEAR t8.
    t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t8 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Consider using ABAP Doc for documentation.|.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t12 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t15.
      t12 = t15.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t9 i_good_example = t10 i_extended_information = t11 i_tags = t12 i_pragma = t16 i_pseudo_comment = t17 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_rm_ds_ts_rm_dsc.
    DATA(t1) = CAST zcl_lnt_rmv_dscrptns_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_rm_ds_ts_rm_dsc.
    DATA(t1) = CAST zcl_lnt_rmv_dscrptns_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/remove_descriptions.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD in_in_sr_rl_rmv_dsc_ts_rmv_dsc.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/remove_descriptions.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/remove_descriptions.ts:52|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_interface.
    DATA(t1) = CAST zcl_lnt_ob_interface( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/remove_descriptions.ts:79|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_class.
    DATA(t1) = CAST zcl_lnt_class( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/remove_descriptions.ts:91|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_xml.
    DATA(t1) = i_xml.
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/remove_descriptions.ts:103|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rmv_dscrptns_cnf( me->gt_cn_in_sr_rl_rm_ds_ts_rm_dsc(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rmv_dscrptns_cnf( me->gt_cn_in_sr_rl_rm_ds_ts_rm_dsc(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/remove_descriptions.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/remove_descriptions.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1583_bd117b9d99d5.
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
