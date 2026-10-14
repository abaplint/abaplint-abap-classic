* TS: src/rules/remove_descriptions.ts:14:1 RemoveDescriptionsConf
CLASS zcl_lnt_rmv_dscrptns_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA ignore_exceptions TYPE abap_bool.
    DATA ignore_workflow TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rmv_dscrptns_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_false.
    me->ignore_exceptions = t1.
    DATA(t2) = abap_true.
    me->ignore_workflow = t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1582_fd204fc2866b.
  ENDMETHOD.
ENDCLASS.
