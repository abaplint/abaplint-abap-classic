* TS: src/abap/1_lexer/lexer_stream.ts.module module
CLASS zcl_lnt_lexer_stream_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS nl TYPE i VALUE 10.
    CONSTANTS eof TYPE i VALUE -1.
    CLASS-DATA zlnt_builtin_init_45d6c763d51f TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_3748c4fb1b49.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lexer_stream_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_3748c4fb1b49.
    IF zlnt_builtin_init_45d6c763d51f = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_45d6c763d51f = abap_true.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1843_9723a9e87922.
  ENDMETHOD.
ENDCLASS.
