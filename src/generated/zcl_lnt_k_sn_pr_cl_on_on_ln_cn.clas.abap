* TS: src/rules/keep_single_parameter_on_one_line.ts:11:1 KeepSingleParameterCallsOnOneLineConf
CLASS zcl_lnt_k_sn_pr_cl_on_on_ln_cn DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA length TYPE int8.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_k_sn_pr_cl_on_on_ln_cn IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 120 ).
    me->length = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1454_9924309c0542.
  ENDMETHOD.
ENDCLASS.
