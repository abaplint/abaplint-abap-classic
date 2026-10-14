* TS: src/rules/abapdoc.ts:10:1 AbapdocConf
CLASS zcl_lnt_abapdoc_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA check_local TYPE abap_bool.
    DATA class_definition_38cb TYPE abap_bool.
    DATA interface_definition TYPE abap_bool.
    DATA ignore_test_classes TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abapdoc_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_false.
    me->check_local = t1.
    DATA(t2) = abap_false.
    me->class_definition_38cb = t2.
    DATA(t3) = abap_false.
    me->interface_definition = t3.
    DATA(t4) = abap_true.
    me->ignore_test_classes = t4.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1286_cc1208d19ab7.
  ENDMETHOD.
ENDCLASS.
