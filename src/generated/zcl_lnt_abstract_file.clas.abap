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
    DATA(t1) = i_filename.
    DATA(t2) = t1.
    me->filename = t2.
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
    DATA(t4) = VALUE int8( ).
    DATA t5 TYPE string.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE string.
    DATA(t8) = `\`.
    t7 = t8.
    DATA t9 TYPE i.
    DATA t10 TYPE i.
    DATA(t11) = t7.
    DATA(t12) = strlen( t11 ).
    t10 = t12.
    t9 = t10.
    DATA t13 TYPE i.
    DATA t14 TYPE i.
    DATA t15 TYPE i.
    DATA(t16) = t5.
    DATA(t17) = strlen( t16 ).
    t15 = t17.
    DATA(t18) = t9.
    t14 = t15 - t18.
    t13 = t14.
    DATA t19 TYPE i.
    DATA(t20) = -1.
    t19 = t20.
    DO.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t13.
      DATA(t23) = 0.
      t21 = xsdbool( t22 >= t23 ).
      IF t21 = abap_false.
        EXIT.
      ENDIF.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE string( ).
      DATA(t26) = t5.
      DATA(t27) = t13.
      DATA(t28) = VALUE i( ).
      DATA t29 TYPE f.
      DATA t30 TYPE int8.
      DATA t31 TYPE int8.
      DATA(t32) = t13.
      t31 = t32.
      DATA t33 TYPE int8.
      DATA(t34) = t9.
      t33 = t34.
      t30 = t31 + t33.
      t29 = t30.
      IF t29 > range_i32_upper.
        t28 = range_i32_upper.
      ELSEIF t29 < range_i32_lower.
        t28 = range_i32_lower.
      ELSE.
        t28 = trunc( t29 ).
      ENDIF.
      DATA(t35) = strlen( t26 ).
      t27 = COND i( WHEN t27 < 0 THEN 0 WHEN t27 > t35 THEN t35 ELSE t27 ).
      t28 = COND i( WHEN t28 < 0 THEN 0 WHEN t28 > t35 THEN t35 ELSE t28 ).
      IF t27 > t28.
        t35 = t27.
        t27 = t28.
        t28 = t35.
      ENDIF.
      t35 = t28 - t27.
      t25 = t26+t27(t35).
      DATA(t36) = t7.
      t24 = xsdbool( t25 = t36 ).
      IF t24 = abap_true.
        DATA(t37) = t13.
        t19 = t37.
        EXIT.
      ENDIF.
      DATA t38 TYPE i.
      DATA(t39) = t13.
      DATA(t40) = 1.
      t38 = t39 - t40.
      t13 = t38.
    ENDDO.
    DATA t41 TYPE int8.
    DATA(t42) = t19.
    t41 = t42.
    t4 = t41.
    t3 = t4.
    DATA t43 TYPE abap_bool.
    DATA t44 TYPE i.
    DATA(t45) = t3.
    t44 = t45.
    t43 = xsdbool( t44 IS NOT INITIAL ).
    IF t43 = abap_true.
      DATA t46 TYPE int8.
      DATA t47 TYPE int8.
      DATA t48 TYPE i.
      DATA(t49) = t3.
      t48 = t49.
      t47 = t48.
      DATA(t50) = CONV int8( 1 ).
      t46 = t47 + t50.
      t3 = t46.
    ENDIF.
    DATA(t51) = VALUE string( ).
    DATA t52 TYPE string.
    DATA(t53) = t1.
    t52 = t53.
    DATA(t54) = VALUE string( ).
    DATA(t55) = t52.
    DATA(t56) = VALUE i( ).
    DATA t57 TYPE f.
    DATA(t58) = t3.
    t57 = t58.
    IF t57 > range_i32_upper.
      t56 = range_i32_upper.
    ELSEIF t57 < range_i32_lower.
      t56 = range_i32_lower.
    ELSE.
      t56 = trunc( t57 ).
    ENDIF.
    DATA t59 TYPE i.
    DATA(t60) = t52.
    DATA(t61) = strlen( t60 ).
    t59 = t61.
    DATA(t62) = strlen( t55 ).
    t56 = COND i( WHEN t56 < 0 THEN 0 WHEN t56 > t62 THEN t62 ELSE t56 ).
    t59 = COND i( WHEN t59 < 0 THEN 0 WHEN t59 > t62 THEN t62 ELSE t59 ).
    IF t56 > t59.
      t62 = t56.
      t56 = t59.
      t59 = t62.
    ENDIF.
    t62 = t59 - t56.
    t54 = t55+t56(t62).
    t51 = t54.
    t1 = t51.
    DATA(t63) = VALUE int8( ).
    DATA t64 TYPE string.
    DATA(t65) = t1.
    t64 = t65.
    DATA t66 TYPE string.
    DATA(t67) = |/|.
    t66 = t67.
    DATA t68 TYPE i.
    DATA t69 TYPE i.
    DATA(t70) = t66.
    DATA(t71) = strlen( t70 ).
    t69 = t71.
    t68 = t69.
    DATA t72 TYPE i.
    DATA t73 TYPE i.
    DATA t74 TYPE i.
    DATA(t75) = t64.
    DATA(t76) = strlen( t75 ).
    t74 = t76.
    DATA(t77) = t68.
    t73 = t74 - t77.
    t72 = t73.
    DATA t78 TYPE i.
    DATA(t79) = -1.
    t78 = t79.
    DO.
      DATA t80 TYPE abap_bool.
      DATA(t81) = t72.
      DATA(t82) = 0.
      t80 = xsdbool( t81 >= t82 ).
      IF t80 = abap_false.
        EXIT.
      ENDIF.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = VALUE string( ).
      DATA(t85) = t64.
      DATA(t86) = t72.
      DATA(t87) = VALUE i( ).
      DATA t88 TYPE f.
      DATA t89 TYPE int8.
      DATA t90 TYPE int8.
      DATA(t91) = t72.
      t90 = t91.
      DATA t92 TYPE int8.
      DATA(t93) = t68.
      t92 = t93.
      t89 = t90 + t92.
      t88 = t89.
      IF t88 > range_i32_upper.
        t87 = range_i32_upper.
      ELSEIF t88 < range_i32_lower.
        t87 = range_i32_lower.
      ELSE.
        t87 = trunc( t88 ).
      ENDIF.
      DATA(t94) = strlen( t85 ).
      t86 = COND i( WHEN t86 < 0 THEN 0 WHEN t86 > t94 THEN t94 ELSE t86 ).
      t87 = COND i( WHEN t87 < 0 THEN 0 WHEN t87 > t94 THEN t94 ELSE t87 ).
      IF t86 > t87.
        t94 = t86.
        t86 = t87.
        t87 = t94.
      ENDIF.
      t94 = t87 - t86.
      t84 = t85+t86(t94).
      DATA(t95) = t66.
      t83 = xsdbool( t84 = t95 ).
      IF t83 = abap_true.
        DATA(t96) = t72.
        t78 = t96.
        EXIT.
      ENDIF.
      DATA t97 TYPE i.
      DATA(t98) = t72.
      DATA(t99) = 1.
      t97 = t98 - t99.
      t72 = t97.
    ENDDO.
    DATA t100 TYPE int8.
    DATA(t101) = t78.
    t100 = t101.
    t63 = t100.
    t3 = t63.
    DATA t102 TYPE abap_bool.
    DATA t103 TYPE i.
    DATA(t104) = t3.
    t103 = t104.
    t102 = xsdbool( t103 IS NOT INITIAL ).
    IF t102 = abap_true.
      DATA t105 TYPE int8.
      DATA t106 TYPE int8.
      DATA t107 TYPE i.
      DATA(t108) = t3.
      t107 = t108.
      t106 = t107.
      DATA(t109) = CONV int8( 1 ).
      t105 = t106 + t109.
      t3 = t105.
    ENDIF.
    DATA(t110) = VALUE string( ).
    DATA t111 TYPE string.
    DATA(t112) = t1.
    t111 = t112.
    DATA(t113) = VALUE string( ).
    DATA(t114) = t111.
    DATA(t115) = VALUE i( ).
    DATA t116 TYPE f.
    DATA(t117) = t3.
    t116 = t117.
    IF t116 > range_i32_upper.
      t115 = range_i32_upper.
    ELSEIF t116 < range_i32_lower.
      t115 = range_i32_lower.
    ELSE.
      t115 = trunc( t116 ).
    ENDIF.
    DATA t118 TYPE i.
    DATA(t119) = t111.
    DATA(t120) = strlen( t119 ).
    t118 = t120.
    DATA(t121) = strlen( t114 ).
    t115 = COND i( WHEN t115 < 0 THEN 0 WHEN t115 > t121 THEN t121 ELSE t115 ).
    t118 = COND i( WHEN t118 < 0 THEN 0 WHEN t118 > t121 THEN t121 ELSE t118 ).
    IF t115 > t118.
      t121 = t115.
      t115 = t118.
      t118 = t121.
    ENDIF.
    t121 = t118 - t115.
    t113 = t114+t115(t121).
    t110 = t113.
    result = t110.

  ENDMETHOD.

  METHOD get_object_type.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
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
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t14) = t1.
    DATA(t15) = 1.
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t12.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ELSEIF t18->has = abap_false.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA(t22) = t12.
      t21 = t22->value.
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
    t11 = t16.
    result = t11.

  ENDMETHOD.

  METHOD get_object_name.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
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
    DATA(t11) = t1.
    DATA(t12) = 0.
    DATA(t13) = VALUE string( ).
    DATA(t14) = VALUE string( ).
    DATA(t15) = t1.
    IF t15->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t15->load( ).
    CLEAR t14.
    READ TABLE t15->items INDEX 1 INTO t14.
    DATA t16 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t16.
    DATA(t17) = |%23|.
    DATA(t18) = |g|.
    CREATE OBJECT t16 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t17 flags = t18 checked = abap_true.
    DATA(t19) = |#|.
    DATA(t20) = strlen( t14 ).
    t13 = t16->replace( p0 = t14 p1 = t19 ).
    t11->put( p0 = t12 p1 = t13 ).
    DATA(t21) = t1.
    DATA(t22) = 0.
    DATA(t23) = VALUE string( ).
    DATA(t24) = VALUE string( ).
    DATA(t25) = t1.
    IF t25->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t25->load( ).
    CLEAR t24.
    READ TABLE t25->items INDEX 1 INTO t24.
    DATA t26 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t26.
    DATA(t27) = |%3e|.
    DATA(t28) = |g|.
    CREATE OBJECT t26 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t27 flags = t28 checked = abap_true.
    DATA(t29) = |>|.
    DATA(t30) = strlen( t24 ).
    t23 = t26->replace( p0 = t24 p1 = t29 ).
    t21->put( p0 = t22 p1 = t23 ).
    DATA(t31) = t1.
    DATA(t32) = 0.
    DATA(t33) = VALUE string( ).
    DATA(t34) = VALUE string( ).
    DATA(t35) = t1.
    IF t35->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t35->load( ).
    CLEAR t34.
    READ TABLE t35->items INDEX 1 INTO t34.
    DATA t36 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t36.
    DATA(t37) = |%3c|.
    DATA(t38) = |g|.
    CREATE OBJECT t36 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t37 flags = t38 checked = abap_true.
    DATA(t39) = |<|.
    DATA(t40) = strlen( t34 ).
    t33 = t36->replace( p0 = t34 p1 = t39 ).
    t31->put( p0 = t32 p1 = t33 ).
    DATA(t41) = t1.
    DATA(t42) = 0.
    DATA(t43) = VALUE string( ).
    DATA(t44) = VALUE string( ).
    DATA(t45) = VALUE string( ).
    DATA(t46) = t1.
    IF t46->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t46->load( ).
    CLEAR t45.
    READ TABLE t46->items INDEX 1 INTO t45.
    DATA(t47) = strlen( t45 ).
    t44 = t45.
    IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t44 TO UPPER CASE.
    ELSE.
      t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t48.
    DATA(t49) = |#|.
    DATA(t50) = |g|.
    CREATE OBJECT t48 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t49 flags = t50 checked = abap_true.
    DATA(t51) = |/|.
    DATA(t52) = strlen( t44 ).
    t43 = t48->replace( p0 = t44 p1 = t51 ).
    t41->put( p0 = t42 p1 = t43 ).
    DATA(t53) = t1.
    DATA(t54) = 0.
    DATA(t55) = VALUE string( ).
    DATA(t56) = VALUE string( ).
    DATA(t57) = t1.
    IF t57->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t57->load( ).
    CLEAR t56.
    READ TABLE t57->items INDEX 1 INTO t56.
    DATA(t58) = |(|.
    DATA(t59) = |/|.
    DATA(t60) = strlen( t56 ).
    t55 = t56.
    REPLACE ALL OCCURRENCES OF t58 IN t55 WITH t59.
    t53->put( p0 = t54 p1 = t55 ).
    DATA(t61) = t1.
    DATA(t62) = 0.
    DATA(t63) = VALUE string( ).
    DATA(t64) = VALUE string( ).
    DATA(t65) = t1.
    IF t65->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t65->load( ).
    CLEAR t64.
    READ TABLE t65->items INDEX 1 INTO t64.
    DATA(t66) = |)|.
    DATA(t67) = |/|.
    DATA(t68) = strlen( t64 ).
    t63 = t64.
    REPLACE ALL OCCURRENCES OF t66 IN t63 WITH t67.
    t61->put( p0 = t62 p1 = t63 ).
    DATA(t69) = VALUE string( ).
    DATA(t70) = t1.
    IF t70->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t70->load( ).
    CLEAR t69.
    READ TABLE t70->items INDEX 1 INTO t69.
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
