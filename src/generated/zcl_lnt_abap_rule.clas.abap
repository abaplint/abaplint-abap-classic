* TS: src/rules/_abap_rule.ts:8:1 ABAPRule
CLASS zcl_lnt_abap_rule DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS get_metadata ABSTRACT RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_config ABSTRACT RETURNING VALUE(result) TYPE REF TO object.
    METHODS set_config ABSTRACT IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS run_parsed ABSTRACT IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS in_in_src_rls_abp_rl_ts_abp_rl IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value ABSTRACT RETURNING VALUE(result) TYPE REF TO object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_rule IMPLEMENTATION.
  METHOD in_in_src_rls_abp_rl_ts_abp_rl.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
    DATA(t3) = CAST zcl_lnt_abap_rule( me ).
    result = t3.
    
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CAST zif_lnt_object( t1 ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zcl_lnt_abap_object.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    DATA(t8) = CAST zif_lnt_object( t1 ).
    DATA t9 TYPE REF TO object.
    t9 = t8.
    t7 ?= t9.
    t6 = t7.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abap_object.
    DATA(t14) = CAST zcl_lnt_abap_object( t6 ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = CAST zcl_lnt_abap_object( t13 ).
    t15 = t16->parsed.
    t12 = t15.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    LOOP AT t12->items INTO t18.
      t17 ?= t18.
      DATA(t19) = VALUE i( ).
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = CAST zcl_lnt_abap_file( t17 ).
      DATA t22 TYPE REF TO zcl_lnt_abap_object.
      DATA(t23) = CAST zif_lnt_object( t1 ).
      DATA t24 TYPE REF TO object.
      t24 = t23.
      t22 ?= t24.
      t20 = me->run_parsed( i_file = t21 i_obj_1ed0 = t22 ).
      DATA t25 TYPE REF TO zcl_lnt_issue.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      LOOP AT t20->items INTO t26.
        t25 ?= t26.
        DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
        DATA(t28) = CAST zcl_lnt_issue( t25 ).
        APPEND t28 TO t27->items.
      ENDLOOP.
      DATA t29 TYPE i.
      DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
      t29 = lines( t30->items ).
      t19 = t29.
    ENDLOOP.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    result = t31.
    
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA t2 TYPE REF TO zcl_lnt_abap_rule.
    DATA(t3) = CAST zif_lnt_registry( t1 ).
    t2 = me->in_in_src_rls_abp_rl_ts_abp_rl( i_reg_f149 = t3 ).
    result = t2.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1282_348684cb2f84.
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
