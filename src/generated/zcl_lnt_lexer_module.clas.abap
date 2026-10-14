* TS: src/abap/1_lexer/lexer.ts.module module
CLASS zcl_lnt_lexer_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS mode_normal TYPE i VALUE 1.
    CONSTANTS mode_ping TYPE i VALUE 2.
    CONSTANTS mode_str TYPE i VALUE 3.
    CONSTANTS mode_template TYPE i VALUE 4.
    CONSTANTS mode_comment TYPE i VALUE 5.
    CONSTANTS mode_pragma TYPE i VALUE 6.
    CONSTANTS eof TYPE i VALUE -1.
    CONSTANTS ch_tab TYPE i VALUE 9.
    CONSTANTS ch_nl TYPE i VALUE 10.
    CONSTANTS ch_space TYPE i VALUE 32.
    CONSTANTS ch_dquote TYPE i VALUE 34.
    CONSTANTS ch_hash TYPE i VALUE 35.
    CONSTANTS ch_quote TYPE i VALUE 39.
    CONSTANTS ch_star TYPE i VALUE 42.
    CONSTANTS ch_dash TYPE i VALUE 45.
    CONSTANTS ch_comma TYPE i VALUE 44.
    CONSTANTS ch_dot TYPE i VALUE 46.
    CONSTANTS ch_colon TYPE i VALUE 58.
    CONSTANTS ch_equals TYPE i VALUE 61.
    CONSTANTS ch_gt TYPE i VALUE 62.
    CONSTANTS ch_at TYPE i VALUE 64.
    CONSTANTS ch_backslash TYPE i VALUE 92.
    CONSTANTS ch_backtick TYPE i VALUE 96.
    CONSTANTS ch_lbrace TYPE i VALUE 123.
    CONSTANTS ch_pipe TYPE i VALUE 124.
    CONSTANTS ch_rbrace TYPE i VALUE 125.
    CLASS-DATA splits TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    CLASS-DATA bufs TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    CLASS-DATA after_literal TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    CLASS-DATA zlnt_builtin_init_109a3f357d7e TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_ff145520bf3d.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lexer_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_ff145520bf3d.
    IF zlnt_builtin_init_109a3f357d7e = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_109a3f357d7e = abap_true.
    DATA t1 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t2) = NEW zlnt_runtime_set__6ef4c9be248b( ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t4) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t5 TYPE int8.
    DATA(t6) = CONV i( zcl_lnt_lexer_module=>ch_space ).
    t5 = t6.
    t3 = t4->add( p0 = t5 ).
    DATA t7 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t8) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t9 TYPE int8.
    DATA(t10) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
    t9 = t10.
    t7 = t8->add( p0 = t9 ).
    DATA t11 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t12) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t13 TYPE int8.
    DATA(t14) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
    t13 = t14.
    t11 = t12->add( p0 = t13 ).
    DATA t15 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t16) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t17 TYPE int8.
    DATA(t18) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
    t17 = t18.
    t15 = t16->add( p0 = t17 ).
    DATA t19 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t20) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t21 TYPE int8.
    DATA(t22) = CONV i( zcl_lnt_lexer_module=>ch_dash ).
    t21 = t22.
    t19 = t20->add( p0 = t21 ).
    DATA t23 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t24) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA(t25) = CONV int8( 43 ).
    t23 = t24->add( p0 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t27) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA(t28) = CONV int8( 40 ).
    t26 = t27->add( p0 = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t30) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA(t31) = CONV int8( 41 ).
    t29 = t30->add( p0 = t31 ).
    DATA t32 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t33) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA(t34) = CONV int8( 91 ).
    t32 = t33->add( p0 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t36) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA(t37) = CONV int8( 93 ).
    t35 = t36->add( p0 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t39) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t40 TYPE int8.
    DATA(t41) = CONV i( zcl_lnt_lexer_module=>ch_backslash ).
    t40 = t41.
    t38 = t39->add( p0 = t40 ).
    DATA t42 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t43) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t44 TYPE int8.
    DATA(t45) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
    t44 = t45.
    t42 = t43->add( p0 = t44 ).
    DATA t46 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t47) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    DATA t48 TYPE int8.
    DATA(t49) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
    t48 = t49.
    t46 = t47->add( p0 = t48 ).
    IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
      zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
    ENDIF.
    DATA(t50) = CAST zlnt_runtime_set__6ef4c9be248b( t1 ).
    zcl_lnt_lexer_module=>splits = t50.
    DATA t51 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t52) = NEW zlnt_runtime_set__6ef4c9be248b( ).
    t51 = t52.
    DATA t53 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t54) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA t55 TYPE int8.
    DATA(t56) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
    t55 = t56.
    t53 = t54->add( p0 = t55 ).
    DATA t57 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t58) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA t59 TYPE int8.
    DATA(t60) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
    t59 = t60.
    t57 = t58->add( p0 = t59 ).
    DATA t61 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t62) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA t63 TYPE int8.
    DATA(t64) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
    t63 = t64.
    t61 = t62->add( p0 = t63 ).
    DATA t65 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t66) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA(t67) = CONV int8( 40 ).
    t65 = t66->add( p0 = t67 ).
    DATA t68 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t69) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA(t70) = CONV int8( 41 ).
    t68 = t69->add( p0 = t70 ).
    DATA t71 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t72) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA(t73) = CONV int8( 91 ).
    t71 = t72->add( p0 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t75) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA(t76) = CONV int8( 93 ).
    t74 = t75->add( p0 = t76 ).
    DATA t77 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t78) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA(t79) = CONV int8( 43 ).
    t77 = t78->add( p0 = t79 ).
    DATA t80 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t81) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    DATA t82 TYPE int8.
    DATA(t83) = CONV i( zcl_lnt_lexer_module=>ch_at ).
    t82 = t83.
    t80 = t81->add( p0 = t82 ).
    IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
      zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
    ENDIF.
    DATA(t84) = CAST zlnt_runtime_set__6ef4c9be248b( t51 ).
    zcl_lnt_lexer_module=>bufs = t84.
    DATA t85 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t86) = NEW zlnt_runtime_set__6ef4c9be248b( ).
    t85 = t86.
    DATA t87 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t88) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t89 TYPE int8.
    DATA(t90) = CONV i( zcl_lnt_lexer_module=>eof ).
    t89 = t90.
    t87 = t88->add( p0 = t89 ).
    DATA t91 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t92) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t93 TYPE int8.
    DATA(t94) = CONV i( zcl_lnt_lexer_module=>ch_space ).
    t93 = t94.
    t91 = t92->add( p0 = t93 ).
    DATA t95 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t96) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t97 TYPE int8.
    DATA(t98) = CONV i( zcl_lnt_lexer_module=>ch_tab ).
    t97 = t98.
    t95 = t96->add( p0 = t97 ).
    DATA t99 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t100) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t101 TYPE int8.
    DATA(t102) = CONV i( zcl_lnt_lexer_module=>ch_nl ).
    t101 = t102.
    t99 = t100->add( p0 = t101 ).
    DATA t103 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t104) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t105 TYPE int8.
    DATA(t106) = CONV i( zcl_lnt_lexer_module=>ch_dot ).
    t105 = t106.
    t103 = t104->add( p0 = t105 ).
    DATA t107 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t108) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t109 TYPE int8.
    DATA(t110) = CONV i( zcl_lnt_lexer_module=>ch_comma ).
    t109 = t110.
    t107 = t108->add( p0 = t109 ).
    DATA t111 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t112) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t113 TYPE int8.
    DATA(t114) = CONV i( zcl_lnt_lexer_module=>ch_colon ).
    t113 = t114.
    t111 = t112->add( p0 = t113 ).
    DATA t115 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t116) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA t117 TYPE int8.
    DATA(t118) = CONV i( zcl_lnt_lexer_module=>ch_dquote ).
    t117 = t118.
    t115 = t116->add( p0 = t117 ).
    DATA t119 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t120) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA(t121) = CONV int8( 40 ).
    t119 = t120->add( p0 = t121 ).
    DATA t122 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t123) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA(t124) = CONV int8( 41 ).
    t122 = t123->add( p0 = t124 ).
    DATA t125 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t126) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA(t127) = CONV int8( 91 ).
    t125 = t126->add( p0 = t127 ).
    DATA t128 TYPE REF TO zlnt_runtime_set__6ef4c9be248b.
    DATA(t129) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    DATA(t130) = CONV int8( 93 ).
    t128 = t129->add( p0 = t130 ).
    IF zcl_lnt_lexer_module=>zlnt_builtin_init_109a3f357d7e = abap_false.
      zcl_lnt_lexer_module=>zlnt_builtin_init_ff145520bf3d( ).
    ENDIF.
    DATA(t131) = CAST zlnt_runtime_set__6ef4c9be248b( t85 ).
    zcl_lnt_lexer_module=>after_literal = t131.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1842_77bba5e66d15.
  ENDMETHOD.
ENDCLASS.
