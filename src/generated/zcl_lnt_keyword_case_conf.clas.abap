* TS: src/rules/keyword_case.ts:24:1 KeywordCaseConf
CLASS zcl_lnt_keyword_case_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA style TYPE string.
    DATA ignore_exceptions TYPE abap_bool.
    DATA ignr_lwr_clss_implmnttn_sttmnt TYPE abap_bool.
    DATA ignore_global_class_definition TYPE abap_bool.
    DATA ignore_global_interface TYPE abap_bool.
    DATA ignore_function_module_name TYPE abap_bool.
    DATA ignore_global_class_boundaries TYPE abap_bool.
    DATA ignore_keywords TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_keyword_case_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = |upper|.
    me->style = t1.
    DATA(t2) = abap_true.
    me->ignore_exceptions = t2.
    DATA(t3) = abap_true.
    me->ignr_lwr_clss_implmnttn_sttmnt = t3.
    DATA(t4) = abap_false.
    me->ignore_global_class_definition = t4.
    DATA(t5) = abap_false.
    me->ignore_global_interface = t5.
    DATA(t6) = abap_false.
    me->ignore_function_module_name = t6.
    DATA(t7) = abap_false.
    me->ignore_global_class_boundaries = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t8.
    me->ignore_keywords = t8.
    DATA(t9) = CONV int8( 10 ).
    DATA(t10) = NEW zlnt_runtime_opti_4a236cd5714d( ).
    t10->has = abap_true.
    t10->value = t9.
    me->max_issues_per_file = t10.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1456_5caeabe2bbd8.
  ENDMETHOD.
ENDCLASS.
