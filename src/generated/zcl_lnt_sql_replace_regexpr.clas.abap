* TS: src/abap/2_statements/expressions/sql_replace_regexpr.ts:12:1 SQLReplaceRegexpr
CLASS zcl_lnt_sql_replace_regexpr DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_replace_regexpr IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t15 = zcl_lnt_st_combi_module=>tok( i_t = t16 ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t17 TYPE REF TO object.
      t17 = t15.
      t14->oval = t17.
    ENDIF.
    APPEND t14 TO t13->items.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t19 i_second = t20 i_rest = t21 ).
    t2 = t18.
    t1 = t2.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t26 = zcl_lnt_st_combi_module=>tok( i_t = t27 ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t26.
      t25->oval = t28.
    ENDIF.
    t24 = t25.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = CAST zif_lnt_statement_runnable( t1 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t37.
      t36->oval = t38.
    ENDIF.
    t35 = t36.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t35 ).
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t41 = zcl_lnt_st_combi_module=>alt_prio( i_first = t42 i_second = t43 i_rest = t44 ).
    t31 = t41.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t45 TYPE REF TO object.
      t45 = t31.
      t30->oval = t45.
    ENDIF.
    t29 = t30.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t50 i_rest = t51 ).
    t23 = t48.
    t22 = t23.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = |WITH|.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = CAST zif_lnt_statement_runnable( t22 ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t63 TYPE REF TO object.
      t63 = t62.
      t61->oval = t63.
    ENDIF.
    t60 = t61.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t67 = t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    t69 = zcl_lnt_st_combi_module=>alt_prio( i_first = t70 i_second = t71 i_rest = t72 ).
    t59 = t69.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t59.
      t58->oval = t73.
    ENDIF.
    t57 = t58.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t78 i_rest = t79 ).
    t53 = t76.
    t52 = t53.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t82.
    DATA t83 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t84.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t84 = zcl_lnt_version_module=>release_b8cd.
    DATA(t85) = |v757|.
    t83 = t84->get( p0 = t85 ).
    t82 = t83.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t82.
      t81->oval = t86.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = |REPLACE_REGEXPR|.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = t91.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t95) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t94 = zcl_lnt_st_combi_module=>tok( i_t = t95 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t94.
      t93->oval = t96.
    ENDIF.
    t92 = t93.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    t97 = t98.
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    APPEND t100 TO t99->items.
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = CAST zif_lnt_statement_runnable( t52 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t107 TYPE REF TO object.
      t107 = t106.
      t105->oval = t107.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>opt_prio( i_first = t105 ).
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t108 TYPE REF TO object.
      t108 = t104.
      t103->oval = t108.
    ENDIF.
    APPEND t103 TO t102->items.
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d318_e4aedf15dc12 ).
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t112->cval = t113.
    ENDIF.
    t111 = zcl_lnt_st_combi_module=>opt_prio( i_first = t112 ).
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t114 TYPE REF TO object.
      t114 = t111.
      t110->oval = t114.
    ENDIF.
    APPEND t110 TO t109->items.
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d319_3b9487add007 ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    t117 = zcl_lnt_st_combi_module=>opt_prio( i_first = t118 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t117.
      t116->oval = t120.
    ENDIF.
    APPEND t116 TO t115->items.
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t124) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t123 = zcl_lnt_st_combi_module=>tok( i_t = t124 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t125 TYPE REF TO object.
      t125 = t123.
      t122->oval = t125.
    ENDIF.
    APPEND t122 TO t121->items.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t128) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t129) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t127 i_second = t128 i_rest = t129 ).
    t88 = t126.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t88.
      t87->oval = t130.
    ENDIF.
    DATA t131 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t131.
    t80 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t81 i_first = t87 i_opts = t131 ).
    result = t80.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d303_41f42c023891.
  ENDMETHOD.
ENDCLASS.
