* TS: src/rules/forbidden_identifier.ts:10:1 ForbiddenIdentifierConf
CLASS zcl_lnt_frbddn_idntfr_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA check_bf6e TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_frbddn_idntfr_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->check_bf6e = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1406_6ace12741310.
  ENDMETHOD.
ENDCLASS.
