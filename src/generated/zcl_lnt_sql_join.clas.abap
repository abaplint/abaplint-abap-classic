* TS: src/abap/2_statements/expressions/sql_join.ts:7:1 SQLJoin
CLASS zcl_lnt_sql_join DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_join IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
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
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = |INNER|.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |LEFT OUTER|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = |LEFT|.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = t18.
    APPEND t17 TO t16->items.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |RIGHT OUTER|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    APPEND t20 TO t19->items.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = |RIGHT|.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    APPEND t23 TO t22->items.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t25 = zcl_lnt_st_combi_module=>alt_prio( i_first = t26 i_second = t27 i_rest = t28 ).
    t7 = t25.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t7.
      t6->oval = t29.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>opt_prio( i_first = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t5.
      t4->oval = t30.
    ENDIF.
    t3 = t4.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |JOIN|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    t34 = t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t37 i_second = t38 i_rest = t39 ).
    t2 = t36.
    t1 = t2.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t47.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t47 = zcl_lnt_version_module=>release_b8cd.
    DATA(t48) = |v795|.
    t46 = t47->get( p0 = t48 ).
    t45 = t46.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t45.
      t44->oval = t49.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t52.
    DATA(t53) = |^#[A-Z][A-Z0-9_]*$|.
    DATA(t54) = |i|.
    CREATE OBJECT t52 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t53 flags = t54.
    t51 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t52 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t55 TYPE REF TO object.
      t55 = t51.
      t50->oval = t55.
    ENDIF.
    DATA t56 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t56.
    t43 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t44 i_first = t50 i_opts = t56 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t57 TYPE REF TO object.
      t57 = t43.
      t42->oval = t57.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>opt_prio( i_first = t42 ).
    t40 = t41.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = CAST zif_lnt_statement_runnable( t1 ).
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
    DATA(t66) = CAST zif_lnt_statement_runnable( t40 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t67 TYPE REF TO object.
      t67 = t66.
      t65->oval = t67.
    ENDIF.
    t64 = t65.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = NEW zcl_lnt_sql_join_source( ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t72.
      t71->oval = t73.
    ENDIF.
    APPEND t71 TO t70->items.
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = |ON|.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = t76.
    APPEND t75 TO t74->items.
    DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    APPEND t78 TO t77->items.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t59 = t80.
    t58 = t59.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t89.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t89 = zcl_lnt_version_module=>release_b8cd.
    DATA(t90) = |v750|.
    t88 = t89->get( p0 = t90 ).
    t87 = t88.
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t87.
      t86->oval = t91.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = |CROSS JOIN|.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = t96.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zif_lnt_statement_runnable( t40 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t99.
      t98->oval = t100.
    ENDIF.
    t97 = t98.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    t101 = t102.
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t101 ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = NEW zcl_lnt_sql_join_source( ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t106 TYPE REF TO object.
      t106 = t105.
      t104->oval = t106.
    ENDIF.
    APPEND t104 TO t103->items.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t110) = CAST zlnt_runtime_arra_c22708faf2e3( t101 ).
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t108 i_second = t109 i_rest = t110 ).
    t93 = t107.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t93.
      t92->oval = t111.
    ENDIF.
    DATA t112 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t112.
    DATA(t113) = abap_true.
    IF t113 = abap_true.
      DATA t114 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      DATA(t116) = abap_true.
      IF t116 = abap_true.
        DATA(t117) = |OpenABAP|.
        DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t118->has = abap_true.
        t118->value = t117.
        t115 = t118.
      ELSE.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t115 = t119.
      ENDIF.
      t114 = NEW zcl_lnt_iver_options( i_also = t115 ).
      t112 = t114.
    ELSE.
      DATA t120 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t120.
      t112 = t120.
    ENDIF.
    t85 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t86 i_first = t92 i_opts = t112 ).
    t84 = t85.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = CAST zif_lnt_statement_runnable( t84 ).
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t125 TYPE REF TO object.
      t125 = t124.
      t123->oval = t125.
    ENDIF.
    t122 = t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA(t128) = CAST zif_lnt_statement_runnable( t58 ).
    IF t128 IS BOUND.
      CREATE OBJECT t127.
      t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t129 TYPE REF TO object.
      t129 = t128.
      t127->oval = t129.
    ENDIF.
    t126 = t127.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t130 = t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t122 ).
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t126 ).
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t130 ).
    t132 = zcl_lnt_st_combi_module=>alt_prio( i_first = t133 i_second = t134 i_rest = t135 ).
    t121 = t132.
    result = t121.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d298_782c2da798c9.
  ENDMETHOD.
ENDCLASS.
