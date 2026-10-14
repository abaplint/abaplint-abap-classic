* TS: src/rules/local_class_naming.ts:10:1 LocalClassNamingConf
CLASS zcl_lnt_lcl_clss_nmng_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_naming_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA local_2d1d TYPE string.
    DATA exception TYPE string.
    DATA test TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lcl_clss_nmng_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = |^LCL_.+$|.
    me->local_2d1d = t1.
    DATA(t2) = |^LCX_.+$|.
    me->exception = t2.
    DATA(t3) = |^LTCL_.+$|.
    me->test = t3.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1467_2a8be49bf9a6.
  ENDMETHOD.
ENDCLASS.
