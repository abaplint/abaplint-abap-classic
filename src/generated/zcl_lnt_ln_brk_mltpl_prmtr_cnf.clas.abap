* TS: src/rules/line_break_multiple_parameters.ts:11:1 LineBreakMultipleParametersConf
CLASS zcl_lnt_ln_brk_mltpl_prmtr_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA count TYPE int8.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ln_brk_mltpl_prmtr_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 1 ).
    me->count = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1459_376d4569df4d.
  ENDMETHOD.
ENDCLASS.
