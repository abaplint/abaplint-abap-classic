* TS: src/lsp/hover.ts:11:1 Hover
CLASS zcl_lnt_hover DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_pos TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_d0b60cb0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_hover IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t7) = t1.
    t6 = t7->zlnt_view_read_sr_ecd019429cea( ).
    t5 = t6->zlnt_view_read_no_0041136eb871( ).
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t2.
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
      DATA t15 TYPE REF TO zcl_lnt_shape_d0b60cb0.
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
    DATA(t22) = t2.
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
      DATA(t54) = t2.
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
      DATA t132 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      CLEAR t132.
      result = t132.
      RETURN.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_icursor_data.
    DATA t134 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t135) = me->reg.
    DATA(t136) = t1.
    t134 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t135 i_pos = t136 ).
    t133 = t134.
    DATA(t137) = VALUE abap_bool( ).
    DATA t138 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t139) = t133.
    t138 = t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    t140 = t141.
    DATA(t142) = VALUE abap_bool( ).
    DATA(t143) = t138.
    IF t143 IS INITIAL.
      t142 = abap_true.
    ENDIF.
    t137 = t142.
    IF t137 = abap_true.
      DATA t144 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      CLEAR t144.
      result = t144.
      RETURN.
    ELSE.
      DATA(t145) = VALUE abap_bool( ).
      DATA(t146) = VALUE abap_bool( ).
      DATA t147 TYPE abap_bool.
      DATA t148 TYPE abap_bool.
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      DATA t150 TYPE REF TO zcl_lnt_icursor_data.
      DATA(t151) = t133.
      t150 = t151.
      t149 = t150->token.
      t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_lx_string_template ).
      t147 = t148.
      IF t148 = abap_false.
        DATA t152 TYPE abap_bool.
        DATA t153 TYPE REF TO zcl_lnt_abstract_token.
        DATA t154 TYPE REF TO zcl_lnt_icursor_data.
        DATA(t155) = t133.
        t154 = t155.
        t153 = t154->token.
        t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_string_template_begin ).
        t147 = t152.
      ENDIF.
      t146 = t147.
      IF t147 = abap_false.
        DATA t156 TYPE abap_bool.
        DATA t157 TYPE REF TO zcl_lnt_abstract_token.
        DATA t158 TYPE REF TO zcl_lnt_icursor_data.
        DATA(t159) = t133.
        t158 = t159.
        t157 = t158->token.
        t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_string_template_end ).
        t146 = t156.
      ENDIF.
      t145 = t146.
      IF t146 = abap_false.
        DATA t160 TYPE abap_bool.
        DATA t161 TYPE REF TO zcl_lnt_abstract_token.
        DATA t162 TYPE REF TO zcl_lnt_icursor_data.
        DATA(t163) = t133.
        t162 = t163.
        t161 = t162->token.
        t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_string_template_middle ).
        t145 = t160.
      ENDIF.
      IF t145 = abap_true.
        DATA t164 TYPE REF TO zcl_lnt_shape_d0b60cb0.
        CLEAR t164.
        DATA(t165) = abap_true.
        IF t165 = abap_true.
          DATA t166 TYPE REF TO zcl_lnt_shape_d0b60cb0.
          DATA t167 TYPE string.
          DATA(t168) = |markdown|.
          t167 = t168.
          DATA t169 TYPE string.
          DATA(t170) = |String Template|.
          t169 = t170.
          t166 = NEW zcl_lnt_shape_d0b60cb0( i_kind = t167 i_value = t169 ).
          CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
          t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t171 ).
          ENDIF.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t172.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t172 ).
          ENDIF.
          CREATE OBJECT t166->zlnt_json_ownkeys_70e5fd461788.
          t166->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t173) = |kind|.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
          ENDIF.
          DATA(t175) = |value|.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
          ENDIF.
          t164 = t166.
        ELSE.
          DATA t177 TYPE REF TO zcl_lnt_shape_d0b60cb0.
          CLEAR t177.
          t164 = t177.
        ENDIF.
        result = t164.
        RETURN.
      ELSE.
        DATA t178 TYPE abap_bool.
        DATA t179 TYPE REF TO zif_lnt_statement.
        DATA t180 TYPE REF TO zcl_lnt_statement_node.
        DATA t181 TYPE REF TO zcl_lnt_icursor_data.
        DATA(t182) = t133.
        t181 = t182.
        t180 = t181->snode.
        t179 = t180->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t178 = xsdbool( t179 IS BOUND AND t179 IS INSTANCE OF zcl_lnt_macro_call ).
        IF t178 = abap_true.
          DATA t183 TYPE REF TO zcl_lnt_shape_d0b60cb0.
          CLEAR t183.
          DATA(t184) = abap_true.
          IF t184 = abap_true.
            DATA t185 TYPE REF TO zcl_lnt_shape_d0b60cb0.
            DATA t186 TYPE string.
            DATA(t187) = |markdown|.
            t186 = t187.
            DATA t188 TYPE string.
            DATA(t189) = |Macro Call|.
            t188 = t189.
            t185 = NEW zcl_lnt_shape_d0b60cb0( i_kind = t186 i_value = t188 ).
            CREATE OBJECT t185->zlnt_view_ownkeys_b0e8086400eb.
            t185->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t190.
            IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t190 ).
            ENDIF.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t191 ).
            ENDIF.
            CREATE OBJECT t185->zlnt_json_ownkeys_70e5fd461788.
            t185->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t192) = |kind|.
            DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t193.
            IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
            ENDIF.
            DATA(t194) = |value|.
            DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t195.
            IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
            ENDIF.
            t183 = t185.
          ELSE.
            DATA t196 TYPE REF TO zcl_lnt_shape_d0b60cb0.
            CLEAR t196.
            t183 = t196.
          ENDIF.
          result = t183.
          RETURN.
        ELSE.
          DATA t197 TYPE abap_bool.
          DATA t198 TYPE abap_bool.
          DATA t199 TYPE REF TO zif_lnt_statement.
          DATA t200 TYPE REF TO zcl_lnt_statement_node.
          DATA t201 TYPE REF TO zcl_lnt_icursor_data.
          DATA(t202) = t133.
          t201 = t202.
          t200 = t201->snode.
          t199 = t200->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t198 = xsdbool( t199 IS BOUND AND t199 IS INSTANCE OF zcl_lnt_st_define ).
          t197 = t198.
          IF t198 = abap_true.
            DATA t203 TYPE abap_bool.
            DATA t204 TYPE i.
            DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t206 TYPE REF TO zcl_lnt_icursor_data.
            DATA(t207) = t133.
            t206 = t207.
            t205 = t206->stack.
            t205->load( ).
            t204 = lines( t205->items ).
            DATA(t208) = 2.
            t203 = xsdbool( t204 = t208 ).
            t197 = t203.
          ENDIF.
          IF t197 = abap_true.
            DATA t209 TYPE REF TO zcl_lnt_shape_d0b60cb0.
            CLEAR t209.
            DATA(t210) = abap_true.
            IF t210 = abap_true.
              DATA t211 TYPE REF TO zcl_lnt_shape_d0b60cb0.
              DATA t212 TYPE string.
              DATA(t213) = |markdown|.
              t212 = t213.
              DATA t214 TYPE string.
              DATA(t215) = |Macro Name|.
              t214 = t215.
              t211 = NEW zcl_lnt_shape_d0b60cb0( i_kind = t212 i_value = t214 ).
              CREATE OBJECT t211->zlnt_view_ownkeys_b0e8086400eb.
              t211->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t216.
              IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t216 ).
              ENDIF.
              DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t217.
              IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t217 ).
              ENDIF.
              CREATE OBJECT t211->zlnt_json_ownkeys_70e5fd461788.
              t211->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t218) = |kind|.
              DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t219.
              IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
              ENDIF.
              DATA(t220) = |value|.
              DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t221.
              IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
              ENDIF.
              t209 = t211.
            ELSE.
              DATA t222 TYPE REF TO zcl_lnt_shape_d0b60cb0.
              CLEAR t222.
              t209 = t222.
            ENDIF.
            result = t209.
            RETURN.
          ELSE.
            DATA t223 TYPE abap_bool.
            DATA t224 TYPE REF TO zcl_lnt_abstract_token.
            DATA t225 TYPE REF TO zcl_lnt_icursor_data.
            DATA(t226) = t133.
            t225 = t226.
            t224 = t225->token.
            t223 = xsdbool( t224 IS BOUND AND t224 IS INSTANCE OF zcl_lnt_lx_comment ).
            IF t223 = abap_true.
              DATA t227 TYPE string.
              DATA(t228) = |Comment|.
              t227 = t228.
              DATA(t229) = VALUE abap_bool( ).
              DATA t230 TYPE string.
              DATA t231 TYPE REF TO zcl_lnt_abstract_token.
              DATA t232 TYPE REF TO zcl_lnt_lx_comment.
              DATA t233 TYPE REF TO zcl_lnt_abstract_token.
              DATA t234 TYPE REF TO zcl_lnt_icursor_data.
              DATA(t235) = t133.
              t234 = t235.
              t233 = t234->token.
              t232 ?= t233.
              t231 = t232.
              DATA t236 TYPE string.
              DATA(t237) = t231.
              t236 = t237->str.
              t230 = t236.
              DATA(t238) = |"!|.
              DATA(t239) = strlen( t230 ).
              DATA t240 TYPE i.
              DATA(t241) = VALUE i( ).
              DATA(t242) = VALUE string( ).
              t240 = strlen( t238 ).
              IF t240 = 0.
                t229 = abap_true.
              ELSEIF t240 <= t239.
                t241 = 0.
                t242 = t230+t241(t240).
                IF t242 = t238.
                  t229 = abap_true.
                ENDIF.
              ENDIF.
              IF t229 = abap_true.
                DATA(t243) = |ABAP Doc Comment|.
                t227 = t243.
              ENDIF.
              DATA t244 TYPE REF TO zcl_lnt_shape_d0b60cb0.
              CLEAR t244.
              DATA(t245) = abap_true.
              IF t245 = abap_true.
                DATA t246 TYPE REF TO zcl_lnt_shape_d0b60cb0.
                DATA t247 TYPE string.
                DATA(t248) = |markdown|.
                t247 = t248.
                DATA t249 TYPE string.
                DATA(t250) = t227.
                t249 = t250.
                t246 = NEW zcl_lnt_shape_d0b60cb0( i_kind = t247 i_value = t249 ).
                CREATE OBJECT t246->zlnt_view_ownkeys_b0e8086400eb.
                t246->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t251.
                IF t246->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t251 ).
                ENDIF.
                DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t252.
                IF t246->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t252 ).
                ENDIF.
                CREATE OBJECT t246->zlnt_json_ownkeys_70e5fd461788.
                t246->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t253) = |kind|.
                DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t254.
                IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
                ENDIF.
                DATA(t255) = |value|.
                DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t256.
                IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
                ENDIF.
                t244 = t246.
              ELSE.
                DATA t257 TYPE REF TO zcl_lnt_shape_d0b60cb0.
                CLEAR t257.
                t244 = t257.
              ENDIF.
              result = t244.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t258 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t259 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t260 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t261) = t133.
    t260 = t261.
    DATA(t262) = me->reg.
    DATA t263 TYPE REF TO zcl_lnt_abap_object.
    DATA(t264) = t16.
    DATA t265 TYPE REF TO object.
    t265 = t264.
    t263 ?= t265.
    t259 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t260 i_reg_f149 = t262 i_obj_1ed0 = t263 ).
    t258 = t259.
    DATA(t266) = VALUE abap_bool( ).
    DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t267.
    DATA t268 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA(t269) = t258.
    t268 = t269.
    DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t270.
    DATA(t271) = VALUE abap_bool( ).
    DATA(t272) = t268.
    IF t272 IS INITIAL.
      t271 = abap_true.
    ENDIF.
    IF t271 = abap_true.
      DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t273.
      t270 = t273.
    ELSE.
      DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t275 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t276) = t268.
      t275 = t276.
      t274 = t275->hover.
      t270 = t274.
    ENDIF.
    t267 = t270.
    IF t267 IS BOUND.
      IF t267->has = abap_true.
        t266 = xsdbool( strlen( t267->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t266 = abap_true.
      DATA t277 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      CLEAR t277.
      DATA(t278) = abap_true.
      IF t278 = abap_true.
        DATA t279 TYPE REF TO zcl_lnt_shape_d0b60cb0.
        DATA t280 TYPE string.
        DATA(t281) = |markdown|.
        t280 = t281.
        DATA t282 TYPE string.
        DATA t283 TYPE string.
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t285 TYPE REF TO zcl_lnt_lsp_lookup_result.
        DATA(t286) = t258.
        t285 = t286.
        t284 = t285->hover.
        t283 = t284->value.
        t282 = t283.
        t279 = NEW zcl_lnt_shape_d0b60cb0( i_kind = t280 i_value = t282 ).
        CREATE OBJECT t279->zlnt_view_ownkeys_b0e8086400eb.
        t279->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t287 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t288 ).
        ENDIF.
        CREATE OBJECT t279->zlnt_json_ownkeys_70e5fd461788.
        t279->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t289) = |kind|.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
        ENDIF.
        DATA(t291) = |value|.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t292.
        IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t291 p1 = t292 ).
        ENDIF.
        t277 = t279.
      ELSE.
        DATA t293 TYPE REF TO zcl_lnt_shape_d0b60cb0.
        CLEAR t293.
        t277 = t293.
      ENDIF.
      result = t277.
      RETURN.
    ENDIF.
    DATA t294 TYPE abap_bool.
    DATA t295 TYPE REF TO zcl_lnt_abstract_token.
    DATA t296 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t297) = t133.
    t296 = t297.
    t295 = t296->token.
    t294 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_string_token ).
    IF t294 = abap_true.
      DATA t298 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      CLEAR t298.
      DATA(t299) = abap_true.
      IF t299 = abap_true.
        DATA t300 TYPE REF TO zcl_lnt_shape_d0b60cb0.
        DATA t301 TYPE string.
        DATA(t302) = |markdown|.
        t301 = t302.
        DATA t303 TYPE string.
        DATA(t304) = |String|.
        t303 = t304.
        t300 = NEW zcl_lnt_shape_d0b60cb0( i_kind = t301 i_value = t303 ).
        CREATE OBJECT t300->zlnt_view_ownkeys_b0e8086400eb.
        t300->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t305.
        IF t300->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t305 ).
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        IF t300->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t306 ).
        ENDIF.
        CREATE OBJECT t300->zlnt_json_ownkeys_70e5fd461788.
        t300->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t307) = |kind|.
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        IF t300->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t300->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
        ENDIF.
        DATA(t309) = |value|.
        DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t310.
        IF t300->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t300->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
        ENDIF.
        t298 = t300.
      ELSE.
        DATA t311 TYPE REF TO zcl_lnt_shape_d0b60cb0.
        CLEAR t311.
        t298 = t311.
      ENDIF.
      result = t298.
      RETURN.
    ENDIF.
    DATA t312 TYPE REF TO zcl_lnt_shape_d0b60cb0.
    CLEAR t312.
    result = t312.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1170_f750f8594593.
  ENDMETHOD.
ENDCLASS.
