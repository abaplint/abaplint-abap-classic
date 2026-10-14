* TS: src/rules/no_public_attributes.ts:11:1 NoPublicAttributesConf
CLASS zcl_lnt_n_pblc_attrbts_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA allow_read_only TYPE abap_bool.
    DATA ignore_test_classes TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_n_pblc_attrbts_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_false.
    me->allow_read_only = t1.
    DATA(t2) = abap_false.
    me->ignore_test_classes = t2.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1525_7fef5c971c7c.
  ENDMETHOD.
ENDCLASS.
