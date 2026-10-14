* TS: src/rules/classic_exceptions_overlap.ts:8:1 ClassicExceptionsOverlapConf
CLASS zcl_lnt_clssc_excptn_ovrlp_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clssc_excptn_ovrlp_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1352_d2893d852548.
  ENDMETHOD.
ENDCLASS.
