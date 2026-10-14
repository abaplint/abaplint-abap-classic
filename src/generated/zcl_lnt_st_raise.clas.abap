* TS: src/abap/2_statements/statements/raise.ts:7:1 Raise
CLASS zcl_lnt_st_raise DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_raise IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |MESSAGE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4 ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>opt( i_first = t14 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t16 TYPE REF TO object.
      t16 = t13.
      t12->oval = t16.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t17 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t19 i_rest = t20 ).
    t2 = t17.
    t1 = t2.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = |MESSAGE ID|.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |NUMBER|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    APPEND t32 TO t31->items.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t37 = t38.
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
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t47) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
    t45 = zcl_lnt_st_combi_module=>alt_prio( i_first = t46 i_second = t47 i_rest = t48 ).
    t36 = t45.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t36.
      t35->oval = t49.
    ENDIF.
    APPEND t35 TO t34->items.
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4 ).
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>opt_prio( i_first = t53 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t55 TYPE REF TO object.
      t55 = t52.
      t51->oval = t55.
    ENDIF.
    APPEND t51 TO t50->items.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    t56 = zcl_lnt_st_combi_module=>seq( i_first = t57 i_second = t58 i_rest = t59 ).
    t22 = t56.
    t21 = t22.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = |EXPORTING|.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14 ).
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t72 i_rest = t73 ).
    t61 = t70.
    t60 = t61.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = |TYPE|.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = t78.
    t76 = t77.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t82 = t83.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t93.
    DATA t94 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t95.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t95 = zcl_lnt_version_module=>release_b8cd.
    DATA(t96) = |v750|.
    t94 = t95->get( p0 = t96 ).
    t93 = t94.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t97 TYPE REF TO object.
      t97 = t93.
      t92->oval = t97.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zif_lnt_statement_runnable( t1 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t102.
      t101->oval = t103.
    ENDIF.
    t100 = t101.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = CAST zif_lnt_statement_runnable( t21 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t107 TYPE REF TO object.
      t107 = t106.
      t105->oval = t107.
    ENDIF.
    t104 = t105.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    t108 = t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t104 ).
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t108 ).
    t110 = zcl_lnt_st_combi_module=>alt( i_first = t111 i_second = t112 i_rest = t113 ).
    t99 = t110.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t114 TYPE REF TO object.
      t114 = t99.
      t98->oval = t114.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t115.
    DATA(t116) = abap_true.
    IF t116 = abap_true.
      DATA t117 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t117.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t118.
      DATA(t119) = abap_true.
      IF t119 = abap_true.
        DATA(t120) = |OpenABAP|.
        DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t121->has = abap_true.
        t121->value = t120.
        t118 = t121.
      ELSE.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        t118 = t122.
      ENDIF.
      t117 = NEW zcl_lnt_iver_options( i_also = t118 ).
      t115 = t117.
    ELSE.
      DATA t123 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t123.
      t115 = t123.
    ENDIF.
    t91 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t92 i_first = t98 i_opts = t115 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t124 TYPE REF TO object.
      t124 = t91.
      t90->oval = t124.
    ENDIF.
    t89 = t90.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t129.
    DATA t130 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t131.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t131 = zcl_lnt_version_module=>release_b8cd.
    DATA(t132) = |v752|.
    t130 = t131->get( p0 = t132 ).
    t129 = t130.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t133 TYPE REF TO object.
      t133 = t129.
      t128->oval = t133.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = |USING MESSAGE|.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = t135.
    DATA t136 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t136.
    t127 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t128 i_first = t134 i_opts = t136 ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t127.
      t126->oval = t137.
    ENDIF.
    t125 = t126.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t138 = t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t142) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    t140 = zcl_lnt_st_combi_module=>alt( i_first = t141 i_second = t142 i_rest = t143 ).
    t88 = t140.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t88.
      t87->oval = t144.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt( i_first = t87 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t86.
      t85->oval = t145.
    ENDIF.
    APPEND t85 TO t84->items.
    DATA(t146) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = CAST zif_lnt_statement_runnable( t60 ).
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t150.
      t149->oval = t151.
    ENDIF.
    t148 = zcl_lnt_st_combi_module=>opt_prio( i_first = t149 ).
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t152 TYPE REF TO object.
      t152 = t148.
      t147->oval = t152.
    ENDIF.
    APPEND t147 TO t146->items.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t154) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t79 ).
    DATA(t156) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    t153 = zcl_lnt_st_combi_module=>seq( i_first = t154 i_second = t155 i_rest = t156 ).
    t75 = t153.
    t74 = t75.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = |RESUMABLE|.
    CREATE OBJECT t165.
    t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t165->sval = t166.
    t164 = zcl_lnt_st_combi_module=>opt_prio( i_first = t165 ).
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t164.
      t163->oval = t167.
    ENDIF.
    t162 = t163.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t170) = |EXCEPTION|.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = t170.
    t168 = t169.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    t171 = t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t162 ).
    DATA(t175) = CAST zlnt_runtime_dyna_a429568d5be8( t168 ).
    DATA(t176) = CAST zlnt_runtime_arra_c22708faf2e3( t171 ).
    t173 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t175 i_rest = t176 ).
    t161 = t173.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t177 TYPE REF TO object.
      t177 = t161.
      t160->oval = t177.
    ENDIF.
    t159 = t160.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t180) = |SHORTDUMP|.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = t180.
    t178 = t179.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    t181 = t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t184) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t185) = CAST zlnt_runtime_dyna_a429568d5be8( t178 ).
    DATA(t186) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    t183 = zcl_lnt_st_combi_module=>alt_prio( i_first = t184 i_second = t185 i_rest = t186 ).
    t158 = t183.
    t157 = t158.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = CAST zif_lnt_statement_runnable( t157 ).
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t192 TYPE REF TO object.
      t192 = t191.
      t190->oval = t192.
    ENDIF.
    t189 = t190.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = CAST zif_lnt_statement_runnable( t74 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t199 TYPE REF TO object.
      t199 = t198.
      t197->oval = t199.
    ENDIF.
    t196 = t197.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t204.
    DATA t205 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t206.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t206 = zcl_lnt_version_module=>release_b8cd.
    DATA(t207) = |v752|.
    t205 = t206->get( p0 = t207 ).
    t204 = t205.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t208 TYPE REF TO object.
      t208 = t204.
      t203->oval = t208.
    ENDIF.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t209->cval = t210.
    ENDIF.
    DATA t211 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t211.
    DATA(t212) = abap_true.
    IF t212 = abap_true.
      DATA t213 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t213.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t214.
      DATA(t215) = abap_true.
      IF t215 = abap_true.
        DATA(t216) = |OpenABAP|.
        DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t217->has = abap_true.
        t217->value = t216.
        t214 = t217.
      ELSE.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        t214 = t218.
      ENDIF.
      t213 = NEW zcl_lnt_iver_options( i_also = t214 ).
      t211 = t213.
    ELSE.
      DATA t219 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t219.
      t211 = t219.
    ENDIF.
    t202 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t203 i_first = t209 i_opts = t211 ).
    IF t202 IS BOUND.
      CREATE OBJECT t201.
      t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t220 TYPE REF TO object.
      t220 = t202.
      t201->oval = t220.
    ENDIF.
    t200 = t201.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t222.
    t221 = t222.
    DATA(t223) = CAST zlnt_runtime_arra_c22708faf2e3( t221 ).
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2 ).
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t224->cval = t225.
    ENDIF.
    APPEND t224 TO t223->items.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t196 ).
    DATA(t228) = CAST zlnt_runtime_dyna_a429568d5be8( t200 ).
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t221 ).
    t226 = zcl_lnt_st_combi_module=>alt_prio( i_first = t227 i_second = t228 i_rest = t229 ).
    t195 = t226.
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t230 TYPE REF TO object.
      t230 = t195.
      t194->oval = t230.
    ENDIF.
    t193 = t194.
    DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t232.
    t231 = t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t234) = CAST zlnt_runtime_dyna_a429568d5be8( t189 ).
    DATA(t235) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t236) = CAST zlnt_runtime_arra_c22708faf2e3( t231 ).
    t233 = zcl_lnt_st_combi_module=>seq( i_first = t234 i_second = t235 i_rest = t236 ).
    t188 = t233.
    t187 = t188.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = |RAISE|.
    CREATE OBJECT t240.
    t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t240->sval = t241.
    t239 = t240.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = CAST zif_lnt_statement_runnable( t187 ).
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t248 TYPE REF TO object.
      t248 = t247.
      t246->oval = t248.
    ENDIF.
    t245 = t246.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA(t252) = |KeyUser|.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0 ).
    IF t254 IS BOUND.
      CREATE OBJECT t253.
      t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t253->cval = t254.
    ENDIF.
    t251 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t252 i_first = t253 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t255 TYPE REF TO object.
      t255 = t251.
      t250->oval = t255.
    ENDIF.
    t249 = t250.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t257.
    t256 = t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t259) = CAST zlnt_runtime_dyna_a429568d5be8( t245 ).
    DATA(t260) = CAST zlnt_runtime_dyna_a429568d5be8( t249 ).
    DATA(t261) = CAST zlnt_runtime_arra_c22708faf2e3( t256 ).
    t258 = zcl_lnt_st_combi_module=>alt_prio( i_first = t259 i_second = t260 i_rest = t261 ).
    t244 = t258.
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t262 TYPE REF TO object.
      t262 = t244.
      t243->oval = t262.
    ENDIF.
    t242 = t243.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t264.
    t263 = t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t266) = CAST zlnt_runtime_dyna_a429568d5be8( t239 ).
    DATA(t267) = CAST zlnt_runtime_dyna_a429568d5be8( t242 ).
    DATA(t268) = CAST zlnt_runtime_arra_c22708faf2e3( t263 ).
    t265 = zcl_lnt_st_combi_module=>seq( i_first = t266 i_second = t267 i_rest = t268 ).
    t238 = t265.
    t237 = t238.
    DATA(t269) = CAST zif_lnt_statement_runnable( t237 ).
    result = t269.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d569_b67e4c7404df.
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
