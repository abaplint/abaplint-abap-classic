* TS: src/rules/constructor_visibility_public.ts:9:1 ConstructorVisibilityPublicConf
CLASS zcl_lnt_cnstrc_vsblty_pblc_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cnstrc_vsblty_pblc_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1365_966e575456b6.
  ENDMETHOD.
ENDCLASS.
