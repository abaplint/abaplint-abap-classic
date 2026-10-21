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
    me->virtual = i_virtual.
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
    me->process( i_raw = t1->get_raw( ) ).
    DATA t9 TYPE REF TO zcl_lnt_iabaplexer_result.
    DATA t10 TYPE REF TO zif_lnt_file.
    t10 = t1.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = me->tokens.
    t9 = NEW zcl_lnt_iabaplexer_result( i_file = t10 i_tokens = t12 ).
    CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
    t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t15 ).
    ENDIF.
    CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
    t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t17 ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokens| p1 = t19 ).
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
    t4 = me->buffer.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE string.
    t7 = t4->raw.
    DATA t9 TYPE i.
    t9 = t4->start.
    DATA t11 TYPE i.
    t11 = t4->end.
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
    IF xsdbool( strlen( t1 ) > 0 ) = abap_true.
      DATA t42 TYPE f.
      t42 = me->stream->col.
      DATA t48 TYPE f.
      t48 = me->stream->row.
      DATA t50 TYPE abap_bool.
      t50 = abap_false.
      DATA t52 TYPE i.
      DATA t54 TYPE i.
      DATA t58 TYPE f.
      t58 = me->stream->offset.
      t54 = t58.
      DATA t61 TYPE i.
      t61 = strlen( t1 ).
      t52 = t54 - t61.
      IF xsdbool( t52 >= 0 ) = abap_true.
        DATA(t67) = VALUE i( ).
        DATA(t68) = VALUE i( ).
        DATA t70 TYPE REF TO zcl_lnt_lexer_stream.
        t70 = me->stream.
        DATA t72 TYPE f.
        DATA t73 TYPE f.
        t73 = t52.
        t72 = t73.
        DATA(t75) = VALUE f( ).
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE abap_bool.
        t77 = xsdbool( t72 < CONV f( 0 ) ).
        t76 = t77.
        IF t77 = abap_false.
          DATA t82 TYPE f.
          t82 = strlen( t70->raw ).
          t76 = xsdbool( t72 >= t82 ).
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
          t91 = t70->raw.
          DATA(t93) = VALUE i( ).
          IF t72 > range_i32_upper.
            t93 = range_i32_upper.
          ELSEIF t72 < range_i32_lower.
            t93 = range_i32_lower.
          ELSE.
            t93 = trunc( t72 ).
          ENDIF.
          DATA(t95) = strlen( t91 ).
          IF t93 < 0 OR t93 >= t95.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t96) = CONV string( t91+t93(1) ).
          DATA t97 TYPE c LENGTH 1.
          DATA(t98) = VALUE xstring( ).
          DATA t99 TYPE x LENGTH 1.
          DATA t100 TYPE x LENGTH 1.
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
        t68 = t75.
        t67 = t68.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE abap_bool.
        DATA t105 TYPE abap_bool.
        DATA(t107) = CONV i( zcl_lnt_lexer_module=>ch_space ).
        t105 = xsdbool( t67 = t107 ).
        t104 = t105.
        IF t105 = abap_false.
          DATA(t110) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
          t104 = xsdbool( t67 = t110 ).
        ENDIF.
        t103 = t104.
        IF t104 = abap_false.
          DATA(t113) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
          t103 = xsdbool( t67 = t113 ).
        ENDIF.
        t102 = t103.
        IF t103 = abap_false.
          DATA(t116) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
          t102 = xsdbool( t67 = t116 ).
        ENDIF.
        IF t102 = abap_true.
          t50 = abap_true.
        ENDIF.
      ENDIF.
      DATA t118 TYPE abap_bool.
      t118 = abap_false.
      DATA(t120) = VALUE i( ).
      DATA(t121) = VALUE i( ).
      DATA t123 TYPE REF TO zcl_lnt_lexer_stream.
      t123 = me->stream.
      DATA t126 TYPE int8.
      DATA t128 TYPE int8.
      t128 = t123->offset.
      DATA(t131) = CONV int8( 1 ).
      t126 = t128 + t131.
      DATA(t132) = VALUE f( ).
      DATA t135 TYPE int8.
      t135 = strlen( t123->raw ).
      IF xsdbool( t126 >= t135 ) = abap_true.
        DATA t140 TYPE f.
        DATA(t141) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t140 = t141.
        t132 = t140.
      ELSE.
        DATA(t142) = VALUE f( ).
        DATA(t143) = VALUE i( ).
        DATA t144 TYPE string.
        t144 = t123->raw.
        DATA t146 TYPE i.
        t146 = t126.
        DATA(t148) = strlen( t144 ).
        IF t146 < 0 OR t146 >= t148.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t149) = CONV string( t144+t146(1) ).
        DATA t150 TYPE c LENGTH 1.
        DATA(t151) = VALUE xstring( ).
        DATA t152 TYPE x LENGTH 1.
        DATA t153 TYPE x LENGTH 1.
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
      t121 = t132.
      t120 = t121.
      DATA(t155) = VALUE abap_bool( ).
      DATA(t156) = VALUE abap_bool( ).
      DATA(t157) = VALUE abap_bool( ).
      DATA(t158) = VALUE abap_bool( ).
      DATA(t159) = VALUE abap_bool( ).
      DATA(t160) = VALUE abap_bool( ).
      DATA t161 TYPE abap_bool.
      DATA t162 TYPE abap_bool.
      DATA(t164) = CONV i( zcl_lnt_lexer_module=>ch_space ).
      t162 = xsdbool( t120 = t164 ).
      t161 = t162.
      IF t162 = abap_false.
        DATA(t167) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
        t161 = xsdbool( t120 = t167 ).
      ENDIF.
      t160 = t161.
      IF t161 = abap_false.
        DATA(t170) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
        t160 = xsdbool( t120 = t170 ).
      ENDIF.
      t159 = t160.
      IF t160 = abap_false.
        DATA(t173) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
        t159 = xsdbool( t120 = t173 ).
      ENDIF.
      t158 = t159.
      IF t159 = abap_false.
        DATA(t176) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
        t158 = xsdbool( t120 = t176 ).
      ENDIF.
      t157 = t158.
      IF t158 = abap_false.
        DATA(t179) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
        t157 = xsdbool( t120 = t179 ).
      ENDIF.
      t156 = t157.
      IF t157 = abap_false.
        DATA(t182) = CONV i( zcl_lnt_lexer_module=>eof ).
        t156 = xsdbool( t120 = t182 ).
      ENDIF.
      t155 = t156.
      IF t156 = abap_false.
        DATA(t185) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
        t155 = xsdbool( t120 = t185 ).
      ENDIF.
      IF t155 = abap_true.
        t118 = abap_true.
      ENDIF.
      DATA t187 TYPE REF TO zcl_lnt_position.
      DATA t190 TYPE f.
      DATA t192 TYPE f.
      t192 = strlen( t1 ).
      t190 = t42 - t192.
      DATA(t196) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t196->has = abap_true.
      t196->value = t190.
      t187 = NEW zcl_lnt_position( i_row = t48 i_col = t196 ).
      IF xsdbool( me->virtual IS BOUND ) = abap_true.
        DATA t200 TYPE REF TO zcl_lnt_position.
        t200 = me->virtual.
        DATA t202 TYPE f.
        t202 = t187->row.
        DATA t207 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t207 = t187->col.
        t187 = NEW zcl_lnt_virtual_position( i_virtual = t200 i_row = t202 i_col = t207 ).
      ENDIF.
      DATA t212 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t215) = CONV f( me->m ).
      DATA t216 TYPE f.
      DATA(t217) = CONV i( zcl_lnt_lexer_module=>mode_comment ).
      t216 = t217.
      IF xsdbool( t215 = t216 ) = abap_true.
        t212 = NEW zcl_lnt_lx_comment( i_start = t187 i_str = t1 ).
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
          DATA(t227) = CONV f( me->m ).
          DATA t228 TYPE f.
          DATA(t229) = CONV i( zcl_lnt_lexer_module=>mode_str ).
          t228 = t229.
          t221 = xsdbool( t227 = t228 ).
        ENDIF.
        IF t221 = abap_true.
          t212 = NEW zcl_lnt_string_token( i_start = t187 i_str = t1 ).
        ELSE.
          DATA(t234) = CONV f( me->m ).
          DATA t235 TYPE f.
          DATA(t236) = CONV i( zcl_lnt_lexer_module=>mode_template ).
          t235 = t236.
          IF xsdbool( t234 = t235 ) = abap_true.
            DATA(t237) = VALUE string( ).
            DATA(t238) = VALUE string( ).
            DATA(t240) = 0.
            DATA(t241) = strlen( t1 ).
            IF t240 < 0 OR t240 >= t241.
            ELSE.
              t238 = t1+t240(1).
            ENDIF.
            t237 = t238.
            DATA(t242) = VALUE string( ).
            DATA(t243) = VALUE string( ).
            DATA t245 TYPE i.
            DATA t246 TYPE i.
            t246 = strlen( t1 ).
            DATA(t249) = 1.
            t245 = t246 - t249.
            DATA(t250) = strlen( t1 ).
            IF t245 < 0 OR t245 >= t250.
            ELSE.
              t243 = t1+t245(1).
            ENDIF.
            t242 = t243.
            DATA t251 TYPE abap_bool.
            DATA t252 TYPE abap_bool.
            t252 = xsdbool( t237 = |\|| ).
            t251 = t252.
            IF t252 = abap_true.
              t251 = xsdbool( t242 = |\|| ).
            ENDIF.
            IF t251 = abap_true.
              t212 = NEW zcl_lnt_lx_string_template( i_start = t187 i_str = t1 ).
            ELSE.
              DATA(t261) = VALUE abap_bool( ).
              DATA t262 TYPE abap_bool.
              DATA t263 TYPE abap_bool.
              t263 = xsdbool( t237 = |\|| ).
              t262 = t263.
              IF t263 = abap_true.
                t262 = xsdbool( t242 = |\{| ).
              ENDIF.
              t261 = t262.
              IF t262 = abap_true.
                t261 = xsdbool( t118 = abap_true ).
              ENDIF.
              IF t261 = abap_true.
                t212 = NEW zcl_lnt_string_template_begin( i_start = t187 i_str = t1 ).
              ELSE.
                DATA(t275) = VALUE abap_bool( ).
                DATA t276 TYPE abap_bool.
                DATA t277 TYPE abap_bool.
                t277 = xsdbool( t237 = |\}| ).
                t276 = t277.
                IF t277 = abap_true.
                  t276 = xsdbool( t242 = |\|| ).
                ENDIF.
                t275 = t276.
                IF t276 = abap_true.
                  t275 = xsdbool( t50 = abap_true ).
                ENDIF.
                IF t275 = abap_true.
                  t212 = NEW zcl_lnt_string_template_end( i_start = t187 i_str = t1 ).
                ELSE.
                  DATA(t289) = VALUE abap_bool( ).
                  DATA(t290) = VALUE abap_bool( ).
                  DATA t291 TYPE abap_bool.
                  DATA t292 TYPE abap_bool.
                  t292 = xsdbool( t237 = |\}| ).
                  t291 = t292.
                  IF t292 = abap_true.
                    t291 = xsdbool( t242 = |\{| ).
                  ENDIF.
                  t290 = t291.
                  IF t291 = abap_true.
                    t290 = xsdbool( t118 = abap_true ).
                  ENDIF.
                  t289 = t290.
                  IF t290 = abap_true.
                    t289 = xsdbool( t50 = abap_true ).
                  ENDIF.
                  IF t289 = abap_true.
                    t212 = NEW zcl_lnt_string_template_middle( i_start = t187 i_str = t1 ).
                  ELSE.
                    t212 = NEW zcl_lnt_lx_identifier( i_start = t187 i_str = t1 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t310 TYPE abap_bool.
            DATA t311 TYPE abap_bool.
            t311 = xsdbool( strlen( t1 ) > 2 ).
            t310 = t311.
            IF t311 = abap_true.
              DATA(t317) = VALUE string( ).
              DATA(t319) = 0.
              DATA(t320) = 2.
              DATA(t321) = strlen( t1 ).
              IF t319 < 0.
                t319 = t319 + t321.
                IF t319 < 0.
                  t319 = 0.
                ENDIF.
              ENDIF.
              IF t319 > t321 OR t320 <= 0.
              ELSE.
                IF t320 > t321 - t319.
                  t320 = t321 - t319.
                ENDIF.
                t317 = t1+t319(t320).
              ENDIF.
              t310 = xsdbool( t317 = |##| ).
            ENDIF.
            IF t310 = abap_true.
              t212 = NEW zcl_lnt_pragma( i_start = t187 i_str = t1 ).
            ELSE.
              IF xsdbool( strlen( t1 ) = 1 ) = abap_true.
                DATA t331 TYPE abap_bool.
                DATA t332 TYPE abap_bool.
                t332 = xsdbool( t1 = |.| ).
                t331 = t332.
                IF t332 = abap_false.
                  t331 = xsdbool( t1 = |,| ).
                ENDIF.
                IF t331 = abap_true.
                  t212 = NEW zcl_lnt_punctuation( i_start = t187 i_str = t1 ).
                ELSE.
                  IF xsdbool( t1 = |[| ) = abap_true.
                    DATA t344 TYPE abap_bool.
                    DATA t345 TYPE abap_bool.
                    t345 = xsdbool( t50 = abap_true ).
                    t344 = t345.
                    IF t345 = abap_true.
                      t344 = xsdbool( t118 = abap_true ).
                    ENDIF.
                    IF t344 = abap_true.
                      t212 = NEW zcl_lnt_w_bracket_left_w( i_start = t187 i_str = t1 ).
                    ELSE.
                      IF xsdbool( t50 = abap_true ) = abap_true.
                        t212 = NEW zcl_lnt_w_bracket_left( i_start = t187 i_str = t1 ).
                      ELSE.
                        IF xsdbool( t118 = abap_true ) = abap_true.
                          t212 = NEW zcl_lnt_bracket_left_w( i_start = t187 i_str = t1 ).
                        ELSE.
                          t212 = NEW zcl_lnt_bracket_left( i_start = t187 i_str = t1 ).
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    IF xsdbool( t1 = |(| ) = abap_true.
                      DATA t372 TYPE abap_bool.
                      DATA t373 TYPE abap_bool.
                      t373 = xsdbool( t50 = abap_true ).
                      t372 = t373.
                      IF t373 = abap_true.
                        t372 = xsdbool( t118 = abap_true ).
                      ENDIF.
                      IF t372 = abap_true.
                        t212 = NEW zcl_lnt_w_paren_left_w( i_start = t187 i_str = t1 ).
                      ELSE.
                        IF xsdbool( t50 = abap_true ) = abap_true.
                          t212 = NEW zcl_lnt_w_paren_left( i_start = t187 i_str = t1 ).
                        ELSE.
                          IF xsdbool( t118 = abap_true ) = abap_true.
                            t212 = NEW zcl_lnt_paren_left_w( i_start = t187 i_str = t1 ).
                          ELSE.
                            t212 = NEW zcl_lnt_paren_left( i_start = t187 i_str = t1 ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ELSE.
                      IF xsdbool( t1 = |]| ) = abap_true.
                        DATA t400 TYPE abap_bool.
                        DATA t401 TYPE abap_bool.
                        t401 = xsdbool( t50 = abap_true ).
                        t400 = t401.
                        IF t401 = abap_true.
                          t400 = xsdbool( t118 = abap_true ).
                        ENDIF.
                        IF t400 = abap_true.
                          t212 = NEW zcl_lnt_w_bracket_right_w( i_start = t187 i_str = t1 ).
                        ELSE.
                          IF xsdbool( t50 = abap_true ) = abap_true.
                            t212 = NEW zcl_lnt_w_bracket_right( i_start = t187 i_str = t1 ).
                          ELSE.
                            IF xsdbool( t118 = abap_true ) = abap_true.
                              t212 = NEW zcl_lnt_bracket_right_w( i_start = t187 i_str = t1 ).
                            ELSE.
                              t212 = NEW zcl_lnt_bracket_right( i_start = t187 i_str = t1 ).
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ELSE.
                        IF xsdbool( t1 = |)| ) = abap_true.
                          DATA t428 TYPE abap_bool.
                          DATA t429 TYPE abap_bool.
                          t429 = xsdbool( t50 = abap_true ).
                          t428 = t429.
                          IF t429 = abap_true.
                            t428 = xsdbool( t118 = abap_true ).
                          ENDIF.
                          IF t428 = abap_true.
                            t212 = NEW zcl_lnt_w_paren_right_w( i_start = t187 i_str = t1 ).
                          ELSE.
                            IF xsdbool( t50 = abap_true ) = abap_true.
                              t212 = NEW zcl_lnt_w_paren_right( i_start = t187 i_str = t1 ).
                            ELSE.
                              IF xsdbool( t118 = abap_true ) = abap_true.
                                t212 = NEW zcl_lnt_paren_right_w( i_start = t187 i_str = t1 ).
                              ELSE.
                                t212 = NEW zcl_lnt_paren_right( i_start = t187 i_str = t1 ).
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ELSE.
                          IF xsdbool( t1 = |-| ) = abap_true.
                            DATA t456 TYPE abap_bool.
                            DATA t457 TYPE abap_bool.
                            t457 = xsdbool( t50 = abap_true ).
                            t456 = t457.
                            IF t457 = abap_true.
                              t456 = xsdbool( t118 = abap_true ).
                            ENDIF.
                            IF t456 = abap_true.
                              t212 = NEW zcl_lnt_w_dash_w( i_start = t187 i_str = t1 ).
                            ELSE.
                              IF xsdbool( t50 = abap_true ) = abap_true.
                                t212 = NEW zcl_lnt_w_dash( i_start = t187 i_str = t1 ).
                              ELSE.
                                IF xsdbool( t118 = abap_true ) = abap_true.
                                  t212 = NEW zcl_lnt_dash_w( i_start = t187 i_str = t1 ).
                                ELSE.
                                  t212 = NEW zcl_lnt_dash( i_start = t187 i_str = t1 ).
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ELSE.
                            IF xsdbool( t1 = |+| ) = abap_true.
                              DATA t484 TYPE abap_bool.
                              DATA t485 TYPE abap_bool.
                              t485 = xsdbool( t50 = abap_true ).
                              t484 = t485.
                              IF t485 = abap_true.
                                t484 = xsdbool( t118 = abap_true ).
                              ENDIF.
                              IF t484 = abap_true.
                                t212 = NEW zcl_lnt_w_plus_w( i_start = t187 i_str = t1 ).
                              ELSE.
                                IF xsdbool( t50 = abap_true ) = abap_true.
                                  t212 = NEW zcl_lnt_w_plus( i_start = t187 i_str = t1 ).
                                ELSE.
                                  IF xsdbool( t118 = abap_true ) = abap_true.
                                    t212 = NEW zcl_lnt_plus_w( i_start = t187 i_str = t1 ).
                                  ELSE.
                                    t212 = NEW zcl_lnt_lx_plus( i_start = t187 i_str = t1 ).
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ELSE.
                              IF xsdbool( t1 = |@| ) = abap_true.
                                DATA t512 TYPE abap_bool.
                                DATA t513 TYPE abap_bool.
                                t513 = xsdbool( t50 = abap_true ).
                                t512 = t513.
                                IF t513 = abap_true.
                                  t512 = xsdbool( t118 = abap_true ).
                                ENDIF.
                                IF t512 = abap_true.
                                  t212 = NEW zcl_lnt_w_at_w( i_start = t187 i_str = t1 ).
                                ELSE.
                                  IF xsdbool( t50 = abap_true ) = abap_true.
                                    t212 = NEW zcl_lnt_w_at( i_start = t187 i_str = t1 ).
                                  ELSE.
                                    IF xsdbool( t118 = abap_true ) = abap_true.
                                      t212 = NEW zcl_lnt_at_w( i_start = t187 i_str = t1 ).
                                    ELSE.
                                      t212 = NEW zcl_lnt_lx_at( i_start = t187 i_str = t1 ).
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
                IF xsdbool( strlen( t1 ) = 2 ) = abap_true.
                  IF xsdbool( t1 = |->| ) = abap_true.
                    DATA t545 TYPE abap_bool.
                    DATA t546 TYPE abap_bool.
                    t546 = xsdbool( t50 = abap_true ).
                    t545 = t546.
                    IF t546 = abap_true.
                      t545 = xsdbool( t118 = abap_true ).
                    ENDIF.
                    IF t545 = abap_true.
                      t212 = NEW zcl_lnt_w_instance_arrow_w( i_start = t187 i_str = t1 ).
                    ELSE.
                      IF xsdbool( t50 = abap_true ) = abap_true.
                        t212 = NEW zcl_lnt_w_instance_arrow( i_start = t187 i_str = t1 ).
                      ELSE.
                        IF xsdbool( t118 = abap_true ) = abap_true.
                          t212 = NEW zcl_lnt_instance_arrow_w( i_start = t187 i_str = t1 ).
                        ELSE.
                          t212 = NEW zcl_lnt_instance_arrow( i_start = t187 i_str = t1 ).
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    IF xsdbool( t1 = |=>| ) = abap_true.
                      DATA t573 TYPE abap_bool.
                      DATA t574 TYPE abap_bool.
                      t574 = xsdbool( t50 = abap_true ).
                      t573 = t574.
                      IF t574 = abap_true.
                        t573 = xsdbool( t118 = abap_true ).
                      ENDIF.
                      IF t573 = abap_true.
                        t212 = NEW zcl_lnt_w_static_arrow_w( i_start = t187 i_str = t1 ).
                      ELSE.
                        IF xsdbool( t50 = abap_true ) = abap_true.
                          t212 = NEW zcl_lnt_w_static_arrow( i_start = t187 i_str = t1 ).
                        ELSE.
                          IF xsdbool( t118 = abap_true ) = abap_true.
                            t212 = NEW zcl_lnt_static_arrow_w( i_start = t187 i_str = t1 ).
                          ELSE.
                            t212 = NEW zcl_lnt_static_arrow( i_start = t187 i_str = t1 ).
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
      DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t600 = xsdbool( t212 IS INITIAL ).
      t599 = t600.
      IF t600 = abap_true.
        DATA(t608) = CONV f( me->m ).
        DATA t609 TYPE f.
        DATA(t610) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
        t609 = t610.
        t599 = xsdbool( t608 = t609 ).
      ENDIF.
      t598 = t599.
      IF t599 = abap_true.
        DATA(t612) = VALUE string( ).
        DATA(t614) = 0.
        DATA(t615) = strlen( t1 ).
        IF t614 < 0 OR t614 >= t615.
        ELSE.
          t612 = t1+t614(1).
        ENDIF.
        t598 = xsdbool( t612 = `\` ).
      ENDIF.
      IF t598 = abap_true.
        DATA(t618) = VALUE i( ).
        DATA(t620) = VALUE i( ).
        DATA t622 TYPE REF TO zcl_lnt_lexer_stream.
        t622 = me->stream.
        DATA t625 TYPE int8.
        DATA t627 TYPE int8.
        t627 = t622->offset.
        DATA(t630) = CONV int8( 1 ).
        t625 = t627 + t630.
        DATA(t631) = VALUE f( ).
        DATA t634 TYPE int8.
        t634 = strlen( t622->raw ).
        IF xsdbool( t625 >= t634 ) = abap_true.
          DATA t639 TYPE f.
          DATA(t640) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t639 = t640.
          t631 = t639.
        ELSE.
          DATA(t641) = VALUE f( ).
          DATA(t642) = VALUE i( ).
          DATA t643 TYPE string.
          t643 = t622->raw.
          DATA t645 TYPE i.
          t645 = t625.
          DATA(t647) = strlen( t643 ).
          IF t645 < 0 OR t645 >= t647.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t648) = CONV string( t643+t645(1) ).
          DATA t649 TYPE c LENGTH 1.
          DATA(t650) = VALUE xstring( ).
          DATA t651 TYPE x LENGTH 1.
          DATA t652 TYPE x LENGTH 1.
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
        t620 = t631.
        DATA(t654) = CONV i( zcl_lnt_lexer_module=>eof ).
        IF xsdbool( t620 = t654 ) = abap_true.
          t618 = 1.
        ELSE.
          t618 = 0.
        ENDIF.
        DATA t658 TYPE int8.
        DATA t659 TYPE int8.
        DATA t660 TYPE i.
        DATA t661 TYPE i.
        DATA t665 TYPE f.
        t665 = me->stream->offset.
        t661 = t665.
        DATA t668 TYPE i.
        t668 = strlen( t1 ).
        t660 = t661 - t668.
        t659 = t660.
        DATA t671 TYPE int8.
        t671 = t618.
        t658 = t659 - t671.
        DATA(t673) = VALUE i( ).
        DATA(t674) = VALUE i( ).
        DATA t676 TYPE REF TO zcl_lnt_lexer_stream.
        t676 = me->stream.
        DATA t678 TYPE f.
        DATA t679 TYPE f.
        t679 = t658.
        t678 = t679.
        DATA(t681) = VALUE f( ).
        DATA t682 TYPE abap_bool.
        DATA t683 TYPE abap_bool.
        t683 = xsdbool( t678 < CONV f( 0 ) ).
        t682 = t683.
        IF t683 = abap_false.
          DATA t688 TYPE f.
          t688 = strlen( t676->raw ).
          t682 = xsdbool( t678 >= t688 ).
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
          t697 = t676->raw.
          DATA(t699) = VALUE i( ).
          IF t678 > range_i32_upper.
            t699 = range_i32_upper.
          ELSEIF t678 < range_i32_lower.
            t699 = range_i32_lower.
          ELSE.
            t699 = trunc( t678 ).
          ENDIF.
          DATA(t701) = strlen( t697 ).
          IF t699 < 0 OR t699 >= t701.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t702) = CONV string( t697+t699(1) ).
          DATA t703 TYPE c LENGTH 1.
          DATA(t704) = VALUE xstring( ).
          DATA t705 TYPE x LENGTH 1.
          DATA t706 TYPE x LENGTH 1.
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
        t674 = t681.
        t673 = t674.
        DATA(t709) = VALUE abap_bool( ).
        DATA(t710) = VALUE abap_bool( ).
        DATA t711 TYPE abap_bool.
        DATA t712 TYPE abap_bool.
        DATA(t714) = CONV i( zcl_lnt_lexer_module=>ch_space ).
        t712 = xsdbool( t673 = t714 ).
        t711 = t712.
        IF t712 = abap_false.
          DATA(t717) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
          t711 = xsdbool( t673 = t717 ).
        ENDIF.
        t710 = t711.
        IF t711 = abap_false.
          DATA(t720) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
          t710 = xsdbool( t673 = t720 ).
        ENDIF.
        t709 = t710.
        IF t710 = abap_false.
          DATA(t723) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
          t709 = xsdbool( t673 = t723 ).
        ENDIF.
        IF xsdbool( t709 = abap_false ) = abap_true.
          t212 = NEW zcl_lnt_association_name( i_start = t187 i_str = t1 ).
        ENDIF.
      ENDIF.
      DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t212 IS INITIAL ) = abap_true.
        t212 = NEW zcl_lnt_lx_identifier( i_start = t187 i_str = t1 ).
      ENDIF.
      DATA(t739) = me->tokens.
      DATA t740 TYPE REF TO zcl_lnt_abstract_token.
      t740 = t212.
      t739->load( ).
      APPEND t740 TO t739->items.
      t739->save( ).
    ENDIF.
    DATA t742 TYPE REF TO zcl_lnt_lexer_buffer.
    t742 = me->buffer.
    t742->start = 0.
    DELETE t742->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    t742->end = 0.
    DELETE t742->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    t742->empty_a4a6 = abap_true.
    DELETE t742->zlnt_record_delet_0597644d88b4 WHERE table_line = `empty`.
  ENDMETHOD.

  METHOD process.
    CONSTANTS range_check_hi_zik0zi TYPE f VALUE '2147483646'.
    CONSTANTS range_check_lo_nzik0zk TYPE f VALUE '-2147483648'.
    DATA(t1) = i_raw.
    DATA t2 TYPE REF TO zcl_lnt_lexer_stream.
    DATA t4 TYPE string.
    DATA(t6) = |\r|.
    DATA(t7) = ||.
    DATA(t8) = strlen( t1 ).
    t4 = t1.
    REPLACE ALL OCCURRENCES OF t6 IN t4 WITH t7.
    t2 = NEW zcl_lnt_lexer_stream( i_raw = t4 ).
    me->stream = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stream`.
    DATA t11 TYPE string.
    t11 = t2->raw.
    me->buffer = NEW zcl_lnt_lexer_buffer( i_raw = t11 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `buffer`.
    DO.
      DATA(t17) = VALUE i( ).
      DATA(t18) = VALUE i( ).
      DATA t20 TYPE REF TO zcl_lnt_lexer_stream.
      t20 = t2.
      DATA(t22) = VALUE f( ).
      IF xsdbool( t20->offset < 0 ) = abap_true.
        DATA t27 TYPE f.
        DATA(t28) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
        t27 = t28.
        t22 = t27.
      ELSE.
        DATA(t29) = VALUE f( ).
        IF xsdbool( t20->offset >= strlen( t20->raw ) ) = abap_true.
          DATA t37 TYPE f.
          DATA(t38) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t37 = t38.
          t29 = t37.
        ELSE.
          DATA(t39) = VALUE f( ).
          DATA(t40) = VALUE i( ).
          DATA t41 TYPE string.
          t41 = t20->raw.
          DATA t43 TYPE i.
          t43 = t20->offset.
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
      t18 = t22.
      t17 = t18.
      DATA t52 TYPE REF TO zcl_lnt_lexer_buffer.
      t52 = me->buffer.
      DATA t54 TYPE f.
      DATA t55 TYPE f.
      DATA t56 TYPE i.
      DATA t60 TYPE f.
      t60 = t2->offset.
      t56 = t60.
      t55 = t56.
      t54 = t55.
      DATA(t63) = VALUE i( ).
      DATA(t64) = VALUE i( ).
      IF t54 <> trunc( t54 ) OR t54 < range_check_lo_nzik0zk OR t54 > range_check_hi_zik0zi.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t64 = t54.
      t63 = t64.
      IF xsdbool( t52->empty_a4a6 = abap_true ) = abap_true.
        DATA(t71) = VALUE i( ).
        IF xsdbool( t63 < 0 ) = abap_true.
          t71 = 0.
        ELSE.
          t71 = t63.
        ENDIF.
        t52->start = t71.
        DELETE t52->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
        t52->empty_a4a6 = abap_false.
        DELETE t52->zlnt_record_delet_0597644d88b4 WHERE table_line = `empty`.
      ENDIF.
      DATA(t82) = 1.
      t52->end = t63 + t82.
      DELETE t52->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
      DATA(t83) = VALUE i( ).
      DATA(t84) = VALUE i( ).
      DATA t86 TYPE REF TO zcl_lnt_lexer_stream.
      t86 = t2.
      DATA t89 TYPE int8.
      DATA t91 TYPE int8.
      t91 = t86->offset.
      DATA(t94) = CONV int8( 1 ).
      t89 = t91 + t94.
      DATA(t95) = VALUE f( ).
      DATA t98 TYPE int8.
      t98 = strlen( t86->raw ).
      IF xsdbool( t89 >= t98 ) = abap_true.
        DATA t103 TYPE f.
        DATA(t104) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t103 = t104.
        t95 = t103.
      ELSE.
        DATA(t105) = VALUE f( ).
        DATA(t106) = VALUE i( ).
        DATA t107 TYPE string.
        t107 = t86->raw.
        DATA t109 TYPE i.
        t109 = t89.
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
      t84 = t95.
      t83 = t84.
      DATA(t118) = VALUE i( ).
      DATA(t119) = VALUE i( ).
      DATA t121 TYPE REF TO zcl_lnt_lexer_stream.
      t121 = t2.
      DATA t124 TYPE int8.
      DATA t126 TYPE int8.
      t126 = t121->offset.
      DATA(t129) = CONV int8( 2 ).
      t124 = t126 + t129.
      DATA(t130) = VALUE f( ).
      DATA t133 TYPE int8.
      t133 = strlen( t121->raw ).
      IF xsdbool( t124 >= t133 ) = abap_true.
        DATA t138 TYPE f.
        DATA(t139) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t138 = t139.
        t130 = t138.
      ELSE.
        DATA(t140) = VALUE f( ).
        DATA(t141) = VALUE i( ).
        DATA t142 TYPE string.
        t142 = t121->raw.
        DATA t144 TYPE i.
        t144 = t124.
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
      t119 = t130.
      t118 = t119.
      DATA(t154) = CONV f( me->m ).
      DATA t155 TYPE f.
      DATA(t156) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
      t155 = t156.
      IF xsdbool( t154 = t155 ) = abap_true.
        DATA t158 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
        CLEAR t158.
        IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
          zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
        ENDIF.
        t158 = zcl_lnt_lexer_module=>splits.
        DATA t159 TYPE f.
        t159 = t83.
        IF t158->has( p0 = t159 ) = abap_true.
          me->add_51c1( ).
        ELSE.
          DATA(t163) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
          IF xsdbool( t83 = t163 ) = abap_true.
            me->add_51c1( ).
            DATA t164 TYPE f.
            DATA(t165) = CONV i( zcl_lnt_lexer_module=>mode_str ).
            t164 = t165.
            me->m = t164.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
          ELSE.
            DATA t166 TYPE abap_bool.
            DATA t167 TYPE abap_bool.
            DATA(t169) = CONV i( zcl_lnt_lexer_module=>ch_pipe ).
            t167 = xsdbool( t83 = t169 ).
            t166 = t167.
            IF t167 = abap_false.
              DATA(t172) = CONV i( zcl_lnt_lexer_module=>ch_rbrace ).
              t166 = xsdbool( t83 = t172 ).
            ENDIF.
            IF t166 = abap_true.
              me->add_51c1( ).
              DATA t173 TYPE f.
              DATA(t174) = CONV i( zcl_lnt_lexer_module=>mode_template ).
              t173 = t174.
              me->m = t173.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
            ELSE.
              DATA(t177) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
              IF xsdbool( t83 = t177 ) = abap_true.
                me->add_51c1( ).
                DATA t178 TYPE f.
                DATA(t179) = CONV i( zcl_lnt_lexer_module=>mode_ping ).
                t178 = t179.
                me->m = t178.
                DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
              ELSE.
                DATA t180 TYPE abap_bool.
                DATA t181 TYPE abap_bool.
                DATA(t183) = CONV i( zcl_lnt_lexer_module=>ch_hash ).
                t181 = xsdbool( t83 = t183 ).
                t180 = t181.
                IF t181 = abap_true.
                  DATA(t186) = CONV i( zcl_lnt_lexer_module=>ch_hash ).
                  t180 = xsdbool( t118 = t186 ).
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
                  DATA(t192) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
                  t190 = xsdbool( t83 = t192 ).
                  t189 = t190.
                  IF t190 = abap_false.
                    DATA t193 TYPE abap_bool.
                    DATA t194 TYPE abap_bool.
                    DATA(t196) = CONV i( zcl_lnt_lexer_module=>ch_star ).
                    t194 = xsdbool( t83 = t196 ).
                    t193 = t194.
                    IF t194 = abap_true.
                      DATA(t199) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                      t193 = xsdbool( t17 = t199 ).
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
                    DATA(t205) = CONV i( zcl_lnt_lexer_module=>ch_at ).
                    t203 = xsdbool( t83 = t205 ).
                    t202 = t203.
                    IF t203 = abap_true.
                      DATA(t208) = VALUE string( ).
                      DATA(t209) = VALUE string( ).
                      DATA t210 TYPE REF TO zcl_lnt_lexer_buffer.
                      t210 = me->buffer.
                      DATA(t212) = VALUE string( ).
                      DATA t213 TYPE string.
                      t213 = t210->raw.
                      DATA t215 TYPE i.
                      t215 = t210->start.
                      DATA t217 TYPE i.
                      t217 = t210->end.
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
                      t202 = xsdbool( strlen( t208 ) = 0 ).
                    ENDIF.
                    IF t202 = abap_true.
                      me->add_51c1( ).
                    ELSE.
                      DATA(t241) = VALUE abap_bool( ).
                      DATA t242 TYPE abap_bool.
                      DATA t243 TYPE abap_bool.
                      DATA(t245) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                      t243 = xsdbool( t83 = t245 ).
                      t242 = t243.
                      IF t243 = abap_false.
                        DATA(t248) = CONV i( zcl_lnt_lexer_module=>ch_equals ).
                        t242 = xsdbool( t83 = t248 ).
                      ENDIF.
                      t241 = t242.
                      IF t242 = abap_true.
                        DATA(t251) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                        t241 = xsdbool( t118 = t251 ).
                      ENDIF.
                      IF t241 = abap_true.
                        me->add_51c1( ).
                      ELSE.
                        DATA(t252) = VALUE abap_bool( ).
                        DATA t253 TYPE abap_bool.
                        DATA t254 TYPE abap_bool.
                        DATA(t256) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                        t254 = xsdbool( t17 = t256 ).
                        t253 = t254.
                        IF t254 = abap_true.
                          DATA(t259) = CONV i( zcl_lnt_lexer_module=>ch_space ).
                          t253 = xsdbool( t83 <> t259 ).
                        ENDIF.
                        t252 = t253.
                        IF t253 = abap_true.
                          DATA(t260) = VALUE abap_bool( ).
                          DATA(t261) = VALUE abap_bool( ).
                          DATA(t262) = VALUE i( ).
                          DATA t264 TYPE REF TO zcl_lnt_lexer_stream.
                          t264 = t2.
                          DATA t267 TYPE i.
                          DATA t269 TYPE i.
                          t269 = t264->offset.
                          DATA(t271) = 1.
                          t267 = t269 - t271.
                          DATA(t272) = VALUE f( ).
                          IF xsdbool( t267 < 0 ) = abap_true.
                            DATA t276 TYPE f.
                            DATA(t277) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                            t276 = t277.
                            t272 = t276.
                          ELSE.
                            DATA(t278) = VALUE f( ).
                            DATA(t279) = VALUE i( ).
                            DATA t280 TYPE string.
                            t280 = t264->raw.
                            DATA(t283) = strlen( t280 ).
                            IF t267 < 0 OR t267 >= t283.
                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                            ENDIF.
                            DATA(t284) = CONV string( t280+t267(1) ).
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
                          t262 = t272.
                          DATA(t290) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                          t261 = xsdbool( t262 = t290 ).
                          t260 = t261.
                          IF t261 = abap_false.
                            DATA(t292) = VALUE i( ).
                            DATA t294 TYPE REF TO zcl_lnt_lexer_stream.
                            t294 = t2.
                            DATA t297 TYPE i.
                            DATA t299 TYPE i.
                            t299 = t294->offset.
                            DATA(t301) = 1.
                            t297 = t299 - t301.
                            DATA(t302) = VALUE f( ).
                            IF xsdbool( t297 < 0 ) = abap_true.
                              DATA t306 TYPE f.
                              DATA(t307) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                              t306 = t307.
                              t302 = t306.
                            ELSE.
                              DATA(t308) = VALUE f( ).
                              DATA(t309) = VALUE i( ).
                              DATA t310 TYPE string.
                              t310 = t294->raw.
                              DATA(t313) = strlen( t310 ).
                              IF t297 < 0 OR t297 >= t313.
                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                              ENDIF.
                              DATA(t314) = CONV string( t310+t297(1) ).
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
                            t292 = t302.
                            DATA(t320) = CONV i( zcl_lnt_lexer_module=>ch_equals ).
                            t260 = xsdbool( t292 = t320 ).
                          ENDIF.
                          t252 = t260.
                        ENDIF.
                        IF t252 = abap_true.
                          me->add_51c1( ).
                        ELSE.
                          DATA t321 TYPE abap_bool.
                          DATA t322 TYPE abap_bool.
                          DATA t323 TYPE int8.
                          DATA t325 TYPE REF TO zcl_lnt_lexer_buffer.
                          t325 = me->buffer.
                          DATA t327 TYPE f.
                          DATA t328 TYPE int8.
                          DATA t329 TYPE int8.
                          t329 = t325->end.
                          DATA t332 TYPE int8.
                          t332 = t325->start.
                          t328 = t329 - t332.
                          t327 = t328.
                          t323 = t327.
                          t322 = xsdbool( t323 = CONV int8( 1 ) ).
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
                            t339 = t17.
                            t337 = t338->has( p0 = t339 ).
                            t336 = t337.
                            IF t337 = abap_false.
                              DATA t341 TYPE abap_bool.
                              DATA t342 TYPE abap_bool.
                              DATA(t344) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
                              t342 = xsdbool( t17 = t344 ).
                              t341 = t342.
                              IF t342 = abap_true.
                                DATA(t347) = CONV i( zcl_lnt_lexer_module=>ch_gt ).
                                t341 = xsdbool( t83 <> t347 ).
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
          DATA(t359) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
          t357 = xsdbool( t83 = t359 ).
          t356 = t357.
          IF t357 = abap_false.
            DATA(t362) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
            t356 = xsdbool( t83 = t362 ).
          ENDIF.
          t355 = t356.
          IF t356 = abap_false.
            DATA(t365) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
            t355 = xsdbool( t83 = t365 ).
          ENDIF.
          t354 = t355.
          IF t355 = abap_false.
            DATA(t368) = CONV i( zcl_lnt_lexer_module=>ch_space ).
            t354 = xsdbool( t83 = t368 ).
          ENDIF.
          t353 = t354.
          IF t354 = abap_false.
            DATA(t371) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
            t353 = xsdbool( t83 = t371 ).
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
            DATA t384 TYPE int8.
            DATA t386 TYPE REF TO zcl_lnt_lexer_buffer.
            t386 = me->buffer.
            DATA t388 TYPE f.
            DATA t389 TYPE int8.
            DATA t390 TYPE int8.
            t390 = t386->end.
            DATA t393 TYPE int8.
            t393 = t386->start.
            t389 = t390 - t393.
            t388 = t389.
            t384 = t388.
            t378 = xsdbool( t384 > CONV int8( 1 ) ).
          ENDIF.
          t377 = t378.
          IF t378 = abap_true.
            DATA(t399) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t377 = xsdbool( t17 = t399 ).
          ENDIF.
          t376 = t377.
          IF t377 = abap_true.
            DATA t401 TYPE abap_bool.
            DATA t402 TYPE abap_bool.
            DATA(t404) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t402 = xsdbool( t83 = t404 ).
            t401 = t402.
            IF t402 = abap_true.
              DATA(t407) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
              t401 = xsdbool( t118 = t407 ).
            ENDIF.
            t376 = xsdbool( t401 = abap_false ).
          ENDIF.
          t375 = t376.
          IF t376 = abap_true.
            DATA(t410) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t375 = xsdbool( t83 <> t410 ).
          ENDIF.
          t374 = t375.
          IF t375 = abap_true.
            DATA t413 TYPE f.
            DATA(t414) = CONV i( zcl_lnt_lexer_module=>ch_backtick ).
            t413 = t414.
            t374 = me->buffer->count_is_even( i_char = t413 ).
          ENDIF.
          IF t374 = abap_true.
            DATA t416 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
            CLEAR t416.
            IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
              zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
            ENDIF.
            t416 = zcl_lnt_lexer_module=>after_literal.
            DATA t417 TYPE f.
            t417 = t83.
            IF t416->has( p0 = t417 ) = abap_true.
              me->add_51c1( ).
            ENDIF.
            DATA(t421) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
            IF xsdbool( t83 = t421 ) = abap_true.
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
              DATA t434 TYPE int8.
              DATA t436 TYPE REF TO zcl_lnt_lexer_buffer.
              t436 = me->buffer.
              DATA t438 TYPE f.
              DATA t439 TYPE int8.
              DATA t440 TYPE int8.
              t440 = t436->end.
              DATA t443 TYPE int8.
              t443 = t436->start.
              t439 = t440 - t443.
              t438 = t439.
              t434 = t438.
              t428 = xsdbool( t434 > CONV int8( 1 ) ).
            ENDIF.
            t427 = t428.
            IF t428 = abap_true.
              DATA t447 TYPE abap_bool.
              DATA t448 TYPE abap_bool.
              DATA(t450) = CONV i( zcl_lnt_lexer_module=>ch_pipe ).
              t448 = xsdbool( t17 = t450 ).
              t447 = t448.
              IF t448 = abap_false.
                DATA(t453) = CONV i( zcl_lnt_lexer_module=>ch_lbrace ).
                t447 = xsdbool( t17 = t453 ).
              ENDIF.
              t427 = t447.
            ENDIF.
            t426 = t427.
            IF t427 = abap_true.
              DATA(t454) = VALUE abap_bool( ).
              DATA(t455) = VALUE abap_bool( ).
              DATA(t456) = VALUE i( ).
              DATA t458 TYPE REF TO zcl_lnt_lexer_stream.
              t458 = t2.
              DATA t461 TYPE i.
              DATA t463 TYPE i.
              t463 = t458->offset.
              DATA(t465) = 1.
              t461 = t463 - t465.
              DATA(t466) = VALUE f( ).
              IF xsdbool( t461 < 0 ) = abap_true.
                DATA t470 TYPE f.
                DATA(t471) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                t470 = t471.
                t466 = t470.
              ELSE.
                DATA(t472) = VALUE f( ).
                DATA(t473) = VALUE i( ).
                DATA t474 TYPE string.
                t474 = t458->raw.
                DATA(t477) = strlen( t474 ).
                IF t461 < 0 OR t461 >= t477.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                DATA(t478) = CONV string( t474+t461(1) ).
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
              t456 = t466.
              DATA(t484) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
              t455 = xsdbool( t456 <> t484 ).
              t454 = t455.
              IF t455 = abap_false.
                DATA(t485) = VALUE abap_bool( ).
                DATA(t486) = VALUE abap_bool( ).
                DATA(t487) = VALUE i( ).
                DATA t489 TYPE REF TO zcl_lnt_lexer_stream.
                t489 = t2.
                DATA t492 TYPE i.
                DATA t494 TYPE i.
                t494 = t489->offset.
                DATA(t496) = 2.
                t492 = t494 - t496.
                DATA(t497) = VALUE f( ).
                IF xsdbool( t492 < 0 ) = abap_true.
                  DATA t501 TYPE f.
                  DATA(t502) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                  t501 = t502.
                  t497 = t501.
                ELSE.
                  DATA(t503) = VALUE f( ).
                  DATA(t504) = VALUE i( ).
                  DATA t505 TYPE string.
                  t505 = t489->raw.
                  DATA(t508) = strlen( t505 ).
                  IF t492 < 0 OR t492 >= t508.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  DATA(t509) = CONV string( t505+t492(1) ).
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
                t487 = t497.
                DATA(t515) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                t486 = xsdbool( t487 = t515 ).
                t485 = t486.
                IF t486 = abap_true.
                  DATA(t517) = VALUE i( ).
                  DATA t519 TYPE REF TO zcl_lnt_lexer_stream.
                  t519 = t2.
                  DATA t522 TYPE i.
                  DATA t524 TYPE i.
                  t524 = t519->offset.
                  DATA(t526) = 1.
                  t522 = t524 - t526.
                  DATA(t527) = VALUE f( ).
                  IF xsdbool( t522 < 0 ) = abap_true.
                    DATA t531 TYPE f.
                    DATA(t532) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
                    t531 = t532.
                    t527 = t531.
                  ELSE.
                    DATA(t533) = VALUE f( ).
                    DATA(t534) = VALUE i( ).
                    DATA t535 TYPE string.
                    t535 = t519->raw.
                    DATA(t538) = strlen( t535 ).
                    IF t522 < 0 OR t522 >= t538.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    DATA(t539) = CONV string( t535+t522(1) ).
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
                  t517 = t527.
                  DATA(t545) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                  t485 = xsdbool( t517 = t545 ).
                ENDIF.
                t454 = t485.
              ENDIF.
              t426 = t454.
            ENDIF.
            IF t426 = abap_true.
              DATA t546 TYPE abap_bool.
              DATA t547 TYPE abap_bool.
              DATA(t549) = CONV i( zcl_lnt_lexer_module=>ch_lbrace ).
              t547 = xsdbool( t17 = t549 ).
              t546 = t547.
              IF t547 = abap_false.
                DATA t551 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
                CLEAR t551.
                IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
                  zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
                ENDIF.
                t551 = zcl_lnt_lexer_module=>after_literal.
                DATA t552 TYPE f.
                t552 = t83.
                t546 = t551->has( p0 = t552 ).
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
                DATA(t564) = CONV i( zcl_lnt_lexer_module=>ch_rbrace ).
                t557 = xsdbool( t83 = t564 ).
              ENDIF.
              t556 = t557.
              IF t557 = abap_true.
                DATA(t567) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
                t556 = xsdbool( t17 <> t567 ).
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
                  DATA(t579) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t572 = xsdbool( t17 = t579 ).
                ENDIF.
                t571 = t572.
                IF t572 = abap_true.
                  DATA t581 TYPE int8.
                  DATA t583 TYPE REF TO zcl_lnt_lexer_buffer.
                  t583 = me->buffer.
                  DATA t585 TYPE f.
                  DATA t586 TYPE int8.
                  DATA t587 TYPE int8.
                  t587 = t583->end.
                  DATA t590 TYPE int8.
                  t590 = t583->start.
                  t586 = t587 - t590.
                  t585 = t586.
                  t581 = t585.
                  t571 = xsdbool( t581 > CONV int8( 1 ) ).
                ENDIF.
                t570 = t571.
                IF t571 = abap_true.
                  DATA t595 TYPE abap_bool.
                  DATA t596 TYPE abap_bool.
                  DATA(t598) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t596 = xsdbool( t83 = t598 ).
                  t595 = t596.
                  IF t596 = abap_true.
                    DATA(t601) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                    t595 = xsdbool( t118 = t601 ).
                  ENDIF.
                  t570 = xsdbool( t595 = abap_false ).
                ENDIF.
                t569 = t570.
                IF t570 = abap_true.
                  DATA(t604) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t569 = xsdbool( t83 <> t604 ).
                ENDIF.
                t568 = t569.
                IF t569 = abap_true.
                  DATA t607 TYPE f.
                  DATA(t608) = CONV i( zcl_lnt_lexer_module=>ch_quote ).
                  t607 = t608.
                  t568 = me->buffer->count_is_even( i_char = t607 ).
                ENDIF.
                IF t568 = abap_true.
                  DATA t610 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
                  CLEAR t610.
                  IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
                    zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
                  ENDIF.
                  t610 = zcl_lnt_lexer_module=>after_literal.
                  DATA t611 TYPE f.
                  t611 = t83.
                  IF t610->has( p0 = t611 ) = abap_true.
                    me->add_51c1( ).
                  ENDIF.
                  DATA(t615) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
                  IF xsdbool( t83 = t615 ) = abap_true.
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
                  DATA(t623) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                  t621 = xsdbool( t83 = t623 ).
                  t620 = t621.
                  IF t621 = abap_true.
                    DATA(t625) = CONV f( me->m ).
                    DATA t626 TYPE f.
                    DATA(t627) = CONV i( zcl_lnt_lexer_module=>mode_template ).
                    t626 = t627.
                    t620 = xsdbool( t625 <> t626 ).
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
                      DATA(t637) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
                      t630 = xsdbool( t17 = t637 ).
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
      DATA t640 TYPE REF TO zcl_lnt_lexer_stream.
      t640 = t2.
      DATA(t644) = VALUE i( ).
      DATA(t645) = VALUE f( ).
      IF xsdbool( t640->offset < 0 ) = abap_true.
        DATA t650 TYPE f.
        DATA(t651) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
        t650 = t651.
        t645 = t650.
      ELSE.
        DATA(t652) = VALUE f( ).
        IF xsdbool( t640->offset >= strlen( t640->raw ) ) = abap_true.
          DATA t660 TYPE f.
          DATA(t661) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
          t660 = t661.
          t652 = t660.
        ELSE.
          DATA(t662) = VALUE f( ).
          DATA(t663) = VALUE i( ).
          DATA t664 TYPE string.
          t664 = t640->raw.
          DATA t666 TYPE i.
          t666 = t640->offset.
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
      IF xsdbool( t644 = t675 ) = abap_true.
        t640->col = CONV f( 1 ).
        DELETE t640->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
        DATA t680 TYPE f.
        t680 = t640->row.
        DATA(t682) = CONV f( 1 ).
        t640->row = t680 + t682.
        DELETE t640->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
      ENDIF.
      DATA(t683) = VALUE abap_bool( ).
      IF xsdbool( t640->offset = strlen( t640->raw ) ) = abap_true.
        DATA t694 TYPE f.
        t694 = t640->col.
        DATA(t696) = CONV f( 1 ).
        t640->col = t694 - t696.
        DELETE t640->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
        t683 = abap_false.
      ELSE.
        DATA t701 TYPE f.
        t701 = t640->col.
        DATA(t703) = CONV f( 1 ).
        t640->col = t701 + t703.
        DELETE t640->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
        DATA t706 TYPE i.
        t706 = t640->offset.
        DATA(t708) = 1.
        t640->offset = t706 + t708.
        DELETE t640->zlnt_record_delet_0597644d88b4 WHERE table_line = `offset`.
        t683 = abap_true.
      ENDIF.
      IF xsdbool( t683 = abap_false ) = abap_true.
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
