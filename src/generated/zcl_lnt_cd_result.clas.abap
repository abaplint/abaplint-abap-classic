* TS: src/cds/cds_lexer.ts:40:1 Result
CLASS zcl_lnt_cd_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA result_9728 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS add_51c1 IMPORTING i_text TYPE string i_row TYPE int8 i_col TYPE int8 i_mode TYPE int8 RETURNING VALUE(result) TYPE string.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cd_result IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->result_9728 = t1.
  ENDMETHOD.
  METHOD add_51c1.
    DATA(t1) = i_text.
    DATA(t2) = i_row.
    DATA(t3) = i_col.
    DATA(t4) = i_mode.
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/cds/cds_lexer.ts:43|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD get_db65.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/cds/cds_lexer.ts:55|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1048_5249e94bd340.
  ENDMETHOD.
ENDCLASS.
