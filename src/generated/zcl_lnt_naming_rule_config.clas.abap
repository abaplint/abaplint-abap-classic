* TS: src/rules/_naming_rule_config.ts:6:1 NamingRuleConfig
CLASS zcl_lnt_naming_rule_config DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA pattern_kind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ignore_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA ignore_patterns TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_naming_rule_config IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = |required|.
    DATA(t2) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2->has = abap_true.
    t2->value = t1.
    me->pattern_kind = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    me->ignore_names = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    me->ignore_patterns = t4.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1285_cc77f2cfa3e2.
  ENDMETHOD.
ENDCLASS.
