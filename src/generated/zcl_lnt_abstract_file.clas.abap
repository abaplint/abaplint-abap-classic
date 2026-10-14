* TS: src/files/_abstract_file.ts:3:1 AbstractFile
CLASS zcl_lnt_abstract_file DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_file IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_filename.
    DATA(t2) = t1.
    me->filename = t2.
  ENDMETHOD.
  METHOD get_filename.
    DATA(t1) = CONV string( me->filename ).
    result = t1.
    
  ENDMETHOD.
  METHOD base_name.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
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
      DATA t29 TYPE int8.
      DATA t30 TYPE int8.
      DATA(t31) = t13.
      t30 = t31.
      DATA t32 TYPE int8.
      DATA(t33) = t9.
      t32 = t33.
      t29 = t30 + t32.
      IF t29 < range_int8_bound_min OR t29 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      IF t29 < range_int_check_lo_nzik0zk OR t29 > range_int_check_hi_zik0zj.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t28 = t29.
      DATA(t34) = strlen( t26 ).
      t27 = COND i( WHEN t27 < 0 THEN 0 WHEN t27 > t34 THEN t34 ELSE t27 ).
      t28 = COND i( WHEN t28 < 0 THEN 0 WHEN t28 > t34 THEN t34 ELSE t28 ).
      IF t27 > t28.
        t34 = t27.
        t27 = t28.
        t28 = t34.
      ENDIF.
      t34 = t28 - t27.
      t25 = t26+t27(t34).
      DATA(t35) = t7.
      t24 = xsdbool( t25 = t35 ).
      IF t24 = abap_true.
        DATA(t36) = t13.
        t19 = t36.
        EXIT.
      ENDIF.
      DATA t37 TYPE i.
      DATA(t38) = t13.
      DATA(t39) = 1.
      t37 = t38 - t39.
      t13 = t37.
    ENDDO.
    DATA t40 TYPE int8.
    DATA(t41) = t19.
    t40 = t41.
    t4 = t40.
    t3 = t4.
    DATA t42 TYPE abap_bool.
    DATA t43 TYPE i.
    DATA(t44) = t3.
    t43 = t44.
    t42 = xsdbool( t43 IS NOT INITIAL ).
    IF t42 = abap_true.
      DATA t45 TYPE int8.
      DATA t46 TYPE int8.
      DATA t47 TYPE i.
      DATA(t48) = t3.
      t47 = t48.
      t46 = t47.
      DATA(t49) = CONV int8( 1 ).
      t45 = t46 + t49.
      IF t45 < range_int8_bound_min OR t45 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t3 = t45.
    ENDIF.
    DATA(t50) = VALUE string( ).
    DATA t51 TYPE string.
    DATA(t52) = t1.
    t51 = t52.
    DATA(t53) = VALUE string( ).
    DATA(t54) = t51.
    DATA(t55) = VALUE i( ).
    DATA(t56) = t3.
    IF t56 < range_int_check_lo_nzik0zk OR t56 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55 = t56.
    DATA t57 TYPE i.
    DATA(t58) = t51.
    DATA(t59) = strlen( t58 ).
    t57 = t59.
    DATA(t60) = strlen( t54 ).
    t55 = COND i( WHEN t55 < 0 THEN 0 WHEN t55 > t60 THEN t60 ELSE t55 ).
    t57 = COND i( WHEN t57 < 0 THEN 0 WHEN t57 > t60 THEN t60 ELSE t57 ).
    IF t55 > t57.
      t60 = t55.
      t55 = t57.
      t57 = t60.
    ENDIF.
    t60 = t57 - t55.
    t53 = t54+t55(t60).
    t50 = t53.
    t1 = t50.
    DATA(t61) = VALUE int8( ).
    DATA t62 TYPE string.
    DATA(t63) = t1.
    t62 = t63.
    DATA t64 TYPE string.
    DATA(t65) = |/|.
    t64 = t65.
    DATA t66 TYPE i.
    DATA t67 TYPE i.
    DATA(t68) = t64.
    DATA(t69) = strlen( t68 ).
    t67 = t69.
    t66 = t67.
    DATA t70 TYPE i.
    DATA t71 TYPE i.
    DATA t72 TYPE i.
    DATA(t73) = t62.
    DATA(t74) = strlen( t73 ).
    t72 = t74.
    DATA(t75) = t66.
    t71 = t72 - t75.
    t70 = t71.
    DATA t76 TYPE i.
    DATA(t77) = -1.
    t76 = t77.
    DO.
      DATA t78 TYPE abap_bool.
      DATA(t79) = t70.
      DATA(t80) = 0.
      t78 = xsdbool( t79 >= t80 ).
      IF t78 = abap_false.
        EXIT.
      ENDIF.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = VALUE string( ).
      DATA(t83) = t62.
      DATA(t84) = t70.
      DATA(t85) = VALUE i( ).
      DATA t86 TYPE int8.
      DATA t87 TYPE int8.
      DATA(t88) = t70.
      t87 = t88.
      DATA t89 TYPE int8.
      DATA(t90) = t66.
      t89 = t90.
      t86 = t87 + t89.
      IF t86 < range_int8_bound_min OR t86 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      IF t86 < range_int_check_lo_nzik0zk OR t86 > range_int_check_hi_zik0zj.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t85 = t86.
      DATA(t91) = strlen( t83 ).
      t84 = COND i( WHEN t84 < 0 THEN 0 WHEN t84 > t91 THEN t91 ELSE t84 ).
      t85 = COND i( WHEN t85 < 0 THEN 0 WHEN t85 > t91 THEN t91 ELSE t85 ).
      IF t84 > t85.
        t91 = t84.
        t84 = t85.
        t85 = t91.
      ENDIF.
      t91 = t85 - t84.
      t82 = t83+t84(t91).
      DATA(t92) = t64.
      t81 = xsdbool( t82 = t92 ).
      IF t81 = abap_true.
        DATA(t93) = t70.
        t76 = t93.
        EXIT.
      ENDIF.
      DATA t94 TYPE i.
      DATA(t95) = t70.
      DATA(t96) = 1.
      t94 = t95 - t96.
      t70 = t94.
    ENDDO.
    DATA t97 TYPE int8.
    DATA(t98) = t76.
    t97 = t98.
    t61 = t97.
    t3 = t61.
    DATA t99 TYPE abap_bool.
    DATA t100 TYPE i.
    DATA(t101) = t3.
    t100 = t101.
    t99 = xsdbool( t100 IS NOT INITIAL ).
    IF t99 = abap_true.
      DATA t102 TYPE int8.
      DATA t103 TYPE int8.
      DATA t104 TYPE i.
      DATA(t105) = t3.
      t104 = t105.
      t103 = t104.
      DATA(t106) = CONV int8( 1 ).
      t102 = t103 + t106.
      IF t102 < range_int8_bound_min OR t102 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t3 = t102.
    ENDIF.
    DATA(t107) = VALUE string( ).
    DATA t108 TYPE string.
    DATA(t109) = t1.
    t108 = t109.
    DATA(t110) = VALUE string( ).
    DATA(t111) = t108.
    DATA(t112) = VALUE i( ).
    DATA(t113) = t3.
    IF t113 < range_int_check_lo_nzik0zk OR t113 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t112 = t113.
    DATA t114 TYPE i.
    DATA(t115) = t108.
    DATA(t116) = strlen( t115 ).
    t114 = t116.
    DATA(t117) = strlen( t111 ).
    t112 = COND i( WHEN t112 < 0 THEN 0 WHEN t112 > t117 THEN t117 ELSE t112 ).
    t114 = COND i( WHEN t114 < 0 THEN 0 WHEN t114 > t117 THEN t117 ELSE t114 ).
    IF t112 > t114.
      t117 = t112.
      t112 = t114.
      t114 = t117.
    ENDIF.
    t117 = t114 - t112.
    t110 = t111+t112(t117).
    t107 = t110.
    result = t107.
    
  ENDMETHOD.
  METHOD get_object_type.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t3) = CONV string( me->base_name(  ) ).
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
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA(t15) = 1.
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
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
      DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
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
    DATA(t3) = CONV string( me->base_name(  ) ).
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
    DATA(t11) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA t12 TYPE string.
    DATA(t13) = VALUE string( ).
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    READ TABLE t14->items INDEX 1 INTO t13.
    DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t15.
    DATA(t16) = |%23|.
    DATA(t17) = |g|.
    CREATE OBJECT t15 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t16 flags = t17.
    DATA(t18) = |#|.
    DATA(t19) = strlen( t13 ).
    t12 = t15->replace( p0 = t13 p1 = t18 ).
    DATA(t20) = VALUE string( ).
    CLEAR t20.
    WHILE lines( t11->items ) < 1.
      APPEND t20 TO t11->items.
    ENDWHILE.
    MODIFY t11->items FROM t12 INDEX 1.
    DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA t22 TYPE string.
    DATA(t23) = VALUE string( ).
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    READ TABLE t24->items INDEX 1 INTO t23.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t25.
    DATA(t26) = |%3e|.
    DATA(t27) = |g|.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t26 flags = t27.
    DATA(t28) = |>|.
    DATA(t29) = strlen( t23 ).
    t22 = t25->replace( p0 = t23 p1 = t28 ).
    DATA(t30) = VALUE string( ).
    CLEAR t30.
    WHILE lines( t21->items ) < 1.
      APPEND t30 TO t21->items.
    ENDWHILE.
    MODIFY t21->items FROM t22 INDEX 1.
    DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA t32 TYPE string.
    DATA(t33) = VALUE string( ).
    DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    READ TABLE t34->items INDEX 1 INTO t33.
    DATA t35 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t35.
    DATA(t36) = |%3c|.
    DATA(t37) = |g|.
    CREATE OBJECT t35 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t36 flags = t37.
    DATA(t38) = |<|.
    DATA(t39) = strlen( t33 ).
    t32 = t35->replace( p0 = t33 p1 = t38 ).
    DATA(t40) = VALUE string( ).
    CLEAR t40.
    WHILE lines( t31->items ) < 1.
      APPEND t40 TO t31->items.
    ENDWHILE.
    MODIFY t31->items FROM t32 INDEX 1.
    DATA(t41) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA(t42) = VALUE string( ).
    DATA t43 TYPE string.
    DATA(t44) = VALUE string( ).
    DATA(t45) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    READ TABLE t45->items INDEX 1 INTO t44.
    DATA(t46) = strlen( t44 ).
    t43 = t44.
    IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t43 TO UPPER CASE.
    ELSE.
      t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t47.
    DATA(t48) = |#|.
    DATA(t49) = |g|.
    CREATE OBJECT t47 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t48 flags = t49.
    DATA(t50) = |/|.
    DATA(t51) = strlen( t43 ).
    t42 = t47->replace( p0 = t43 p1 = t50 ).
    DATA(t52) = VALUE string( ).
    CLEAR t52.
    WHILE lines( t41->items ) < 1.
      APPEND t52 TO t41->items.
    ENDWHILE.
    MODIFY t41->items FROM t42 INDEX 1.
    DATA(t53) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA t54 TYPE string.
    DATA(t55) = VALUE string( ).
    DATA(t56) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    READ TABLE t56->items INDEX 1 INTO t55.
    DATA(t57) = |(|.
    DATA(t58) = |/|.
    DATA(t59) = strlen( t55 ).
    t54 = t55.
    REPLACE ALL OCCURRENCES OF t57 IN t54 WITH t58.
    DATA(t60) = VALUE string( ).
    CLEAR t60.
    WHILE lines( t53->items ) < 1.
      APPEND t60 TO t53->items.
    ENDWHILE.
    MODIFY t53->items FROM t54 INDEX 1.
    DATA(t61) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA t62 TYPE string.
    DATA(t63) = VALUE string( ).
    DATA(t64) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    READ TABLE t64->items INDEX 1 INTO t63.
    DATA(t65) = |)|.
    DATA(t66) = |/|.
    DATA(t67) = strlen( t63 ).
    t62 = t63.
    REPLACE ALL OCCURRENCES OF t65 IN t62 WITH t66.
    DATA(t68) = VALUE string( ).
    CLEAR t68.
    WHILE lines( t61->items ) < 1.
      APPEND t68 TO t61->items.
    ENDWHILE.
    MODIFY t61->items FROM t62 INDEX 1.
    DATA(t69) = VALUE string( ).
    DATA(t70) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    READ TABLE t70->items INDEX 1 INTO t69.
    result = t69.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1058_ae1f86304fc2.
  ENDMETHOD.
  METHOD zif_lnt_file~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_file~get_filename.
    result = me->get_filename(  ).
  ENDMETHOD.
  METHOD zif_lnt_file~get_object_type.
    result = me->get_object_type(  ).
  ENDMETHOD.
  METHOD zif_lnt_file~get_object_name.
    result = me->get_object_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_file~get_raw.
    result = me->get_raw(  ).
  ENDMETHOD.
  METHOD zif_lnt_file~get_raw_rows.
    result = me->get_raw_rows(  ).
  ENDMETHOD.
ENDCLASS.
