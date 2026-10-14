* TS: src/rules/call_transaction_authority_check.ts:10:1 CallTransactionAuthorityCheckConf
CLASS zcl_lnt_cll_trns_athr_chck_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cll_trns_athr_chck_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1312_dc5c8ee5ee85.
  ENDMETHOD.
ENDCLASS.
