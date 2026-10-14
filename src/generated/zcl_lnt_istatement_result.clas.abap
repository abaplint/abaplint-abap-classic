* TS: src/abap/2_statements/statement_result.ts:4:1 IStatementResult
CLASS zcl_lnt_istatement_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA file TYPE REF TO zif_lnt_file.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_istatement_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t4) = CAST zif_lnt_file( t1 ).
    me->file = t4.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    me->tokens = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    me->statements = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d345_67103989a771.
  ENDMETHOD.
ENDCLASS.
