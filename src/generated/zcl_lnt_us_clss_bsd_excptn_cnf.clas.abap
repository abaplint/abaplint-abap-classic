* TS: src/rules/use_class_based_exceptions.ts:9:1 UseClassBasedExceptionsConf
CLASS zcl_lnt_us_clss_bsd_excptn_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_us_clss_bsd_excptn_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1667_274b46e2b84d.
  ENDMETHOD.
ENDCLASS.
