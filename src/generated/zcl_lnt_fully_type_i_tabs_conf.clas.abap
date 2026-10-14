* TS: src/rules/fully_type_itabs.ts:9:1 FullyTypeITabsConf
CLASS zcl_lnt_fully_type_i_tabs_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fully_type_i_tabs_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1416_a6ea51b9635c.
  ENDMETHOD.
ENDCLASS.
