* TS: src/rules/fm_global_parameters_obsolete.ts:9:1 FMGlobalParametersObsoleteConf
CLASS zcl_lnt_fm_glbl_prmt_obslt_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fm_glbl_prmt_obslt_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1404_8827727f45d8.
  ENDMETHOD.
ENDCLASS.
