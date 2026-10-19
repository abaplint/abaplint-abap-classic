* TS: src/lsp/references.ts:12:1 References
CLASS zcl_lnt_references DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS references IMPORTING i_pos TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS search_d139 IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_exit_after_found TYPE REF TO zlnt_runtime_opti_7f2541396f43 i_remove_duplicates TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS remove_duplicates IMPORTING i_arr TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_references IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_identifier TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_references IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD references.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    t2 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t1->zlnt_view_read_sr_ecd019429cea( )->zlnt_view_read_no_0041136eb871( ) ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA(t18) = me->reg.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zcl_lnt_abstract_file.
    t20 = t2.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE string.
    t26 = t20->base_name( ).
    DATA(t28) = |.|.
    DATA(t29) = strlen( t26 ).
    DATA t30 TYPE i.
    DATA(t31) = VALUE i( ).
    DATA(t32) = VALUE i( ).
    DATA t33 TYPE i.
    DATA(t34) = VALUE string( ).
    CREATE OBJECT t25.
    t33 = strlen( t28 ).
    t30 = 0.
    IF t33 = 0.
      WHILE t30 < t29.
        t34 = t26+t30(1).
        APPEND t34 TO t25->items.
        t30 = t30 + 1.
      ENDWHILE.
    ELSE.
      WHILE t30 <= t29.
        FIND FIRST OCCURRENCE OF t28 IN SECTION OFFSET t30 OF t26 MATCH OFFSET t31.
        IF sy-subrc = 0.
          t32 = t31 - t30.
        ELSE.
          t31 = -1.
          t32 = t29 - t30.
        ENDIF.
        CLEAR t34.
        IF t32 > 0.
          t34 = t26+t30(t32).
        ENDIF.
        APPEND t34 TO t25->items.
        IF t31 < 0.
          EXIT.
        ENDIF.
        t30 = t31 + t33.
      ENDWHILE.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t36 = t25->get( p0 = 1 ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t41) = VALUE abap_bool( ).
    IF t36 IS INITIAL.
      t41 = abap_true.
    ELSEIF t36->has = abap_false.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
    ELSE.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      t45 = t36->value.
      DATA(t47) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t44.
      t40 = t48.
    ENDIF.
    t19 = t40.
    DATA t52 TYPE REF TO zcl_lnt_abstract_file.
    t52 = t2.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t58 TYPE string.
    t58 = t52->base_name( ).
    DATA(t60) = |.|.
    DATA(t61) = strlen( t58 ).
    DATA t62 TYPE i.
    DATA(t63) = VALUE i( ).
    DATA(t64) = VALUE i( ).
    DATA t65 TYPE i.
    DATA(t66) = VALUE string( ).
    CREATE OBJECT t57.
    t65 = strlen( t60 ).
    t62 = 0.
    IF t65 = 0.
      WHILE t62 < t61.
        t66 = t58+t62(1).
        APPEND t66 TO t57->items.
        t62 = t62 + 1.
      ENDWHILE.
    ELSE.
      WHILE t62 <= t61.
        FIND FIRST OCCURRENCE OF t60 IN SECTION OFFSET t62 OF t58 MATCH OFFSET t63.
        IF sy-subrc = 0.
          t64 = t63 - t62.
        ELSE.
          t63 = -1.
          t64 = t61 - t62.
        ENDIF.
        CLEAR t66.
        IF t64 > 0.
          t66 = t58+t62(t64).
        ENDIF.
        APPEND t66 TO t57->items.
        IF t63 < 0.
          EXIT.
        ENDIF.
        t62 = t63 + t65.
      ENDWHILE.
    ENDIF.
    t56 = t57.
    DATA(t70) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t70.
    DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t72 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
    DATA(t76) = strlen( t70 ).
    t56->put( p0 = 0 p1 = t72->replace( p0 = t70 p1 = |#| ) ).
    DATA(t80) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t80.
    DATA t82 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t82 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
    DATA(t86) = strlen( t80 ).
    t56->put( p0 = 0 p1 = t82->replace( p0 = t80 p1 = |>| ) ).
    DATA(t90) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t90.
    DATA t92 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t92 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
    DATA(t96) = strlen( t90 ).
    t56->put( p0 = 0 p1 = t92->replace( p0 = t90 p1 = |<| ) ).
    DATA(t100) = VALUE string( ).
    DATA(t101) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t101.
    DATA(t103) = strlen( t101 ).
    t100 = t101.
    IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t100 TO UPPER CASE.
    ELSE.
      t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t104 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
    DATA(t108) = strlen( t100 ).
    t56->put( p0 = 0 p1 = t104->replace( p0 = t100 p1 = |/| ) ).
    DATA(t111) = VALUE string( ).
    DATA(t112) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t112.
    DATA(t114) = |(|.
    DATA(t115) = |/|.
    DATA(t116) = strlen( t112 ).
    t111 = t112.
    REPLACE ALL OCCURRENCES OF t114 IN t111 WITH t115.
    t56->put( p0 = 0 p1 = t111 ).
    DATA(t119) = VALUE string( ).
    DATA(t120) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t120.
    DATA(t122) = |)|.
    DATA(t123) = |/|.
    DATA(t124) = strlen( t120 ).
    t119 = t120.
    REPLACE ALL OCCURRENCES OF t122 IN t119 WITH t123.
    t56->put( p0 = 0 p1 = t119 ).
    DATA(t125) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t125.
    DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t127->has = abap_true.
    t127->value = t125.
    t16 = t18->get_object( i_type_9913 = t19 i_name = t127 ).
    IF xsdbool( xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t135) = me->reg.
    t133 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t135 i_pos = t1 ).
    DATA t140 TYPE REF TO zcl_lnt_icursor_data.
    t140 = t133.
    DATA t142 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t140 IS INITIAL ) = abap_true.
    ELSE.
      t142 = t140->identifier.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t142 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t154 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t156 TYPE REF TO zcl_lnt_icursor_data.
    t156 = t133.
    DATA(t158) = me->reg.
    DATA t159 TYPE REF TO zcl_lnt_abap_object.
    DATA t161 TYPE REF TO object.
    t161 = t16.
    t159 ?= t161.
    t154 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t156 i_reg_f149 = t158 i_obj_1ed0 = t159 ).
    DATA(t162) = VALUE abap_bool( ).
    DATA(t163) = VALUE abap_bool( ).
    DATA t166 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t166 = t154.
    DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t166 IS INITIAL ) = abap_true.
    ELSE.
      t168 = t166->definition_id.
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t163 = xsdbool( t168 IS INITIAL ).
    t162 = t163.
    IF t163 = abap_false.
      DATA t182 TYPE REF TO zcl_lnt_lsp_lookup_result.
      t182 = t154.
      DATA t185 TYPE REF TO zif_lnt_spaghetti_scope_node.
      IF xsdbool( t182 IS INITIAL ) = abap_true.
      ELSE.
        t185 = t182->scope.
      ENDIF.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t162 = xsdbool( t185 IS INITIAL ).
    ENDIF.
    IF t162 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t198 TYPE REF TO zcl_lnt_fi_identifier.
    t198 = t154->definition_id.
    DATA t202 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t202 = t154->scope.
    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t207 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t209 = me->search_d139( i_identifier = t198 i_node = t202 i_exit_after_found = t206 i_remove_duplicates = t207 ).
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t211.
    DATA t214 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t215 TYPE REF TO object.
    DATA(t216) = VALUE i( ).
    DO.
      t209->load( ).
      IF t216 >= lines( t209->items ).
        EXIT.
      ENDIF.
      CLEAR t215.
      READ TABLE t209->items INDEX t216 + 1 INTO t215.
      t216 = t216 + 1.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      CLEAR t214.
      IF t215 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t217 ?= t215.
        DATA t218 TYPE REF TO object.
        t218 = t217->as_ref( ).
        t214 ?= t218.
      ELSE.
        t214 ?= t215.
      ENDIF.
      DATA t220 TYPE REF TO zcl_lnt_location.
      t220 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t214 ).
      t211->load( ).
      APPEND t220 TO t211->items.
      t211->save( ).
    ENDDO.
    result = t211.

  ENDMETHOD.

  METHOD search_d139.
    DATA(t1) = i_identifier.
    DATA(t2) = i_node.
    DATA(t3) = i_exit_after_found.
    DATA(t4) = i_remove_duplicates.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t3.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t10->has = abap_true.
      t10->value = abap_false.
      t3 = t10.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t4.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ELSEIF t13->has = abap_false.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA(t17) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t17->has = abap_true.
      t17->value = abap_true.
      t4 = t17.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    DATA(t21) = VALUE string( ).
    t21 = t2->get_identifier( )->stype.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    t27 = xsdbool( t21 = |method| ).
    t26 = t27.
    IF t27 = abap_false.
      t26 = xsdbool( t21 = |function| ).
    ENDIF.
    t25 = t26.
    IF t26 = abap_false.
      t25 = xsdbool( t21 = |form| ).
    ENDIF.
    IF t25 = abap_true.
      t19 = me->find_references( i_node = t2 i_identifier = t1 ).
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    t19->load( ).
    t40 = xsdbool( lines( t19->items ) > 1 ).
    t39 = t40.
    IF t40 = abap_true.
      t39 = xsdbool( t3->value = abap_true ).
    ENDIF.
    IF t39 = abap_true.
      result = t19.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t49 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t54 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t54.
      t54 = t49->next( ).
      IF t54->done = abap_true.
        EXIT.
      ENDIF.
      DATA t59 TYPE REF TO zif_lnt_object.
      CLEAR t59.
      t59 = t54->value.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      t65 = abap_false.
      DATA t67 TYPE REF TO cx_root.
      CLEAR t67.
      TRY.
          t64 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_abap_object ).
          t65 = abap_true.
        CATCH cx_root INTO t67.
          IF xsdbool( t65 = abap_false ) = abap_true.
            t49->close( ).
          ENDIF.
          RAISE EXCEPTION t67.
      ENDTRY.
      IF xsdbool( t65 = abap_false ) = abap_true.
        t49->close( ).
      ENDIF.
      IF t64 = abap_true.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = VALUE abap_bool( ).
        t80 = abap_false.
        DATA t82 TYPE REF TO cx_root.
        CLEAR t82.
        TRY.
            DATA t85 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t85.
            DATA t87 TYPE REF TO object.
            CLEAR t87.
            t87 = t59.
            t85 ?= t87.
            t79 = me->reg->is_dependency( i_obj_1ed0 = t85 ).
            t80 = abap_true.
          CATCH cx_root INTO t82.
            IF xsdbool( t80 = abap_false ) = abap_true.
              t49->close( ).
            ENDIF.
            RAISE EXCEPTION t82.
        ENDTRY.
        IF xsdbool( t80 = abap_false ) = abap_true.
          t49->close( ).
        ENDIF.
        IF t79 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t96) = VALUE f( ).
        DATA(t97) = VALUE f( ).
        DATA(t98) = VALUE abap_bool( ).
        t98 = abap_false.
        DATA t100 TYPE REF TO cx_root.
        CLEAR t100.
        TRY.
            DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t102.
            DATA(t107) = me->reg.
            DATA t108 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t108.
            DATA t110 TYPE REF TO object.
            CLEAR t110.
            t110 = t59.
            t108 ?= t110.
            t102 = me->find_references( i_node = NEW zcl_lnt_syntax_logic( i_reg_f149 = t107 i_object_19cd = t108 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) i_identifier = t1 ).
            DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t112.
            DATA t113 TYPE REF TO object.
            CLEAR t113.
            DATA(t114) = VALUE i( ).
            DO.
              t102->load( ).
              IF t114 >= lines( t102->items ).
                EXIT.
              ENDIF.
              CLEAR t113.
              READ TABLE t102->items INDEX t114 + 1 INTO t113.
              t114 = t114 + 1.
              DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t115.
              CLEAR t112.
              IF t113 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t115 ?= t113.
                DATA t116 TYPE REF TO object.
                CLEAR t116.
                t116 = t115->as_ref( ).
                t112 ?= t116.
              ELSE.
                t112 ?= t113.
              ENDIF.
              t19->load( ).
              APPEND t112 TO t19->items.
              t19->save( ).
            ENDDO.
            DATA(t119) = VALUE f( ).
            t19->load( ).
            t119 = lines( t19->items ).
            t97 = t119.
            t98 = abap_true.
          CATCH cx_root INTO t100.
            IF xsdbool( t98 = abap_false ) = abap_true.
              t49->close( ).
            ENDIF.
            RAISE EXCEPTION t100.
        ENDTRY.
        IF xsdbool( t98 = abap_false ) = abap_true.
          t49->close( ).
        ENDIF.
        t96 = t97.
      ENDIF.
    ENDDO.
    IF xsdbool( t4->value = abap_true ) = abap_true.
      result = me->remove_duplicates( i_arr = t19 ).
      RETURN.
    ELSE.
      result = t19.

    ENDIF.
  ENDMETHOD.

  METHOD remove_duplicates.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_arr.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    TRY.
        t5 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
      CATCH zlnt_exception_js_ebcc2df7d5e4.
        DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t7->has = abap_true.
        t7->value = `Invalid JSON`.
        DATA(t8) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t7 ).
        DATA(t9) = NEW zlnt_exception_cl_30eec8e8805d( ).
        t9->payload = t8.
        DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t12 TYPE REF TO object.
        t12 = t8.
        TRY.
            t10 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS NOT BOUND.
          TRY.
              t11 ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t11 IS BOUND.
            t10 = t11->source( ).
          ENDIF.
          IF t10 IS NOT BOUND.
            CREATE OBJECT t10.
            t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t10->oval = t8.
          ENDIF.
        ENDIF.
        t9->source_value = t10.
        RAISE EXCEPTION t9.
    ENDTRY.
    t2 = t5.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t19 TYPE REF TO object.
    DATA(t20) = VALUE i( ).
    DO.
      t1->load( ).
      IF t20 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t1->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA(t24) = VALUE string( ).
      DATA(t26) = VALUE string( ).
      DATA(t27) = VALUE string( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = VALUE string( ).
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t37.
      t37 = t18->token.
      DATA t39 TYPE REF TO zcl_lnt_position.
      CLEAR t39.
      t39 = t37->start.
      DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t41.
      t41 = t39->col.
      t29 = zlnt_runtime_numb_290eb04a9758=>text( t41 ).
      DATA(t44) = strlen( t29 ).
      t28 = |{ t29 }{ |_| }|.
      DATA(t45) = VALUE string( ).
      DATA(t46) = VALUE f( ).
      t46 = t18->token->start->row.
      IF t46 <> trunc( t46 ) OR t46 > range_safe_integer OR t46 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t59) = CONV int8( t46 ).
      t45 = |{ t59 }|.
      DATA(t60) = strlen( t28 ).
      t27 = |{ t28 }{ t45 }|.
      DATA(t62) = strlen( t27 ).
      t26 = |{ t27 }{ |_| }|.
      DATA(t63) = VALUE string( ).
      t63 = t18->filename.
      DATA(t68) = strlen( t26 ).
      t24 = |{ t26 }{ t63 }|.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t69 = t2->get( p0 = t24 ).
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      CLEAR t75.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t75->bval = abap_true.
      t2->put( p0 = t24 p1 = t75 ).
      DATA(t78) = VALUE abap_bool( ).
      IF t69 IS BOUND.
        t78 = t69->truth( ).
      ENDIF.
      IF xsdbool( t78 = abap_false ) = abap_true.
        t15->load( ).
        APPEND t18 TO t15->items.
        t15->save( ).
      ENDIF.
    ENDDO.
    result = t15.

  ENDMETHOD.

  METHOD find_references.
    DATA(t1) = i_node.
    DATA(t2) = i_identifier.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE string.
    t6 = t1->get_identifier( )->stype.
    IF xsdbool( t6 <> |_builtin| ) = abap_true.
      DATA(t10) = VALUE string( ).
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA t16 TYPE string.
      t16 = t2->token->str.
      DATA(t24) = VALUE string( ).
      DATA(t25) = t16.
      DATA(t26) = 0.
      DATA(t27) = 1.
      DATA(t28) = strlen( t25 ).
      IF t26 < 0.
        t26 = t26 + t28.
        IF t26 < 0.
          t26 = 0.
        ENDIF.
      ENDIF.
      IF t26 > t28 OR t27 <= 0.
      ELSE.
        IF t27 > t28 - t26.
          t27 = t28 - t26.
        ENDIF.
        t24 = t25+t26(t27).
      ENDIF.
      IF xsdbool( t24 = |!| ) = abap_true.
        DATA t31 TYPE string.
        t31 = t16.
        DATA(t33) = VALUE string( ).
        DATA(t35) = 1.
        DATA t36 TYPE i.
        t36 = strlen( t31 ).
        DATA(t39) = strlen( t31 ).
        IF t35 < 0.
          t35 = t35 + t39.
          IF t35 < 0.
            t35 = 0.
          ENDIF.
        ENDIF.
        IF t35 > t39 OR t36 <= 0.
        ELSE.
          IF t36 > t39 - t35.
            t36 = t39 - t35.
          ENDIF.
          t33 = t31+t35(t36).
        ENDIF.
        t16 = t33.
      ENDIF.
      t12 = t16.
      DATA(t41) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      t10 = t11.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      t46 = t1->get_data( )->vars->get( p0 = t10 ).
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
      t52 = t46.
      DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t52 IS INITIAL ) = abap_true.
      ELSE.
        DATA t60 TYPE REF TO zcl_lnt_fi_identifier.
        t60 = t52.
        DATA t62 TYPE REF TO zcl_lnt_fi_identifier.
        t62 = t2.
        DATA t64 TYPE abap_bool.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE REF TO zcl_lnt_position.
        t66 = t62->token->start.
        DATA t79 TYPE REF TO zcl_lnt_position.
        t79 = t60->token->start.
        t65 = t66->equals( i_p = t79 ).
        t64 = t65.
        IF t65 = abap_true.
          t64 = xsdbool( t62->filename = t60->filename ).
        ENDIF.
        DATA(t89) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t89->has = abap_true.
        t89->value = t64.
        t55 = t89.
      ENDIF.
      t51 = t55.
      IF t51 IS BOUND.
        IF t51->has = abap_true.
          t50 = xsdbool( t51->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t50 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_typed_identifier.
        t91 = t46.
        t3->load( ).
        APPEND t91 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
      t97 = t1->get_data( )->types->get( p0 = t10 ).
      DATA(t101) = VALUE abap_bool( ).
      DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
      t103 = t97.
      DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t103 IS INITIAL ) = abap_true.
      ELSE.
        DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
        t111 = t103.
        DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
        t113 = t2.
        DATA t115 TYPE abap_bool.
        DATA t116 TYPE abap_bool.
        DATA t117 TYPE REF TO zcl_lnt_position.
        t117 = t113->token->start.
        DATA t130 TYPE REF TO zcl_lnt_position.
        t130 = t111->token->start.
        t116 = t117->equals( i_p = t130 ).
        t115 = t116.
        IF t116 = abap_true.
          t115 = xsdbool( t113->filename = t111->filename ).
        ENDIF.
        DATA(t140) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t140->has = abap_true.
        t140->value = t115.
        t106 = t140.
      ENDIF.
      t102 = t106.
      IF t102 IS BOUND.
        IF t102->has = abap_true.
          t101 = xsdbool( t102->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t101 = abap_true.
        DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
        t142 = t97.
        t3->load( ).
        APPEND t142 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t144 = t1->get_data( )->references.
      DATA t147 TYPE REF TO zcl_lnt_ireference.
      DATA t148 TYPE REF TO object.
      DATA(t149) = VALUE i( ).
      DO.
        t144->load( ).
        IF t149 >= lines( t144->items ).
          EXIT.
        ENDIF.
        CLEAR t148.
        READ TABLE t144->items INDEX t149 + 1 INTO t148.
        t149 = t149 + 1.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        CLEAR t147.
        IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t150 ?= t148.
          DATA t151 TYPE REF TO object.
          t151 = t150->as_ref( ).
          t147 ?= t151.
        ELSE.
          t147 ?= t148.
        ENDIF.
        DATA(t152) = VALUE abap_bool( ).
        DATA t153 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t153.
        DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
        t154 = t147->resolved.
        DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t157.
        IF xsdbool( t154 IS INITIAL ) = abap_true.
          CLEAR t157.
        ELSE.
          DATA t162 TYPE REF TO zcl_lnt_fi_identifier.
          t162 = t154.
          DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
          t165 = t2.
          DATA t167 TYPE abap_bool.
          DATA t168 TYPE abap_bool.
          DATA t169 TYPE REF TO zcl_lnt_position.
          t169 = t165->token->start.
          DATA t182 TYPE REF TO zcl_lnt_position.
          t182 = t162->token->start.
          t168 = t169->equals( i_p = t182 ).
          t167 = t168.
          IF t168 = abap_true.
            t167 = xsdbool( t165->filename = t162->filename ).
          ENDIF.
          DATA(t192) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t192->has = abap_true.
          t192->value = t167.
          t157 = t192.
        ENDIF.
        t153 = t157.
        IF t153 IS BOUND.
          IF t153->has = abap_true.
            t152 = xsdbool( t153->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t152 = abap_true.
          DATA t194 TYPE REF TO zcl_lnt_fi_identifier.
          t194 = t147->position_7b94.
          t3->load( ).
          APPEND t194 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t196 = t1->get_children( ).
    DATA t198 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t199 TYPE REF TO object.
    DATA(t200) = VALUE i( ).
    DO.
      t196->load( ).
      IF t200 >= lines( t196->items ).
        EXIT.
      ENDIF.
      CLEAR t199.
      READ TABLE t196->items INDEX t200 + 1 INTO t199.
      t200 = t200 + 1.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      CLEAR t198.
      IF t199 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t201 ?= t199.
        DATA t202 TYPE REF TO object.
        t202 = t201->as_ref( ).
        t198 ?= t202.
      ELSE.
        t198 ?= t199.
      ENDIF.
      DATA(t203) = VALUE i( ).
      DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t204 = me->find_references( i_node = t198 i_identifier = t2 ).
      DATA t207 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t207.
      DATA t208 TYPE REF TO object.
      CLEAR t208.
      DATA(t209) = VALUE i( ).
      DO.
        t204->load( ).
        IF t209 >= lines( t204->items ).
          EXIT.
        ENDIF.
        CLEAR t208.
        READ TABLE t204->items INDEX t209 + 1 INTO t208.
        t209 = t209 + 1.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        CLEAR t207.
        IF t208 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t210 ?= t208.
          DATA t211 TYPE REF TO object.
          t211 = t210->as_ref( ).
          t207 ?= t211.
        ELSE.
          t207 ?= t208.
        ENDIF.
        t3->load( ).
        APPEND t207 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t203 = lines( t3->items ).
    ENDDO.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1174_00f285c1db02.
  ENDMETHOD.
ENDCLASS.
