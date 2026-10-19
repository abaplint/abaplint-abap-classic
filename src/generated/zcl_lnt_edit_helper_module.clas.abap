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
      DATA t10 TYPE REF TO zif_lnt_file.
      CLEAR t10.
      t10 = t1->get_file_by_name( i_filename = t5 ).
      t9 = t10.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t13.
      DATA(t14) = xsdbool( t9 IS INITIAL ).
      IF t14 = abap_true.
        CLEAR t13.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t17.
        DATA t18 TYPE REF TO zif_lnt_file.
        CLEAR t18.
        t18 = t9.
        t17 = t18->get_raw_rows( ).
        t13 = t17.
      ENDIF.
      t7 = t13.
      DATA(t20) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t23.
      t20 = xsdbool( t7 IS INITIAL ).
      IF t20 = abap_true.
        DATA t27 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t28.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        DATA(t31) = |applyEdit, file not found|.
        DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t32->has = abap_true.
        t32->value = t31.
        t29 = t32.
        t28 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t29 ).
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
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      t37 = t2->get( p0 = t5 ).
      t36 = t37.
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
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = VALUE f( ).
        DATA t48 TYPE REF TO zcl_lnt_position.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_irange.
        CLEAR t49.
        t49 = t40->range.
        t48 = t49->start.
        DATA(t51) = VALUE f( ).
        t51 = t48->row.
        t46 = t51.
        DATA(t53) = VALUE f( ).
        DATA t55 TYPE REF TO zcl_lnt_position.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_irange.
        CLEAR t56.
        t56 = t40->range.
        t55 = t56->end.
        DATA(t58) = VALUE f( ).
        t58 = t55->row.
        t53 = t58.
        t45 = xsdbool( t46 = t53 ).
        IF t45 = abap_true.
          DATA(t60) = VALUE string( ).
          DATA(t61) = VALUE string( ).
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t62.
          t62 = t7.
          DATA(t64) = VALUE i( ).
          DATA(t65) = VALUE f( ).
          DATA(t66) = VALUE f( ).
          DATA t68 TYPE REF TO zcl_lnt_position.
          CLEAR t68.
          DATA t69 TYPE REF TO zcl_lnt_irange.
          CLEAR t69.
          t69 = t40->range.
          t68 = t69->start.
          DATA(t71) = VALUE f( ).
          t71 = t68->row.
          t66 = t71.
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
          CLEAR t61.
          READ TABLE t62->items INDEX t64 INTO t61.
          t60 = t61.
          DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t74.
          t74 = t7.
          DATA(t76) = VALUE i( ).
          DATA(t77) = VALUE f( ).
          DATA(t78) = VALUE f( ).
          DATA t80 TYPE REF TO zcl_lnt_position.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_irange.
          CLEAR t81.
          t81 = t40->range.
          t80 = t81->start.
          DATA(t83) = VALUE f( ).
          t83 = t80->row.
          t78 = t83.
          DATA(t85) = CONV f( 1 ).
          t77 = t78 - t85.
          IF t77 > range_i32_upper.
            t76 = range_i32_upper.
          ELSEIF t77 < range_i32_lower.
            t76 = range_i32_lower.
          ELSE.
            t76 = trunc( t77 ).
          ENDIF.
          DATA(t86) = VALUE string( ).
          DATA(t87) = VALUE string( ).
          DATA(t88) = VALUE string( ).
          DATA(t90) = 0.
          DATA(t91) = VALUE i( ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t92.
          DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t93.
          DATA t95 TYPE REF TO zcl_lnt_position.
          CLEAR t95.
          DATA t96 TYPE REF TO zcl_lnt_irange.
          CLEAR t96.
          t96 = t40->range.
          t95 = t96->start.
          DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t98.
          t98 = t95->col.
          t93 = t98.
          DATA(t100) = CONV f( 1 ).
          DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t101->has = abap_true.
          t101->value = t100.
          t92 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t93 right = t101 op = `-` ).
          t91 = zlnt_runtime_numb_290eb04a9758=>index( t92 ).
          DATA(t102) = strlen( t60 ).
          IF t90 < 0.
            t90 = t90 + t102.
            IF t90 < 0.
              t90 = 0.
            ENDIF.
          ENDIF.
          IF t90 > t102 OR t91 <= 0.
            CLEAR t88.
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
          DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t113.
          DATA t115 TYPE REF TO zcl_lnt_position.
          CLEAR t115.
          DATA t116 TYPE REF TO zcl_lnt_irange.
          CLEAR t116.
          t116 = t40->range.
          t115 = t116->end.
          DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t118.
          t118 = t115->col.
          t113 = t118.
          DATA(t120) = CONV f( 1 ).
          DATA(t121) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t121->has = abap_true.
          t121->value = t120.
          t112 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t113 right = t121 op = `-` ).
          t111 = zlnt_runtime_numb_290eb04a9758=>index( t112 ).
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
            CLEAR t109.
          ELSE.
            IF t122 > t125 - t111.
              t122 = t125 - t111.
            ENDIF.
            t109 = t107+t111(t122).
          ENDIF.
          t106 = t109.
          DATA(t126) = strlen( t87 ).
          t86 = |{ t87 }{ t106 }|.
          t74->put( p0 = t76 p1 = t86 ).
        ELSE.
          DATA(t127) = VALUE string( ).
          DATA(t128) = VALUE string( ).
          DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t129.
          t129 = t7.
          DATA(t131) = VALUE i( ).
          DATA(t132) = VALUE f( ).
          DATA(t133) = VALUE f( ).
          DATA t135 TYPE REF TO zcl_lnt_position.
          CLEAR t135.
          DATA t136 TYPE REF TO zcl_lnt_irange.
          CLEAR t136.
          t136 = t40->range.
          t135 = t136->start.
          DATA(t138) = VALUE f( ).
          t138 = t135->row.
          t133 = t138.
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
          CLEAR t128.
          READ TABLE t129->items INDEX t131 INTO t128.
          t127 = t128.
          DATA(t141) = VALUE string( ).
          DATA(t142) = VALUE string( ).
          DATA(t143) = VALUE string( ).
          DATA(t145) = 0.
          DATA(t146) = VALUE i( ).
          DATA t147 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t147.
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t148.
          DATA t150 TYPE REF TO zcl_lnt_position.
          CLEAR t150.
          DATA t151 TYPE REF TO zcl_lnt_irange.
          CLEAR t151.
          t151 = t40->range.
          t150 = t151->start.
          DATA t153 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t153.
          t153 = t150->col.
          t148 = t153.
          DATA(t155) = CONV f( 1 ).
          DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t156->has = abap_true.
          t156->value = t155.
          t147 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t148 right = t156 op = `-` ).
          t146 = zlnt_runtime_numb_290eb04a9758=>index( t147 ).
          DATA(t157) = strlen( t127 ).
          IF t145 < 0.
            t145 = t145 + t157.
            IF t145 < 0.
              t145 = 0.
            ENDIF.
          ENDIF.
          IF t145 > t157 OR t146 <= 0.
            CLEAR t143.
          ELSE.
            IF t146 > t157 - t145.
              t146 = t157 - t145.
            ENDIF.
            t143 = t127+t145(t146).
          ENDIF.
          DATA(t158) = VALUE string( ).
          t158 = t40->new_text.
          DATA(t160) = strlen( t143 ).
          t142 = |{ t143 }{ t158 }|.
          t141 = t142.
          DATA(t161) = VALUE string( ).
          DATA(t162) = VALUE string( ).
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t163.
          t163 = t7.
          DATA(t165) = VALUE i( ).
          DATA(t166) = VALUE f( ).
          DATA(t167) = VALUE f( ).
          DATA t169 TYPE REF TO zcl_lnt_position.
          CLEAR t169.
          DATA t170 TYPE REF TO zcl_lnt_irange.
          CLEAR t170.
          t170 = t40->range.
          t169 = t170->end.
          DATA(t172) = VALUE f( ).
          t172 = t169->row.
          t167 = t172.
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
          CLEAR t162.
          READ TABLE t163->items INDEX t165 INTO t162.
          t161 = t162.
          DATA(t175) = VALUE string( ).
          DATA(t176) = t141.
          DATA(t177) = VALUE string( ).
          DATA(t178) = VALUE string( ).
          t178 = t161.
          DATA(t180) = VALUE string( ).
          DATA(t182) = VALUE i( ).
          DATA t183 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t183.
          DATA t184 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t184.
          DATA t186 TYPE REF TO zcl_lnt_position.
          CLEAR t186.
          DATA t187 TYPE REF TO zcl_lnt_irange.
          CLEAR t187.
          t187 = t40->range.
          t186 = t187->end.
          DATA t189 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t189.
          t189 = t186->col.
          t184 = t189.
          DATA(t191) = CONV f( 1 ).
          DATA(t192) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t192->has = abap_true.
          t192->value = t191.
          t183 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t184 right = t192 op = `-` ).
          t182 = zlnt_runtime_numb_290eb04a9758=>index( t183 ).
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
            CLEAR t180.
          ELSE.
            IF t193 > t196 - t182.
              t193 = t196 - t182.
            ENDIF.
            t180 = t178+t182(t193).
          ENDIF.
          t177 = t180.
          DATA(t197) = strlen( t176 ).
          t175 = |{ t176 }{ t177 }|.
          t141 = t175.
          DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t198.
          DATA t199 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t199.
          t199 = t7.
          DATA(t201) = VALUE i( ).
          DATA(t202) = VALUE f( ).
          DATA t204 TYPE REF TO zcl_lnt_position.
          CLEAR t204.
          DATA t205 TYPE REF TO zcl_lnt_irange.
          CLEAR t205.
          t205 = t40->range.
          t204 = t205->start.
          DATA(t207) = VALUE f( ).
          t207 = t204->row.
          t202 = t207.
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
          DATA t213 TYPE REF TO zcl_lnt_position.
          CLEAR t213.
          DATA t214 TYPE REF TO zcl_lnt_irange.
          CLEAR t214.
          t214 = t40->range.
          t213 = t214->end.
          DATA(t216) = VALUE f( ).
          t216 = t213->row.
          t211 = t216.
          DATA(t218) = VALUE f( ).
          DATA t220 TYPE REF TO zcl_lnt_position.
          CLEAR t220.
          DATA t221 TYPE REF TO zcl_lnt_irange.
          CLEAR t221.
          t221 = t40->range.
          t220 = t221->start.
          DATA(t223) = VALUE f( ).
          t223 = t220->row.
          t218 = t223.
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
          DATA t231 TYPE REF TO zcl_lnt_position.
          CLEAR t231.
          DATA t232 TYPE REF TO zcl_lnt_irange.
          CLEAR t232.
          t232 = t40->range.
          t231 = t232->start.
          DATA(t234) = VALUE f( ).
          t234 = t231->row.
          t229 = t234.
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
          DATA(t244) = |\n|.
          DATA(t245) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t245->has = abap_true.
          t245->value = t244.
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
      DATA(t257) = VALUE string( ).
      DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t258.
      t258 = t7.
      DATA(t260) = |\n|.
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = t260.
      t257 = t258->join( p0 = t261 ).
      t255 = NEW zcl_lnt_memory_file( i_filename = t5 i_raw = t257 ).
      DATA t262 TYPE REF TO zif_lnt_registry.
      CLEAR t262.
      t262 = t1->update_file( i_file = t255 ).
    ENDDO.
  ENDMETHOD.

  METHOD apply_edit_list.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_edits.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE f.
    DATA(t6) = CONV f( 0 ).
    t5 = t6.
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
        DATA(t22) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t24 = t7->get( p0 = t20 ).
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t27.
        t22 = xsdbool( t24 IS INITIAL ).
        IF t22 = abap_true.
          DATA t31 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t34.
          t31 = t7->set( p0 = t20 p1 = t34 ).
          DATA t35 TYPE f.
          DATA(t37) = CONV f( 1 ).
          t35 = t5 + t37.
          t5 = t35.
        ENDIF.
        DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t43 = t7->get( p0 = t20 ).
        t42 = t43.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t47 = t13->get( p0 = t20 ).
        t46 = t47.
        t41 = t42->concat( p0 = t46 ).
        t38 = t7->set( p0 = t20 p1 = t41 ).
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
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t65 = t7->get( p0 = t52 ).
      t63 = t65.
      DATA t68 TYPE i.
      t68 = 1.
      DO.
        DATA t70 TYPE abap_bool.
        DATA t72 TYPE i.
        t63->load( ).
        t72 = lines( t63->items ).
        t70 = xsdbool( t68 < t72 ).
        IF t70 = abap_false.
          EXIT.
        ENDIF.
        DATA t74 TYPE i.
        t74 = t68.
        DO.
          DATA t76 TYPE abap_bool.
          DATA(t78) = 0.
          t76 = xsdbool( t74 > t78 ).
          IF t76 = abap_false.
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
          DATA(t95) = VALUE abap_bool( ).
          DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t98 TYPE f.
          DATA t99 TYPE f.
          DATA t101 TYPE REF TO zcl_lnt_position.
          DATA t102 TYPE REF TO zcl_lnt_irange.
          t102 = t88->range.
          t101 = t102->start.
          DATA t104 TYPE f.
          t104 = t101->row.
          t99 = t104.
          DATA t106 TYPE f.
          DATA t108 TYPE REF TO zcl_lnt_position.
          DATA t109 TYPE REF TO zcl_lnt_irange.
          t109 = t79->range.
          t108 = t109->start.
          DATA t111 TYPE f.
          t111 = t108->row.
          t106 = t111.
          t98 = t99 - t106.
          DATA(t113) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t113->has = abap_true.
          t113->value = t98.
          t97 = t113.
          DATA t114 TYPE abap_bool.
          DATA(t116) = CONV f( 0 ).
          DATA(t117) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t117->has = abap_true.
          t117->value = t116.
          t114 = zlnt_runtime_numb_290eb04a9758=>compare( left = t97 right = t117 op = `==` ).
          IF t114 = abap_true.
            DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t121 TYPE REF TO zcl_lnt_position.
            DATA t122 TYPE REF TO zcl_lnt_irange.
            t122 = t88->range.
            t121 = t122->start.
            DATA t124 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t124 = t121->col.
            t119 = t124.
            DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t128 TYPE REF TO zcl_lnt_position.
            DATA t129 TYPE REF TO zcl_lnt_irange.
            t129 = t79->range.
            t128 = t129->start.
            DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t131 = t128->col.
            t126 = t131.
            t118 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t119 right = t126 op = `-` ).
            t97 = t118.
          ENDIF.
          t96 = t97.
          DATA(t134) = CONV f( 0 ).
          DATA(t135) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t135->has = abap_true.
          t135->value = t134.
          t95 = zlnt_runtime_numb_290eb04a9758=>compare( left = t96 right = t135 op = `>` ).
          IF t95 = abap_true.
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
            DATA t158 TYPE i.
            DATA(t160) = 1.
            t158 = t74 - t160.
            t74 = t158.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA t161 TYPE i.
        DATA(t163) = 1.
        t161 = t68 + t163.
        t68 = t161.
      ENDDO.
      t62 = t63.
      t59 = t54->set( p0 = t52 p1 = t62 ).
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
