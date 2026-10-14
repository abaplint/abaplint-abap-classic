* TS: src/rules/method_length.ts:11:1 MethodLengthConf
CLASS zcl_lnt_method_length_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA statements TYPE int8.
    DATA error_when_empty TYPE abap_bool.
    DATA ignore_test_classes TYPE abap_bool.
    DATA check_forms TYPE abap_bool.
    DATA check_function_modules TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_length_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 100 ).
    me->statements = t1.
    DATA(t2) = abap_true.
    me->error_when_empty = t2.
    DATA(t3) = abap_false.
    me->ignore_test_classes = t3.
    DATA(t4) = abap_true.
    me->check_forms = t4.
    DATA(t5) = abap_true.
    me->check_function_modules = t5.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1487_7f09b587582f.
  ENDMETHOD.
ENDCLASS.
