* TS: src/files/_abstract_file.ts:3:1 AbstractFile
CLASS zcl_lnt_abstract_file DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_file.
    DATA filename TYPE string.
    METHODS constructor IMPORTING i_filename TYPE string.
    METHODS get_filename RETURNING VALUE(result) TYPE string.
    METHODS base_name RETURNING VALUE(result) TYPE string.
    METHODS get_object_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_object_name RETURNING VALUE(result) TYPE string.
    METHODS get_raw ABSTRACT RETURNING VALUE(result) TYPE string.
    METHODS get_raw_rows ABSTRACT RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_file IMPLEMENTATION.
  METHOD constructor.
    me->filename = i_filename.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
  ENDMETHOD.

  METHOD get_filename.
    DATA(t1) = CONV string( me->filename ).
    result = t1.

  ENDMETHOD.

  METHOD base_name.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t1 TYPE string.
    DATA(t2) = CONV string( me->filename ).
    t1 = t2.
    DATA(t3) = VALUE int8( ).
    DATA t5 TYPE string.
    t5 = t1.
    DATA t7 TYPE string.
    t7 = `\`.
    DATA t9 TYPE i.
    t9 = strlen( t7 ).
    DATA t13 TYPE i.
    DATA t15 TYPE i.
    t15 = strlen( t5 ).
    t13 = t15 - t9.
    DATA t19 TYPE i.
    t19 = -1.
    DO.
      IF xsdbool( t13 >= 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t25) = VALUE string( ).
      DATA(t27) = t13.
      DATA(t28) = VALUE i( ).
      DATA t29 TYPE f.
      DATA t30 TYPE int8.
      DATA t31 TYPE int8.
      t31 = t13.
      DATA t33 TYPE int8.
      t33 = t9.
      t30 = t31 + t33.
      t29 = t30.
      IF t29 > range_i32_upper.
        t28 = range_i32_upper.
      ELSEIF t29 < range_i32_lower.
        t28 = range_i32_lower.
      ELSE.
        t28 = trunc( t29 ).
      ENDIF.
      DATA(t35) = strlen( t5 ).
      t27 = COND i( WHEN t27 < 0 THEN 0 WHEN t27 > t35 THEN t35 ELSE t27 ).
      t28 = COND i( WHEN t28 < 0 THEN 0 WHEN t28 > t35 THEN t35 ELSE t28 ).
      IF t27 > t28.
        t35 = t27.
        t27 = t28.
        t28 = t35.
      ENDIF.
      t35 = t28 - t27.
      t25 = t5+t27(t35).
      IF xsdbool( t25 = t7 ) = abap_true.
        t19 = t13.
        EXIT.
      ENDIF.
      DATA(t40) = 1.
      t13 = t13 - t40.
    ENDDO.
    DATA t41 TYPE int8.
    t41 = t19.
    t3 = t41.
    DATA t44 TYPE i.
    t44 = t3.
    IF xsdbool( t44 IS NOT INITIAL ) = abap_true.
      DATA t47 TYPE int8.
      DATA t48 TYPE i.
      t48 = t3.
      t47 = t48.
      DATA(t50) = CONV int8( 1 ).
      t3 = t47 + t50.
    ENDIF.
    DATA t52 TYPE string.
    t52 = t1.
    DATA(t54) = VALUE string( ).
    DATA(t56) = VALUE i( ).
    DATA t57 TYPE f.
    t57 = t3.
    IF t57 > range_i32_upper.
      t56 = range_i32_upper.
    ELSEIF t57 < range_i32_lower.
      t56 = range_i32_lower.
    ELSE.
      t56 = trunc( t57 ).
    ENDIF.
    DATA t59 TYPE i.
    t59 = strlen( t52 ).
    DATA(t62) = strlen( t52 ).
    t56 = COND i( WHEN t56 < 0 THEN 0 WHEN t56 > t62 THEN t62 ELSE t56 ).
    t59 = COND i( WHEN t59 < 0 THEN 0 WHEN t59 > t62 THEN t62 ELSE t59 ).
    IF t56 > t59.
      t62 = t56.
      t56 = t59.
      t59 = t62.
    ENDIF.
    t62 = t59 - t56.
    t54 = t52+t56(t62).
    t1 = t54.
    DATA t64 TYPE string.
    t64 = t1.
    DATA t66 TYPE string.
    t66 = |/|.
    DATA t68 TYPE i.
    t68 = strlen( t66 ).
    DATA t72 TYPE i.
    DATA t74 TYPE i.
    t74 = strlen( t64 ).
    t72 = t74 - t68.
    DATA t78 TYPE i.
    t78 = -1.
    DO.
      IF xsdbool( t72 >= 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t84) = VALUE string( ).
      DATA(t86) = t72.
      DATA(t87) = VALUE i( ).
      DATA t88 TYPE f.
      DATA t89 TYPE int8.
      DATA t90 TYPE int8.
      t90 = t72.
      DATA t92 TYPE int8.
      t92 = t68.
      t89 = t90 + t92.
      t88 = t89.
      IF t88 > range_i32_upper.
        t87 = range_i32_upper.
      ELSEIF t88 < range_i32_lower.
        t87 = range_i32_lower.
      ELSE.
        t87 = trunc( t88 ).
      ENDIF.
      DATA(t94) = strlen( t64 ).
      t86 = COND i( WHEN t86 < 0 THEN 0 WHEN t86 > t94 THEN t94 ELSE t86 ).
      t87 = COND i( WHEN t87 < 0 THEN 0 WHEN t87 > t94 THEN t94 ELSE t87 ).
      IF t86 > t87.
        t94 = t86.
        t86 = t87.
        t87 = t94.
      ENDIF.
      t94 = t87 - t86.
      t84 = t64+t86(t94).
      IF xsdbool( t84 = t66 ) = abap_true.
        t78 = t72.
        EXIT.
      ENDIF.
      DATA(t99) = 1.
      t72 = t72 - t99.
    ENDDO.
    DATA t100 TYPE int8.
    t100 = t78.
    t3 = t100.
    DATA t103 TYPE i.
    t103 = t3.
    IF xsdbool( t103 IS NOT INITIAL ) = abap_true.
      DATA t106 TYPE int8.
      DATA t107 TYPE i.
      t107 = t3.
      t106 = t107.
      DATA(t109) = CONV int8( 1 ).
      t3 = t106 + t109.
    ENDIF.
    DATA t111 TYPE string.
    t111 = t1.
    DATA(t113) = VALUE string( ).
    DATA(t115) = VALUE i( ).
    DATA t116 TYPE f.
    t116 = t3.
    IF t116 > range_i32_upper.
      t115 = range_i32_upper.
    ELSEIF t116 < range_i32_lower.
      t115 = range_i32_lower.
    ELSE.
      t115 = trunc( t116 ).
    ENDIF.
    DATA t118 TYPE i.
    t118 = strlen( t111 ).
    DATA(t121) = strlen( t111 ).
    t115 = COND i( WHEN t115 < 0 THEN 0 WHEN t115 > t121 THEN t121 ELSE t115 ).
    t118 = COND i( WHEN t118 < 0 THEN 0 WHEN t118 > t121 THEN t121 ELSE t118 ).
    IF t115 > t118.
      t121 = t115.
      t115 = t118.
      t118 = t121.
    ENDIF.
    t121 = t118 - t115.
    t113 = t111+t115(t121).
    result = t113.

  ENDMETHOD.

  METHOD get_object_type.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t3) = CONV string( me->base_name( ) ).
    DATA(t4) = |.|.
    DATA(t5) = strlen( t3 ).
    DATA t6 TYPE i.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE i( ).
    DATA t9 TYPE i.
    DATA(t10) = VALUE string( ).
    CREATE OBJECT t2.
    t9 = strlen( t4 ).
    t6 = 0.
    IF t9 = 0.
      WHILE t6 < t5.
        t10 = t3+t6(1).
        APPEND t10 TO t2->items.
        t6 = t6 + 1.
      ENDWHILE.
    ELSE.
      WHILE t6 <= t5.
        FIND FIRST OCCURRENCE OF t4 IN SECTION OFFSET t6 OF t3 MATCH OFFSET t7.
        IF sy-subrc = 0.
          t8 = t7 - t6.
        ELSE.
          t7 = -1.
          t8 = t5 - t6.
        ENDIF.
        CLEAR t10.
        IF t8 > 0.
          t10 = t3+t6(t8).
        ENDIF.
        APPEND t10 TO t2->items.
        IF t7 < 0.
          EXIT.
        ENDIF.
        t6 = t7 + t9.
      ENDWHILE.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t12 = t2->get( p0 = 1 ).
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = VALUE abap_bool( ).
    IF t12 IS INITIAL.
      t17 = abap_true.
    ELSEIF t12->has = abap_false.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
    ELSE.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      t21 = t12->value.
      DATA(t23) = strlen( t21 ).
      t20 = t21.
      IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t20 TO UPPER CASE.
      ELSE.
        t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
      ENDIF.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t20.
      t16 = t24.
    ENDIF.
    result = t16.

  ENDMETHOD.

  METHOD get_object_name.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t3) = CONV string( me->base_name( ) ).
    DATA(t4) = |.|.
    DATA(t5) = strlen( t3 ).
    DATA t6 TYPE i.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE i( ).
    DATA t9 TYPE i.
    DATA(t10) = VALUE string( ).
    CREATE OBJECT t2.
    t9 = strlen( t4 ).
    t6 = 0.
    IF t9 = 0.
      WHILE t6 < t5.
        t10 = t3+t6(1).
        APPEND t10 TO t2->items.
        t6 = t6 + 1.
      ENDWHILE.
    ELSE.
      WHILE t6 <= t5.
        FIND FIRST OCCURRENCE OF t4 IN SECTION OFFSET t6 OF t3 MATCH OFFSET t7.
        IF sy-subrc = 0.
          t8 = t7 - t6.
        ELSE.
          t7 = -1.
          t8 = t5 - t6.
        ENDIF.
        CLEAR t10.
        IF t8 > 0.
          t10 = t3+t6(t8).
        ENDIF.
        APPEND t10 TO t2->items.
        IF t7 < 0.
          EXIT.
        ENDIF.
        t6 = t7 + t9.
      ENDWHILE.
    ENDIF.
    t1 = t2.
    DATA(t14) = VALUE string( ).
    IF t1->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t14.
    DATA t16 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t16 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
    DATA(t20) = strlen( t14 ).
    t1->put( p0 = 0 p1 = t16->replace( p0 = t14 p1 = |#| ) ).
    DATA(t24) = VALUE string( ).
    IF t1->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t24.
    DATA t26 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t26 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
    DATA(t30) = strlen( t24 ).
    t1->put( p0 = 0 p1 = t26->replace( p0 = t24 p1 = |>| ) ).
    DATA(t34) = VALUE string( ).
    IF t1->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t34.
    DATA t36 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t36 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
    DATA(t40) = strlen( t34 ).
    t1->put( p0 = 0 p1 = t36->replace( p0 = t34 p1 = |<| ) ).
    DATA(t44) = VALUE string( ).
    DATA(t45) = VALUE string( ).
    IF t1->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t45.
    DATA(t47) = strlen( t45 ).
    t44 = t45.
    IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t44 TO UPPER CASE.
    ELSE.
      t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t48 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
    DATA(t52) = strlen( t44 ).
    t1->put( p0 = 0 p1 = t48->replace( p0 = t44 p1 = |/| ) ).
    DATA(t55) = VALUE string( ).
    DATA(t56) = VALUE string( ).
    IF t1->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t56.
    DATA(t58) = |(|.
    DATA(t59) = |/|.
    DATA(t60) = strlen( t56 ).
    t55 = t56.
    REPLACE ALL OCCURRENCES OF t58 IN t55 WITH t59.
    t1->put( p0 = 0 p1 = t55 ).
    DATA(t63) = VALUE string( ).
    DATA(t64) = VALUE string( ).
    IF t1->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t64.
    DATA(t66) = |)|.
    DATA(t67) = |/|.
    DATA(t68) = strlen( t64 ).
    t63 = t64.
    REPLACE ALL OCCURRENCES OF t66 IN t63 WITH t67.
    t1->put( p0 = 0 p1 = t63 ).
    DATA(t69) = VALUE string( ).
    IF t1->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t69.
    result = t69.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1149_f506d94661e6.
  ENDMETHOD.

  METHOD zif_lnt_file~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_file~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_file~get_object_type.
    result = me->get_object_type( ).
  ENDMETHOD.

  METHOD zif_lnt_file~get_object_name.
    result = me->get_object_name( ).
  ENDMETHOD.

  METHOD zif_lnt_file~get_raw.
    result = me->get_raw( ).
  ENDMETHOD.

  METHOD zif_lnt_file~get_raw_rows.
    result = me->get_raw_rows( ).
  ENDMETHOD.
ENDCLASS.
