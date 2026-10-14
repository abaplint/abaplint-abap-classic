* TS: src/rules/prefix_is_current_class.ts:14:1 PrefixIsCurrentClassConf
CLASS zcl_lnt_prfx_is_crrnt_clss_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA omit_me_instance_calls TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfx_is_crrnt_clss_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->omit_me_instance_calls = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1572_f709e8cf746c.
  ENDMETHOD.
ENDCLASS.
