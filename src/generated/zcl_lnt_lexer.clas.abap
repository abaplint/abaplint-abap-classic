* TS: src/abap/1_lexer/lexer.ts:56:1 Lexer
CLASS zcl_lnt_lexer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA virtual TYPE REF TO zcl_lnt_position.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA m TYPE int8.
    DATA stream TYPE REF TO zcl_lnt_lexer_stream.
    DATA buffer TYPE REF TO zcl_lnt_lexer_buffer.
    METHODS run IMPORTING i_file TYPE REF TO zif_lnt_file i_virtual TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabaplexer_result.
    METHODS add_51c1.
    METHODS process IMPORTING i_raw TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_3bfe63ca77b3 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_lexer IMPLEMENTATION.
  METHOD run.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_position( i_virtual ).
    DATA(t3) = CAST zcl_lnt_position( t2 ).
    me->virtual = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->tokens = t4.
    DATA t5 TYPE int8.
    DATA(t6) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
    t5 = t6.
    me->m = t5.
    DATA t7 TYPE string.
    DATA(t8) = CAST zif_lnt_file( t1 ).
    t7 = t8->get_raw(  ).
    me->process( i_raw = t7 ).
    DATA t9 TYPE REF TO zcl_lnt_iabaplexer_result.
    DATA(t10) = CAST zif_lnt_file( t1 ).
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
    t9 = NEW zcl_lnt_iabaplexer_result( i_file = t10 i_tokens = t11 ).
    result = t9.
    
  ENDMETHOD.
  METHOD add_51c1.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE REF TO zcl_lnt_lexer_buffer.
    DATA(t5) = CAST zcl_lnt_lexer_buffer( me->buffer ).
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE string.
    DATA(t8) = CAST zcl_lnt_lexer_buffer( t4 ).
    t7 = t8->raw.
    DATA t9 TYPE i.
    DATA(t10) = CAST zcl_lnt_lexer_buffer( t4 ).
    t9 = t10->start.
    DATA t11 TYPE i.
    DATA(t12) = CAST zcl_lnt_lexer_buffer( t4 ).
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
      DATA t38 TYPE int8.
      DATA t39 TYPE int8.
      DATA t40 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t41) = CAST zcl_lnt_lexer_stream( me->stream ).
      t40 = t41.
      DATA t42 TYPE int8.
      DATA(t43) = CAST zcl_lnt_lexer_stream( t40 ).
      t42 = t43->col.
      t39 = t42.
      t38 = t39.
      DATA t44 TYPE int8.
      DATA t45 TYPE int8.
      DATA t46 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t47) = CAST zcl_lnt_lexer_stream( me->stream ).
      t46 = t47.
      DATA t48 TYPE int8.
      DATA(t49) = CAST zcl_lnt_lexer_stream( t46 ).
      t48 = t49->row.
      t45 = t48.
      t44 = t45.
      DATA t50 TYPE abap_bool.
      DATA(t51) = abap_false.
      t50 = t51.
      DATA t52 TYPE i.
      DATA t53 TYPE i.
      DATA t54 TYPE i.
      DATA t55 TYPE int8.
      DATA t56 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t57) = CAST zcl_lnt_lexer_stream( me->stream ).
      t56 = t57.
      DATA t58 TYPE int8.
      DATA t59 TYPE i.
      DATA(t60) = CAST zcl_lnt_lexer_stream( t56 ).
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
        DATA(t69) = VALUE int8( ).
        DATA t70 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t71) = CAST zcl_lnt_lexer_stream( me->stream ).
        t70 = t71.
        DATA t72 TYPE int8.
        DATA t73 TYPE int8.
        DATA(t74) = t52.
        t73 = t74.
        t72 = t73.
        DATA(t75) = VALUE int8( ).
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE abap_bool.
        DATA(t78) = t72.
        DATA(t79) = CONV int8( 0 ).
        t77 = xsdbool( t78 < t79 ).
        t76 = t77.
        IF t77 = abap_false.
          DATA t80 TYPE abap_bool.
          DATA(t81) = t72.
          DATA t82 TYPE int8.
          DATA t83 TYPE i.
          DATA t84 TYPE string.
          DATA(t85) = CAST zcl_lnt_lexer_stream( t70 ).
          t84 = t85->raw.
          DATA(t86) = strlen( t84 ).
          t83 = t86.
          t82 = t83.
          t80 = xsdbool( t81 >= t82 ).
          t76 = t80.
        ENDIF.
        IF t76 = abap_true.
          DATA t87 TYPE int8.
          DATA(t88) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t87 = t88.
          t75 = t87.
        ELSE.
          DATA(t89) = VALUE int8( ).
          DATA(t90) = VALUE i( ).
          DATA t91 TYPE string.
          DATA(t92) = CAST zcl_lnt_lexer_stream( t70 ).
          t91 = t92->raw.
          DATA(t93) = VALUE i( ).
          DATA(t94) = t72.
          IF t94 < range_int_check_lo_nzik0zk OR t94 > range_int_check_hi_zik0zj.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t93 = t94.
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
      DATA(t122) = VALUE int8( ).
      DATA t123 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t124) = CAST zcl_lnt_lexer_stream( me->stream ).
      t123 = t124.
      DATA(t125) = VALUE int8( ).
      DATA(t126) = VALUE int8( ).
      DATA t127 TYPE int8.
      DATA t128 TYPE int8.
      DATA t129 TYPE i.
      DATA(t130) = CAST zcl_lnt_lexer_stream( t123 ).
      t129 = t130->offset.
      t128 = t129.
      DATA(t131) = CONV int8( 1 ).
      t127 = t128 + t131.
      IF t127 < range_int8_bound_min OR t127 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t126 = t127.
      DATA(t132) = VALUE int8( ).
      DATA t133 TYPE abap_bool.
      DATA(t134) = t126.
      DATA t135 TYPE int8.
      DATA t136 TYPE i.
      DATA t137 TYPE string.
      DATA(t138) = CAST zcl_lnt_lexer_stream( t123 ).
      t137 = t138->raw.
      DATA(t139) = strlen( t137 ).
      t136 = t139.
      t135 = t136.
      t133 = xsdbool( t134 >= t135 ).
      IF t133 = abap_true.
        DATA t140 TYPE int8.
        DATA(t141) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t140 = t141.
        t132 = t140.
      ELSE.
        DATA(t142) = VALUE int8( ).
        DATA(t143) = VALUE i( ).
        DATA t144 TYPE string.
        DATA(t145) = CAST zcl_lnt_lexer_stream( t123 ).
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
      CLEAR t187.
      DATA t188 TYPE REF TO zcl_lnt_position.
      CLEAR t188.
      DATA(t189) = t44.
      DATA t190 TYPE int8.
      DATA(t191) = t38.
      DATA t192 TYPE int8.
      DATA t193 TYPE i.
      DATA(t194) = t1.
      DATA(t195) = strlen( t194 ).
      t193 = t195.
      t192 = t193.
      t190 = t191 - t192.
      IF t190 < range_int8_bound_min OR t190 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t188 = NEW zcl_lnt_position( i_row = t189 i_col = t190 ).
      t187 = t188.
      DATA t196 TYPE abap_bool.
      DATA(t197) = CAST zcl_lnt_position( me->virtual ).
      t196 = xsdbool( t197 IS BOUND ).
      IF t196 = abap_true.
        DATA t198 TYPE REF TO zcl_lnt_virtual_position.
        DATA t199 TYPE REF TO zcl_lnt_position.
        DATA(t200) = CAST zcl_lnt_position( me->virtual ).
        t199 = t200.
        DATA t201 TYPE int8.
        DATA t202 TYPE REF TO zcl_lnt_position.
        DATA(t203) = CAST zcl_lnt_position( t187 ).
        t202 = t203.
        DATA t204 TYPE int8.
        DATA(t205) = CAST zcl_lnt_position( t202 ).
        t204 = t205->row.
        t201 = t204.
        DATA t206 TYPE int8.
        DATA t207 TYPE REF TO zcl_lnt_position.
        DATA(t208) = CAST zcl_lnt_position( t187 ).
        t207 = t208.
        DATA t209 TYPE int8.
        DATA(t210) = CAST zcl_lnt_position( t207 ).
        t209 = t210->col.
        t206 = t209.
        t198 = NEW zcl_lnt_virtual_position( i_virtual = t199 i_row = t201 i_col = t206 ).
        t187 = t198.
      ENDIF.
      DATA t211 TYPE REF TO zcl_lnt_abstract_token.
      DATA t212 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t212.
      t211 = t212.
      DATA t213 TYPE abap_bool.
      DATA(t214) = CONV int8( me->m ).
      DATA t215 TYPE int8.
      DATA(t216) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
      t215 = t216.
      t213 = xsdbool( t214 = t215 ).
      IF t213 = abap_true.
        DATA t217 TYPE REF TO zcl_lnt_lx_comment.
        DATA(t218) = CAST zcl_lnt_position( t187 ).
        DATA(t219) = t1.
        t217 = NEW zcl_lnt_lx_comment( i_start = t218 i_str = t219 ).
        t211 = t217.
      ELSE.
        DATA t220 TYPE abap_bool.
        DATA t221 TYPE abap_bool.
        DATA(t222) = CONV int8( me->m ).
        DATA t223 TYPE int8.
        DATA(t224) = CONV i( zcl_lnt_lexer_module=>mode_ping ).
        t223 = t224.
        t221 = xsdbool( t222 = t223 ).
        t220 = t221.
        IF t221 = abap_false.
          DATA t225 TYPE abap_bool.
          DATA(t226) = CONV int8( me->m ).
          DATA t227 TYPE int8.
          DATA(t228) = CONV i( zcl_lnt_lexer_module=>mode_str ).
          t227 = t228.
          t225 = xsdbool( t226 = t227 ).
          t220 = t225.
        ENDIF.
        IF t220 = abap_true.
          DATA t229 TYPE REF TO zcl_lnt_string_token.
          DATA(t230) = CAST zcl_lnt_position( t187 ).
          DATA(t231) = t1.
          t229 = NEW zcl_lnt_string_token( i_start = t230 i_str = t231 ).
          t211 = t229.
        ELSE.
          DATA t232 TYPE abap_bool.
          DATA(t233) = CONV int8( me->m ).
          DATA t234 TYPE int8.
          DATA(t235) = CONV i( zcl_lnt_lexer_module=>mode_template ).
          t234 = t235.
          t232 = xsdbool( t233 = t234 ).
          IF t232 = abap_true.
            DATA(t236) = VALUE string( ).
            DATA(t237) = VALUE string( ).
            DATA(t238) = t1.
            DATA(t239) = 0.
            DATA(t240) = strlen( t238 ).
            IF t239 < 0 OR t239 >= t240.
              CLEAR t237.
            ELSE.
              t237 = t238+t239(1).
            ENDIF.
            t236 = t237.
            DATA(t241) = VALUE string( ).
            DATA(t242) = VALUE string( ).
            DATA(t243) = t1.
            DATA t244 TYPE i.
            DATA t245 TYPE i.
            DATA(t246) = t1.
            DATA(t247) = strlen( t246 ).
            t245 = t247.
            DATA(t248) = 1.
            t244 = t245 - t248.
            DATA(t249) = strlen( t243 ).
            IF t244 < 0 OR t244 >= t249.
              CLEAR t242.
            ELSE.
              t242 = t243+t244(1).
            ENDIF.
            t241 = t242.
            DATA t250 TYPE abap_bool.
            DATA t251 TYPE abap_bool.
            DATA(t252) = t236.
            DATA(t253) = |\||.
            t251 = xsdbool( t252 = t253 ).
            t250 = t251.
            IF t251 = abap_true.
              DATA t254 TYPE abap_bool.
              DATA(t255) = t241.
              DATA(t256) = |\||.
              t254 = xsdbool( t255 = t256 ).
              t250 = t254.
            ENDIF.
            IF t250 = abap_true.
              DATA t257 TYPE REF TO zcl_lnt_lx_string_template.
              DATA(t258) = CAST zcl_lnt_position( t187 ).
              DATA(t259) = t1.
              t257 = NEW zcl_lnt_lx_string_template( i_start = t258 i_str = t259 ).
              t211 = t257.
            ELSE.
              DATA(t260) = VALUE abap_bool( ).
              DATA t261 TYPE abap_bool.
              DATA t262 TYPE abap_bool.
              DATA(t263) = t236.
              DATA(t264) = |\||.
              t262 = xsdbool( t263 = t264 ).
              t261 = t262.
              IF t262 = abap_true.
                DATA t265 TYPE abap_bool.
                DATA(t266) = t241.
                DATA(t267) = |\{|.
                t265 = xsdbool( t266 = t267 ).
                t261 = t265.
              ENDIF.
              t260 = t261.
              IF t261 = abap_true.
                DATA t268 TYPE abap_bool.
                DATA(t269) = t118.
                DATA(t270) = abap_true.
                t268 = xsdbool( t269 = t270 ).
                t260 = t268.
              ENDIF.
              IF t260 = abap_true.
                DATA t271 TYPE REF TO zcl_lnt_string_template_begin.
                DATA(t272) = CAST zcl_lnt_position( t187 ).
                DATA(t273) = t1.
                t271 = NEW zcl_lnt_string_template_begin( i_start = t272 i_str = t273 ).
                t211 = t271.
              ELSE.
                DATA(t274) = VALUE abap_bool( ).
                DATA t275 TYPE abap_bool.
                DATA t276 TYPE abap_bool.
                DATA(t277) = t236.
                DATA(t278) = |\}|.
                t276 = xsdbool( t277 = t278 ).
                t275 = t276.
                IF t276 = abap_true.
                  DATA t279 TYPE abap_bool.
                  DATA(t280) = t241.
                  DATA(t281) = |\||.
                  t279 = xsdbool( t280 = t281 ).
                  t275 = t279.
                ENDIF.
                t274 = t275.
                IF t275 = abap_true.
                  DATA t282 TYPE abap_bool.
                  DATA(t283) = t50.
                  DATA(t284) = abap_true.
                  t282 = xsdbool( t283 = t284 ).
                  t274 = t282.
                ENDIF.
                IF t274 = abap_true.
                  DATA t285 TYPE REF TO zcl_lnt_string_template_end.
                  DATA(t286) = CAST zcl_lnt_position( t187 ).
                  DATA(t287) = t1.
                  t285 = NEW zcl_lnt_string_template_end( i_start = t286 i_str = t287 ).
                  t211 = t285.
                ELSE.
                  DATA(t288) = VALUE abap_bool( ).
                  DATA(t289) = VALUE abap_bool( ).
                  DATA t290 TYPE abap_bool.
                  DATA t291 TYPE abap_bool.
                  DATA(t292) = t236.
                  DATA(t293) = |\}|.
                  t291 = xsdbool( t292 = t293 ).
                  t290 = t291.
                  IF t291 = abap_true.
                    DATA t294 TYPE abap_bool.
                    DATA(t295) = t241.
                    DATA(t296) = |\{|.
                    t294 = xsdbool( t295 = t296 ).
                    t290 = t294.
                  ENDIF.
                  t289 = t290.
                  IF t290 = abap_true.
                    DATA t297 TYPE abap_bool.
                    DATA(t298) = t118.
                    DATA(t299) = abap_true.
                    t297 = xsdbool( t298 = t299 ).
                    t289 = t297.
                  ENDIF.
                  t288 = t289.
                  IF t289 = abap_true.
                    DATA t300 TYPE abap_bool.
                    DATA(t301) = t50.
                    DATA(t302) = abap_true.
                    t300 = xsdbool( t301 = t302 ).
                    t288 = t300.
                  ENDIF.
                  IF t288 = abap_true.
                    DATA t303 TYPE REF TO zcl_lnt_string_template_middle.
                    DATA(t304) = CAST zcl_lnt_position( t187 ).
                    DATA(t305) = t1.
                    t303 = NEW zcl_lnt_string_template_middle( i_start = t304 i_str = t305 ).
                    t211 = t303.
                  ELSE.
                    DATA t306 TYPE REF TO zcl_lnt_lx_identifier.
                    DATA(t307) = CAST zcl_lnt_position( t187 ).
                    DATA(t308) = t1.
                    t306 = NEW zcl_lnt_lx_identifier( i_start = t307 i_str = t308 ).
                    t211 = t306.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t309 TYPE abap_bool.
            DATA t310 TYPE abap_bool.
            DATA t311 TYPE i.
            DATA(t312) = t1.
            DATA(t313) = strlen( t312 ).
            t311 = t313.
            DATA(t314) = 2.
            t310 = xsdbool( t311 > t314 ).
            t309 = t310.
            IF t310 = abap_true.
              DATA(t315) = VALUE abap_bool( ).
              DATA(t316) = VALUE string( ).
              DATA(t317) = t1.
              DATA(t318) = 0.
              DATA(t319) = 2.
              DATA(t320) = strlen( t317 ).
              IF t318 < 0.
                t318 = t318 + t320.
                IF t318 < 0.
                  t318 = 0.
                ENDIF.
              ENDIF.
              IF t318 > t320 OR t319 <= 0.
                CLEAR t316.
              ELSE.
                IF t319 > t320 - t318.
                  t319 = t320 - t318.
                ENDIF.
                t316 = t317+t318(t319).
              ENDIF.
              DATA(t321) = |##|.
              t315 = xsdbool( t316 = t321 ).
              t309 = t315.
            ENDIF.
            IF t309 = abap_true.
              DATA t322 TYPE REF TO zcl_lnt_pragma.
              DATA(t323) = CAST zcl_lnt_position( t187 ).
              DATA(t324) = t1.
              t322 = NEW zcl_lnt_pragma( i_start = t323 i_str = t324 ).
              t211 = t322.
            ELSE.
              DATA t325 TYPE abap_bool.
              DATA t326 TYPE i.
              DATA(t327) = t1.
              DATA(t328) = strlen( t327 ).
              t326 = t328.
              DATA(t329) = 1.
              t325 = xsdbool( t326 = t329 ).
              IF t325 = abap_true.
                DATA t330 TYPE abap_bool.
                DATA t331 TYPE abap_bool.
                DATA(t332) = t1.
                DATA(t333) = |.|.
                t331 = xsdbool( t332 = t333 ).
                t330 = t331.
                IF t331 = abap_false.
                  DATA t334 TYPE abap_bool.
                  DATA(t335) = t1.
                  DATA(t336) = |,|.
                  t334 = xsdbool( t335 = t336 ).
                  t330 = t334.
                ENDIF.
                IF t330 = abap_true.
                  DATA t337 TYPE REF TO zcl_lnt_punctuation.
                  DATA(t338) = CAST zcl_lnt_position( t187 ).
                  DATA(t339) = t1.
                  t337 = NEW zcl_lnt_punctuation( i_start = t338 i_str = t339 ).
                  t211 = t337.
                ELSE.
                  DATA t340 TYPE abap_bool.
                  DATA(t341) = t1.
                  DATA(t342) = |[|.
                  t340 = xsdbool( t341 = t342 ).
                  IF t340 = abap_true.
                    DATA t343 TYPE abap_bool.
                    DATA t344 TYPE abap_bool.
                    DATA(t345) = t50.
                    DATA(t346) = abap_true.
                    t344 = xsdbool( t345 = t346 ).
                    t343 = t344.
                    IF t344 = abap_true.
                      DATA t347 TYPE abap_bool.
                      DATA(t348) = t118.
                      DATA(t349) = abap_true.
                      t347 = xsdbool( t348 = t349 ).
                      t343 = t347.
                    ENDIF.
                    IF t343 = abap_true.
                      DATA t350 TYPE REF TO zcl_lnt_w_bracket_left_w.
                      DATA(t351) = CAST zcl_lnt_position( t187 ).
                      DATA(t352) = t1.
                      t350 = NEW zcl_lnt_w_bracket_left_w( i_start = t351 i_str = t352 ).
                      t211 = t350.
                    ELSE.
                      DATA t353 TYPE abap_bool.
                      DATA(t354) = t50.
                      DATA(t355) = abap_true.
                      t353 = xsdbool( t354 = t355 ).
                      IF t353 = abap_true.
                        DATA t356 TYPE REF TO zcl_lnt_w_bracket_left.
                        DATA(t357) = CAST zcl_lnt_position( t187 ).
                        DATA(t358) = t1.
                        t356 = NEW zcl_lnt_w_bracket_left( i_start = t357 i_str = t358 ).
                        t211 = t356.
                      ELSE.
                        DATA t359 TYPE abap_bool.
                        DATA(t360) = t118.
                        DATA(t361) = abap_true.
                        t359 = xsdbool( t360 = t361 ).
                        IF t359 = abap_true.
                          DATA t362 TYPE REF TO zcl_lnt_bracket_left_w.
                          DATA(t363) = CAST zcl_lnt_position( t187 ).
                          DATA(t364) = t1.
                          t362 = NEW zcl_lnt_bracket_left_w( i_start = t363 i_str = t364 ).
                          t211 = t362.
                        ELSE.
                          DATA t365 TYPE REF TO zcl_lnt_bracket_left.
                          DATA(t366) = CAST zcl_lnt_position( t187 ).
                          DATA(t367) = t1.
                          t365 = NEW zcl_lnt_bracket_left( i_start = t366 i_str = t367 ).
                          t211 = t365.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA t368 TYPE abap_bool.
                    DATA(t369) = t1.
                    DATA(t370) = |(|.
                    t368 = xsdbool( t369 = t370 ).
                    IF t368 = abap_true.
                      DATA t371 TYPE abap_bool.
                      DATA t372 TYPE abap_bool.
                      DATA(t373) = t50.
                      DATA(t374) = abap_true.
                      t372 = xsdbool( t373 = t374 ).
                      t371 = t372.
                      IF t372 = abap_true.
                        DATA t375 TYPE abap_bool.
                        DATA(t376) = t118.
                        DATA(t377) = abap_true.
                        t375 = xsdbool( t376 = t377 ).
                        t371 = t375.
                      ENDIF.
                      IF t371 = abap_true.
                        DATA t378 TYPE REF TO zcl_lnt_w_paren_left_w.
                        DATA(t379) = CAST zcl_lnt_position( t187 ).
                        DATA(t380) = t1.
                        t378 = NEW zcl_lnt_w_paren_left_w( i_start = t379 i_str = t380 ).
                        t211 = t378.
                      ELSE.
                        DATA t381 TYPE abap_bool.
                        DATA(t382) = t50.
                        DATA(t383) = abap_true.
                        t381 = xsdbool( t382 = t383 ).
                        IF t381 = abap_true.
                          DATA t384 TYPE REF TO zcl_lnt_w_paren_left.
                          DATA(t385) = CAST zcl_lnt_position( t187 ).
                          DATA(t386) = t1.
                          t384 = NEW zcl_lnt_w_paren_left( i_start = t385 i_str = t386 ).
                          t211 = t384.
                        ELSE.
                          DATA t387 TYPE abap_bool.
                          DATA(t388) = t118.
                          DATA(t389) = abap_true.
                          t387 = xsdbool( t388 = t389 ).
                          IF t387 = abap_true.
                            DATA t390 TYPE REF TO zcl_lnt_paren_left_w.
                            DATA(t391) = CAST zcl_lnt_position( t187 ).
                            DATA(t392) = t1.
                            t390 = NEW zcl_lnt_paren_left_w( i_start = t391 i_str = t392 ).
                            t211 = t390.
                          ELSE.
                            DATA t393 TYPE REF TO zcl_lnt_paren_left.
                            DATA(t394) = CAST zcl_lnt_position( t187 ).
                            DATA(t395) = t1.
                            t393 = NEW zcl_lnt_paren_left( i_start = t394 i_str = t395 ).
                            t211 = t393.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ELSE.
                      DATA t396 TYPE abap_bool.
                      DATA(t397) = t1.
                      DATA(t398) = |]|.
                      t396 = xsdbool( t397 = t398 ).
                      IF t396 = abap_true.
                        DATA t399 TYPE abap_bool.
                        DATA t400 TYPE abap_bool.
                        DATA(t401) = t50.
                        DATA(t402) = abap_true.
                        t400 = xsdbool( t401 = t402 ).
                        t399 = t400.
                        IF t400 = abap_true.
                          DATA t403 TYPE abap_bool.
                          DATA(t404) = t118.
                          DATA(t405) = abap_true.
                          t403 = xsdbool( t404 = t405 ).
                          t399 = t403.
                        ENDIF.
                        IF t399 = abap_true.
                          DATA t406 TYPE REF TO zcl_lnt_w_bracket_right_w.
                          DATA(t407) = CAST zcl_lnt_position( t187 ).
                          DATA(t408) = t1.
                          t406 = NEW zcl_lnt_w_bracket_right_w( i_start = t407 i_str = t408 ).
                          t211 = t406.
                        ELSE.
                          DATA t409 TYPE abap_bool.
                          DATA(t410) = t50.
                          DATA(t411) = abap_true.
                          t409 = xsdbool( t410 = t411 ).
                          IF t409 = abap_true.
                            DATA t412 TYPE REF TO zcl_lnt_w_bracket_right.
                            DATA(t413) = CAST zcl_lnt_position( t187 ).
                            DATA(t414) = t1.
                            t412 = NEW zcl_lnt_w_bracket_right( i_start = t413 i_str = t414 ).
                            t211 = t412.
                          ELSE.
                            DATA t415 TYPE abap_bool.
                            DATA(t416) = t118.
                            DATA(t417) = abap_true.
                            t415 = xsdbool( t416 = t417 ).
                            IF t415 = abap_true.
                              DATA t418 TYPE REF TO zcl_lnt_bracket_right_w.
                              DATA(t419) = CAST zcl_lnt_position( t187 ).
                              DATA(t420) = t1.
                              t418 = NEW zcl_lnt_bracket_right_w( i_start = t419 i_str = t420 ).
                              t211 = t418.
                            ELSE.
                              DATA t421 TYPE REF TO zcl_lnt_bracket_right.
                              DATA(t422) = CAST zcl_lnt_position( t187 ).
                              DATA(t423) = t1.
                              t421 = NEW zcl_lnt_bracket_right( i_start = t422 i_str = t423 ).
                              t211 = t421.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ELSE.
                        DATA t424 TYPE abap_bool.
                        DATA(t425) = t1.
                        DATA(t426) = |)|.
                        t424 = xsdbool( t425 = t426 ).
                        IF t424 = abap_true.
                          DATA t427 TYPE abap_bool.
                          DATA t428 TYPE abap_bool.
                          DATA(t429) = t50.
                          DATA(t430) = abap_true.
                          t428 = xsdbool( t429 = t430 ).
                          t427 = t428.
                          IF t428 = abap_true.
                            DATA t431 TYPE abap_bool.
                            DATA(t432) = t118.
                            DATA(t433) = abap_true.
                            t431 = xsdbool( t432 = t433 ).
                            t427 = t431.
                          ENDIF.
                          IF t427 = abap_true.
                            DATA t434 TYPE REF TO zcl_lnt_w_paren_right_w.
                            DATA(t435) = CAST zcl_lnt_position( t187 ).
                            DATA(t436) = t1.
                            t434 = NEW zcl_lnt_w_paren_right_w( i_start = t435 i_str = t436 ).
                            t211 = t434.
                          ELSE.
                            DATA t437 TYPE abap_bool.
                            DATA(t438) = t50.
                            DATA(t439) = abap_true.
                            t437 = xsdbool( t438 = t439 ).
                            IF t437 = abap_true.
                              DATA t440 TYPE REF TO zcl_lnt_w_paren_right.
                              DATA(t441) = CAST zcl_lnt_position( t187 ).
                              DATA(t442) = t1.
                              t440 = NEW zcl_lnt_w_paren_right( i_start = t441 i_str = t442 ).
                              t211 = t440.
                            ELSE.
                              DATA t443 TYPE abap_bool.
                              DATA(t444) = t118.
                              DATA(t445) = abap_true.
                              t443 = xsdbool( t444 = t445 ).
                              IF t443 = abap_true.
                                DATA t446 TYPE REF TO zcl_lnt_paren_right_w.
                                DATA(t447) = CAST zcl_lnt_position( t187 ).
                                DATA(t448) = t1.
                                t446 = NEW zcl_lnt_paren_right_w( i_start = t447 i_str = t448 ).
                                t211 = t446.
                              ELSE.
                                DATA t449 TYPE REF TO zcl_lnt_paren_right.
                                DATA(t450) = CAST zcl_lnt_position( t187 ).
                                DATA(t451) = t1.
                                t449 = NEW zcl_lnt_paren_right( i_start = t450 i_str = t451 ).
                                t211 = t449.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ELSE.
                          DATA t452 TYPE abap_bool.
                          DATA(t453) = t1.
                          DATA(t454) = |-|.
                          t452 = xsdbool( t453 = t454 ).
                          IF t452 = abap_true.
                            DATA t455 TYPE abap_bool.
                            DATA t456 TYPE abap_bool.
                            DATA(t457) = t50.
                            DATA(t458) = abap_true.
                            t456 = xsdbool( t457 = t458 ).
                            t455 = t456.
                            IF t456 = abap_true.
                              DATA t459 TYPE abap_bool.
                              DATA(t460) = t118.
                              DATA(t461) = abap_true.
                              t459 = xsdbool( t460 = t461 ).
                              t455 = t459.
                            ENDIF.
                            IF t455 = abap_true.
                              DATA t462 TYPE REF TO zcl_lnt_w_dash_w.
                              DATA(t463) = CAST zcl_lnt_position( t187 ).
                              DATA(t464) = t1.
                              t462 = NEW zcl_lnt_w_dash_w( i_start = t463 i_str = t464 ).
                              t211 = t462.
                            ELSE.
                              DATA t465 TYPE abap_bool.
                              DATA(t466) = t50.
                              DATA(t467) = abap_true.
                              t465 = xsdbool( t466 = t467 ).
                              IF t465 = abap_true.
                                DATA t468 TYPE REF TO zcl_lnt_w_dash.
                                DATA(t469) = CAST zcl_lnt_position( t187 ).
                                DATA(t470) = t1.
                                t468 = NEW zcl_lnt_w_dash( i_start = t469 i_str = t470 ).
                                t211 = t468.
                              ELSE.
                                DATA t471 TYPE abap_bool.
                                DATA(t472) = t118.
                                DATA(t473) = abap_true.
                                t471 = xsdbool( t472 = t473 ).
                                IF t471 = abap_true.
                                  DATA t474 TYPE REF TO zcl_lnt_dash_w.
                                  DATA(t475) = CAST zcl_lnt_position( t187 ).
                                  DATA(t476) = t1.
                                  t474 = NEW zcl_lnt_dash_w( i_start = t475 i_str = t476 ).
                                  t211 = t474.
                                ELSE.
                                  DATA t477 TYPE REF TO zcl_lnt_dash.
                                  DATA(t478) = CAST zcl_lnt_position( t187 ).
                                  DATA(t479) = t1.
                                  t477 = NEW zcl_lnt_dash( i_start = t478 i_str = t479 ).
                                  t211 = t477.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ELSE.
                            DATA t480 TYPE abap_bool.
                            DATA(t481) = t1.
                            DATA(t482) = |+|.
                            t480 = xsdbool( t481 = t482 ).
                            IF t480 = abap_true.
                              DATA t483 TYPE abap_bool.
                              DATA t484 TYPE abap_bool.
                              DATA(t485) = t50.
                              DATA(t486) = abap_true.
                              t484 = xsdbool( t485 = t486 ).
                              t483 = t484.
                              IF t484 = abap_true.
                                DATA t487 TYPE abap_bool.
                                DATA(t488) = t118.
                                DATA(t489) = abap_true.
                                t487 = xsdbool( t488 = t489 ).
                                t483 = t487.
                              ENDIF.
                              IF t483 = abap_true.
                                DATA t490 TYPE REF TO zcl_lnt_w_plus_w.
                                DATA(t491) = CAST zcl_lnt_position( t187 ).
                                DATA(t492) = t1.
                                t490 = NEW zcl_lnt_w_plus_w( i_start = t491 i_str = t492 ).
                                t211 = t490.
                              ELSE.
                                DATA t493 TYPE abap_bool.
                                DATA(t494) = t50.
                                DATA(t495) = abap_true.
                                t493 = xsdbool( t494 = t495 ).
                                IF t493 = abap_true.
                                  DATA t496 TYPE REF TO zcl_lnt_w_plus.
                                  DATA(t497) = CAST zcl_lnt_position( t187 ).
                                  DATA(t498) = t1.
                                  t496 = NEW zcl_lnt_w_plus( i_start = t497 i_str = t498 ).
                                  t211 = t496.
                                ELSE.
                                  DATA t499 TYPE abap_bool.
                                  DATA(t500) = t118.
                                  DATA(t501) = abap_true.
                                  t499 = xsdbool( t500 = t501 ).
                                  IF t499 = abap_true.
                                    DATA t502 TYPE REF TO zcl_lnt_plus_w.
                                    DATA(t503) = CAST zcl_lnt_position( t187 ).
                                    DATA(t504) = t1.
                                    t502 = NEW zcl_lnt_plus_w( i_start = t503 i_str = t504 ).
                                    t211 = t502.
                                  ELSE.
                                    DATA t505 TYPE REF TO zcl_lnt_lx_plus.
                                    DATA(t506) = CAST zcl_lnt_position( t187 ).
                                    DATA(t507) = t1.
                                    t505 = NEW zcl_lnt_lx_plus( i_start = t506 i_str = t507 ).
                                    t211 = t505.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ELSE.
                              DATA t508 TYPE abap_bool.
                              DATA(t509) = t1.
                              DATA(t510) = |@|.
                              t508 = xsdbool( t509 = t510 ).
                              IF t508 = abap_true.
                                DATA t511 TYPE abap_bool.
                                DATA t512 TYPE abap_bool.
                                DATA(t513) = t50.
                                DATA(t514) = abap_true.
                                t512 = xsdbool( t513 = t514 ).
                                t511 = t512.
                                IF t512 = abap_true.
                                  DATA t515 TYPE abap_bool.
                                  DATA(t516) = t118.
                                  DATA(t517) = abap_true.
                                  t515 = xsdbool( t516 = t517 ).
                                  t511 = t515.
                                ENDIF.
                                IF t511 = abap_true.
                                  DATA t518 TYPE REF TO zcl_lnt_w_at_w.
                                  DATA(t519) = CAST zcl_lnt_position( t187 ).
                                  DATA(t520) = t1.
                                  t518 = NEW zcl_lnt_w_at_w( i_start = t519 i_str = t520 ).
                                  t211 = t518.
                                ELSE.
                                  DATA t521 TYPE abap_bool.
                                  DATA(t522) = t50.
                                  DATA(t523) = abap_true.
                                  t521 = xsdbool( t522 = t523 ).
                                  IF t521 = abap_true.
                                    DATA t524 TYPE REF TO zcl_lnt_w_at.
                                    DATA(t525) = CAST zcl_lnt_position( t187 ).
                                    DATA(t526) = t1.
                                    t524 = NEW zcl_lnt_w_at( i_start = t525 i_str = t526 ).
                                    t211 = t524.
                                  ELSE.
                                    DATA t527 TYPE abap_bool.
                                    DATA(t528) = t118.
                                    DATA(t529) = abap_true.
                                    t527 = xsdbool( t528 = t529 ).
                                    IF t527 = abap_true.
                                      DATA t530 TYPE REF TO zcl_lnt_at_w.
                                      DATA(t531) = CAST zcl_lnt_position( t187 ).
                                      DATA(t532) = t1.
                                      t530 = NEW zcl_lnt_at_w( i_start = t531 i_str = t532 ).
                                      t211 = t530.
                                    ELSE.
                                      DATA t533 TYPE REF TO zcl_lnt_lx_at.
                                      DATA(t534) = CAST zcl_lnt_position( t187 ).
                                      DATA(t535) = t1.
                                      t533 = NEW zcl_lnt_lx_at( i_start = t534 i_str = t535 ).
                                      t211 = t533.
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
                DATA t536 TYPE abap_bool.
                DATA t537 TYPE i.
                DATA(t538) = t1.
                DATA(t539) = strlen( t538 ).
                t537 = t539.
                DATA(t540) = 2.
                t536 = xsdbool( t537 = t540 ).
                IF t536 = abap_true.
                  DATA t541 TYPE abap_bool.
                  DATA(t542) = t1.
                  DATA(t543) = |->|.
                  t541 = xsdbool( t542 = t543 ).
                  IF t541 = abap_true.
                    DATA t544 TYPE abap_bool.
                    DATA t545 TYPE abap_bool.
                    DATA(t546) = t50.
                    DATA(t547) = abap_true.
                    t545 = xsdbool( t546 = t547 ).
                    t544 = t545.
                    IF t545 = abap_true.
                      DATA t548 TYPE abap_bool.
                      DATA(t549) = t118.
                      DATA(t550) = abap_true.
                      t548 = xsdbool( t549 = t550 ).
                      t544 = t548.
                    ENDIF.
                    IF t544 = abap_true.
                      DATA t551 TYPE REF TO zcl_lnt_w_instance_arrow_w.
                      DATA(t552) = CAST zcl_lnt_position( t187 ).
                      DATA(t553) = t1.
                      t551 = NEW zcl_lnt_w_instance_arrow_w( i_start = t552 i_str = t553 ).
                      t211 = t551.
                    ELSE.
                      DATA t554 TYPE abap_bool.
                      DATA(t555) = t50.
                      DATA(t556) = abap_true.
                      t554 = xsdbool( t555 = t556 ).
                      IF t554 = abap_true.
                        DATA t557 TYPE REF TO zcl_lnt_w_instance_arrow.
                        DATA(t558) = CAST zcl_lnt_position( t187 ).
                        DATA(t559) = t1.
                        t557 = NEW zcl_lnt_w_instance_arrow( i_start = t558 i_str = t559 ).
                        t211 = t557.
                      ELSE.
                        DATA t560 TYPE abap_bool.
                        DATA(t561) = t118.
                        DATA(t562) = abap_true.
                        t560 = xsdbool( t561 = t562 ).
                        IF t560 = abap_true.
                          DATA t563 TYPE REF TO zcl_lnt_instance_arrow_w.
                          DATA(t564) = CAST zcl_lnt_position( t187 ).
                          DATA(t565) = t1.
                          t563 = NEW zcl_lnt_instance_arrow_w( i_start = t564 i_str = t565 ).
                          t211 = t563.
                        ELSE.
                          DATA t566 TYPE REF TO zcl_lnt_instance_arrow.
                          DATA(t567) = CAST zcl_lnt_position( t187 ).
                          DATA(t568) = t1.
                          t566 = NEW zcl_lnt_instance_arrow( i_start = t567 i_str = t568 ).
                          t211 = t566.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA t569 TYPE abap_bool.
                    DATA(t570) = t1.
                    DATA(t571) = |=>|.
                    t569 = xsdbool( t570 = t571 ).
                    IF t569 = abap_true.
                      DATA t572 TYPE abap_bool.
                      DATA t573 TYPE abap_bool.
                      DATA(t574) = t50.
                      DATA(t575) = abap_true.
                      t573 = xsdbool( t574 = t575 ).
                      t572 = t573.
                      IF t573 = abap_true.
                        DATA t576 TYPE abap_bool.
                        DATA(t577) = t118.
                        DATA(t578) = abap_true.
                        t576 = xsdbool( t577 = t578 ).
                        t572 = t576.
                      ENDIF.
                      IF t572 = abap_true.
                        DATA t579 TYPE REF TO zcl_lnt_w_static_arrow_w.
                        DATA(t580) = CAST zcl_lnt_position( t187 ).
                        DATA(t581) = t1.
                        t579 = NEW zcl_lnt_w_static_arrow_w( i_start = t580 i_str = t581 ).
                        t211 = t579.
                      ELSE.
                        DATA t582 TYPE abap_bool.
                        DATA(t583) = t50.
                        DATA(t584) = abap_true.
                        t582 = xsdbool( t583 = t584 ).
                        IF t582 = abap_true.
                          DATA t585 TYPE REF TO zcl_lnt_w_static_arrow.
                          DATA(t586) = CAST zcl_lnt_position( t187 ).
                          DATA(t587) = t1.
                          t585 = NEW zcl_lnt_w_static_arrow( i_start = t586 i_str = t587 ).
                          t211 = t585.
                        ELSE.
                          DATA t588 TYPE abap_bool.
                          DATA(t589) = t118.
                          DATA(t590) = abap_true.
                          t588 = xsdbool( t589 = t590 ).
                          IF t588 = abap_true.
                            DATA t591 TYPE REF TO zcl_lnt_static_arrow_w.
                            DATA(t592) = CAST zcl_lnt_position( t187 ).
                            DATA(t593) = t1.
                            t591 = NEW zcl_lnt_static_arrow_w( i_start = t592 i_str = t593 ).
                            t211 = t591.
                          ELSE.
                            DATA t594 TYPE REF TO zcl_lnt_static_arrow.
                            DATA(t595) = CAST zcl_lnt_position( t187 ).
                            DATA(t596) = t1.
                            t594 = NEW zcl_lnt_static_arrow( i_start = t595 i_str = t596 ).
                            t211 = t594.
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
      DATA(t597) = VALUE abap_bool( ).
      DATA(t598) = VALUE abap_bool( ).
      DATA(t599) = VALUE abap_bool( ).
      DATA t600 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t601) = CAST zcl_lnt_abstract_token( t211 ).
      t600 = t601.
      DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t603.
      t602 = t603.
      DATA(t604) = VALUE abap_bool( ).
      DATA(t605) = CAST zcl_lnt_abstract_token( t600 ).
      IF t605 IS INITIAL.
        t604 = abap_true.
      ENDIF.
      t599 = t604.
      t598 = t599.
      IF t599 = abap_true.
        DATA t606 TYPE abap_bool.
        DATA(t607) = CONV int8( me->m ).
        DATA t608 TYPE int8.
        DATA(t609) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
        t608 = t609.
        t606 = xsdbool( t607 = t608 ).
        t598 = t606.
      ENDIF.
      t597 = t598.
      IF t598 = abap_true.
        DATA(t610) = VALUE abap_bool( ).
        DATA(t611) = VALUE string( ).
        DATA(t612) = t1.
        DATA(t613) = 0.
        DATA(t614) = strlen( t612 ).
        IF t613 < 0 OR t613 >= t614.
          CLEAR t611.
        ELSE.
          t611 = t612+t613(1).
        ENDIF.
        DATA(t615) = `\`.
        t610 = xsdbool( t611 = t615 ).
        t597 = t610.
      ENDIF.
      IF t597 = abap_true.
        DATA(t616) = VALUE i( ).
        DATA(t617) = VALUE i( ).
        DATA(t618) = VALUE abap_bool( ).
        DATA(t619) = VALUE i( ).
        DATA(t620) = VALUE int8( ).
        DATA t621 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t622) = CAST zcl_lnt_lexer_stream( me->stream ).
        t621 = t622.
        DATA(t623) = VALUE int8( ).
        DATA(t624) = VALUE int8( ).
        DATA t625 TYPE int8.
        DATA t626 TYPE int8.
        DATA t627 TYPE i.
        DATA(t628) = CAST zcl_lnt_lexer_stream( t621 ).
        t627 = t628->offset.
        t626 = t627.
        DATA(t629) = CONV int8( 1 ).
        t625 = t626 + t629.
        IF t625 < range_int8_bound_min OR t625 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t624 = t625.
        DATA(t630) = VALUE int8( ).
        DATA t631 TYPE abap_bool.
        DATA(t632) = t624.
        DATA t633 TYPE int8.
        DATA t634 TYPE i.
        DATA t635 TYPE string.
        DATA(t636) = CAST zcl_lnt_lexer_stream( t621 ).
        t635 = t636->raw.
        DATA(t637) = strlen( t635 ).
        t634 = t637.
        t633 = t634.
        t631 = xsdbool( t632 >= t633 ).
        IF t631 = abap_true.
          DATA t638 TYPE int8.
          DATA(t639) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t638 = t639.
          t630 = t638.
        ELSE.
          DATA(t640) = VALUE int8( ).
          DATA(t641) = VALUE i( ).
          DATA t642 TYPE string.
          DATA(t643) = CAST zcl_lnt_lexer_stream( t621 ).
          t642 = t643->raw.
          DATA t644 TYPE i.
          DATA(t645) = t624.
          t644 = t645.
          DATA(t646) = strlen( t642 ).
          IF t644 < 0 OR t644 >= t646.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t647) = CONV string( t642+t644(1) ).
          DATA t648 TYPE c LENGTH 1.
          CLEAR t648.
          DATA(t649) = VALUE xstring( ).
          DATA t650 TYPE x LENGTH 1.
          CLEAR t650.
          DATA t651 TYPE x LENGTH 1.
          CLEAR t651.
          DATA(t652) = VALUE i( ).
          t648 = t647.
          t641 = cl_abap_conv_out_ce=>uccpi( t648 ).
          IF t641 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t647 IMPORTING buffer = t649 ).
            t650 = t649(1).
            t651 = t649+1(1).
            t641 = t650.
            t652 = t651.
            t641 = t641 + t652 * 256.
          ENDIF.
          t640 = t641.
          t630 = t640.
        ENDIF.
        t623 = t630.
        t620 = t623.
        t619 = t620.
        DATA(t653) = CONV i( zcl_lnt_lexer_module=>eof ).
        t618 = xsdbool( t619 = t653 ).
        IF t618 = abap_true.
          DATA(t654) = 1.
          t617 = t654.
        ELSE.
          DATA(t655) = 0.
          t617 = t655.
        ENDIF.
        t616 = t617.
        DATA(t656) = VALUE int8( ).
        DATA t657 TYPE int8.
        DATA t658 TYPE int8.
        DATA t659 TYPE i.
        DATA t660 TYPE i.
        DATA t661 TYPE int8.
        DATA t662 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t663) = CAST zcl_lnt_lexer_stream( me->stream ).
        t662 = t663.
        DATA t664 TYPE int8.
        DATA t665 TYPE i.
        DATA(t666) = CAST zcl_lnt_lexer_stream( t662 ).
        t665 = t666->offset.
        t664 = t665.
        t661 = t664.
        t660 = t661.
        DATA t667 TYPE i.
        DATA(t668) = t1.
        DATA(t669) = strlen( t668 ).
        t667 = t669.
        t659 = t660 - t667.
        t658 = t659.
        DATA t670 TYPE int8.
        DATA(t671) = t616.
        t670 = t671.
        t657 = t658 - t670.
        IF t657 < range_int8_bound_min OR t657 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t656 = t657.
        DATA(t672) = VALUE i( ).
        DATA(t673) = VALUE i( ).
        DATA(t674) = VALUE int8( ).
        DATA t675 TYPE REF TO zcl_lnt_lexer_stream.
        DATA(t676) = CAST zcl_lnt_lexer_stream( me->stream ).
        t675 = t676.
        DATA t677 TYPE int8.
        DATA(t678) = t656.
        t677 = t678.
        DATA(t679) = VALUE int8( ).
        DATA t680 TYPE abap_bool.
        DATA t681 TYPE abap_bool.
        DATA(t682) = t677.
        DATA(t683) = CONV int8( 0 ).
        t681 = xsdbool( t682 < t683 ).
        t680 = t681.
        IF t681 = abap_false.
          DATA t684 TYPE abap_bool.
          DATA(t685) = t677.
          DATA t686 TYPE int8.
          DATA t687 TYPE i.
          DATA t688 TYPE string.
          DATA(t689) = CAST zcl_lnt_lexer_stream( t675 ).
          t688 = t689->raw.
          DATA(t690) = strlen( t688 ).
          t687 = t690.
          t686 = t687.
          t684 = xsdbool( t685 >= t686 ).
          t680 = t684.
        ENDIF.
        IF t680 = abap_true.
          DATA t691 TYPE int8.
          DATA(t692) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t691 = t692.
          t679 = t691.
        ELSE.
          DATA(t693) = VALUE int8( ).
          DATA(t694) = VALUE i( ).
          DATA t695 TYPE string.
          DATA(t696) = CAST zcl_lnt_lexer_stream( t675 ).
          t695 = t696->raw.
          DATA(t697) = VALUE i( ).
          DATA(t698) = t677.
          IF t698 < range_int_check_lo_nzik0zk OR t698 > range_int_check_hi_zik0zj.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t697 = t698.
          DATA(t699) = strlen( t695 ).
          IF t697 < 0 OR t697 >= t699.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t700) = CONV string( t695+t697(1) ).
          DATA t701 TYPE c LENGTH 1.
          CLEAR t701.
          DATA(t702) = VALUE xstring( ).
          DATA t703 TYPE x LENGTH 1.
          CLEAR t703.
          DATA t704 TYPE x LENGTH 1.
          CLEAR t704.
          DATA(t705) = VALUE i( ).
          t701 = t700.
          t694 = cl_abap_conv_out_ce=>uccpi( t701 ).
          IF t694 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t700 IMPORTING buffer = t702 ).
            t703 = t702(1).
            t704 = t702+1(1).
            t694 = t703.
            t705 = t704.
            t694 = t694 + t705 * 256.
          ENDIF.
          t693 = t694.
          t679 = t693.
        ENDIF.
        t674 = t679.
        t673 = t674.
        t672 = t673.
        DATA(t706) = VALUE abap_bool( ).
        DATA(t707) = VALUE abap_bool( ).
        DATA(t708) = VALUE abap_bool( ).
        DATA t709 TYPE abap_bool.
        DATA t710 TYPE abap_bool.
        DATA(t711) = t672.
        DATA(t712) = CONV i( zcl_lnt_lexer_module=>ch_space ).
        t710 = xsdbool( t711 = t712 ).
        t709 = t710.
        IF t710 = abap_false.
          DATA t713 TYPE abap_bool.
          DATA(t714) = t672.
          DATA(t715) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
          t713 = xsdbool( t714 = t715 ).
          t709 = t713.
        ENDIF.
        t708 = t709.
        IF t709 = abap_false.
          DATA t716 TYPE abap_bool.
          DATA(t717) = t672.
          DATA(t718) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
          t716 = xsdbool( t717 = t718 ).
          t708 = t716.
        ENDIF.
        t707 = t708.
        IF t708 = abap_false.
          DATA t719 TYPE abap_bool.
          DATA(t720) = t672.
          DATA(t721) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
          t719 = xsdbool( t720 = t721 ).
          t707 = t719.
        ENDIF.
        t706 = t707.
        DATA t722 TYPE abap_bool.
        DATA(t723) = t706.
        t722 = xsdbool( t723 = abap_false ).
        IF t722 = abap_true.
          DATA t724 TYPE REF TO zcl_lnt_association_name.
          DATA(t725) = CAST zcl_lnt_position( t187 ).
          DATA(t726) = t1.
          t724 = NEW zcl_lnt_association_name( i_start = t725 i_str = t726 ).
          t211 = t724.
        ENDIF.
      ENDIF.
      DATA(t727) = VALUE abap_bool( ).
      DATA t728 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t729) = CAST zcl_lnt_abstract_token( t211 ).
      t728 = t729.
      DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t731.
      t730 = t731.
      DATA(t732) = VALUE abap_bool( ).
      DATA(t733) = CAST zcl_lnt_abstract_token( t728 ).
      IF t733 IS INITIAL.
        t732 = abap_true.
      ENDIF.
      t727 = t732.
      IF t727 = abap_true.
        DATA t734 TYPE REF TO zcl_lnt_lx_identifier.
        DATA(t735) = CAST zcl_lnt_position( t187 ).
        DATA(t736) = t1.
        t734 = NEW zcl_lnt_lx_identifier( i_start = t735 i_str = t736 ).
        t211 = t734.
      ENDIF.
      DATA(t737) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
      DATA t738 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t739) = CAST zcl_lnt_abstract_token( t211 ).
      t738 = t739.
      APPEND t738 TO t737->items.
    ENDIF.
    DATA t740 TYPE REF TO zcl_lnt_lexer_buffer.
    DATA(t741) = CAST zcl_lnt_lexer_buffer( me->buffer ).
    t740 = t741.
    DATA(t742) = CAST zcl_lnt_lexer_buffer( t740 ).
    DATA(t743) = 0.
    t742->start = t743.
    DATA(t744) = CAST zcl_lnt_lexer_buffer( t740 ).
    DATA(t745) = 0.
    t744->end = t745.
    DATA(t746) = CAST zcl_lnt_lexer_buffer( t740 ).
    DATA(t747) = abap_true.
    t746->empty_a4a6 = t747.
  ENDMETHOD.
  METHOD process.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zi TYPE int8 VALUE '2147483646'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = i_raw.
    DATA t2 TYPE REF TO zcl_lnt_lexer_stream.
    DATA t3 TYPE REF TO zcl_lnt_lexer_stream.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    DATA(t6) = ||.
    DATA t7 TYPE c LENGTH 1.
    CLEAR t7.
    t7 = cl_abap_conv_in_ce=>uccpi( 13 ).
    CONCATENATE t6 t7 INTO t6 RESPECTING BLANKS.
    DATA(t8) = ||.
    DATA(t9) = strlen( t5 ).
    t4 = t5.
    REPLACE ALL OCCURRENCES OF t6 IN t4 WITH t8.
    t3 = NEW zcl_lnt_lexer_stream( i_raw = t4 ).
    t2 = t3.
    DATA(t10) = CAST zcl_lnt_lexer_stream( t2 ).
    me->stream = t10.
    DATA t11 TYPE REF TO zcl_lnt_lexer_buffer.
    DATA t12 TYPE string.
    DATA t13 TYPE REF TO zcl_lnt_lexer_stream.
    DATA(t14) = CAST zcl_lnt_lexer_stream( t2 ).
    t13 = t14.
    DATA t15 TYPE string.
    DATA(t16) = CAST zcl_lnt_lexer_stream( t13 ).
    t15 = t16->raw.
    t12 = t15.
    t11 = NEW zcl_lnt_lexer_buffer( i_raw = t12 ).
    me->buffer = t11.
    DO.
      DATA(t17) = abap_true.
      IF t17 = abap_false.
        EXIT.
      ENDIF.
      DATA(t18) = VALUE i( ).
      DATA(t19) = VALUE i( ).
      DATA(t20) = VALUE int8( ).
      DATA t21 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t22) = CAST zcl_lnt_lexer_stream( t2 ).
      t21 = t22.
      DATA(t23) = VALUE int8( ).
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE i.
      DATA(t26) = CAST zcl_lnt_lexer_stream( t21 ).
      t25 = t26->offset.
      DATA(t27) = 0.
      t24 = xsdbool( t25 < t27 ).
      IF t24 = abap_true.
        DATA t28 TYPE int8.
        DATA(t29) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
        t28 = t29.
        t23 = t28.
      ELSE.
        DATA(t30) = VALUE int8( ).
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE i.
        DATA(t33) = CAST zcl_lnt_lexer_stream( t21 ).
        t32 = t33->offset.
        DATA t34 TYPE i.
        DATA t35 TYPE string.
        DATA(t36) = CAST zcl_lnt_lexer_stream( t21 ).
        t35 = t36->raw.
        DATA(t37) = strlen( t35 ).
        t34 = t37.
        t31 = xsdbool( t32 >= t34 ).
        IF t31 = abap_true.
          DATA t38 TYPE int8.
          DATA(t39) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t38 = t39.
          t30 = t38.
        ELSE.
          DATA(t40) = VALUE int8( ).
          DATA(t41) = VALUE i( ).
          DATA t42 TYPE string.
          DATA(t43) = CAST zcl_lnt_lexer_stream( t21 ).
          t42 = t43->raw.
          DATA t44 TYPE i.
          DATA(t45) = CAST zcl_lnt_lexer_stream( t21 ).
          t44 = t45->offset.
          DATA(t46) = strlen( t42 ).
          IF t44 < 0 OR t44 >= t46.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t47) = CONV string( t42+t44(1) ).
          DATA t48 TYPE c LENGTH 1.
          CLEAR t48.
          DATA(t49) = VALUE xstring( ).
          DATA t50 TYPE x LENGTH 1.
          CLEAR t50.
          DATA t51 TYPE x LENGTH 1.
          CLEAR t51.
          DATA(t52) = VALUE i( ).
          t48 = t47.
          t41 = cl_abap_conv_out_ce=>uccpi( t48 ).
          IF t41 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t47 IMPORTING buffer = t49 ).
            t50 = t49(1).
            t51 = t49+1(1).
            t41 = t50.
            t52 = t51.
            t41 = t41 + t52 * 256.
          ENDIF.
          t40 = t41.
          t30 = t40.
        ENDIF.
        t23 = t30.
      ENDIF.
      t20 = t23.
      t19 = t20.
      t18 = t19.
      DATA t53 TYPE REF TO zcl_lnt_lexer_buffer.
      DATA(t54) = CAST zcl_lnt_lexer_buffer( me->buffer ).
      t53 = t54.
      DATA t55 TYPE int8.
      DATA t56 TYPE int8.
      DATA t57 TYPE i.
      DATA t58 TYPE int8.
      DATA t59 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t60) = CAST zcl_lnt_lexer_stream( t2 ).
      t59 = t60.
      DATA t61 TYPE int8.
      DATA t62 TYPE i.
      DATA(t63) = CAST zcl_lnt_lexer_stream( t59 ).
      t62 = t63->offset.
      t61 = t62.
      t58 = t61.
      t57 = t58.
      t56 = t57.
      t55 = t56.
      DATA(t64) = VALUE i( ).
      DATA(t65) = VALUE i( ).
      DATA(t66) = t55.
      IF t66 < range_int_check_lo_nzik0zk OR t66 > range_int_check_hi_zik0zi.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t65 = t66.
      t64 = t65.
      DATA t67 TYPE abap_bool.
      DATA t68 TYPE abap_bool.
      DATA(t69) = CAST zcl_lnt_lexer_buffer( t53 ).
      t68 = t69->empty_a4a6.
      DATA(t70) = abap_true.
      t67 = xsdbool( t68 = t70 ).
      IF t67 = abap_true.
        DATA(t71) = CAST zcl_lnt_lexer_buffer( t53 ).
        DATA(t72) = VALUE i( ).
        DATA t73 TYPE abap_bool.
        DATA(t74) = t64.
        DATA(t75) = 0.
        t73 = xsdbool( t74 < t75 ).
        IF t73 = abap_true.
          DATA(t76) = 0.
          t72 = t76.
        ELSE.
          DATA(t77) = t64.
          t72 = t77.
        ENDIF.
        t71->start = t72.
        DATA(t78) = CAST zcl_lnt_lexer_buffer( t53 ).
        DATA(t79) = abap_false.
        t78->empty_a4a6 = t79.
      ENDIF.
      DATA(t80) = CAST zcl_lnt_lexer_buffer( t53 ).
      DATA t81 TYPE i.
      DATA(t82) = t64.
      DATA(t83) = 1.
      t81 = t82 + t83.
      t80->end = t81.
      DATA(t84) = VALUE i( ).
      DATA(t85) = VALUE i( ).
      DATA(t86) = VALUE int8( ).
      DATA t87 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t88) = CAST zcl_lnt_lexer_stream( t2 ).
      t87 = t88.
      DATA(t89) = VALUE int8( ).
      DATA(t90) = VALUE int8( ).
      DATA t91 TYPE int8.
      DATA t92 TYPE int8.
      DATA t93 TYPE i.
      DATA(t94) = CAST zcl_lnt_lexer_stream( t87 ).
      t93 = t94->offset.
      t92 = t93.
      DATA(t95) = CONV int8( 1 ).
      t91 = t92 + t95.
      IF t91 < range_int8_bound_min OR t91 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t90 = t91.
      DATA(t96) = VALUE int8( ).
      DATA t97 TYPE abap_bool.
      DATA(t98) = t90.
      DATA t99 TYPE int8.
      DATA t100 TYPE i.
      DATA t101 TYPE string.
      DATA(t102) = CAST zcl_lnt_lexer_stream( t87 ).
      t101 = t102->raw.
      DATA(t103) = strlen( t101 ).
      t100 = t103.
      t99 = t100.
      t97 = xsdbool( t98 >= t99 ).
      IF t97 = abap_true.
        DATA t104 TYPE int8.
        DATA(t105) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t104 = t105.
        t96 = t104.
      ELSE.
        DATA(t106) = VALUE int8( ).
        DATA(t107) = VALUE i( ).
        DATA t108 TYPE string.
        DATA(t109) = CAST zcl_lnt_lexer_stream( t87 ).
        t108 = t109->raw.
        DATA t110 TYPE i.
        DATA(t111) = t90.
        t110 = t111.
        DATA(t112) = strlen( t108 ).
        IF t110 < 0 OR t110 >= t112.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t113) = CONV string( t108+t110(1) ).
        DATA t114 TYPE c LENGTH 1.
        CLEAR t114.
        DATA(t115) = VALUE xstring( ).
        DATA t116 TYPE x LENGTH 1.
        CLEAR t116.
        DATA t117 TYPE x LENGTH 1.
        CLEAR t117.
        DATA(t118) = VALUE i( ).
        t114 = t113.
        t107 = cl_abap_conv_out_ce=>uccpi( t114 ).
        IF t107 >= 255.
          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t113 IMPORTING buffer = t115 ).
          t116 = t115(1).
          t117 = t115+1(1).
          t107 = t116.
          t118 = t117.
          t107 = t107 + t118 * 256.
        ENDIF.
        t106 = t107.
        t96 = t106.
      ENDIF.
      t89 = t96.
      t86 = t89.
      t85 = t86.
      t84 = t85.
      DATA(t119) = VALUE i( ).
      DATA(t120) = VALUE i( ).
      DATA(t121) = VALUE int8( ).
      DATA t122 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t123) = CAST zcl_lnt_lexer_stream( t2 ).
      t122 = t123.
      DATA(t124) = VALUE int8( ).
      DATA(t125) = VALUE int8( ).
      DATA t126 TYPE int8.
      DATA t127 TYPE int8.
      DATA t128 TYPE i.
      DATA(t129) = CAST zcl_lnt_lexer_stream( t122 ).
      t128 = t129->offset.
      t127 = t128.
      DATA(t130) = CONV int8( 2 ).
      t126 = t127 + t130.
      IF t126 < range_int8_bound_min OR t126 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t125 = t126.
      DATA(t131) = VALUE int8( ).
      DATA t132 TYPE abap_bool.
      DATA(t133) = t125.
      DATA t134 TYPE int8.
      DATA t135 TYPE i.
      DATA t136 TYPE string.
      DATA(t137) = CAST zcl_lnt_lexer_stream( t122 ).
      t136 = t137->raw.
      DATA(t138) = strlen( t136 ).
      t135 = t138.
      t134 = t135.
      t132 = xsdbool( t133 >= t134 ).
      IF t132 = abap_true.
        DATA t139 TYPE int8.
        DATA(t140) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t139 = t140.
        t131 = t139.
      ELSE.
        DATA(t141) = VALUE int8( ).
        DATA(t142) = VALUE i( ).
        DATA t143 TYPE string.
        DATA(t144) = CAST zcl_lnt_lexer_stream( t122 ).
        t143 = t144->raw.
        DATA t145 TYPE i.
        DATA(t146) = t125.
        t145 = t146.
        DATA(t147) = strlen( t143 ).
        IF t145 < 0 OR t145 >= t147.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t148) = CONV string( t143+t145(1) ).
        DATA t149 TYPE c LENGTH 1.
        CLEAR t149.
        DATA(t150) = VALUE xstring( ).
        DATA t151 TYPE x LENGTH 1.
        CLEAR t151.
        DATA t152 TYPE x LENGTH 1.
        CLEAR t152.
        DATA(t153) = VALUE i( ).
        t149 = t148.
        t142 = cl_abap_conv_out_ce=>uccpi( t149 ).
        IF t142 >= 255.
          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t148 IMPORTING buffer = t150 ).
          t151 = t150(1).
          t152 = t150+1(1).
          t142 = t151.
          t153 = t152.
          t142 = t142 + t153 * 256.
        ENDIF.
        t141 = t142.
        t131 = t141.
      ENDIF.
      t124 = t131.
      t121 = t124.
      t120 = t121.
      t119 = t120.
      DATA t154 TYPE abap_bool.
      DATA(t155) = CONV int8( me->m ).
      DATA t156 TYPE int8.
      DATA(t157) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
      t156 = t157.
      t154 = xsdbool( t155 = t156 ).
      IF t154 = abap_true.
        DATA(t158) = VALUE abap_bool( ).
        DATA t159 TYPE int8.
        DATA t160 TYPE int8.
        DATA(t161) = t84.
        t160 = t161.
        t159 = t160.
        t158 = xsdbool( t159 = 32
        OR t159 = 58
        OR t159 = 46
        OR t159 = 44
        OR t159 = 45
        OR t159 = 43
        OR t159 = 40
        OR t159 = 41
        OR t159 = 91
        OR t159 = 93
        OR t159 = 92
        OR t159 = 9
        OR t159 = 10
        ).
        IF t158 = abap_true.
          me->add_51c1(  ).
        ELSE.
          DATA t162 TYPE abap_bool.
          DATA(t163) = t84.
          DATA(t164) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
          t162 = xsdbool( t163 = t164 ).
          IF t162 = abap_true.
            me->add_51c1(  ).
            DATA t165 TYPE int8.
            DATA(t166) = CONV i( zcl_lnt_lexer_module=>mode_str ).
            t165 = t166.
            me->m = t165.
          ELSE.
            DATA t167 TYPE abap_bool.
            DATA t168 TYPE abap_bool.
            DATA(t169) = t84.
            DATA(t170) = CONV i( zcl_lnt_lexer_module=>ch_pipe ).
            t168 = xsdbool( t169 = t170 ).
            t167 = t168.
            IF t168 = abap_false.
              DATA t171 TYPE abap_bool.
              DATA(t172) = t84.
              DATA(t173) = CONV i( zcl_lnt_lexer_module=>ch_rbrace ).
              t171 = xsdbool( t172 = t173 ).
              t167 = t171.
            ENDIF.
            IF t167 = abap_true.
              me->add_51c1(  ).
              DATA t174 TYPE int8.
              DATA(t175) = CONV i( zcl_lnt_lexer_module=>mode_template ).
              t174 = t175.
              me->m = t174.
            ELSE.
              DATA t176 TYPE abap_bool.
              DATA(t177) = t84.
              DATA(t178) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
              t176 = xsdbool( t177 = t178 ).
              IF t176 = abap_true.
                me->add_51c1(  ).
                DATA t179 TYPE int8.
                DATA(t180) = CONV i( zcl_lnt_lexer_module=>mode_ping ).
                t179 = t180.
                me->m = t179.
              ELSE.
                DATA t181 TYPE abap_bool.
                DATA t182 TYPE abap_bool.
                DATA(t183) = t84.
                DATA(t184) = CONV i( zcl_lnt_lexer_module=>ch_hash ).
                t182 = xsdbool( t183 = t184 ).
                t181 = t182.
                IF t182 = abap_true.
                  DATA t185 TYPE abap_bool.
                  DATA(t186) = t119.
                  DATA(t187) = CONV i( zcl_lnt_lexer_module=>ch_hash ).
                  t185 = xsdbool( t186 = t187 ).
                  t181 = t185.
                ENDIF.
                IF t181 = abap_true.
                  me->add_51c1(  ).
                  DATA t188 TYPE int8.
                  DATA(t189) = CONV i( zcl_lnt_lexer_module=>mode_pragma ).
                  t188 = t189.
                  me->m = t188.
                ELSE.
                  DATA t190 TYPE abap_bool.
                  DATA t191 TYPE abap_bool.
                  DATA(t192) = t84.
                  DATA(t193) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
                  t191 = xsdbool( t192 = t193 ).
                  t190 = t191.
                  IF t191 = abap_false.
                    DATA t194 TYPE abap_bool.
                    DATA t195 TYPE abap_bool.
                    DATA(t196) = t84.
                    DATA(t197) = CONV i( zcl_lnt_lexer_module=>ch_star ).
                    t195 = xsdbool( t196 = t197 ).
                    t194 = t195.
                    IF t195 = abap_true.
                      DATA t198 TYPE abap_bool.
                      DATA(t199) = t18.
                      DATA(t200) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                      t198 = xsdbool( t199 = t200 ).
                      t194 = t198.
                    ENDIF.
                    t190 = t194.
                  ENDIF.
                  IF t190 = abap_true.
                    me->add_51c1(  ).
                    DATA t201 TYPE int8.
                    DATA(t202) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
                    t201 = t202.
                    me->m = t201.
                  ELSE.
                    DATA t203 TYPE abap_bool.
                    DATA t204 TYPE abap_bool.
                    DATA(t205) = t84.
                    DATA(t206) = CONV i( zcl_lnt_lexer_module=>ch_at ).
                    t204 = xsdbool( t205 = t206 ).
                    t203 = t204.
                    IF t204 = abap_true.
                      DATA(t207) = VALUE abap_bool( ).
                      DATA(t208) = VALUE i( ).
                      DATA(t209) = VALUE string( ).
                      DATA(t210) = VALUE string( ).
                      DATA t211 TYPE REF TO zcl_lnt_lexer_buffer.
                      DATA(t212) = CAST zcl_lnt_lexer_buffer( me->buffer ).
                      t211 = t212.
                      DATA(t213) = VALUE string( ).
                      DATA t214 TYPE string.
                      DATA(t215) = CAST zcl_lnt_lexer_buffer( t211 ).
                      t214 = t215->raw.
                      DATA t216 TYPE i.
                      DATA(t217) = CAST zcl_lnt_lexer_buffer( t211 ).
                      t216 = t217->start.
                      DATA t218 TYPE i.
                      DATA(t219) = CAST zcl_lnt_lexer_buffer( t211 ).
                      t218 = t219->end.
                      DATA(t220) = strlen( t214 ).
                      t216 = COND i( WHEN t216 < 0 THEN 0 WHEN t216 > t220 THEN t220 ELSE t216 ).
                      t218 = COND i( WHEN t218 < 0 THEN 0 WHEN t218 > t220 THEN t220 ELSE t218 ).
                      IF t216 > t218.
                        t220 = t216.
                        t216 = t218.
                        t218 = t220.
                      ENDIF.
                      t220 = t218 - t216.
                      t213 = t214+t216(t220).
                      t210 = t213.
                      DATA(t221) = strlen( t210 ).
                      DATA t222 TYPE i.
                      DATA t223 TYPE i.
                      t222 = 0.
                      t223 = t221.
                      DATA(t224) = VALUE i( ).
                      DATA(t225) = VALUE i( ).
                      DATA(t226) = VALUE string( ).
                      WHILE t222 < t223.
                        t225 = t222.
                        t226 = t210+t225(1).
                        DATA t227 TYPE c LENGTH 1.
                        CLEAR t227.
                        DATA(t228) = VALUE xstring( ).
                        DATA t229 TYPE x LENGTH 1.
                        CLEAR t229.
                        DATA t230 TYPE x LENGTH 1.
                        CLEAR t230.
                        DATA(t231) = VALUE i( ).
                        t227 = t226.
                        t224 = cl_abap_conv_out_ce=>uccpi( t227 ).
                        IF t224 >= 255.
                          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                          ENDIF.
                          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t226 IMPORTING buffer = t228 ).
                          t229 = t228(1).
                          t230 = t228+1(1).
                          t224 = t229.
                          t231 = t230.
                          t224 = t224 + t231 * 256.
                        ENDIF.
                        IF t224 = 9 OR t224 = 10 OR t224 = 11 OR t224 = 12 OR t224 = 13 OR t224 = 32 OR t224 = 160 OR t224 = 5760 OR t224 = 8232 OR t224 = 8233 OR t224 = 8239 OR t224 = 8287 OR t224 = 12288 OR t224 = 65279 OR t224 >= 8192 AND t224 <= 8202.
                          t222 = t222 + 1.
                        ELSE.
                          EXIT.
                        ENDIF.
                      ENDWHILE.
                      DATA(t232) = VALUE i( ).
                      DATA(t233) = VALUE i( ).
                      DATA(t234) = VALUE string( ).
                      WHILE t223 > t222.
                        t233 = t223 - 1.
                        t234 = t210+t233(1).
                        DATA t235 TYPE c LENGTH 1.
                        CLEAR t235.
                        DATA(t236) = VALUE xstring( ).
                        DATA t237 TYPE x LENGTH 1.
                        CLEAR t237.
                        DATA t238 TYPE x LENGTH 1.
                        CLEAR t238.
                        DATA(t239) = VALUE i( ).
                        t235 = t234.
                        t232 = cl_abap_conv_out_ce=>uccpi( t235 ).
                        IF t232 >= 255.
                          IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                            zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                          ENDIF.
                          zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t234 IMPORTING buffer = t236 ).
                          t237 = t236(1).
                          t238 = t236+1(1).
                          t232 = t237.
                          t239 = t238.
                          t232 = t232 + t239 * 256.
                        ENDIF.
                        IF t232 = 9 OR t232 = 10 OR t232 = 11 OR t232 = 12 OR t232 = 13 OR t232 = 32 OR t232 = 160 OR t232 = 5760 OR t232 = 8232 OR t232 = 8233 OR t232 = 8239 OR t232 = 8287 OR t232 = 12288 OR t232 = 65279 OR t232 >= 8192 AND t232 <= 8202.
                          t223 = t223 - 1.
                        ELSE.
                          EXIT.
                        ENDIF.
                      ENDWHILE.
                      IF t223 > t222.
                        t221 = t223 - t222.
                        t209 = t210+t222(t221).
                      ELSE.
                        CLEAR t209.
                      ENDIF.
                      DATA(t240) = strlen( t209 ).
                      t208 = t240.
                      DATA(t241) = 0.
                      t207 = xsdbool( t208 = t241 ).
                      t203 = t207.
                    ENDIF.
                    IF t203 = abap_true.
                      me->add_51c1(  ).
                    ELSE.
                      DATA(t242) = VALUE abap_bool( ).
                      DATA t243 TYPE abap_bool.
                      DATA t244 TYPE abap_bool.
                      DATA(t245) = t84.
                      DATA(t246) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                      t244 = xsdbool( t245 = t246 ).
                      t243 = t244.
                      IF t244 = abap_false.
                        DATA t247 TYPE abap_bool.
                        DATA(t248) = t84.
                        DATA(t249) = CONV i( zcl_lnt_lexer_module=>ch_equals ).
                        t247 = xsdbool( t248 = t249 ).
                        t243 = t247.
                      ENDIF.
                      t242 = t243.
                      IF t243 = abap_true.
                        DATA t250 TYPE abap_bool.
                        DATA(t251) = t119.
                        DATA(t252) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                        t250 = xsdbool( t251 = t252 ).
                        t242 = t250.
                      ENDIF.
                      IF t242 = abap_true.
                        me->add_51c1(  ).
                      ELSE.
                        DATA(t253) = VALUE abap_bool( ).
                        DATA t254 TYPE abap_bool.
                        DATA t255 TYPE abap_bool.
                        DATA(t256) = t18.
                        DATA(t257) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                        t255 = xsdbool( t256 = t257 ).
                        t254 = t255.
                        IF t255 = abap_true.
                          DATA t258 TYPE abap_bool.
                          DATA(t259) = t84.
                          DATA(t260) = CONV i( zcl_lnt_lexer_module=>ch_space ).
                          t258 = xsdbool( t259 <> t260 ).
                          t254 = t258.
                        ENDIF.
                        t253 = t254.
                        IF t254 = abap_true.
                          DATA(t261) = VALUE abap_bool( ).
                          DATA(t262) = VALUE abap_bool( ).
                          DATA(t263) = VALUE i( ).
                          DATA(t264) = VALUE int8( ).
                          DATA t265 TYPE REF TO zcl_lnt_lexer_stream.
                          DATA(t266) = CAST zcl_lnt_lexer_stream( t2 ).
                          t265 = t266.
                          DATA(t267) = VALUE int8( ).
                          DATA t268 TYPE i.
                          DATA t269 TYPE i.
                          DATA t270 TYPE i.
                          DATA(t271) = CAST zcl_lnt_lexer_stream( t265 ).
                          t270 = t271->offset.
                          DATA(t272) = 1.
                          t269 = t270 - t272.
                          t268 = t269.
                          DATA(t273) = VALUE int8( ).
                          DATA t274 TYPE abap_bool.
                          DATA(t275) = t268.
                          DATA(t276) = 0.
                          t274 = xsdbool( t275 < t276 ).
                          IF t274 = abap_true.
                            DATA t277 TYPE int8.
                            DATA(t278) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                            t277 = t278.
                            t273 = t277.
                          ELSE.
                            DATA(t279) = VALUE int8( ).
                            DATA(t280) = VALUE i( ).
                            DATA t281 TYPE string.
                            DATA(t282) = CAST zcl_lnt_lexer_stream( t265 ).
                            t281 = t282->raw.
                            DATA(t283) = t268.
                            DATA(t284) = strlen( t281 ).
                            IF t283 < 0 OR t283 >= t284.
                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                            ENDIF.
                            DATA(t285) = CONV string( t281+t283(1) ).
                            DATA t286 TYPE c LENGTH 1.
                            CLEAR t286.
                            DATA(t287) = VALUE xstring( ).
                            DATA t288 TYPE x LENGTH 1.
                            CLEAR t288.
                            DATA t289 TYPE x LENGTH 1.
                            CLEAR t289.
                            DATA(t290) = VALUE i( ).
                            t286 = t285.
                            t280 = cl_abap_conv_out_ce=>uccpi( t286 ).
                            IF t280 >= 255.
                              IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                                zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                              ENDIF.
                              zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t285 IMPORTING buffer = t287 ).
                              t288 = t287(1).
                              t289 = t287+1(1).
                              t280 = t288.
                              t290 = t289.
                              t280 = t280 + t290 * 256.
                            ENDIF.
                            t279 = t280.
                            t273 = t279.
                          ENDIF.
                          t267 = t273.
                          t264 = t267.
                          t263 = t264.
                          DATA(t291) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                          t262 = xsdbool( t263 = t291 ).
                          t261 = t262.
                          IF t262 = abap_false.
                            DATA(t292) = VALUE abap_bool( ).
                            DATA(t293) = VALUE i( ).
                            DATA(t294) = VALUE int8( ).
                            DATA t295 TYPE REF TO zcl_lnt_lexer_stream.
                            DATA(t296) = CAST zcl_lnt_lexer_stream( t2 ).
                            t295 = t296.
                            DATA(t297) = VALUE int8( ).
                            DATA t298 TYPE i.
                            DATA t299 TYPE i.
                            DATA t300 TYPE i.
                            DATA(t301) = CAST zcl_lnt_lexer_stream( t295 ).
                            t300 = t301->offset.
                            DATA(t302) = 1.
                            t299 = t300 - t302.
                            t298 = t299.
                            DATA(t303) = VALUE int8( ).
                            DATA t304 TYPE abap_bool.
                            DATA(t305) = t298.
                            DATA(t306) = 0.
                            t304 = xsdbool( t305 < t306 ).
                            IF t304 = abap_true.
                              DATA t307 TYPE int8.
                              DATA(t308) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                              t307 = t308.
                              t303 = t307.
                            ELSE.
                              DATA(t309) = VALUE int8( ).
                              DATA(t310) = VALUE i( ).
                              DATA t311 TYPE string.
                              DATA(t312) = CAST zcl_lnt_lexer_stream( t295 ).
                              t311 = t312->raw.
                              DATA(t313) = t298.
                              DATA(t314) = strlen( t311 ).
                              IF t313 < 0 OR t313 >= t314.
                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                              ENDIF.
                              DATA(t315) = CONV string( t311+t313(1) ).
                              DATA t316 TYPE c LENGTH 1.
                              CLEAR t316.
                              DATA(t317) = VALUE xstring( ).
                              DATA t318 TYPE x LENGTH 1.
                              CLEAR t318.
                              DATA t319 TYPE x LENGTH 1.
                              CLEAR t319.
                              DATA(t320) = VALUE i( ).
                              t316 = t315.
                              t310 = cl_abap_conv_out_ce=>uccpi( t316 ).
                              IF t310 >= 255.
                                IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                                  zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                ENDIF.
                                zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t315 IMPORTING buffer = t317 ).
                                t318 = t317(1).
                                t319 = t317+1(1).
                                t310 = t318.
                                t320 = t319.
                                t310 = t310 + t320 * 256.
                              ENDIF.
                              t309 = t310.
                              t303 = t309.
                            ENDIF.
                            t297 = t303.
                            t294 = t297.
                            t293 = t294.
                            DATA(t321) = CONV i( zcl_lnt_lexer_module=>ch_equals ).
                            t292 = xsdbool( t293 = t321 ).
                            t261 = t292.
                          ENDIF.
                          t253 = t261.
                        ENDIF.
                        IF t253 = abap_true.
                          me->add_51c1(  ).
                        ELSE.
                          DATA(t322) = VALUE abap_bool( ).
                          DATA(t323) = VALUE abap_bool( ).
                          DATA(t324) = VALUE int8( ).
                          DATA t325 TYPE REF TO zcl_lnt_lexer_buffer.
                          DATA(t326) = CAST zcl_lnt_lexer_buffer( me->buffer ).
                          t325 = t326.
                          DATA t327 TYPE int8.
                          DATA t328 TYPE int8.
                          DATA t329 TYPE i.
                          DATA(t330) = CAST zcl_lnt_lexer_buffer( t325 ).
                          t329 = t330->end.
                          t328 = t329.
                          DATA t331 TYPE int8.
                          DATA t332 TYPE i.
                          DATA(t333) = CAST zcl_lnt_lexer_buffer( t325 ).
                          t332 = t333->start.
                          t331 = t332.
                          t327 = t328 - t331.
                          IF t327 < range_int8_bound_min OR t327 > range_int8_bound_max.
                            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                          ENDIF.
                          t324 = t327.
                          DATA(t334) = CONV int8( 1 ).
                          t323 = xsdbool( t324 = t334 ).
                          t322 = t323.
                          IF t323 = abap_true.
                            DATA t335 TYPE abap_bool.
                            DATA(t336) = VALUE abap_bool( ).
                            DATA t337 TYPE int8.
                            DATA t338 TYPE int8.
                            DATA(t339) = t18.
                            t338 = t339.
                            t337 = t338.
                            t336 = xsdbool( t337 = 46
                            OR t337 = 44
                            OR t337 = 58
                            OR t337 = 40
                            OR t337 = 41
                            OR t337 = 91
                            OR t337 = 93
                            OR t337 = 43
                            OR t337 = 64
                            ).
                            t335 = t336.
                            IF t336 = abap_false.
                              DATA t340 TYPE abap_bool.
                              DATA t341 TYPE abap_bool.
                              DATA(t342) = t18.
                              DATA(t343) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                              t341 = xsdbool( t342 = t343 ).
                              t340 = t341.
                              IF t341 = abap_true.
                                DATA t344 TYPE abap_bool.
                                DATA(t345) = t84.
                                DATA(t346) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                                t344 = xsdbool( t345 <> t346 ).
                                t340 = t344.
                              ENDIF.
                              t335 = t340.
                            ENDIF.
                            t322 = t335.
                          ENDIF.
                          IF t322 = abap_true.
                            me->add_51c1(  ).
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
        DATA t347 TYPE abap_bool.
        DATA t348 TYPE abap_bool.
        DATA(t349) = CONV int8( me->m ).
        DATA t350 TYPE int8.
        DATA(t351) = CONV i( zcl_lnt_lexer_module=>mode_pragma ).
        t350 = t351.
        t348 = xsdbool( t349 = t350 ).
        t347 = t348.
        IF t348 = abap_true.
          DATA(t352) = VALUE abap_bool( ).
          DATA(t353) = VALUE abap_bool( ).
          DATA(t354) = VALUE abap_bool( ).
          DATA t355 TYPE abap_bool.
          DATA t356 TYPE abap_bool.
          DATA(t357) = t84.
          DATA(t358) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
          t356 = xsdbool( t357 = t358 ).
          t355 = t356.
          IF t356 = abap_false.
            DATA t359 TYPE abap_bool.
            DATA(t360) = t84.
            DATA(t361) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
            t359 = xsdbool( t360 = t361 ).
            t355 = t359.
          ENDIF.
          t354 = t355.
          IF t355 = abap_false.
            DATA t362 TYPE abap_bool.
            DATA(t363) = t84.
            DATA(t364) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
            t362 = xsdbool( t363 = t364 ).
            t354 = t362.
          ENDIF.
          t353 = t354.
          IF t354 = abap_false.
            DATA t365 TYPE abap_bool.
            DATA(t366) = t84.
            DATA(t367) = CONV i( zcl_lnt_lexer_module=>ch_space ).
            t365 = xsdbool( t366 = t367 ).
            t353 = t365.
          ENDIF.
          t352 = t353.
          IF t353 = abap_false.
            DATA t368 TYPE abap_bool.
            DATA(t369) = t84.
            DATA(t370) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
            t368 = xsdbool( t369 = t370 ).
            t352 = t368.
          ENDIF.
          t347 = t352.
        ENDIF.
        IF t347 = abap_true.
          me->add_51c1(  ).
          DATA t371 TYPE int8.
          DATA(t372) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
          t371 = t372.
          me->m = t371.
        ELSE.
          DATA(t373) = VALUE abap_bool( ).
          DATA(t374) = VALUE abap_bool( ).
          DATA(t375) = VALUE abap_bool( ).
          DATA(t376) = VALUE abap_bool( ).
          DATA t377 TYPE abap_bool.
          DATA t378 TYPE abap_bool.
          DATA(t379) = CONV int8( me->m ).
          DATA t380 TYPE int8.
          DATA(t381) = CONV i( zcl_lnt_lexer_module=>mode_ping ).
          t380 = t381.
          t378 = xsdbool( t379 = t380 ).
          t377 = t378.
          IF t378 = abap_true.
            DATA(t382) = VALUE abap_bool( ).
            DATA(t383) = VALUE int8( ).
            DATA t384 TYPE REF TO zcl_lnt_lexer_buffer.
            DATA(t385) = CAST zcl_lnt_lexer_buffer( me->buffer ).
            t384 = t385.
            DATA t386 TYPE int8.
            DATA t387 TYPE int8.
            DATA t388 TYPE i.
            DATA(t389) = CAST zcl_lnt_lexer_buffer( t384 ).
            t388 = t389->end.
            t387 = t388.
            DATA t390 TYPE int8.
            DATA t391 TYPE i.
            DATA(t392) = CAST zcl_lnt_lexer_buffer( t384 ).
            t391 = t392->start.
            t390 = t391.
            t386 = t387 - t390.
            IF t386 < range_int8_bound_min OR t386 > range_int8_bound_max.
              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
            ENDIF.
            t383 = t386.
            DATA(t393) = CONV int8( 1 ).
            t382 = xsdbool( t383 > t393 ).
            t377 = t382.
          ENDIF.
          t376 = t377.
          IF t377 = abap_true.
            DATA t394 TYPE abap_bool.
            DATA(t395) = t18.
            DATA(t396) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t394 = xsdbool( t395 = t396 ).
            t376 = t394.
          ENDIF.
          t375 = t376.
          IF t376 = abap_true.
            DATA(t397) = VALUE abap_bool( ).
            DATA t398 TYPE abap_bool.
            DATA t399 TYPE abap_bool.
            DATA(t400) = t84.
            DATA(t401) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t399 = xsdbool( t400 = t401 ).
            t398 = t399.
            IF t399 = abap_true.
              DATA t402 TYPE abap_bool.
              DATA(t403) = t119.
              DATA(t404) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
              t402 = xsdbool( t403 = t404 ).
              t398 = t402.
            ENDIF.
            t397 = xsdbool( t398 = abap_false ).
            t375 = t397.
          ENDIF.
          t374 = t375.
          IF t375 = abap_true.
            DATA t405 TYPE abap_bool.
            DATA(t406) = t84.
            DATA(t407) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t405 = xsdbool( t406 <> t407 ).
            t374 = t405.
          ENDIF.
          t373 = t374.
          IF t374 = abap_true.
            DATA t408 TYPE abap_bool.
            DATA(t409) = CAST zcl_lnt_lexer_buffer( me->buffer ).
            DATA t410 TYPE int8.
            DATA(t411) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t410 = t411.
            t408 = t409->count_is_even( i_char = t410 ).
            t373 = t408.
          ENDIF.
          IF t373 = abap_true.
            DATA(t412) = VALUE abap_bool( ).
            DATA t413 TYPE int8.
            DATA t414 TYPE int8.
            DATA(t415) = t84.
            t414 = t415.
            t413 = t414.
            t412 = xsdbool( t413 = -1
            OR t413 = 32
            OR t413 = 9
            OR t413 = 10
            OR t413 = 46
            OR t413 = 44
            OR t413 = 58
            OR t413 = 34
            OR t413 = 40
            OR t413 = 41
            OR t413 = 91
            OR t413 = 93
            ).
            IF t412 = abap_true.
              me->add_51c1(  ).
            ENDIF.
            DATA t416 TYPE abap_bool.
            DATA(t417) = t84.
            DATA(t418) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
            t416 = xsdbool( t417 = t418 ).
            IF t416 = abap_true.
              DATA t419 TYPE int8.
              DATA(t420) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
              t419 = t420.
              me->m = t419.
            ELSE.
              DATA t421 TYPE int8.
              DATA(t422) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
              t421 = t422.
              me->m = t421.
            ENDIF.
          ELSE.
            DATA(t423) = VALUE abap_bool( ).
            DATA(t424) = VALUE abap_bool( ).
            DATA t425 TYPE abap_bool.
            DATA t426 TYPE abap_bool.
            DATA(t427) = CONV int8( me->m ).
            DATA t428 TYPE int8.
            DATA(t429) = CONV i( zcl_lnt_lexer_module=>mode_template ).
            t428 = t429.
            t426 = xsdbool( t427 = t428 ).
            t425 = t426.
            IF t426 = abap_true.
              DATA(t430) = VALUE abap_bool( ).
              DATA(t431) = VALUE int8( ).
              DATA t432 TYPE REF TO zcl_lnt_lexer_buffer.
              DATA(t433) = CAST zcl_lnt_lexer_buffer( me->buffer ).
              t432 = t433.
              DATA t434 TYPE int8.
              DATA t435 TYPE int8.
              DATA t436 TYPE i.
              DATA(t437) = CAST zcl_lnt_lexer_buffer( t432 ).
              t436 = t437->end.
              t435 = t436.
              DATA t438 TYPE int8.
              DATA t439 TYPE i.
              DATA(t440) = CAST zcl_lnt_lexer_buffer( t432 ).
              t439 = t440->start.
              t438 = t439.
              t434 = t435 - t438.
              IF t434 < range_int8_bound_min OR t434 > range_int8_bound_max.
                RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
              ENDIF.
              t431 = t434.
              DATA(t441) = CONV int8( 1 ).
              t430 = xsdbool( t431 > t441 ).
              t425 = t430.
            ENDIF.
            t424 = t425.
            IF t425 = abap_true.
              DATA t442 TYPE abap_bool.
              DATA t443 TYPE abap_bool.
              DATA(t444) = t18.
              DATA(t445) = CONV i( zcl_lnt_lexer_module=>ch_pipe ).
              t443 = xsdbool( t444 = t445 ).
              t442 = t443.
              IF t443 = abap_false.
                DATA t446 TYPE abap_bool.
                DATA(t447) = t18.
                DATA(t448) = CONV i( zcl_lnt_lexer_module=>ch_lbrace ).
                t446 = xsdbool( t447 = t448 ).
                t442 = t446.
              ENDIF.
              t424 = t442.
            ENDIF.
            t423 = t424.
            IF t424 = abap_true.
              DATA(t449) = VALUE abap_bool( ).
              DATA(t450) = VALUE abap_bool( ).
              DATA(t451) = VALUE i( ).
              DATA(t452) = VALUE int8( ).
              DATA t453 TYPE REF TO zcl_lnt_lexer_stream.
              DATA(t454) = CAST zcl_lnt_lexer_stream( t2 ).
              t453 = t454.
              DATA(t455) = VALUE int8( ).
              DATA t456 TYPE i.
              DATA t457 TYPE i.
              DATA t458 TYPE i.
              DATA(t459) = CAST zcl_lnt_lexer_stream( t453 ).
              t458 = t459->offset.
              DATA(t460) = 1.
              t457 = t458 - t460.
              t456 = t457.
              DATA(t461) = VALUE int8( ).
              DATA t462 TYPE abap_bool.
              DATA(t463) = t456.
              DATA(t464) = 0.
              t462 = xsdbool( t463 < t464 ).
              IF t462 = abap_true.
                DATA t465 TYPE int8.
                DATA(t466) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                t465 = t466.
                t461 = t465.
              ELSE.
                DATA(t467) = VALUE int8( ).
                DATA(t468) = VALUE i( ).
                DATA t469 TYPE string.
                DATA(t470) = CAST zcl_lnt_lexer_stream( t453 ).
                t469 = t470->raw.
                DATA(t471) = t456.
                DATA(t472) = strlen( t469 ).
                IF t471 < 0 OR t471 >= t472.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                DATA(t473) = CONV string( t469+t471(1) ).
                DATA t474 TYPE c LENGTH 1.
                CLEAR t474.
                DATA(t475) = VALUE xstring( ).
                DATA t476 TYPE x LENGTH 1.
                CLEAR t476.
                DATA t477 TYPE x LENGTH 1.
                CLEAR t477.
                DATA(t478) = VALUE i( ).
                t474 = t473.
                t468 = cl_abap_conv_out_ce=>uccpi( t474 ).
                IF t468 >= 255.
                  IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                    zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                  ENDIF.
                  zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t473 IMPORTING buffer = t475 ).
                  t476 = t475(1).
                  t477 = t475+1(1).
                  t468 = t476.
                  t478 = t477.
                  t468 = t468 + t478 * 256.
                ENDIF.
                t467 = t468.
                t461 = t467.
              ENDIF.
              t455 = t461.
              t452 = t455.
              t451 = t452.
              DATA(t479) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
              t450 = xsdbool( t451 <> t479 ).
              t449 = t450.
              IF t450 = abap_false.
                DATA(t480) = VALUE abap_bool( ).
                DATA(t481) = VALUE abap_bool( ).
                DATA(t482) = VALUE i( ).
                DATA(t483) = VALUE int8( ).
                DATA t484 TYPE REF TO zcl_lnt_lexer_stream.
                DATA(t485) = CAST zcl_lnt_lexer_stream( t2 ).
                t484 = t485.
                DATA(t486) = VALUE int8( ).
                DATA t487 TYPE i.
                DATA t488 TYPE i.
                DATA t489 TYPE i.
                DATA(t490) = CAST zcl_lnt_lexer_stream( t484 ).
                t489 = t490->offset.
                DATA(t491) = 2.
                t488 = t489 - t491.
                t487 = t488.
                DATA(t492) = VALUE int8( ).
                DATA t493 TYPE abap_bool.
                DATA(t494) = t487.
                DATA(t495) = 0.
                t493 = xsdbool( t494 < t495 ).
                IF t493 = abap_true.
                  DATA t496 TYPE int8.
                  DATA(t497) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                  t496 = t497.
                  t492 = t496.
                ELSE.
                  DATA(t498) = VALUE int8( ).
                  DATA(t499) = VALUE i( ).
                  DATA t500 TYPE string.
                  DATA(t501) = CAST zcl_lnt_lexer_stream( t484 ).
                  t500 = t501->raw.
                  DATA(t502) = t487.
                  DATA(t503) = strlen( t500 ).
                  IF t502 < 0 OR t502 >= t503.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  DATA(t504) = CONV string( t500+t502(1) ).
                  DATA t505 TYPE c LENGTH 1.
                  CLEAR t505.
                  DATA(t506) = VALUE xstring( ).
                  DATA t507 TYPE x LENGTH 1.
                  CLEAR t507.
                  DATA t508 TYPE x LENGTH 1.
                  CLEAR t508.
                  DATA(t509) = VALUE i( ).
                  t505 = t504.
                  t499 = cl_abap_conv_out_ce=>uccpi( t505 ).
                  IF t499 >= 255.
                    IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                      zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                    ENDIF.
                    zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t504 IMPORTING buffer = t506 ).
                    t507 = t506(1).
                    t508 = t506+1(1).
                    t499 = t507.
                    t509 = t508.
                    t499 = t499 + t509 * 256.
                  ENDIF.
                  t498 = t499.
                  t492 = t498.
                ENDIF.
                t486 = t492.
                t483 = t486.
                t482 = t483.
                DATA(t510) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                t481 = xsdbool( t482 = t510 ).
                t480 = t481.
                IF t481 = abap_true.
                  DATA(t511) = VALUE abap_bool( ).
                  DATA(t512) = VALUE i( ).
                  DATA(t513) = VALUE int8( ).
                  DATA t514 TYPE REF TO zcl_lnt_lexer_stream.
                  DATA(t515) = CAST zcl_lnt_lexer_stream( t2 ).
                  t514 = t515.
                  DATA(t516) = VALUE int8( ).
                  DATA t517 TYPE i.
                  DATA t518 TYPE i.
                  DATA t519 TYPE i.
                  DATA(t520) = CAST zcl_lnt_lexer_stream( t514 ).
                  t519 = t520->offset.
                  DATA(t521) = 1.
                  t518 = t519 - t521.
                  t517 = t518.
                  DATA(t522) = VALUE int8( ).
                  DATA t523 TYPE abap_bool.
                  DATA(t524) = t517.
                  DATA(t525) = 0.
                  t523 = xsdbool( t524 < t525 ).
                  IF t523 = abap_true.
                    DATA t526 TYPE int8.
                    DATA(t527) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                    t526 = t527.
                    t522 = t526.
                  ELSE.
                    DATA(t528) = VALUE int8( ).
                    DATA(t529) = VALUE i( ).
                    DATA t530 TYPE string.
                    DATA(t531) = CAST zcl_lnt_lexer_stream( t514 ).
                    t530 = t531->raw.
                    DATA(t532) = t517.
                    DATA(t533) = strlen( t530 ).
                    IF t532 < 0 OR t532 >= t533.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    DATA(t534) = CONV string( t530+t532(1) ).
                    DATA t535 TYPE c LENGTH 1.
                    CLEAR t535.
                    DATA(t536) = VALUE xstring( ).
                    DATA t537 TYPE x LENGTH 1.
                    CLEAR t537.
                    DATA t538 TYPE x LENGTH 1.
                    CLEAR t538.
                    DATA(t539) = VALUE i( ).
                    t535 = t534.
                    t529 = cl_abap_conv_out_ce=>uccpi( t535 ).
                    IF t529 >= 255.
                      IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
                        zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                      ENDIF.
                      zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t534 IMPORTING buffer = t536 ).
                      t537 = t536(1).
                      t538 = t536+1(1).
                      t529 = t537.
                      t539 = t538.
                      t529 = t529 + t539 * 256.
                    ENDIF.
                    t528 = t529.
                    t522 = t528.
                  ENDIF.
                  t516 = t522.
                  t513 = t516.
                  t512 = t513.
                  DATA(t540) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                  t511 = xsdbool( t512 = t540 ).
                  t480 = t511.
                ENDIF.
                t449 = t480.
              ENDIF.
              t423 = t449.
            ENDIF.
            IF t423 = abap_true.
              DATA t541 TYPE abap_bool.
              DATA t542 TYPE abap_bool.
              DATA(t543) = t18.
              DATA(t544) = CONV i( zcl_lnt_lexer_module=>ch_lbrace ).
              t542 = xsdbool( t543 = t544 ).
              t541 = t542.
              IF t542 = abap_false.
                DATA(t545) = VALUE abap_bool( ).
                DATA t546 TYPE int8.
                DATA t547 TYPE int8.
                DATA(t548) = t84.
                t547 = t548.
                t546 = t547.
                t545 = xsdbool( t546 = -1
                OR t546 = 32
                OR t546 = 9
                OR t546 = 10
                OR t546 = 46
                OR t546 = 44
                OR t546 = 58
                OR t546 = 34
                OR t546 = 40
                OR t546 = 41
                OR t546 = 91
                OR t546 = 93
                ).
                t541 = t545.
              ENDIF.
              IF t541 = abap_true.
                me->add_51c1(  ).
              ENDIF.
              DATA t549 TYPE int8.
              DATA(t550) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
              t549 = t550.
              me->m = t549.
            ELSE.
              DATA(t551) = VALUE abap_bool( ).
              DATA t552 TYPE abap_bool.
              DATA t553 TYPE abap_bool.
              DATA(t554) = CONV int8( me->m ).
              DATA t555 TYPE int8.
              DATA(t556) = CONV i( zcl_lnt_lexer_module=>mode_template ).
              t555 = t556.
              t553 = xsdbool( t554 = t555 ).
              t552 = t553.
              IF t553 = abap_true.
                DATA t557 TYPE abap_bool.
                DATA(t558) = t84.
                DATA(t559) = CONV i( zcl_lnt_lexer_module=>ch_rbrace ).
                t557 = xsdbool( t558 = t559 ).
                t552 = t557.
              ENDIF.
              t551 = t552.
              IF t552 = abap_true.
                DATA t560 TYPE abap_bool.
                DATA(t561) = t18.
                DATA(t562) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                t560 = xsdbool( t561 <> t562 ).
                t551 = t560.
              ENDIF.
              IF t551 = abap_true.
                me->add_51c1(  ).
              ELSE.
                DATA(t563) = VALUE abap_bool( ).
                DATA(t564) = VALUE abap_bool( ).
                DATA(t565) = VALUE abap_bool( ).
                DATA(t566) = VALUE abap_bool( ).
                DATA t567 TYPE abap_bool.
                DATA t568 TYPE abap_bool.
                DATA(t569) = CONV int8( me->m ).
                DATA t570 TYPE int8.
                DATA(t571) = CONV i( zcl_lnt_lexer_module=>mode_str ).
                t570 = t571.
                t568 = xsdbool( t569 = t570 ).
                t567 = t568.
                IF t568 = abap_true.
                  DATA t572 TYPE abap_bool.
                  DATA(t573) = t18.
                  DATA(t574) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t572 = xsdbool( t573 = t574 ).
                  t567 = t572.
                ENDIF.
                t566 = t567.
                IF t567 = abap_true.
                  DATA(t575) = VALUE abap_bool( ).
                  DATA(t576) = VALUE int8( ).
                  DATA t577 TYPE REF TO zcl_lnt_lexer_buffer.
                  DATA(t578) = CAST zcl_lnt_lexer_buffer( me->buffer ).
                  t577 = t578.
                  DATA t579 TYPE int8.
                  DATA t580 TYPE int8.
                  DATA t581 TYPE i.
                  DATA(t582) = CAST zcl_lnt_lexer_buffer( t577 ).
                  t581 = t582->end.
                  t580 = t581.
                  DATA t583 TYPE int8.
                  DATA t584 TYPE i.
                  DATA(t585) = CAST zcl_lnt_lexer_buffer( t577 ).
                  t584 = t585->start.
                  t583 = t584.
                  t579 = t580 - t583.
                  IF t579 < range_int8_bound_min OR t579 > range_int8_bound_max.
                    RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                  ENDIF.
                  t576 = t579.
                  DATA(t586) = CONV int8( 1 ).
                  t575 = xsdbool( t576 > t586 ).
                  t566 = t575.
                ENDIF.
                t565 = t566.
                IF t566 = abap_true.
                  DATA(t587) = VALUE abap_bool( ).
                  DATA t588 TYPE abap_bool.
                  DATA t589 TYPE abap_bool.
                  DATA(t590) = t84.
                  DATA(t591) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t589 = xsdbool( t590 = t591 ).
                  t588 = t589.
                  IF t589 = abap_true.
                    DATA t592 TYPE abap_bool.
                    DATA(t593) = t119.
                    DATA(t594) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                    t592 = xsdbool( t593 = t594 ).
                    t588 = t592.
                  ENDIF.
                  t587 = xsdbool( t588 = abap_false ).
                  t565 = t587.
                ENDIF.
                t564 = t565.
                IF t565 = abap_true.
                  DATA t595 TYPE abap_bool.
                  DATA(t596) = t84.
                  DATA(t597) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t595 = xsdbool( t596 <> t597 ).
                  t564 = t595.
                ENDIF.
                t563 = t564.
                IF t564 = abap_true.
                  DATA t598 TYPE abap_bool.
                  DATA(t599) = CAST zcl_lnt_lexer_buffer( me->buffer ).
                  DATA t600 TYPE int8.
                  DATA(t601) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t600 = t601.
                  t598 = t599->count_is_even( i_char = t600 ).
                  t563 = t598.
                ENDIF.
                IF t563 = abap_true.
                  DATA(t602) = VALUE abap_bool( ).
                  DATA t603 TYPE int8.
                  DATA t604 TYPE int8.
                  DATA(t605) = t84.
                  t604 = t605.
                  t603 = t604.
                  t602 = xsdbool( t603 = -1
                  OR t603 = 32
                  OR t603 = 9
                  OR t603 = 10
                  OR t603 = 46
                  OR t603 = 44
                  OR t603 = 58
                  OR t603 = 34
                  OR t603 = 40
                  OR t603 = 41
                  OR t603 = 91
                  OR t603 = 93
                  ).
                  IF t602 = abap_true.
                    me->add_51c1(  ).
                  ENDIF.
                  DATA t606 TYPE abap_bool.
                  DATA(t607) = t84.
                  DATA(t608) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
                  t606 = xsdbool( t607 = t608 ).
                  IF t606 = abap_true.
                    DATA t609 TYPE int8.
                    DATA(t610) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
                    t609 = t610.
                    me->m = t609.
                  ELSE.
                    DATA t611 TYPE int8.
                    DATA(t612) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
                    t611 = t612.
                    me->m = t611.
                  ENDIF.
                ELSE.
                  DATA t613 TYPE abap_bool.
                  DATA t614 TYPE abap_bool.
                  DATA(t615) = t84.
                  DATA(t616) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                  t614 = xsdbool( t615 = t616 ).
                  t613 = t614.
                  IF t614 = abap_true.
                    DATA t617 TYPE abap_bool.
                    DATA(t618) = CONV int8( me->m ).
                    DATA t619 TYPE int8.
                    DATA(t620) = CONV i( zcl_lnt_lexer_module=>mode_template ).
                    t619 = t620.
                    t617 = xsdbool( t618 <> t619 ).
                    t613 = t617.
                  ENDIF.
                  IF t613 = abap_true.
                    me->add_51c1(  ).
                    DATA t621 TYPE int8.
                    DATA(t622) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
                    t621 = t622.
                    me->m = t621.
                  ELSE.
                    DATA t623 TYPE abap_bool.
                    DATA t624 TYPE abap_bool.
                    DATA(t625) = CONV int8( me->m ).
                    DATA t626 TYPE int8.
                    DATA(t627) = CONV i( zcl_lnt_lexer_module=>mode_template ).
                    t626 = t627.
                    t624 = xsdbool( t625 = t626 ).
                    t623 = t624.
                    IF t624 = abap_true.
                      DATA t628 TYPE abap_bool.
                      DATA(t629) = t18.
                      DATA(t630) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                      t628 = xsdbool( t629 = t630 ).
                      t623 = t628.
                    ENDIF.
                    IF t623 = abap_true.
                      me->add_51c1(  ).
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t631) = VALUE abap_bool( ).
      DATA(t632) = VALUE abap_bool( ).
      DATA t633 TYPE REF TO zcl_lnt_lexer_stream.
      DATA(t634) = CAST zcl_lnt_lexer_stream( t2 ).
      t633 = t634.
      DATA(t635) = VALUE abap_bool( ).
      DATA(t636) = VALUE abap_bool( ).
      DATA(t637) = VALUE i( ).
      DATA(t638) = VALUE int8( ).
      DATA t639 TYPE abap_bool.
      DATA t640 TYPE i.
      DATA(t641) = CAST zcl_lnt_lexer_stream( t633 ).
      t640 = t641->offset.
      DATA(t642) = 0.
      t639 = xsdbool( t640 < t642 ).
      IF t639 = abap_true.
        DATA t643 TYPE int8.
        DATA(t644) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
        t643 = t644.
        t638 = t643.
      ELSE.
        DATA(t645) = VALUE int8( ).
        DATA t646 TYPE abap_bool.
        DATA t647 TYPE i.
        DATA(t648) = CAST zcl_lnt_lexer_stream( t633 ).
        t647 = t648->offset.
        DATA t649 TYPE i.
        DATA t650 TYPE string.
        DATA(t651) = CAST zcl_lnt_lexer_stream( t633 ).
        t650 = t651->raw.
        DATA(t652) = strlen( t650 ).
        t649 = t652.
        t646 = xsdbool( t647 >= t649 ).
        IF t646 = abap_true.
          DATA t653 TYPE int8.
          DATA(t654) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t653 = t654.
          t645 = t653.
        ELSE.
          DATA(t655) = VALUE int8( ).
          DATA(t656) = VALUE i( ).
          DATA t657 TYPE string.
          DATA(t658) = CAST zcl_lnt_lexer_stream( t633 ).
          t657 = t658->raw.
          DATA t659 TYPE i.
          DATA(t660) = CAST zcl_lnt_lexer_stream( t633 ).
          t659 = t660->offset.
          DATA(t661) = strlen( t657 ).
          IF t659 < 0 OR t659 >= t661.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t662) = CONV string( t657+t659(1) ).
          DATA t663 TYPE c LENGTH 1.
          CLEAR t663.
          DATA(t664) = VALUE xstring( ).
          DATA t665 TYPE x LENGTH 1.
          CLEAR t665.
          DATA t666 TYPE x LENGTH 1.
          CLEAR t666.
          DATA(t667) = VALUE i( ).
          t663 = t662.
          t656 = cl_abap_conv_out_ce=>uccpi( t663 ).
          IF t656 >= 255.
            IF zlnt_builtin_code_3bfe63ca77b3 IS NOT BOUND.
              zlnt_builtin_code_3bfe63ca77b3 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_3bfe63ca77b3->convert( EXPORTING data = t662 IMPORTING buffer = t664 ).
            t665 = t664(1).
            t666 = t664+1(1).
            t656 = t665.
            t667 = t666.
            t656 = t656 + t667 * 256.
          ENDIF.
          t655 = t656.
          t645 = t655.
        ENDIF.
        t638 = t645.
      ENDIF.
      t637 = t638.
      DATA(t668) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
      t636 = xsdbool( t637 = t668 ).
      IF t636 = abap_true.
        DATA(t669) = CAST zcl_lnt_lexer_stream( t633 ).
        DATA(t670) = CONV int8( 1 ).
        t669->col = t670.
        DATA(t671) = CAST zcl_lnt_lexer_stream( t633 ).
        DATA t672 TYPE int8.
        DATA t673 TYPE int8.
        DATA(t674) = CAST zcl_lnt_lexer_stream( t633 ).
        t673 = t674->row.
        DATA(t675) = CONV int8( 1 ).
        t672 = t673 + t675.
        IF t672 < range_int8_bound_min OR t672 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t671->row = t672.
      ENDIF.
      DATA(t676) = VALUE abap_bool( ).
      DATA t677 TYPE abap_bool.
      DATA t678 TYPE i.
      DATA(t679) = CAST zcl_lnt_lexer_stream( t633 ).
      t678 = t679->offset.
      DATA t680 TYPE i.
      DATA t681 TYPE string.
      DATA(t682) = CAST zcl_lnt_lexer_stream( t633 ).
      t681 = t682->raw.
      DATA(t683) = strlen( t681 ).
      t680 = t683.
      t677 = xsdbool( t678 = t680 ).
      IF t677 = abap_true.
        DATA(t684) = VALUE abap_bool( ).
        DATA(t685) = CAST zcl_lnt_lexer_stream( t633 ).
        DATA t686 TYPE int8.
        DATA t687 TYPE int8.
        DATA(t688) = CAST zcl_lnt_lexer_stream( t633 ).
        t687 = t688->col.
        DATA(t689) = CONV int8( 1 ).
        t686 = t687 - t689.
        IF t686 < range_int8_bound_min OR t686 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t685->col = t686.
        DATA(t690) = abap_false.
        t684 = t690.
        t676 = t684.
      ELSE.
        DATA(t691) = VALUE abap_bool( ).
        DATA(t692) = CAST zcl_lnt_lexer_stream( t633 ).
        DATA t693 TYPE int8.
        DATA t694 TYPE int8.
        DATA(t695) = CAST zcl_lnt_lexer_stream( t633 ).
        t694 = t695->col.
        DATA(t696) = CONV int8( 1 ).
        t693 = t694 + t696.
        IF t693 < range_int8_bound_min OR t693 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t692->col = t693.
        DATA(t697) = CAST zcl_lnt_lexer_stream( t633 ).
        DATA t698 TYPE i.
        DATA t699 TYPE i.
        DATA(t700) = CAST zcl_lnt_lexer_stream( t633 ).
        t699 = t700->offset.
        DATA(t701) = 1.
        t698 = t699 + t701.
        t697->offset = t698.
        DATA(t702) = abap_true.
        t691 = t702.
        t676 = t691.
      ENDIF.
      t635 = t676.
      t632 = t635.
      t631 = xsdbool( t632 = abap_false ).
      IF t631 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    me->add_51c1(  ).
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d9_e4f0b8f112f46b.
  ENDMETHOD.
ENDCLASS.
