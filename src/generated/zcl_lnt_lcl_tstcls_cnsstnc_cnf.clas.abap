* TS: src/rules/local_testclass_consistency.ts:10:1 LocalTestclassConsistencyConf
CLASS zcl_lnt_lcl_tstcls_cnsstnc_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lcl_tstcls_cnsstnc_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1469_f021bc5eb53b.
  ENDMETHOD.
ENDCLASS.
