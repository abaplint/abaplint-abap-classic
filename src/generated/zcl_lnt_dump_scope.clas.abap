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
    DATA t2 TYPE string.
    t2 = |<hr>Spaghetti Scope:<br><br>\n|.
    DATA(t5) = t2.
    DATA t6 TYPE string.
    t6 = zcl_lnt_dump_scope=>traverse_spaghetti( i_node = i_spaghetti->get_top( ) i_indent = CONV f( 0 ) ).
    DATA(t10) = strlen( t5 ).
    t2 = |{ t5 }{ t6 }|.
    result = t2.

  ENDMETHOD.

  METHOD traverse_spaghetti.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_indent.
    DATA t3 TYPE REF TO zcl_lnt_iscope_identifier.
    t3 = t1->get_identifier( ).
    DATA t6 TYPE REF TO zcl_lnt_irange.
    t6 = t1->calc_coverage( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = |&nbsp|.
    DATA(t12) = VALUE f( ).
    DATA(t14) = CONV f( 2 ).
    t12 = t2 * t14.
    DATA(t15) = strlen( t11 ).
    IF t12 < 0 OR t12 > 2147483647 OR t12 <> trunc( t12 ).
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t16) = 0.
    WHILE t16 < t12.
      t10 = |{ t10 }{ t11 }|.
      t16 = t16 + 1.
    ENDWHILE.
    t9 = t10.
    DATA(t17) = VALUE string( ).
    DATA(t19) = VALUE string( ).
    DATA(t20) = VALUE string( ).
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA(t25) = strlen( t9 ).
    t22 = |{ t9 }{ |<u>| }|.
    DATA(t26) = VALUE string( ).
    t26 = t3->stype.
    DATA(t28) = strlen( t22 ).
    t21 = |{ t22 }{ t26 }|.
    DATA(t30) = strlen( t21 ).
    t20 = |{ t21 }{ |, <tt>| }|.
    DATA(t31) = VALUE string( ).
    t31 = t3->sname.
    DATA(t33) = strlen( t20 ).
    t19 = |{ t20 }{ t31 }|.
    DATA(t35) = strlen( t19 ).
    t17 = |{ t19 }{ |</tt>| }|.
    DATA(t37) = t17.
    DATA(t38) = VALUE string( ).
    DATA(t39) = VALUE string( ).
    DATA(t40) = VALUE string( ).
    DATA(t41) = VALUE string( ).
    DATA(t42) = |, (|.
    DATA(t43) = VALUE string( ).
    DATA(t44) = VALUE f( ).
    t44 = t6->start->row.
    IF t44 <> trunc( t44 ) OR t44 > range_safe_integer OR t44 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t50) = CONV int8( t44 ).
    t43 = |{ t50 }|.
    DATA(t51) = strlen( t42 ).
    t41 = |{ t42 }{ t43 }|.
    DATA(t53) = strlen( t41 ).
    t40 = |{ t41 }{ |, | }|.
    DATA(t54) = VALUE string( ).
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t59 = t6->start->col.
    t54 = zlnt_runtime_numb_290eb04a9758=>text( t59 ).
    DATA(t61) = strlen( t40 ).
    t39 = |{ t40 }{ t54 }|.
    DATA(t63) = strlen( t39 ).
    t38 = |{ t39 }{ |)| }|.
    DATA(t64) = strlen( t37 ).
    t17 = |{ t37 }{ t38 }|.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE f( ).
    t67 = t6->end->row.
    DATA(t73) = CONV f( '9007199254740991' ).
    t66 = xsdbool( t67 = t73 ).
    t65 = t66.
    IF t66 = abap_true.
      DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t75 = t6->end->col.
      DATA(t81) = CONV f( '9007199254740991' ).
      DATA(t82) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t82->has = abap_true.
      t82->value = t81.
      t65 = zlnt_runtime_numb_290eb04a9758=>compare( left = t75 right = t82 op = `==` ).
    ENDIF.
    IF t65 = abap_true.
      DATA(t84) = t17.
      DATA(t86) = strlen( t84 ).
      t17 = |{ t84 }{ |, (max, max)| }|.
    ELSE.
      DATA(t88) = t17.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      DATA(t92) = VALUE string( ).
      DATA(t93) = |, (|.
      DATA(t94) = VALUE string( ).
      DATA(t95) = VALUE f( ).
      t95 = t6->end->row.
      IF t95 <> trunc( t95 ) OR t95 > range_safe_integer OR t95 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t101) = CONV int8( t95 ).
      t94 = |{ t101 }|.
      DATA(t102) = strlen( t93 ).
      t92 = |{ t93 }{ t94 }|.
      DATA(t104) = strlen( t92 ).
      t91 = |{ t92 }{ |, | }|.
      DATA(t105) = VALUE string( ).
      DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t110 = t6->end->col.
      t105 = zlnt_runtime_numb_290eb04a9758=>text( t110 ).
      DATA(t112) = strlen( t91 ).
      t90 = |{ t91 }{ t105 }|.
      DATA(t114) = strlen( t90 ).
      t89 = |{ t90 }{ |)| }|.
      DATA(t115) = strlen( t88 ).
      t17 = |{ t88 }{ t89 }|.
    ENDIF.
    DATA(t117) = t17.
    DATA(t119) = strlen( t117 ).
    t17 = |{ t117 }{ |</u><br>| }|.
    DATA(t121) = VALUE string( ).
    t121 = t1->get_identifier( )->stype.
    IF xsdbool( t121 = |_builtin| ) = abap_true.
      DATA(t126) = t17.
      DATA(t127) = VALUE string( ).
      DATA(t128) = VALUE string( ).
      DATA(t130) = VALUE string( ).
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t132 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t134 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t134 = t1->get_data( )->types.
      t132 = t134->get( p0 = |length| ).
      IF t132 IS BOUND.
        DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t139 TYPE REF TO object.
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
      DATA(t140) = strlen( t9 ).
      t128 = |{ t9 }{ t130 }|.
      DATA(t142) = strlen( t128 ).
      t127 = |{ t128 }{ | type definitions<br>| }|.
      DATA(t143) = strlen( t126 ).
      t17 = |{ t126 }{ t127 }|.
      DATA(t145) = t17.
      DATA(t146) = VALUE string( ).
      DATA(t147) = VALUE string( ).
      DATA(t149) = VALUE string( ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t153 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t153 = t1->get_data( )->vars.
      t151 = t153->get( p0 = |length| ).
      IF t151 IS BOUND.
        DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t158 TYPE REF TO object.
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
      DATA(t159) = strlen( t9 ).
      t147 = |{ t9 }{ t149 }|.
      DATA(t161) = strlen( t147 ).
      t146 = |{ t147 }{ | data definitions<br>| }|.
      DATA(t162) = strlen( t145 ).
      t17 = |{ t145 }{ t146 }|.
    ELSE.
      DATA(t164) = t17.
      DATA(t165) = VALUE string( ).
      t165 = zcl_lnt_dump_scope=>dump_node( i_node = t1 i_indent = t2 ).
      DATA(t168) = strlen( t164 ).
      t17 = |{ t164 }{ t165 }|.
    ENDIF.
    DATA(t170) = t17.
    DATA(t172) = strlen( t170 ).
    t17 = |{ t170 }{ |<br>| }|.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t173 = t1->get_children( ).
    DATA t175 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t176 TYPE REF TO object.
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
        t179 = t178->as_ref( ).
        t175 ?= t179.
      ELSE.
        t175 ?= t176.
      ENDIF.
      DATA(t181) = t17.
      DATA(t182) = VALUE string( ).
      DATA(t184) = VALUE f( ).
      DATA(t186) = CONV f( 1 ).
      t184 = t2 + t186.
      t182 = zcl_lnt_dump_scope=>traverse_spaghetti( i_node = t175 i_indent = t184 ).
      DATA(t187) = strlen( t181 ).
      t17 = |{ t181 }{ t182 }|.
    ENDDO.
    result = t17.

  ENDMETHOD.

  METHOD dump_node.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t3) = VALUE string( ).
    t3 = ||.
    DATA(t5) = VALUE string( ).
    DATA(t6) = VALUE string( ).
    DATA(t7) = |&nbsp;|.
    DATA(t8) = VALUE f( ).
    DATA(t10) = CONV f( 2 ).
    t8 = i_indent * t10.
    DATA(t11) = strlen( t7 ).
    IF t8 < 0 OR t8 > 2147483647 OR t8 <> trunc( t8 ).
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t12) = 0.
    WHILE t12 < t8.
      t6 = |{ t6 }{ t7 }|.
      t12 = t12 + 1.
    ENDWHILE.
    t5 = t6.
    DATA t13 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    t13 = t1->get_data( )->types.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t19 = t13->keys( ).
    t19->load( ).
    IF xsdbool( lines( t19->items ) = 0 ) = abap_true.
      DATA(t23) = VALUE string( ).
      DATA(t24) = t3.
      DATA(t26) = strlen( t24 ).
      t23 = |{ t24 }{ t5 }|.
      DATA(t28) = strlen( t23 ).
      t3 = |{ t23 }{ |0 type definitions<br>| }|.
    ELSE.
      DATA(t30) = VALUE string( ).
      DATA(t31) = t3.
      DATA(t33) = strlen( t31 ).
      t30 = |{ t31 }{ t5 }|.
      DATA(t35) = strlen( t30 ).
      t3 = |{ t30 }{ |Types:<br>| }|.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t36 = t13->keys( ).
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
      t40 = t13->get( p0 = t38 ).
      DATA(t45) = VALUE string( ).
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      DATA(t48) = t3.
      DATA(t50) = strlen( t48 ).
      t47 = |{ t48 }{ t5 }|.
      DATA(t52) = strlen( t47 ).
      t46 = |{ t47 }{ |<tt>| }|.
      DATA(t53) = VALUE string( ).
      t53 = zcl_lnt_dump_scope=>escape( i_str = t38 ).
      DATA(t55) = strlen( t46 ).
      t45 = |{ t46 }{ t53 }|.
      DATA(t57) = strlen( t45 ).
      t3 = |{ t45 }{ |</tt>| }|.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA t60 TYPE REF TO zcl_lnt_fi_identifier.
      t60 = t40.
      t58 = t60->token->start.
      DATA(t70) = VALUE string( ).
      DATA(t71) = VALUE string( ).
      DATA(t72) = VALUE string( ).
      DATA(t73) = VALUE string( ).
      DATA(t74) = t3.
      DATA(t76) = strlen( t74 ).
      t73 = |{ t74 }{ |(| }|.
      DATA(t77) = VALUE string( ).
      DATA(t78) = VALUE f( ).
      t78 = t58->row.
      IF t78 <> trunc( t78 ) OR t78 > range_safe_integer OR t78 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t83) = CONV int8( t78 ).
      t77 = |{ t83 }|.
      DATA(t84) = strlen( t73 ).
      t72 = |{ t73 }{ t77 }|.
      DATA(t86) = strlen( t72 ).
      t71 = |{ t72 }{ |, | }|.
      DATA(t87) = VALUE string( ).
      DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t91.
      t91 = t58->col.
      t87 = zlnt_runtime_numb_290eb04a9758=>text( t91 ).
      DATA(t93) = strlen( t71 ).
      t70 = |{ t71 }{ t87 }|.
      DATA(t95) = strlen( t70 ).
      t3 = |{ t70 }{ |) | }|.
      DATA(t97) = t3.
      DATA(t98) = VALUE string( ).
      t98 = t40->type_cba0->to_text( i_level = CONV f( 0 ) ).
      DATA(t106) = strlen( t97 ).
      t3 = |{ t97 }{ t98 }|.
      DATA(t108) = t3.
      DATA(t110) = strlen( t108 ).
      t3 = |{ t108 }{ |<br>| }|.
    ENDDO.
    DATA t111 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    t111 = t1->get_data( )->vars.
    DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t117 = t111->keys( ).
    t117->load( ).
    IF xsdbool( lines( t117->items ) = 0 ) = abap_true.
      DATA(t121) = VALUE string( ).
      DATA(t122) = t3.
      DATA(t124) = strlen( t122 ).
      t121 = |{ t122 }{ t5 }|.
      DATA(t126) = strlen( t121 ).
      t3 = |{ t121 }{ |0 data definitions<br>| }|.
    ELSE.
      DATA(t128) = VALUE string( ).
      DATA(t129) = t3.
      DATA(t131) = strlen( t129 ).
      t128 = |{ t129 }{ t5 }|.
      DATA(t133) = strlen( t128 ).
      t3 = |{ t128 }{ |Data:<br>| }|.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t134 = t111->keys( ).
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
      t138 = t111->get( p0 = t136 ).
      DATA(t143) = VALUE string( ).
      DATA(t144) = VALUE string( ).
      DATA(t145) = VALUE string( ).
      DATA(t146) = t3.
      DATA(t148) = strlen( t146 ).
      t145 = |{ t146 }{ t5 }|.
      DATA(t150) = strlen( t145 ).
      t144 = |{ t145 }{ |<tt>| }|.
      DATA(t151) = VALUE string( ).
      DATA(t152) = VALUE string( ).
      DATA(t154) = strlen( t136 ).
      t152 = t136.
      TRANSLATE t152 TO LOWER CASE.
      t151 = zcl_lnt_dump_scope=>escape( i_str = t152 ).
      DATA(t155) = strlen( t144 ).
      t143 = |{ t144 }{ t151 }|.
      DATA(t157) = strlen( t143 ).
      t3 = |{ t143 }{ |</tt>| }|.
      DATA t158 TYPE REF TO zcl_lnt_position.
      DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
      t160 = t138.
      t158 = t160->token->start.
      DATA(t170) = VALUE string( ).
      DATA(t171) = VALUE string( ).
      DATA(t172) = VALUE string( ).
      DATA(t173) = VALUE string( ).
      DATA(t174) = t3.
      DATA(t176) = strlen( t174 ).
      t173 = |{ t174 }{ |(| }|.
      DATA(t177) = VALUE string( ).
      DATA(t178) = VALUE f( ).
      t178 = t158->row.
      IF t178 <> trunc( t178 ) OR t178 > range_safe_integer OR t178 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t183) = CONV int8( t178 ).
      t177 = |{ t183 }|.
      DATA(t184) = strlen( t173 ).
      t172 = |{ t173 }{ t177 }|.
      DATA(t186) = strlen( t172 ).
      t171 = |{ t172 }{ |, | }|.
      DATA(t187) = VALUE string( ).
      DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t191.
      t191 = t158->col.
      t187 = zlnt_runtime_numb_290eb04a9758=>text( t191 ).
      DATA(t193) = strlen( t171 ).
      t170 = |{ t171 }{ t187 }|.
      DATA(t195) = strlen( t170 ).
      t3 = |{ t170 }{ |) | }|.
      DATA(t197) = t3.
      DATA(t198) = VALUE string( ).
      t198 = t138->type_cba0->to_text( i_level = CONV f( 0 ) ).
      DATA(t206) = strlen( t197 ).
      t3 = |{ t197 }{ t198 }|.
      DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t207 = t138->meta.
      IF xsdbool( t207 IS BOUND ) = abap_true.
        DATA(t217) = VALUE string( ).
        DATA(t218) = t3.
        DATA(t220) = strlen( t218 ).
        t217 = |{ t218 }{ |, | }|.
        DATA(t221) = VALUE string( ).
        IF t207 IS BOUND.
          t221 = t207->join( VALUE #( ) ).
        ELSE.
          t221 = `undefined`.
        ENDIF.
        DATA(t223) = strlen( t217 ).
        t3 = |{ t217 }{ t221 }|.
      ENDIF.
      DATA(t225) = t3.
      DATA(t227) = strlen( t225 ).
      t3 = |{ t225 }{ |<br>| }|.
    ENDDO.
    DATA(t229) = t3.
    DATA(t230) = VALUE string( ).
    DATA(t231) = VALUE string( ).
    DATA(t233) = VALUE string( ).
    DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t235 = t1->get_data( )->cdefs->keys( ).
    t235->load( ).
    t233 = |{ lines( t235->items ) }|.
    DATA(t239) = strlen( t5 ).
    t231 = |{ t5 }{ t233 }|.
    DATA(t241) = strlen( t231 ).
    t230 = |{ t231 }{ | class definitions<br>| }|.
    DATA(t242) = strlen( t229 ).
    t3 = |{ t229 }{ t230 }|.
    DATA(t244) = t3.
    DATA(t245) = VALUE string( ).
    DATA(t246) = VALUE string( ).
    DATA(t248) = VALUE string( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t250 TYPE REF TO zif_lnt_interface_definition.
    DATA t252 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    t252 = t1->get_data( )->idefs.
    t250 = t252->get( p0 = |length| ).
    IF t250 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t249 ?= t250.
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
    DATA(t258) = strlen( t5 ).
    t246 = |{ t5 }{ t248 }|.
    DATA(t260) = strlen( t246 ).
    t245 = |{ t246 }{ | interface definitions<br>| }|.
    DATA(t261) = strlen( t244 ).
    t3 = |{ t244 }{ t245 }|.
    DATA(t263) = t3.
    DATA(t264) = VALUE string( ).
    DATA(t265) = VALUE string( ).
    DATA(t267) = VALUE string( ).
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t269 = t1->get_data( )->forms.
    t269->load( ).
    t267 = |{ lines( t269->items ) }|.
    DATA(t272) = strlen( t5 ).
    t265 = |{ t5 }{ t267 }|.
    DATA(t274) = strlen( t265 ).
    t264 = |{ t265 }{ | form definitions<br>| }|.
    DATA(t275) = strlen( t263 ).
    t3 = |{ t263 }{ t264 }|.
    DATA(t277) = t3.
    DATA(t278) = VALUE string( ).
    DATA(t279) = VALUE string( ).
    DATA(t281) = VALUE string( ).
    DATA t283 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t283 = t1->get_data( )->references.
    t283->load( ).
    t281 = |{ lines( t283->items ) }|.
    DATA(t286) = strlen( t5 ).
    t279 = |{ t5 }{ t281 }|.
    DATA(t288) = strlen( t279 ).
    t278 = |{ t279 }{ | references<br>| }|.
    DATA(t289) = strlen( t277 ).
    t3 = |{ t277 }{ t278 }|.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t290 = t1->get_data( )->references.
    DATA t293 TYPE REF TO zcl_lnt_ireference.
    DATA t294 TYPE REF TO object.
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
        t297 = t296->as_ref( ).
        t293 ?= t297.
      ELSE.
        t293 ?= t294.
      ENDIF.
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
      DATA(t311) = strlen( t5 ).
      t308 = |{ t5 }{ |&nbsp;&nbsp;| }|.
      DATA(t312) = VALUE string( ).
      t312 = t293->reference_type.
      DATA(t314) = strlen( t308 ).
      t307 = |{ t308 }{ t312 }|.
      DATA(t316) = strlen( t307 ).
      t306 = |{ t307 }{ |, line | }|.
      DATA(t317) = VALUE string( ).
      DATA(t318) = VALUE f( ).
      t318 = t293->position_7b94->token->start->row.
      IF t318 <> trunc( t318 ) OR t318 > range_safe_integer OR t318 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t332) = CONV int8( t318 ).
      t317 = |{ t332 }|.
      DATA(t333) = strlen( t306 ).
      t305 = |{ t306 }{ t317 }|.
      DATA(t335) = strlen( t305 ).
      t304 = |{ t305 }{ | | }|.
      DATA(t336) = VALUE string( ).
      DATA t339 TYPE REF TO zcl_lnt_fi_identifier.
      t339 = t293->position_7b94.
      DATA(t341) = VALUE string( ).
      t341 = t339->filename.
      t336 = zcl_lnt_dump_scope=>escape( i_str = t341 ).
      DATA(t343) = strlen( t304 ).
      t303 = |{ t304 }{ t336 }|.
      DATA(t345) = strlen( t303 ).
      t302 = |{ t303 }{ | | }|.
      DATA(t346) = VALUE string( ).
      DATA t349 TYPE REF TO zcl_lnt_fi_identifier.
      t349 = t293->position_7b94.
      DATA(t352) = VALUE string( ).
      t352 = t349->token->str.
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
      ELSE.
        IF t363 > t364 - t362.
          t363 = t364 - t362.
        ENDIF.
        t360 = t361+t362(t363).
      ENDIF.
      IF xsdbool( t360 = |!| ) = abap_true.
        DATA(t367) = VALUE string( ).
        t367 = t352.
        DATA(t369) = VALUE string( ).
        DATA(t371) = 1.
        DATA(t372) = VALUE i( ).
        t372 = strlen( t367 ).
        DATA(t375) = strlen( t367 ).
        IF t371 < 0.
          t371 = t371 + t375.
          IF t371 < 0.
            t371 = 0.
          ENDIF.
        ENDIF.
        IF t371 > t375 OR t372 <= 0.
        ELSE.
          IF t372 > t375 - t371.
            t372 = t375 - t371.
          ENDIF.
          t369 = t367+t371(t372).
        ENDIF.
        t352 = t369.
      ENDIF.
      t346 = zcl_lnt_dump_scope=>escape( i_str = t352 ).
      DATA(t377) = strlen( t302 ).
      t301 = |{ t302 }{ t346 }|.
      DATA(t379) = strlen( t301 ).
      t300 = |{ t301 }{ |<br>| }|.
      DATA(t380) = strlen( t299 ).
      t3 = |{ t299 }{ t300 }|.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD escape.
    DATA(t1) = i_str.
    DATA(t3) = t1.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |&| flags = |g| checked = abap_true.
    DATA(t8) = strlen( t3 ).
    t1 = t4->replace( p0 = t3 p1 = |&amp;| ).
    DATA(t10) = t1.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |>| flags = |g| checked = abap_true.
    DATA(t15) = strlen( t10 ).
    t1 = t11->replace( p0 = t10 p1 = |&gt;| ).
    DATA(t17) = t1.
    DATA t18 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t18 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |<| flags = |g| checked = abap_true.
    DATA(t22) = strlen( t17 ).
    t1 = t18->replace( p0 = t17 p1 = |&lt;| ).
    DATA(t24) = t1.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |"| flags = |g| checked = abap_true.
    DATA(t29) = strlen( t24 ).
    t1 = t25->replace( p0 = t24 p1 = |&quot;| ).
    DATA(t31) = t1.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |'| flags = |g| checked = abap_true.
    DATA(t36) = strlen( t31 ).
    t1 = t32->replace( p0 = t31 p1 = |&#039;| ).
    result = t1.

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
