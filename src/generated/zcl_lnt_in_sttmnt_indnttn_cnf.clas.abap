* TS: src/rules/in_statement_indentation.ts:14:1 InStatementIndentationConf
CLASS zcl_lnt_in_sttmnt_indnttn_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA block_statements TYPE int8.
    DATA ignore_exceptions TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_in_sttmnt_indnttn_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 2 ).
    me->block_statements = t1.
    DATA(t2) = abap_true.
    me->ignore_exceptions = t2.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1442_e2b1dc42a34f.
  ENDMETHOD.
ENDCLASS.
