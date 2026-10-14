* TS: src/rules/dangerous_statement.ts:10:1 DangerousStatementConf
CLASS zcl_lnt_dngrs_sttmnt_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA exec_sql_e377 TYPE abap_bool.
    DATA kernel_call TYPE abap_bool.
    DATA system_call_c7af TYPE abap_bool.
    DATA insert_report_6d50 TYPE abap_bool.
    DATA generate_dynpro_dab6 TYPE abap_bool.
    DATA generate_report_dd49 TYPE abap_bool.
    DATA generate_subroutine_a979 TYPE abap_bool.
    DATA delete_report_2542 TYPE abap_bool.
    DATA delete_textpool_ddcf TYPE abap_bool.
    DATA insert_textpool_44c6 TYPE abap_bool.
    DATA delete_dynpro_5d65 TYPE abap_bool.
    DATA export_dynpro_5cb5 TYPE abap_bool.
    DATA editor_call_for_report TYPE abap_bool.
    DATA dynamic_sql TYPE abap_bool.
    DATA ignore_rap_query_provider TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dngrs_sttmnt_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_true.
    me->exec_sql_e377 = t1.
    DATA(t2) = abap_true.
    me->kernel_call = t2.
    DATA(t3) = abap_true.
    me->system_call_c7af = t3.
    DATA(t4) = abap_true.
    me->insert_report_6d50 = t4.
    DATA(t5) = abap_true.
    me->generate_dynpro_dab6 = t5.
    DATA(t6) = abap_true.
    me->generate_report_dd49 = t6.
    DATA(t7) = abap_true.
    me->generate_subroutine_a979 = t7.
    DATA(t8) = abap_true.
    me->delete_report_2542 = t8.
    DATA(t9) = abap_true.
    me->delete_textpool_ddcf = t9.
    DATA(t10) = abap_true.
    me->insert_textpool_44c6 = t10.
    DATA(t11) = abap_true.
    me->delete_dynpro_5d65 = t11.
    DATA(t12) = abap_true.
    me->export_dynpro_5cb5 = t12.
    DATA(t13) = abap_true.
    me->editor_call_for_report = t13.
    DATA(t14) = abap_true.
    me->dynamic_sql = t14.
    DATA(t15) = abap_true.
    me->ignore_rap_query_provider = t15.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1373_0b8abd610250.
  ENDMETHOD.
ENDCLASS.
