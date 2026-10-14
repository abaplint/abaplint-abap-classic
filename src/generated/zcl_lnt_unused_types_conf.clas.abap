* TS: src/rules/unused_types.ts:48:1 UnusedTypesConf
CLASS zcl_lnt_unused_types_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA skip_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unused_types_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->skip_names = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1660_247f14586271.
  ENDMETHOD.
ENDCLASS.
