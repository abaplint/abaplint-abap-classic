* TS: src/edit_helper.ts:23:1 EditDraft
CLASS zcl_lnt_edit_draft DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA end TYPE REF TO zcl_lnt_position.
    DATA rows TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA file TYPE REF TO zif_lnt_file.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file.
    METHODS replace_128a IMPORTING i_pos TYPE REF TO zcl_lnt_position i_value TYPE string.
    METHODS to_edit RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_edit_draft IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zcl_lnt_position.
    CLEAR t2.
    me->start = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    DATA t3 TYPE REF TO zcl_lnt_position.
    CLEAR t3.
    me->end = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = t1.
    t4 = t5->get_raw_rows( ).
    me->rows = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rows`.
    DATA(t6) = t1.
    me->file = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
  ENDMETHOD.

  METHOD replace_128a.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_pos.
    DATA(t2) = i_value.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA(t6) = me->start.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_position.
      DATA(t13) = t1.
      t12 = t13.
      DATA t14 TYPE REF TO zcl_lnt_position.
      DATA t15 TYPE REF TO zcl_lnt_position.
      DATA(t16) = me->start.
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE f.
      DATA(t20) = t12.
      t19 = t20->row.
      DATA t21 TYPE f.
      DATA(t22) = t14.
      t21 = t22->row.
      t18 = xsdbool( t19 < t21 ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE f.
        DATA(t26) = t12.
        t25 = t26->row.
        DATA t27 TYPE f.
        DATA(t28) = t14.
        t27 = t28->row.
        t24 = xsdbool( t25 = t27 ).
        t23 = t24.
        IF t24 = abap_true.
          DATA t29 TYPE abap_bool.
          DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t31) = t12.
          t30 = t31->col.
          DATA t32 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t33) = t14.
          t32 = t33->col.
          t29 = zlnt_runtime_numb_290eb04a9758=>compare( left = t30 right = t32 op = `<` ).
          t23 = t29.
        ENDIF.
        t17 = t23.
      ENDIF.
      t11 = t17.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_position.
      CLEAR t34.
      DATA(t35) = abap_true.
      IF t35 = abap_true.
        DATA(t36) = t1.
        t34 = t36.
      ELSE.
        DATA t37 TYPE REF TO zcl_lnt_position.
        CLEAR t37.
        t34 = t37.
      ENDIF.
      me->start = t34.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    ENDIF.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA t40 TYPE f.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA(t42) = t1.
    t41 = t42.
    DATA t43 TYPE f.
    DATA(t44) = t41.
    t43 = t44->row.
    t40 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t47 TYPE REF TO zcl_lnt_position.
    DATA(t48) = t1.
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t50) = t47.
    t49 = t50->col.
    t46 = t49.
    DATA t51 TYPE f.
    DATA t52 TYPE i.
    DATA(t53) = t2.
    DATA(t54) = strlen( t53 ).
    t52 = t54.
    t51 = t52.
    DATA(t55) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t55->has = abap_true.
    t55->value = t51.
    t45 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t46 right = t55 op = `+` ).
    t39 = NEW zcl_lnt_position( i_row = t40 i_col = t45 ).
    t38 = t39.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zcl_lnt_position.
    DATA(t59) = me->end.
    t58 = t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    t60 = t61.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = t58.
    IF t63 IS INITIAL.
      t62 = abap_true.
    ENDIF.
    t57 = t62.
    t56 = t57.
    IF t57 = abap_false.
      DATA t64 TYPE abap_bool.
      DATA(t65) = t38.
      DATA t66 TYPE REF TO zcl_lnt_position.
      DATA(t67) = me->end.
      t66 = t67.
      t64 = t65->is_after( i_p = t66 ).
      t56 = t64.
    ENDIF.
    IF t56 = abap_true.
      DATA t68 TYPE REF TO zcl_lnt_position.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA(t70) = t38.
        t68 = t70.
      ELSE.
        DATA t71 TYPE REF TO zcl_lnt_position.
        CLEAR t71.
        t68 = t71.
      ENDIF.
      me->end = t68.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    ENDIF.
    DATA(t72) = VALUE string( ).
    DATA(t73) = VALUE string( ).
    DATA(t74) = me->rows.
    DATA(t75) = VALUE i( ).
    DATA t76 TYPE f.
    DATA t77 TYPE f.
    DATA t78 TYPE REF TO zcl_lnt_position.
    DATA(t79) = t1.
    t78 = t79.
    DATA t80 TYPE f.
    DATA(t81) = t78.
    t80 = t81->row.
    t77 = t80.
    DATA(t82) = CONV f( 1 ).
    t76 = t77 - t82.
    IF t76 > range_i32_upper.
      t75 = range_i32_upper.
    ELSEIF t76 < range_i32_lower.
      t75 = range_i32_lower.
    ELSE.
      t75 = trunc( t76 ).
    ENDIF.
    t75 = t75 + 1.
    IF t74->has( t75 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t74->load( ).
    CLEAR t73.
    READ TABLE t74->items INDEX t75 INTO t73.
    t72 = t73.
    DATA(t83) = me->rows.
    DATA(t84) = VALUE i( ).
    DATA t85 TYPE f.
    DATA t86 TYPE f.
    DATA t87 TYPE REF TO zcl_lnt_position.
    DATA(t88) = t1.
    t87 = t88.
    DATA t89 TYPE f.
    DATA(t90) = t87.
    t89 = t90->row.
    t86 = t89.
    DATA(t91) = CONV f( 1 ).
    t85 = t86 - t91.
    IF t85 > range_i32_upper.
      t84 = range_i32_upper.
    ELSEIF t85 < range_i32_lower.
      t84 = range_i32_lower.
    ELSE.
      t84 = trunc( t85 ).
    ENDIF.
    DATA(t92) = VALUE string( ).
    DATA(t93) = VALUE string( ).
    DATA(t94) = VALUE string( ).
    DATA(t95) = t72.
    DATA(t96) = 0.
    DATA t97 TYPE i.
    DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t100 TYPE REF TO zcl_lnt_position.
    DATA(t101) = t1.
    t100 = t101.
    DATA t102 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t103) = t100.
    t102 = t103->col.
    t99 = t102.
    DATA(t104) = CONV f( 1 ).
    DATA(t105) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t105->has = abap_true.
    t105->value = t104.
    t98 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t99 right = t105 op = `-` ).
    t97 = zlnt_runtime_numb_290eb04a9758=>index( t98 ).
    DATA(t106) = strlen( t95 ).
    IF t96 < 0.
      t96 = t96 + t106.
      IF t96 < 0.
        t96 = 0.
      ENDIF.
    ENDIF.
    IF t96 > t106 OR t97 <= 0.
      CLEAR t94.
    ELSE.
      IF t97 > t106 - t96.
        t97 = t106 - t96.
      ENDIF.
      t94 = t95+t96(t97).
    ENDIF.
    DATA(t107) = t2.
    DATA(t108) = strlen( t94 ).
    t93 = |{ t94 }{ t107 }|.
    DATA(t109) = VALUE string( ).
    DATA t110 TYPE string.
    DATA(t111) = t72.
    t110 = t111.
    DATA(t112) = VALUE string( ).
    DATA(t113) = t110.
    DATA t114 TYPE i.
    DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t118 TYPE REF TO zcl_lnt_position.
    DATA(t119) = t1.
    t118 = t119.
    DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t121) = t118.
    t120 = t121->col.
    t117 = t120.
    DATA t122 TYPE f.
    DATA t123 TYPE i.
    DATA(t124) = t2.
    DATA(t125) = strlen( t124 ).
    t123 = t125.
    t122 = t123.
    DATA(t126) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t126->has = abap_true.
    t126->value = t122.
    t116 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t117 right = t126 op = `+` ).
    DATA(t127) = CONV f( 1 ).
    DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t128->has = abap_true.
    t128->value = t127.
    t115 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t116 right = t128 op = `-` ).
    t114 = zlnt_runtime_numb_290eb04a9758=>index( t115 ).
    DATA t129 TYPE i.
    DATA(t130) = t110.
    DATA(t131) = strlen( t130 ).
    t129 = t131.
    DATA(t132) = strlen( t113 ).
    IF t114 < 0.
      t114 = t114 + t132.
      IF t114 < 0.
        t114 = 0.
      ENDIF.
    ENDIF.
    IF t114 > t132 OR t129 <= 0.
      CLEAR t112.
    ELSE.
      IF t129 > t132 - t114.
        t129 = t132 - t114.
      ENDIF.
      t112 = t113+t114(t129).
    ENDIF.
    t109 = t112.
    DATA(t133) = strlen( t93 ).
    t92 = |{ t93 }{ t109 }|.
    t83->put( p0 = t84 p1 = t92 ).
  ENDMETHOD.

  METHOD to_edit.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA(t3) = me->start.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_st_fa837731be5a.
      DATA(t9) = |EditDraft, start undefined|.
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      CREATE OBJECT t8->source_value.
      t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t8->source_value->sval = t9.
      RAISE EXCEPTION t8.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zcl_lnt_position.
      DATA(t12) = me->end.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      t10 = t15.
      IF t10 = abap_true.
        DATA t17 TYPE REF TO zlnt_exception_st_fa837731be5a.
        DATA(t18) = |EditDraft, end undefined|.
        t17 = NEW #( ).
        t17->payload = t18.
        CLEAR t17->source_value.
        CREATE OBJECT t17->source_value.
        t17->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t17->source_value->sval = t18.
        RAISE EXCEPTION t17.
      ENDIF.
    ENDIF.
    DATA t19 TYPE string.
    DATA(t20) = ||.
    t19 = t20.
    DATA t21 TYPE f.
    DATA t22 TYPE f.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA t24 TYPE REF TO zcl_lnt_position.
    DATA(t25) = me->start.
    t24 = t25.
    t23 = t24.
    DATA t26 TYPE f.
    DATA(t27) = t23.
    t26 = t27->row.
    t22 = t26.
    t21 = t22.
    DO.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t21.
      DATA t30 TYPE f.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA(t33) = me->end.
      t32 = t33.
      t31 = t32.
      DATA t34 TYPE f.
      DATA(t35) = t31.
      t34 = t35->row.
      t30 = t34.
      t28 = xsdbool( t29 <= t30 ).
      IF t28 = abap_false.
        EXIT.
      ENDIF.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      DATA(t38) = t21.
      DATA t39 TYPE f.
      DATA t40 TYPE REF TO zcl_lnt_position.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA(t42) = me->start.
      t41 = t42.
      t40 = t41.
      DATA t43 TYPE f.
      DATA(t44) = t40.
      t43 = t44->row.
      t39 = t43.
      t37 = xsdbool( t38 = t39 ).
      t36 = t37.
      IF t37 = abap_true.
        DATA t45 TYPE abap_bool.
        DATA(t46) = t21.
        DATA t47 TYPE f.
        DATA t48 TYPE REF TO zcl_lnt_position.
        DATA t49 TYPE REF TO zcl_lnt_position.
        DATA(t50) = me->end.
        t49 = t50.
        t48 = t49.
        DATA t51 TYPE f.
        DATA(t52) = t48.
        t51 = t52->row.
        t47 = t51.
        t45 = xsdbool( t46 = t47 ).
        t36 = t45.
      ENDIF.
      IF t36 = abap_true.
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE string( ).
        DATA(t55) = me->rows.
        DATA(t56) = VALUE i( ).
        DATA t57 TYPE f.
        DATA(t58) = t21.
        DATA(t59) = CONV f( 1 ).
        t57 = t58 - t59.
        IF t57 > range_i32_upper.
          t56 = range_i32_upper.
        ELSEIF t57 < range_i32_lower.
          t56 = range_i32_lower.
        ELSE.
          t56 = trunc( t57 ).
        ENDIF.
        t56 = t56 + 1.
        IF t55->has( t56 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t55->load( ).
        CLEAR t54.
        READ TABLE t55->items INDEX t56 INTO t54.
        DATA t60 TYPE i.
        DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t62 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t63 TYPE REF TO zcl_lnt_position.
        DATA t64 TYPE REF TO zcl_lnt_position.
        DATA(t65) = me->start.
        t64 = t65.
        t63 = t64.
        DATA t66 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t67) = t63.
        t66 = t67->col.
        t62 = t66.
        DATA(t68) = CONV f( 1 ).
        DATA(t69) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t69->has = abap_true.
        t69->value = t68.
        t61 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t62 right = t69 op = `-` ).
        t60 = zlnt_runtime_numb_290eb04a9758=>index( t61 ).
        DATA t70 TYPE i.
        DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t73 TYPE REF TO zcl_lnt_position.
        DATA t74 TYPE REF TO zcl_lnt_position.
        DATA(t75) = me->end.
        t74 = t75.
        t73 = t74.
        DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t77) = t73.
        t76 = t77->col.
        t72 = t76.
        DATA(t78) = CONV f( 1 ).
        DATA(t79) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t79->has = abap_true.
        t79->value = t78.
        t71 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t72 right = t79 op = `-` ).
        t70 = zlnt_runtime_numb_290eb04a9758=>index( t71 ).
        DATA(t80) = strlen( t54 ).
        t60 = COND i( WHEN t60 < 0 THEN 0 WHEN t60 > t80 THEN t80 ELSE t60 ).
        t70 = COND i( WHEN t70 < 0 THEN 0 WHEN t70 > t80 THEN t80 ELSE t70 ).
        IF t60 > t70.
          t80 = t60.
          t60 = t70.
          t70 = t80.
        ENDIF.
        t80 = t70 - t60.
        t53 = t54+t60(t80).
        t19 = t53.
      ELSE.
        DATA t81 TYPE abap_bool.
        DATA(t82) = t21.
        DATA t83 TYPE f.
        DATA t84 TYPE REF TO zcl_lnt_position.
        DATA t85 TYPE REF TO zcl_lnt_position.
        DATA(t86) = me->start.
        t85 = t86.
        t84 = t85.
        DATA t87 TYPE f.
        DATA(t88) = t84.
        t87 = t88->row.
        t83 = t87.
        t81 = xsdbool( t82 = t83 ).
        IF t81 = abap_true.
          DATA(t89) = VALUE string( ).
          DATA(t90) = VALUE string( ).
          DATA(t91) = VALUE string( ).
          DATA(t92) = me->rows.
          DATA(t93) = VALUE i( ).
          DATA t94 TYPE f.
          DATA(t95) = t21.
          DATA(t96) = CONV f( 1 ).
          t94 = t95 - t96.
          IF t94 > range_i32_upper.
            t93 = range_i32_upper.
          ELSEIF t94 < range_i32_lower.
            t93 = range_i32_lower.
          ELSE.
            t93 = trunc( t94 ).
          ENDIF.
          t93 = t93 + 1.
          IF t92->has( t93 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t92->load( ).
          CLEAR t91.
          READ TABLE t92->items INDEX t93 INTO t91.
          t90 = t91.
          DATA(t97) = VALUE string( ).
          DATA(t98) = t90.
          DATA t99 TYPE i.
          DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t102 TYPE REF TO zcl_lnt_position.
          DATA t103 TYPE REF TO zcl_lnt_position.
          DATA(t104) = me->start.
          t103 = t104.
          t102 = t103.
          DATA t105 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t106) = t102.
          t105 = t106->col.
          t101 = t105.
          DATA(t107) = CONV f( 1 ).
          DATA(t108) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t108->has = abap_true.
          t108->value = t107.
          t100 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t101 right = t108 op = `-` ).
          t99 = zlnt_runtime_numb_290eb04a9758=>index( t100 ).
          DATA t109 TYPE i.
          DATA(t110) = t90.
          DATA(t111) = strlen( t110 ).
          t109 = t111.
          DATA(t112) = strlen( t98 ).
          t99 = COND i( WHEN t99 < 0 THEN 0 WHEN t99 > t112 THEN t112 ELSE t99 ).
          t109 = COND i( WHEN t109 < 0 THEN 0 WHEN t109 > t112 THEN t112 ELSE t109 ).
          IF t99 > t109.
            t112 = t99.
            t99 = t109.
            t109 = t112.
          ENDIF.
          t112 = t109 - t99.
          t97 = t98+t99(t112).
          t89 = t97.
          t19 = t89.
        ELSE.
          DATA t113 TYPE abap_bool.
          DATA(t114) = t21.
          DATA t115 TYPE f.
          DATA t116 TYPE REF TO zcl_lnt_position.
          DATA t117 TYPE REF TO zcl_lnt_position.
          DATA(t118) = me->end.
          t117 = t118.
          t116 = t117.
          DATA t119 TYPE f.
          DATA(t120) = t116.
          t119 = t120->row.
          t115 = t119.
          t113 = xsdbool( t114 = t115 ).
          IF t113 = abap_true.
            DATA(t121) = VALUE string( ).
            DATA(t122) = t19.
            DATA(t123) = VALUE string( ).
            DATA(t124) = |\n|.
            DATA(t125) = VALUE string( ).
            DATA(t126) = VALUE string( ).
            DATA(t127) = me->rows.
            DATA(t128) = VALUE i( ).
            DATA t129 TYPE f.
            DATA(t130) = t21.
            DATA(t131) = CONV f( 1 ).
            t129 = t130 - t131.
            IF t129 > range_i32_upper.
              t128 = range_i32_upper.
            ELSEIF t129 < range_i32_lower.
              t128 = range_i32_lower.
            ELSE.
              t128 = trunc( t129 ).
            ENDIF.
            t128 = t128 + 1.
            IF t127->has( t128 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t127->load( ).
            CLEAR t126.
            READ TABLE t127->items INDEX t128 INTO t126.
            DATA(t132) = 0.
            DATA t133 TYPE i.
            DATA t134 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t136 TYPE REF TO zcl_lnt_position.
            DATA t137 TYPE REF TO zcl_lnt_position.
            DATA(t138) = me->end.
            t137 = t138.
            t136 = t137.
            DATA t139 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t140) = t136.
            t139 = t140->col.
            t135 = t139.
            DATA(t141) = CONV f( 1 ).
            DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t142->has = abap_true.
            t142->value = t141.
            t134 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t135 right = t142 op = `-` ).
            t133 = zlnt_runtime_numb_290eb04a9758=>index( t134 ).
            DATA(t143) = strlen( t126 ).
            t132 = COND i( WHEN t132 < 0 THEN 0 WHEN t132 > t143 THEN t143 ELSE t132 ).
            t133 = COND i( WHEN t133 < 0 THEN 0 WHEN t133 > t143 THEN t143 ELSE t133 ).
            IF t132 > t133.
              t143 = t132.
              t132 = t133.
              t133 = t143.
            ENDIF.
            t143 = t133 - t132.
            t125 = t126+t132(t143).
            DATA(t144) = strlen( t124 ).
            t123 = |{ t124 }{ t125 }|.
            DATA(t145) = strlen( t122 ).
            t121 = |{ t122 }{ t123 }|.
            t19 = t121.
          ELSE.
            DATA(t146) = VALUE string( ).
            DATA(t147) = t19.
            DATA(t148) = VALUE string( ).
            DATA(t149) = |\n|.
            DATA(t150) = VALUE string( ).
            DATA(t151) = me->rows.
            DATA(t152) = VALUE i( ).
            DATA t153 TYPE f.
            DATA(t154) = t21.
            DATA(t155) = CONV f( 1 ).
            t153 = t154 - t155.
            IF t153 > range_i32_upper.
              t152 = range_i32_upper.
            ELSEIF t153 < range_i32_lower.
              t152 = range_i32_lower.
            ELSE.
              t152 = trunc( t153 ).
            ENDIF.
            t152 = t152 + 1.
            IF t151->has( t152 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t151->load( ).
            CLEAR t150.
            READ TABLE t151->items INDEX t152 INTO t150.
            DATA(t156) = strlen( t149 ).
            t148 = |{ t149 }{ t150 }|.
            DATA(t157) = strlen( t147 ).
            t146 = |{ t147 }{ t148 }|.
            t19 = t146.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t158 TYPE f.
      DATA(t159) = t21.
      DATA(t160) = CONV f( 1 ).
      t158 = t159 + t160.
      t21 = t158.
    ENDDO.
    DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t162) = me->file.
    DATA t163 TYPE REF TO zcl_lnt_position.
    DATA(t164) = me->start.
    t163 = t164.
    DATA t165 TYPE REF TO zcl_lnt_position.
    DATA(t166) = me->end.
    t165 = t166.
    DATA(t167) = t19.
    t161 = zcl_lnt_edit_helper=>replace_range( i_file = t162 i_start = t163 i_end = t165 i_text = t167 ).
    result = t161.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1147_db9922a6e9fe.
  ENDMETHOD.
ENDCLASS.
