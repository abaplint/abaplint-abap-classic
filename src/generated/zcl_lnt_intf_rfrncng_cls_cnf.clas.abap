* TS: src/rules/intf_referencing_clas.ts:12:1 IntfReferencingClasConf
CLASS zcl_lnt_intf_rfrncng_cls_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA allow TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_intf_rfrncng_cls_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->allow = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1450_68bad4036152.
  ENDMETHOD.
ENDCLASS.
