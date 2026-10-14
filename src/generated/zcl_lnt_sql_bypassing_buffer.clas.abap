* TS: src/abap/2_statements/expressions/sql_bypassing_buffer.ts:4:1 SQLBypassingBuffer
CLASS zcl_lnt_sql_bypassing_buffer DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_bypassing_buffer IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t2) = |BYPASSING BUFFER|.
    t1 = zcl_lnt_st_combi_module=>str( i_s = t2 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263.
  ENDMETHOD.
ENDCLASS.
