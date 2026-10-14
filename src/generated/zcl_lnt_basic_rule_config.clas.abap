* TS: src/rules/_basic_rule_config.ts:3:1 BasicRuleConfig
CLASS zcl_lnt_basic_rule_config DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA exclude TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_basic_rule_config IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->exclude = t1.
    DATA(t2) = |Error|.
    DATA(t3) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3->has = abap_true.
    t3->value = t2.
    me->severity = t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1283_e7f038964532.
  ENDMETHOD.
ENDCLASS.
