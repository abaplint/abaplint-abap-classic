* TS: src/lsp/definition.ts:8:1 Definition
CLASS zcl_lnt_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_location.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_definition IMPLEMENTATION.
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
      DATA t15 TYPE REF TO zcl_lnt_location.
      CLEAR t15.
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
      DATA t132 TYPE REF TO zcl_lnt_location.
      CLEAR t132.
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
      DATA t154 TYPE REF TO zcl_lnt_location.
      CLEAR t154.
      result = t154.
      RETURN.
    ENDIF.
    DATA t155 TYPE REF TO zcl_lnt_location.
    CLEAR t155.
    DATA t156 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t157 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t158 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t159) = t133.
    t158 = t159.
    DATA(t160) = me->reg.
    DATA t161 TYPE REF TO zcl_lnt_abap_object.
    DATA(t162) = t16.
    DATA t163 TYPE REF TO object.
    t163 = t162.
    t161 ?= t163.
    t157 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t158 i_reg_f149 = t160 i_obj_1ed0 = t161 ).
    t156 = t157.
    DATA t164 TYPE REF TO zcl_lnt_location.
    CLEAR t164.
    DATA(t165) = VALUE abap_bool( ).
    DATA(t166) = t156.
    IF t166 IS INITIAL.
      t165 = abap_true.
    ENDIF.
    IF t165 = abap_true.
      DATA t167 TYPE REF TO zcl_lnt_location.
      CLEAR t167.
      t164 = t167.
    ELSE.
      DATA t168 TYPE REF TO zcl_lnt_location.
      DATA t169 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t170) = t156.
      t169 = t170.
      t168 = t169->definition_ef89.
      t164 = t168.
    ENDIF.
    t155 = t164.
    result = t155.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1165_2ea52dcec9d6.
  ENDMETHOD.
ENDCLASS.
