* TS: src/rules/reduce_procedural_code.ts:10:1 ReduceProceduralCodeConf
CLASS zcl_lnt_rdc_prcdrl_cd_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA max_statements TYPE int8.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rdc_prcdrl_cd_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 10 ).
    me->max_statements = t1.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1574_c0fe10a34ebb.
  ENDMETHOD.
ENDCLASS.
