* TS: src/rules/cyclic_oo.ts:13:1 CyclicOOConf
CLASS zcl_lnt_cyclic_oo_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA skip_0892 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA skip_shared_memory TYPE abap_bool.
    DATA skip_testclasses TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclic_oo_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    me->skip_0892 = t1.
    DATA(t2) = abap_true.
    me->skip_shared_memory = t2.
    DATA(t3) = abap_true.
    me->skip_testclasses = t3.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1369_63e1fa9eb9e5.
  ENDMETHOD.
ENDCLASS.
