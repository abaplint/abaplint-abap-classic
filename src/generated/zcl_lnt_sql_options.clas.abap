* TS: src/abap/2_statements/expressions/sql_options.ts:7:1 SQLOptions
CLASS zcl_lnt_sql_options DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_options IMPLEMENTATION.
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
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |CLIENTS IN|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = |T000|.
    CREATE OBJECT t16.
    t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t16->sval = t17.
    t15 = t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t20 = zcl_lnt_st_combi_module=>alt( i_first = t21 i_second = t22 i_rest = t23 ).
    t11 = t20.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t11.
      t10->oval = t24.
    ENDIF.
    t9 = t10.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t5 = t27.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t5.
      t4->oval = t31.
    ENDIF.
    t3 = t4.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |ALL CLIENTS|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t35 = t36.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = |CLIENT|.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t50 i_rest = t51 ).
    t39 = t48.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t39.
      t38->oval = t52.
    ENDIF.
    APPEND t38 TO t37->items.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t53 = zcl_lnt_st_combi_module=>alt( i_first = t54 i_second = t55 i_rest = t56 ).
    t2 = t53.
    t1 = t2.
    DATA t57 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    t57 = t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( t57 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263 ).
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
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    APPEND t70 TO t69->items.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t61 ).
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    t72 = zcl_lnt_st_combi_module=>per( i_first = t73 i_second = t74 i_rest = t75 ).
    t60 = t72.
    t59 = t60.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = |USING|.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = t80.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = CAST zif_lnt_statement_runnable( t1 ).
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t83.
      t82->oval = t84.
    ENDIF.
    t81 = t82.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = CAST zif_lnt_statement_runnable( t59 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t92 TYPE REF TO object.
      t92 = t91.
      t90->oval = t92.
    ENDIF.
    t89 = zcl_lnt_st_combi_module=>opt_prio( i_first = t90 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t89.
      t88->oval = t93.
    ENDIF.
    APPEND t88 TO t87->items.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t95) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t81 ).
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t95 i_second = t96 i_rest = t97 ).
    t77 = t94.
    t76 = t77.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t100.
    DATA t101 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t102.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t102 = zcl_lnt_version_module=>release_b8cd.
    DATA(t103) = |v796|.
    t101 = t102->get( p0 = t103 ).
    t100 = t101.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t100.
      t99->oval = t104.
    ENDIF.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = |OPTIONS|.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    t107 = t108.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = CAST zif_lnt_statement_runnable( t76 ).
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t116 TYPE REF TO object.
      t116 = t115.
      t114->oval = t116.
    ENDIF.
    t113 = t114.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = CAST zif_lnt_statement_runnable( t59 ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t119.
      t118->oval = t120.
    ENDIF.
    t117 = t118.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t121 = t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t113 ).
    DATA(t125) = CAST zlnt_runtime_dyna_a429568d5be8( t117 ).
    DATA(t126) = CAST zlnt_runtime_arra_c22708faf2e3( t121 ).
    t123 = zcl_lnt_st_combi_module=>alt( i_first = t124 i_second = t125 i_rest = t126 ).
    t112 = t123.
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t127 TYPE REF TO object.
      t127 = t112.
      t111->oval = t127.
    ENDIF.
    t110 = t111.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    t128 = t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t107 ).
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t110 ).
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    t130 = zcl_lnt_st_combi_module=>seq( i_first = t131 i_second = t132 i_rest = t133 ).
    t106 = t130.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t106.
      t105->oval = t134.
    ENDIF.
    DATA t135 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t135.
    t98 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t99 i_first = t105 i_opts = t135 ).
    result = t98.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d323_2cd6e0020229.
  ENDMETHOD.
ENDCLASS.
