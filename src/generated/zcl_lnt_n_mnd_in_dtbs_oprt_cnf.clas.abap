* TS: src/rules/no_mandt_in_database_operations.ts:10:1 NoMandtInDatabaseOperationsConf
CLASS zcl_lnt_n_mnd_in_dtbs_oprt_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_n_mnd_in_dtbs_oprt_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1521_4fb6dff89780.
  ENDMETHOD.
ENDCLASS.
