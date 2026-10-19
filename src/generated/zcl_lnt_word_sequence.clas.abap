* TS: src/abap/2_statements/combi.ts:655:1 WordSequence
CLASS zcl_lnt_word_sequence DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA stri TYPE string.
    DATA words TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA seq TYPE REF TO zcl_lnt_st_sequence.
    METHODS constructor IMPORTING i_stri TYPE string.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_word_sequence IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_stri.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    me->words = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `words`.
    me->stri = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stri`.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = CONV string( me->stri ).
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t8) = |-|.
    DATA(t9) = |g|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t8 flags = t9 checked = abap_true.
    DATA(t10) = | - |.
    DATA(t11) = strlen( t6 ).
    t5 = t7->replace( p0 = t6 p1 = t10 ).
    t4 = t5.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t15) = | |.
    DATA(t16) = strlen( t4 ).
    DATA t17 TYPE i.
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE i( ).
    DATA t20 TYPE i.
    DATA(t21) = VALUE string( ).
    CREATE OBJECT t13.
    t20 = strlen( t15 ).
    t17 = 0.
    IF t20 = 0.
      WHILE t17 < t16.
        t21 = t4+t17(1).
        APPEND t21 TO t13->items.
        t17 = t17 + 1.
      ENDWHILE.
    ELSE.
      WHILE t17 <= t16.
        FIND FIRST OCCURRENCE OF t15 IN SECTION OFFSET t17 OF t4 MATCH OFFSET t18.
        IF sy-subrc = 0.
          t19 = t18 - t17.
        ELSE.
          t18 = -1.
          t19 = t16 - t17.
        ENDIF.
        CLEAR t21.
        IF t19 > 0.
          t21 = t4+t17(t19).
        ENDIF.
        APPEND t21 TO t13->items.
        IF t18 < 0.
          EXIT.
        ENDIF.
        t17 = t18 + t20.
      ENDWHILE.
    ENDIF.
    t12 = t13.
    DATA(t23) = VALUE string( ).
    t12->dense( ).
    DATA(t24) = VALUE i( ).
    DO.
      t12->load( ).
      IF t24 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t12->items INDEX t24 + 1 INTO t23.
      IF t12->has( t24 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t24 = t24 + 1.
      DATA(t25) = me->words.
      DATA t26 TYPE REF TO zcl_lnt_word.
      t26 = NEW zcl_lnt_word( i_s = t23 ).
      t25->load( ).
      APPEND t26 TO t25->items.
      t25->save( ).
    ENDDO.
    DATA t28 TYPE REF TO zcl_lnt_st_sequence.
    DATA(t29) = me->words.
    t28 = NEW zcl_lnt_st_sequence( i_list = t29 ).
    me->seq = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `seq`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t5) = CONV string( me->stri ).
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = i_r_f634.
    t2 = me->seq->run( i_r_f634 = t4 ).
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Terminal('"|.
    DATA(t4) = CONV string( me->stri ).
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t6) = |"')|.
    DATA(t7) = strlen( t2 ).
    t1 = |{ t2 }{ t6 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |str(|.
    DATA(t4) = CONV string( me->stri ).
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t6) = |)|.
    DATA(t7) = strlen( t2 ).
    t1 = |{ t2 }{ t6 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = me->words.
    DATA t4 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 1 INTO t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t5 ?= t4.
      DATA t6 TYPE REF TO object.
      t6 = t5->as_ref( ).
      t2 ?= t6.
    ELSE.
      t2 ?= t4.
    ENDIF.
    t1 = t2->first( ).
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    t5->load( ).
    APPEND t1 TO t5->items.
    t5->save( ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = me->seq->run( i_r_f634 = t5 ).
    result = t10.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d74_8cc8f0f34eff40.
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run.
    result = me->run( i_r_f634 = i_r_f634 ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~first.
    result = me->first( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one( i_x = i_x ).
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
