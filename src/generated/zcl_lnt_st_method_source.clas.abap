* TS: src/abap/2_statements/expressions/method_source.ts:6:1 MethodSource
CLASS zcl_lnt_st_method_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_method_source IMPLEMENTATION.
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
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f ).
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
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t14 = zcl_lnt_st_combi_module=>alt( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d ).
    t22 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t22.
      t21->oval = t24.
    ENDIF.
    t20 = t21.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d34_abe50883ec07f8 ).
    t27 = zcl_lnt_st_combi_module=>tok( i_t = t28 ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t27.
      t26->oval = t29.
    ENDIF.
    t25 = t26.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t30 = t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    t32 = zcl_lnt_st_combi_module=>alt_prio( i_first = t33 i_second = t34 i_rest = t35 ).
    t19 = t32.
    t18 = t19.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = CAST zif_lnt_statement_runnable( t18 ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t40.
      t39->oval = t41.
    ENDIF.
    t38 = t39.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = CAST zif_lnt_statement_runnable( t1 ).
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t45 TYPE REF TO object.
      t45 = t44.
      t43->oval = t45.
    ENDIF.
    t42 = t43.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t38 ).
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t42 ).
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t50 i_rest = t51 ).
    t37 = t48.
    t36 = t37.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t56 = zcl_lnt_st_combi_module=>tok( i_t = t57 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t56.
      t55->oval = t58.
    ENDIF.
    t54 = t55.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t62 = t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t65 i_second = t66 i_rest = t67 ).
    t53 = t64.
    t52 = t53.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = CAST zif_lnt_statement_runnable( t36 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t72.
      t71->oval = t73.
    ENDIF.
    t70 = t71.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = CAST zif_lnt_statement_runnable( t52 ).
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t76.
      t75->oval = t77.
    ENDIF.
    t74 = t75.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t80 = zcl_lnt_st_combi_module=>alt_prio( i_first = t81 i_second = t82 i_rest = t83 ).
    t69 = t80.
    t68 = t69.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t92) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d34_abe50883ec07f8 ).
    t91 = zcl_lnt_st_combi_module=>tok( i_t = t92 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t91.
      t90->oval = t93.
    ENDIF.
    t89 = t90.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    t94 = t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t98) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t94 ).
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t98 i_rest = t99 ).
    t85 = t96.
    t84 = t85.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = CAST zif_lnt_statement_runnable( t84 ).
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t105 TYPE REF TO object.
      t105 = t104.
      t103->oval = t105.
    ENDIF.
    t102 = t103.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zif_lnt_statement_runnable( t1 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t108.
      t107->oval = t109.
    ENDIF.
    t106 = t107.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t113 i_second = t114 i_rest = t115 ).
    t101 = t112.
    t100 = t101.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = CAST zif_lnt_statement_runnable( t100 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t124 TYPE REF TO object.
      t124 = t123.
      t122->oval = t124.
    ENDIF.
    t121 = t122.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133 ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    t128 = t129.
    DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d166_95d94e882be8 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t131->cval = t132.
    ENDIF.
    APPEND t131 TO t130->items.
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    APPEND t134 TO t133->items.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t138) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    t136 = zcl_lnt_st_combi_module=>alt_prio( i_first = t137 i_second = t138 i_rest = t139 ).
    t120 = t136.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t140 TYPE REF TO object.
      t140 = t120.
      t119->oval = t140.
    ENDIF.
    t118 = t119.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = CAST zif_lnt_statement_runnable( t68 ).
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t145.
      t144->oval = t146.
    ENDIF.
    t143 = zcl_lnt_st_combi_module=>star( i_first = t144 ).
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t143.
      t142->oval = t147.
    ENDIF.
    t141 = t142.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t141 ).
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t148 ).
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t117 = t150.
    t116 = t117.
    DATA(t154) = CAST zif_lnt_statement_runnable( t116 ).
    result = t154.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
  ENDMETHOD.
ENDCLASS.
