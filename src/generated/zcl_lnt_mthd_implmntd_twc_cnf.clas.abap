* TS: src/rules/method_implemented_twice.ts:7:1 MethodImplementedTwiceConf
CLASS zcl_lnt_mthd_implmntd_twc_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_implmntd_twc_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1485_00a95548cfc4.
  ENDMETHOD.
ENDCLASS.
