* TS: src/rules/empty_line_in_statement.ts:11:1 EmptyLineinStatementConf
CLASS zcl_lnt_empty_lnn_sttmnt_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA allow_chained TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_lnn_sttmnt_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_false.
    me->allow_chained = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1392_b090d9e727af.
  ENDMETHOD.
ENDCLASS.
