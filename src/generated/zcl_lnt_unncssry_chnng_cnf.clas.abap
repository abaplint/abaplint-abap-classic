* TS: src/rules/unnecessary_chaining.ts:13:1 UnnecessaryChainingConf
CLASS zcl_lnt_unncssry_chnng_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA ignore_exceptions TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unncssry_chnng_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 10 ).
    DATA(t2) = NEW zlnt_runtime_opti_4a236cd5714d( ).
    t2->has = abap_true.
    t2->value = t1.
    me->max_issues_per_file = t2.
    DATA(t3) = abap_true.
    me->ignore_exceptions = t3.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1642_31ab600d2d71.
  ENDMETHOD.
ENDCLASS.
