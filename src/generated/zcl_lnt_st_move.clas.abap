* TS: src/abap/2_statements/statements/move.ts:8:1 Move
CLASS zcl_lnt_st_move DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_move IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = |Cloud|.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |MOVE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t2 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t3 i_first = t4 ).
    t1 = t2.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zif_lnt_statement_runnable( t1 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t10.
      t9->oval = t11.
    ENDIF.
    t8 = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = |EXACT|.
    CREATE OBJECT t19.
    t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t19->sval = t20.
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t22->cval = t23.
    ENDIF.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t24 = t25.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |TO|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    APPEND t27 TO t26->items.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    APPEND t30 TO t29->items.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t18 ).
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t34 i_rest = t35 ).
    t17 = t32.
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t17.
      t16->oval = t36.
    ENDIF.
    t15 = t16.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |?TO|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = |TO|.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t52 = t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t56) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    t54 = zcl_lnt_st_combi_module=>alt_prio( i_first = t55 i_second = t56 i_rest = t57 ).
    t45 = t54.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t45.
      t44->oval = t58.
    ENDIF.
    t43 = t44.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    t59 = t60.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    APPEND t62 TO t61->items.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t65 i_second = t66 i_rest = t67 ).
    t39 = t64.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t39.
      t38->oval = t68.
    ENDIF.
    t37 = t38.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t71 = zcl_lnt_st_combi_module=>alt_prio( i_first = t72 i_second = t73 i_rest = t74 ).
    t14 = t71.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t75 TYPE REF TO object.
      t75 = t14.
      t13->oval = t75.
    ENDIF.
    t12 = t13.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    t76 = t77.
    DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t76 ).
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = |PERCENTAGE|.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    t83 = t84.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t89 = t90.
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = |LEFT|.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = t98.
    t96 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = |RIGHT|.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t96 ).
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t107) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
    t104 = zcl_lnt_st_combi_module=>alt( i_first = t105 i_second = t106 i_rest = t107 ).
    t95 = t104.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t108 TYPE REF TO object.
      t108 = t95.
      t94->oval = t108.
    ENDIF.
    t93 = zcl_lnt_st_combi_module=>opt( i_first = t94 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t93.
      t92->oval = t109.
    ENDIF.
    APPEND t92 TO t91->items.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t83 ).
    DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    t110 = zcl_lnt_st_combi_module=>seq( i_first = t111 i_second = t112 i_rest = t113 ).
    t82 = t110.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t114 TYPE REF TO object.
      t114 = t82.
      t81->oval = t114.
    ENDIF.
    t80 = zcl_lnt_st_combi_module=>opt( i_first = t81 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t115 TYPE REF TO object.
      t115 = t80.
      t79->oval = t115.
    ENDIF.
    APPEND t79 TO t78->items.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t76 ).
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t118 i_rest = t119 ).
    t7 = t116.
    t6 = t7.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t123.
    DATA t124 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t125.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t125 = zcl_lnt_version_module=>release_b8cd.
    DATA(t126) = |v754|.
    t124 = t125->get( p0 = t126 ).
    t123 = t124.
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t127 TYPE REF TO object.
      t127 = t123.
      t122->oval = t127.
    ENDIF.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t136) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97 ).
    t135 = zcl_lnt_st_combi_module=>tok( i_t = t136 ).
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t135.
      t134->oval = t137.
    ENDIF.
    t133 = t134.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = |=|.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = t140.
    t138 = t139.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t142.
    t141 = t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t133 ).
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t138 ).
    DATA(t146) = CAST zlnt_runtime_arra_c22708faf2e3( t141 ).
    t143 = zcl_lnt_st_combi_module=>seq( i_first = t144 i_second = t145 i_rest = t146 ).
    t132 = t143.
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t132.
      t131->oval = t147.
    ENDIF.
    t130 = t131.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t154) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d47_2a66c13abb507b ).
    t153 = zcl_lnt_st_combi_module=>tok( i_t = t154 ).
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t155 TYPE REF TO object.
      t155 = t153.
      t152->oval = t155.
    ENDIF.
    t151 = t152.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = |=|.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t151 ).
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t159 ).
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t163 i_rest = t164 ).
    t150 = t161.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t150.
      t149->oval = t165.
    ENDIF.
    t148 = t149.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    t166 = t167.
    DATA(t168) = CAST zlnt_runtime_arra_c22708faf2e3( t166 ).
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t170) = |/=|.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = t170.
    APPEND t169 TO t168->items.
    DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t166 ).
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t173) = |*=|.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = t173.
    APPEND t172 TO t171->items.
    DATA(t174) = CAST zlnt_runtime_arra_c22708faf2e3( t166 ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = |&&=|.
    CREATE OBJECT t175.
    t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t175->sval = t176.
    APPEND t175 TO t174->items.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t148 ).
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t166 ).
    t177 = zcl_lnt_st_combi_module=>alt( i_first = t178 i_second = t179 i_rest = t180 ).
    t129 = t177.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t181 TYPE REF TO object.
      t181 = t129.
      t128->oval = t181.
    ENDIF.
    DATA t182 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t182.
    DATA(t183) = abap_true.
    IF t183 = abap_true.
      DATA t184 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t184.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t185.
      DATA(t186) = abap_true.
      IF t186 = abap_true.
        DATA(t187) = |OpenABAP|.
        DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t188->has = abap_true.
        t188->value = t187.
        t185 = t188.
      ELSE.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t185 = t189.
      ENDIF.
      t184 = NEW zcl_lnt_iver_options( i_also = t185 ).
      t182 = t184.
    ELSE.
      DATA t190 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t190.
      t182 = t190.
    ENDIF.
    t121 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t122 i_first = t128 i_opts = t182 ).
    t120 = t121.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |=|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t202->cval = t203.
    ENDIF.
    t201 = t202.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = |=|.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t204 = t205.
    DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t208.
    t207 = t208.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t210) = CAST zlnt_runtime_dyna_a429568d5be8( t201 ).
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t204 ).
    DATA(t212) = CAST zlnt_runtime_arra_c22708faf2e3( t207 ).
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t210 i_second = t211 i_rest = t212 ).
    t200 = t209.
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t213 TYPE REF TO object.
      t213 = t200.
      t199->oval = t213.
    ENDIF.
    t198 = zcl_lnt_st_combi_module=>star( i_first = t199 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t214 TYPE REF TO object.
      t214 = t198.
      t197->oval = t214.
    ENDIF.
    t196 = t197.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t216.
    t215 = t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t218) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t219) = CAST zlnt_runtime_dyna_a429568d5be8( t196 ).
    DATA(t220) = CAST zlnt_runtime_arra_c22708faf2e3( t215 ).
    t217 = zcl_lnt_st_combi_module=>seq( i_first = t218 i_second = t219 i_rest = t220 ).
    t192 = t217.
    t191 = t192.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = CAST zif_lnt_statement_runnable( t191 ).
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t229 TYPE REF TO object.
      t229 = t228.
      t227->oval = t229.
    ENDIF.
    t226 = t227.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = |?=|.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    t233 = t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t236) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t237) = CAST zlnt_runtime_dyna_a429568d5be8( t230 ).
    DATA(t238) = CAST zlnt_runtime_arra_c22708faf2e3( t233 ).
    t235 = zcl_lnt_st_combi_module=>alt_prio( i_first = t236 i_second = t237 i_rest = t238 ).
    t225 = t235.
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t225.
      t224->oval = t239.
    ENDIF.
    t223 = t224.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = CAST zif_lnt_statement_runnable( t120 ).
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t242.
      t241->oval = t243.
    ENDIF.
    t240 = t241.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t245.
    t244 = t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t247) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t248) = CAST zlnt_runtime_dyna_a429568d5be8( t240 ).
    DATA(t249) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    t246 = zcl_lnt_st_combi_module=>alt_prio( i_first = t247 i_second = t248 i_rest = t249 ).
    t222 = t246.
    t221 = t222.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t254 IS BOUND.
      CREATE OBJECT t253.
      t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t253->cval = t254.
    ENDIF.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = CAST zif_lnt_statement_runnable( t221 ).
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t258 TYPE REF TO object.
      t258 = t257.
      t256->oval = t258.
    ENDIF.
    t255 = t256.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t260.
    t259 = t260.
    DATA(t261) = CAST zlnt_runtime_arra_c22708faf2e3( t259 ).
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t263 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t262->cval = t263.
    ENDIF.
    APPEND t262 TO t261->items.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t265) = CAST zlnt_runtime_dyna_a429568d5be8( t252 ).
    DATA(t266) = CAST zlnt_runtime_dyna_a429568d5be8( t255 ).
    DATA(t267) = CAST zlnt_runtime_arra_c22708faf2e3( t259 ).
    t264 = zcl_lnt_st_combi_module=>seq( i_first = t265 i_second = t266 i_rest = t267 ).
    t251 = t264.
    t250 = t251.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = CAST zif_lnt_statement_runnable( t6 ).
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t272 TYPE REF TO object.
      t272 = t271.
      t270->oval = t272.
    ENDIF.
    t269 = t270.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = CAST zif_lnt_statement_runnable( t250 ).
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t276 TYPE REF TO object.
      t276 = t275.
      t274->oval = t276.
    ENDIF.
    t273 = t274.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t278.
    t277 = t278.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t280) = CAST zlnt_runtime_dyna_a429568d5be8( t269 ).
    DATA(t281) = CAST zlnt_runtime_dyna_a429568d5be8( t273 ).
    DATA(t282) = CAST zlnt_runtime_arra_c22708faf2e3( t277 ).
    t279 = zcl_lnt_st_combi_module=>alt( i_first = t280 i_second = t281 i_rest = t282 ).
    t268 = t279.
    result = t268.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d544_b65fb33374a3.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
