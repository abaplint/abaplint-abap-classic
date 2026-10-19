* TS: src/edit_helper.ts.module module
CLASS zcl_lnt_edit_helper_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS apply_edit_single IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_edit TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS apply_edit_list IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_edits TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_97c98ffa796a TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_792e7cd4bc43.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_edit_helper_module IMPLEMENTATION.
  METHOD apply_edit_single.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_edit.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t3 = t2->keys( ).
    DATA(t5) = VALUE string( ).
    t3->dense( ).
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      IF t3->has( t6 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t7.
      DATA t9 TYPE REF TO zif_lnt_file.
      CLEAR t9.
      t9 = t1->get_file_by_name( i_filename = t5 ).
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t13.
      IF xsdbool( t9 IS INITIAL ) = abap_true.
        CLEAR t13.
      ELSE.
        t13 = t9->get_raw_rows( ).
      ENDIF.
      t7 = t13.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t23.
      IF xsdbool( t7 IS INITIAL ) = abap_true.
        DATA t27 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t28.
        DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t32->has = abap_true.
        t32->value = |applyEdit, file not found|.
        t28 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
        t27 = NEW #( ).
        t27->payload = t28.
        CLEAR t27->source_value.
        DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t34.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        CLEAR t34.
        t35 = t28.
        TRY.
            t27->source_value ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27->source_value IS NOT BOUND.
          TRY.
              t34 ?= t28.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t34 IS BOUND.
            t27->source_value = t34->source( ).
          ENDIF.
          IF t27->source_value IS NOT BOUND.
            CREATE OBJECT t27->source_value.
            t27->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t27->source_value->oval = t28.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t27.
      ENDIF.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t36.
      t36 = t2->get( p0 = t5 ).
      DATA t40 TYPE REF TO zcl_lnt_itext_edit.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      DATA(t42) = VALUE i( ).
      DO.
        t36->load( ).
        IF t42 >= lines( t36->items ).
          EXIT.
        ENDIF.
        CLEAR t41.
        READ TABLE t36->items INDEX t42 + 1 INTO t41.
        t42 = t42 + 1.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        CLEAR t40.
        IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t43 ?= t41.
          DATA t44 TYPE REF TO object.
          CLEAR t44.
          t44 = t43->as_ref( ).
          t40 ?= t44.
        ELSE.
          t40 ?= t41.
        ENDIF.
        IF xsdbool( t40->range->start->row = t40->range->end->row ) = abap_true.
          DATA(t60) = VALUE string( ).
          DATA(t61) = VALUE string( ).
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t62.
          t62 = t7.
          DATA(t64) = VALUE i( ).
          DATA(t65) = VALUE f( ).
          DATA(t66) = VALUE f( ).
          t66 = t40->range->start->row.
          DATA(t73) = CONV f( 1 ).
          t65 = t66 - t73.
          IF t65 > range_i32_upper.
            t64 = range_i32_upper.
          ELSEIF t65 < range_i32_lower.
            t64 = range_i32_lower.
          ELSE.
            t64 = trunc( t65 ).
          ENDIF.
          t64 = t64 + 1.
          IF t62->has( t64 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t62->load( ).
          READ TABLE t62->items INDEX t64 INTO t61.
          t60 = t61.
          DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t74.
          t74 = t7.
          DATA(t76) = VALUE i( ).
          DATA(t77) = VALUE f( ).
          DATA(t78) = VALUE f( ).
          t78 = t40->range->start->row.
          DATA(t85) = CONV f( 1 ).
          t77 = t78 - t85.
          IF t77 > range_i32_upper.
            t76 = range_i32_upper.
          ELSEIF t77 < range_i32_lower.
            t76 = range_i32_lower.
          ELSE.
            t76 = trunc( t77 ).
          ENDIF.
          DATA(t87) = VALUE string( ).
          DATA(t88) = VALUE string( ).
          DATA(t90) = 0.
          DATA(t91) = VALUE i( ).
          DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t93.
          t93 = t40->range->start->col.
          DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t101->has = abap_true.
          t101->value = CONV f( 1 ).
          t91 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t93 right = t101 op = `-` ) ).
          DATA(t102) = strlen( t60 ).
          IF t90 < 0.
            t90 = t90 + t102.
            IF t90 < 0.
              t90 = 0.
            ENDIF.
          ENDIF.
          IF t90 > t102 OR t91 <= 0.
          ELSE.
            IF t91 > t102 - t90.
              t91 = t102 - t90.
            ENDIF.
            t88 = t60+t90(t91).
          ENDIF.
          DATA(t103) = VALUE string( ).
          t103 = t40->new_text.
          DATA(t105) = strlen( t88 ).
          t87 = |{ t88 }{ t103 }|.
          DATA(t106) = VALUE string( ).
          DATA(t107) = VALUE string( ).
          t107 = t60.
          DATA(t109) = VALUE string( ).
          DATA(t111) = VALUE i( ).
          DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t113.
          t113 = t40->range->end->col.
          DATA(t121) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t121->has = abap_true.
          t121->value = CONV f( 1 ).
          t111 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t113 right = t121 op = `-` ) ).
          DATA(t122) = VALUE i( ).
          t122 = strlen( t107 ).
          DATA(t125) = strlen( t107 ).
          IF t111 < 0.
            t111 = t111 + t125.
            IF t111 < 0.
              t111 = 0.
            ENDIF.
          ENDIF.
          IF t111 > t125 OR t122 <= 0.
          ELSE.
            IF t122 > t125 - t111.
              t122 = t125 - t111.
            ENDIF.
            t109 = t107+t111(t122).
          ENDIF.
          t106 = t109.
          DATA(t126) = strlen( t87 ).
          t74->put( p0 = t76 p1 = |{ t87 }{ t106 }| ).
        ELSE.
          DATA(t127) = VALUE string( ).
          DATA(t128) = VALUE string( ).
          DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t129.
          t129 = t7.
          DATA(t131) = VALUE i( ).
          DATA(t132) = VALUE f( ).
          DATA(t133) = VALUE f( ).
          t133 = t40->range->start->row.
          DATA(t140) = CONV f( 1 ).
          t132 = t133 - t140.
          IF t132 > range_i32_upper.
            t131 = range_i32_upper.
          ELSEIF t132 < range_i32_lower.
            t131 = range_i32_lower.
          ELSE.
            t131 = trunc( t132 ).
          ENDIF.
          t131 = t131 + 1.
          IF t129->has( t131 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t129->load( ).
          READ TABLE t129->items INDEX t131 INTO t128.
          t127 = t128.
          DATA(t141) = VALUE string( ).
          DATA(t143) = VALUE string( ).
          DATA(t145) = 0.
          DATA(t146) = VALUE i( ).
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t148.
          t148 = t40->range->start->col.
          DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t156->has = abap_true.
          t156->value = CONV f( 1 ).
          t146 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t148 right = t156 op = `-` ) ).
          DATA(t157) = strlen( t127 ).
          IF t145 < 0.
            t145 = t145 + t157.
            IF t145 < 0.
              t145 = 0.
            ENDIF.
          ENDIF.
          IF t145 > t157 OR t146 <= 0.
          ELSE.
            IF t146 > t157 - t145.
              t146 = t157 - t145.
            ENDIF.
            t143 = t127+t145(t146).
          ENDIF.
          DATA(t158) = VALUE string( ).
          t158 = t40->new_text.
          DATA(t160) = strlen( t143 ).
          t141 = |{ t143 }{ t158 }|.
          DATA(t162) = VALUE string( ).
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t163.
          t163 = t7.
          DATA(t165) = VALUE i( ).
          DATA(t166) = VALUE f( ).
          DATA(t167) = VALUE f( ).
          t167 = t40->range->end->row.
          DATA(t174) = CONV f( 1 ).
          t166 = t167 - t174.
          IF t166 > range_i32_upper.
            t165 = range_i32_upper.
          ELSEIF t166 < range_i32_lower.
            t165 = range_i32_lower.
          ELSE.
            t165 = trunc( t166 ).
          ENDIF.
          t165 = t165 + 1.
          IF t163->has( t165 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t163->load( ).
          READ TABLE t163->items INDEX t165 INTO t162.
          DATA(t176) = t141.
          DATA(t177) = VALUE string( ).
          DATA(t178) = VALUE string( ).
          t178 = t162.
          DATA(t180) = VALUE string( ).
          DATA(t182) = VALUE i( ).
          DATA t184 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t184.
          t184 = t40->range->end->col.
          DATA(t192) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t192->has = abap_true.
          t192->value = CONV f( 1 ).
          t182 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t184 right = t192 op = `-` ) ).
          DATA(t193) = VALUE i( ).
          t193 = strlen( t178 ).
          DATA(t196) = strlen( t178 ).
          IF t182 < 0.
            t182 = t182 + t196.
            IF t182 < 0.
              t182 = 0.
            ENDIF.
          ENDIF.
          IF t182 > t196 OR t193 <= 0.
          ELSE.
            IF t193 > t196 - t182.
              t193 = t196 - t182.
            ENDIF.
            t180 = t178+t182(t193).
          ENDIF.
          t177 = t180.
          DATA(t197) = strlen( t176 ).
          t141 = |{ t176 }{ t177 }|.
          DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t198.
          DATA t199 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t199.
          t199 = t7.
          DATA(t201) = VALUE i( ).
          DATA(t202) = VALUE f( ).
          t202 = t40->range->start->row.
          IF t202 > range_i32_upper.
            t201 = range_i32_upper.
          ELSEIF t202 < range_i32_lower.
            t201 = range_i32_lower.
          ELSE.
            t201 = trunc( t202 ).
          ENDIF.
          DATA(t209) = VALUE i( ).
          DATA(t210) = VALUE f( ).
          DATA(t211) = VALUE f( ).
          t211 = t40->range->end->row.
          DATA(t218) = VALUE f( ).
          t218 = t40->range->start->row.
          t210 = t211 - t218.
          IF t210 > range_i32_upper.
            t209 = range_i32_upper.
          ELSEIF t210 < range_i32_lower.
            t209 = range_i32_lower.
          ELSE.
            t209 = trunc( t210 ).
          ENDIF.
          t198 = t199->splice2( p0 = t201 p1 = t209 ).
          DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t225.
          t225 = t7.
          DATA(t227) = VALUE i( ).
          DATA(t228) = VALUE f( ).
          DATA(t229) = VALUE f( ).
          t229 = t40->range->start->row.
          DATA(t236) = CONV f( 1 ).
          t228 = t229 - t236.
          IF t228 > range_i32_upper.
            t227 = range_i32_upper.
          ELSEIF t228 < range_i32_lower.
            t227 = range_i32_lower.
          ELSE.
            t227 = trunc( t228 ).
          ENDIF.
          t225->put( p0 = t227 p1 = t141 ).
          DATA t240 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t240.
          DATA(t241) = VALUE string( ).
          DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t242.
          t242 = t7.
          DATA(t245) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t245->has = abap_true.
          t245->value = |\n|.
          t241 = t242->join( p0 = t245 ).
          DATA(t246) = |\n|.
          DATA(t247) = strlen( t241 ).
          DATA(t248) = VALUE i( ).
          DATA(t249) = VALUE i( ).
          DATA(t250) = VALUE i( ).
          DATA(t251) = VALUE i( ).
          DATA(t252) = VALUE string( ).
          CREATE OBJECT t240.
          t251 = strlen( t246 ).
          t248 = 0.
          IF t251 = 0.
            WHILE t248 < t247.
              t252 = t241+t248(1).
              APPEND t252 TO t240->items.
              t248 = t248 + 1.
            ENDWHILE.
          ELSE.
            WHILE t248 <= t247.
              FIND FIRST OCCURRENCE OF t246 IN SECTION OFFSET t248 OF t241 MATCH OFFSET t249.
              IF sy-subrc = 0.
                t250 = t249 - t248.
              ELSE.
                t249 = -1.
                t250 = t247 - t248.
              ENDIF.
              CLEAR t252.
              IF t250 > 0.
                t252 = t241+t248(t250).
              ENDIF.
              APPEND t252 TO t240->items.
              IF t249 < 0.
                EXIT.
              ENDIF.
              t248 = t249 + t251.
            ENDWHILE.
          ENDIF.
          t7 = t240.
        ENDIF.
      ENDDO.
      DATA t255 TYPE REF TO zcl_lnt_memory_file.
      CLEAR t255.
      DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t258.
      t258 = t7.
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = |\n|.
      t255 = NEW zcl_lnt_memory_file( i_filename = t5 i_raw = t258->join( p0 = t261 ) ).
      DATA t262 TYPE REF TO zif_lnt_registry.
      CLEAR t262.
      t262 = t1->update_file( i_file = t255 ).
    ENDDO.
  ENDMETHOD.

  METHOD apply_edit_list.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_edits.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    DATA t5 TYPE f.
    t5 = CONV f( 0 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t7 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t13 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t14 TYPE REF TO object.
    DATA(t15) = VALUE i( ).
    DO.
      t2->load( ).
      IF t15 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t2->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t18 = t13->keys( ).
      DATA(t20) = VALUE string( ).
      t18->dense( ).
      DATA(t21) = VALUE i( ).
      DO.
        t18->load( ).
        IF t21 >= lines( t18->items ).
          EXIT.
        ENDIF.
        CLEAR t20.
        READ TABLE t18->items INDEX t21 + 1 INTO t20.
        IF t18->has( t21 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t21 = t21 + 1.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t24 = t7->get( p0 = t20 ).
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t27.
        IF xsdbool( t24 IS INITIAL ) = abap_true.
          DATA t31 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t34.
          t31 = t7->set( p0 = t20 p1 = t34 ).
          DATA(t37) = CONV f( 1 ).
          t5 = t5 + t37.
        ENDIF.
        DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t38 = t7->set( p0 = t20 p1 = t7->get( p0 = t20 )->concat( p0 = t13->get( p0 = t20 ) ) ).
      ENDDO.
    ENDDO.
    DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t50 = t7->keys( ).
    DATA(t52) = VALUE string( ).
    t50->dense( ).
    DATA(t53) = VALUE i( ).
    DO.
      t50->load( ).
      IF t53 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t52.
      READ TABLE t50->items INDEX t53 + 1 INTO t52.
      IF t50->has( t53 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t53 = t53 + 1.
      DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t54 = NEW zlnt_runtime_map__4fdf767b61ba( ).
      DATA t59 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t59.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t63 = t7->get( p0 = t52 ).
      DATA t68 TYPE i.
      t68 = 1.
      DO.
        t63->load( ).
        IF xsdbool( t68 < lines( t63->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t74 TYPE i.
        t74 = t68.
        DO.
          IF xsdbool( t74 > 0 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t79 TYPE REF TO zcl_lnt_itext_edit.
          CLEAR t79.
          DATA t80 TYPE REF TO zcl_lnt_itext_edit.
          CLEAR t80.
          DATA t82 TYPE i.
          DATA(t84) = 1.
          t82 = t74 - t84.
          t82 = t82 + 1.
          DATA t85 TYPE REF TO object.
          CLEAR t85.
          t63->load( ).
          CLEAR t85.
          READ TABLE t63->items INDEX t82 INTO t85.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t86.
          CLEAR t80.
          IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t86 ?= t85.
            DATA t87 TYPE REF TO object.
            t87 = t86->as_ref( ).
            t80 ?= t87.
          ELSE.
            t80 ?= t85.
          ENDIF.
          t79 = t80.
          DATA t88 TYPE REF TO zcl_lnt_itext_edit.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_itext_edit.
          CLEAR t89.
          DATA(t91) = t74.
          t91 = t91 + 1.
          DATA t92 TYPE REF TO object.
          CLEAR t92.
          t63->load( ).
          CLEAR t92.
          READ TABLE t63->items INDEX t91 INTO t92.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          CLEAR t89.
          IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t93 ?= t92.
            DATA t94 TYPE REF TO object.
            t94 = t93->as_ref( ).
            t89 ?= t94.
          ELSE.
            t89 ?= t92.
          ENDIF.
          t88 = t89.
          DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t98 TYPE f.
          DATA t99 TYPE f.
          t99 = t88->range->start->row.
          DATA t106 TYPE f.
          t106 = t79->range->start->row.
          t98 = t99 - t106.
          DATA(t113) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t113->has = abap_true.
          t113->value = t98.
          t97 = t113.
          DATA(t117) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t117->has = abap_true.
          t117->value = CONV f( 0 ).
          IF zlnt_runtime_numb_290eb04a9758=>compare( left = t97 right = t117 op = `==` ) = abap_true.
            DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t119 = t88->range->start->col.
            DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t131 = t79->range->start->col.
            t97 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t119 right = t131 op = `-` ).
          ENDIF.
          t96 = t97.
          DATA(t135) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t135->has = abap_true.
          t135->value = CONV f( 0 ).
          IF zlnt_runtime_numb_290eb04a9758=>compare( left = t96 right = t135 op = `>` ) = abap_true.
            DATA t137 TYPE REF TO zcl_lnt_itext_edit.
            CLEAR t137.
            DATA t139 TYPE i.
            DATA(t141) = 1.
            t139 = t74 - t141.
            t139 = t139 + 1.
            DATA t142 TYPE REF TO object.
            CLEAR t142.
            t63->load( ).
            CLEAR t142.
            READ TABLE t63->items INDEX t139 INTO t142.
            DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t143.
            CLEAR t137.
            IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t143 ?= t142.
              DATA t144 TYPE REF TO object.
              t144 = t143->as_ref( ).
              t137 ?= t144.
            ELSE.
              t137 ?= t142.
            ENDIF.
            DATA t146 TYPE i.
            DATA(t148) = 1.
            t146 = t74 - t148.
            DATA t149 TYPE REF TO zcl_lnt_itext_edit.
            CLEAR t149.
            DATA(t151) = t74.
            t151 = t151 + 1.
            DATA t152 TYPE REF TO object.
            CLEAR t152.
            t63->load( ).
            CLEAR t152.
            READ TABLE t63->items INDEX t151 INTO t152.
            DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t153.
            CLEAR t149.
            IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t153 ?= t152.
              DATA t154 TYPE REF TO object.
              t154 = t153->as_ref( ).
              t149 ?= t154.
            ELSE.
              t149 ?= t152.
            ENDIF.
            t63->put( p0 = t146 p1 = t149 ).
            t63->put( p0 = t74 p1 = t137 ).
            DATA(t160) = 1.
            t74 = t74 - t160.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t163) = 1.
        t68 = t68 + t163.
      ENDDO.
      t59 = t54->set( p0 = t52 p1 = t63 ).
      zcl_lnt_edit_helper_module=>apply_edit_single( i_reg_f149 = t1 i_edit = t54 ).
      t3->load( ).
      APPEND t52 TO t3->items.
      t3->save( ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD zlnt_builtin_init_792e7cd4bc43.
    IF zlnt_builtin_init_97c98ffa796a = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_97c98ffa796a = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1931_c7b9bb28aad2.
  ENDMETHOD.
ENDCLASS.
