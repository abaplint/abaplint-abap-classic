* TS: src/rules/macro_naming.ts:11:1 MacroNamingConf
CLASS zcl_lnt_macro_naming_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA pattern TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macro_naming_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = |^_.+$|.
    me->pattern = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1473_330ef1d2bae6.
  ENDMETHOD.
ENDCLASS.
