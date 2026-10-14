* TS: src/rules/preferred_compare_operator.ts:10:1 PreferredCompareOperatorConf
CLASS zcl_lnt_prfrrd_cmpr_oprtr_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA bad_operators TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfrrd_cmpr_oprtr_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = |EQ|.
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t7) = |><|.
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t9) = |NE|.
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t11) = |GE|.
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t13) = |GT|.
    APPEND t13 TO t12->items.
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t15) = |LT|.
    APPEND t15 TO t14->items.
    DATA(t16) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t17) = |LE|.
    APPEND t17 TO t16->items.
    DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t18.
    me->bad_operators = t1.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1570_24466c71269f.
  ENDMETHOD.
ENDCLASS.
