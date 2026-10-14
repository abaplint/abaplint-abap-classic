* TS: src/rules/cds_association_name.ts:12:1 CDSAssociationName
CLASS zcl_lnt_cds_association_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_as_nm_ts_cd_as_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS s_c_i_s_r_cd_as_nm_ts_cd_as_nm IMPORTING i_conf TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS i_i_sr_rl_cd_as_nm_ts_cd_as_nm IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_as_nm_ts_cd_as_nm IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_association_name IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_assctn_nm_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |cds_association_name|.
    DATA(t3) = |CDS Association Name|.
    DATA(t4) = |CDS association names should start with an underscore|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |define view entity test as select from source|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  association [1..1] to target as Assoc on Assoc.id = source|.
      t7 = t7 && |.id|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |\{ key id \}|.
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
      DATA(t14) = |define view entity test as select from source|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t15 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |  association [1..1] to target as _Assoc on _Assoc.id = sour|.
      t14 = t14 && |ce.id|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t16 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |\{ key id \}|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t14.
      t12 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t12 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |By convention, CDS association names must start with an unde|.
      t21 = t21 && |rscore character.|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t22 INTO t21 RESPECTING BLANKS.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t23 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |https://help.sap.com/docs/abap-cloud/abap-data-models/cds-as|.
      t21 = t21 && |sociations|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t21.
      t19 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t19 = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t30.
      t29 = t30.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      DATA(t32) = |SingleFile|.
      APPEND t32 TO t31->items.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      DATA(t34) = |Naming|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      t28 = t35.
      t26 = t28.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t36.
      t26 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t19 i_tags = t26 i_pragma = t37 i_pseudo_comment = t38 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = CAST zcl_lnt_cds_assctn_nm_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = CAST zcl_lnt_cds_assctn_nm_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_association_name.ts:37|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD i_i_sr_rl_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_association_name.ts:41|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_i_sr_rl_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = CAST zif_lnt_object( i_o ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_association_name.ts:45|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_association_name.ts:37|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_association_name.ts:41|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_association_name.ts:45|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1317_98ed57ff571d.
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
