* TS: src/rules/unused_variables.ts:21:1 UnusedVariablesConf
CLASS zcl_lnt_unused_variables_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA skip_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA skip_abstract TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unused_variables_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->skip_names = t1.
    DATA(t2) = abap_false.
    me->skip_abstract = t2.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1662_4d2a34a9534f.
  ENDMETHOD.
ENDCLASS.
