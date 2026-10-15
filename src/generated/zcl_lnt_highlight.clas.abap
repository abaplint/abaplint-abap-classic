* TS: src/lsp/highlight.ts:8:1 Highlight
CLASS zcl_lnt_highlight DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS list_definition_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_read_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_syntax IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope.
    METHODS find_object IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_highlight IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list_definition_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = me->reg.
    DATA t15 TYPE string.
    DATA(t16) = t9.
    t15 = t16->zlnt_view_read_no_0041136eb871( ).
    t13 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t14 i_filename = t15 ).
    t12 = t13.
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t12.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t25.
      t17 = t25.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_object.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      DATA(t29) = me->reg.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_abstract_file.
      DATA t32 TYPE REF TO zcl_lnt_abap_file.
      DATA(t33) = t12.
      t32 = t33.
      t31 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE string.
      DATA(t38) = t31.
      t37 = t38->base_name( ).
      DATA(t39) = |.|.
      DATA(t40) = strlen( t37 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t36.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t37+t41(1).
          APPEND t45 TO t36->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t37 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t37+t41(t43).
          ENDIF.
          APPEND t45 TO t36->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      t35 = t36.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = t35.
      DATA(t50) = 1.
      t48 = t49->get( p0 = t50 ).
      t47 = t48.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t47.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ELSEIF t53->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t51 = t54.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = t47.
        t56 = t57->value.
        DATA(t58) = strlen( t56 ).
        t55 = t56.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t55.
        t51 = t59.
      ENDIF.
      t46 = t51.
      t34 = t46.
      t30 = t34.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA(t62) = VALUE string( ).
        DATA t63 TYPE REF TO zcl_lnt_abstract_file.
        DATA t64 TYPE REF TO zcl_lnt_abap_file.
        DATA(t65) = t12.
        t64 = t65.
        t63 = t64.
        DATA(t66) = VALUE string( ).
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t69 TYPE string.
        DATA(t70) = t63.
        t69 = t70->base_name( ).
        DATA(t71) = |.|.
        DATA(t72) = strlen( t69 ).
        DATA t73 TYPE i.
        DATA(t74) = VALUE i( ).
        DATA(t75) = VALUE i( ).
        DATA t76 TYPE i.
        DATA(t77) = VALUE string( ).
        CREATE OBJECT t68.
        t76 = strlen( t71 ).
        t73 = 0.
        IF t76 = 0.
          WHILE t73 < t72.
            t77 = t69+t73(1).
            APPEND t77 TO t68->items.
            t73 = t73 + 1.
          ENDWHILE.
        ELSE.
          WHILE t73 <= t72.
            FIND FIRST OCCURRENCE OF t71 IN SECTION OFFSET t73 OF t69 MATCH OFFSET t74.
            IF sy-subrc = 0.
              t75 = t74 - t73.
            ELSE.
              t74 = -1.
              t75 = t72 - t73.
            ENDIF.
            CLEAR t77.
            IF t75 > 0.
              t77 = t69+t73(t75).
            ENDIF.
            APPEND t77 TO t68->items.
            IF t74 < 0.
              EXIT.
            ENDIF.
            t73 = t74 + t76.
          ENDWHILE.
        ENDIF.
        t67 = t68.
        DATA(t78) = t67.
        DATA(t79) = 0.
        DATA(t80) = VALUE string( ).
        DATA(t81) = VALUE string( ).
        DATA(t82) = t67.
        IF t82->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t82->load( ).
        CLEAR t81.
        READ TABLE t82->items INDEX 1 INTO t81.
        DATA t83 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t83.
        DATA(t84) = |%23|.
        DATA(t85) = |g|.
        CREATE OBJECT t83 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t84 flags = t85 checked = abap_true.
        DATA(t86) = |#|.
        DATA(t87) = strlen( t81 ).
        t80 = t83->replace( p0 = t81 p1 = t86 ).
        t78->put( p0 = t79 p1 = t80 ).
        DATA(t88) = t67.
        DATA(t89) = 0.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA(t92) = t67.
        IF t92->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t92->load( ).
        CLEAR t91.
        READ TABLE t92->items INDEX 1 INTO t91.
        DATA t93 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t93.
        DATA(t94) = |%3e|.
        DATA(t95) = |g|.
        CREATE OBJECT t93 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t94 flags = t95 checked = abap_true.
        DATA(t96) = |>|.
        DATA(t97) = strlen( t91 ).
        t90 = t93->replace( p0 = t91 p1 = t96 ).
        t88->put( p0 = t89 p1 = t90 ).
        DATA(t98) = t67.
        DATA(t99) = 0.
        DATA(t100) = VALUE string( ).
        DATA(t101) = VALUE string( ).
        DATA(t102) = t67.
        IF t102->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t102->load( ).
        CLEAR t101.
        READ TABLE t102->items INDEX 1 INTO t101.
        DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t103.
        DATA(t104) = |%3c|.
        DATA(t105) = |g|.
        CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t104 flags = t105 checked = abap_true.
        DATA(t106) = |<|.
        DATA(t107) = strlen( t101 ).
        t100 = t103->replace( p0 = t101 p1 = t106 ).
        t98->put( p0 = t99 p1 = t100 ).
        DATA(t108) = t67.
        DATA(t109) = 0.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA(t112) = VALUE string( ).
        DATA(t113) = t67.
        IF t113->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t113->load( ).
        CLEAR t112.
        READ TABLE t113->items INDEX 1 INTO t112.
        DATA(t114) = strlen( t112 ).
        t111 = t112.
        IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t111 TO UPPER CASE.
        ELSE.
          t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
        ENDIF.
        DATA t115 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t115.
        DATA(t116) = |#|.
        DATA(t117) = |g|.
        CREATE OBJECT t115 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t116 flags = t117 checked = abap_true.
        DATA(t118) = |/|.
        DATA(t119) = strlen( t111 ).
        t110 = t115->replace( p0 = t111 p1 = t118 ).
        t108->put( p0 = t109 p1 = t110 ).
        DATA(t120) = t67.
        DATA(t121) = 0.
        DATA(t122) = VALUE string( ).
        DATA(t123) = VALUE string( ).
        DATA(t124) = t67.
        IF t124->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t124->load( ).
        CLEAR t123.
        READ TABLE t124->items INDEX 1 INTO t123.
        DATA(t125) = |(|.
        DATA(t126) = |/|.
        DATA(t127) = strlen( t123 ).
        t122 = t123.
        REPLACE ALL OCCURRENCES OF t125 IN t122 WITH t126.
        t120->put( p0 = t121 p1 = t122 ).
        DATA(t128) = t67.
        DATA(t129) = 0.
        DATA(t130) = VALUE string( ).
        DATA(t131) = VALUE string( ).
        DATA(t132) = t67.
        IF t132->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t132->load( ).
        CLEAR t131.
        READ TABLE t132->items INDEX 1 INTO t131.
        DATA(t133) = |)|.
        DATA(t134) = |/|.
        DATA(t135) = strlen( t131 ).
        t130 = t131.
        REPLACE ALL OCCURRENCES OF t133 IN t130 WITH t134.
        t128->put( p0 = t129 p1 = t130 ).
        DATA(t136) = VALUE string( ).
        DATA(t137) = t67.
        IF t137->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t137->load( ).
        CLEAR t136.
        READ TABLE t137->items INDEX 1 INTO t136.
        t66 = t136.
        t62 = t66.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t62.
        t60 = t138.
      ELSE.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t60 = t139.
      ENDIF.
      t28 = t29->get_object( i_type_9913 = t30 i_name = t60 ).
      t27 = t28.
      DATA t140 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t140.
      DATA t141 TYPE abap_bool.
      DATA(t142) = t27.
      t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t141 = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t143.
        DATA(t144) = abap_true.
        IF t144 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abap_object.
          DATA(t146) = t27.
          DATA t147 TYPE REF TO object.
          t147 = t146.
          t145 ?= t147.
          t143 = t145.
        ELSE.
          DATA t148 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t148.
          t143 = t148.
        ENDIF.
        t140 = t143.
      ELSE.
        DATA t149 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t149.
        t140 = t149.
      ENDIF.
      t26 = t140.
      t17 = t26.
    ENDIF.
    t11 = t17.
    t8 = t11.
    t7 = t8.
    DATA t150 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t150.
    DATA(t151) = VALUE abap_bool( ).
    DATA t152 TYPE REF TO zcl_lnt_abap_object.
    DATA(t153) = t7.
    t152 = t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    t154 = t155.
    DATA(t156) = VALUE abap_bool( ).
    DATA(t157) = t152.
    IF t157 IS INITIAL.
      t156 = abap_true.
    ENDIF.
    t151 = t156.
    IF t151 = abap_true.
      DATA t158 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t158.
      t150 = t158.
    ELSE.
      DATA t159 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t159.
      DATA(t160) = abap_true.
      IF t160 = abap_true.
        DATA t161 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA t162 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t163 TYPE REF TO zcl_lnt_syntax_logic.
        DATA(t164) = me->reg.
        DATA t165 TYPE REF TO zcl_lnt_abap_object.
        DATA(t166) = t7.
        t165 = t166.
        t163 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t164 i_object_19cd = t165 ).
        t162 = t163->run( ).
        t161 = t162->zlnt_view_read_sr_b6b1d9e0c93e( ).
        t159 = t161.
      ELSE.
        DATA t167 TYPE REF TO zif_lnt_spaghetti_scope.
        CLEAR t167.
        t159 = t167.
      ENDIF.
      t150 = t159.
    ENDIF.
    t6 = t150.
    t3 = t6.
    t2 = t3.
    DATA(t168) = VALUE abap_bool( ).
    DATA t169 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t170) = t2.
    t169 = t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    t171 = t172.
    DATA(t173) = VALUE abap_bool( ).
    DATA(t174) = t169.
    IF t174 IS INITIAL.
      t173 = abap_true.
    ENDIF.
    t168 = t173.
    IF t168 = abap_true.
      DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t175.
      result = t175.
      RETURN.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t178 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t179) = t2.
    t178 = t179.
    DATA t180 TYPE string.
    DATA(t181) = t1.
    t180 = t181->zlnt_view_read_no_0041136eb871( ).
    t177 = t178->list_definitions( i_filename = t180 ).
    t176 = t177.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    t182 = t183.
    DATA(t184) = t176.
    DATA t185 TYPE REF TO zcl_lnt_iscope_variable.
    CLEAR t185.
    DATA t186 TYPE REF TO object.
    CLEAR t186.
    DATA(t187) = VALUE i( ).
    DO.
      t184->load( ).
      IF t187 >= lines( t184->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t184->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA(t190) = t182.
      DATA t191 TYPE REF TO zcl_lnt_range.
      DATA t192 TYPE REF TO zcl_lnt_abstract_token.
      DATA t193 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t195) = t185.
      t194 = t195->identifier.
      t193 = t194.
      DATA t196 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t197) = t193.
      t196 = t197->token.
      t192 = t196.
      t191 = zcl_lnt_lsp_utils=>token_to_range( i_token = t192 ).
      t190->load( ).
      APPEND t191 TO t190->items.
      t190->save( ).
    ENDDO.
    DATA(t198) = t182.
    result = t198.

  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = me->reg.
    DATA t15 TYPE string.
    DATA(t16) = t9.
    t15 = t16->zlnt_view_read_no_0041136eb871( ).
    t13 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t14 i_filename = t15 ).
    t12 = t13.
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t12.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t25.
      t17 = t25.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_object.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      DATA(t29) = me->reg.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_abstract_file.
      DATA t32 TYPE REF TO zcl_lnt_abap_file.
      DATA(t33) = t12.
      t32 = t33.
      t31 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE string.
      DATA(t38) = t31.
      t37 = t38->base_name( ).
      DATA(t39) = |.|.
      DATA(t40) = strlen( t37 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t36.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t37+t41(1).
          APPEND t45 TO t36->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t37 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t37+t41(t43).
          ENDIF.
          APPEND t45 TO t36->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      t35 = t36.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = t35.
      DATA(t50) = 1.
      t48 = t49->get( p0 = t50 ).
      t47 = t48.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t47.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ELSEIF t53->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t51 = t54.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = t47.
        t56 = t57->value.
        DATA(t58) = strlen( t56 ).
        t55 = t56.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t55.
        t51 = t59.
      ENDIF.
      t46 = t51.
      t34 = t46.
      t30 = t34.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA(t62) = VALUE string( ).
        DATA t63 TYPE REF TO zcl_lnt_abstract_file.
        DATA t64 TYPE REF TO zcl_lnt_abap_file.
        DATA(t65) = t12.
        t64 = t65.
        t63 = t64.
        DATA(t66) = VALUE string( ).
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t69 TYPE string.
        DATA(t70) = t63.
        t69 = t70->base_name( ).
        DATA(t71) = |.|.
        DATA(t72) = strlen( t69 ).
        DATA t73 TYPE i.
        DATA(t74) = VALUE i( ).
        DATA(t75) = VALUE i( ).
        DATA t76 TYPE i.
        DATA(t77) = VALUE string( ).
        CREATE OBJECT t68.
        t76 = strlen( t71 ).
        t73 = 0.
        IF t76 = 0.
          WHILE t73 < t72.
            t77 = t69+t73(1).
            APPEND t77 TO t68->items.
            t73 = t73 + 1.
          ENDWHILE.
        ELSE.
          WHILE t73 <= t72.
            FIND FIRST OCCURRENCE OF t71 IN SECTION OFFSET t73 OF t69 MATCH OFFSET t74.
            IF sy-subrc = 0.
              t75 = t74 - t73.
            ELSE.
              t74 = -1.
              t75 = t72 - t73.
            ENDIF.
            CLEAR t77.
            IF t75 > 0.
              t77 = t69+t73(t75).
            ENDIF.
            APPEND t77 TO t68->items.
            IF t74 < 0.
              EXIT.
            ENDIF.
            t73 = t74 + t76.
          ENDWHILE.
        ENDIF.
        t67 = t68.
        DATA(t78) = t67.
        DATA(t79) = 0.
        DATA(t80) = VALUE string( ).
        DATA(t81) = VALUE string( ).
        DATA(t82) = t67.
        IF t82->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t82->load( ).
        CLEAR t81.
        READ TABLE t82->items INDEX 1 INTO t81.
        DATA t83 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t83.
        DATA(t84) = |%23|.
        DATA(t85) = |g|.
        CREATE OBJECT t83 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t84 flags = t85 checked = abap_true.
        DATA(t86) = |#|.
        DATA(t87) = strlen( t81 ).
        t80 = t83->replace( p0 = t81 p1 = t86 ).
        t78->put( p0 = t79 p1 = t80 ).
        DATA(t88) = t67.
        DATA(t89) = 0.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA(t92) = t67.
        IF t92->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t92->load( ).
        CLEAR t91.
        READ TABLE t92->items INDEX 1 INTO t91.
        DATA t93 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t93.
        DATA(t94) = |%3e|.
        DATA(t95) = |g|.
        CREATE OBJECT t93 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t94 flags = t95 checked = abap_true.
        DATA(t96) = |>|.
        DATA(t97) = strlen( t91 ).
        t90 = t93->replace( p0 = t91 p1 = t96 ).
        t88->put( p0 = t89 p1 = t90 ).
        DATA(t98) = t67.
        DATA(t99) = 0.
        DATA(t100) = VALUE string( ).
        DATA(t101) = VALUE string( ).
        DATA(t102) = t67.
        IF t102->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t102->load( ).
        CLEAR t101.
        READ TABLE t102->items INDEX 1 INTO t101.
        DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t103.
        DATA(t104) = |%3c|.
        DATA(t105) = |g|.
        CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t104 flags = t105 checked = abap_true.
        DATA(t106) = |<|.
        DATA(t107) = strlen( t101 ).
        t100 = t103->replace( p0 = t101 p1 = t106 ).
        t98->put( p0 = t99 p1 = t100 ).
        DATA(t108) = t67.
        DATA(t109) = 0.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA(t112) = VALUE string( ).
        DATA(t113) = t67.
        IF t113->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t113->load( ).
        CLEAR t112.
        READ TABLE t113->items INDEX 1 INTO t112.
        DATA(t114) = strlen( t112 ).
        t111 = t112.
        IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t111 TO UPPER CASE.
        ELSE.
          t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
        ENDIF.
        DATA t115 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t115.
        DATA(t116) = |#|.
        DATA(t117) = |g|.
        CREATE OBJECT t115 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t116 flags = t117 checked = abap_true.
        DATA(t118) = |/|.
        DATA(t119) = strlen( t111 ).
        t110 = t115->replace( p0 = t111 p1 = t118 ).
        t108->put( p0 = t109 p1 = t110 ).
        DATA(t120) = t67.
        DATA(t121) = 0.
        DATA(t122) = VALUE string( ).
        DATA(t123) = VALUE string( ).
        DATA(t124) = t67.
        IF t124->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t124->load( ).
        CLEAR t123.
        READ TABLE t124->items INDEX 1 INTO t123.
        DATA(t125) = |(|.
        DATA(t126) = |/|.
        DATA(t127) = strlen( t123 ).
        t122 = t123.
        REPLACE ALL OCCURRENCES OF t125 IN t122 WITH t126.
        t120->put( p0 = t121 p1 = t122 ).
        DATA(t128) = t67.
        DATA(t129) = 0.
        DATA(t130) = VALUE string( ).
        DATA(t131) = VALUE string( ).
        DATA(t132) = t67.
        IF t132->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t132->load( ).
        CLEAR t131.
        READ TABLE t132->items INDEX 1 INTO t131.
        DATA(t133) = |)|.
        DATA(t134) = |/|.
        DATA(t135) = strlen( t131 ).
        t130 = t131.
        REPLACE ALL OCCURRENCES OF t133 IN t130 WITH t134.
        t128->put( p0 = t129 p1 = t130 ).
        DATA(t136) = VALUE string( ).
        DATA(t137) = t67.
        IF t137->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t137->load( ).
        CLEAR t136.
        READ TABLE t137->items INDEX 1 INTO t136.
        t66 = t136.
        t62 = t66.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t62.
        t60 = t138.
      ELSE.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t60 = t139.
      ENDIF.
      t28 = t29->get_object( i_type_9913 = t30 i_name = t60 ).
      t27 = t28.
      DATA t140 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t140.
      DATA t141 TYPE abap_bool.
      DATA(t142) = t27.
      t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t141 = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t143.
        DATA(t144) = abap_true.
        IF t144 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abap_object.
          DATA(t146) = t27.
          DATA t147 TYPE REF TO object.
          t147 = t146.
          t145 ?= t147.
          t143 = t145.
        ELSE.
          DATA t148 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t148.
          t143 = t148.
        ENDIF.
        t140 = t143.
      ELSE.
        DATA t149 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t149.
        t140 = t149.
      ENDIF.
      t26 = t140.
      t17 = t26.
    ENDIF.
    t11 = t17.
    t8 = t11.
    t7 = t8.
    DATA t150 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t150.
    DATA(t151) = VALUE abap_bool( ).
    DATA t152 TYPE REF TO zcl_lnt_abap_object.
    DATA(t153) = t7.
    t152 = t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    t154 = t155.
    DATA(t156) = VALUE abap_bool( ).
    DATA(t157) = t152.
    IF t157 IS INITIAL.
      t156 = abap_true.
    ENDIF.
    t151 = t156.
    IF t151 = abap_true.
      DATA t158 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t158.
      t150 = t158.
    ELSE.
      DATA t159 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t159.
      DATA(t160) = abap_true.
      IF t160 = abap_true.
        DATA t161 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA t162 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t163 TYPE REF TO zcl_lnt_syntax_logic.
        DATA(t164) = me->reg.
        DATA t165 TYPE REF TO zcl_lnt_abap_object.
        DATA(t166) = t7.
        t165 = t166.
        t163 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t164 i_object_19cd = t165 ).
        t162 = t163->run( ).
        t161 = t162->zlnt_view_read_sr_b6b1d9e0c93e( ).
        t159 = t161.
      ELSE.
        DATA t167 TYPE REF TO zif_lnt_spaghetti_scope.
        CLEAR t167.
        t159 = t167.
      ENDIF.
      t150 = t159.
    ENDIF.
    t6 = t150.
    t3 = t6.
    t2 = t3.
    DATA(t168) = VALUE abap_bool( ).
    DATA t169 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t170) = t2.
    t169 = t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    t171 = t172.
    DATA(t173) = VALUE abap_bool( ).
    DATA(t174) = t169.
    IF t174 IS INITIAL.
      t173 = abap_true.
    ENDIF.
    t168 = t173.
    IF t168 = abap_true.
      DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t175.
      result = t175.
      RETURN.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t178 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t179) = t2.
    t178 = t179.
    DATA t180 TYPE string.
    DATA(t181) = t1.
    t180 = t181->zlnt_view_read_no_0041136eb871( ).
    t177 = t178->list_read_positions( i_filename = t180 ).
    t176 = t177.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    t182 = t183.
    DATA(t184) = t176.
    DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t185.
    DATA t186 TYPE REF TO object.
    CLEAR t186.
    DATA(t187) = VALUE i( ).
    DO.
      t184->load( ).
      IF t187 >= lines( t184->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t184->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA(t190) = t182.
      DATA t191 TYPE REF TO zcl_lnt_range.
      DATA t192 TYPE REF TO zcl_lnt_abstract_token.
      DATA t193 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t194) = t185.
      t193 = t194.
      DATA t195 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t196) = t193.
      t195 = t196->token.
      t192 = t195.
      t191 = zcl_lnt_lsp_utils=>token_to_range( i_token = t192 ).
      t190->load( ).
      APPEND t191 TO t190->items.
      t190->save( ).
    ENDDO.
    DATA(t197) = t182.
    result = t197.

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = me->reg.
    DATA t15 TYPE string.
    DATA(t16) = t9.
    t15 = t16->zlnt_view_read_no_0041136eb871( ).
    t13 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t14 i_filename = t15 ).
    t12 = t13.
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t12.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t25.
      t17 = t25.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_object.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      DATA(t29) = me->reg.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_abstract_file.
      DATA t32 TYPE REF TO zcl_lnt_abap_file.
      DATA(t33) = t12.
      t32 = t33.
      t31 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE string.
      DATA(t38) = t31.
      t37 = t38->base_name( ).
      DATA(t39) = |.|.
      DATA(t40) = strlen( t37 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t36.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t37+t41(1).
          APPEND t45 TO t36->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t37 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t37+t41(t43).
          ENDIF.
          APPEND t45 TO t36->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      t35 = t36.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = t35.
      DATA(t50) = 1.
      t48 = t49->get( p0 = t50 ).
      t47 = t48.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t47.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ELSEIF t53->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t51 = t54.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = t47.
        t56 = t57->value.
        DATA(t58) = strlen( t56 ).
        t55 = t56.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t55.
        t51 = t59.
      ENDIF.
      t46 = t51.
      t34 = t46.
      t30 = t34.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA(t62) = VALUE string( ).
        DATA t63 TYPE REF TO zcl_lnt_abstract_file.
        DATA t64 TYPE REF TO zcl_lnt_abap_file.
        DATA(t65) = t12.
        t64 = t65.
        t63 = t64.
        DATA(t66) = VALUE string( ).
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t69 TYPE string.
        DATA(t70) = t63.
        t69 = t70->base_name( ).
        DATA(t71) = |.|.
        DATA(t72) = strlen( t69 ).
        DATA t73 TYPE i.
        DATA(t74) = VALUE i( ).
        DATA(t75) = VALUE i( ).
        DATA t76 TYPE i.
        DATA(t77) = VALUE string( ).
        CREATE OBJECT t68.
        t76 = strlen( t71 ).
        t73 = 0.
        IF t76 = 0.
          WHILE t73 < t72.
            t77 = t69+t73(1).
            APPEND t77 TO t68->items.
            t73 = t73 + 1.
          ENDWHILE.
        ELSE.
          WHILE t73 <= t72.
            FIND FIRST OCCURRENCE OF t71 IN SECTION OFFSET t73 OF t69 MATCH OFFSET t74.
            IF sy-subrc = 0.
              t75 = t74 - t73.
            ELSE.
              t74 = -1.
              t75 = t72 - t73.
            ENDIF.
            CLEAR t77.
            IF t75 > 0.
              t77 = t69+t73(t75).
            ENDIF.
            APPEND t77 TO t68->items.
            IF t74 < 0.
              EXIT.
            ENDIF.
            t73 = t74 + t76.
          ENDWHILE.
        ENDIF.
        t67 = t68.
        DATA(t78) = t67.
        DATA(t79) = 0.
        DATA(t80) = VALUE string( ).
        DATA(t81) = VALUE string( ).
        DATA(t82) = t67.
        IF t82->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t82->load( ).
        CLEAR t81.
        READ TABLE t82->items INDEX 1 INTO t81.
        DATA t83 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t83.
        DATA(t84) = |%23|.
        DATA(t85) = |g|.
        CREATE OBJECT t83 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t84 flags = t85 checked = abap_true.
        DATA(t86) = |#|.
        DATA(t87) = strlen( t81 ).
        t80 = t83->replace( p0 = t81 p1 = t86 ).
        t78->put( p0 = t79 p1 = t80 ).
        DATA(t88) = t67.
        DATA(t89) = 0.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA(t92) = t67.
        IF t92->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t92->load( ).
        CLEAR t91.
        READ TABLE t92->items INDEX 1 INTO t91.
        DATA t93 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t93.
        DATA(t94) = |%3e|.
        DATA(t95) = |g|.
        CREATE OBJECT t93 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t94 flags = t95 checked = abap_true.
        DATA(t96) = |>|.
        DATA(t97) = strlen( t91 ).
        t90 = t93->replace( p0 = t91 p1 = t96 ).
        t88->put( p0 = t89 p1 = t90 ).
        DATA(t98) = t67.
        DATA(t99) = 0.
        DATA(t100) = VALUE string( ).
        DATA(t101) = VALUE string( ).
        DATA(t102) = t67.
        IF t102->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t102->load( ).
        CLEAR t101.
        READ TABLE t102->items INDEX 1 INTO t101.
        DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t103.
        DATA(t104) = |%3c|.
        DATA(t105) = |g|.
        CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t104 flags = t105 checked = abap_true.
        DATA(t106) = |<|.
        DATA(t107) = strlen( t101 ).
        t100 = t103->replace( p0 = t101 p1 = t106 ).
        t98->put( p0 = t99 p1 = t100 ).
        DATA(t108) = t67.
        DATA(t109) = 0.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA(t112) = VALUE string( ).
        DATA(t113) = t67.
        IF t113->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t113->load( ).
        CLEAR t112.
        READ TABLE t113->items INDEX 1 INTO t112.
        DATA(t114) = strlen( t112 ).
        t111 = t112.
        IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t111 TO UPPER CASE.
        ELSE.
          t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
        ENDIF.
        DATA t115 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t115.
        DATA(t116) = |#|.
        DATA(t117) = |g|.
        CREATE OBJECT t115 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t116 flags = t117 checked = abap_true.
        DATA(t118) = |/|.
        DATA(t119) = strlen( t111 ).
        t110 = t115->replace( p0 = t111 p1 = t118 ).
        t108->put( p0 = t109 p1 = t110 ).
        DATA(t120) = t67.
        DATA(t121) = 0.
        DATA(t122) = VALUE string( ).
        DATA(t123) = VALUE string( ).
        DATA(t124) = t67.
        IF t124->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t124->load( ).
        CLEAR t123.
        READ TABLE t124->items INDEX 1 INTO t123.
        DATA(t125) = |(|.
        DATA(t126) = |/|.
        DATA(t127) = strlen( t123 ).
        t122 = t123.
        REPLACE ALL OCCURRENCES OF t125 IN t122 WITH t126.
        t120->put( p0 = t121 p1 = t122 ).
        DATA(t128) = t67.
        DATA(t129) = 0.
        DATA(t130) = VALUE string( ).
        DATA(t131) = VALUE string( ).
        DATA(t132) = t67.
        IF t132->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t132->load( ).
        CLEAR t131.
        READ TABLE t132->items INDEX 1 INTO t131.
        DATA(t133) = |)|.
        DATA(t134) = |/|.
        DATA(t135) = strlen( t131 ).
        t130 = t131.
        REPLACE ALL OCCURRENCES OF t133 IN t130 WITH t134.
        t128->put( p0 = t129 p1 = t130 ).
        DATA(t136) = VALUE string( ).
        DATA(t137) = t67.
        IF t137->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t137->load( ).
        CLEAR t136.
        READ TABLE t137->items INDEX 1 INTO t136.
        t66 = t136.
        t62 = t66.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t62.
        t60 = t138.
      ELSE.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t60 = t139.
      ENDIF.
      t28 = t29->get_object( i_type_9913 = t30 i_name = t60 ).
      t27 = t28.
      DATA t140 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t140.
      DATA t141 TYPE abap_bool.
      DATA(t142) = t27.
      t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t141 = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t143.
        DATA(t144) = abap_true.
        IF t144 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abap_object.
          DATA(t146) = t27.
          DATA t147 TYPE REF TO object.
          t147 = t146.
          t145 ?= t147.
          t143 = t145.
        ELSE.
          DATA t148 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t148.
          t143 = t148.
        ENDIF.
        t140 = t143.
      ELSE.
        DATA t149 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t149.
        t140 = t149.
      ENDIF.
      t26 = t140.
      t17 = t26.
    ENDIF.
    t11 = t17.
    t8 = t11.
    t7 = t8.
    DATA t150 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t150.
    DATA(t151) = VALUE abap_bool( ).
    DATA t152 TYPE REF TO zcl_lnt_abap_object.
    DATA(t153) = t7.
    t152 = t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    t154 = t155.
    DATA(t156) = VALUE abap_bool( ).
    DATA(t157) = t152.
    IF t157 IS INITIAL.
      t156 = abap_true.
    ENDIF.
    t151 = t156.
    IF t151 = abap_true.
      DATA t158 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t158.
      t150 = t158.
    ELSE.
      DATA t159 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t159.
      DATA(t160) = abap_true.
      IF t160 = abap_true.
        DATA t161 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA t162 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t163 TYPE REF TO zcl_lnt_syntax_logic.
        DATA(t164) = me->reg.
        DATA t165 TYPE REF TO zcl_lnt_abap_object.
        DATA(t166) = t7.
        t165 = t166.
        t163 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t164 i_object_19cd = t165 ).
        t162 = t163->run( ).
        t161 = t162->zlnt_view_read_sr_b6b1d9e0c93e( ).
        t159 = t161.
      ELSE.
        DATA t167 TYPE REF TO zif_lnt_spaghetti_scope.
        CLEAR t167.
        t159 = t167.
      ENDIF.
      t150 = t159.
    ENDIF.
    t6 = t150.
    t3 = t6.
    t2 = t3.
    DATA(t168) = VALUE abap_bool( ).
    DATA t169 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t170) = t2.
    t169 = t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    t171 = t172.
    DATA(t173) = VALUE abap_bool( ).
    DATA(t174) = t169.
    IF t174 IS INITIAL.
      t173 = abap_true.
    ENDIF.
    t168 = t173.
    IF t168 = abap_true.
      DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t175.
      result = t175.
      RETURN.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t178 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t179) = t2.
    t178 = t179.
    DATA t180 TYPE string.
    DATA(t181) = t1.
    t180 = t181->zlnt_view_read_no_0041136eb871( ).
    t177 = t178->list_write_positions( i_filename = t180 ).
    t176 = t177.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    t182 = t183.
    DATA(t184) = t176.
    DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t185.
    DATA t186 TYPE REF TO object.
    CLEAR t186.
    DATA(t187) = VALUE i( ).
    DO.
      t184->load( ).
      IF t187 >= lines( t184->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t184->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA(t190) = t182.
      DATA t191 TYPE REF TO zcl_lnt_range.
      DATA t192 TYPE REF TO zcl_lnt_abstract_token.
      DATA t193 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t194) = t185.
      t193 = t194.
      DATA t195 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t196) = t193.
      t195 = t196->token.
      t192 = t195.
      t191 = zcl_lnt_lsp_utils=>token_to_range( i_token = t192 ).
      t190->load( ).
      APPEND t191 TO t190->items.
      t190->save( ).
    ENDDO.
    DATA(t197) = t182.
    result = t197.

  ENDMETHOD.

  METHOD run_syntax.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = me->reg.
    DATA t10 TYPE string.
    DATA(t11) = t4.
    t10 = t11->zlnt_view_read_no_0041136eb871( ).
    t8 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t9 i_filename = t10 ).
    t7 = t8.
    DATA t12 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zcl_lnt_abap_file.
    DATA(t15) = t7.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t14.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t13 = t18.
    IF t13 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t20.
      t12 = t20.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zif_lnt_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_object.
      CLEAR t23.
      DATA(t24) = me->reg.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_file.
      DATA t27 TYPE REF TO zcl_lnt_abap_file.
      DATA(t28) = t7.
      t27 = t28.
      t26 = t27.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE string.
      DATA(t33) = t26.
      t32 = t33->base_name( ).
      DATA(t34) = |.|.
      DATA(t35) = strlen( t32 ).
      DATA t36 TYPE i.
      DATA(t37) = VALUE i( ).
      DATA(t38) = VALUE i( ).
      DATA t39 TYPE i.
      DATA(t40) = VALUE string( ).
      CREATE OBJECT t31.
      t39 = strlen( t34 ).
      t36 = 0.
      IF t39 = 0.
        WHILE t36 < t35.
          t40 = t32+t36(1).
          APPEND t40 TO t31->items.
          t36 = t36 + 1.
        ENDWHILE.
      ELSE.
        WHILE t36 <= t35.
          FIND FIRST OCCURRENCE OF t34 IN SECTION OFFSET t36 OF t32 MATCH OFFSET t37.
          IF sy-subrc = 0.
            t38 = t37 - t36.
          ELSE.
            t37 = -1.
            t38 = t35 - t36.
          ENDIF.
          CLEAR t40.
          IF t38 > 0.
            t40 = t32+t36(t38).
          ENDIF.
          APPEND t40 TO t31->items.
          IF t37 < 0.
            EXIT.
          ENDIF.
          t36 = t37 + t39.
        ENDWHILE.
      ENDIF.
      t30 = t31.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = t30.
      DATA(t45) = 1.
      t43 = t44->get( p0 = t45 ).
      t42 = t43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t42.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ELSEIF t48->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        DATA(t52) = t42.
        t51 = t52->value.
        DATA(t53) = strlen( t51 ).
        t50 = t51.
        IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t50 TO UPPER CASE.
        ELSE.
          t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
        ENDIF.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t50.
        t46 = t54.
      ENDIF.
      t41 = t46.
      t29 = t41.
      t25 = t29.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA(t57) = VALUE string( ).
        DATA t58 TYPE REF TO zcl_lnt_abstract_file.
        DATA t59 TYPE REF TO zcl_lnt_abap_file.
        DATA(t60) = t7.
        t59 = t60.
        t58 = t59.
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t64 TYPE string.
        DATA(t65) = t58.
        t64 = t65->base_name( ).
        DATA(t66) = |.|.
        DATA(t67) = strlen( t64 ).
        DATA t68 TYPE i.
        DATA(t69) = VALUE i( ).
        DATA(t70) = VALUE i( ).
        DATA t71 TYPE i.
        DATA(t72) = VALUE string( ).
        CREATE OBJECT t63.
        t71 = strlen( t66 ).
        t68 = 0.
        IF t71 = 0.
          WHILE t68 < t67.
            t72 = t64+t68(1).
            APPEND t72 TO t63->items.
            t68 = t68 + 1.
          ENDWHILE.
        ELSE.
          WHILE t68 <= t67.
            FIND FIRST OCCURRENCE OF t66 IN SECTION OFFSET t68 OF t64 MATCH OFFSET t69.
            IF sy-subrc = 0.
              t70 = t69 - t68.
            ELSE.
              t69 = -1.
              t70 = t67 - t68.
            ENDIF.
            CLEAR t72.
            IF t70 > 0.
              t72 = t64+t68(t70).
            ENDIF.
            APPEND t72 TO t63->items.
            IF t69 < 0.
              EXIT.
            ENDIF.
            t68 = t69 + t71.
          ENDWHILE.
        ENDIF.
        t62 = t63.
        DATA(t73) = t62.
        DATA(t74) = 0.
        DATA(t75) = VALUE string( ).
        DATA(t76) = VALUE string( ).
        DATA(t77) = t62.
        IF t77->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t77->load( ).
        CLEAR t76.
        READ TABLE t77->items INDEX 1 INTO t76.
        DATA t78 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t78.
        DATA(t79) = |%23|.
        DATA(t80) = |g|.
        CREATE OBJECT t78 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t79 flags = t80 checked = abap_true.
        DATA(t81) = |#|.
        DATA(t82) = strlen( t76 ).
        t75 = t78->replace( p0 = t76 p1 = t81 ).
        t73->put( p0 = t74 p1 = t75 ).
        DATA(t83) = t62.
        DATA(t84) = 0.
        DATA(t85) = VALUE string( ).
        DATA(t86) = VALUE string( ).
        DATA(t87) = t62.
        IF t87->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t87->load( ).
        CLEAR t86.
        READ TABLE t87->items INDEX 1 INTO t86.
        DATA t88 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t88.
        DATA(t89) = |%3e|.
        DATA(t90) = |g|.
        CREATE OBJECT t88 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t89 flags = t90 checked = abap_true.
        DATA(t91) = |>|.
        DATA(t92) = strlen( t86 ).
        t85 = t88->replace( p0 = t86 p1 = t91 ).
        t83->put( p0 = t84 p1 = t85 ).
        DATA(t93) = t62.
        DATA(t94) = 0.
        DATA(t95) = VALUE string( ).
        DATA(t96) = VALUE string( ).
        DATA(t97) = t62.
        IF t97->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t97->load( ).
        CLEAR t96.
        READ TABLE t97->items INDEX 1 INTO t96.
        DATA t98 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t98.
        DATA(t99) = |%3c|.
        DATA(t100) = |g|.
        CREATE OBJECT t98 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t99 flags = t100 checked = abap_true.
        DATA(t101) = |<|.
        DATA(t102) = strlen( t96 ).
        t95 = t98->replace( p0 = t96 p1 = t101 ).
        t93->put( p0 = t94 p1 = t95 ).
        DATA(t103) = t62.
        DATA(t104) = 0.
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA(t107) = VALUE string( ).
        DATA(t108) = t62.
        IF t108->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t108->load( ).
        CLEAR t107.
        READ TABLE t108->items INDEX 1 INTO t107.
        DATA(t109) = strlen( t107 ).
        t106 = t107.
        IF t106 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t106 TO UPPER CASE.
        ELSE.
          t106 = zlnt_runtime_uppe_91169605024d=>full( t106 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t110.
        DATA(t111) = |#|.
        DATA(t112) = |g|.
        CREATE OBJECT t110 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t111 flags = t112 checked = abap_true.
        DATA(t113) = |/|.
        DATA(t114) = strlen( t106 ).
        t105 = t110->replace( p0 = t106 p1 = t113 ).
        t103->put( p0 = t104 p1 = t105 ).
        DATA(t115) = t62.
        DATA(t116) = 0.
        DATA(t117) = VALUE string( ).
        DATA(t118) = VALUE string( ).
        DATA(t119) = t62.
        IF t119->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t119->load( ).
        CLEAR t118.
        READ TABLE t119->items INDEX 1 INTO t118.
        DATA(t120) = |(|.
        DATA(t121) = |/|.
        DATA(t122) = strlen( t118 ).
        t117 = t118.
        REPLACE ALL OCCURRENCES OF t120 IN t117 WITH t121.
        t115->put( p0 = t116 p1 = t117 ).
        DATA(t123) = t62.
        DATA(t124) = 0.
        DATA(t125) = VALUE string( ).
        DATA(t126) = VALUE string( ).
        DATA(t127) = t62.
        IF t127->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t127->load( ).
        CLEAR t126.
        READ TABLE t127->items INDEX 1 INTO t126.
        DATA(t128) = |)|.
        DATA(t129) = |/|.
        DATA(t130) = strlen( t126 ).
        t125 = t126.
        REPLACE ALL OCCURRENCES OF t128 IN t125 WITH t129.
        t123->put( p0 = t124 p1 = t125 ).
        DATA(t131) = VALUE string( ).
        DATA(t132) = t62.
        IF t132->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t132->load( ).
        CLEAR t131.
        READ TABLE t132->items INDEX 1 INTO t131.
        t61 = t131.
        t57 = t61.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t57.
        t55 = t133.
      ELSE.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        t55 = t134.
      ENDIF.
      t23 = t24->get_object( i_type_9913 = t25 i_name = t55 ).
      t22 = t23.
      DATA t135 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t135.
      DATA t136 TYPE abap_bool.
      DATA(t137) = t22.
      t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t136 = abap_true.
        DATA t138 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t138.
        DATA(t139) = abap_true.
        IF t139 = abap_true.
          DATA t140 TYPE REF TO zcl_lnt_abap_object.
          DATA(t141) = t22.
          DATA t142 TYPE REF TO object.
          t142 = t141.
          t140 ?= t142.
          t138 = t140.
        ELSE.
          DATA t143 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t143.
          t138 = t143.
        ENDIF.
        t135 = t138.
      ELSE.
        DATA t144 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t144.
        t135 = t144.
      ENDIF.
      t21 = t135.
      t12 = t21.
    ENDIF.
    t6 = t12.
    t3 = t6.
    t2 = t3.
    DATA(t145) = VALUE abap_bool( ).
    DATA t146 TYPE REF TO zcl_lnt_abap_object.
    DATA(t147) = t2.
    t146 = t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    t148 = t149.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = t146.
    IF t151 IS INITIAL.
      t150 = abap_true.
    ENDIF.
    t145 = t150.
    IF t145 = abap_true.
      DATA t152 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t152.
      result = t152.
      RETURN.
    ENDIF.
    DATA t153 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t153.
    DATA(t154) = abap_true.
    IF t154 = abap_true.
      DATA t155 TYPE REF TO zif_lnt_spaghetti_scope.
      DATA t156 TYPE REF TO zcl_lnt_isyntax_result.
      DATA t157 TYPE REF TO zcl_lnt_syntax_logic.
      DATA(t158) = me->reg.
      DATA t159 TYPE REF TO zcl_lnt_abap_object.
      DATA(t160) = t2.
      t159 = t160.
      t157 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t158 i_object_19cd = t159 ).
      t156 = t157->run( ).
      t155 = t156->zlnt_view_read_sr_b6b1d9e0c93e( ).
      t153 = t155.
    ELSE.
      DATA t161 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t161.
      t153 = t161.
    ENDIF.
    result = t153.

  ENDMETHOD.

  METHOD find_object.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    t5 = t6->zlnt_view_read_no_0041136eb871( ).
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    t2 = t3.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_object.
    CLEAR t16.
    DATA(t17) = me->reg.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_abstract_file.
    DATA t20 TYPE REF TO zcl_lnt_abap_file.
    DATA(t21) = t2.
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t25 TYPE string.
    DATA(t26) = t19.
    t25 = t26->base_name( ).
    DATA(t27) = |.|.
    DATA(t28) = strlen( t25 ).
    DATA t29 TYPE i.
    DATA(t30) = VALUE i( ).
    DATA(t31) = VALUE i( ).
    DATA t32 TYPE i.
    DATA(t33) = VALUE string( ).
    CREATE OBJECT t24.
    t32 = strlen( t27 ).
    t29 = 0.
    IF t32 = 0.
      WHILE t29 < t28.
        t33 = t25+t29(1).
        APPEND t33 TO t24->items.
        t29 = t29 + 1.
      ENDWHILE.
    ELSE.
      WHILE t29 <= t28.
        FIND FIRST OCCURRENCE OF t27 IN SECTION OFFSET t29 OF t25 MATCH OFFSET t30.
        IF sy-subrc = 0.
          t31 = t30 - t29.
        ELSE.
          t30 = -1.
          t31 = t28 - t29.
        ENDIF.
        CLEAR t33.
        IF t31 > 0.
          t33 = t25+t29(t31).
        ENDIF.
        APPEND t33 TO t24->items.
        IF t30 < 0.
          EXIT.
        ENDIF.
        t29 = t30 + t32.
      ENDWHILE.
    ENDIF.
    t23 = t24.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t37) = t23.
    DATA(t38) = 1.
    t36 = t37->get( p0 = t38 ).
    t35 = t36.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = t35.
    IF t41 IS INITIAL.
      t40 = abap_true.
    ELSEIF t41->has = abap_false.
      t40 = abap_true.
    ENDIF.
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      t39 = t42.
    ELSE.
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA(t45) = t35.
      t44 = t45->value.
      DATA(t46) = strlen( t44 ).
      t43 = t44.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t43.
      t39 = t47.
    ENDIF.
    t34 = t39.
    t22 = t34.
    t18 = t22.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    DATA(t49) = abap_true.
    IF t49 = abap_true.
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE REF TO zcl_lnt_abstract_file.
      DATA t52 TYPE REF TO zcl_lnt_abap_file.
      DATA(t53) = t2.
      t52 = t53.
      t51 = t52.
      DATA(t54) = VALUE string( ).
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t57 TYPE string.
      DATA(t58) = t51.
      t57 = t58->base_name( ).
      DATA(t59) = |.|.
      DATA(t60) = strlen( t57 ).
      DATA t61 TYPE i.
      DATA(t62) = VALUE i( ).
      DATA(t63) = VALUE i( ).
      DATA t64 TYPE i.
      DATA(t65) = VALUE string( ).
      CREATE OBJECT t56.
      t64 = strlen( t59 ).
      t61 = 0.
      IF t64 = 0.
        WHILE t61 < t60.
          t65 = t57+t61(1).
          APPEND t65 TO t56->items.
          t61 = t61 + 1.
        ENDWHILE.
      ELSE.
        WHILE t61 <= t60.
          FIND FIRST OCCURRENCE OF t59 IN SECTION OFFSET t61 OF t57 MATCH OFFSET t62.
          IF sy-subrc = 0.
            t63 = t62 - t61.
          ELSE.
            t62 = -1.
            t63 = t60 - t61.
          ENDIF.
          CLEAR t65.
          IF t63 > 0.
            t65 = t57+t61(t63).
          ENDIF.
          APPEND t65 TO t56->items.
          IF t62 < 0.
            EXIT.
          ENDIF.
          t61 = t62 + t64.
        ENDWHILE.
      ENDIF.
      t55 = t56.
      DATA(t66) = t55.
      DATA(t67) = 0.
      DATA(t68) = VALUE string( ).
      DATA(t69) = VALUE string( ).
      DATA(t70) = t55.
      IF t70->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t70->load( ).
      CLEAR t69.
      READ TABLE t70->items INDEX 1 INTO t69.
      DATA t71 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t71.
      DATA(t72) = |%23|.
      DATA(t73) = |g|.
      CREATE OBJECT t71 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t72 flags = t73 checked = abap_true.
      DATA(t74) = |#|.
      DATA(t75) = strlen( t69 ).
      t68 = t71->replace( p0 = t69 p1 = t74 ).
      t66->put( p0 = t67 p1 = t68 ).
      DATA(t76) = t55.
      DATA(t77) = 0.
      DATA(t78) = VALUE string( ).
      DATA(t79) = VALUE string( ).
      DATA(t80) = t55.
      IF t80->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t80->load( ).
      CLEAR t79.
      READ TABLE t80->items INDEX 1 INTO t79.
      DATA t81 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t81.
      DATA(t82) = |%3e|.
      DATA(t83) = |g|.
      CREATE OBJECT t81 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t82 flags = t83 checked = abap_true.
      DATA(t84) = |>|.
      DATA(t85) = strlen( t79 ).
      t78 = t81->replace( p0 = t79 p1 = t84 ).
      t76->put( p0 = t77 p1 = t78 ).
      DATA(t86) = t55.
      DATA(t87) = 0.
      DATA(t88) = VALUE string( ).
      DATA(t89) = VALUE string( ).
      DATA(t90) = t55.
      IF t90->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t90->load( ).
      CLEAR t89.
      READ TABLE t90->items INDEX 1 INTO t89.
      DATA t91 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t91.
      DATA(t92) = |%3c|.
      DATA(t93) = |g|.
      CREATE OBJECT t91 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t92 flags = t93 checked = abap_true.
      DATA(t94) = |<|.
      DATA(t95) = strlen( t89 ).
      t88 = t91->replace( p0 = t89 p1 = t94 ).
      t86->put( p0 = t87 p1 = t88 ).
      DATA(t96) = t55.
      DATA(t97) = 0.
      DATA(t98) = VALUE string( ).
      DATA(t99) = VALUE string( ).
      DATA(t100) = VALUE string( ).
      DATA(t101) = t55.
      IF t101->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t101->load( ).
      CLEAR t100.
      READ TABLE t101->items INDEX 1 INTO t100.
      DATA(t102) = strlen( t100 ).
      t99 = t100.
      IF t99 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t99 TO UPPER CASE.
      ELSE.
        t99 = zlnt_runtime_uppe_91169605024d=>full( t99 ).
      ENDIF.
      DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t103.
      DATA(t104) = |#|.
      DATA(t105) = |g|.
      CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t104 flags = t105 checked = abap_true.
      DATA(t106) = |/|.
      DATA(t107) = strlen( t99 ).
      t98 = t103->replace( p0 = t99 p1 = t106 ).
      t96->put( p0 = t97 p1 = t98 ).
      DATA(t108) = t55.
      DATA(t109) = 0.
      DATA(t110) = VALUE string( ).
      DATA(t111) = VALUE string( ).
      DATA(t112) = t55.
      IF t112->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t112->load( ).
      CLEAR t111.
      READ TABLE t112->items INDEX 1 INTO t111.
      DATA(t113) = |(|.
      DATA(t114) = |/|.
      DATA(t115) = strlen( t111 ).
      t110 = t111.
      REPLACE ALL OCCURRENCES OF t113 IN t110 WITH t114.
      t108->put( p0 = t109 p1 = t110 ).
      DATA(t116) = t55.
      DATA(t117) = 0.
      DATA(t118) = VALUE string( ).
      DATA(t119) = VALUE string( ).
      DATA(t120) = t55.
      IF t120->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t120->load( ).
      CLEAR t119.
      READ TABLE t120->items INDEX 1 INTO t119.
      DATA(t121) = |)|.
      DATA(t122) = |/|.
      DATA(t123) = strlen( t119 ).
      t118 = t119.
      REPLACE ALL OCCURRENCES OF t121 IN t118 WITH t122.
      t116->put( p0 = t117 p1 = t118 ).
      DATA(t124) = VALUE string( ).
      DATA(t125) = t55.
      IF t125->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t125->load( ).
      CLEAR t124.
      READ TABLE t125->items INDEX 1 INTO t124.
      t54 = t124.
      t50 = t54.
      DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t126->has = abap_true.
      t126->value = t50.
      t48 = t126.
    ELSE.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t127.
      t48 = t127.
    ENDIF.
    t16 = t17->get_object( i_type_9913 = t18 i_name = t48 ).
    t15 = t16.
    DATA t128 TYPE abap_bool.
    DATA(t129) = t15.
    t128 = xsdbool( t129 IS BOUND AND t129 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t128 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t130.
      DATA(t131) = abap_true.
      IF t131 = abap_true.
        DATA t132 TYPE REF TO zcl_lnt_abap_object.
        DATA(t133) = t15.
        DATA t134 TYPE REF TO object.
        t134 = t133.
        t132 ?= t134.
        t130 = t132.
      ELSE.
        DATA t135 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t135.
        t130 = t135.
      ENDIF.
      result = t130.
      RETURN.
    ELSE.
      DATA t136 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t136.
      result = t136.

    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1169_66efdac3028a.
  ENDMETHOD.
ENDCLASS.
