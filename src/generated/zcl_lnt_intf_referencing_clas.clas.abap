* TS: src/rules/intf_referencing_clas.ts:19:1 IntfReferencingClas
CLASS zcl_lnt_intf_referencing_clas DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_in_rf_cl_ts_in_rf_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    METHODS s_c_i_s_r_in_rf_cl_ts_in_rf_cl IMPORTING i_conf TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_intf_referencing_clas IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_intf_rfrncng_cls_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |intf_referencing_clas|.
    DATA(t3) = |INTF referencing CLAS|.
    DATA(t4) = |Interface contains references to class|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Only global interfaces are checked.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |      Only first level references are checked.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |      Exception class references are ignored.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t12 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |      Void references are ignored.|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t9.
      t7 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t7 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t15 i_pragma = t16 i_pseudo_comment = t17 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_in_rf_cl_ts_in_rf_cl.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->conf ).
    t3 = t4->allow.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t1 = t7.
    IF t1 = abap_true.
      DATA(t9) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->conf ).
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t10.
      t9->allow = t10.
    ENDIF.
    DATA(t11) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->conf ).
    result = t11.

  ENDMETHOD.
  METHOD s_c_i_s_r_in_rf_cl_ts_in_rf_cl.
    DATA(t1) = CAST zcl_lnt_intf_rfrncng_cls_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/intf_referencing_clas.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/intf_referencing_clas.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/intf_referencing_clas.ts:51|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD traverse.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/intf_referencing_clas.ts:61|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/intf_referencing_clas.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1451_3cedb43e8ecd.
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
