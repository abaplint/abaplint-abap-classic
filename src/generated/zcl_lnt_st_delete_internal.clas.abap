* TS: src/abap/2_statements/statements/delete_internal.ts:7:1 DeleteInternal
CLASS zcl_lnt_st_delete_internal DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_delete_internal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |INDEX|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t25 = zcl_lnt_st_combi_module=>alt_prio( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |USING KEY|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zif_lnt_statement_runnable( t15 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t36.
      t35->oval = t37.
    ENDIF.
    t34 = t35.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    t38 = t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t38 ).
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t42 i_rest = t43 ).
    t30 = t40.
    t29 = t30.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |FROM|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t52 = t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t56) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    t54 = zcl_lnt_st_combi_module=>seq( i_first = t55 i_second = t56 i_rest = t57 ).
    t45 = t54.
    t44 = t45.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zif_lnt_statement_runnable( t44 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t65 TYPE REF TO object.
      t65 = t64.
      t63->oval = t65.
    ENDIF.
    t62 = zcl_lnt_st_combi_module=>opt_prio( i_first = t63 ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t62.
      t61->oval = t66.
    ENDIF.
    t60 = t61.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |TO|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t71 = t80.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t71.
      t70->oval = t84.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>opt_prio( i_first = t70 ).
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t85 TYPE REF TO object.
      t85 = t69.
      t68->oval = t85.
    ENDIF.
    t67 = t68.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    t86 = t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t86 ).
    t88 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t90 i_rest = t91 ).
    t59 = t88.
    t58 = t59.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = |WHERE|.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = t96.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA(t106) = |KeyUser|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    t105 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t106 i_first = t107 ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t105.
      t104->oval = t109.
    ENDIF.
    t103 = t104.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t112 = zcl_lnt_st_combi_module=>alt( i_first = t113 i_second = t114 i_rest = t115 ).
    t99 = t112.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t116 TYPE REF TO object.
      t116 = t99.
      t98->oval = t116.
    ENDIF.
    t97 = t98.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t93 = t119.
    t92 = t93.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = |WITH TABLE KEY|.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = t127.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = CAST zif_lnt_statement_runnable( t15 ).
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t136 TYPE REF TO object.
      t136 = t135.
      t134->oval = t136.
    ENDIF.
    t133 = t134.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = |COMPONENTS|.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
    t137 = t138.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t140 = t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t143) = CAST zlnt_runtime_dyna_a429568d5be8( t133 ).
    DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t137 ).
    DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t140 ).
    t142 = zcl_lnt_st_combi_module=>seq( i_first = t143 i_second = t144 i_rest = t145 ).
    t132 = t142.
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t132.
      t131->oval = t146.
    ENDIF.
    t130 = zcl_lnt_st_combi_module=>opt( i_first = t131 ).
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t130.
      t129->oval = t147.
    ENDIF.
    t128 = t129.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t148 = t149.
    DATA(t150) = CAST zlnt_runtime_arra_c22708faf2e3( t148 ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d126_c330c74d8713 ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    t152 = zcl_lnt_st_combi_module=>plus( i_first = t153 ).
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t155 TYPE REF TO object.
      t155 = t152.
      t151->oval = t155.
    ENDIF.
    APPEND t151 TO t150->items.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t158) = CAST zlnt_runtime_dyna_a429568d5be8( t128 ).
    DATA(t159) = CAST zlnt_runtime_arra_c22708faf2e3( t148 ).
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t158 i_rest = t159 ).
    t124 = t156.
    t123 = t124.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = |TABLE|.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = t164.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t166->cval = t167.
    ENDIF.
    t165 = t166.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    t168 = t169.
    DATA(t170) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = CAST zif_lnt_statement_runnable( t1 ).
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t179 TYPE REF TO object.
      t179 = t178.
      t177->oval = t179.
    ENDIF.
    t176 = t177.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = CAST zif_lnt_statement_runnable( t29 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t183 TYPE REF TO object.
      t183 = t182.
      t181->oval = t183.
    ENDIF.
    t180 = t181.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t185.
    t184 = t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t176 ).
    DATA(t188) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t189) = CAST zlnt_runtime_arra_c22708faf2e3( t184 ).
    t186 = zcl_lnt_st_combi_module=>per( i_first = t187 i_second = t188 i_rest = t189 ).
    t175 = t186.
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t190 TYPE REF TO object.
      t190 = t175.
      t174->oval = t190.
    ENDIF.
    t173 = t174.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = CAST zif_lnt_statement_runnable( t44 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t199 TYPE REF TO object.
      t199 = t198.
      t197->oval = t199.
    ENDIF.
    t196 = zcl_lnt_st_combi_module=>opt_prio( i_first = t197 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t200 TYPE REF TO object.
      t200 = t196.
      t195->oval = t200.
    ENDIF.
    t194 = t195.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA(t205) = CAST zif_lnt_statement_runnable( t29 ).
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t206 TYPE REF TO object.
      t206 = t205.
      t204->oval = t206.
    ENDIF.
    t203 = zcl_lnt_st_combi_module=>opt_prio( i_first = t204 ).
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t207 TYPE REF TO object.
      t207 = t203.
      t202->oval = t207.
    ENDIF.
    t201 = t202.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t209.
    t208 = t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t212) = CAST zlnt_runtime_dyna_a429568d5be8( t201 ).
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t208 ).
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t211 i_second = t212 i_rest = t213 ).
    t193 = t210.
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t214 TYPE REF TO object.
      t214 = t193.
      t192->oval = t214.
    ENDIF.
    t191 = t192.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t216.
    t215 = t216.
    DATA(t217) = CAST zlnt_runtime_arra_c22708faf2e3( t215 ).
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = CAST zif_lnt_statement_runnable( t123 ).
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t220 TYPE REF TO object.
      t220 = t219.
      t218->oval = t220.
    ENDIF.
    APPEND t218 TO t217->items.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t222) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t223) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t224) = CAST zlnt_runtime_arra_c22708faf2e3( t215 ).
    t221 = zcl_lnt_st_combi_module=>alt( i_first = t222 i_second = t223 i_rest = t224 ).
    t172 = t221.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t225 TYPE REF TO object.
      t225 = t172.
      t171->oval = t225.
    ENDIF.
    APPEND t171 TO t170->items.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t162 ).
    DATA(t228) = CAST zlnt_runtime_dyna_a429568d5be8( t165 ).
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t227 i_second = t228 i_rest = t229 ).
    t161 = t226.
    t160 = t161.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t233->cval = t234.
    ENDIF.
    t232 = t233.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA(t243) = CAST zif_lnt_statement_runnable( t1 ).
    IF t243 IS BOUND.
      CREATE OBJECT t242.
      t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t244 TYPE REF TO object.
      t244 = t243.
      t242->oval = t244.
    ENDIF.
    t241 = t242.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = CAST zif_lnt_statement_runnable( t29 ).
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t248 TYPE REF TO object.
      t248 = t247.
      t246->oval = t248.
    ENDIF.
    t245 = t246.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t250.
    t249 = t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t252) = CAST zlnt_runtime_dyna_a429568d5be8( t241 ).
    DATA(t253) = CAST zlnt_runtime_dyna_a429568d5be8( t245 ).
    DATA(t254) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
    t251 = zcl_lnt_st_combi_module=>per( i_first = t252 i_second = t253 i_rest = t254 ).
    t240 = t251.
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t255 TYPE REF TO object.
      t255 = t240.
      t239->oval = t255.
    ENDIF.
    t238 = t239.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = CAST zif_lnt_statement_runnable( t58 ).
    IF t258 IS BOUND.
      CREATE OBJECT t257.
      t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t258.
      t257->oval = t259.
    ENDIF.
    t256 = t257.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t261.
    t260 = t261.
    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA(t264) = CAST zif_lnt_statement_runnable( t123 ).
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t265 TYPE REF TO object.
      t265 = t264.
      t263->oval = t265.
    ENDIF.
    APPEND t263 TO t262->items.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t267) = CAST zlnt_runtime_dyna_a429568d5be8( t238 ).
    DATA(t268) = CAST zlnt_runtime_dyna_a429568d5be8( t256 ).
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    t266 = zcl_lnt_st_combi_module=>alt( i_first = t267 i_second = t268 i_rest = t269 ).
    t237 = t266.
    IF t237 IS BOUND.
      CREATE OBJECT t236.
      t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t270 TYPE REF TO object.
      t270 = t237.
      t236->oval = t270.
    ENDIF.
    t235 = t236.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t272.
    t271 = t272.
    DATA(t273) = CAST zlnt_runtime_arra_c22708faf2e3( t271 ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA t275 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = CAST zif_lnt_statement_runnable( t92 ).
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t278 TYPE REF TO object.
      t278 = t277.
      t276->oval = t278.
    ENDIF.
    t275 = zcl_lnt_st_combi_module=>opt( i_first = t276 ).
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t279 TYPE REF TO object.
      t279 = t275.
      t274->oval = t279.
    ENDIF.
    APPEND t274 TO t273->items.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t281) = CAST zlnt_runtime_dyna_a429568d5be8( t232 ).
    DATA(t282) = CAST zlnt_runtime_dyna_a429568d5be8( t235 ).
    DATA(t283) = CAST zlnt_runtime_arra_c22708faf2e3( t271 ).
    t280 = zcl_lnt_st_combi_module=>seq( i_first = t281 i_second = t282 i_rest = t283 ).
    t231 = t280.
    t230 = t231.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t287->cval = t288.
    ENDIF.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA(t293) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d ).
    IF t293 IS BOUND.
      CREATE OBJECT t292.
      t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t292->cval = t293.
    ENDIF.
    t291 = zcl_lnt_st_combi_module=>opt_prio( i_first = t292 ).
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t294 TYPE REF TO object.
      t294 = t291.
      t290->oval = t294.
    ENDIF.
    t289 = t290.
    DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t296.
    t295 = t296.
    DATA(t297) = CAST zlnt_runtime_arra_c22708faf2e3( t295 ).
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba ).
    IF t301 IS BOUND.
      CREATE OBJECT t300.
      t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t300->cval = t301.
    ENDIF.
    t299 = zcl_lnt_st_combi_module=>opt_prio( i_first = t300 ).
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t302 TYPE REF TO object.
      t302 = t299.
      t298->oval = t302.
    ENDIF.
    APPEND t298 TO t297->items.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t304) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t305) = CAST zlnt_runtime_dyna_a429568d5be8( t289 ).
    DATA(t306) = CAST zlnt_runtime_arra_c22708faf2e3( t295 ).
    t303 = zcl_lnt_st_combi_module=>seq( i_first = t304 i_second = t305 i_rest = t306 ).
    t285 = t303.
    t284 = t285.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t311) = |ADJACENT DUPLICATES FROM|.
    CREATE OBJECT t310.
    t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t310->sval = t311.
    t309 = t310.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t313->cval = t314.
    ENDIF.
    t312 = t313.
    DATA t315 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t316.
    t315 = t316.
    DATA(t317) = CAST zlnt_runtime_arra_c22708faf2e3( t315 ).
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = CAST zif_lnt_statement_runnable( t29 ).
    IF t321 IS BOUND.
      CREATE OBJECT t320.
      t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t322 TYPE REF TO object.
      t322 = t321.
      t320->oval = t322.
    ENDIF.
    t319 = zcl_lnt_st_combi_module=>opt_prio( i_first = t320 ).
    IF t319 IS BOUND.
      CREATE OBJECT t318.
      t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t323 TYPE REF TO object.
      t323 = t319.
      t318->oval = t323.
    ENDIF.
    APPEND t318 TO t317->items.
    DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t315 ).
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t326.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t331) = |COMPARING|.
    CREATE OBJECT t330.
    t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t330->sval = t331.
    t329 = t330.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t337) = |ALL FIELDS|.
    CREATE OBJECT t336.
    t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t336->sval = t337.
    t335 = t336.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = CAST zif_lnt_statement_runnable( t284 ).
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t346 TYPE REF TO object.
      t346 = t345.
      t344->oval = t346.
    ENDIF.
    t343 = t344.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA(t349) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t349 IS BOUND.
      CREATE OBJECT t348.
      t348->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t348->cval = t349.
    ENDIF.
    t347 = t348.
    DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t351.
    t350 = t351.
    DATA t352 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t353) = CAST zlnt_runtime_dyna_a429568d5be8( t343 ).
    DATA(t354) = CAST zlnt_runtime_dyna_a429568d5be8( t347 ).
    DATA(t355) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    t352 = zcl_lnt_st_combi_module=>alt_prio( i_first = t353 i_second = t354 i_rest = t355 ).
    t342 = t352.
    IF t342 IS BOUND.
      CREATE OBJECT t341.
      t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t356 TYPE REF TO object.
      t356 = t342.
      t341->oval = t356.
    ENDIF.
    t340 = zcl_lnt_st_combi_module=>plus( i_first = t341 ).
    IF t340 IS BOUND.
      CREATE OBJECT t339.
      t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t357 TYPE REF TO object.
      t357 = t340.
      t339->oval = t357.
    ENDIF.
    t338 = t339.
    DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t359.
    t358 = t359.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t361) = CAST zlnt_runtime_dyna_a429568d5be8( t335 ).
    DATA(t362) = CAST zlnt_runtime_dyna_a429568d5be8( t338 ).
    DATA(t363) = CAST zlnt_runtime_arra_c22708faf2e3( t358 ).
    t360 = zcl_lnt_st_combi_module=>alt_prio( i_first = t361 i_second = t362 i_rest = t363 ).
    t334 = t360.
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t364 TYPE REF TO object.
      t364 = t334.
      t333->oval = t364.
    ENDIF.
    t332 = t333.
    DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t366.
    t365 = t366.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t368) = CAST zlnt_runtime_dyna_a429568d5be8( t329 ).
    DATA(t369) = CAST zlnt_runtime_dyna_a429568d5be8( t332 ).
    DATA(t370) = CAST zlnt_runtime_arra_c22708faf2e3( t365 ).
    t367 = zcl_lnt_st_combi_module=>seq( i_first = t368 i_second = t369 i_rest = t370 ).
    t328 = t367.
    IF t328 IS BOUND.
      CREATE OBJECT t327.
      t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t371 TYPE REF TO object.
      t371 = t328.
      t327->oval = t371.
    ENDIF.
    t326 = zcl_lnt_st_combi_module=>opt( i_first = t327 ).
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t372 TYPE REF TO object.
      t372 = t326.
      t325->oval = t372.
    ENDIF.
    APPEND t325 TO t324->items.
    DATA(t373) = CAST zlnt_runtime_arra_c22708faf2e3( t315 ).
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t375.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA(t377) = CAST zif_lnt_statement_runnable( t29 ).
    IF t377 IS BOUND.
      CREATE OBJECT t376.
      t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t378 TYPE REF TO object.
      t378 = t377.
      t376->oval = t378.
    ENDIF.
    t375 = zcl_lnt_st_combi_module=>opt_prio( i_first = t376 ).
    IF t375 IS BOUND.
      CREATE OBJECT t374.
      t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t379 TYPE REF TO object.
      t379 = t375.
      t374->oval = t379.
    ENDIF.
    APPEND t374 TO t373->items.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t381) = CAST zlnt_runtime_dyna_a429568d5be8( t309 ).
    DATA(t382) = CAST zlnt_runtime_dyna_a429568d5be8( t312 ).
    DATA(t383) = CAST zlnt_runtime_arra_c22708faf2e3( t315 ).
    t380 = zcl_lnt_st_combi_module=>seq( i_first = t381 i_second = t382 i_rest = t383 ).
    t308 = t380.
    t307 = t308.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t387) = |DELETE|.
    CREATE OBJECT t386.
    t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t386->sval = t387.
    t385 = t386.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA(t393) = CAST zif_lnt_statement_runnable( t160 ).
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t394 TYPE REF TO object.
      t394 = t393.
      t392->oval = t394.
    ENDIF.
    t391 = t392.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA(t397) = CAST zif_lnt_statement_runnable( t307 ).
    IF t397 IS BOUND.
      CREATE OBJECT t396.
      t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t398 TYPE REF TO object.
      t398 = t397.
      t396->oval = t398.
    ENDIF.
    t395 = t396.
    DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t400.
    t399 = t400.
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t399 ).
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = CAST zif_lnt_statement_runnable( t230 ).
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t404 TYPE REF TO object.
      t404 = t403.
      t402->oval = t404.
    ENDIF.
    APPEND t402 TO t401->items.
    DATA t405 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t406) = CAST zlnt_runtime_dyna_a429568d5be8( t391 ).
    DATA(t407) = CAST zlnt_runtime_dyna_a429568d5be8( t395 ).
    DATA(t408) = CAST zlnt_runtime_arra_c22708faf2e3( t399 ).
    t405 = zcl_lnt_st_combi_module=>alt( i_first = t406 i_second = t407 i_rest = t408 ).
    t390 = t405.
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t409 TYPE REF TO object.
      t409 = t390.
      t389->oval = t409.
    ENDIF.
    t388 = t389.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t411.
    t410 = t411.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t413) = CAST zlnt_runtime_dyna_a429568d5be8( t385 ).
    DATA(t414) = CAST zlnt_runtime_dyna_a429568d5be8( t388 ).
    DATA(t415) = CAST zlnt_runtime_arra_c22708faf2e3( t410 ).
    t412 = zcl_lnt_st_combi_module=>seq( i_first = t413 i_second = t414 i_rest = t415 ).
    t384 = t412.
    result = t384.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d428_511c28b0360e.
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
