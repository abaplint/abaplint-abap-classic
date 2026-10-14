* TS: src/rules/avoid_use.ts:13:1 AvoidUseConf
CLASS zcl_lnt_avoid_use_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA skip_quick_fix TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA define_4e84 TYPE abap_bool.
    DATA statics TYPE abap_bool.
    DATA default_key TYPE abap_bool.
    DATA break_c0da TYPE abap_bool.
    DATA test_seams TYPE abap_bool.
    DATA describe_lines TYPE abap_bool.
    DATA export_to_memory TYPE abap_bool.
    DATA export_to_database TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_avoid_use_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_false.
    DATA(t2) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2->has = abap_true.
    t2->value = t1.
    me->skip_quick_fix = t2.
    DATA(t3) = abap_true.
    me->define_4e84 = t3.
    DATA(t4) = abap_true.
    me->statics = t4.
    DATA(t5) = abap_true.
    me->default_key = t5.
    DATA(t6) = abap_true.
    me->break_c0da = t6.
    DATA(t7) = abap_true.
    me->test_seams = t7.
    DATA(t8) = abap_true.
    me->describe_lines = t8.
    DATA(t9) = abap_true.
    me->export_to_memory = t9.
    DATA(t10) = abap_true.
    me->export_to_database = t10.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1306_a66cfa4b6ec2.
  ENDMETHOD.
ENDCLASS.
