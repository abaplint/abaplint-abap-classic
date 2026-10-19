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
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    t6 = t1->zlnt_view_read_sr_ecd019429cea( ).
    t5 = t6->zlnt_view_read_no_0041136eb871( ).
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = xsdbool( t2 IS INITIAL ).
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA t17 TYPE REF TO zif_lnt_object.
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
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = 1.
    t37 = t25->get( p0 = t39 ).
    t36 = t37.
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
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t51) = VALUE string( ).
    DATA t52 TYPE REF TO zcl_lnt_abstract_file.
    t52 = t2.
    DATA(t55) = VALUE string( ).
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
    DATA(t68) = 0.
    DATA(t69) = VALUE string( ).
    DATA(t70) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    CLEAR t70.
    READ TABLE t56->items INDEX 1 INTO t70.
    DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t73) = |%23|.
    DATA(t74) = |g|.
    CREATE OBJECT t72 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t73 flags = t74 checked = abap_true.
    DATA(t75) = |#|.
    DATA(t76) = strlen( t70 ).
    t69 = t72->replace( p0 = t70 p1 = t75 ).
    t56->put( p0 = t68 p1 = t69 ).
    DATA(t78) = 0.
    DATA(t79) = VALUE string( ).
    DATA(t80) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    CLEAR t80.
    READ TABLE t56->items INDEX 1 INTO t80.
    DATA t82 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t83) = |%3e|.
    DATA(t84) = |g|.
    CREATE OBJECT t82 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t83 flags = t84 checked = abap_true.
    DATA(t85) = |>|.
    DATA(t86) = strlen( t80 ).
    t79 = t82->replace( p0 = t80 p1 = t85 ).
    t56->put( p0 = t78 p1 = t79 ).
    DATA(t88) = 0.
    DATA(t89) = VALUE string( ).
    DATA(t90) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    CLEAR t90.
    READ TABLE t56->items INDEX 1 INTO t90.
    DATA t92 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t93) = |%3c|.
    DATA(t94) = |g|.
    CREATE OBJECT t92 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t93 flags = t94 checked = abap_true.
    DATA(t95) = |<|.
    DATA(t96) = strlen( t90 ).
    t89 = t92->replace( p0 = t90 p1 = t95 ).
    t56->put( p0 = t88 p1 = t89 ).
    DATA(t98) = 0.
    DATA(t99) = VALUE string( ).
    DATA(t100) = VALUE string( ).
    DATA(t101) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    CLEAR t101.
    READ TABLE t56->items INDEX 1 INTO t101.
    DATA(t103) = strlen( t101 ).
    t100 = t101.
    IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t100 TO UPPER CASE.
    ELSE.
      t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t105) = |#|.
    DATA(t106) = |g|.
    CREATE OBJECT t104 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t105 flags = t106 checked = abap_true.
    DATA(t107) = |/|.
    DATA(t108) = strlen( t100 ).
    t99 = t104->replace( p0 = t100 p1 = t107 ).
    t56->put( p0 = t98 p1 = t99 ).
    DATA(t110) = 0.
    DATA(t111) = VALUE string( ).
    DATA(t112) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    CLEAR t112.
    READ TABLE t56->items INDEX 1 INTO t112.
    DATA(t114) = |(|.
    DATA(t115) = |/|.
    DATA(t116) = strlen( t112 ).
    t111 = t112.
    REPLACE ALL OCCURRENCES OF t114 IN t111 WITH t115.
    t56->put( p0 = t110 p1 = t111 ).
    DATA(t118) = 0.
    DATA(t119) = VALUE string( ).
    DATA(t120) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    CLEAR t120.
    READ TABLE t56->items INDEX 1 INTO t120.
    DATA(t122) = |)|.
    DATA(t123) = |/|.
    DATA(t124) = strlen( t120 ).
    t119 = t120.
    REPLACE ALL OCCURRENCES OF t122 IN t119 WITH t123.
    t56->put( p0 = t118 p1 = t119 ).
    DATA(t125) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    CLEAR t125.
    READ TABLE t56->items INDEX 1 INTO t125.
    t55 = t125.
    t51 = t55.
    DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t127->has = abap_true.
    t127->value = t51.
    t49 = t127.
    t17 = t18->get_object( i_type_9913 = t19 i_name = t49 ).
    t16 = t17.
    DATA t129 TYPE abap_bool.
    DATA t130 TYPE abap_bool.
    t130 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_abap_object ).
    t129 = xsdbool( t130 = abap_false ).
    IF t129 = abap_true.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t132.
      result = t132.
      RETURN.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_icursor_data.
    DATA t134 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t135) = me->reg.
    t134 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t135 i_pos = t1 ).
    t133 = t134.
    DATA(t137) = VALUE abap_bool( ).
    DATA t140 TYPE REF TO zcl_lnt_icursor_data.
    t140 = t133.
    DATA t142 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t143) = xsdbool( t140 IS INITIAL ).
    IF t143 = abap_true.
    ELSE.
      DATA t146 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t147 TYPE REF TO zcl_lnt_icursor_data.
      t147 = t140.
      t146 = t147->identifier.
      t142 = t146.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t137 = xsdbool( t142 IS INITIAL ).
    IF t137 = abap_true.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t153.
      result = t153.
      RETURN.
    ENDIF.
    DATA t154 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t155 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t156 TYPE REF TO zcl_lnt_icursor_data.
    t156 = t133.
    DATA(t158) = me->reg.
    DATA t159 TYPE REF TO zcl_lnt_abap_object.
    DATA t161 TYPE REF TO object.
    t161 = t16.
    t159 ?= t161.
    t155 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t156 i_reg_f149 = t158 i_obj_1ed0 = t159 ).
    t154 = t155.
    DATA(t162) = VALUE abap_bool( ).
    DATA(t163) = VALUE abap_bool( ).
    DATA t166 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t166 = t154.
    DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t169) = xsdbool( t166 IS INITIAL ).
    IF t169 = abap_true.
    ELSE.
      DATA t172 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t173 TYPE REF TO zcl_lnt_lsp_lookup_result.
      t173 = t166.
      t172 = t173->definition_id.
      t168 = t172.
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t163 = xsdbool( t168 IS INITIAL ).
    t162 = t163.
    IF t163 = abap_false.
      DATA(t179) = VALUE abap_bool( ).
      DATA t182 TYPE REF TO zcl_lnt_lsp_lookup_result.
      t182 = t154.
      DATA t185 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t186) = xsdbool( t182 IS INITIAL ).
      IF t186 = abap_true.
      ELSE.
        DATA t189 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t189 = t182->scope.
        t185 = t189.
      ENDIF.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t179 = xsdbool( t185 IS INITIAL ).
      t162 = t179.
    ENDIF.
    IF t162 = abap_true.
      DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t195.
      result = t195.
      RETURN.
    ENDIF.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t198 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t199 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t200 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t200 = t154.
    t199 = t200->definition_id.
    t198 = t199.
    DATA t202 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t203 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t204 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t204 = t154.
    t203 = t204->scope.
    t202 = t203.
    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t207 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t197 = me->search_d139( i_identifier = t198 i_node = t202 i_exit_after_found = t206 i_remove_duplicates = t207 ).
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t209 = t197.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    t211 = t212.
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
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE REF TO zcl_lnt_iscope_identifier.
    t23 = t2->get_identifier( ).
    t22 = t23->stype.
    t21 = t22.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA(t29) = |method|.
    t27 = xsdbool( t21 = t29 ).
    t26 = t27.
    IF t27 = abap_false.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t32) = |function|.
      t30 = xsdbool( t21 = t32 ).
      t26 = t30.
    ENDIF.
    t25 = t26.
    IF t26 = abap_false.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t35) = |form|.
      t33 = xsdbool( t21 = t35 ).
      t25 = t33.
    ENDIF.
    IF t25 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = me->find_references( i_node = t2 i_identifier = t1 ).
      t19 = t36.
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = VALUE i( ).
    t19->load( ).
    t41 = lines( t19->items ).
    DATA(t43) = 1.
    t40 = xsdbool( t41 > t43 ).
    t39 = t40.
    IF t40 = abap_true.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = VALUE abap_bool( ).
      t45 = t3->value.
      t44 = xsdbool( t45 = abap_true ).
      t39 = t44.
    ENDIF.
    IF t39 = abap_true.
      result = t19.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t50 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t51 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t51 = me->reg->get_objects( ).
    t50 = t51->iterate( ).
    t49 = t50.
    DO.
      DATA t54 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t55.
      t55 = t49->next( ).
      t54 = t55.
      DATA(t57) = VALUE abap_bool( ).
      t57 = t54->done.
      IF t57 = abap_true.
        EXIT.
      ENDIF.
      DATA t59 TYPE REF TO zif_lnt_object.
      CLEAR t59.
      DATA t61 TYPE REF TO zif_lnt_object.
      CLEAR t61.
      t61 = t54->value.
      t59 = t61.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      t65 = abap_false.
      DATA t67 TYPE REF TO cx_root.
      CLEAR t67.
      TRY.
          DATA(t68) = VALUE abap_bool( ).
          t68 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_abap_object ).
          t64 = t68.
          t65 = abap_true.
        CATCH cx_root INTO t67.
          DATA(t71) = VALUE abap_bool( ).
          t71 = xsdbool( t65 = abap_false ).
          IF t71 = abap_true.
            t49->close( ).
          ENDIF.
          RAISE EXCEPTION t67.
      ENDTRY.
      DATA(t74) = VALUE abap_bool( ).
      t74 = xsdbool( t65 = abap_false ).
      IF t74 = abap_true.
        t49->close( ).
      ENDIF.
      t63 = t64.
      IF t63 = abap_true.
        DATA(t78) = VALUE abap_bool( ).
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = VALUE abap_bool( ).
        t80 = abap_false.
        DATA t82 TYPE REF TO cx_root.
        CLEAR t82.
        TRY.
            DATA(t83) = VALUE abap_bool( ).
            DATA t85 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t85.
            DATA t87 TYPE REF TO object.
            CLEAR t87.
            t87 = t59.
            t85 ?= t87.
            t83 = me->reg->is_dependency( i_obj_1ed0 = t85 ).
            t79 = t83.
            t80 = abap_true.
          CATCH cx_root INTO t82.
            DATA(t89) = VALUE abap_bool( ).
            t89 = xsdbool( t80 = abap_false ).
            IF t89 = abap_true.
              t49->close( ).
            ENDIF.
            RAISE EXCEPTION t82.
        ENDTRY.
        DATA(t92) = VALUE abap_bool( ).
        t92 = xsdbool( t80 = abap_false ).
        IF t92 = abap_true.
          t49->close( ).
        ENDIF.
        t78 = t79.
        IF t78 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t96) = VALUE f( ).
        DATA(t97) = VALUE f( ).
        DATA(t98) = VALUE abap_bool( ).
        t98 = abap_false.
        DATA t100 TYPE REF TO cx_root.
        CLEAR t100.
        TRY.
            DATA(t101) = VALUE f( ).
            DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t102.
            DATA t103 TYPE REF TO zif_lnt_spaghetti_scope_node.
            CLEAR t103.
            DATA t104 TYPE REF TO zif_lnt_spaghetti_scope.
            CLEAR t104.
            DATA t105 TYPE REF TO zcl_lnt_isyntax_result.
            CLEAR t105.
            DATA t106 TYPE REF TO zcl_lnt_syntax_logic.
            CLEAR t106.
            DATA(t107) = me->reg.
            DATA t108 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t108.
            DATA t110 TYPE REF TO object.
            CLEAR t110.
            t110 = t59.
            t108 ?= t110.
            t106 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t107 i_object_19cd = t108 ).
            t105 = t106->run( ).
            t104 = t105->zlnt_view_read_sr_b6b1d9e0c93e( ).
            t103 = t104->get_top( ).
            t102 = me->find_references( i_node = t103 i_identifier = t1 ).
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
            DATA(t120) = VALUE i( ).
            t19->load( ).
            t120 = lines( t19->items ).
            t119 = t120.
            t101 = t119.
            t97 = t101.
            t98 = abap_true.
          CATCH cx_root INTO t100.
            DATA(t123) = VALUE abap_bool( ).
            t123 = xsdbool( t98 = abap_false ).
            IF t123 = abap_true.
              t49->close( ).
            ENDIF.
            RAISE EXCEPTION t100.
        ENDTRY.
        DATA(t126) = VALUE abap_bool( ).
        t126 = xsdbool( t98 = abap_false ).
        IF t126 = abap_true.
          t49->close( ).
        ENDIF.
        t96 = t97.
      ENDIF.
    ENDDO.
    DATA(t130) = VALUE abap_bool( ).
    DATA(t131) = VALUE abap_bool( ).
    t131 = t4->value.
    t130 = xsdbool( t131 = abap_true ).
    IF t130 = abap_true.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t134 = me->remove_duplicates( i_arr = t19 ).
      result = t134.
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
    DATA(t6) = |\{\}|.
    TRY.
        t5 = zlnt_runtime_json_7c6b3012af76=>parse( t6 ).
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
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
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
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE string( ).
      DATA(t25) = VALUE string( ).
      DATA(t26) = VALUE string( ).
      DATA(t27) = VALUE string( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = VALUE string( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t30.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t37.
      t37 = t18->token.
      DATA t39 TYPE REF TO zcl_lnt_position.
      CLEAR t39.
      t39 = t37->start.
      DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t41.
      t41 = t39->col.
      t30 = t41.
      t29 = zlnt_runtime_numb_290eb04a9758=>text( t30 ).
      DATA(t43) = |_|.
      DATA(t44) = strlen( t29 ).
      t28 = |{ t29 }{ t43 }|.
      DATA(t45) = VALUE string( ).
      DATA(t46) = VALUE f( ).
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      t53 = t18->token.
      DATA t55 TYPE REF TO zcl_lnt_position.
      CLEAR t55.
      t55 = t53->start.
      DATA(t57) = VALUE f( ).
      t57 = t55->row.
      t46 = t57.
      IF t46 <> trunc( t46 ) OR t46 > range_safe_integer OR t46 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t59) = CONV int8( t46 ).
      t45 = |{ t59 }|.
      DATA(t60) = strlen( t28 ).
      t27 = |{ t28 }{ t45 }|.
      DATA(t61) = |_|.
      DATA(t62) = strlen( t27 ).
      t26 = |{ t27 }{ t61 }|.
      DATA(t63) = VALUE string( ).
      DATA(t66) = VALUE string( ).
      t66 = t18->filename.
      t63 = t66.
      DATA(t68) = strlen( t26 ).
      t25 = |{ t26 }{ t63 }|.
      t24 = t25.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t70 = t2->get( p0 = t24 ).
      t69 = t70.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      CLEAR t75.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t75->bval = abap_true.
      t2->put( p0 = t24 p1 = t75 ).
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE abap_bool( ).
      IF t69 IS BOUND.
        t78 = t69->truth( ).
      ENDIF.
      t77 = xsdbool( t78 = abap_false ).
      t23 = t77.
      IF t23 = abap_true.
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
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_iscope_identifier.
    t7 = t1->get_identifier( ).
    t6 = t7->stype.
    DATA(t9) = |_builtin|.
    t5 = xsdbool( t6 <> t9 ).
    IF t5 = abap_true.
      DATA(t10) = VALUE string( ).
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t16 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      t19 = t2->token.
      DATA t21 TYPE string.
      t21 = t19->str.
      t16 = t21.
      DATA(t23) = VALUE abap_bool( ).
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
        CLEAR t24.
      ELSE.
        IF t27 > t28 - t26.
          t27 = t28 - t26.
        ENDIF.
        t24 = t25+t26(t27).
      ENDIF.
      DATA(t29) = |!|.
      t23 = xsdbool( t24 = t29 ).
      IF t23 = abap_true.
        DATA(t30) = VALUE string( ).
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
          CLEAR t33.
        ELSE.
          IF t36 > t39 - t35.
            t36 = t39 - t35.
          ENDIF.
          t33 = t31+t35(t36).
        ENDIF.
        t30 = t33.
        t16 = t30.
      ENDIF.
      t15 = t16.
      t12 = t15.
      DATA(t41) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      t10 = t11.
      DATA t43 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t44 TYPE REF TO zcl_lnt_iscope_data.
      t44 = t1->get_data( ).
      t43 = t44->vars.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
      t47 = t43->get( p0 = t10 ).
      t46 = t47.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
      t52 = t46.
      DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t56) = xsdbool( t52 IS INITIAL ).
      IF t56 = abap_true.
      ELSE.
        DATA(t59) = VALUE abap_bool( ).
        DATA t60 TYPE REF TO zcl_lnt_fi_identifier.
        t60 = t52.
        DATA t62 TYPE REF TO zcl_lnt_fi_identifier.
        t62 = t2.
        DATA t64 TYPE abap_bool.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        t71 = t62->token.
        DATA t73 TYPE REF TO zcl_lnt_position.
        t73 = t71->start.
        t66 = t73.
        DATA t75 TYPE REF TO zcl_lnt_position.
        DATA t77 TYPE REF TO zcl_lnt_abstract_token.
        t77 = t60->token.
        DATA t79 TYPE REF TO zcl_lnt_position.
        t79 = t77->start.
        t75 = t79.
        t65 = t66->equals( i_p = t75 ).
        t64 = t65.
        IF t65 = abap_true.
          DATA t81 TYPE abap_bool.
          DATA t82 TYPE string.
          DATA t85 TYPE string.
          t85 = t62->filename.
          t82 = t85.
          DATA t87 TYPE string.
          t87 = t60->filename.
          t81 = xsdbool( t82 = t87 ).
          t64 = t81.
        ENDIF.
        t59 = t64.
        DATA(t89) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t89->has = abap_true.
        t89->value = t59.
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
      DATA t94 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t95 TYPE REF TO zcl_lnt_iscope_data.
      t95 = t1->get_data( ).
      t94 = t95->types.
      DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
      t98 = t94->get( p0 = t10 ).
      t97 = t98.
      DATA(t101) = VALUE abap_bool( ).
      DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
      t103 = t97.
      DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t107) = xsdbool( t103 IS INITIAL ).
      IF t107 = abap_true.
      ELSE.
        DATA(t110) = VALUE abap_bool( ).
        DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
        t111 = t103.
        DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
        t113 = t2.
        DATA t115 TYPE abap_bool.
        DATA t116 TYPE abap_bool.
        DATA t117 TYPE REF TO zcl_lnt_position.
        DATA t122 TYPE REF TO zcl_lnt_abstract_token.
        t122 = t113->token.
        DATA t124 TYPE REF TO zcl_lnt_position.
        t124 = t122->start.
        t117 = t124.
        DATA t126 TYPE REF TO zcl_lnt_position.
        DATA t128 TYPE REF TO zcl_lnt_abstract_token.
        t128 = t111->token.
        DATA t130 TYPE REF TO zcl_lnt_position.
        t130 = t128->start.
        t126 = t130.
        t116 = t117->equals( i_p = t126 ).
        t115 = t116.
        IF t116 = abap_true.
          DATA t132 TYPE abap_bool.
          DATA t133 TYPE string.
          DATA t136 TYPE string.
          t136 = t113->filename.
          t133 = t136.
          DATA t138 TYPE string.
          t138 = t111->filename.
          t132 = xsdbool( t133 = t138 ).
          t115 = t132.
        ENDIF.
        t110 = t115.
        DATA(t140) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t140->has = abap_true.
        t140->value = t110.
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
      DATA t145 TYPE REF TO zcl_lnt_iscope_data.
      t145 = t1->get_data( ).
      t144 = t145->references.
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
        DATA t155 TYPE REF TO zcl_lnt_fi_identifier.
        t155 = t147->resolved.
        t154 = t155.
        DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t157.
        DATA(t158) = xsdbool( t154 IS INITIAL ).
        IF t158 = abap_true.
          CLEAR t157.
        ELSE.
          DATA(t161) = VALUE abap_bool( ).
          DATA t162 TYPE REF TO zcl_lnt_fi_identifier.
          t162 = t154.
          DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
          t165 = t2.
          DATA t167 TYPE abap_bool.
          DATA t168 TYPE abap_bool.
          DATA t169 TYPE REF TO zcl_lnt_position.
          DATA t174 TYPE REF TO zcl_lnt_abstract_token.
          t174 = t165->token.
          DATA t176 TYPE REF TO zcl_lnt_position.
          t176 = t174->start.
          t169 = t176.
          DATA t178 TYPE REF TO zcl_lnt_position.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          t180 = t162->token.
          DATA t182 TYPE REF TO zcl_lnt_position.
          t182 = t180->start.
          t178 = t182.
          t168 = t169->equals( i_p = t178 ).
          t167 = t168.
          IF t168 = abap_true.
            DATA t184 TYPE abap_bool.
            DATA t185 TYPE string.
            DATA t188 TYPE string.
            t188 = t165->filename.
            t185 = t188.
            DATA t190 TYPE string.
            t190 = t162->filename.
            t184 = xsdbool( t185 = t190 ).
            t167 = t184.
          ENDIF.
          t161 = t167.
          DATA(t192) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t192->has = abap_true.
          t192->value = t161.
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
      DATA t214 TYPE i.
      t3->load( ).
      t214 = lines( t3->items ).
      t203 = t214.
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
