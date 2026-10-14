* TS: src/cds/cds_lexer.ts:9:1 Stream
CLASS zcl_lnt_stream DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA buffer TYPE string.
    METHODS constructor IMPORTING i_buffer TYPE string.
    METHODS take_next RETURNING VALUE(result) TYPE string.
    METHODS peek_next RETURNING VALUE(result) TYPE string.
    METHODS length RETURNING VALUE(result) TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_stream IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_buffer.
    DATA(t2) = t1.
    me->buffer = t2.
  ENDMETHOD.
  METHOD take_next.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/cds/cds_lexer.ts:16|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD peek_next.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/cds/cds_lexer.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD length.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/cds/cds_lexer.ts:27|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1047_2e694b68f8c3.
  ENDMETHOD.
ENDCLASS.
