* TS: src/rules/release_idoc.ts:9:1 ReleaseIdocConf
CLASS zcl_lnt_release_idoc_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_release_idoc_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1580_a8b413c80f2a.
  ENDMETHOD.
ENDCLASS.
