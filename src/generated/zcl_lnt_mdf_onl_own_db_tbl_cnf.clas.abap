* TS: src/rules/modify_only_own_db_tables.ts:12:1 ModifyOnlyOwnDBTablesConf
CLASS zcl_lnt_mdf_onl_own_db_tbl_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA report_dynamic TYPE abap_bool.
    DATA own_tables TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mdf_onl_own_db_tbl_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->report_dynamic = t1.
    DATA(t2) = |^[yz]|.
    me->own_tables = t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1495_a0a214691925.
  ENDMETHOD.
ENDCLASS.
