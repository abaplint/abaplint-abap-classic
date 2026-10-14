* TS: src/rules/clear_exporting_parameters.ts:19:1 ClearExportingParametersConf
CLASS zcl_lnt_clr_exprtng_prmtrs_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA skip_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clr_exprtng_prmtrs_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->skip_names = t1.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1354_e37ffde603df.
  ENDMETHOD.
ENDCLASS.
