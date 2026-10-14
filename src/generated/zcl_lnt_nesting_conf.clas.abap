* TS: src/rules/nesting.ts:8:1 NestingConf
CLASS zcl_lnt_nesting_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA depth TYPE int8.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_nesting_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 5 ).
    me->depth = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1501_99bc58f44709.
  ENDMETHOD.
ENDCLASS.
