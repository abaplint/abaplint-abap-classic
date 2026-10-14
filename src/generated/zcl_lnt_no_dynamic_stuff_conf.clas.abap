* TS: src/rules/no_dynamic_stuff.ts:10:1 NoDynamicStuffConf
CLASS zcl_lnt_no_dynamic_stuff_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA call_method TYPE abap_bool.
    DATA call_function_d500 TYPE abap_bool.
    DATA call_database_procedure TYPE abap_bool.
    DATA call_transformation_5f8a TYPE abap_bool.
    DATA call_transaction_63a5 TYPE abap_bool.
    DATA perform_cf8c TYPE abap_bool.
    DATA submit_cc98 TYPE abap_bool.
    DATA create_object_6c40 TYPE abap_bool.
    DATA create_data_402d TYPE abap_bool.
    DATA get_badi_9f96 TYPE abap_bool.
    DATA assign_dabe TYPE abap_bool.
    DATA internal_table TYPE abap_bool.
    DATA export_import TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_dynamic_stuff_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_true.
    me->call_method = t1.
    DATA(t2) = abap_true.
    me->call_function_d500 = t2.
    DATA(t3) = abap_true.
    me->call_database_procedure = t3.
    DATA(t4) = abap_true.
    me->call_transformation_5f8a = t4.
    DATA(t5) = abap_true.
    me->call_transaction_63a5 = t5.
    DATA(t6) = abap_true.
    me->perform_cf8c = t6.
    DATA(t7) = abap_true.
    me->submit_cc98 = t7.
    DATA(t8) = abap_true.
    me->create_object_6c40 = t8.
    DATA(t9) = abap_true.
    me->create_data_402d = t9.
    DATA(t10) = abap_true.
    me->get_badi_9f96 = t10.
    DATA(t11) = abap_true.
    me->assign_dabe = t11.
    DATA(t12) = abap_true.
    me->internal_table = t12.
    DATA(t13) = abap_true.
    me->export_import = t13.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1511_56f69c58ade6.
  ENDMETHOD.
ENDCLASS.
