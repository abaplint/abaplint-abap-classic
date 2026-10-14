* TS: src/rules/uncaught_exception.ts:20:1 UncaughtExceptionConf
CLASS zcl_lnt_uncght_excptn_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA report_dynamic TYPE abap_bool.
    DATA report_no_check TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_uncght_excptn_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_false.
    me->report_dynamic = t1.
    DATA(t2) = abap_false.
    me->report_no_check = t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1638_ec322577d7cf.
  ENDMETHOD.
ENDCLASS.
