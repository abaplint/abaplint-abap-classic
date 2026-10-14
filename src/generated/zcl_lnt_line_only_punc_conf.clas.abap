* TS: src/rules/line_only_punc.ts:12:1 LineOnlyPuncConf
CLASS zcl_lnt_line_only_punc_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA ignore_exceptions TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_line_only_punc_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->ignore_exceptions = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1465_1d098da1d2a1.
  ENDMETHOD.
ENDCLASS.
