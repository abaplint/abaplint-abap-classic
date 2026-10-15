* TS: src/lsp/dump_scope.ts:4:1 DumpScope
CLASS zcl_lnt_dump_scope DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS dump IMPORTING i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope RETURNING VALUE(result) TYPE string.
    CLASS-METHODS traverse_spaghetti IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_indent TYPE f RETURNING VALUE(result) TYPE string.
    CLASS-METHODS dump_node IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_indent TYPE f RETURNING VALUE(result) TYPE string.
    CLASS-METHODS escape IMPORTING i_str TYPE string RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dump_scope IMPLEMENTATION.
  METHOD dump.
    DATA(t1) = i_spaghetti.
    DATA t2 TYPE string.
    DATA(t3) = |<hr>Spaghetti Scope:<br><br>\n|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = t2.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t8) = t1.
    t7 = t8->get_top( ).
    DATA(t9) = CONV f( 0 ).
    t6 = zcl_lnt_dump_scope=>traverse_spaghetti( i_node = t7 i_indent = t9 ).
    DATA(t10) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    t2 = t4.
    DATA(t11) = t2.
    result = t11.

  ENDMETHOD.

  METHOD traverse_spaghetti.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_indent.
    DATA t3 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5->get_identifier( ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_irange.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8->calc_coverage( ).
    t6 = t7.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = |&nbsp|.
    DATA(t12) = VALUE f( ).
    DATA(t13) = t2.
    DATA(t14) = CONV f( 2 ).
    t12 = t13 * t14.
    DATA(t15) = strlen( t11 ).
    IF t12 < 0 OR t12 > 2147483647 OR t12 <> trunc( t12 ).
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t16) = 0.
    CLEAR t10.
    WHILE t16 < t12.
      t10 = |{ t10 }{ t11 }|.
      t16 = t16 + 1.
    ENDWHILE.
    t9 = t10.
    DATA(t17) = VALUE string( ).
    DATA(t18) = VALUE string( ).
    DATA(t19) = VALUE string( ).
    DATA(t20) = VALUE string( ).
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA(t23) = t9.
    DATA(t24) = |<u>|.
    DATA(t25) = strlen( t23 ).
    t22 = |{ t23 }{ t24 }|.
    DATA(t26) = VALUE string( ).
    DATA(t27) = t3.
    t26 = t27->stype.
    DATA(t28) = strlen( t22 ).
    t21 = |{ t22 }{ t26 }|.
    DATA(t29) = |, <tt>|.
    DATA(t30) = strlen( t21 ).
    t20 = |{ t21 }{ t29 }|.
    DATA(t31) = VALUE string( ).
    DATA(t32) = t3.
    t31 = t32->sname.
    DATA(t33) = strlen( t20 ).
    t19 = |{ t20 }{ t31 }|.
    DATA(t34) = |</tt>|.
    DATA(t35) = strlen( t19 ).
    t18 = |{ t19 }{ t34 }|.
    t17 = t18.
    DATA(t36) = VALUE string( ).
    DATA(t37) = t17.
    DATA(t38) = VALUE string( ).
    DATA(t39) = VALUE string( ).
    DATA(t40) = VALUE string( ).
    DATA(t41) = VALUE string( ).
    DATA(t42) = |, (|.
    DATA(t43) = VALUE string( ).
    DATA(t44) = VALUE f( ).
    DATA t45 TYPE REF TO zcl_lnt_position.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_position.
    CLEAR t46.
    DATA(t47) = t6.
    t46 = t47->start.
    t45 = t46.
    DATA(t48) = VALUE f( ).
    DATA(t49) = t45.
    t48 = t49->row.
    t44 = t48.
    IF t44 <> trunc( t44 ) OR t44 > range_safe_integer OR t44 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t50) = CONV int8( t44 ).
    t43 = |{ t50 }|.
    DATA(t51) = strlen( t42 ).
    t41 = |{ t42 }{ t43 }|.
    DATA(t52) = |, |.
    DATA(t53) = strlen( t41 ).
    t40 = |{ t41 }{ t52 }|.
    DATA(t54) = VALUE string( ).
    DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t55.
    DATA t56 TYPE REF TO zcl_lnt_position.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_position.
    CLEAR t57.
    DATA(t58) = t6.
    t57 = t58->start.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t59.
    DATA(t60) = t56.
    t59 = t60->col.
    t55 = t59.
    t54 = zlnt_runtime_numb_290eb04a9758=>text( t55 ).
    DATA(t61) = strlen( t40 ).
    t39 = |{ t40 }{ t54 }|.
    DATA(t62) = |)|.
    DATA(t63) = strlen( t39 ).
    t38 = |{ t39 }{ t62 }|.
    DATA(t64) = strlen( t37 ).
    t36 = |{ t37 }{ t38 }|.
    t17 = t36.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE f( ).
    DATA t68 TYPE REF TO zcl_lnt_position.
    CLEAR t68.
    DATA t69 TYPE REF TO zcl_lnt_position.
    CLEAR t69.
    DATA(t70) = t6.
    t69 = t70->end.
    t68 = t69.
    DATA(t71) = VALUE f( ).
    DATA(t72) = t68.
    t71 = t72->row.
    t67 = t71.
    DATA(t73) = CONV f( '9007199254740991' ).
    t66 = xsdbool( t67 = t73 ).
    t65 = t66.
    IF t66 = abap_true.
      DATA(t74) = VALUE abap_bool( ).
      DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_position.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_position.
      CLEAR t77.
      DATA(t78) = t6.
      t77 = t78->end.
      t76 = t77.
      DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t79.
      DATA(t80) = t76.
      t79 = t80->col.
      t75 = t79.
      DATA(t81) = CONV f( '9007199254740991' ).
      DATA(t82) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t82->has = abap_true.
      t82->value = t81.
      t74 = zlnt_runtime_numb_290eb04a9758=>compare( left = t75 right = t82 op = `==` ).
      t65 = t74.
    ENDIF.
    IF t65 = abap_true.
      DATA(t83) = VALUE string( ).
      DATA(t84) = t17.
      DATA(t85) = |, (max, max)|.
      DATA(t86) = strlen( t84 ).
      t83 = |{ t84 }{ t85 }|.
      t17 = t83.
    ELSE.
      DATA(t87) = VALUE string( ).
      DATA(t88) = t17.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      DATA(t92) = VALUE string( ).
      DATA(t93) = |, (|.
      DATA(t94) = VALUE string( ).
      DATA(t95) = VALUE f( ).
      DATA t96 TYPE REF TO zcl_lnt_position.
      CLEAR t96.
      DATA t97 TYPE REF TO zcl_lnt_position.
      CLEAR t97.
      DATA(t98) = t6.
      t97 = t98->end.
      t96 = t97.
      DATA(t99) = VALUE f( ).
      DATA(t100) = t96.
      t99 = t100->row.
      t95 = t99.
      IF t95 <> trunc( t95 ) OR t95 > range_safe_integer OR t95 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t101) = CONV int8( t95 ).
      t94 = |{ t101 }|.
      DATA(t102) = strlen( t93 ).
      t92 = |{ t93 }{ t94 }|.
      DATA(t103) = |, |.
      DATA(t104) = strlen( t92 ).
      t91 = |{ t92 }{ t103 }|.
      DATA(t105) = VALUE string( ).
      DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t106.
      DATA t107 TYPE REF TO zcl_lnt_position.
      CLEAR t107.
      DATA t108 TYPE REF TO zcl_lnt_position.
      CLEAR t108.
      DATA(t109) = t6.
      t108 = t109->end.
      t107 = t108.
      DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t110.
      DATA(t111) = t107.
      t110 = t111->col.
      t106 = t110.
      t105 = zlnt_runtime_numb_290eb04a9758=>text( t106 ).
      DATA(t112) = strlen( t91 ).
      t90 = |{ t91 }{ t105 }|.
      DATA(t113) = |)|.
      DATA(t114) = strlen( t90 ).
      t89 = |{ t90 }{ t113 }|.
      DATA(t115) = strlen( t88 ).
      t87 = |{ t88 }{ t89 }|.
      t17 = t87.
    ENDIF.
    DATA(t116) = VALUE string( ).
    DATA(t117) = t17.
    DATA(t118) = |</u><br>|.
    DATA(t119) = strlen( t117 ).
    t116 = |{ t117 }{ t118 }|.
    t17 = t116.
    DATA(t120) = VALUE abap_bool( ).
    DATA(t121) = VALUE string( ).
    DATA t122 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t122.
    DATA(t123) = t1.
    t122 = t123->get_identifier( ).
    t121 = t122->stype.
    DATA(t124) = |_builtin|.
    t120 = xsdbool( t121 = t124 ).
    IF t120 = abap_true.
      DATA(t125) = VALUE string( ).
      DATA(t126) = t17.
      DATA(t127) = VALUE string( ).
      DATA(t128) = VALUE string( ).
      DATA(t129) = t9.
      DATA(t130) = VALUE string( ).
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      DATA t132 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t132.
      DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      CLEAR t134.
      DATA t135 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t135.
      DATA(t136) = t1.
      t135 = t136->get_data( ).
      t134 = t135->types.
      DATA(t137) = |length|.
      t133 = t134->get( p0 = t137 ).
      t132 = t133.
      CLEAR t131.
      IF t132 IS BOUND.
        DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t138.
        DATA t139 TYPE REF TO object.
        CLEAR t139.
        CLEAR t138.
        t139 = t132.
        TRY.
            t131 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS NOT BOUND.
          TRY.
              t138 ?= t132.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t138 IS BOUND.
            t131 = t138->source( ).
          ENDIF.
          IF t131 IS NOT BOUND.
            CREATE OBJECT t131.
            t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t131->oval = t132.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t131 IS BOUND.
        t130 = t131->to_string( ).
      ELSE.
        t130 = `undefined`.
      ENDIF.
      DATA(t140) = strlen( t129 ).
      t128 = |{ t129 }{ t130 }|.
      DATA(t141) = | type definitions<br>|.
      DATA(t142) = strlen( t128 ).
      t127 = |{ t128 }{ t141 }|.
      DATA(t143) = strlen( t126 ).
      t125 = |{ t126 }{ t127 }|.
      t17 = t125.
      DATA(t144) = VALUE string( ).
      DATA(t145) = t17.
      DATA(t146) = VALUE string( ).
      DATA(t147) = VALUE string( ).
      DATA(t148) = t9.
      DATA(t149) = VALUE string( ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t152.
      DATA t153 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      CLEAR t153.
      DATA t154 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t154.
      DATA(t155) = t1.
      t154 = t155->get_data( ).
      t153 = t154->vars.
      DATA(t156) = |length|.
      t152 = t153->get( p0 = t156 ).
      t151 = t152.
      CLEAR t150.
      IF t151 IS BOUND.
        DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t157.
        DATA t158 TYPE REF TO object.
        CLEAR t158.
        CLEAR t157.
        t158 = t151.
        TRY.
            t150 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS NOT BOUND.
          TRY.
              t157 ?= t151.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t157 IS BOUND.
            t150 = t157->source( ).
          ENDIF.
          IF t150 IS NOT BOUND.
            CREATE OBJECT t150.
            t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t150->oval = t151.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t150 IS BOUND.
        t149 = t150->to_string( ).
      ELSE.
        t149 = `undefined`.
      ENDIF.
      DATA(t159) = strlen( t148 ).
      t147 = |{ t148 }{ t149 }|.
      DATA(t160) = | data definitions<br>|.
      DATA(t161) = strlen( t147 ).
      t146 = |{ t147 }{ t160 }|.
      DATA(t162) = strlen( t145 ).
      t144 = |{ t145 }{ t146 }|.
      t17 = t144.
    ELSE.
      DATA(t163) = VALUE string( ).
      DATA(t164) = t17.
      DATA(t165) = VALUE string( ).
      DATA(t166) = t1.
      DATA(t167) = t2.
      t165 = zcl_lnt_dump_scope=>dump_node( i_node = t166 i_indent = t167 ).
      DATA(t168) = strlen( t164 ).
      t163 = |{ t164 }{ t165 }|.
      t17 = t163.
    ENDIF.
    DATA(t169) = VALUE string( ).
    DATA(t170) = t17.
    DATA(t171) = |<br>|.
    DATA(t172) = strlen( t170 ).
    t169 = |{ t170 }{ t171 }|.
    t17 = t169.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t173.
    DATA(t174) = t1.
    t173 = t174->get_children( ).
    DATA t175 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t175.
    DATA t176 TYPE REF TO object.
    CLEAR t176.
    DATA(t177) = VALUE i( ).
    DO.
      t173->load( ).
      IF t177 >= lines( t173->items ).
        EXIT.
      ENDIF.
      CLEAR t176.
      READ TABLE t173->items INDEX t177 + 1 INTO t176.
      t177 = t177 + 1.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      CLEAR t175.
      IF t176 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t178 ?= t176.
        DATA t179 TYPE REF TO object.
        CLEAR t179.
        t179 = t178->as_ref( ).
        t175 ?= t179.
      ELSE.
        t175 ?= t176.
      ENDIF.
      DATA(t180) = VALUE string( ).
      DATA(t181) = t17.
      DATA(t182) = VALUE string( ).
      DATA(t183) = t175.
      DATA(t184) = VALUE f( ).
      DATA(t185) = t2.
      DATA(t186) = CONV f( 1 ).
      t184 = t185 + t186.
      t182 = zcl_lnt_dump_scope=>traverse_spaghetti( i_node = t183 i_indent = t184 ).
      DATA(t187) = strlen( t181 ).
      t180 = |{ t181 }{ t182 }|.
      t17 = t180.
    ENDDO.
    DATA(t188) = t17.
    result = t188.

  ENDMETHOD.

  METHOD dump_node.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_indent.
    DATA(t3) = VALUE string( ).
    DATA(t4) = ||.
    t3 = t4.
    DATA(t5) = VALUE string( ).
    DATA(t6) = VALUE string( ).
    DATA(t7) = |&nbsp;|.
    DATA(t8) = VALUE f( ).
    DATA(t9) = t2.
    DATA(t10) = CONV f( 2 ).
    t8 = t9 * t10.
    DATA(t11) = strlen( t7 ).
    IF t8 < 0 OR t8 > 2147483647 OR t8 <> trunc( t8 ).
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t12) = 0.
    CLEAR t6.
    WHILE t12 < t8.
      t6 = |{ t6 }{ t7 }|.
      t12 = t12 + 1.
    ENDWHILE.
    t5 = t6.
    DATA t13 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t15.
    DATA(t16) = t1.
    t15 = t16->get_data( ).
    t14 = t15->types.
    t13 = t14.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE i( ).
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t19.
    DATA(t20) = t13.
    t19 = t20->keys( ).
    t19->load( ).
    t18 = lines( t19->items ).
    DATA(t21) = 0.
    t17 = xsdbool( t18 = t21 ).
    IF t17 = abap_true.
      DATA(t22) = VALUE string( ).
      DATA(t23) = VALUE string( ).
      DATA(t24) = t3.
      DATA(t25) = t5.
      DATA(t26) = strlen( t24 ).
      t23 = |{ t24 }{ t25 }|.
      DATA(t27) = |0 type definitions<br>|.
      DATA(t28) = strlen( t23 ).
      t22 = |{ t23 }{ t27 }|.
      t3 = t22.
    ELSE.
      DATA(t29) = VALUE string( ).
      DATA(t30) = VALUE string( ).
      DATA(t31) = t3.
      DATA(t32) = t5.
      DATA(t33) = strlen( t31 ).
      t30 = |{ t31 }{ t32 }|.
      DATA(t34) = |Types:<br>|.
      DATA(t35) = strlen( t30 ).
      t29 = |{ t30 }{ t34 }|.
      t3 = t29.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t36.
    DATA(t37) = t13.
    t36 = t37->keys( ).
    DATA(t38) = VALUE string( ).
    t36->dense( ).
    DATA(t39) = VALUE i( ).
    DO.
      t36->load( ).
      IF t39 >= lines( t36->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t36->items INDEX t39 + 1 INTO t38.
      IF t36->has( t39 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t41.
      DATA(t42) = t13.
      DATA(t43) = t38.
      t41 = t42->get( p0 = t43 ).
      t40 = t41.
      DATA(t44) = VALUE string( ).
      DATA(t45) = VALUE string( ).
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      DATA(t48) = t3.
      DATA(t49) = t5.
      DATA(t50) = strlen( t48 ).
      t47 = |{ t48 }{ t49 }|.
      DATA(t51) = |<tt>|.
      DATA(t52) = strlen( t47 ).
      t46 = |{ t47 }{ t51 }|.
      DATA(t53) = VALUE string( ).
      DATA(t54) = t38.
      t53 = zcl_lnt_dump_scope=>escape( i_str = t54 ).
      DATA(t55) = strlen( t46 ).
      t45 = |{ t46 }{ t53 }|.
      DATA(t56) = |</tt>|.
      DATA(t57) = strlen( t45 ).
      t44 = |{ t45 }{ t56 }|.
      t3 = t44.
      DATA t58 TYPE REF TO zcl_lnt_position.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_position.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t61.
      DATA(t62) = t40.
      t61 = t62.
      t60 = t61.
      DATA t63 TYPE REF TO zcl_lnt_position.
      CLEAR t63.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t65.
      DATA(t66) = t60.
      t65 = t66->token.
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_position.
      CLEAR t67.
      DATA(t68) = t64.
      t67 = t68->start.
      t63 = t67.
      t59 = t63.
      t58 = t59.
      DATA(t69) = VALUE string( ).
      DATA(t70) = VALUE string( ).
      DATA(t71) = VALUE string( ).
      DATA(t72) = VALUE string( ).
      DATA(t73) = VALUE string( ).
      DATA(t74) = t3.
      DATA(t75) = |(|.
      DATA(t76) = strlen( t74 ).
      t73 = |{ t74 }{ t75 }|.
      DATA(t77) = VALUE string( ).
      DATA(t78) = VALUE f( ).
      DATA t79 TYPE REF TO zcl_lnt_position.
      CLEAR t79.
      DATA(t80) = t58.
      t79 = t80.
      DATA(t81) = VALUE f( ).
      DATA(t82) = t79.
      t81 = t82->row.
      t78 = t81.
      IF t78 <> trunc( t78 ) OR t78 > range_safe_integer OR t78 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t83) = CONV int8( t78 ).
      t77 = |{ t83 }|.
      DATA(t84) = strlen( t73 ).
      t72 = |{ t73 }{ t77 }|.
      DATA(t85) = |, |.
      DATA(t86) = strlen( t72 ).
      t71 = |{ t72 }{ t85 }|.
      DATA(t87) = VALUE string( ).
      DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t88.
      DATA t89 TYPE REF TO zcl_lnt_position.
      CLEAR t89.
      DATA(t90) = t58.
      t89 = t90.
      DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t91.
      DATA(t92) = t89.
      t91 = t92->col.
      t88 = t91.
      t87 = zlnt_runtime_numb_290eb04a9758=>text( t88 ).
      DATA(t93) = strlen( t71 ).
      t70 = |{ t71 }{ t87 }|.
      DATA(t94) = |) |.
      DATA(t95) = strlen( t70 ).
      t69 = |{ t70 }{ t94 }|.
      t3 = t69.
      DATA(t96) = VALUE string( ).
      DATA(t97) = t3.
      DATA(t98) = VALUE string( ).
      DATA t99 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t99.
      DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t101.
      DATA(t102) = t40.
      t101 = t102.
      t100 = t101.
      DATA t103 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t103.
      DATA(t104) = t100.
      t103 = t104->type_cba0.
      t99 = t103.
      DATA(t105) = CONV f( 0 ).
      t98 = t99->to_text( i_level = t105 ).
      DATA(t106) = strlen( t97 ).
      t96 = |{ t97 }{ t98 }|.
      t3 = t96.
      DATA(t107) = VALUE string( ).
      DATA(t108) = t3.
      DATA(t109) = |<br>|.
      DATA(t110) = strlen( t108 ).
      t107 = |{ t108 }{ t109 }|.
      t3 = t107.
    ENDDO.
    DATA t111 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t112.
    DATA t113 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t113.
    DATA(t114) = t1.
    t113 = t114->get_data( ).
    t112 = t113->vars.
    t111 = t112.
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = VALUE i( ).
    DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t117.
    DATA(t118) = t111.
    t117 = t118->keys( ).
    t117->load( ).
    t116 = lines( t117->items ).
    DATA(t119) = 0.
    t115 = xsdbool( t116 = t119 ).
    IF t115 = abap_true.
      DATA(t120) = VALUE string( ).
      DATA(t121) = VALUE string( ).
      DATA(t122) = t3.
      DATA(t123) = t5.
      DATA(t124) = strlen( t122 ).
      t121 = |{ t122 }{ t123 }|.
      DATA(t125) = |0 data definitions<br>|.
      DATA(t126) = strlen( t121 ).
      t120 = |{ t121 }{ t125 }|.
      t3 = t120.
    ELSE.
      DATA(t127) = VALUE string( ).
      DATA(t128) = VALUE string( ).
      DATA(t129) = t3.
      DATA(t130) = t5.
      DATA(t131) = strlen( t129 ).
      t128 = |{ t129 }{ t130 }|.
      DATA(t132) = |Data:<br>|.
      DATA(t133) = strlen( t128 ).
      t127 = |{ t128 }{ t132 }|.
      t3 = t127.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t134.
    DATA(t135) = t111.
    t134 = t135->keys( ).
    DATA(t136) = VALUE string( ).
    t134->dense( ).
    DATA(t137) = VALUE i( ).
    DO.
      t134->load( ).
      IF t137 >= lines( t134->items ).
        EXIT.
      ENDIF.
      CLEAR t136.
      READ TABLE t134->items INDEX t137 + 1 INTO t136.
      IF t134->has( t137 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t137 = t137 + 1.
      DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t138.
      DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t139.
      DATA(t140) = t111.
      DATA(t141) = t136.
      t139 = t140->get( p0 = t141 ).
      t138 = t139.
      DATA(t142) = VALUE string( ).
      DATA(t143) = VALUE string( ).
      DATA(t144) = VALUE string( ).
      DATA(t145) = VALUE string( ).
      DATA(t146) = t3.
      DATA(t147) = t5.
      DATA(t148) = strlen( t146 ).
      t145 = |{ t146 }{ t147 }|.
      DATA(t149) = |<tt>|.
      DATA(t150) = strlen( t145 ).
      t144 = |{ t145 }{ t149 }|.
      DATA(t151) = VALUE string( ).
      DATA(t152) = VALUE string( ).
      DATA(t153) = t136.
      DATA(t154) = strlen( t153 ).
      t152 = t153.
      TRANSLATE t152 TO LOWER CASE.
      t151 = zcl_lnt_dump_scope=>escape( i_str = t152 ).
      DATA(t155) = strlen( t144 ).
      t143 = |{ t144 }{ t151 }|.
      DATA(t156) = |</tt>|.
      DATA(t157) = strlen( t143 ).
      t142 = |{ t143 }{ t156 }|.
      t3 = t142.
      DATA t158 TYPE REF TO zcl_lnt_position.
      CLEAR t158.
      DATA t159 TYPE REF TO zcl_lnt_position.
      CLEAR t159.
      DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t160.
      DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t161.
      DATA(t162) = t138.
      t161 = t162.
      t160 = t161.
      DATA t163 TYPE REF TO zcl_lnt_position.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t165.
      DATA(t166) = t160.
      t165 = t166->token.
      t164 = t165.
      DATA t167 TYPE REF TO zcl_lnt_position.
      CLEAR t167.
      DATA(t168) = t164.
      t167 = t168->start.
      t163 = t167.
      t159 = t163.
      t158 = t159.
      DATA(t169) = VALUE string( ).
      DATA(t170) = VALUE string( ).
      DATA(t171) = VALUE string( ).
      DATA(t172) = VALUE string( ).
      DATA(t173) = VALUE string( ).
      DATA(t174) = t3.
      DATA(t175) = |(|.
      DATA(t176) = strlen( t174 ).
      t173 = |{ t174 }{ t175 }|.
      DATA(t177) = VALUE string( ).
      DATA(t178) = VALUE f( ).
      DATA t179 TYPE REF TO zcl_lnt_position.
      CLEAR t179.
      DATA(t180) = t158.
      t179 = t180.
      DATA(t181) = VALUE f( ).
      DATA(t182) = t179.
      t181 = t182->row.
      t178 = t181.
      IF t178 <> trunc( t178 ) OR t178 > range_safe_integer OR t178 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t183) = CONV int8( t178 ).
      t177 = |{ t183 }|.
      DATA(t184) = strlen( t173 ).
      t172 = |{ t173 }{ t177 }|.
      DATA(t185) = |, |.
      DATA(t186) = strlen( t172 ).
      t171 = |{ t172 }{ t185 }|.
      DATA(t187) = VALUE string( ).
      DATA t188 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t188.
      DATA t189 TYPE REF TO zcl_lnt_position.
      CLEAR t189.
      DATA(t190) = t158.
      t189 = t190.
      DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t191.
      DATA(t192) = t189.
      t191 = t192->col.
      t188 = t191.
      t187 = zlnt_runtime_numb_290eb04a9758=>text( t188 ).
      DATA(t193) = strlen( t171 ).
      t170 = |{ t171 }{ t187 }|.
      DATA(t194) = |) |.
      DATA(t195) = strlen( t170 ).
      t169 = |{ t170 }{ t194 }|.
      t3 = t169.
      DATA(t196) = VALUE string( ).
      DATA(t197) = t3.
      DATA(t198) = VALUE string( ).
      DATA t199 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t199.
      DATA t200 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t200.
      DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t201.
      DATA(t202) = t138.
      t201 = t202.
      t200 = t201.
      DATA t203 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t203.
      DATA(t204) = t200.
      t203 = t204->type_cba0.
      t199 = t203.
      DATA(t205) = CONV f( 0 ).
      t198 = t199->to_text( i_level = t205 ).
      DATA(t206) = strlen( t197 ).
      t196 = |{ t197 }{ t198 }|.
      t3 = t196.
      DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t207.
      DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t208.
      DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t209.
      DATA t210 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t210.
      DATA(t211) = t138.
      t210 = t211.
      t209 = t210.
      DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t212.
      DATA(t213) = t209.
      t212 = t213->meta.
      t208 = t212.
      t207 = t208.
      DATA(t214) = VALUE abap_bool( ).
      DATA(t215) = t207.
      t214 = xsdbool( t215 IS BOUND ).
      IF t214 = abap_true.
        DATA(t216) = VALUE string( ).
        DATA(t217) = VALUE string( ).
        DATA(t218) = t3.
        DATA(t219) = |, |.
        DATA(t220) = strlen( t218 ).
        t217 = |{ t218 }{ t219 }|.
        DATA(t221) = VALUE string( ).
        DATA(t222) = t207.
        IF t222 IS BOUND.
          t221 = t222->join( VALUE #( ) ).
        ELSE.
          t221 = `undefined`.
        ENDIF.
        DATA(t223) = strlen( t217 ).
        t216 = |{ t217 }{ t221 }|.
        t3 = t216.
      ENDIF.
      DATA(t224) = VALUE string( ).
      DATA(t225) = t3.
      DATA(t226) = |<br>|.
      DATA(t227) = strlen( t225 ).
      t224 = |{ t225 }{ t226 }|.
      t3 = t224.
    ENDDO.
    DATA(t228) = VALUE string( ).
    DATA(t229) = t3.
    DATA(t230) = VALUE string( ).
    DATA(t231) = VALUE string( ).
    DATA(t232) = t5.
    DATA(t233) = VALUE string( ).
    DATA(t234) = VALUE i( ).
    DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    CLEAR t236.
    DATA t237 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t237.
    DATA(t238) = t1.
    t237 = t238->get_data( ).
    t236 = t237->cdefs.
    t235 = t236->keys( ).
    t235->load( ).
    t234 = lines( t235->items ).
    t233 = |{ t234 }|.
    DATA(t239) = strlen( t232 ).
    t231 = |{ t232 }{ t233 }|.
    DATA(t240) = | class definitions<br>|.
    DATA(t241) = strlen( t231 ).
    t230 = |{ t231 }{ t240 }|.
    DATA(t242) = strlen( t229 ).
    t228 = |{ t229 }{ t230 }|.
    t3 = t228.
    DATA(t243) = VALUE string( ).
    DATA(t244) = t3.
    DATA(t245) = VALUE string( ).
    DATA(t246) = VALUE string( ).
    DATA(t247) = t5.
    DATA(t248) = VALUE string( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    CLEAR t252.
    DATA t253 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t253.
    DATA(t254) = t1.
    t253 = t254->get_data( ).
    t252 = t253->idefs.
    DATA(t255) = |length|.
    t251 = t252->get( p0 = t255 ).
    t250 = t251.
    CLEAR t249.
    IF t250 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      CLEAR t256.
      t257 = t250.
      TRY.
          t249 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t256 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t249 = t256->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t249 IS BOUND.
      t248 = t249->to_string( ).
    ELSE.
      t248 = `undefined`.
    ENDIF.
    DATA(t258) = strlen( t247 ).
    t246 = |{ t247 }{ t248 }|.
    DATA(t259) = | interface definitions<br>|.
    DATA(t260) = strlen( t246 ).
    t245 = |{ t246 }{ t259 }|.
    DATA(t261) = strlen( t244 ).
    t243 = |{ t244 }{ t245 }|.
    t3 = t243.
    DATA(t262) = VALUE string( ).
    DATA(t263) = t3.
    DATA(t264) = VALUE string( ).
    DATA(t265) = VALUE string( ).
    DATA(t266) = t5.
    DATA(t267) = VALUE string( ).
    DATA(t268) = VALUE i( ).
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t269.
    DATA t270 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t270.
    DATA(t271) = t1.
    t270 = t271->get_data( ).
    t269 = t270->forms.
    t269->load( ).
    t268 = lines( t269->items ).
    t267 = |{ t268 }|.
    DATA(t272) = strlen( t266 ).
    t265 = |{ t266 }{ t267 }|.
    DATA(t273) = | form definitions<br>|.
    DATA(t274) = strlen( t265 ).
    t264 = |{ t265 }{ t273 }|.
    DATA(t275) = strlen( t263 ).
    t262 = |{ t263 }{ t264 }|.
    t3 = t262.
    DATA(t276) = VALUE string( ).
    DATA(t277) = t3.
    DATA(t278) = VALUE string( ).
    DATA(t279) = VALUE string( ).
    DATA(t280) = t5.
    DATA(t281) = VALUE string( ).
    DATA(t282) = VALUE i( ).
    DATA t283 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t283.
    DATA t284 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t284.
    DATA(t285) = t1.
    t284 = t285->get_data( ).
    t283 = t284->references.
    t283->load( ).
    t282 = lines( t283->items ).
    t281 = |{ t282 }|.
    DATA(t286) = strlen( t280 ).
    t279 = |{ t280 }{ t281 }|.
    DATA(t287) = | references<br>|.
    DATA(t288) = strlen( t279 ).
    t278 = |{ t279 }{ t287 }|.
    DATA(t289) = strlen( t277 ).
    t276 = |{ t277 }{ t278 }|.
    t3 = t276.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t290.
    DATA t291 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t291.
    DATA(t292) = t1.
    t291 = t292->get_data( ).
    t290 = t291->references.
    DATA t293 TYPE REF TO zcl_lnt_ireference.
    CLEAR t293.
    DATA t294 TYPE REF TO object.
    CLEAR t294.
    DATA(t295) = VALUE i( ).
    DO.
      t290->load( ).
      IF t295 >= lines( t290->items ).
        EXIT.
      ENDIF.
      CLEAR t294.
      READ TABLE t290->items INDEX t295 + 1 INTO t294.
      t295 = t295 + 1.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      CLEAR t293.
      IF t294 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t296 ?= t294.
        DATA t297 TYPE REF TO object.
        CLEAR t297.
        t297 = t296->as_ref( ).
        t293 ?= t297.
      ELSE.
        t293 ?= t294.
      ENDIF.
      DATA(t298) = VALUE string( ).
      DATA(t299) = t3.
      DATA(t300) = VALUE string( ).
      DATA(t301) = VALUE string( ).
      DATA(t302) = VALUE string( ).
      DATA(t303) = VALUE string( ).
      DATA(t304) = VALUE string( ).
      DATA(t305) = VALUE string( ).
      DATA(t306) = VALUE string( ).
      DATA(t307) = VALUE string( ).
      DATA(t308) = VALUE string( ).
      DATA(t309) = t5.
      DATA(t310) = |&nbsp;&nbsp;|.
      DATA(t311) = strlen( t309 ).
      t308 = |{ t309 }{ t310 }|.
      DATA(t312) = VALUE string( ).
      DATA(t313) = t293.
      t312 = t313->reference_type.
      DATA(t314) = strlen( t308 ).
      t307 = |{ t308 }{ t312 }|.
      DATA(t315) = |, line |.
      DATA(t316) = strlen( t307 ).
      t306 = |{ t307 }{ t315 }|.
      DATA(t317) = VALUE string( ).
      DATA(t318) = VALUE f( ).
      DATA t319 TYPE REF TO zcl_lnt_position.
      CLEAR t319.
      DATA t320 TYPE REF TO zcl_lnt_position.
      CLEAR t320.
      DATA t321 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t321.
      DATA t322 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t322.
      DATA(t323) = t293.
      t322 = t323->position_7b94.
      t321 = t322.
      DATA t324 TYPE REF TO zcl_lnt_position.
      CLEAR t324.
      DATA t325 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t325.
      DATA t326 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t326.
      DATA(t327) = t321.
      t326 = t327->token.
      t325 = t326.
      DATA t328 TYPE REF TO zcl_lnt_position.
      CLEAR t328.
      DATA(t329) = t325.
      t328 = t329->start.
      t324 = t328.
      t320 = t324.
      t319 = t320.
      DATA(t330) = VALUE f( ).
      DATA(t331) = t319.
      t330 = t331->row.
      t318 = t330.
      IF t318 <> trunc( t318 ) OR t318 > range_safe_integer OR t318 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t332) = CONV int8( t318 ).
      t317 = |{ t332 }|.
      DATA(t333) = strlen( t306 ).
      t305 = |{ t306 }{ t317 }|.
      DATA(t334) = | |.
      DATA(t335) = strlen( t305 ).
      t304 = |{ t305 }{ t334 }|.
      DATA(t336) = VALUE string( ).
      DATA(t337) = VALUE string( ).
      DATA t338 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t338.
      DATA t339 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t339.
      DATA(t340) = t293.
      t339 = t340->position_7b94.
      t338 = t339.
      DATA(t341) = VALUE string( ).
      DATA(t342) = t338.
      t341 = t342->filename.
      t337 = t341.
      t336 = zcl_lnt_dump_scope=>escape( i_str = t337 ).
      DATA(t343) = strlen( t304 ).
      t303 = |{ t304 }{ t336 }|.
      DATA(t344) = | |.
      DATA(t345) = strlen( t303 ).
      t302 = |{ t303 }{ t344 }|.
      DATA(t346) = VALUE string( ).
      DATA(t347) = VALUE string( ).
      DATA t348 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t348.
      DATA t349 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t349.
      DATA(t350) = t293.
      t349 = t350->position_7b94.
      t348 = t349.
      DATA(t351) = VALUE string( ).
      DATA(t352) = VALUE string( ).
      DATA(t353) = VALUE string( ).
      DATA t354 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t354.
      DATA t355 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t355.
      DATA(t356) = t348.
      t355 = t356->token.
      t354 = t355.
      DATA(t357) = VALUE string( ).
      DATA(t358) = t354.
      t357 = t358->str.
      t353 = t357.
      t352 = t353.
      DATA(t359) = VALUE abap_bool( ).
      DATA(t360) = VALUE string( ).
      DATA(t361) = t352.
      DATA(t362) = 0.
      DATA(t363) = 1.
      DATA(t364) = strlen( t361 ).
      IF t362 < 0.
        t362 = t362 + t364.
        IF t362 < 0.
          t362 = 0.
        ENDIF.
      ENDIF.
      IF t362 > t364 OR t363 <= 0.
        CLEAR t360.
      ELSE.
        IF t363 > t364 - t362.
          t363 = t364 - t362.
        ENDIF.
        t360 = t361+t362(t363).
      ENDIF.
      DATA(t365) = |!|.
      t359 = xsdbool( t360 = t365 ).
      IF t359 = abap_true.
        DATA(t366) = VALUE string( ).
        DATA(t367) = VALUE string( ).
        DATA(t368) = t352.
        t367 = t368.
        DATA(t369) = VALUE string( ).
        DATA(t370) = t367.
        DATA(t371) = 1.
        DATA(t372) = VALUE i( ).
        DATA(t373) = t367.
        DATA(t374) = strlen( t373 ).
        t372 = t374.
        DATA(t375) = strlen( t370 ).
        IF t371 < 0.
          t371 = t371 + t375.
          IF t371 < 0.
            t371 = 0.
          ENDIF.
        ENDIF.
        IF t371 > t375 OR t372 <= 0.
          CLEAR t369.
        ELSE.
          IF t372 > t375 - t371.
            t372 = t375 - t371.
          ENDIF.
          t369 = t370+t371(t372).
        ENDIF.
        t366 = t369.
        t352 = t366.
      ENDIF.
      DATA(t376) = t352.
      t351 = t376.
      t347 = t351.
      t346 = zcl_lnt_dump_scope=>escape( i_str = t347 ).
      DATA(t377) = strlen( t302 ).
      t301 = |{ t302 }{ t346 }|.
      DATA(t378) = |<br>|.
      DATA(t379) = strlen( t301 ).
      t300 = |{ t301 }{ t378 }|.
      DATA(t380) = strlen( t299 ).
      t298 = |{ t299 }{ t300 }|.
      t3 = t298.
    ENDDO.
    DATA(t381) = t3.
    result = t381.

  ENDMETHOD.

  METHOD escape.
    DATA(t1) = i_str.
    DATA t2 TYPE string.
    DATA(t3) = t1.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t4.
    DATA(t5) = |&|.
    DATA(t6) = |g|.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t5 flags = t6 checked = abap_true.
    DATA(t7) = |&amp;|.
    DATA(t8) = strlen( t3 ).
    t2 = t4->replace( p0 = t3 p1 = t7 ).
    t1 = t2.
    DATA t9 TYPE string.
    DATA(t10) = t1.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t11.
    DATA(t12) = |>|.
    DATA(t13) = |g|.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t12 flags = t13 checked = abap_true.
    DATA(t14) = |&gt;|.
    DATA(t15) = strlen( t10 ).
    t9 = t11->replace( p0 = t10 p1 = t14 ).
    t1 = t9.
    DATA t16 TYPE string.
    DATA(t17) = t1.
    DATA t18 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t18.
    DATA(t19) = |<|.
    DATA(t20) = |g|.
    CREATE OBJECT t18 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t19 flags = t20 checked = abap_true.
    DATA(t21) = |&lt;|.
    DATA(t22) = strlen( t17 ).
    t16 = t18->replace( p0 = t17 p1 = t21 ).
    t1 = t16.
    DATA t23 TYPE string.
    DATA(t24) = t1.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t25.
    DATA(t26) = |"|.
    DATA(t27) = |g|.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t26 flags = t27 checked = abap_true.
    DATA(t28) = |&quot;|.
    DATA(t29) = strlen( t24 ).
    t23 = t25->replace( p0 = t24 p1 = t28 ).
    t1 = t23.
    DATA t30 TYPE string.
    DATA(t31) = t1.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t32.
    DATA(t33) = |'|.
    DATA(t34) = |g|.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t33 flags = t34 checked = abap_true.
    DATA(t35) = |&#039;|.
    DATA(t36) = strlen( t31 ).
    t30 = t32->replace( p0 = t31 p1 = t35 ).
    t1 = t30.
    DATA(t37) = t1.
    result = t37.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1167_9e0ce9e0c541.
  ENDMETHOD.
ENDCLASS.
