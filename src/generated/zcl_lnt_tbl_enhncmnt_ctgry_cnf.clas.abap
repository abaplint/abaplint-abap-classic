* TS: src/rules/tabl_enhancement_category.ts:9:1 TABLEnhancementCategoryConf
CLASS zcl_lnt_tbl_enhncmnt_ctgry_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tbl_enhncmnt_ctgry_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1628_f81da917ade0.
  ENDMETHOD.
ENDCLASS.
