* TS: src/abap/2_statements/expressions/and_return.ts:4:1 AndReturn
CLASS zcl_lnt_and_return DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_and_return IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t2) = |AND RETURN|.
    t1 = zcl_lnt_st_combi_module=>str( i_s = t2 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
  ENDMETHOD.
ENDCLASS.
