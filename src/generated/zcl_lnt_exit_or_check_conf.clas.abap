* TS: src/rules/exit_or_check.ts:10:1 ExitOrCheckConf
CLASS zcl_lnt_exit_or_check_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA allow_exit TYPE abap_bool.
    DATA allow_check TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_exit_or_check_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_false.
    me->allow_exit = t1.
    DATA(t2) = abap_false.
    me->allow_check = t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1398_278430c85320.
  ENDMETHOD.
ENDCLASS.
