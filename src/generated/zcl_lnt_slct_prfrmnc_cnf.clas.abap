* TS: src/rules/select_performance.ts:19:1 SelectPerformanceConf
CLASS zcl_lnt_slct_prfrmnc_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA end_select_e1c6 TYPE abap_bool.
    DATA select_star TYPE abap_bool.
    DATA star_okay_if_few_columns TYPE int8.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slct_prfrmnc_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_true.
    me->end_select_e1c6 = t1.
    DATA(t2) = abap_true.
    me->select_star = t2.
    DATA t3 TYPE int8.
    DATA(t4) = CONV i( zcl_lnt_slct_prfrmnc_mdl=>default_columns ).
    t3 = t4.
    me->star_okay_if_few_columns = t3.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1588_f3ec9406b5a5.
  ENDMETHOD.
ENDCLASS.
