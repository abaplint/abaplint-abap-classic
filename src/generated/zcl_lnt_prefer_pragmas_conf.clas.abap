* TS: src/rules/prefer_pragmas.ts:8:1 PreferPragmasConf
CLASS zcl_lnt_prefer_pragmas_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA check_bf6e TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_pragmas_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t5 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA(t6) = |#EC CI_SUBRC|.
    DATA(t7) = |SUBRC_OK|.
    t5 = NEW zcl_lnt_shape_4696a092( i_pseudo = t6 i_pragma = t7 ).
    APPEND t5 TO t4->items.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t9 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA(t10) = |#EC NEEDED|.
    DATA(t11) = |NEEDED|.
    t9 = NEW zcl_lnt_shape_4696a092( i_pseudo = t10 i_pragma = t11 ).
    APPEND t9 TO t8->items.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t13 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA(t14) = |#EC NOTEXT|.
    DATA(t15) = |NO_TEXT|.
    t13 = NEW zcl_lnt_shape_4696a092( i_pseudo = t14 i_pragma = t15 ).
    APPEND t13 TO t12->items.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t17 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA(t18) = |#EC NO_HANDLER|.
    DATA(t19) = |NO_HANDLER|.
    t17 = NEW zcl_lnt_shape_4696a092( i_pseudo = t18 i_pragma = t19 ).
    APPEND t17 TO t16->items.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t1 = t20.
    me->check_bf6e = t1.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1562_60e44ec698d9.
  ENDMETHOD.
ENDCLASS.
