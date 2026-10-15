* TS: src/lsp/implementation.ts:15:1 Implementation
CLASS zcl_lnt_implementation DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_method_implementations IMPORTING i_def TYPE REF TO zcl_lnt_method_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS search_references IMPORTING i_scope TYPE REF TO zif_lnt_spaghetti_scope_node i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_implementation IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_text_document.
    DATA(t2) = i_position_a3fd.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = me->reg.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->zlnt_view_read_no_0041136eb871( ).
    t4 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t5 i_filename = t6 ).
    t3 = t4.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t3.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zif_lnt_object.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_object.
    CLEAR t17.
    DATA(t18) = me->reg.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abstract_file.
    DATA t21 TYPE REF TO zcl_lnt_abap_file.
    DATA(t22) = t3.
    t21 = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE string.
    DATA(t27) = t20.
    t26 = t27->base_name( ).
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
    t24 = t25.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t38) = t24.
    DATA(t39) = 1.
    t37 = t38->get( p0 = t39 ).
    t36 = t37.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t36.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ELSEIF t42->has = abap_false.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      t40 = t43.
    ELSE.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA(t46) = t36.
      t45 = t46->value.
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
    t35 = t40.
    t23 = t35.
    t19 = t23.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA(t51) = VALUE string( ).
      DATA t52 TYPE REF TO zcl_lnt_abstract_file.
      DATA t53 TYPE REF TO zcl_lnt_abap_file.
      DATA(t54) = t3.
      t53 = t54.
      t52 = t53.
      DATA(t55) = VALUE string( ).
      DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t58 TYPE string.
      DATA(t59) = t52.
      t58 = t59->base_name( ).
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
      DATA(t67) = t56.
      DATA(t68) = 0.
      DATA(t69) = VALUE string( ).
      DATA(t70) = VALUE string( ).
      DATA(t71) = t56.
      IF t71->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t71->load( ).
      CLEAR t70.
      READ TABLE t71->items INDEX 1 INTO t70.
      DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t72.
      DATA(t73) = |%23|.
      DATA(t74) = |g|.
      CREATE OBJECT t72 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t73 flags = t74 checked = abap_true.
      DATA(t75) = |#|.
      DATA(t76) = strlen( t70 ).
      t69 = t72->replace( p0 = t70 p1 = t75 ).
      t67->put( p0 = t68 p1 = t69 ).
      DATA(t77) = t56.
      DATA(t78) = 0.
      DATA(t79) = VALUE string( ).
      DATA(t80) = VALUE string( ).
      DATA(t81) = t56.
      IF t81->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t81->load( ).
      CLEAR t80.
      READ TABLE t81->items INDEX 1 INTO t80.
      DATA t82 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t82.
      DATA(t83) = |%3e|.
      DATA(t84) = |g|.
      CREATE OBJECT t82 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t83 flags = t84 checked = abap_true.
      DATA(t85) = |>|.
      DATA(t86) = strlen( t80 ).
      t79 = t82->replace( p0 = t80 p1 = t85 ).
      t77->put( p0 = t78 p1 = t79 ).
      DATA(t87) = t56.
      DATA(t88) = 0.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE string( ).
      DATA(t91) = t56.
      IF t91->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t91->load( ).
      CLEAR t90.
      READ TABLE t91->items INDEX 1 INTO t90.
      DATA t92 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t92.
      DATA(t93) = |%3c|.
      DATA(t94) = |g|.
      CREATE OBJECT t92 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t93 flags = t94 checked = abap_true.
      DATA(t95) = |<|.
      DATA(t96) = strlen( t90 ).
      t89 = t92->replace( p0 = t90 p1 = t95 ).
      t87->put( p0 = t88 p1 = t89 ).
      DATA(t97) = t56.
      DATA(t98) = 0.
      DATA(t99) = VALUE string( ).
      DATA(t100) = VALUE string( ).
      DATA(t101) = VALUE string( ).
      DATA(t102) = t56.
      IF t102->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t102->load( ).
      CLEAR t101.
      READ TABLE t102->items INDEX 1 INTO t101.
      DATA(t103) = strlen( t101 ).
      t100 = t101.
      IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t100 TO UPPER CASE.
      ELSE.
        t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t104.
      DATA(t105) = |#|.
      DATA(t106) = |g|.
      CREATE OBJECT t104 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t105 flags = t106 checked = abap_true.
      DATA(t107) = |/|.
      DATA(t108) = strlen( t100 ).
      t99 = t104->replace( p0 = t100 p1 = t107 ).
      t97->put( p0 = t98 p1 = t99 ).
      DATA(t109) = t56.
      DATA(t110) = 0.
      DATA(t111) = VALUE string( ).
      DATA(t112) = VALUE string( ).
      DATA(t113) = t56.
      IF t113->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t113->load( ).
      CLEAR t112.
      READ TABLE t113->items INDEX 1 INTO t112.
      DATA(t114) = |(|.
      DATA(t115) = |/|.
      DATA(t116) = strlen( t112 ).
      t111 = t112.
      REPLACE ALL OCCURRENCES OF t114 IN t111 WITH t115.
      t109->put( p0 = t110 p1 = t111 ).
      DATA(t117) = t56.
      DATA(t118) = 0.
      DATA(t119) = VALUE string( ).
      DATA(t120) = VALUE string( ).
      DATA(t121) = t56.
      IF t121->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t121->load( ).
      CLEAR t120.
      READ TABLE t121->items INDEX 1 INTO t120.
      DATA(t122) = |)|.
      DATA(t123) = |/|.
      DATA(t124) = strlen( t120 ).
      t119 = t120.
      REPLACE ALL OCCURRENCES OF t122 IN t119 WITH t123.
      t117->put( p0 = t118 p1 = t119 ).
      DATA(t125) = VALUE string( ).
      DATA(t126) = t56.
      IF t126->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t126->load( ).
      CLEAR t125.
      READ TABLE t126->items INDEX 1 INTO t125.
      t55 = t125.
      t51 = t55.
      DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t127->has = abap_true.
      t127->value = t51.
      t49 = t127.
    ELSE.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      t49 = t128.
    ENDIF.
    t17 = t18->get_object( i_type_9913 = t19 i_name = t49 ).
    t16 = t17.
    DATA t129 TYPE abap_bool.
    DATA t130 TYPE abap_bool.
    DATA(t131) = t16.
    t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_abap_object ).
    t129 = xsdbool( t130 = abap_false ).
    IF t129 = abap_true.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t132.
      result = t132.
      RETURN.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_icursor_data.
    CLEAR t133.
    DATA t134 TYPE REF TO zcl_lnt_icursor_data.
    CLEAR t134.
    DATA(t135) = me->reg.
    DATA t136 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    DATA t137 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t138) = t1.
    t137 = t138.
    DATA t139 TYPE REF TO zcl_lnt_no_position.
    DATA(t140) = t2.
    t139 = t140.
    t136 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( i_text_document = t137 i_position_a3fd = t139 ).
    CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
    t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t141 ).
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t142 ).
    ENDIF.
    CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
    t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t143) = |textDocument|.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
    ENDIF.
    DATA(t145) = |position|.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
    ENDIF.
    t134 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t135 i_pos = t136 ).
    t133 = t134.
    DATA(t147) = VALUE abap_bool( ).
    DATA t148 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t149) = t133.
    t148 = t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    t150 = t151.
    DATA(t152) = VALUE abap_bool( ).
    DATA(t153) = t148.
    IF t153 IS INITIAL.
      t152 = abap_true.
    ENDIF.
    t147 = t152.
    IF t147 = abap_true.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t154.
      result = t154.
      RETURN.
    ENDIF.
    DATA t155 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t156 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t157 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t158) = t133.
    t157 = t158.
    DATA(t159) = me->reg.
    DATA t160 TYPE REF TO zcl_lnt_abap_object.
    DATA(t161) = t16.
    DATA t162 TYPE REF TO object.
    t162 = t161.
    t160 ?= t162.
    t156 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t157 i_reg_f149 = t159 i_obj_1ed0 = t160 ).
    t155 = t156.
    DATA(t163) = VALUE abap_bool( ).
    DATA t164 TYPE REF TO zcl_lnt_location.
    CLEAR t164.
    DATA t165 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA(t166) = t155.
    t165 = t166.
    DATA t167 TYPE REF TO zcl_lnt_location.
    CLEAR t167.
    DATA(t168) = VALUE abap_bool( ).
    DATA(t169) = t165.
    IF t169 IS INITIAL.
      t168 = abap_true.
    ENDIF.
    IF t168 = abap_true.
      DATA t170 TYPE REF TO zcl_lnt_location.
      CLEAR t170.
      t167 = t170.
    ELSE.
      DATA t171 TYPE REF TO zcl_lnt_location.
      DATA t172 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t173) = t165.
      t172 = t173.
      t171 = t172->implementation.
      t167 = t171.
    ENDIF.
    t164 = t167.
    t163 = xsdbool( t164 IS BOUND ).
    IF t163 = abap_true.
      DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t174.
      DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t176.
      t175 = t176.
      DATA(t177) = t175.
      DATA t178 TYPE REF TO zcl_lnt_location.
      CLEAR t178.
      DATA t179 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t180 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t181) = t155.
      t180 = t181.
      t179 = t180.
      DATA t182 TYPE REF TO zcl_lnt_location.
      CLEAR t182.
      DATA t183 TYPE REF TO zcl_lnt_location.
      CLEAR t183.
      DATA(t184) = VALUE abap_bool( ).
      DATA(t185) = t179.
      IF t185 IS INITIAL.
        t184 = abap_true.
      ENDIF.
      IF t184 = abap_true.
        DATA t186 TYPE REF TO zcl_lnt_location.
        CLEAR t186.
        t183 = t186.
      ELSE.
        DATA t187 TYPE REF TO zcl_lnt_location.
        DATA(t188) = t179.
        t187 = t188->implementation.
        t183 = t187.
      ENDIF.
      t182 = t183.
      t178 = t182.
      t177->load( ).
      APPEND t178 TO t177->items.
      t177->save( ).
      DATA(t189) = t175.
      t174 = t189.
      result = t174.
      RETURN.
    ENDIF.
    DATA(t190) = VALUE abap_bool( ).
    DATA t191 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t191.
    DATA t192 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA(t193) = t155.
    t192 = t193.
    DATA t194 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t194.
    DATA(t195) = VALUE abap_bool( ).
    DATA(t196) = t192.
    IF t196 IS INITIAL.
      t195 = abap_true.
    ENDIF.
    IF t195 = abap_true.
      DATA t197 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t197.
      t194 = t197.
    ELSE.
      DATA t198 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t199 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t200) = t192.
      t199 = t200.
      t198 = t199->definition_id.
      t194 = t198.
    ENDIF.
    t191 = t194.
    t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_method_definition ).
    IF t190 = abap_true.
      DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t202 TYPE REF TO zcl_lnt_method_definition.
      DATA t203 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t204 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t205) = t155.
      t204 = t205.
      t203 = t204->definition_id.
      t202 ?= t203.
      t201 = me->find_method_implementations( i_def = t202 ).
      result = t201.
      RETURN.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t206.
    result = t206.

  ENDMETHOD.

  METHOD find_method_implementations.
    DATA(t1) = i_def.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA(t7) = me->reg.
    t6 = t7->get_objects( ).
    t5 = t6->iterate( ).
    t4 = t5.
    DO.
      DATA(t8) = abap_true.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t10.
      DATA(t11) = t4.
      t10 = t11->next( ).
      t9 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t9.
      t12 = t13->done.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17->value.
      t15 = t16.
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE abap_bool( ).
          DATA(t25) = me->reg.
          DATA(t26) = t14.
          t24 = t25->is_dependency( i_obj_1ed0 = t26 ).
          t23 = t24.
          IF t24 = abap_false.
            DATA(t27) = VALUE abap_bool( ).
            DATA(t28) = VALUE abap_bool( ).
            DATA(t29) = t14.
            t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_abap_object ).
            t27 = xsdbool( t28 = abap_false ).
            t23 = t27.
          ENDIF.
          t19 = t23.
          DATA(t30) = abap_true.
          t20 = t30.
        CATCH cx_root INTO t22.
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = t20.
          t31 = xsdbool( t32 = abap_false ).
          IF t31 = abap_true.
            DATA(t33) = t4.
            t33->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t20.
      t34 = xsdbool( t35 = abap_false ).
      IF t34 = abap_true.
        DATA(t36) = t4.
        t36->close( ).
      ENDIF.
      DATA(t37) = t19.
      t18 = t37.
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = abap_false.
      t41 = t42.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t44.
          DATA t45 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t45.
          DATA t46 TYPE REF TO zif_lnt_spaghetti_scope.
          CLEAR t46.
          DATA t47 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t47.
          DATA t48 TYPE REF TO zcl_lnt_syntax_logic.
          CLEAR t48.
          DATA(t49) = me->reg.
          DATA t50 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t50.
          DATA(t51) = t14.
          DATA t52 TYPE REF TO object.
          CLEAR t52.
          t52 = t51.
          t50 ?= t52.
          t48 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t49 i_object_19cd = t50 ).
          t47 = t48->run( ).
          t46 = t47->zlnt_view_read_sr_b6b1d9e0c93e( ).
          t45 = t46->get_top( ).
          DATA(t53) = t1.
          t44 = me->search_references( i_scope = t45 i_id = t53 ).
          t40 = t44.
          DATA(t54) = abap_true.
          t41 = t54.
        CATCH cx_root INTO t43.
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = t41.
          t55 = xsdbool( t56 = abap_false ).
          IF t55 = abap_true.
            DATA(t57) = t4.
            t57->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = t41.
      t58 = xsdbool( t59 = abap_false ).
      IF t58 = abap_true.
        DATA(t60) = t4.
        t60->close( ).
      ENDIF.
      DATA(t61) = t40.
      t39 = t61.
      t38 = t39.
      DATA(t62) = VALUE f( ).
      DATA(t63) = VALUE f( ).
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = abap_false.
      t64 = t65.
      DATA t66 TYPE REF TO cx_root.
      CLEAR t66.
      TRY.
          DATA(t67) = VALUE f( ).
          DATA(t68) = t38.
          DATA t69 TYPE REF TO zcl_lnt_location.
          CLEAR t69.
          DATA t70 TYPE REF TO object.
          CLEAR t70.
          DATA(t71) = VALUE i( ).
          DO.
            t68->load( ).
            IF t71 >= lines( t68->items ).
              EXIT.
            ENDIF.
            CLEAR t70.
            READ TABLE t68->items INDEX t71 + 1 INTO t70.
            t71 = t71 + 1.
            DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t72.
            CLEAR t69.
            IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t72 ?= t70.
              DATA t73 TYPE REF TO object.
              CLEAR t73.
              t73 = t72->as_ref( ).
              t69 ?= t73.
            ELSE.
              t69 ?= t70.
            ENDIF.
            DATA(t74) = t2.
            DATA(t75) = t69.
            t74->load( ).
            APPEND t75 TO t74->items.
            t74->save( ).
          ENDDO.
          DATA(t76) = VALUE f( ).
          DATA(t77) = VALUE i( ).
          DATA(t78) = t2.
          t78->load( ).
          t77 = lines( t78->items ).
          t76 = t77.
          t67 = t76.
          t63 = t67.
          DATA(t79) = abap_true.
          t64 = t79.
        CATCH cx_root INTO t66.
          DATA(t80) = VALUE abap_bool( ).
          DATA(t81) = t64.
          t80 = xsdbool( t81 = abap_false ).
          IF t80 = abap_true.
            DATA(t82) = t4.
            t82->close( ).
          ENDIF.
          RAISE EXCEPTION t66.
      ENDTRY.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = t64.
      t83 = xsdbool( t84 = abap_false ).
      IF t83 = abap_true.
        DATA(t85) = t4.
        t85->close( ).
      ENDIF.
      DATA(t86) = t63.
      t62 = t86.
    ENDDO.
    DATA(t87) = t2.
    result = t87.

  ENDMETHOD.

  METHOD search_references.
    DATA(t1) = i_scope.
    DATA(t2) = i_id.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t7) = t1.
    t6 = t7->get_data( ).
    t5 = t6->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE string.
      DATA(t18) = t8.
      t17 = t18->reference_type.
      DATA(t19) = |Method Implementation|.
      t16 = xsdbool( t17 = t19 ).
      t15 = t16.
      IF t16 = abap_true.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t22) = t8.
        t21 = t22->resolved.
        t20 = xsdbool( t21 IS BOUND ).
        t15 = t20.
      ENDIF.
      t14 = t15.
      IF t15 = abap_true.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE string.
        DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t28) = t8.
        t27 = t28->resolved.
        t26 = t27.
        t25 = t26.
        DATA t29 TYPE string.
        DATA(t30) = t25.
        t29 = t30->filename.
        t24 = t29.
        DATA t31 TYPE string.
        DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t33) = t2.
        t32 = t33.
        DATA t34 TYPE string.
        DATA(t35) = t32.
        t34 = t35->filename.
        t31 = t34.
        t23 = xsdbool( t24 = t31 ).
        t14 = t23.
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE REF TO zcl_lnt_position.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t41) = t8.
        t40 = t41->resolved.
        t39 = t40.
        t38 = t39.
        DATA t42 TYPE REF TO zcl_lnt_position.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t45) = t38.
        t44 = t45->token.
        t43 = t44.
        DATA t46 TYPE REF TO zcl_lnt_position.
        DATA(t47) = t43.
        t46 = t47->start.
        t42 = t46.
        t37 = t42.
        DATA t48 TYPE REF TO zcl_lnt_position.
        DATA t49 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t50) = t2.
        t49 = t50.
        DATA t51 TYPE REF TO zcl_lnt_position.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = t49.
        t53 = t54->token.
        t52 = t53.
        DATA t55 TYPE REF TO zcl_lnt_position.
        DATA(t56) = t52.
        t55 = t56->start.
        t51 = t55.
        t48 = t51.
        t36 = t37->equals( i_p = t48 ).
        t13 = t36.
      ENDIF.
      IF t13 = abap_true.
        DATA(t57) = t3.
        DATA t58 TYPE REF TO zcl_lnt_location.
        DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t60) = t8.
        t59 = t60->position_7b94.
        t58 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t59 ).
        t57->load( ).
        APPEND t58 TO t57->items.
        t57->save( ).
      ENDIF.
    ENDDO.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t62) = t1.
    t61 = t62->get_children( ).
    DATA t63 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t63.
    DATA t64 TYPE REF TO object.
    CLEAR t64.
    DATA(t65) = VALUE i( ).
    DO.
      t61->load( ).
      IF t65 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t61->items INDEX t65 + 1 INTO t64.
      t65 = t65 + 1.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t63.
      IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t64.
        DATA t67 TYPE REF TO object.
        t67 = t66->as_ref( ).
        t63 ?= t67.
      ELSE.
        t63 ?= t64.
      ENDIF.
      DATA(t68) = VALUE i( ).
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t70) = t63.
      DATA(t71) = t2.
      t69 = me->search_references( i_scope = t70 i_id = t71 ).
      DATA t72 TYPE REF TO zcl_lnt_location.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      DATA(t74) = VALUE i( ).
      DO.
        t69->load( ).
        IF t74 >= lines( t69->items ).
          EXIT.
        ENDIF.
        CLEAR t73.
        READ TABLE t69->items INDEX t74 + 1 INTO t73.
        t74 = t74 + 1.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        CLEAR t72.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t75 ?= t73.
          DATA t76 TYPE REF TO object.
          t76 = t75->as_ref( ).
          t72 ?= t76.
        ELSE.
          t72 ?= t73.
        ENDIF.
        DATA(t77) = t3.
        DATA(t78) = t72.
        t77->load( ).
        APPEND t78 TO t77->items.
        t77->save( ).
      ENDDO.
      DATA t79 TYPE i.
      DATA(t80) = t3.
      t80->load( ).
      t79 = lines( t80->items ).
      t68 = t79.
    ENDDO.
    DATA(t81) = t3.
    result = t81.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1171_a3120a45a39f.
  ENDMETHOD.
ENDCLASS.
