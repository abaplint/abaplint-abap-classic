* TS: src/rules/selection_screen_texts_missing.ts:12:1 SelectionScreenTextsMissingConf
CLASS zcl_lnt_slc_scrn_txts_mssn_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slc_scrn_txts_mssn_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1594_b48f6d460f7d.
  ENDMETHOD.
ENDCLASS.
