* TS: src/rules/contains_tab.ts:9:1 ContainsTabConf
CLASS zcl_lnt_contains_tab_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA spaces TYPE int8.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_contains_tab_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 1 ).
    me->spaces = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1367_d94ec004b4ca.
  ENDMETHOD.
ENDCLASS.
