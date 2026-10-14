* TS: src/rules/max_one_method_parameter_per_line.ts:10:1 MaxOneMethodParameterPerLineConf
CLASS zcl_lnt_mx_on_mt_prm_pr_ln_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mx_on_mt_prm_pr_ln_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1479_f2178c816668.
  ENDMETHOD.
ENDCLASS.
