* TS: src/abap/2_statements/statements/loop.ts:8:1 Loop
CLASS zcl_lnt_st_loop DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_loop IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |WHERE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = |KeyUser|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t16->cval = t17.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t15 i_first = t16 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t14.
      t13->oval = t18.
    ENDIF.
    t12 = t13.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t21 = zcl_lnt_st_combi_module=>alt( i_first = t22 i_second = t23 i_rest = t24 ).
    t8 = t21.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t8.
      t7->oval = t25.
    ENDIF.
    t6 = t7.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t30 i_rest = t31 ).
    t2 = t28.
    t1 = t2.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t37.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t37 = zcl_lnt_version_module=>release_b8cd.
    DATA(t38) = |v740sp08|.
    t36 = t37->get( p0 = t38 ).
    t35 = t36.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t35.
      t34->oval = t39.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = |GROUP BY|.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t42 ).
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t48 ).
    t50 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t52 i_rest = t53 ).
    t41 = t50.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t41.
      t40->oval = t54.
    ENDIF.
    DATA t55 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t55.
    DATA(t56) = abap_true.
    IF t56 = abap_true.
      DATA t57 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      DATA(t59) = abap_true.
      IF t59 = abap_true.
        DATA(t60) = |OpenABAP|.
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t60.
        t58 = t61.
      ELSE.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        t58 = t62.
      ENDIF.
      t57 = NEW zcl_lnt_iver_options( i_also = t58 ).
      t55 = t57.
    ELSE.
      DATA t63 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t63.
      t55 = t63.
    ENDIF.
    t33 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t34 i_first = t40 i_opts = t55 ).
    t32 = t33.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t67.
    DATA t68 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t69.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t69 = zcl_lnt_version_module=>release_b8cd.
    DATA(t70) = |v757|.
    t68 = t69->get( p0 = t70 ).
    t67 = t68.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t71 TYPE REF TO object.
      t71 = t67.
      t66->oval = t71.
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = |STEP|.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = t76.
    t74 = t75.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t80 = t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t73 = t82.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t73.
      t72->oval = t86.
    ENDIF.
    DATA t87 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t87.
    t65 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t66 i_first = t72 i_opts = t87 ).
    t64 = t65.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = |FROM|.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    t96 = t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t99) = CAST zlnt_runtime_dyna_a429568d5be8( t90 ).
    DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t93 ).
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t96 ).
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t99 i_second = t100 i_rest = t101 ).
    t89 = t98.
    t88 = t89.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = |TO|.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = t106.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t108->cval = t109.
    ENDIF.
    t107 = t108.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t104 ).
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t107 ).
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t113 i_second = t114 i_rest = t115 ).
    t103 = t112.
    t102 = t103.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = |USING KEY|.
    CREATE OBJECT t119.
    t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t119->sval = t120.
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39 ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t125->cval = t126.
    ENDIF.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t130 = t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t124 ).
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t130 ).
    t132 = zcl_lnt_st_combi_module=>alt_prio( i_first = t133 i_second = t134 i_rest = t135 ).
    t123 = t132.
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t136 TYPE REF TO object.
      t136 = t123.
      t122->oval = t136.
    ENDIF.
    t121 = t122.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t137 = t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t140) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t141 i_rest = t142 ).
    t117 = t139.
    t116 = t117.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d207_e6b5df1debdc ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = CAST zif_lnt_statement_runnable( t88 ).
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t150.
      t149->oval = t151.
    ENDIF.
    t148 = t149.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = CAST zif_lnt_statement_runnable( t102 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t156.
      t155->oval = t157.
    ENDIF.
    APPEND t155 TO t154->items.
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = CAST zif_lnt_statement_runnable( t1 ).
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t161 TYPE REF TO object.
      t161 = t160.
      t159->oval = t161.
    ENDIF.
    APPEND t159 TO t158->items.
    DATA(t162) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = CAST zif_lnt_statement_runnable( t116 ).
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t164.
      t163->oval = t165.
    ENDIF.
    APPEND t163 TO t162->items.
    DATA(t166) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = CAST zif_lnt_statement_runnable( t32 ).
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t169 TYPE REF TO object.
      t169 = t168.
      t167->oval = t169.
    ENDIF.
    APPEND t167 TO t166->items.
    DATA(t170) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = CAST zif_lnt_statement_runnable( t64 ).
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t173 TYPE REF TO object.
      t173 = t172.
      t171->oval = t173.
    ENDIF.
    APPEND t171 TO t170->items.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t175) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t176) = CAST zlnt_runtime_dyna_a429568d5be8( t148 ).
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    t174 = zcl_lnt_st_combi_module=>per( i_first = t175 i_second = t176 i_rest = t177 ).
    t144 = t174.
    t143 = t144.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = |SCREEN|.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185 = t186.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = CAST zif_lnt_statement_runnable( zcl_lnt_st_combi_module=>fail_combinator(  ) ).
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t191 TYPE REF TO object.
      t191 = t190.
      t189->oval = t191.
    ENDIF.
    t188 = t189.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t193.
    t192 = t193.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t195) = CAST zlnt_runtime_dyna_a429568d5be8( t185 ).
    DATA(t196) = CAST zlnt_runtime_dyna_a429568d5be8( t188 ).
    DATA(t197) = CAST zlnt_runtime_arra_c22708faf2e3( t192 ).
    t194 = zcl_lnt_st_combi_module=>seq( i_first = t195 i_second = t196 i_rest = t197 ).
    t184 = t194.
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t198 TYPE REF TO object.
      t198 = t184.
      t183->oval = t198.
    ENDIF.
    t182 = zcl_lnt_st_combi_module=>opt( i_first = t183 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t199 TYPE REF TO object.
      t199 = t182.
      t181->oval = t199.
    ENDIF.
    t180 = t181.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t206.
    DATA t207 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t208.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t208 = zcl_lnt_version_module=>release_b8cd.
    DATA(t209) = |v740sp08|.
    t207 = t208->get( p0 = t209 ).
    t206 = t207.
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t210 TYPE REF TO object.
      t210 = t206.
      t205->oval = t210.
    ENDIF.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |GROUP|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    DATA t213 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t213.
    DATA(t214) = abap_true.
    IF t214 = abap_true.
      DATA t215 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t215.
      DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t216.
      DATA(t217) = abap_true.
      IF t217 = abap_true.
        DATA(t218) = |OpenABAP|.
        DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t219->has = abap_true.
        t219->value = t218.
        t216 = t219.
      ELSE.
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t220.
        t216 = t220.
      ENDIF.
      t215 = NEW zcl_lnt_iver_options( i_also = t216 ).
      t213 = t215.
    ELSE.
      DATA t221 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t221.
      t213 = t221.
    ENDIF.
    t204 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t205 i_first = t211 i_opts = t213 ).
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t222 TYPE REF TO object.
      t222 = t204.
      t203->oval = t222.
    ENDIF.
    t202 = zcl_lnt_st_combi_module=>opt( i_first = t203 ).
    IF t202 IS BOUND.
      CREATE OBJECT t201.
      t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t223 TYPE REF TO object.
      t223 = t202.
      t201->oval = t223.
    ENDIF.
    t200 = t201.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t225.
    t224 = t225.
    DATA(t226) = CAST zlnt_runtime_arra_c22708faf2e3( t224 ).
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d205_211e28be3777 ).
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t227->cval = t228.
    ENDIF.
    APPEND t227 TO t226->items.
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t224 ).
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA(t233) = CAST zif_lnt_statement_runnable( t143 ).
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t234 TYPE REF TO object.
      t234 = t233.
      t232->oval = t234.
    ENDIF.
    t231 = zcl_lnt_st_combi_module=>opt( i_first = t232 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t235 TYPE REF TO object.
      t235 = t231.
      t230->oval = t235.
    ENDIF.
    APPEND t230 TO t229->items.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t237) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t238) = CAST zlnt_runtime_dyna_a429568d5be8( t200 ).
    DATA(t239) = CAST zlnt_runtime_arra_c22708faf2e3( t224 ).
    t236 = zcl_lnt_st_combi_module=>seq( i_first = t237 i_second = t238 i_rest = t239 ).
    t179 = t236.
    t178 = t179.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t243) = |LOOP AT|.
    CREATE OBJECT t242.
    t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t242->sval = t243.
    t241 = t242.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = CAST zif_lnt_statement_runnable( t178 ).
    IF t246 IS BOUND.
      CREATE OBJECT t245.
      t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t247 TYPE REF TO object.
      t247 = t246.
      t245->oval = t247.
    ENDIF.
    t244 = t245.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t249.
    t248 = t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t251) = CAST zlnt_runtime_dyna_a429568d5be8( t241 ).
    DATA(t252) = CAST zlnt_runtime_dyna_a429568d5be8( t244 ).
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t248 ).
    t250 = zcl_lnt_st_combi_module=>seq( i_first = t251 i_second = t252 i_rest = t253 ).
    t240 = t250.
    result = t240.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d531_50646cf0bf6b.
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
