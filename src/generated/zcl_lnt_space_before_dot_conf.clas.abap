* TS: src/rules/space_before_dot.ts:15:1 SpaceBeforeDotConf
CLASS zcl_lnt_space_before_dot_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA ignore_global_definition TYPE abap_bool.
    DATA ignore_exceptions TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_space_before_dot_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->ignore_global_definition = t1.
    DATA(t2) = abap_true.
    me->ignore_exceptions = t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1608_c09f47b4abb2.
  ENDMETHOD.
ENDCLASS.
