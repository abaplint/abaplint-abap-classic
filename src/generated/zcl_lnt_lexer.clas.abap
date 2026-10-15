* TS: src/abap/1_lexer/lexer.ts:56:1 Lexer
CLASS zcl_lnt_lexer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA virtual TYPE REF TO zcl_lnt_position.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA m TYPE f.
    DATA stream TYPE REF TO zcl_lnt_lexer_stream.
    DATA buffer TYPE REF TO zcl_lnt_lexer_buffer.
    METHODS run IMPORTING i_file TYPE REF TO zif_lnt_file i_virtual TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabaplexer_result.
    METHODS add_51c1.
    METHODS process IMPORTING i_raw TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_3bfe63ca77b3 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_lexer IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_file.
    DATA(t2) = i_virtual.
    DATA(t3) = t2.
    me->virtual = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `virtual`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->tokens = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    DATA t5 TYPE f.
    DATA(t6) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
    t5 = t6.
    me->m = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
    DATA t7 TYPE string.
    DATA(t8) = t1.
    t7 = t8->get_raw( ).
    me->process( i_raw = t7 ).
    DATA t9 TYPE REF TO zcl_lnt_iabaplexer_result.
    DATA t10 TYPE REF TO zif_lnt_file.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = me->tokens.
    t12 = t13.
    t9 = NEW zcl_lnt_iabaplexer_result( i_file = t10 i_tokens = t12 ).
    CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
    t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t15 ).
    ENDIF.
    CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
    t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t16) = |file|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    DATA(t18) = |tokens|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    result = t9.

  ENDMETHOD.

  METHOD add_51c1.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE REF TO zcl_lnt_lexer_buffer.
    DATA(t5) = me->buffer.
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE string.
    DATA(t8) = t4.
    t7 = t8->raw.
    DATA t9 TYPE i.
    DATA(t10) = t4.
    t9 = t10->start.
    DATA t11 TYPE i.
    DATA(t12) = t4.
    t11 = t12->end.
    DATA(t13) = strlen( t7 ).
    t9 = COND i( WHEN t9 < 0 THEN 0 WHEN t9 > t13 THEN t13 ELSE t9 ).
    t11 = COND i( WHEN t11 < 0 THEN 0 WHEN t11 > t13 THEN t13 ELSE t11 ).
    IF t9 > t11.
      t13 = t9.
      t9 = t11.
      t11 = t13.
    ENDIF.
    t13 = t11 - t9.
    t6 = t7+t9(t13).
    t3 = t6.
    DATA(t14) = strlen( t3 ).
    DATA t15 TYPE i.
    DATA t16 TYPE i.
    t15 = 0.
    t16 = t14.
    DATA(t17) = VALUE i( ).
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE string( ).
    WHILE t15 < t16.
      t18 = t15.
      t19 = t3+t18(1).
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      DATA(t21) = VALUE xstring( ).
      DATA t22 TYPE x LENGTH 1.
      CLEAR t22.
      DATA t23 TYPE x LENGTH 1.
      CLEAR t23.
      DATA(t24) = VALUE i( ).
      t20 = t19.
      t17 = cl_abap_conv_out_ce=>uccpi( t20 ).
      IF t17 >= 255.
        IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
          zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t19 IMPORTING buffer = t21 ).
        t22 = t21(1).
        t23 = t21+1(1).
        t17 = t22.
        t24 = t23.
        t17 = t17 + t24 * 256.
      ENDIF.
      IF t17 = 9 OR t17 = 10 OR t17 = 11 OR t17 = 12 OR t17 = 13 OR t17 = 32 OR t17 = 160 OR t17 = 5760 OR t17 = 8232 OR t17 = 8233 OR t17 = 8239 OR t17 = 8287 OR t17 = 12288 OR t17 = 65279 OR t17 >= 8192 AND t17 <= 8202.
        t15 = t15 + 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    DATA(t25) = VALUE i( ).
    DATA(t26) = VALUE i( ).
    DATA(t27) = VALUE string( ).
    WHILE t16 > t15.
      t26 = t16 - 1.
      t27 = t3+t26(1).
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      DATA(t29) = VALUE xstring( ).
      DATA t30 TYPE x LENGTH 1.
      CLEAR t30.
      DATA t31 TYPE x LENGTH 1.
      CLEAR t31.
      DATA(t32) = VALUE i( ).
      t28 = t27.
      t25 = cl_abap_conv_out_ce=>uccpi( t28 ).
      IF t25 >= 255.
        IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
          zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t27 IMPORTING buffer = t29 ).
        t30 = t29(1).
        t31 = t29+1(1).
        t25 = t30.
        t32 = t31.
        t25 = t25 + t32 * 256.
      ENDIF.
      IF t25 = 9 OR t25 = 10 OR t25 = 11 OR t25 = 12 OR t25 = 13 OR t25 = 32 OR t25 = 160 OR t25 = 5760 OR t25 = 8232 OR t25 = 8233 OR t25 = 8239 OR t25 = 8287 OR t25 = 12288 OR t25 = 65279 OR t25 >= 8192 AND t25 <= 8202.
        t16 = t16 - 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    IF t16 > t15.
      t14 = t16 - t15.
      t2 = t3+t15(t14).
    ELSE.
      CLEAR t2.
    ENDIF.
    t1 = t2.
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE i.
    DATA(t35) = t1.
    DATA(t36) = strlen( t35 ).
    t34 = t36.
    DATA(t37) = 0.
    t33 = xsdbool( t34 > t37 ).
    IF t33 = abap_true.
      DATA t38 TYPE f.
      DATA t39 TYPE f.
      DATA t40 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t41) = me->stream.
      t40 = t41.
      DATA t42 TYPE f.
      DATA(t43) = t40.
      t42 = t43->col.
      t39 = t42.
      t38 = t39.
      DATA t44 TYPE f.
      DATA t45 TYPE f.
      DATA t46 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t47) = me->stream.
      t46 = t47.
      DATA t48 TYPE f.
      DATA(t49) = t46.
      t48 = t49->row.
      t45 = t48.
      t44 = t45.
      DATA t50 TYPE abap_bool.
      DATA(t51) = abap_false.
      t50 = t51.
      DATA t52 TYPE i.
      DATA t53 TYPE i.
      DATA t54 TYPE i.
      DATA t55 TYPE f.
      DATA t56 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t57) = me->stream.
      t56 = t57.
      DATA t58 TYPE f.
      DATA t59 TYPE i.
      DATA(t60) = t56.
      t59 = t60->offset.
      t58 = t59.
      t55 = t58.
      t54 = t55.
      DATA t61 TYPE i.
      DATA(t62) = t1.
      DATA(t63) = strlen( t62 ).
      t61 = t63.
      t53 = t54 - t61.
      t52 = t53.
      DATA t64 TYPE abap_bool.
      DATA(t65) = t52.
      DATA(t66) = 0.
      t64 = xsdbool( t65 >= t66 ).
      IF t64 = abap_true.
        DATA(t67) = VALUE i( ).
        DATA(t68) = VALUE i( ).
        DATA(t69) = VALUE f( ).
        DATA t70 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t71) = me->stream.
        t70 = t71.
        DATA t72 TYPE f.
        DATA t73 TYPE f.
        DATA(t74) = t52.
        t73 = t74.
        t72 = t73.
        DATA(t75) = VALUE f( ).
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE abap_bool.
        DATA(t78) = t72.
        DATA(t79) = CONV f( 0 ).
        t77 = xsdbool( t78 < t79 ).
        t76 = t77.
        IF t77 = abap_false.
          DATA t80 TYPE abap_bool.
          DATA(t81) = t72.
          DATA t82 TYPE f.
          DATA t83 TYPE i.
          DATA t84 TYPE string.
          DATA(t85) = t70.
          t84 = t85->raw.
          DATA(t86) = strlen( t84 ).
          t83 = t86.
          t82 = t83.
          t80 = xsdbool( t81 >= t82 ).
          t76 = t80.
        ENDIF.
        IF t76 = abap_true.
          DATA t87 TYPE f.
          DATA(t88) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t87 = t88.
          t75 = t87.
        ELSE.
          DATA(t89) = VALUE f( ).
          DATA(t90) = VALUE i( ).
          DATA t91 TYPE string.
          DATA(t92) = t70.
          t91 = t92->raw.
          DATA(t93) = VALUE i( ).
          DATA(t94) = t72.
          IF t94 > range_i32_upper.
            t93 = range_i32_upper.
          ELSEIF t94 < range_i32_lower.
            t93 = range_i32_lower.
          ELSE.
            t93 = trunc( t94 ).
          ENDIF.
          DATA(t95) = strlen( t91 ).
          IF t93 < 0 OR t93 >= t95.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t96) = CONV string( t91+t93(1) ).
          DATA t97 TYPE c LENGTH 1.
          CLEAR t97.
          DATA(t98) = VALUE xstring( ).
          DATA t99 TYPE x LENGTH 1.
          CLEAR t99.
          DATA t100 TYPE x LENGTH 1.
          CLEAR t100.
          DATA(t101) = VALUE i( ).
          t97 = t96.
          t90 = cl_abap_conv_out_ce=>uccpi( t97 ).
          IF t90 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t96 IMPORTING buffer = t98 ).
            t99 = t98(1).
            t100 = t98+1(1).
            t90 = t99.
            t101 = t100.
            t90 = t90 + t101 * 256.
          ENDIF.
          t89 = t90.
          t75 = t89.
        ENDIF.
        t69 = t75.
        t68 = t69.
        t67 = t68.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE abap_bool.
        DATA t105 TYPE abap_bool.
        DATA(t106) = t67.
        DATA(t107) = CONV i( zcl_lnt_lexer_module=>ch_space ).
        t105 = xsdbool( t106 = t107 ).
        t104 = t105.
        IF t105 = abap_false.
          DATA t108 TYPE abap_bool.
          DATA(t109) = t67.
          DATA(t110) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
          t108 = xsdbool( t109 = t110 ).
          t104 = t108.
        ENDIF.
        t103 = t104.
        IF t104 = abap_false.
          DATA t111 TYPE abap_bool.
          DATA(t112) = t67.
          DATA(t113) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
          t111 = xsdbool( t112 = t113 ).
          t103 = t111.
        ENDIF.
        t102 = t103.
        IF t103 = abap_false.
          DATA t114 TYPE abap_bool.
          DATA(t115) = t67.
          DATA(t116) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
          t114 = xsdbool( t115 = t116 ).
          t102 = t114.
        ENDIF.
        IF t102 = abap_true.
          DATA(t117) = abap_true.
          t50 = t117.
        ENDIF.
      ENDIF.
      DATA t118 TYPE abap_bool.
      DATA(t119) = abap_false.
      t118 = t119.
      DATA(t120) = VALUE i( ).
      DATA(t121) = VALUE i( ).
      DATA(t122) = VALUE f( ).
      DATA t123 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t124) = me->stream.
      t123 = t124.
      DATA(t125) = VALUE f( ).
      DATA t126 TYPE int8.
      DATA t127 TYPE int8.
      DATA t128 TYPE int8.
      DATA t129 TYPE i.
      DATA(t130) = t123.
      t129 = t130->offset.
      t128 = t129.
      DATA(t131) = CONV int8( 1 ).
      t127 = t128 + t131.
      t126 = t127.
      DATA(t132) = VALUE f( ).
      DATA t133 TYPE abap_bool.
      DATA(t134) = t126.
      DATA t135 TYPE int8.
      DATA t136 TYPE i.
      DATA t137 TYPE string.
      DATA(t138) = t123.
      t137 = t138->raw.
      DATA(t139) = strlen( t137 ).
      t136 = t139.
      t135 = t136.
      t133 = xsdbool( t134 >= t135 ).
      IF t133 = abap_true.
        DATA t140 TYPE f.
        DATA(t141) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t140 = t141.
        t132 = t140.
      ELSE.
        DATA(t142) = VALUE f( ).
        DATA(t143) = VALUE i( ).
        DATA t144 TYPE string.
        DATA(t145) = t123.
        t144 = t145->raw.
        DATA t146 TYPE i.
        DATA(t147) = t126.
        t146 = t147.
        DATA(t148) = strlen( t144 ).
        IF t146 < 0 OR t146 >= t148.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t149) = CONV string( t144+t146(1) ).
        DATA t150 TYPE c LENGTH 1.
        CLEAR t150.
        DATA(t151) = VALUE xstring( ).
        DATA t152 TYPE x LENGTH 1.
        CLEAR t152.
        DATA t153 TYPE x LENGTH 1.
        CLEAR t153.
        DATA(t154) = VALUE i( ).
        t150 = t149.
        t143 = cl_abap_conv_out_ce=>uccpi( t150 ).
        IF t143 >= 255.
          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t149 IMPORTING buffer = t151 ).
          t152 = t151(1).
          t153 = t151+1(1).
          t143 = t152.
          t154 = t153.
          t143 = t143 + t154 * 256.
        ENDIF.
        t142 = t143.
        t132 = t142.
      ENDIF.
      t125 = t132.
      t122 = t125.
      t121 = t122.
      t120 = t121.
      DATA(t155) = VALUE abap_bool( ).
      DATA(t156) = VALUE abap_bool( ).
      DATA(t157) = VALUE abap_bool( ).
      DATA(t158) = VALUE abap_bool( ).
      DATA(t159) = VALUE abap_bool( ).
      DATA(t160) = VALUE abap_bool( ).
      DATA t161 TYPE abap_bool.
      DATA t162 TYPE abap_bool.
      DATA(t163) = t120.
      DATA(t164) = CONV i( zcl_lnt_lexer_module=>ch_space ).
      t162 = xsdbool( t163 = t164 ).
      t161 = t162.
      IF t162 = abap_false.
        DATA t165 TYPE abap_bool.
        DATA(t166) = t120.
        DATA(t167) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
        t165 = xsdbool( t166 = t167 ).
        t161 = t165.
      ENDIF.
      t160 = t161.
      IF t161 = abap_false.
        DATA t168 TYPE abap_bool.
        DATA(t169) = t120.
        DATA(t170) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
        t168 = xsdbool( t169 = t170 ).
        t160 = t168.
      ENDIF.
      t159 = t160.
      IF t160 = abap_false.
        DATA t171 TYPE abap_bool.
        DATA(t172) = t120.
        DATA(t173) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
        t171 = xsdbool( t172 = t173 ).
        t159 = t171.
      ENDIF.
      t158 = t159.
      IF t159 = abap_false.
        DATA t174 TYPE abap_bool.
        DATA(t175) = t120.
        DATA(t176) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
        t174 = xsdbool( t175 = t176 ).
        t158 = t174.
      ENDIF.
      t157 = t158.
      IF t158 = abap_false.
        DATA t177 TYPE abap_bool.
        DATA(t178) = t120.
        DATA(t179) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
        t177 = xsdbool( t178 = t179 ).
        t157 = t177.
      ENDIF.
      t156 = t157.
      IF t157 = abap_false.
        DATA t180 TYPE abap_bool.
        DATA(t181) = t120.
        DATA(t182) = CONV i( zcl_lnt_lexer_module=>eof ).
        t180 = xsdbool( t181 = t182 ).
        t156 = t180.
      ENDIF.
      t155 = t156.
      IF t156 = abap_false.
        DATA t183 TYPE abap_bool.
        DATA(t184) = t120.
        DATA(t185) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
        t183 = xsdbool( t184 = t185 ).
        t155 = t183.
      ENDIF.
      IF t155 = abap_true.
        DATA(t186) = abap_true.
        t118 = t186.
      ENDIF.
      DATA t187 TYPE REF TO zcl_lnt_position.
      DATA t188 TYPE REF TO zcl_lnt_position.
      DATA(t189) = t44.
      DATA t190 TYPE f.
      DATA(t191) = t38.
      DATA t192 TYPE f.
      DATA t193 TYPE i.
      DATA(t194) = t1.
      DATA(t195) = strlen( t194 ).
      t193 = t195.
      t192 = t193.
      t190 = t191 - t192.
      DATA(t196) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t196->has = abap_true.
      t196->value = t190.
      t188 = NEW zcl_lnt_position( i_row = t189 i_col = t196 ).
      t187 = t188.
      DATA t197 TYPE abap_bool.
      DATA(t198) = me->virtual.
      t197 = xsdbool( t198 IS BOUND ).
      IF t197 = abap_true.
        DATA t199 TYPE REF TO zcl_lnt_virtual_position.
        DATA t200 TYPE REF TO zcl_lnt_position.
        DATA(t201) = me->virtual.
        t200 = t201.
        DATA t202 TYPE f.
        DATA t203 TYPE REF TO zcl_lnt_position.
        DATA(t204) = t187.
        t203 = t204.
        DATA t205 TYPE f.
        DATA(t206) = t203.
        t205 = t206->row.
        t202 = t205.
        DATA t207 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t208 TYPE REF TO zcl_lnt_position.
        DATA(t209) = t187.
        t208 = t209.
        DATA t210 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t211) = t208.
        t210 = t211->col.
        t207 = t210.
        t199 = NEW zcl_lnt_virtual_position( i_virtual = t200 i_row = t202 i_col = t207 ).
        t187 = t199.
      ENDIF.
      DATA t212 TYPE REF TO zcl_lnt_abstract_token.
      DATA t213 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t213.
      t212 = t213.
      DATA t214 TYPE abap_bool.
      DATA(t215) = CONV f( me->m ).
      DATA t216 TYPE f.
      DATA(t217) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
      t216 = t217.
      t214 = xsdbool( t215 = t216 ).
      IF t214 = abap_true.
        DATA t218 TYPE REF TO zcl_lnt_lx_comment.
        DATA(t219) = t187.
        DATA(t220) = t1.
        t218 = NEW zcl_lnt_lx_comment( i_start = t219 i_str = t220 ).
        t212 = t218.
      ELSE.
        DATA t221 TYPE abap_bool.
        DATA t222 TYPE abap_bool.
        DATA(t223) = CONV f( me->m ).
        DATA t224 TYPE f.
        DATA(t225) = CONV i( zcl_lnt_lexer_module=>mode_ping ).
        t224 = t225.
        t222 = xsdbool( t223 = t224 ).
        t221 = t222.
        IF t222 = abap_false.
          DATA t226 TYPE abap_bool.
          DATA(t227) = CONV f( me->m ).
          DATA t228 TYPE f.
          DATA(t229) = CONV i( zcl_lnt_lexer_module=>mode_str ).
          t228 = t229.
          t226 = xsdbool( t227 = t228 ).
          t221 = t226.
        ENDIF.
        IF t221 = abap_true.
          DATA t230 TYPE REF TO zcl_lnt_string_token.
          DATA(t231) = t187.
          DATA(t232) = t1.
          t230 = NEW zcl_lnt_string_token( i_start = t231 i_str = t232 ).
          t212 = t230.
        ELSE.
          DATA t233 TYPE abap_bool.
          DATA(t234) = CONV f( me->m ).
          DATA t235 TYPE f.
          DATA(t236) = CONV i( zcl_lnt_lexer_module=>mode_template ).
          t235 = t236.
          t233 = xsdbool( t234 = t235 ).
          IF t233 = abap_true.
            DATA(t237) = VALUE string( ).
            DATA(t238) = VALUE string( ).
            DATA(t239) = t1.
            DATA(t240) = 0.
            DATA(t241) = strlen( t239 ).
            IF t240 < 0 OR t240 >= t241.
              CLEAR t238.
            ELSE.
              t238 = t239+t240(1).
            ENDIF.
            t237 = t238.
            DATA(t242) = VALUE string( ).
            DATA(t243) = VALUE string( ).
            DATA(t244) = t1.
            DATA t245 TYPE i.
            DATA t246 TYPE i.
            DATA(t247) = t1.
            DATA(t248) = strlen( t247 ).
            t246 = t248.
            DATA(t249) = 1.
            t245 = t246 - t249.
            DATA(t250) = strlen( t244 ).
            IF t245 < 0 OR t245 >= t250.
              CLEAR t243.
            ELSE.
              t243 = t244+t245(1).
            ENDIF.
            t242 = t243.
            DATA t251 TYPE abap_bool.
            DATA t252 TYPE abap_bool.
            DATA(t253) = t237.
            DATA(t254) = |\||.
            t252 = xsdbool( t253 = t254 ).
            t251 = t252.
            IF t252 = abap_true.
              DATA t255 TYPE abap_bool.
              DATA(t256) = t242.
              DATA(t257) = |\||.
              t255 = xsdbool( t256 = t257 ).
              t251 = t255.
            ENDIF.
            IF t251 = abap_true.
              DATA t258 TYPE REF TO zcl_lnt_lx_string_template.
              DATA(t259) = t187.
              DATA(t260) = t1.
              t258 = NEW zcl_lnt_lx_string_template( i_start = t259 i_str = t260 ).
              t212 = t258.
            ELSE.
              DATA(t261) = VALUE abap_bool( ).
              DATA t262 TYPE abap_bool.
              DATA t263 TYPE abap_bool.
              DATA(t264) = t237.
              DATA(t265) = |\||.
              t263 = xsdbool( t264 = t265 ).
              t262 = t263.
              IF t263 = abap_true.
                DATA t266 TYPE abap_bool.
                DATA(t267) = t242.
                DATA(t268) = |\{|.
                t266 = xsdbool( t267 = t268 ).
                t262 = t266.
              ENDIF.
              t261 = t262.
              IF t262 = abap_true.
                DATA t269 TYPE abap_bool.
                DATA(t270) = t118.
                DATA(t271) = abap_true.
                t269 = xsdbool( t270 = t271 ).
                t261 = t269.
              ENDIF.
              IF t261 = abap_true.
                DATA t272 TYPE REF TO zcl_lnt_string_template_begin.
                DATA(t273) = t187.
                DATA(t274) = t1.
                t272 = NEW zcl_lnt_string_template_begin( i_start = t273 i_str = t274 ).
                t212 = t272.
              ELSE.
                DATA(t275) = VALUE abap_bool( ).
                DATA t276 TYPE abap_bool.
                DATA t277 TYPE abap_bool.
                DATA(t278) = t237.
                DATA(t279) = |\}|.
                t277 = xsdbool( t278 = t279 ).
                t276 = t277.
                IF t277 = abap_true.
                  DATA t280 TYPE abap_bool.
                  DATA(t281) = t242.
                  DATA(t282) = |\||.
                  t280 = xsdbool( t281 = t282 ).
                  t276 = t280.
                ENDIF.
                t275 = t276.
                IF t276 = abap_true.
                  DATA t283 TYPE abap_bool.
                  DATA(t284) = t50.
                  DATA(t285) = abap_true.
                  t283 = xsdbool( t284 = t285 ).
                  t275 = t283.
                ENDIF.
                IF t275 = abap_true.
                  DATA t286 TYPE REF TO zcl_lnt_string_template_end.
                  DATA(t287) = t187.
                  DATA(t288) = t1.
                  t286 = NEW zcl_lnt_string_template_end( i_start = t287 i_str = t288 ).
                  t212 = t286.
                ELSE.
                  DATA(t289) = VALUE abap_bool( ).
                  DATA(t290) = VALUE abap_bool( ).
                  DATA t291 TYPE abap_bool.
                  DATA t292 TYPE abap_bool.
                  DATA(t293) = t237.
                  DATA(t294) = |\}|.
                  t292 = xsdbool( t293 = t294 ).
                  t291 = t292.
                  IF t292 = abap_true.
                    DATA t295 TYPE abap_bool.
                    DATA(t296) = t242.
                    DATA(t297) = |\{|.
                    t295 = xsdbool( t296 = t297 ).
                    t291 = t295.
                  ENDIF.
                  t290 = t291.
                  IF t291 = abap_true.
                    DATA t298 TYPE abap_bool.
                    DATA(t299) = t118.
                    DATA(t300) = abap_true.
                    t298 = xsdbool( t299 = t300 ).
                    t290 = t298.
                  ENDIF.
                  t289 = t290.
                  IF t290 = abap_true.
                    DATA t301 TYPE abap_bool.
                    DATA(t302) = t50.
                    DATA(t303) = abap_true.
                    t301 = xsdbool( t302 = t303 ).
                    t289 = t301.
                  ENDIF.
                  IF t289 = abap_true.
                    DATA t304 TYPE REF TO zcl_lnt_string_template_middle.
                    DATA(t305) = t187.
                    DATA(t306) = t1.
                    t304 = NEW zcl_lnt_string_template_middle( i_start = t305 i_str = t306 ).
                    t212 = t304.
                  ELSE.
                    DATA t307 TYPE REF TO zcl_lnt_lx_identifier.
                    DATA(t308) = t187.
                    DATA(t309) = t1.
                    t307 = NEW zcl_lnt_lx_identifier( i_start = t308 i_str = t309 ).
                    t212 = t307.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t310 TYPE abap_bool.
            DATA t311 TYPE abap_bool.
            DATA t312 TYPE i.
            DATA(t313) = t1.
            DATA(t314) = strlen( t313 ).
            t312 = t314.
            DATA(t315) = 2.
            t311 = xsdbool( t312 > t315 ).
            t310 = t311.
            IF t311 = abap_true.
              DATA(t316) = VALUE abap_bool( ).
              DATA(t317) = VALUE string( ).
              DATA(t318) = t1.
              DATA(t319) = 0.
              DATA(t320) = 2.
              DATA(t321) = strlen( t318 ).
              IF t319 < 0.
                t319 = t319 + t321.
                IF t319 < 0.
                  t319 = 0.
                ENDIF.
              ENDIF.
              IF t319 > t321 OR t320 <= 0.
                CLEAR t317.
              ELSE.
                IF t320 > t321 - t319.
                  t320 = t321 - t319.
                ENDIF.
                t317 = t318+t319(t320).
              ENDIF.
              DATA(t322) = |##|.
              t316 = xsdbool( t317 = t322 ).
              t310 = t316.
            ENDIF.
            IF t310 = abap_true.
              DATA t323 TYPE REF TO zcl_lnt_pragma.
              DATA(t324) = t187.
              DATA(t325) = t1.
              t323 = NEW zcl_lnt_pragma( i_start = t324 i_str = t325 ).
              t212 = t323.
            ELSE.
              DATA t326 TYPE abap_bool.
              DATA t327 TYPE i.
              DATA(t328) = t1.
              DATA(t329) = strlen( t328 ).
              t327 = t329.
              DATA(t330) = 1.
              t326 = xsdbool( t327 = t330 ).
              IF t326 = abap_true.
                DATA t331 TYPE abap_bool.
                DATA t332 TYPE abap_bool.
                DATA(t333) = t1.
                DATA(t334) = |.|.
                t332 = xsdbool( t333 = t334 ).
                t331 = t332.
                IF t332 = abap_false.
                  DATA t335 TYPE abap_bool.
                  DATA(t336) = t1.
                  DATA(t337) = |,|.
                  t335 = xsdbool( t336 = t337 ).
                  t331 = t335.
                ENDIF.
                IF t331 = abap_true.
                  DATA t338 TYPE REF TO zcl_lnt_punctuation.
                  DATA(t339) = t187.
                  DATA(t340) = t1.
                  t338 = NEW zcl_lnt_punctuation( i_start = t339 i_str = t340 ).
                  t212 = t338.
                ELSE.
                  DATA t341 TYPE abap_bool.
                  DATA(t342) = t1.
                  DATA(t343) = |[|.
                  t341 = xsdbool( t342 = t343 ).
                  IF t341 = abap_true.
                    DATA t344 TYPE abap_bool.
                    DATA t345 TYPE abap_bool.
                    DATA(t346) = t50.
                    DATA(t347) = abap_true.
                    t345 = xsdbool( t346 = t347 ).
                    t344 = t345.
                    IF t345 = abap_true.
                      DATA t348 TYPE abap_bool.
                      DATA(t349) = t118.
                      DATA(t350) = abap_true.
                      t348 = xsdbool( t349 = t350 ).
                      t344 = t348.
                    ENDIF.
                    IF t344 = abap_true.
                      DATA t351 TYPE REF TO zcl_lnt_w_bracket_left_w.
                      DATA(t352) = t187.
                      DATA(t353) = t1.
                      t351 = NEW zcl_lnt_w_bracket_left_w( i_start = t352 i_str = t353 ).
                      t212 = t351.
                    ELSE.
                      DATA t354 TYPE abap_bool.
                      DATA(t355) = t50.
                      DATA(t356) = abap_true.
                      t354 = xsdbool( t355 = t356 ).
                      IF t354 = abap_true.
                        DATA t357 TYPE REF TO zcl_lnt_w_bracket_left.
                        DATA(t358) = t187.
                        DATA(t359) = t1.
                        t357 = NEW zcl_lnt_w_bracket_left( i_start = t358 i_str = t359 ).
                        t212 = t357.
                      ELSE.
                        DATA t360 TYPE abap_bool.
                        DATA(t361) = t118.
                        DATA(t362) = abap_true.
                        t360 = xsdbool( t361 = t362 ).
                        IF t360 = abap_true.
                          DATA t363 TYPE REF TO zcl_lnt_bracket_left_w.
                          DATA(t364) = t187.
                          DATA(t365) = t1.
                          t363 = NEW zcl_lnt_bracket_left_w( i_start = t364 i_str = t365 ).
                          t212 = t363.
                        ELSE.
                          DATA t366 TYPE REF TO zcl_lnt_bracket_left.
                          DATA(t367) = t187.
                          DATA(t368) = t1.
                          t366 = NEW zcl_lnt_bracket_left( i_start = t367 i_str = t368 ).
                          t212 = t366.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA t369 TYPE abap_bool.
                    DATA(t370) = t1.
                    DATA(t371) = |(|.
                    t369 = xsdbool( t370 = t371 ).
                    IF t369 = abap_true.
                      DATA t372 TYPE abap_bool.
                      DATA t373 TYPE abap_bool.
                      DATA(t374) = t50.
                      DATA(t375) = abap_true.
                      t373 = xsdbool( t374 = t375 ).
                      t372 = t373.
                      IF t373 = abap_true.
                        DATA t376 TYPE abap_bool.
                        DATA(t377) = t118.
                        DATA(t378) = abap_true.
                        t376 = xsdbool( t377 = t378 ).
                        t372 = t376.
                      ENDIF.
                      IF t372 = abap_true.
                        DATA t379 TYPE REF TO zcl_lnt_w_paren_left_w.
                        DATA(t380) = t187.
                        DATA(t381) = t1.
                        t379 = NEW zcl_lnt_w_paren_left_w( i_start = t380 i_str = t381 ).
                        t212 = t379.
                      ELSE.
                        DATA t382 TYPE abap_bool.
                        DATA(t383) = t50.
                        DATA(t384) = abap_true.
                        t382 = xsdbool( t383 = t384 ).
                        IF t382 = abap_true.
                          DATA t385 TYPE REF TO zcl_lnt_w_paren_left.
                          DATA(t386) = t187.
                          DATA(t387) = t1.
                          t385 = NEW zcl_lnt_w_paren_left( i_start = t386 i_str = t387 ).
                          t212 = t385.
                        ELSE.
                          DATA t388 TYPE abap_bool.
                          DATA(t389) = t118.
                          DATA(t390) = abap_true.
                          t388 = xsdbool( t389 = t390 ).
                          IF t388 = abap_true.
                            DATA t391 TYPE REF TO zcl_lnt_paren_left_w.
                            DATA(t392) = t187.
                            DATA(t393) = t1.
                            t391 = NEW zcl_lnt_paren_left_w( i_start = t392 i_str = t393 ).
                            t212 = t391.
                          ELSE.
                            DATA t394 TYPE REF TO zcl_lnt_paren_left.
                            DATA(t395) = t187.
                            DATA(t396) = t1.
                            t394 = NEW zcl_lnt_paren_left( i_start = t395 i_str = t396 ).
                            t212 = t394.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ELSE.
                      DATA t397 TYPE abap_bool.
                      DATA(t398) = t1.
                      DATA(t399) = |]|.
                      t397 = xsdbool( t398 = t399 ).
                      IF t397 = abap_true.
                        DATA t400 TYPE abap_bool.
                        DATA t401 TYPE abap_bool.
                        DATA(t402) = t50.
                        DATA(t403) = abap_true.
                        t401 = xsdbool( t402 = t403 ).
                        t400 = t401.
                        IF t401 = abap_true.
                          DATA t404 TYPE abap_bool.
                          DATA(t405) = t118.
                          DATA(t406) = abap_true.
                          t404 = xsdbool( t405 = t406 ).
                          t400 = t404.
                        ENDIF.
                        IF t400 = abap_true.
                          DATA t407 TYPE REF TO zcl_lnt_w_bracket_right_w.
                          DATA(t408) = t187.
                          DATA(t409) = t1.
                          t407 = NEW zcl_lnt_w_bracket_right_w( i_start = t408 i_str = t409 ).
                          t212 = t407.
                        ELSE.
                          DATA t410 TYPE abap_bool.
                          DATA(t411) = t50.
                          DATA(t412) = abap_true.
                          t410 = xsdbool( t411 = t412 ).
                          IF t410 = abap_true.
                            DATA t413 TYPE REF TO zcl_lnt_w_bracket_right.
                            DATA(t414) = t187.
                            DATA(t415) = t1.
                            t413 = NEW zcl_lnt_w_bracket_right( i_start = t414 i_str = t415 ).
                            t212 = t413.
                          ELSE.
                            DATA t416 TYPE abap_bool.
                            DATA(t417) = t118.
                            DATA(t418) = abap_true.
                            t416 = xsdbool( t417 = t418 ).
                            IF t416 = abap_true.
                              DATA t419 TYPE REF TO zcl_lnt_bracket_right_w.
                              DATA(t420) = t187.
                              DATA(t421) = t1.
                              t419 = NEW zcl_lnt_bracket_right_w( i_start = t420 i_str = t421 ).
                              t212 = t419.
                            ELSE.
                              DATA t422 TYPE REF TO zcl_lnt_bracket_right.
                              DATA(t423) = t187.
                              DATA(t424) = t1.
                              t422 = NEW zcl_lnt_bracket_right( i_start = t423 i_str = t424 ).
                              t212 = t422.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ELSE.
                        DATA t425 TYPE abap_bool.
                        DATA(t426) = t1.
                        DATA(t427) = |)|.
                        t425 = xsdbool( t426 = t427 ).
                        IF t425 = abap_true.
                          DATA t428 TYPE abap_bool.
                          DATA t429 TYPE abap_bool.
                          DATA(t430) = t50.
                          DATA(t431) = abap_true.
                          t429 = xsdbool( t430 = t431 ).
                          t428 = t429.
                          IF t429 = abap_true.
                            DATA t432 TYPE abap_bool.
                            DATA(t433) = t118.
                            DATA(t434) = abap_true.
                            t432 = xsdbool( t433 = t434 ).
                            t428 = t432.
                          ENDIF.
                          IF t428 = abap_true.
                            DATA t435 TYPE REF TO zcl_lnt_w_paren_right_w.
                            DATA(t436) = t187.
                            DATA(t437) = t1.
                            t435 = NEW zcl_lnt_w_paren_right_w( i_start = t436 i_str = t437 ).
                            t212 = t435.
                          ELSE.
                            DATA t438 TYPE abap_bool.
                            DATA(t439) = t50.
                            DATA(t440) = abap_true.
                            t438 = xsdbool( t439 = t440 ).
                            IF t438 = abap_true.
                              DATA t441 TYPE REF TO zcl_lnt_w_paren_right.
                              DATA(t442) = t187.
                              DATA(t443) = t1.
                              t441 = NEW zcl_lnt_w_paren_right( i_start = t442 i_str = t443 ).
                              t212 = t441.
                            ELSE.
                              DATA t444 TYPE abap_bool.
                              DATA(t445) = t118.
                              DATA(t446) = abap_true.
                              t444 = xsdbool( t445 = t446 ).
                              IF t444 = abap_true.
                                DATA t447 TYPE REF TO zcl_lnt_paren_right_w.
                                DATA(t448) = t187.
                                DATA(t449) = t1.
                                t447 = NEW zcl_lnt_paren_right_w( i_start = t448 i_str = t449 ).
                                t212 = t447.
                              ELSE.
                                DATA t450 TYPE REF TO zcl_lnt_paren_right.
                                DATA(t451) = t187.
                                DATA(t452) = t1.
                                t450 = NEW zcl_lnt_paren_right( i_start = t451 i_str = t452 ).
                                t212 = t450.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ELSE.
                          DATA t453 TYPE abap_bool.
                          DATA(t454) = t1.
                          DATA(t455) = |-|.
                          t453 = xsdbool( t454 = t455 ).
                          IF t453 = abap_true.
                            DATA t456 TYPE abap_bool.
                            DATA t457 TYPE abap_bool.
                            DATA(t458) = t50.
                            DATA(t459) = abap_true.
                            t457 = xsdbool( t458 = t459 ).
                            t456 = t457.
                            IF t457 = abap_true.
                              DATA t460 TYPE abap_bool.
                              DATA(t461) = t118.
                              DATA(t462) = abap_true.
                              t460 = xsdbool( t461 = t462 ).
                              t456 = t460.
                            ENDIF.
                            IF t456 = abap_true.
                              DATA t463 TYPE REF TO zcl_lnt_w_dash_w.
                              DATA(t464) = t187.
                              DATA(t465) = t1.
                              t463 = NEW zcl_lnt_w_dash_w( i_start = t464 i_str = t465 ).
                              t212 = t463.
                            ELSE.
                              DATA t466 TYPE abap_bool.
                              DATA(t467) = t50.
                              DATA(t468) = abap_true.
                              t466 = xsdbool( t467 = t468 ).
                              IF t466 = abap_true.
                                DATA t469 TYPE REF TO zcl_lnt_w_dash.
                                DATA(t470) = t187.
                                DATA(t471) = t1.
                                t469 = NEW zcl_lnt_w_dash( i_start = t470 i_str = t471 ).
                                t212 = t469.
                              ELSE.
                                DATA t472 TYPE abap_bool.
                                DATA(t473) = t118.
                                DATA(t474) = abap_true.
                                t472 = xsdbool( t473 = t474 ).
                                IF t472 = abap_true.
                                  DATA t475 TYPE REF TO zcl_lnt_dash_w.
                                  DATA(t476) = t187.
                                  DATA(t477) = t1.
                                  t475 = NEW zcl_lnt_dash_w( i_start = t476 i_str = t477 ).
                                  t212 = t475.
                                ELSE.
                                  DATA t478 TYPE REF TO zcl_lnt_dash.
                                  DATA(t479) = t187.
                                  DATA(t480) = t1.
                                  t478 = NEW zcl_lnt_dash( i_start = t479 i_str = t480 ).
                                  t212 = t478.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ELSE.
                            DATA t481 TYPE abap_bool.
                            DATA(t482) = t1.
                            DATA(t483) = |+|.
                            t481 = xsdbool( t482 = t483 ).
                            IF t481 = abap_true.
                              DATA t484 TYPE abap_bool.
                              DATA t485 TYPE abap_bool.
                              DATA(t486) = t50.
                              DATA(t487) = abap_true.
                              t485 = xsdbool( t486 = t487 ).
                              t484 = t485.
                              IF t485 = abap_true.
                                DATA t488 TYPE abap_bool.
                                DATA(t489) = t118.
                                DATA(t490) = abap_true.
                                t488 = xsdbool( t489 = t490 ).
                                t484 = t488.
                              ENDIF.
                              IF t484 = abap_true.
                                DATA t491 TYPE REF TO zcl_lnt_w_plus_w.
                                DATA(t492) = t187.
                                DATA(t493) = t1.
                                t491 = NEW zcl_lnt_w_plus_w( i_start = t492 i_str = t493 ).
                                t212 = t491.
                              ELSE.
                                DATA t494 TYPE abap_bool.
                                DATA(t495) = t50.
                                DATA(t496) = abap_true.
                                t494 = xsdbool( t495 = t496 ).
                                IF t494 = abap_true.
                                  DATA t497 TYPE REF TO zcl_lnt_w_plus.
                                  DATA(t498) = t187.
                                  DATA(t499) = t1.
                                  t497 = NEW zcl_lnt_w_plus( i_start = t498 i_str = t499 ).
                                  t212 = t497.
                                ELSE.
                                  DATA t500 TYPE abap_bool.
                                  DATA(t501) = t118.
                                  DATA(t502) = abap_true.
                                  t500 = xsdbool( t501 = t502 ).
                                  IF t500 = abap_true.
                                    DATA t503 TYPE REF TO zcl_lnt_plus_w.
                                    DATA(t504) = t187.
                                    DATA(t505) = t1.
                                    t503 = NEW zcl_lnt_plus_w( i_start = t504 i_str = t505 ).
                                    t212 = t503.
                                  ELSE.
                                    DATA t506 TYPE REF TO zcl_lnt_lx_plus.
                                    DATA(t507) = t187.
                                    DATA(t508) = t1.
                                    t506 = NEW zcl_lnt_lx_plus( i_start = t507 i_str = t508 ).
                                    t212 = t506.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ELSE.
                              DATA t509 TYPE abap_bool.
                              DATA(t510) = t1.
                              DATA(t511) = |@|.
                              t509 = xsdbool( t510 = t511 ).
                              IF t509 = abap_true.
                                DATA t512 TYPE abap_bool.
                                DATA t513 TYPE abap_bool.
                                DATA(t514) = t50.
                                DATA(t515) = abap_true.
                                t513 = xsdbool( t514 = t515 ).
                                t512 = t513.
                                IF t513 = abap_true.
                                  DATA t516 TYPE abap_bool.
                                  DATA(t517) = t118.
                                  DATA(t518) = abap_true.
                                  t516 = xsdbool( t517 = t518 ).
                                  t512 = t516.
                                ENDIF.
                                IF t512 = abap_true.
                                  DATA t519 TYPE REF TO zcl_lnt_w_at_w.
                                  DATA(t520) = t187.
                                  DATA(t521) = t1.
                                  t519 = NEW zcl_lnt_w_at_w( i_start = t520 i_str = t521 ).
                                  t212 = t519.
                                ELSE.
                                  DATA t522 TYPE abap_bool.
                                  DATA(t523) = t50.
                                  DATA(t524) = abap_true.
                                  t522 = xsdbool( t523 = t524 ).
                                  IF t522 = abap_true.
                                    DATA t525 TYPE REF TO zcl_lnt_w_at.
                                    DATA(t526) = t187.
                                    DATA(t527) = t1.
                                    t525 = NEW zcl_lnt_w_at( i_start = t526 i_str = t527 ).
                                    t212 = t525.
                                  ELSE.
                                    DATA t528 TYPE abap_bool.
                                    DATA(t529) = t118.
                                    DATA(t530) = abap_true.
                                    t528 = xsdbool( t529 = t530 ).
                                    IF t528 = abap_true.
                                      DATA t531 TYPE REF TO zcl_lnt_at_w.
                                      DATA(t532) = t187.
                                      DATA(t533) = t1.
                                      t531 = NEW zcl_lnt_at_w( i_start = t532 i_str = t533 ).
                                      t212 = t531.
                                    ELSE.
                                      DATA t534 TYPE REF TO zcl_lnt_lx_at.
                                      DATA(t535) = t187.
                                      DATA(t536) = t1.
                                      t534 = NEW zcl_lnt_lx_at( i_start = t535 i_str = t536 ).
                                      t212 = t534.
                                    ENDIF.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ELSE.
                DATA t537 TYPE abap_bool.
                DATA t538 TYPE i.
                DATA(t539) = t1.
                DATA(t540) = strlen( t539 ).
                t538 = t540.
                DATA(t541) = 2.
                t537 = xsdbool( t538 = t541 ).
                IF t537 = abap_true.
                  DATA t542 TYPE abap_bool.
                  DATA(t543) = t1.
                  DATA(t544) = |->|.
                  t542 = xsdbool( t543 = t544 ).
                  IF t542 = abap_true.
                    DATA t545 TYPE abap_bool.
                    DATA t546 TYPE abap_bool.
                    DATA(t547) = t50.
                    DATA(t548) = abap_true.
                    t546 = xsdbool( t547 = t548 ).
                    t545 = t546.
                    IF t546 = abap_true.
                      DATA t549 TYPE abap_bool.
                      DATA(t550) = t118.
                      DATA(t551) = abap_true.
                      t549 = xsdbool( t550 = t551 ).
                      t545 = t549.
                    ENDIF.
                    IF t545 = abap_true.
                      DATA t552 TYPE REF TO zcl_lnt_w_instance_arrow_w.
                      DATA(t553) = t187.
                      DATA(t554) = t1.
                      t552 = NEW zcl_lnt_w_instance_arrow_w( i_start = t553 i_str = t554 ).
                      t212 = t552.
                    ELSE.
                      DATA t555 TYPE abap_bool.
                      DATA(t556) = t50.
                      DATA(t557) = abap_true.
                      t555 = xsdbool( t556 = t557 ).
                      IF t555 = abap_true.
                        DATA t558 TYPE REF TO zcl_lnt_w_instance_arrow.
                        DATA(t559) = t187.
                        DATA(t560) = t1.
                        t558 = NEW zcl_lnt_w_instance_arrow( i_start = t559 i_str = t560 ).
                        t212 = t558.
                      ELSE.
                        DATA t561 TYPE abap_bool.
                        DATA(t562) = t118.
                        DATA(t563) = abap_true.
                        t561 = xsdbool( t562 = t563 ).
                        IF t561 = abap_true.
                          DATA t564 TYPE REF TO zcl_lnt_instance_arrow_w.
                          DATA(t565) = t187.
                          DATA(t566) = t1.
                          t564 = NEW zcl_lnt_instance_arrow_w( i_start = t565 i_str = t566 ).
                          t212 = t564.
                        ELSE.
                          DATA t567 TYPE REF TO zcl_lnt_instance_arrow.
                          DATA(t568) = t187.
                          DATA(t569) = t1.
                          t567 = NEW zcl_lnt_instance_arrow( i_start = t568 i_str = t569 ).
                          t212 = t567.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA t570 TYPE abap_bool.
                    DATA(t571) = t1.
                    DATA(t572) = |=>|.
                    t570 = xsdbool( t571 = t572 ).
                    IF t570 = abap_true.
                      DATA t573 TYPE abap_bool.
                      DATA t574 TYPE abap_bool.
                      DATA(t575) = t50.
                      DATA(t576) = abap_true.
                      t574 = xsdbool( t575 = t576 ).
                      t573 = t574.
                      IF t574 = abap_true.
                        DATA t577 TYPE abap_bool.
                        DATA(t578) = t118.
                        DATA(t579) = abap_true.
                        t577 = xsdbool( t578 = t579 ).
                        t573 = t577.
                      ENDIF.
                      IF t573 = abap_true.
                        DATA t580 TYPE REF TO zcl_lnt_w_static_arrow_w.
                        DATA(t581) = t187.
                        DATA(t582) = t1.
                        t580 = NEW zcl_lnt_w_static_arrow_w( i_start = t581 i_str = t582 ).
                        t212 = t580.
                      ELSE.
                        DATA t583 TYPE abap_bool.
                        DATA(t584) = t50.
                        DATA(t585) = abap_true.
                        t583 = xsdbool( t584 = t585 ).
                        IF t583 = abap_true.
                          DATA t586 TYPE REF TO zcl_lnt_w_static_arrow.
                          DATA(t587) = t187.
                          DATA(t588) = t1.
                          t586 = NEW zcl_lnt_w_static_arrow( i_start = t587 i_str = t588 ).
                          t212 = t586.
                        ELSE.
                          DATA t589 TYPE abap_bool.
                          DATA(t590) = t118.
                          DATA(t591) = abap_true.
                          t589 = xsdbool( t590 = t591 ).
                          IF t589 = abap_true.
                            DATA t592 TYPE REF TO zcl_lnt_static_arrow_w.
                            DATA(t593) = t187.
                            DATA(t594) = t1.
                            t592 = NEW zcl_lnt_static_arrow_w( i_start = t593 i_str = t594 ).
                            t212 = t592.
                          ELSE.
                            DATA t595 TYPE REF TO zcl_lnt_static_arrow.
                            DATA(t596) = t187.
                            DATA(t597) = t1.
                            t595 = NEW zcl_lnt_static_arrow( i_start = t596 i_str = t597 ).
                            t212 = t595.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t598) = VALUE abap_bool( ).
      DATA(t599) = VALUE abap_bool( ).
      DATA(t600) = VALUE abap_bool( ).
      DATA t601 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t602) = t212.
      t601 = t602.
      DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t604.
      t603 = t604.
      DATA(t605) = VALUE abap_bool( ).
      DATA(t606) = t601.
      IF t606 IS INITIAL.
        t605 = abap_true.
      ENDIF.
      t600 = t605.
      t599 = t600.
      IF t600 = abap_true.
        DATA t607 TYPE abap_bool.
        DATA(t608) = CONV f( me->m ).
        DATA t609 TYPE f.
        DATA(t610) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
        t609 = t610.
        t607 = xsdbool( t608 = t609 ).
        t599 = t607.
      ENDIF.
      t598 = t599.
      IF t599 = abap_true.
        DATA(t611) = VALUE abap_bool( ).
        DATA(t612) = VALUE string( ).
        DATA(t613) = t1.
        DATA(t614) = 0.
        DATA(t615) = strlen( t613 ).
        IF t614 < 0 OR t614 >= t615.
          CLEAR t612.
        ELSE.
          t612 = t613+t614(1).
        ENDIF.
        DATA(t616) = `\`.
        t611 = xsdbool( t612 = t616 ).
        t598 = t611.
      ENDIF.
      IF t598 = abap_true.
        DATA(t617) = VALUE i( ).
        DATA(t618) = VALUE i( ).
        DATA(t619) = VALUE abap_bool( ).
        DATA(t620) = VALUE i( ).
        DATA(t621) = VALUE f( ).
        DATA t622 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t623) = me->stream.
        t622 = t623.
        DATA(t624) = VALUE f( ).
        DATA t625 TYPE int8.
        DATA t626 TYPE int8.
        DATA t627 TYPE int8.
        DATA t628 TYPE i.
        DATA(t629) = t622.
        t628 = t629->offset.
        t627 = t628.
        DATA(t630) = CONV int8( 1 ).
        t626 = t627 + t630.
        t625 = t626.
        DATA(t631) = VALUE f( ).
        DATA t632 TYPE abap_bool.
        DATA(t633) = t625.
        DATA t634 TYPE int8.
        DATA t635 TYPE i.
        DATA t636 TYPE string.
        DATA(t637) = t622.
        t636 = t637->raw.
        DATA(t638) = strlen( t636 ).
        t635 = t638.
        t634 = t635.
        t632 = xsdbool( t633 >= t634 ).
        IF t632 = abap_true.
          DATA t639 TYPE f.
          DATA(t640) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t639 = t640.
          t631 = t639.
        ELSE.
          DATA(t641) = VALUE f( ).
          DATA(t642) = VALUE i( ).
          DATA t643 TYPE string.
          DATA(t644) = t622.
          t643 = t644->raw.
          DATA t645 TYPE i.
          DATA(t646) = t625.
          t645 = t646.
          DATA(t647) = strlen( t643 ).
          IF t645 < 0 OR t645 >= t647.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t648) = CONV string( t643+t645(1) ).
          DATA t649 TYPE c LENGTH 1.
          CLEAR t649.
          DATA(t650) = VALUE xstring( ).
          DATA t651 TYPE x LENGTH 1.
          CLEAR t651.
          DATA t652 TYPE x LENGTH 1.
          CLEAR t652.
          DATA(t653) = VALUE i( ).
          t649 = t648.
          t642 = cl_abap_conv_out_ce=>uccpi( t649 ).
          IF t642 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t648 IMPORTING buffer = t650 ).
            t651 = t650(1).
            t652 = t650+1(1).
            t642 = t651.
            t653 = t652.
            t642 = t642 + t653 * 256.
          ENDIF.
          t641 = t642.
          t631 = t641.
        ENDIF.
        t624 = t631.
        t621 = t624.
        t620 = t621.
        DATA(t654) = CONV i( zcl_lnt_lexer_module=>eof ).
        t619 = xsdbool( t620 = t654 ).
        IF t619 = abap_true.
          DATA(t655) = 1.
          t618 = t655.
        ELSE.
          DATA(t656) = 0.
          t618 = t656.
        ENDIF.
        t617 = t618.
        DATA t657 TYPE int8.
        DATA t658 TYPE int8.
        DATA t659 TYPE int8.
        DATA t660 TYPE i.
        DATA t661 TYPE i.
        DATA t662 TYPE f.
        DATA t663 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t664) = me->stream.
        t663 = t664.
        DATA t665 TYPE f.
        DATA t666 TYPE i.
        DATA(t667) = t663.
        t666 = t667->offset.
        t665 = t666.
        t662 = t665.
        t661 = t662.
        DATA t668 TYPE i.
        DATA(t669) = t1.
        DATA(t670) = strlen( t669 ).
        t668 = t670.
        t660 = t661 - t668.
        t659 = t660.
        DATA t671 TYPE int8.
        DATA(t672) = t617.
        t671 = t672.
        t658 = t659 - t671.
        t657 = t658.
        DATA(t673) = VALUE i( ).
        DATA(t674) = VALUE i( ).
        DATA(t675) = VALUE f( ).
        DATA t676 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t677) = me->stream.
        t676 = t677.
        DATA t678 TYPE f.
        DATA t679 TYPE f.
        DATA(t680) = t657.
        t679 = t680.
        t678 = t679.
        DATA(t681) = VALUE f( ).
        DATA t682 TYPE abap_bool.
        DATA t683 TYPE abap_bool.
        DATA(t684) = t678.
        DATA(t685) = CONV f( 0 ).
        t683 = xsdbool( t684 < t685 ).
        t682 = t683.
        IF t683 = abap_false.
          DATA t686 TYPE abap_bool.
          DATA(t687) = t678.
          DATA t688 TYPE f.
          DATA t689 TYPE i.
          DATA t690 TYPE string.
          DATA(t691) = t676.
          t690 = t691->raw.
          DATA(t692) = strlen( t690 ).
          t689 = t692.
          t688 = t689.
          t686 = xsdbool( t687 >= t688 ).
          t682 = t686.
        ENDIF.
        IF t682 = abap_true.
          DATA t693 TYPE f.
          DATA(t694) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t693 = t694.
          t681 = t693.
        ELSE.
          DATA(t695) = VALUE f( ).
          DATA(t696) = VALUE i( ).
          DATA t697 TYPE string.
          DATA(t698) = t676.
          t697 = t698->raw.
          DATA(t699) = VALUE i( ).
          DATA(t700) = t678.
          IF t700 > range_i32_upper.
            t699 = range_i32_upper.
          ELSEIF t700 < range_i32_lower.
            t699 = range_i32_lower.
          ELSE.
            t699 = trunc( t700 ).
          ENDIF.
          DATA(t701) = strlen( t697 ).
          IF t699 < 0 OR t699 >= t701.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t702) = CONV string( t697+t699(1) ).
          DATA t703 TYPE c LENGTH 1.
          CLEAR t703.
          DATA(t704) = VALUE xstring( ).
          DATA t705 TYPE x LENGTH 1.
          CLEAR t705.
          DATA t706 TYPE x LENGTH 1.
          CLEAR t706.
          DATA(t707) = VALUE i( ).
          t703 = t702.
          t696 = cl_abap_conv_out_ce=>uccpi( t703 ).
          IF t696 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t702 IMPORTING buffer = t704 ).
            t705 = t704(1).
            t706 = t704+1(1).
            t696 = t705.
            t707 = t706.
            t696 = t696 + t707 * 256.
          ENDIF.
          t695 = t696.
          t681 = t695.
        ENDIF.
        t675 = t681.
        t674 = t675.
        t673 = t674.
        DATA(t708) = VALUE abap_bool( ).
        DATA(t709) = VALUE abap_bool( ).
        DATA(t710) = VALUE abap_bool( ).
        DATA t711 TYPE abap_bool.
        DATA t712 TYPE abap_bool.
        DATA(t713) = t673.
        DATA(t714) = CONV i( zcl_lnt_lexer_module=>ch_space ).
        t712 = xsdbool( t713 = t714 ).
        t711 = t712.
        IF t712 = abap_false.
          DATA t715 TYPE abap_bool.
          DATA(t716) = t673.
          DATA(t717) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
          t715 = xsdbool( t716 = t717 ).
          t711 = t715.
        ENDIF.
        t710 = t711.
        IF t711 = abap_false.
          DATA t718 TYPE abap_bool.
          DATA(t719) = t673.
          DATA(t720) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
          t718 = xsdbool( t719 = t720 ).
          t710 = t718.
        ENDIF.
        t709 = t710.
        IF t710 = abap_false.
          DATA t721 TYPE abap_bool.
          DATA(t722) = t673.
          DATA(t723) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
          t721 = xsdbool( t722 = t723 ).
          t709 = t721.
        ENDIF.
        t708 = t709.
        DATA t724 TYPE abap_bool.
        DATA(t725) = t708.
        t724 = xsdbool( t725 = abap_false ).
        IF t724 = abap_true.
          DATA t726 TYPE REF TO zcl_lnt_association_name.
          DATA(t727) = t187.
          DATA(t728) = t1.
          t726 = NEW zcl_lnt_association_name( i_start = t727 i_str = t728 ).
          t212 = t726.
        ENDIF.
      ENDIF.
      DATA(t729) = VALUE abap_bool( ).
      DATA t730 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t731) = t212.
      t730 = t731.
      DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t733.
      t732 = t733.
      DATA(t734) = VALUE abap_bool( ).
      DATA(t735) = t730.
      IF t735 IS INITIAL.
        t734 = abap_true.
      ENDIF.
      t729 = t734.
      IF t729 = abap_true.
        DATA t736 TYPE REF TO zcl_lnt_lx_identifier.
        DATA(t737) = t187.
        DATA(t738) = t1.
        t736 = NEW zcl_lnt_lx_identifier( i_start = t737 i_str = t738 ).
        t212 = t736.
      ENDIF.
      DATA(t739) = me->tokens.
      DATA t740 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t741) = t212.
      t740 = t741.
      t739->load( ).
      APPEND t740 TO t739->items.
      t739->save( ).
    ENDIF.
    DATA t742 TYPE REF TO zcl_lnt_lexer_buffer.
    DATA(t743) = me->buffer.
    t742 = t743.
    DATA(t744) = t742.
    DATA(t745) = 0.
    t744->start = t745.
    DELETE t744->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    DATA(t746) = t742.
    DATA(t747) = 0.
    t746->end = t747.
    DELETE t746->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    DATA(t748) = t742.
    DATA(t749) = abap_true.
    t748->empty_a4a6 = t749.
    DELETE t748->zlnt_record_delet_0597644d88b4 WHERE table_line = `empty`.
  ENDMETHOD.

  METHOD process.
    CONSTANTS range_check_hi_zik0zi TYPE f VALUE '2147483646'.
    CONSTANTS range_check_lo_nzik0zk TYPE f VALUE '-2147483648'.
    DATA(t1) = i_raw.
    DATA t2 TYPE REF TO zcl_lnt_lexer_stream.
    DATA t3 TYPE REF TO zcl_lnt_lexer_stream.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    DATA(t6) = |\r|.
    DATA(t7) = ||.
    DATA(t8) = strlen( t5 ).
    t4 = t5.
    REPLACE ALL OCCURRENCES OF t6 IN t4 WITH t7.
    t3 = NEW zcl_lnt_lexer_stream( i_raw = t4 ).
    t2 = t3.
    DATA(t9) = t2.
    me->stream = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stream`.
    DATA t10 TYPE REF TO zcl_lnt_lexer_buffer.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zcl_lnt_lexer_stream.
    DATA(t13) = t2.
    t12 = t13.
    DATA t14 TYPE string.
    DATA(t15) = t12.
    t14 = t15->raw.
    t11 = t14.
    t10 = NEW zcl_lnt_lexer_buffer( i_raw = t11 ).
    me->buffer = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
    DO.
      DATA(t16) = abap_true.
      IF t16 = abap_false.
        EXIT.
      ENDIF.
      DATA(t17) = VALUE i( ).
      DATA(t18) = VALUE i( ).
      DATA(t19) = VALUE f( ).
      DATA t20 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t21) = t2.
      t20 = t21.
      DATA(t22) = VALUE f( ).
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE i.
      DATA(t25) = t20.
      t24 = t25->offset.
      DATA(t26) = 0.
      t23 = xsdbool( t24 < t26 ).
      IF t23 = abap_true.
        DATA t27 TYPE f.
        DATA(t28) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
        t27 = t28.
        t22 = t27.
      ELSE.
        DATA(t29) = VALUE f( ).
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE i.
        DATA(t32) = t20.
        t31 = t32->offset.
        DATA t33 TYPE i.
        DATA t34 TYPE string.
        DATA(t35) = t20.
        t34 = t35->raw.
        DATA(t36) = strlen( t34 ).
        t33 = t36.
        t30 = xsdbool( t31 >= t33 ).
        IF t30 = abap_true.
          DATA t37 TYPE f.
          DATA(t38) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t37 = t38.
          t29 = t37.
        ELSE.
          DATA(t39) = VALUE f( ).
          DATA(t40) = VALUE i( ).
          DATA t41 TYPE string.
          DATA(t42) = t20.
          t41 = t42->raw.
          DATA t43 TYPE i.
          DATA(t44) = t20.
          t43 = t44->offset.
          DATA(t45) = strlen( t41 ).
          IF t43 < 0 OR t43 >= t45.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t46) = CONV string( t41+t43(1) ).
          DATA t47 TYPE c LENGTH 1.
          CLEAR t47.
          DATA(t48) = VALUE xstring( ).
          DATA t49 TYPE x LENGTH 1.
          CLEAR t49.
          DATA t50 TYPE x LENGTH 1.
          CLEAR t50.
          DATA(t51) = VALUE i( ).
          t47 = t46.
          t40 = cl_abap_conv_out_ce=>uccpi( t47 ).
          IF t40 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t46 IMPORTING buffer = t48 ).
            t49 = t48(1).
            t50 = t48+1(1).
            t40 = t49.
            t51 = t50.
            t40 = t40 + t51 * 256.
          ENDIF.
          t39 = t40.
          t29 = t39.
        ENDIF.
        t22 = t29.
      ENDIF.
      t19 = t22.
      t18 = t19.
      t17 = t18.
      DATA t52 TYPE REF TO zcl_lnt_lexer_buffer.
      DATA(t53) = me->buffer.
      t52 = t53.
      DATA t54 TYPE f.
      DATA t55 TYPE f.
      DATA t56 TYPE i.
      DATA t57 TYPE f.
      DATA t58 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t59) = t2.
      t58 = t59.
      DATA t60 TYPE f.
      DATA t61 TYPE i.
      DATA(t62) = t58.
      t61 = t62->offset.
      t60 = t61.
      t57 = t60.
      t56 = t57.
      t55 = t56.
      t54 = t55.
      DATA(t63) = VALUE i( ).
      DATA(t64) = VALUE i( ).
      DATA(t65) = t54.
      IF t65 <> trunc( t65 ) OR t65 < range_check_lo_nzik0zk OR t65 > range_check_hi_zik0zi.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t64 = t65.
      t63 = t64.
      DATA t66 TYPE abap_bool.
      DATA t67 TYPE abap_bool.
      DATA(t68) = t52.
      t67 = t68->empty_a4a6.
      DATA(t69) = abap_true.
      t66 = xsdbool( t67 = t69 ).
      IF t66 = abap_true.
        DATA(t70) = t52.
        DATA(t71) = VALUE i( ).
        DATA t72 TYPE abap_bool.
        DATA(t73) = t63.
        DATA(t74) = 0.
        t72 = xsdbool( t73 < t74 ).
        IF t72 = abap_true.
          DATA(t75) = 0.
          t71 = t75.
        ELSE.
          DATA(t76) = t63.
          t71 = t76.
        ENDIF.
        t70->start = t71.
        DELETE t70->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
        DATA(t77) = t52.
        DATA(t78) = abap_false.
        t77->empty_a4a6 = t78.
        DELETE t77->zlnt_record_delet_0597644d88b4 WHERE table_line = `empty`.
      ENDIF.
      DATA(t79) = t52.
      DATA t80 TYPE i.
      DATA(t81) = t63.
      DATA(t82) = 1.
      t80 = t81 + t82.
      t79->end = t80.
      DELETE t79->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
      DATA(t83) = VALUE i( ).
      DATA(t84) = VALUE i( ).
      DATA(t85) = VALUE f( ).
      DATA t86 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t87) = t2.
      t86 = t87.
      DATA(t88) = VALUE f( ).
      DATA t89 TYPE int8.
      DATA t90 TYPE int8.
      DATA t91 TYPE int8.
      DATA t92 TYPE i.
      DATA(t93) = t86.
      t92 = t93->offset.
      t91 = t92.
      DATA(t94) = CONV int8( 1 ).
      t90 = t91 + t94.
      t89 = t90.
      DATA(t95) = VALUE f( ).
      DATA t96 TYPE abap_bool.
      DATA(t97) = t89.
      DATA t98 TYPE int8.
      DATA t99 TYPE i.
      DATA t100 TYPE string.
      DATA(t101) = t86.
      t100 = t101->raw.
      DATA(t102) = strlen( t100 ).
      t99 = t102.
      t98 = t99.
      t96 = xsdbool( t97 >= t98 ).
      IF t96 = abap_true.
        DATA t103 TYPE f.
        DATA(t104) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t103 = t104.
        t95 = t103.
      ELSE.
        DATA(t105) = VALUE f( ).
        DATA(t106) = VALUE i( ).
        DATA t107 TYPE string.
        DATA(t108) = t86.
        t107 = t108->raw.
        DATA t109 TYPE i.
        DATA(t110) = t89.
        t109 = t110.
        DATA(t111) = strlen( t107 ).
        IF t109 < 0 OR t109 >= t111.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t112) = CONV string( t107+t109(1) ).
        DATA t113 TYPE c LENGTH 1.
        CLEAR t113.
        DATA(t114) = VALUE xstring( ).
        DATA t115 TYPE x LENGTH 1.
        CLEAR t115.
        DATA t116 TYPE x LENGTH 1.
        CLEAR t116.
        DATA(t117) = VALUE i( ).
        t113 = t112.
        t106 = cl_abap_conv_out_ce=>uccpi( t113 ).
        IF t106 >= 255.
          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t112 IMPORTING buffer = t114 ).
          t115 = t114(1).
          t116 = t114+1(1).
          t106 = t115.
          t117 = t116.
          t106 = t106 + t117 * 256.
        ENDIF.
        t105 = t106.
        t95 = t105.
      ENDIF.
      t88 = t95.
      t85 = t88.
      t84 = t85.
      t83 = t84.
      DATA(t118) = VALUE i( ).
      DATA(t119) = VALUE i( ).
      DATA(t120) = VALUE f( ).
      DATA t121 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t122) = t2.
      t121 = t122.
      DATA(t123) = VALUE f( ).
      DATA t124 TYPE int8.
      DATA t125 TYPE int8.
      DATA t126 TYPE int8.
      DATA t127 TYPE i.
      DATA(t128) = t121.
      t127 = t128->offset.
      t126 = t127.
      DATA(t129) = CONV int8( 2 ).
      t125 = t126 + t129.
      t124 = t125.
      DATA(t130) = VALUE f( ).
      DATA t131 TYPE abap_bool.
      DATA(t132) = t124.
      DATA t133 TYPE int8.
      DATA t134 TYPE i.
      DATA t135 TYPE string.
      DATA(t136) = t121.
      t135 = t136->raw.
      DATA(t137) = strlen( t135 ).
      t134 = t137.
      t133 = t134.
      t131 = xsdbool( t132 >= t133 ).
      IF t131 = abap_true.
        DATA t138 TYPE f.
        DATA(t139) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t138 = t139.
        t130 = t138.
      ELSE.
        DATA(t140) = VALUE f( ).
        DATA(t141) = VALUE i( ).
        DATA t142 TYPE string.
        DATA(t143) = t121.
        t142 = t143->raw.
        DATA t144 TYPE i.
        DATA(t145) = t124.
        t144 = t145.
        DATA(t146) = strlen( t142 ).
        IF t144 < 0 OR t144 >= t146.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t147) = CONV string( t142+t144(1) ).
        DATA t148 TYPE c LENGTH 1.
        CLEAR t148.
        DATA(t149) = VALUE xstring( ).
        DATA t150 TYPE x LENGTH 1.
        CLEAR t150.
        DATA t151 TYPE x LENGTH 1.
        CLEAR t151.
        DATA(t152) = VALUE i( ).
        t148 = t147.
        t141 = cl_abap_conv_out_ce=>uccpi( t148 ).
        IF t141 >= 255.
          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t147 IMPORTING buffer = t149 ).
          t150 = t149(1).
          t151 = t149+1(1).
          t141 = t150.
          t152 = t151.
          t141 = t141 + t152 * 256.
        ENDIF.
        t140 = t141.
        t130 = t140.
      ENDIF.
      t123 = t130.
      t120 = t123.
      t119 = t120.
      t118 = t119.
      DATA t153 TYPE abap_bool.
      DATA(t154) = CONV f( me->m ).
      DATA t155 TYPE f.
      DATA(t156) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
      t155 = t156.
      t153 = xsdbool( t154 = t155 ).
      IF t153 = abap_true.
        DATA(t157) = VALUE abap_bool( ).
        DATA t158 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
        CLEAR t158.
        IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
          zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
        ENDIF.
        t158 = zcl_lnt_lexer_module=>splits.
        DATA t159 TYPE f.
        DATA(t160) = t83.
        t159 = t160.
        t157 = t158->has( p0 = t159 ).
        IF t157 = abap_true.
          me->add_51c1( ).
        ELSE.
          DATA t161 TYPE abap_bool.
          DATA(t162) = t83.
          DATA(t163) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
          t161 = xsdbool( t162 = t163 ).
          IF t161 = abap_true.
            me->add_51c1( ).
            DATA t164 TYPE f.
            DATA(t165) = CONV i( zcl_lnt_lexer_module=>mode_str ).
            t164 = t165.
            me->m = t164.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
          ELSE.
            DATA t166 TYPE abap_bool.
            DATA t167 TYPE abap_bool.
            DATA(t168) = t83.
            DATA(t169) = CONV i( zcl_lnt_lexer_module=>ch_pipe ).
            t167 = xsdbool( t168 = t169 ).
            t166 = t167.
            IF t167 = abap_false.
              DATA t170 TYPE abap_bool.
              DATA(t171) = t83.
              DATA(t172) = CONV i( zcl_lnt_lexer_module=>ch_rbrace ).
              t170 = xsdbool( t171 = t172 ).
              t166 = t170.
            ENDIF.
            IF t166 = abap_true.
              me->add_51c1( ).
              DATA t173 TYPE f.
              DATA(t174) = CONV i( zcl_lnt_lexer_module=>mode_template ).
              t173 = t174.
              me->m = t173.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
            ELSE.
              DATA t175 TYPE abap_bool.
              DATA(t176) = t83.
              DATA(t177) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
              t175 = xsdbool( t176 = t177 ).
              IF t175 = abap_true.
                me->add_51c1( ).
                DATA t178 TYPE f.
                DATA(t179) = CONV i( zcl_lnt_lexer_module=>mode_ping ).
                t178 = t179.
                me->m = t178.
                DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
              ELSE.
                DATA t180 TYPE abap_bool.
                DATA t181 TYPE abap_bool.
                DATA(t182) = t83.
                DATA(t183) = CONV i( zcl_lnt_lexer_module=>ch_hash ).
                t181 = xsdbool( t182 = t183 ).
                t180 = t181.
                IF t181 = abap_true.
                  DATA t184 TYPE abap_bool.
                  DATA(t185) = t118.
                  DATA(t186) = CONV i( zcl_lnt_lexer_module=>ch_hash ).
                  t184 = xsdbool( t185 = t186 ).
                  t180 = t184.
                ENDIF.
                IF t180 = abap_true.
                  me->add_51c1( ).
                  DATA t187 TYPE f.
                  DATA(t188) = CONV i( zcl_lnt_lexer_module=>mode_pragma ).
                  t187 = t188.
                  me->m = t187.
                  DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
                ELSE.
                  DATA t189 TYPE abap_bool.
                  DATA t190 TYPE abap_bool.
                  DATA(t191) = t83.
                  DATA(t192) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
                  t190 = xsdbool( t191 = t192 ).
                  t189 = t190.
                  IF t190 = abap_false.
                    DATA t193 TYPE abap_bool.
                    DATA t194 TYPE abap_bool.
                    DATA(t195) = t83.
                    DATA(t196) = CONV i( zcl_lnt_lexer_module=>ch_star ).
                    t194 = xsdbool( t195 = t196 ).
                    t193 = t194.
                    IF t194 = abap_true.
                      DATA t197 TYPE abap_bool.
                      DATA(t198) = t17.
                      DATA(t199) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                      t197 = xsdbool( t198 = t199 ).
                      t193 = t197.
                    ENDIF.
                    t189 = t193.
                  ENDIF.
                  IF t189 = abap_true.
                    me->add_51c1( ).
                    DATA t200 TYPE f.
                    DATA(t201) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
                    t200 = t201.
                    me->m = t200.
                    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
                  ELSE.
                    DATA t202 TYPE abap_bool.
                    DATA t203 TYPE abap_bool.
                    DATA(t204) = t83.
                    DATA(t205) = CONV i( zcl_lnt_lexer_module=>ch_at ).
                    t203 = xsdbool( t204 = t205 ).
                    t202 = t203.
                    IF t203 = abap_true.
                      DATA(t206) = VALUE abap_bool( ).
                      DATA(t207) = VALUE i( ).
                      DATA(t208) = VALUE string( ).
                      DATA(t209) = VALUE string( ).
                      DATA t210 TYPE REF TO zcl_lnt_lexer_buffer.
                      DATA(t211) = me->buffer.
                      t210 = t211.
                      DATA(t212) = VALUE string( ).
                      DATA t213 TYPE string.
                      DATA(t214) = t210.
                      t213 = t214->raw.
                      DATA t215 TYPE i.
                      DATA(t216) = t210.
                      t215 = t216->start.
                      DATA t217 TYPE i.
                      DATA(t218) = t210.
                      t217 = t218->end.
                      DATA(t219) = strlen( t213 ).
                      t215 = COND i( WHEN t215 < 0 THEN 0 WHEN t215 > t219 THEN t219 ELSE t215 ).
                      t217 = COND i( WHEN t217 < 0 THEN 0 WHEN t217 > t219 THEN t219 ELSE t217 ).
                      IF t215 > t217.
                        t219 = t215.
                        t215 = t217.
                        t217 = t219.
                      ENDIF.
                      t219 = t217 - t215.
                      t212 = t213+t215(t219).
                      t209 = t212.
                      DATA(t220) = strlen( t209 ).
                      DATA t221 TYPE i.
                      DATA t222 TYPE i.
                      t221 = 0.
                      t222 = t220.
                      DATA(t223) = VALUE i( ).
                      DATA(t224) = VALUE i( ).
                      DATA(t225) = VALUE string( ).
                      WHILE t221 < t222.
                        t224 = t221.
                        t225 = t209+t224(1).
                        DATA t226 TYPE c LENGTH 1.
                        CLEAR t226.
                        DATA(t227) = VALUE xstring( ).
                        DATA t228 TYPE x LENGTH 1.
                        CLEAR t228.
                        DATA t229 TYPE x LENGTH 1.
                        CLEAR t229.
                        DATA(t230) = VALUE i( ).
                        t226 = t225.
                        t223 = cl_abap_conv_out_ce=>uccpi( t226 ).
                        IF t223 >= 255.
                          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                          ENDIF.
                          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t225 IMPORTING buffer = t227 ).
                          t228 = t227(1).
                          t229 = t227+1(1).
                          t223 = t228.
                          t230 = t229.
                          t223 = t223 + t230 * 256.
                        ENDIF.
                        IF t223 = 9 OR t223 = 10 OR t223 = 11 OR t223 = 12 OR t223 = 13 OR t223 = 32 OR t223 = 160 OR t223 = 5760 OR t223 = 8232 OR t223 = 8233 OR t223 = 8239 OR t223 = 8287 OR t223 = 12288 OR t223 = 65279 OR t223 >= 8192 AND t223 <= 8202.
                          t221 = t221 + 1.
                        ELSE.
                          EXIT.
                        ENDIF.
                      ENDWHILE.
                      DATA(t231) = VALUE i( ).
                      DATA(t232) = VALUE i( ).
                      DATA(t233) = VALUE string( ).
                      WHILE t222 > t221.
                        t232 = t222 - 1.
                        t233 = t209+t232(1).
                        DATA t234 TYPE c LENGTH 1.
                        CLEAR t234.
                        DATA(t235) = VALUE xstring( ).
                        DATA t236 TYPE x LENGTH 1.
                        CLEAR t236.
                        DATA t237 TYPE x LENGTH 1.
                        CLEAR t237.
                        DATA(t238) = VALUE i( ).
                        t234 = t233.
                        t231 = cl_abap_conv_out_ce=>uccpi( t234 ).
                        IF t231 >= 255.
                          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                          ENDIF.
                          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t233 IMPORTING buffer = t235 ).
                          t236 = t235(1).
                          t237 = t235+1(1).
                          t231 = t236.
                          t238 = t237.
                          t231 = t231 + t238 * 256.
                        ENDIF.
                        IF t231 = 9 OR t231 = 10 OR t231 = 11 OR t231 = 12 OR t231 = 13 OR t231 = 32 OR t231 = 160 OR t231 = 5760 OR t231 = 8232 OR t231 = 8233 OR t231 = 8239 OR t231 = 8287 OR t231 = 12288 OR t231 = 65279 OR t231 >= 8192 AND t231 <= 8202.
                          t222 = t222 - 1.
                        ELSE.
                          EXIT.
                        ENDIF.
                      ENDWHILE.
                      IF t222 > t221.
                        t220 = t222 - t221.
                        t208 = t209+t221(t220).
                      ELSE.
                        CLEAR t208.
                      ENDIF.
                      DATA(t239) = strlen( t208 ).
                      t207 = t239.
                      DATA(t240) = 0.
                      t206 = xsdbool( t207 = t240 ).
                      t202 = t206.
                    ENDIF.
                    IF t202 = abap_true.
                      me->add_51c1( ).
                    ELSE.
                      DATA(t241) = VALUE abap_bool( ).
                      DATA t242 TYPE abap_bool.
                      DATA t243 TYPE abap_bool.
                      DATA(t244) = t83.
                      DATA(t245) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                      t243 = xsdbool( t244 = t245 ).
                      t242 = t243.
                      IF t243 = abap_false.
                        DATA t246 TYPE abap_bool.
                        DATA(t247) = t83.
                        DATA(t248) = CONV i( zcl_lnt_lexer_module=>ch_equals ).
                        t246 = xsdbool( t247 = t248 ).
                        t242 = t246.
                      ENDIF.
                      t241 = t242.
                      IF t242 = abap_true.
                        DATA t249 TYPE abap_bool.
                        DATA(t250) = t118.
                        DATA(t251) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                        t249 = xsdbool( t250 = t251 ).
                        t241 = t249.
                      ENDIF.
                      IF t241 = abap_true.
                        me->add_51c1( ).
                      ELSE.
                        DATA(t252) = VALUE abap_bool( ).
                        DATA t253 TYPE abap_bool.
                        DATA t254 TYPE abap_bool.
                        DATA(t255) = t17.
                        DATA(t256) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                        t254 = xsdbool( t255 = t256 ).
                        t253 = t254.
                        IF t254 = abap_true.
                          DATA t257 TYPE abap_bool.
                          DATA(t258) = t83.
                          DATA(t259) = CONV i( zcl_lnt_lexer_module=>ch_space ).
                          t257 = xsdbool( t258 <> t259 ).
                          t253 = t257.
                        ENDIF.
                        t252 = t253.
                        IF t253 = abap_true.
                          DATA(t260) = VALUE abap_bool( ).
                          DATA(t261) = VALUE abap_bool( ).
                          DATA(t262) = VALUE i( ).
                          DATA(t263) = VALUE f( ).
                          DATA t264 TYPE REF TO zcl_lnt_lexer_stream.
                          DATA(t265) = t2.
                          t264 = t265.
                          DATA(t266) = VALUE f( ).
                          DATA t267 TYPE i.
                          DATA t268 TYPE i.
                          DATA t269 TYPE i.
                          DATA(t270) = t264.
                          t269 = t270->offset.
                          DATA(t271) = 1.
                          t268 = t269 - t271.
                          t267 = t268.
                          DATA(t272) = VALUE f( ).
                          DATA t273 TYPE abap_bool.
                          DATA(t274) = t267.
                          DATA(t275) = 0.
                          t273 = xsdbool( t274 < t275 ).
                          IF t273 = abap_true.
                            DATA t276 TYPE f.
                            DATA(t277) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                            t276 = t277.
                            t272 = t276.
                          ELSE.
                            DATA(t278) = VALUE f( ).
                            DATA(t279) = VALUE i( ).
                            DATA t280 TYPE string.
                            DATA(t281) = t264.
                            t280 = t281->raw.
                            DATA(t282) = t267.
                            DATA(t283) = strlen( t280 ).
                            IF t282 < 0 OR t282 >= t283.
                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                            ENDIF.
                            DATA(t284) = CONV string( t280+t282(1) ).
                            DATA t285 TYPE c LENGTH 1.
                            CLEAR t285.
                            DATA(t286) = VALUE xstring( ).
                            DATA t287 TYPE x LENGTH 1.
                            CLEAR t287.
                            DATA t288 TYPE x LENGTH 1.
                            CLEAR t288.
                            DATA(t289) = VALUE i( ).
                            t285 = t284.
                            t279 = cl_abap_conv_out_ce=>uccpi( t285 ).
                            IF t279 >= 255.
                              IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                                zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                              ENDIF.
                              zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t284 IMPORTING buffer = t286 ).
                              t287 = t286(1).
                              t288 = t286+1(1).
                              t279 = t287.
                              t289 = t288.
                              t279 = t279 + t289 * 256.
                            ENDIF.
                            t278 = t279.
                            t272 = t278.
                          ENDIF.
                          t266 = t272.
                          t263 = t266.
                          t262 = t263.
                          DATA(t290) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                          t261 = xsdbool( t262 = t290 ).
                          t260 = t261.
                          IF t261 = abap_false.
                            DATA(t291) = VALUE abap_bool( ).
                            DATA(t292) = VALUE i( ).
                            DATA(t293) = VALUE f( ).
                            DATA t294 TYPE REF TO zcl_lnt_lexer_stream.
                            DATA(t295) = t2.
                            t294 = t295.
                            DATA(t296) = VALUE f( ).
                            DATA t297 TYPE i.
                            DATA t298 TYPE i.
                            DATA t299 TYPE i.
                            DATA(t300) = t294.
                            t299 = t300->offset.
                            DATA(t301) = 1.
                            t298 = t299 - t301.
                            t297 = t298.
                            DATA(t302) = VALUE f( ).
                            DATA t303 TYPE abap_bool.
                            DATA(t304) = t297.
                            DATA(t305) = 0.
                            t303 = xsdbool( t304 < t305 ).
                            IF t303 = abap_true.
                              DATA t306 TYPE f.
                              DATA(t307) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                              t306 = t307.
                              t302 = t306.
                            ELSE.
                              DATA(t308) = VALUE f( ).
                              DATA(t309) = VALUE i( ).
                              DATA t310 TYPE string.
                              DATA(t311) = t294.
                              t310 = t311->raw.
                              DATA(t312) = t297.
                              DATA(t313) = strlen( t310 ).
                              IF t312 < 0 OR t312 >= t313.
                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                              ENDIF.
                              DATA(t314) = CONV string( t310+t312(1) ).
                              DATA t315 TYPE c LENGTH 1.
                              CLEAR t315.
                              DATA(t316) = VALUE xstring( ).
                              DATA t317 TYPE x LENGTH 1.
                              CLEAR t317.
                              DATA t318 TYPE x LENGTH 1.
                              CLEAR t318.
                              DATA(t319) = VALUE i( ).
                              t315 = t314.
                              t309 = cl_abap_conv_out_ce=>uccpi( t315 ).
                              IF t309 >= 255.
                                IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                                  zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                ENDIF.
                                zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t314 IMPORTING buffer = t316 ).
                                t317 = t316(1).
                                t318 = t316+1(1).
                                t309 = t317.
                                t319 = t318.
                                t309 = t309 + t319 * 256.
                              ENDIF.
                              t308 = t309.
                              t302 = t308.
                            ENDIF.
                            t296 = t302.
                            t293 = t296.
                            t292 = t293.
                            DATA(t320) = CONV i( zcl_lnt_lexer_module=>ch_equals ).
                            t291 = xsdbool( t292 = t320 ).
                            t260 = t291.
                          ENDIF.
                          t252 = t260.
                        ENDIF.
                        IF t252 = abap_true.
                          me->add_51c1( ).
                        ELSE.
                          DATA t321 TYPE abap_bool.
                          DATA t322 TYPE abap_bool.
                          DATA t323 TYPE int8.
                          DATA t324 TYPE f.
                          DATA t325 TYPE REF TO zcl_lnt_lexer_buffer.
                          DATA(t326) = me->buffer.
                          t325 = t326.
                          DATA t327 TYPE f.
                          DATA t328 TYPE int8.
                          DATA t329 TYPE int8.
                          DATA t330 TYPE i.
                          DATA(t331) = t325.
                          t330 = t331->end.
                          t329 = t330.
                          DATA t332 TYPE int8.
                          DATA t333 TYPE i.
                          DATA(t334) = t325.
                          t333 = t334->start.
                          t332 = t333.
                          t328 = t329 - t332.
                          t327 = t328.
                          t324 = t327.
                          t323 = t324.
                          DATA(t335) = CONV int8( 1 ).
                          t322 = xsdbool( t323 = t335 ).
                          t321 = t322.
                          IF t322 = abap_true.
                            DATA(t336) = VALUE abap_bool( ).
                            DATA(t337) = VALUE abap_bool( ).
                            DATA t338 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
                            CLEAR t338.
                            IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
                              zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
                            ENDIF.
                            t338 = zcl_lnt_lexer_module=>bufs.
                            DATA t339 TYPE f.
                            DATA(t340) = t17.
                            t339 = t340.
                            t337 = t338->has( p0 = t339 ).
                            t336 = t337.
                            IF t337 = abap_false.
                              DATA t341 TYPE abap_bool.
                              DATA t342 TYPE abap_bool.
                              DATA(t343) = t17.
                              DATA(t344) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                              t342 = xsdbool( t343 = t344 ).
                              t341 = t342.
                              IF t342 = abap_true.
                                DATA t345 TYPE abap_bool.
                                DATA(t346) = t83.
                                DATA(t347) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                                t345 = xsdbool( t346 <> t347 ).
                                t341 = t345.
                              ENDIF.
                              t336 = t341.
                            ENDIF.
                            t321 = t336.
                          ENDIF.
                          IF t321 = abap_true.
                            me->add_51c1( ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t348 TYPE abap_bool.
        DATA t349 TYPE abap_bool.
        DATA(t350) = CONV f( me->m ).
        DATA t351 TYPE f.
        DATA(t352) = CONV i( zcl_lnt_lexer_module=>mode_pragma ).
        t351 = t352.
        t349 = xsdbool( t350 = t351 ).
        t348 = t349.
        IF t349 = abap_true.
          DATA(t353) = VALUE abap_bool( ).
          DATA(t354) = VALUE abap_bool( ).
          DATA(t355) = VALUE abap_bool( ).
          DATA t356 TYPE abap_bool.
          DATA t357 TYPE abap_bool.
          DATA(t358) = t83.
          DATA(t359) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
          t357 = xsdbool( t358 = t359 ).
          t356 = t357.
          IF t357 = abap_false.
            DATA t360 TYPE abap_bool.
            DATA(t361) = t83.
            DATA(t362) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
            t360 = xsdbool( t361 = t362 ).
            t356 = t360.
          ENDIF.
          t355 = t356.
          IF t356 = abap_false.
            DATA t363 TYPE abap_bool.
            DATA(t364) = t83.
            DATA(t365) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
            t363 = xsdbool( t364 = t365 ).
            t355 = t363.
          ENDIF.
          t354 = t355.
          IF t355 = abap_false.
            DATA t366 TYPE abap_bool.
            DATA(t367) = t83.
            DATA(t368) = CONV i( zcl_lnt_lexer_module=>ch_space ).
            t366 = xsdbool( t367 = t368 ).
            t354 = t366.
          ENDIF.
          t353 = t354.
          IF t354 = abap_false.
            DATA t369 TYPE abap_bool.
            DATA(t370) = t83.
            DATA(t371) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
            t369 = xsdbool( t370 = t371 ).
            t353 = t369.
          ENDIF.
          t348 = t353.
        ENDIF.
        IF t348 = abap_true.
          me->add_51c1( ).
          DATA t372 TYPE f.
          DATA(t373) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
          t372 = t373.
          me->m = t372.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
        ELSE.
          DATA(t374) = VALUE abap_bool( ).
          DATA(t375) = VALUE abap_bool( ).
          DATA(t376) = VALUE abap_bool( ).
          DATA(t377) = VALUE abap_bool( ).
          DATA t378 TYPE abap_bool.
          DATA t379 TYPE abap_bool.
          DATA(t380) = CONV f( me->m ).
          DATA t381 TYPE f.
          DATA(t382) = CONV i( zcl_lnt_lexer_module=>mode_ping ).
          t381 = t382.
          t379 = xsdbool( t380 = t381 ).
          t378 = t379.
          IF t379 = abap_true.
            DATA t383 TYPE abap_bool.
            DATA t384 TYPE int8.
            DATA t385 TYPE f.
            DATA t386 TYPE REF TO zcl_lnt_lexer_buffer.
            DATA(t387) = me->buffer.
            t386 = t387.
            DATA t388 TYPE f.
            DATA t389 TYPE int8.
            DATA t390 TYPE int8.
            DATA t391 TYPE i.
            DATA(t392) = t386.
            t391 = t392->end.
            t390 = t391.
            DATA t393 TYPE int8.
            DATA t394 TYPE i.
            DATA(t395) = t386.
            t394 = t395->start.
            t393 = t394.
            t389 = t390 - t393.
            t388 = t389.
            t385 = t388.
            t384 = t385.
            DATA(t396) = CONV int8( 1 ).
            t383 = xsdbool( t384 > t396 ).
            t378 = t383.
          ENDIF.
          t377 = t378.
          IF t378 = abap_true.
            DATA t397 TYPE abap_bool.
            DATA(t398) = t17.
            DATA(t399) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t397 = xsdbool( t398 = t399 ).
            t377 = t397.
          ENDIF.
          t376 = t377.
          IF t377 = abap_true.
            DATA(t400) = VALUE abap_bool( ).
            DATA t401 TYPE abap_bool.
            DATA t402 TYPE abap_bool.
            DATA(t403) = t83.
            DATA(t404) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t402 = xsdbool( t403 = t404 ).
            t401 = t402.
            IF t402 = abap_true.
              DATA t405 TYPE abap_bool.
              DATA(t406) = t118.
              DATA(t407) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
              t405 = xsdbool( t406 = t407 ).
              t401 = t405.
            ENDIF.
            t400 = xsdbool( t401 = abap_false ).
            t376 = t400.
          ENDIF.
          t375 = t376.
          IF t376 = abap_true.
            DATA t408 TYPE abap_bool.
            DATA(t409) = t83.
            DATA(t410) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t408 = xsdbool( t409 <> t410 ).
            t375 = t408.
          ENDIF.
          t374 = t375.
          IF t375 = abap_true.
            DATA t411 TYPE abap_bool.
            DATA(t412) = me->buffer.
            DATA t413 TYPE f.
            DATA(t414) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t413 = t414.
            t411 = t412->count_is_even( i_char = t413 ).
            t374 = t411.
          ENDIF.
          IF t374 = abap_true.
            DATA(t415) = VALUE abap_bool( ).
            DATA t416 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
            CLEAR t416.
            IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
              zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
            ENDIF.
            t416 = zcl_lnt_lexer_module=>after_literal.
            DATA t417 TYPE f.
            DATA(t418) = t83.
            t417 = t418.
            t415 = t416->has( p0 = t417 ).
            IF t415 = abap_true.
              me->add_51c1( ).
            ENDIF.
            DATA t419 TYPE abap_bool.
            DATA(t420) = t83.
            DATA(t421) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
            t419 = xsdbool( t420 = t421 ).
            IF t419 = abap_true.
              DATA t422 TYPE f.
              DATA(t423) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
              t422 = t423.
              me->m = t422.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
            ELSE.
              DATA t424 TYPE f.
              DATA(t425) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
              t424 = t425.
              me->m = t424.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
            ENDIF.
          ELSE.
            DATA(t426) = VALUE abap_bool( ).
            DATA(t427) = VALUE abap_bool( ).
            DATA t428 TYPE abap_bool.
            DATA t429 TYPE abap_bool.
            DATA(t430) = CONV f( me->m ).
            DATA t431 TYPE f.
            DATA(t432) = CONV i( zcl_lnt_lexer_module=>mode_template ).
            t431 = t432.
            t429 = xsdbool( t430 = t431 ).
            t428 = t429.
            IF t429 = abap_true.
              DATA t433 TYPE abap_bool.
              DATA t434 TYPE int8.
              DATA t435 TYPE f.
              DATA t436 TYPE REF TO zcl_lnt_lexer_buffer.
              DATA(t437) = me->buffer.
              t436 = t437.
              DATA t438 TYPE f.
              DATA t439 TYPE int8.
              DATA t440 TYPE int8.
              DATA t441 TYPE i.
              DATA(t442) = t436.
              t441 = t442->end.
              t440 = t441.
              DATA t443 TYPE int8.
              DATA t444 TYPE i.
              DATA(t445) = t436.
              t444 = t445->start.
              t443 = t444.
              t439 = t440 - t443.
              t438 = t439.
              t435 = t438.
              t434 = t435.
              DATA(t446) = CONV int8( 1 ).
              t433 = xsdbool( t434 > t446 ).
              t428 = t433.
            ENDIF.
            t427 = t428.
            IF t428 = abap_true.
              DATA t447 TYPE abap_bool.
              DATA t448 TYPE abap_bool.
              DATA(t449) = t17.
              DATA(t450) = CONV i( zcl_lnt_lexer_module=>ch_pipe ).
              t448 = xsdbool( t449 = t450 ).
              t447 = t448.
              IF t448 = abap_false.
                DATA t451 TYPE abap_bool.
                DATA(t452) = t17.
                DATA(t453) = CONV i( zcl_lnt_lexer_module=>ch_lbrace ).
                t451 = xsdbool( t452 = t453 ).
                t447 = t451.
              ENDIF.
              t427 = t447.
            ENDIF.
            t426 = t427.
            IF t427 = abap_true.
              DATA(t454) = VALUE abap_bool( ).
              DATA(t455) = VALUE abap_bool( ).
              DATA(t456) = VALUE i( ).
              DATA(t457) = VALUE f( ).
              DATA t458 TYPE REF TO zcl_lnt_lexer_stream.
              DATA(t459) = t2.
              t458 = t459.
              DATA(t460) = VALUE f( ).
              DATA t461 TYPE i.
              DATA t462 TYPE i.
              DATA t463 TYPE i.
              DATA(t464) = t458.
              t463 = t464->offset.
              DATA(t465) = 1.
              t462 = t463 - t465.
              t461 = t462.
              DATA(t466) = VALUE f( ).
              DATA t467 TYPE abap_bool.
              DATA(t468) = t461.
              DATA(t469) = 0.
              t467 = xsdbool( t468 < t469 ).
              IF t467 = abap_true.
                DATA t470 TYPE f.
                DATA(t471) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                t470 = t471.
                t466 = t470.
              ELSE.
                DATA(t472) = VALUE f( ).
                DATA(t473) = VALUE i( ).
                DATA t474 TYPE string.
                DATA(t475) = t458.
                t474 = t475->raw.
                DATA(t476) = t461.
                DATA(t477) = strlen( t474 ).
                IF t476 < 0 OR t476 >= t477.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                DATA(t478) = CONV string( t474+t476(1) ).
                DATA t479 TYPE c LENGTH 1.
                CLEAR t479.
                DATA(t480) = VALUE xstring( ).
                DATA t481 TYPE x LENGTH 1.
                CLEAR t481.
                DATA t482 TYPE x LENGTH 1.
                CLEAR t482.
                DATA(t483) = VALUE i( ).
                t479 = t478.
                t473 = cl_abap_conv_out_ce=>uccpi( t479 ).
                IF t473 >= 255.
                  IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                    zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                  ENDIF.
                  zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t478 IMPORTING buffer = t480 ).
                  t481 = t480(1).
                  t482 = t480+1(1).
                  t473 = t481.
                  t483 = t482.
                  t473 = t473 + t483 * 256.
                ENDIF.
                t472 = t473.
                t466 = t472.
              ENDIF.
              t460 = t466.
              t457 = t460.
              t456 = t457.
              DATA(t484) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
              t455 = xsdbool( t456 <> t484 ).
              t454 = t455.
              IF t455 = abap_false.
                DATA(t485) = VALUE abap_bool( ).
                DATA(t486) = VALUE abap_bool( ).
                DATA(t487) = VALUE i( ).
                DATA(t488) = VALUE f( ).
                DATA t489 TYPE REF TO zcl_lnt_lexer_stream.
                DATA(t490) = t2.
                t489 = t490.
                DATA(t491) = VALUE f( ).
                DATA t492 TYPE i.
                DATA t493 TYPE i.
                DATA t494 TYPE i.
                DATA(t495) = t489.
                t494 = t495->offset.
                DATA(t496) = 2.
                t493 = t494 - t496.
                t492 = t493.
                DATA(t497) = VALUE f( ).
                DATA t498 TYPE abap_bool.
                DATA(t499) = t492.
                DATA(t500) = 0.
                t498 = xsdbool( t499 < t500 ).
                IF t498 = abap_true.
                  DATA t501 TYPE f.
                  DATA(t502) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                  t501 = t502.
                  t497 = t501.
                ELSE.
                  DATA(t503) = VALUE f( ).
                  DATA(t504) = VALUE i( ).
                  DATA t505 TYPE string.
                  DATA(t506) = t489.
                  t505 = t506->raw.
                  DATA(t507) = t492.
                  DATA(t508) = strlen( t505 ).
                  IF t507 < 0 OR t507 >= t508.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  DATA(t509) = CONV string( t505+t507(1) ).
                  DATA t510 TYPE c LENGTH 1.
                  CLEAR t510.
                  DATA(t511) = VALUE xstring( ).
                  DATA t512 TYPE x LENGTH 1.
                  CLEAR t512.
                  DATA t513 TYPE x LENGTH 1.
                  CLEAR t513.
                  DATA(t514) = VALUE i( ).
                  t510 = t509.
                  t504 = cl_abap_conv_out_ce=>uccpi( t510 ).
                  IF t504 >= 255.
                    IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                      zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                    ENDIF.
                    zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t509 IMPORTING buffer = t511 ).
                    t512 = t511(1).
                    t513 = t511+1(1).
                    t504 = t512.
                    t514 = t513.
                    t504 = t504 + t514 * 256.
                  ENDIF.
                  t503 = t504.
                  t497 = t503.
                ENDIF.
                t491 = t497.
                t488 = t491.
                t487 = t488.
                DATA(t515) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                t486 = xsdbool( t487 = t515 ).
                t485 = t486.
                IF t486 = abap_true.
                  DATA(t516) = VALUE abap_bool( ).
                  DATA(t517) = VALUE i( ).
                  DATA(t518) = VALUE f( ).
                  DATA t519 TYPE REF TO zcl_lnt_lexer_stream.
                  DATA(t520) = t2.
                  t519 = t520.
                  DATA(t521) = VALUE f( ).
                  DATA t522 TYPE i.
                  DATA t523 TYPE i.
                  DATA t524 TYPE i.
                  DATA(t525) = t519.
                  t524 = t525->offset.
                  DATA(t526) = 1.
                  t523 = t524 - t526.
                  t522 = t523.
                  DATA(t527) = VALUE f( ).
                  DATA t528 TYPE abap_bool.
                  DATA(t529) = t522.
                  DATA(t530) = 0.
                  t528 = xsdbool( t529 < t530 ).
                  IF t528 = abap_true.
                    DATA t531 TYPE f.
                    DATA(t532) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                    t531 = t532.
                    t527 = t531.
                  ELSE.
                    DATA(t533) = VALUE f( ).
                    DATA(t534) = VALUE i( ).
                    DATA t535 TYPE string.
                    DATA(t536) = t519.
                    t535 = t536->raw.
                    DATA(t537) = t522.
                    DATA(t538) = strlen( t535 ).
                    IF t537 < 0 OR t537 >= t538.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    DATA(t539) = CONV string( t535+t537(1) ).
                    DATA t540 TYPE c LENGTH 1.
                    CLEAR t540.
                    DATA(t541) = VALUE xstring( ).
                    DATA t542 TYPE x LENGTH 1.
                    CLEAR t542.
                    DATA t543 TYPE x LENGTH 1.
                    CLEAR t543.
                    DATA(t544) = VALUE i( ).
                    t540 = t539.
                    t534 = cl_abap_conv_out_ce=>uccpi( t540 ).
                    IF t534 >= 255.
                      IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                        zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                      ENDIF.
                      zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t539 IMPORTING buffer = t541 ).
                      t542 = t541(1).
                      t543 = t541+1(1).
                      t534 = t542.
                      t544 = t543.
                      t534 = t534 + t544 * 256.
                    ENDIF.
                    t533 = t534.
                    t527 = t533.
                  ENDIF.
                  t521 = t527.
                  t518 = t521.
                  t517 = t518.
                  DATA(t545) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                  t516 = xsdbool( t517 = t545 ).
                  t485 = t516.
                ENDIF.
                t454 = t485.
              ENDIF.
              t426 = t454.
            ENDIF.
            IF t426 = abap_true.
              DATA t546 TYPE abap_bool.
              DATA t547 TYPE abap_bool.
              DATA(t548) = t17.
              DATA(t549) = CONV i( zcl_lnt_lexer_module=>ch_lbrace ).
              t547 = xsdbool( t548 = t549 ).
              t546 = t547.
              IF t547 = abap_false.
                DATA(t550) = VALUE abap_bool( ).
                DATA t551 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
                CLEAR t551.
                IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
                  zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
                ENDIF.
                t551 = zcl_lnt_lexer_module=>after_literal.
                DATA t552 TYPE f.
                DATA(t553) = t83.
                t552 = t553.
                t550 = t551->has( p0 = t552 ).
                t546 = t550.
              ENDIF.
              IF t546 = abap_true.
                me->add_51c1( ).
              ENDIF.
              DATA t554 TYPE f.
              DATA(t555) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
              t554 = t555.
              me->m = t554.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
            ELSE.
              DATA(t556) = VALUE abap_bool( ).
              DATA t557 TYPE abap_bool.
              DATA t558 TYPE abap_bool.
              DATA(t559) = CONV f( me->m ).
              DATA t560 TYPE f.
              DATA(t561) = CONV i( zcl_lnt_lexer_module=>mode_template ).
              t560 = t561.
              t558 = xsdbool( t559 = t560 ).
              t557 = t558.
              IF t558 = abap_true.
                DATA t562 TYPE abap_bool.
                DATA(t563) = t83.
                DATA(t564) = CONV i( zcl_lnt_lexer_module=>ch_rbrace ).
                t562 = xsdbool( t563 = t564 ).
                t557 = t562.
              ENDIF.
              t556 = t557.
              IF t557 = abap_true.
                DATA t565 TYPE abap_bool.
                DATA(t566) = t17.
                DATA(t567) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                t565 = xsdbool( t566 <> t567 ).
                t556 = t565.
              ENDIF.
              IF t556 = abap_true.
                me->add_51c1( ).
              ELSE.
                DATA(t568) = VALUE abap_bool( ).
                DATA(t569) = VALUE abap_bool( ).
                DATA(t570) = VALUE abap_bool( ).
                DATA(t571) = VALUE abap_bool( ).
                DATA t572 TYPE abap_bool.
                DATA t573 TYPE abap_bool.
                DATA(t574) = CONV f( me->m ).
                DATA t575 TYPE f.
                DATA(t576) = CONV i( zcl_lnt_lexer_module=>mode_str ).
                t575 = t576.
                t573 = xsdbool( t574 = t575 ).
                t572 = t573.
                IF t573 = abap_true.
                  DATA t577 TYPE abap_bool.
                  DATA(t578) = t17.
                  DATA(t579) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t577 = xsdbool( t578 = t579 ).
                  t572 = t577.
                ENDIF.
                t571 = t572.
                IF t572 = abap_true.
                  DATA t580 TYPE abap_bool.
                  DATA t581 TYPE int8.
                  DATA t582 TYPE f.
                  DATA t583 TYPE REF TO zcl_lnt_lexer_buffer.
                  DATA(t584) = me->buffer.
                  t583 = t584.
                  DATA t585 TYPE f.
                  DATA t586 TYPE int8.
                  DATA t587 TYPE int8.
                  DATA t588 TYPE i.
                  DATA(t589) = t583.
                  t588 = t589->end.
                  t587 = t588.
                  DATA t590 TYPE int8.
                  DATA t591 TYPE i.
                  DATA(t592) = t583.
                  t591 = t592->start.
                  t590 = t591.
                  t586 = t587 - t590.
                  t585 = t586.
                  t582 = t585.
                  t581 = t582.
                  DATA(t593) = CONV int8( 1 ).
                  t580 = xsdbool( t581 > t593 ).
                  t571 = t580.
                ENDIF.
                t570 = t571.
                IF t571 = abap_true.
                  DATA(t594) = VALUE abap_bool( ).
                  DATA t595 TYPE abap_bool.
                  DATA t596 TYPE abap_bool.
                  DATA(t597) = t83.
                  DATA(t598) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t596 = xsdbool( t597 = t598 ).
                  t595 = t596.
                  IF t596 = abap_true.
                    DATA t599 TYPE abap_bool.
                    DATA(t600) = t118.
                    DATA(t601) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                    t599 = xsdbool( t600 = t601 ).
                    t595 = t599.
                  ENDIF.
                  t594 = xsdbool( t595 = abap_false ).
                  t570 = t594.
                ENDIF.
                t569 = t570.
                IF t570 = abap_true.
                  DATA t602 TYPE abap_bool.
                  DATA(t603) = t83.
                  DATA(t604) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t602 = xsdbool( t603 <> t604 ).
                  t569 = t602.
                ENDIF.
                t568 = t569.
                IF t569 = abap_true.
                  DATA t605 TYPE abap_bool.
                  DATA(t606) = me->buffer.
                  DATA t607 TYPE f.
                  DATA(t608) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t607 = t608.
                  t605 = t606->count_is_even( i_char = t607 ).
                  t568 = t605.
                ENDIF.
                IF t568 = abap_true.
                  DATA(t609) = VALUE abap_bool( ).
                  DATA t610 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
                  CLEAR t610.
                  IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
                    zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
                  ENDIF.
                  t610 = zcl_lnt_lexer_module=>after_literal.
                  DATA t611 TYPE f.
                  DATA(t612) = t83.
                  t611 = t612.
                  t609 = t610->has( p0 = t611 ).
                  IF t609 = abap_true.
                    me->add_51c1( ).
                  ENDIF.
                  DATA t613 TYPE abap_bool.
                  DATA(t614) = t83.
                  DATA(t615) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
                  t613 = xsdbool( t614 = t615 ).
                  IF t613 = abap_true.
                    DATA t616 TYPE f.
                    DATA(t617) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
                    t616 = t617.
                    me->m = t616.
                    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
                  ELSE.
                    DATA t618 TYPE f.
                    DATA(t619) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
                    t618 = t619.
                    me->m = t618.
                    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
                  ENDIF.
                ELSE.
                  DATA t620 TYPE abap_bool.
                  DATA t621 TYPE abap_bool.
                  DATA(t622) = t83.
                  DATA(t623) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                  t621 = xsdbool( t622 = t623 ).
                  t620 = t621.
                  IF t621 = abap_true.
                    DATA t624 TYPE abap_bool.
                    DATA(t625) = CONV f( me->m ).
                    DATA t626 TYPE f.
                    DATA(t627) = CONV i( zcl_lnt_lexer_module=>mode_template ).
                    t626 = t627.
                    t624 = xsdbool( t625 <> t626 ).
                    t620 = t624.
                  ENDIF.
                  IF t620 = abap_true.
                    me->add_51c1( ).
                    DATA t628 TYPE f.
                    DATA(t629) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
                    t628 = t629.
                    me->m = t628.
                    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
                  ELSE.
                    DATA t630 TYPE abap_bool.
                    DATA t631 TYPE abap_bool.
                    DATA(t632) = CONV f( me->m ).
                    DATA t633 TYPE f.
                    DATA(t634) = CONV i( zcl_lnt_lexer_module=>mode_template ).
                    t633 = t634.
                    t631 = xsdbool( t632 = t633 ).
                    t630 = t631.
                    IF t631 = abap_true.
                      DATA t635 TYPE abap_bool.
                      DATA(t636) = t17.
                      DATA(t637) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                      t635 = xsdbool( t636 = t637 ).
                      t630 = t635.
                    ENDIF.
                    IF t630 = abap_true.
                      me->add_51c1( ).
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t638) = VALUE abap_bool( ).
      DATA(t639) = VALUE abap_bool( ).
      DATA t640 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t641) = t2.
      t640 = t641.
      DATA(t642) = VALUE abap_bool( ).
      DATA(t643) = VALUE abap_bool( ).
      DATA(t644) = VALUE i( ).
      DATA(t645) = VALUE f( ).
      DATA t646 TYPE abap_bool.
      DATA t647 TYPE i.
      DATA(t648) = t640.
      t647 = t648->offset.
      DATA(t649) = 0.
      t646 = xsdbool( t647 < t649 ).
      IF t646 = abap_true.
        DATA t650 TYPE f.
        DATA(t651) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
        t650 = t651.
        t645 = t650.
      ELSE.
        DATA(t652) = VALUE f( ).
        DATA t653 TYPE abap_bool.
        DATA t654 TYPE i.
        DATA(t655) = t640.
        t654 = t655->offset.
        DATA t656 TYPE i.
        DATA t657 TYPE string.
        DATA(t658) = t640.
        t657 = t658->raw.
        DATA(t659) = strlen( t657 ).
        t656 = t659.
        t653 = xsdbool( t654 >= t656 ).
        IF t653 = abap_true.
          DATA t660 TYPE f.
          DATA(t661) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t660 = t661.
          t652 = t660.
        ELSE.
          DATA(t662) = VALUE f( ).
          DATA(t663) = VALUE i( ).
          DATA t664 TYPE string.
          DATA(t665) = t640.
          t664 = t665->raw.
          DATA t666 TYPE i.
          DATA(t667) = t640.
          t666 = t667->offset.
          DATA(t668) = strlen( t664 ).
          IF t666 < 0 OR t666 >= t668.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t669) = CONV string( t664+t666(1) ).
          DATA t670 TYPE c LENGTH 1.
          CLEAR t670.
          DATA(t671) = VALUE xstring( ).
          DATA t672 TYPE x LENGTH 1.
          CLEAR t672.
          DATA t673 TYPE x LENGTH 1.
          CLEAR t673.
          DATA(t674) = VALUE i( ).
          t670 = t669.
          t663 = cl_abap_conv_out_ce=>uccpi( t670 ).
          IF t663 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t669 IMPORTING buffer = t671 ).
            t672 = t671(1).
            t673 = t671+1(1).
            t663 = t672.
            t674 = t673.
            t663 = t663 + t674 * 256.
          ENDIF.
          t662 = t663.
          t652 = t662.
        ENDIF.
        t645 = t652.
      ENDIF.
      t644 = t645.
      DATA(t675) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
      t643 = xsdbool( t644 = t675 ).
      IF t643 = abap_true.
        DATA(t676) = t640.
        DATA(t677) = CONV f( 1 ).
        t676->col = t677.
        DELETE t676->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
        DATA(t678) = t640.
        DATA t679 TYPE f.
        DATA t680 TYPE f.
        DATA(t681) = t640.
        t680 = t681->row.
        DATA(t682) = CONV f( 1 ).
        t679 = t680 + t682.
        t678->row = t679.
        DELETE t678->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
      ENDIF.
      DATA(t683) = VALUE abap_bool( ).
      DATA t684 TYPE abap_bool.
      DATA t685 TYPE i.
      DATA(t686) = t640.
      t685 = t686->offset.
      DATA t687 TYPE i.
      DATA t688 TYPE string.
      DATA(t689) = t640.
      t688 = t689->raw.
      DATA(t690) = strlen( t688 ).
      t687 = t690.
      t684 = xsdbool( t685 = t687 ).
      IF t684 = abap_true.
        DATA t691 TYPE abap_bool.
        DATA(t692) = t640.
        DATA t693 TYPE f.
        DATA t694 TYPE f.
        DATA(t695) = t640.
        t694 = t695->col.
        DATA(t696) = CONV f( 1 ).
        t693 = t694 - t696.
        t692->col = t693.
        DELETE t692->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
        DATA(t697) = abap_false.
        t691 = t697.
        t683 = t691.
      ELSE.
        DATA t698 TYPE abap_bool.
        DATA(t699) = t640.
        DATA t700 TYPE f.
        DATA t701 TYPE f.
        DATA(t702) = t640.
        t701 = t702->col.
        DATA(t703) = CONV f( 1 ).
        t700 = t701 + t703.
        t699->col = t700.
        DELETE t699->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
        DATA(t704) = t640.
        DATA t705 TYPE i.
        DATA t706 TYPE i.
        DATA(t707) = t640.
        t706 = t707->offset.
        DATA(t708) = 1.
        t705 = t706 + t708.
        t704->offset = t705.
        DELETE t704->zlnt_record_delet_0597644d88b4 WHERE table_line = `offset`.
        DATA(t709) = abap_true.
        t698 = t709.
        t683 = t698.
      ENDIF.
      t642 = t683.
      t639 = t642.
      t638 = xsdbool( t639 = abap_false ).
      IF t638 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    me->add_51c1( ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d9_e4f0b8f112f46b.
  ENDMETHOD.
ENDCLASS.
