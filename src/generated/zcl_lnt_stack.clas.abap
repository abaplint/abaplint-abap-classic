* TS: src/pretty_printer/indent.ts:223:1 Stack
CLASS zcl_lnt_stack DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA items TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    METHODS constructor.
    METHODS push IMPORTING i_item TYPE f.
    METHODS peek RETURNING VALUE(result) TYPE f.
    METHODS pop RETURNING VALUE(result) TYPE f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_stack IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t1.
    me->items = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
  ENDMETHOD.

  METHOD push.
    DATA(t1) = i_item.
    DATA(t2) = me->items.
    DATA(t3) = t1.
    t2->load( ).
    APPEND t3 TO t2->items.
    t2->save( ).
  ENDMETHOD.

  METHOD peek.
    DATA(t1) = VALUE f( ).
    DATA(t2) = me->items.
    DATA t3 TYPE i.
    DATA t4 TYPE i.
    DATA(t5) = me->items.
    t5->load( ).
    t4 = lines( t5->items ).
    DATA(t6) = 1.
    t3 = t4 - t6.
    t3 = t3 + 1.
    IF t2->has( t3 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t2->load( ).
    CLEAR t1.
    READ TABLE t2->items INDEX t3 INTO t1.
    result = t1.

  ENDMETHOD.

  METHOD pop.
    DATA(t1) = VALUE f( ).
    DATA(t2) = VALUE f( ).
    DATA(t3) = me->items.
    DATA t4 TYPE i.
    DATA t5 TYPE i.
    DATA(t6) = me->items.
    t6->load( ).
    t5 = lines( t6->items ).
    DATA(t7) = 1.
    t4 = t5 - t7.
    t4 = t4 + 1.
    IF t3->has( t4 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t3->load( ).
    CLEAR t2.
    READ TABLE t3->items INDEX t4 INTO t2.
    t1 = t2.
    DATA t8 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA(t9) = me->items.
    DATA(t10) = 0.
    DATA t11 TYPE i.
    DATA t12 TYPE i.
    DATA(t13) = me->items.
    t13->load( ).
    t12 = lines( t13->items ).
    DATA(t14) = 1.
    t11 = t12 - t14.
    t8 = t9->slice2( p0 = t10 p1 = t11 ).
    me->items = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
    DATA(t15) = t1.
    result = t15.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1374_ed21c460cae9.
  ENDMETHOD.
ENDCLASS.
