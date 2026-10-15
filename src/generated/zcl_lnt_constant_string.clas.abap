* TS: src/abap/2_statements/expressions/constant_string.ts:4:1 ConstantString
CLASS zcl_lnt_constant_string DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_constant_string IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t2.
    DATA(t3) = |^('.*')\|(`.*`)$|.
    DATA(t4) = |^('[^\n\r|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t4 t6 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |]*')\|(`[^\n\r|.
    DATA t7 TYPE c LENGTH 1.
    CLEAR t7.
    t7 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t4 t7 INTO t4 RESPECTING BLANKS.
    DATA t8 TYPE c LENGTH 1.
    CLEAR t8.
    t8 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t4 t8 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |]*`)$|.
    DATA(t9) = ||.
    CREATE OBJECT t2 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t9.
    t2->source = t3.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t2 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
  ENDMETHOD.
ENDCLASS.
