* TS: src/rules/main_file_contents.ts:17:1 MainFileContents
CLASS zcl_lnt_main_file_contents DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_details TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
    METHODS s_c_i_s_r_mn_fl_cn_ts_mn_fl_cn IMPORTING i_conf TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
    METHODS i_i_sr_rl_mn_fl_cn_ts_mn_fl_cn IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_main_file_contents.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_main_file_contents IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_mn_fl_cntnts_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |main_file_contents|.
    DATA(t3) = |Main file contents|.
    DATA(t4) = |Checks related to report declarations.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Does not run if the target version is Cloud|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* PROGs must begin with "REPORT <name>." or "PROGRAM <name>.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t12 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* TYPEs must begin with "TYPE-POOL <name>."|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t13 INTO t9 RESPECTING BLANKS.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t9.
      t7 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t7 = t15.
    ENDIF.
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
      DATA(t22) = |Syntax|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      t18 = t23.
      t16 = t18.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t24.
      t16 = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t16 i_pragma = t25 i_pseudo_comment = t26 ).
    result = t1.

  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = i_details.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/main_file_contents.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn.
    DATA(t1) = CAST zcl_lnt_mn_fl_cntnts_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_mn_fl_cn_ts_mn_fl_cn.
    DATA(t1) = CAST zcl_lnt_mn_fl_cntnts_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/main_file_contents.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD i_i_sr_rl_mn_fl_cn_ts_mn_fl_cn.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/main_file_contents.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/main_file_contents.ts:52|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mn_fl_cntnts_cnf( me->g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mn_fl_cntnts_cnf( me->g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/main_file_contents.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/main_file_contents.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1476_00c1e010b70d.
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
