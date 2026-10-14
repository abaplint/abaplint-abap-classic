* TS: src/rules/empty_structure.ts:10:1 EmptyStructureConf
CLASS zcl_lnt_empty_structure_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA loop_7736 TYPE abap_bool.
    DATA loop_allow_if_subrc TYPE abap_bool.
    DATA if_db21 TYPE abap_bool.
    DATA while_b4ca TYPE abap_bool.
    DATA case_1731 TYPE abap_bool.
    DATA select_8b3b TYPE abap_bool.
    DATA do_0438 TYPE abap_bool.
    DATA at_501a TYPE abap_bool.
    DATA try_d21b TYPE abap_bool.
    DATA when_07a5 TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_structure_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_true.
    me->loop_7736 = t1.
    DATA(t2) = abap_true.
    me->loop_allow_if_subrc = t2.
    DATA(t3) = abap_true.
    me->if_db21 = t3.
    DATA(t4) = abap_true.
    me->while_b4ca = t4.
    DATA(t5) = abap_true.
    me->case_1731 = t5.
    DATA(t6) = abap_true.
    me->select_8b3b = t6.
    DATA(t7) = abap_true.
    me->do_0438 = t7.
    DATA(t8) = abap_true.
    me->at_501a = t8.
    DATA(t9) = abap_true.
    me->try_d21b = t9.
    DATA(t10) = abap_true.
    me->when_07a5 = t10.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1396_4e2c6377e586.
  ENDMETHOD.
ENDCLASS.
