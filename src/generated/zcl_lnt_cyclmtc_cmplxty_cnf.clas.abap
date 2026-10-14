* TS: src/rules/cyclomatic_complexity.ts:8:1 CyclomaticComplexityConf
CLASS zcl_lnt_cyclmtc_cmplxty_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA max TYPE int8.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclmtc_cmplxty_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 20 ).
    me->max = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1371_b8b727ff42ab.
  ENDMETHOD.
ENDCLASS.
