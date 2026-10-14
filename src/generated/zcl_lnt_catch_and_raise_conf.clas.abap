* TS: src/rules/catch_and_raise.ts:10:1 CatchAndRaiseConf
CLASS zcl_lnt_catch_and_raise_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_catch_and_raise_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1314_fe7fe1b4ff67.
  ENDMETHOD.
ENDCLASS.
