* TS: src/rules/no_exclamation_escape.ts:9:1 NoExclamationEscapeConf
CLASS zcl_lnt_n_exclmtn_escp_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_n_exclmtn_escp_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1513_2f5771429ebd.
  ENDMETHOD.
ENDCLASS.
