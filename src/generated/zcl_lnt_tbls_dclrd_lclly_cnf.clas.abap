* TS: src/rules/tables_declared_locally.ts:9:1 TablesDeclaredLocallyConf
CLASS zcl_lnt_tbls_dclrd_lclly_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tbls_dclrd_lclly_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1630_d6dfe01ee5ce.
  ENDMETHOD.
ENDCLASS.
