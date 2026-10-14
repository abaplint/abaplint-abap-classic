* TS: src/rules/chain_mainly_declarations.ts:12:1 ChainMainlyDeclarationsConf
CLASS zcl_lnt_chn_mnly_dclrtns_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA definitions TYPE abap_bool.
    DATA write_7543 TYPE abap_bool.
    DATA move_9ad0 TYPE abap_bool.
    DATA refresh_83dc TYPE abap_bool.
    DATA unassign_0e7b TYPE abap_bool.
    DATA clear_feba TYPE abap_bool.
    DATA hide_03a8 TYPE abap_bool.
    DATA free_f889 TYPE abap_bool.
    DATA include_3f11 TYPE abap_bool.
    DATA check_bf6e TYPE abap_bool.
    DATA sort_0232 TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chn_mnly_dclrtns_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->definitions = t1.
    DATA(t2) = abap_true.
    me->write_7543 = t2.
    DATA(t3) = abap_true.
    me->move_9ad0 = t3.
    DATA(t4) = abap_true.
    me->refresh_83dc = t4.
    DATA(t5) = abap_true.
    me->unassign_0e7b = t5.
    DATA(t6) = abap_true.
    me->clear_feba = t6.
    DATA(t7) = abap_true.
    me->hide_03a8 = t7.
    DATA(t8) = abap_true.
    me->free_f889 = t8.
    DATA(t9) = abap_true.
    me->include_3f11 = t9.
    DATA(t10) = abap_true.
    me->check_bf6e = t10.
    DATA(t11) = abap_true.
    me->sort_0232 = t11.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1330_07ce41b049c9.
  ENDMETHOD.
ENDCLASS.
