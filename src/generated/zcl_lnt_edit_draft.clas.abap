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
    CLEAR me->start.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    CLEAR me->end.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    me->rows = t1->get_raw_rows( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rows`.
    me->file = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
  ENDMETHOD.

  METHOD replace_128a.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_pos.
    DATA(t2) = i_value.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( me->start IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t12 TYPE REF TO zcl_lnt_position.
      t12 = t1.
      DATA t14 TYPE REF TO zcl_lnt_position.
      t14 = me->start.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t12->row < t14->row ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE abap_bool.
        t24 = xsdbool( t12->row = t14->row ).
        t23 = t24.
        IF t24 = abap_true.
          DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t30 = t12->col.
          DATA t32 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t32 = t14->col.
          t23 = zlnt_runtime_numb_290eb04a9758=>compare( left = t30 right = t32 op = `<` ).
        ENDIF.
        t17 = t23.
      ENDIF.
      t3 = t17.
    ENDIF.
    IF t3 = abap_true.
      me->start = t1.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    ENDIF.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t40 TYPE f.
    t40 = t1->row.
    DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t46 = t1->col.
    DATA t51 TYPE f.
    t51 = strlen( t2 ).
    DATA(t55) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t55->has = abap_true.
    t55->value = t51.
    t38 = NEW zcl_lnt_position( i_row = t40 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t46 right = t55 op = `+` ) ).
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57 = xsdbool( me->end IS INITIAL ).
    t56 = t57.
    IF t57 = abap_false.
      DATA t66 TYPE REF TO zcl_lnt_position.
      t66 = me->end.
      t56 = t38->is_after( i_p = t66 ).
    ENDIF.
    IF t56 = abap_true.
      me->end = t38.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    ENDIF.
    DATA(t72) = VALUE string( ).
    DATA(t73) = VALUE string( ).
    DATA(t74) = me->rows.
    DATA(t75) = VALUE i( ).
    DATA t76 TYPE f.
    DATA t77 TYPE f.
    t77 = t1->row.
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
    READ TABLE t74->items INDEX t75 INTO t73.
    t72 = t73.
    DATA(t83) = me->rows.
    DATA(t84) = VALUE i( ).
    DATA t85 TYPE f.
    DATA t86 TYPE f.
    t86 = t1->row.
    DATA(t91) = CONV f( 1 ).
    t85 = t86 - t91.
    IF t85 > range_i32_upper.
      t84 = range_i32_upper.
    ELSEIF t85 < range_i32_lower.
      t84 = range_i32_lower.
    ELSE.
      t84 = trunc( t85 ).
    ENDIF.
    DATA(t93) = VALUE string( ).
    DATA(t94) = VALUE string( ).
    DATA(t96) = 0.
    DATA t97 TYPE i.
    DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t99 = t1->col.
    DATA(t105) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t105->has = abap_true.
    t105->value = CONV f( 1 ).
    t97 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t99 right = t105 op = `-` ) ).
    DATA(t106) = strlen( t72 ).
    IF t96 < 0.
      t96 = t96 + t106.
      IF t96 < 0.
        t96 = 0.
      ENDIF.
    ENDIF.
    IF t96 > t106 OR t97 <= 0.
    ELSE.
      IF t97 > t106 - t96.
        t97 = t106 - t96.
      ENDIF.
      t94 = t72+t96(t97).
    ENDIF.
    DATA(t108) = strlen( t94 ).
    t93 = |{ t94 }{ t2 }|.
    DATA(t109) = VALUE string( ).
    DATA t110 TYPE string.
    t110 = t72.
    DATA(t112) = VALUE string( ).
    DATA t114 TYPE i.
    DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t117 = t1->col.
    DATA t122 TYPE f.
    t122 = strlen( t2 ).
    DATA(t126) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t126->has = abap_true.
    t126->value = t122.
    t116 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t117 right = t126 op = `+` ).
    DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t128->has = abap_true.
    t128->value = CONV f( 1 ).
    t114 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t116 right = t128 op = `-` ) ).
    DATA t129 TYPE i.
    t129 = strlen( t110 ).
    DATA(t132) = strlen( t110 ).
    IF t114 < 0.
      t114 = t114 + t132.
      IF t114 < 0.
        t114 = 0.
      ENDIF.
    ENDIF.
    IF t114 > t132 OR t129 <= 0.
    ELSE.
      IF t129 > t132 - t114.
        t129 = t132 - t114.
      ENDIF.
      t112 = t110+t114(t129).
    ENDIF.
    t109 = t112.
    DATA(t133) = strlen( t93 ).
    t83->put( p0 = t84 p1 = |{ t93 }{ t109 }| ).
  ENDMETHOD.

  METHOD to_edit.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->start IS INITIAL ) = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_st_fa837731be5a.
      DATA(t9) = |EditDraft, start undefined|.
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      CREATE OBJECT t8->source_value.
      t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t8->source_value->sval = t9.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->end IS INITIAL ) = abap_true.
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

    DATA t19 TYPE string.
    t19 = ||.
    DATA t21 TYPE f.
    t21 = me->start->row.
    DO.
      DATA t30 TYPE f.
      t30 = me->end->row.
      IF xsdbool( t21 <= t30 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      DATA t43 TYPE f.
      t43 = me->start->row.
      t37 = xsdbool( t21 = t43 ).
      t36 = t37.
      IF t37 = abap_true.
        DATA t47 TYPE f.
        t47 = me->end->row.
        t36 = xsdbool( t21 = t47 ).
      ENDIF.
      IF t36 = abap_true.
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE string( ).
        DATA(t55) = me->rows.
        DATA(t56) = VALUE i( ).
        DATA t57 TYPE f.
        DATA(t59) = CONV f( 1 ).
        t57 = t21 - t59.
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
        READ TABLE t55->items INDEX t56 INTO t54.
        DATA t60 TYPE i.
        DATA t62 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t62 = me->start->col.
        DATA(t69) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t69->has = abap_true.
        t69->value = CONV f( 1 ).
        t60 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t62 right = t69 op = `-` ) ).
        DATA t70 TYPE i.
        DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t72 = me->end->col.
        DATA(t79) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t79->has = abap_true.
        t79->value = CONV f( 1 ).
        t70 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t72 right = t79 op = `-` ) ).
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
        DATA t83 TYPE f.
        t83 = me->start->row.
        IF xsdbool( t21 = t83 ) = abap_true.
          DATA(t90) = VALUE string( ).
          DATA(t91) = VALUE string( ).
          DATA(t92) = me->rows.
          DATA(t93) = VALUE i( ).
          DATA t94 TYPE f.
          DATA(t96) = CONV f( 1 ).
          t94 = t21 - t96.
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
          READ TABLE t92->items INDEX t93 INTO t91.
          t90 = t91.
          DATA(t97) = VALUE string( ).
          DATA t99 TYPE i.
          DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t101 = me->start->col.
          DATA(t108) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t108->has = abap_true.
          t108->value = CONV f( 1 ).
          t99 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t101 right = t108 op = `-` ) ).
          DATA t109 TYPE i.
          t109 = strlen( t90 ).
          DATA(t112) = strlen( t90 ).
          t99 = COND i( WHEN t99 < 0 THEN 0 WHEN t99 > t112 THEN t112 ELSE t99 ).
          t109 = COND i( WHEN t109 < 0 THEN 0 WHEN t109 > t112 THEN t112 ELSE t109 ).
          IF t99 > t109.
            t112 = t99.
            t99 = t109.
            t109 = t112.
          ENDIF.
          t112 = t109 - t99.
          t97 = t90+t99(t112).
          t19 = t97.
        ELSE.
          DATA t115 TYPE f.
          t115 = me->end->row.
          IF xsdbool( t21 = t115 ) = abap_true.
            DATA(t122) = t19.
            DATA(t123) = VALUE string( ).
            DATA(t124) = |\n|.
            DATA(t125) = VALUE string( ).
            DATA(t126) = VALUE string( ).
            DATA(t127) = me->rows.
            DATA(t128) = VALUE i( ).
            DATA t129 TYPE f.
            DATA(t131) = CONV f( 1 ).
            t129 = t21 - t131.
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
            READ TABLE t127->items INDEX t128 INTO t126.
            DATA(t132) = 0.
            DATA t133 TYPE i.
            DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t135 = me->end->col.
            DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t142->has = abap_true.
            t142->value = CONV f( 1 ).
            t133 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t135 right = t142 op = `-` ) ).
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
            t19 = |{ t122 }{ t123 }|.
          ELSE.
            DATA(t147) = t19.
            DATA(t148) = VALUE string( ).
            DATA(t149) = |\n|.
            DATA(t150) = VALUE string( ).
            DATA(t151) = me->rows.
            DATA(t152) = VALUE i( ).
            DATA t153 TYPE f.
            DATA(t155) = CONV f( 1 ).
            t153 = t21 - t155.
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
            READ TABLE t151->items INDEX t152 INTO t150.
            DATA(t156) = strlen( t149 ).
            t148 = |{ t149 }{ t150 }|.
            DATA(t157) = strlen( t147 ).
            t19 = |{ t147 }{ t148 }|.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t160) = CONV f( 1 ).
      t21 = t21 + t160.
    ENDDO.
    DATA(t162) = me->file.
    DATA t163 TYPE REF TO zcl_lnt_position.
    t163 = me->start.
    DATA t165 TYPE REF TO zcl_lnt_position.
    t165 = me->end.
    result = zcl_lnt_edit_helper=>replace_range( i_file = t162 i_start = t163 i_end = t165 i_text = t19 ).

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
