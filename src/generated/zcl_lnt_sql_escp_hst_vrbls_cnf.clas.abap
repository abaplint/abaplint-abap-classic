* TS: src/rules/sql_escape_host_variables.ts:12:1 SQLEscapeHostVariablesConf
CLASS zcl_lnt_sql_escp_hst_vrbls_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_escp_hst_vrbls_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1610_dbbf6d6be221.
  ENDMETHOD.
ENDCLASS.
