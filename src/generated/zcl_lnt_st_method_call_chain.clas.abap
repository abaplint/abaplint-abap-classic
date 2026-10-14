* TS: src/abap/2_statements/expressions/method_call_chain.ts:6:1 MethodCallChain
CLASS zcl_lnt_st_method_call_chain DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_method_call_chain IMPLEMENTATION.
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
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d ).
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
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947 ).
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
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t13 = zcl_lnt_st_combi_module=>seq( i_first = t14 i_second = t15 i_rest = t16 ).
    t2 = t13.
    t1 = t2.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t21 = zcl_lnt_st_combi_module=>tok( i_t = t22 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t21.
      t20->oval = t23.
    ENDIF.
    t19 = t20.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t27 = t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t18 = t29.
    t17 = t18.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zif_lnt_statement_runnable( t1 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t39.
      t38->oval = t40.
    ENDIF.
    t37 = t38.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = CAST zif_lnt_statement_runnable( t17 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t44 TYPE REF TO object.
      t44 = t43.
      t42->oval = t44.
    ENDIF.
    t41 = t42.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t45 = t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t45 ).
    t47 = zcl_lnt_st_combi_module=>alt_prio( i_first = t48 i_second = t49 i_rest = t50 ).
    t36 = t47.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t51 TYPE REF TO object.
      t51 = t36.
      t35->oval = t51.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>star( i_first = t35 ).
    t33 = t34.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zif_lnt_statement_runnable( t33 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t58.
      t57->oval = t59.
    ENDIF.
    t56 = t57.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d ).
    t62 = zcl_lnt_st_combi_module=>tok( i_t = t63 ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t62.
      t61->oval = t64.
    ENDIF.
    t60 = t61.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f ).
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    APPEND t68 TO t67->items.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t72 i_rest = t73 ).
    t55 = t70.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t74 TYPE REF TO object.
      t74 = t55.
      t54->oval = t74.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>star( i_first = t54 ).
    t52 = t53.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d ).
    t82 = zcl_lnt_st_combi_module=>tok( i_t = t83 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t82.
      t81->oval = t84.
    ENDIF.
    t80 = t81.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t80 ).
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t89 i_rest = t90 ).
    t76 = t87.
    t75 = t76.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d34_abe50883ec07f8 ).
    t98 = zcl_lnt_st_combi_module=>tok( i_t = t99 ).
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t98.
      t97->oval = t100.
    ENDIF.
    t96 = t97.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    t101 = t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t93 ).
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t96 ).
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t101 ).
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t105 i_rest = t106 ).
    t92 = t103.
    t91 = t92.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = CAST zif_lnt_statement_runnable( t75 ).
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t123 TYPE REF TO object.
      t123 = t122.
      t121->oval = t123.
    ENDIF.
    t120 = t121.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = CAST zif_lnt_statement_runnable( t91 ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t127 TYPE REF TO object.
      t127 = t126.
      t125->oval = t127.
    ENDIF.
    t124 = t125.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    t128 = t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t120 ).
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t124 ).
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    t130 = zcl_lnt_st_combi_module=>alt_prio( i_first = t131 i_second = t132 i_rest = t133 ).
    t119 = t130.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t119.
      t118->oval = t134.
    ENDIF.
    t117 = zcl_lnt_st_combi_module=>opt_prio( i_first = t118 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t135 TYPE REF TO object.
      t135 = t117.
      t116->oval = t135.
    ENDIF.
    t115 = t116.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f ).
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t137->cval = t138.
    ENDIF.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    t139 = t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t142) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t143) = CAST zlnt_runtime_dyna_a429568d5be8( t136 ).
    DATA(t144) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t142 i_second = t143 i_rest = t144 ).
    t114 = t141.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t114.
      t113->oval = t145.
    ENDIF.
    t112 = t113.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d218_79f2a1395386 ).
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t147->cval = t148.
    ENDIF.
    t146 = t147.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    t149 = t150.
    DATA(t151) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3 ).
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    APPEND t152 TO t151->items.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t146 ).
    DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    t154 = zcl_lnt_st_combi_module=>alt_prio( i_first = t155 i_second = t156 i_rest = t157 ).
    t111 = t154.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t111.
      t110->oval = t158.
    ENDIF.
    t109 = t110.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = CAST zif_lnt_statement_runnable( t52 ).
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t162 TYPE REF TO object.
      t162 = t161.
      t160->oval = t162.
    ENDIF.
    t159 = t160.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t163 = t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t109 ).
    DATA(t167) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t168) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    t165 = zcl_lnt_st_combi_module=>seq( i_first = t166 i_second = t167 i_rest = t168 ).
    t108 = t165.
    t107 = t108.
    DATA(t169) = CAST zif_lnt_statement_runnable( t107 ).
    result = t169.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
  ENDMETHOD.
ENDCLASS.
