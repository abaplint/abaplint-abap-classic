* TS: src/cds/cds_lexer.ts:9:1 Stream
CLASS zcl_lnt_stream DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA buffer TYPE string.
    METHODS constructor IMPORTING i_buffer TYPE string.
    METHODS take_next RETURNING VALUE(result) TYPE string.
    METHODS peek_next RETURNING VALUE(result) TYPE string.
    METHODS length RETURNING VALUE(result) TYPE f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_stream IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_buffer.
    DATA(t2) = t1.
    me->buffer = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
  ENDMETHOD.

  METHOD take_next.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = CONV string( me->buffer ).
    DATA(t4) = 0.
    DATA(t5) = 1.
    DATA(t6) = strlen( t3 ).
    t4 = COND i( WHEN t4 < 0 THEN 0 WHEN t4 > t6 THEN t6 ELSE t4 ).
    t5 = COND i( WHEN t5 < 0 THEN 0 WHEN t5 > t6 THEN t6 ELSE t5 ).
    IF t4 > t5.
      t6 = t4.
      t4 = t5.
      t5 = t6.
    ENDIF.
    t6 = t5 - t4.
    t2 = t3+t4(t6).
    t1 = t2.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = CONV string( me->buffer ).
    t8 = t9.
    DATA(t10) = VALUE string( ).
    DATA(t11) = t8.
    DATA(t12) = 1.
    DATA t13 TYPE i.
    DATA(t14) = t8.
    DATA(t15) = strlen( t14 ).
    t13 = t15.
    DATA(t16) = strlen( t11 ).
    t12 = COND i( WHEN t12 < 0 THEN 0 WHEN t12 > t16 THEN t16 ELSE t12 ).
    t13 = COND i( WHEN t13 < 0 THEN 0 WHEN t13 > t16 THEN t16 ELSE t13 ).
    IF t12 > t13.
      t16 = t12.
      t12 = t13.
      t13 = t16.
    ENDIF.
    t16 = t13 - t12.
    t10 = t11+t12(t16).
    t7 = t10.
    me->buffer = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
    DATA(t17) = t1.
    result = t17.

  ENDMETHOD.

  METHOD peek_next.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = CONV string( me->buffer ).
    DATA(t4) = 0.
    DATA(t5) = 1.
    DATA(t6) = strlen( t3 ).
    t4 = COND i( WHEN t4 < 0 THEN 0 WHEN t4 > t6 THEN t6 ELSE t4 ).
    t5 = COND i( WHEN t5 < 0 THEN 0 WHEN t5 > t6 THEN t6 ELSE t5 ).
    IF t4 > t5.
      t6 = t4.
      t4 = t5.
      t5 = t6.
    ENDIF.
    t6 = t5 - t4.
    t2 = t3+t4(t6).
    t1 = t2.
    DATA(t7) = t1.
    result = t7.

  ENDMETHOD.

  METHOD length.
    DATA t1 TYPE f.
    DATA t2 TYPE i.
    DATA(t3) = CONV string( me->buffer ).
    DATA(t4) = strlen( t3 ).
    t2 = t4.
    t1 = t2.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1070_7e4a353d0401.
  ENDMETHOD.
ENDCLASS.
