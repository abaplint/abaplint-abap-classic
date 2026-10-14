* TS: src/rules/check_comments.ts:8:1 CheckCommentsConf
CLASS zcl_lnt_check_comments_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA allow_end_of_line TYPE abap_bool.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_comments_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_false.
    me->allow_end_of_line = t1.
    DATA(t2) = CONV int8( 10 ).
    DATA(t3) = NEW zlnt_runtime_opti_4a236cd5714d( ).
    t3->has = abap_true.
    t3->value = t2.
    me->max_issues_per_file = t3.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1336_fc61c0e5e159.
  ENDMETHOD.
ENDCLASS.
