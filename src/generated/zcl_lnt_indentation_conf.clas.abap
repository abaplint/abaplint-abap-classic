* TS: src/rules/indentation.ts:19:1 IndentationConf
CLASS zcl_lnt_indentation_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA ignore_exceptions TYPE abap_bool.
    DATA align_try_catch TYPE abap_bool.
    DATA slctn_scrn_blck_indnttn TYPE abap_bool.
    DATA global_class_skip_first TYPE abap_bool.
    DATA ignore_global_class_definition TYPE abap_bool.
    DATA ignore_global_interface TYPE abap_bool.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_indentation_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->ignore_exceptions = t1.
    DATA(t2) = abap_false.
    me->align_try_catch = t2.
    DATA(t3) = abap_false.
    me->slctn_scrn_blck_indnttn = t3.
    DATA(t4) = abap_false.
    me->global_class_skip_first = t4.
    DATA(t5) = abap_false.
    me->ignore_global_class_definition = t5.
    DATA(t6) = abap_false.
    me->ignore_global_interface = t6.
    DATA(t7) = CONV int8( 10 ).
    DATA(t8) = NEW zlnt_runtime_opti_4a236cd5714d( ).
    t8->has = abap_true.
    t8->value = t7.
    me->max_issues_per_file = t8.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1444_78bad5ea1590.
  ENDMETHOD.
ENDCLASS.
