* TS: src/rules/method_parameter_names.ts:11:1 MethodParameterNamesConf
CLASS zcl_lnt_mthd_prmtr_nms_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_naming_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA ignore_exceptions TYPE abap_bool.
    DATA importing TYPE string.
    DATA returning TYPE string.
    DATA changing TYPE string.
    DATA exporting TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_prmtr_nms_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_true.
    me->ignore_exceptions = t1.
    DATA(t2) = |^I._.+$|.
    me->importing = t2.
    DATA(t3) = |^R._.+$|.
    me->returning = t3.
    DATA(t4) = |^C._.+$|.
    me->changing = t4.
    DATA(t5) = |^E._.+$|.
    me->exporting = t5.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1491_766925514eaf.
  ENDMETHOD.
ENDCLASS.
