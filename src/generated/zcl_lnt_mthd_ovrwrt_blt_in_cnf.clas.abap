* TS: src/rules/method_overwrites_builtin.ts:9:1 MethodOverwritesBuiltInConf
CLASS zcl_lnt_mthd_ovrwrt_blt_in_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_ovrwrt_blt_in_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1489_d5071f5b6f8b.
  ENDMETHOD.
ENDCLASS.
