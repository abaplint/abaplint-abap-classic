* TS: src/rules/static_call_via_instance.ts:14:1 StaticCallViaInstanceConf
CLASS zcl_lnt_sttc_cll_v_instnc_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA allow_in_testclass_includes TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sttc_cll_v_instnc_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_false.
    DATA(t2) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2->has = abap_true.
    t2->value = t1.
    me->allow_in_testclass_includes = t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1616_6272c32f971d.
  ENDMETHOD.
ENDCLASS.
