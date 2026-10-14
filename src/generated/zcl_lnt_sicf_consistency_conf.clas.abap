* TS: src/rules/sicf_consistency.ts:10:1 SICFConsistencyConf
CLASS zcl_lnt_sicf_consistency_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA skip_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sicf_consistency_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->skip_names = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1600_0c68bb5aae06.
  ENDMETHOD.
ENDCLASS.
