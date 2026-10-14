* TS: src/rules/allowed_object_types.ts:8:1 AllowedObjectTypesConf
CLASS zcl_lnt_allwd_objct_typs_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA allowed TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_allwd_objct_typs_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->allowed = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1302_f421f758d425.
  ENDMETHOD.
ENDCLASS.
