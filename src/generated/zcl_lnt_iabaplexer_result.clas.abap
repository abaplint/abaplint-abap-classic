* TS: src/abap/1_lexer/lexer_result.ts:4:1 IABAPLexerResult
CLASS zcl_lnt_iabaplexer_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA file TYPE REF TO zif_lnt_file.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iabaplexer_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_file.
    DATA(t2) = i_tokens.
    DATA(t3) = t1.
    me->file = t3.
    DATA(t4) = t2.
    me->tokens = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1710_b440cd1f06a7.
  ENDMETHOD.
ENDCLASS.
