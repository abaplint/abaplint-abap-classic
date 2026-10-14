* TS: src/rules/newline_between_methods.ts:14:1 NewlineBetweenMethodsConf
CLASS zcl_lnt_nwln_btwn_mthds_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA count TYPE int8.
    DATA logic TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_nwln_btwn_mthds_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = CONV int8( 3 ).
    me->count = t1.
    DATA(t2) = |less|.
    me->logic = t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1503_6024db5a3c24.
  ENDMETHOD.
ENDCLASS.
