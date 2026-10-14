* TS: src/abap/2_statements/statements/read_table.ts:8:1 ReadTable
CLASS zcl_lnt_st_read_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_read_table IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |COMPARING|.
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
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = zcl_lnt_st_combi_module=>plus( i_first = t12 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t14 TYPE REF TO object.
      t14 = t11.
      t10->oval = t14.
    ENDIF.
    t9 = t10.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t17 = zcl_lnt_st_combi_module=>plus( i_first = t18 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t20 TYPE REF TO object.
      t20 = t17.
      t16->oval = t20.
    ENDIF.
    t15 = t16.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    t21 = t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t21 ).
    t23 = zcl_lnt_st_combi_module=>alt( i_first = t24 i_second = t25 i_rest = t26 ).
    t8 = t23.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t8.
      t7->oval = t27.
    ENDIF.
    t6 = t7.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    t30 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t32 i_rest = t33 ).
    t2 = t30.
    t1 = t2.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |INDEX|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    t39 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    t42 = t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t35 = t44.
    t34 = t35.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA(t53) = |KeyUser|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
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
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t64 = zcl_lnt_st_combi_module=>alt( i_first = t65 i_second = t66 i_rest = t67 ).
    t55 = t64.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t55.
      t54->oval = t68.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t53 i_first = t54 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t52.
      t51->oval = t69.
    ENDIF.
    t50 = t51.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = |COMPONENTS|.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = t72.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t73 = t74.
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    APPEND t76 TO t75->items.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t80) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t80 i_rest = t81 ).
    t49 = t78.
    t48 = t49.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |WITH KEY|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = |WITH TABLE KEY|.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t93 = t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t90 ).
    DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    t95 = zcl_lnt_st_combi_module=>alt_prio( i_first = t96 i_second = t97 i_rest = t98 ).
    t86 = t95.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t99 TYPE REF TO object.
      t99 = t86.
      t85->oval = t99.
    ENDIF.
    t84 = t85.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7 ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zif_lnt_statement_runnable( t48 ).
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
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = |=|.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    t117 = zcl_lnt_st_combi_module=>opt_prio( i_first = t118 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t117.
      t116->oval = t120.
    ENDIF.
    t115 = t116.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t122->cval = t123.
    ENDIF.
    t121 = t122.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t125.
    t124 = t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t128) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t129) = CAST zlnt_runtime_arra_c22708faf2e3( t124 ).
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t127 i_second = t128 i_rest = t129 ).
    t114 = t126.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t114.
      t113->oval = t130.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t134) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t131 = zcl_lnt_st_combi_module=>alt( i_first = t132 i_second = t133 i_rest = t134 ).
    t102 = t131.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t135 TYPE REF TO object.
      t135 = t102.
      t101->oval = t135.
    ENDIF.
    t100 = t101.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    t136 = t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t139) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t140) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t136 ).
    t138 = zcl_lnt_st_combi_module=>seq( i_first = t139 i_second = t140 i_rest = t141 ).
    t83 = t138.
    t82 = t83.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t146) = |USING KEY|.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = t146.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t151->cval = t152.
    ENDIF.
    t150 = t151.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA(t156) = |KeyUser|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t155 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t156 i_first = t157 ).
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t155.
      t154->oval = t159.
    ENDIF.
    t153 = t154.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t161.
    t160 = t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t150 ).
    DATA(t164) = CAST zlnt_runtime_dyna_a429568d5be8( t153 ).
    DATA(t165) = CAST zlnt_runtime_arra_c22708faf2e3( t160 ).
    t162 = zcl_lnt_st_combi_module=>alt( i_first = t163 i_second = t164 i_rest = t165 ).
    t149 = t162.
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t149.
      t148->oval = t166.
    ENDIF.
    t147 = t148.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t168.
    t167 = t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
    DATA(t171) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t167 ).
    t169 = zcl_lnt_st_combi_module=>seq( i_first = t170 i_second = t171 i_rest = t172 ).
    t143 = t169.
    t142 = t143.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = |FROM|.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    t175 = t176.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t179->cval = t180.
    ENDIF.
    t178 = t179.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    t181 = t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t184) = CAST zlnt_runtime_dyna_a429568d5be8( t175 ).
    DATA(t185) = CAST zlnt_runtime_dyna_a429568d5be8( t178 ).
    DATA(t186) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    t183 = zcl_lnt_st_combi_module=>seq( i_first = t184 i_second = t185 i_rest = t186 ).
    t174 = t183.
    t173 = t174.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t191) = |TRANSPORTING|.
    CREATE OBJECT t190.
    t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t190->sval = t191.
    t189 = t190.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t197) = |ALL FIELDS|.
    CREATE OBJECT t196.
    t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t196->sval = t197.
    t195 = t196.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t200) = |NO FIELDS|.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = t200.
    t198 = t199.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t202.
    t201 = t202.
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA(t205) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d334_bd47c7b95e69 ).
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t204->cval = t205.
    ENDIF.
    APPEND t204 TO t203->items.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t195 ).
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t198 ).
    DATA(t209) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
    t206 = zcl_lnt_st_combi_module=>alt_prio( i_first = t207 i_second = t208 i_rest = t209 ).
    t194 = t206.
    IF t194 IS BOUND.
      CREATE OBJECT t193.
      t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t210 TYPE REF TO object.
      t210 = t194.
      t193->oval = t210.
    ENDIF.
    t192 = t193.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    t211 = t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t214) = CAST zlnt_runtime_dyna_a429568d5be8( t189 ).
    DATA(t215) = CAST zlnt_runtime_dyna_a429568d5be8( t192 ).
    DATA(t216) = CAST zlnt_runtime_arra_c22708faf2e3( t211 ).
    t213 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t215 i_rest = t216 ).
    t188 = t213.
    t187 = t188.
    DATA t217 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    DATA t218 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    DATA(t219) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d243_4c26f150237d ).
    DATA(t220) = CAST zif_lnt_statement_runnable( t1 ).
    DATA(t221) = |CASTING|.
    DATA(t222) = CAST zif_lnt_statement_runnable( t187 ).
    DATA(t223) = |BINARY SEARCH|.
    t218 = NEW zcl_lnt_tuple_cc45ee1d( i_f0 = t219 i_f1 = t220 i_f2 = t221 i_f3 = t222 i_f4 = t223 ).
    t217 = t218.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = CAST zif_lnt_statement_runnable( t34 ).
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t235 TYPE REF TO object.
      t235 = t234.
      t233->oval = t235.
    ENDIF.
    t232 = t233.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = CAST zif_lnt_statement_runnable( t173 ).
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t238.
      t237->oval = t239.
    ENDIF.
    t236 = t237.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    t240 = t241.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t243) = CAST zlnt_runtime_dyna_a429568d5be8( t232 ).
    DATA(t244) = CAST zlnt_runtime_dyna_a429568d5be8( t236 ).
    DATA(t245) = CAST zlnt_runtime_arra_c22708faf2e3( t240 ).
    t242 = zcl_lnt_st_combi_module=>alt( i_first = t243 i_second = t244 i_rest = t245 ).
    t231 = t242.
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t231.
      t230->oval = t246.
    ENDIF.
    t229 = t230.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = CAST zif_lnt_statement_runnable( t142 ).
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t250 TYPE REF TO object.
      t250 = t249.
      t248->oval = t250.
    ENDIF.
    t247 = t248.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t252.
    t251 = t252.
    DATA t253 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    DATA(t254) = CAST zcl_lnt_tuple_cc45ee1d( t217 ).
    t253 = t254.
    DATA(t255) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t258) = CAST zcl_lnt_tuple_cc45ee1d( t253 ).
    t257 = t258->f0.
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t256->cval = t257.
    ENDIF.
    APPEND t256 TO t255->items.
    DATA(t259) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t262) = CAST zcl_lnt_tuple_cc45ee1d( t253 ).
    t261 = t262->f1.
    IF t261 IS BOUND.
      CREATE OBJECT t260.
      t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t263 TYPE REF TO object.
      t263 = t261.
      t260->oval = t263.
    ENDIF.
    APPEND t260 TO t259->items.
    DATA(t264) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t266 TYPE string.
    DATA(t267) = CAST zcl_lnt_tuple_cc45ee1d( t253 ).
    t266 = t267->f2.
    CREATE OBJECT t265.
    t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t265->sval = t266.
    APPEND t265 TO t264->items.
    DATA(t268) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t271) = CAST zcl_lnt_tuple_cc45ee1d( t253 ).
    t270 = t271->f3.
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t272 TYPE REF TO object.
      t272 = t270.
      t269->oval = t272.
    ENDIF.
    APPEND t269 TO t268->items.
    DATA(t273) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t275 TYPE string.
    DATA(t276) = CAST zcl_lnt_tuple_cc45ee1d( t253 ).
    t275 = t276->f4.
    CREATE OBJECT t274.
    t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t274->sval = t275.
    APPEND t274 TO t273->items.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t278) = CAST zlnt_runtime_dyna_a429568d5be8( t229 ).
    DATA(t279) = CAST zlnt_runtime_dyna_a429568d5be8( t247 ).
    DATA(t280) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    t277 = zcl_lnt_st_combi_module=>per( i_first = t278 i_second = t279 i_rest = t280 ).
    t228 = t277.
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t281 TYPE REF TO object.
      t281 = t228.
      t227->oval = t281.
    ENDIF.
    t226 = t227.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t286) = CAST zif_lnt_statement_runnable( t82 ).
    t285 = t286.
    DATA t287 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    DATA(t288) = CAST zcl_lnt_tuple_cc45ee1d( t217 ).
    t287 = t288.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t290.
    t289 = t290.
    DATA(t291) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t294) = CAST zcl_lnt_tuple_cc45ee1d( t287 ).
    t293 = t294->f1.
    IF t293 IS BOUND.
      CREATE OBJECT t292.
      t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t295 TYPE REF TO object.
      t295 = t293.
      t292->oval = t295.
    ENDIF.
    APPEND t292 TO t291->items.
    DATA(t296) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t298 TYPE string.
    DATA(t299) = CAST zcl_lnt_tuple_cc45ee1d( t287 ).
    t298 = t299->f2.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = t298.
    APPEND t297 TO t296->items.
    DATA(t300) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t303) = CAST zcl_lnt_tuple_cc45ee1d( t287 ).
    t302 = t303->f3.
    IF t302 IS BOUND.
      CREATE OBJECT t301.
      t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t304 TYPE REF TO object.
      t304 = t302.
      t301->oval = t304.
    ENDIF.
    APPEND t301 TO t300->items.
    DATA(t305) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE string.
    DATA(t308) = CAST zcl_lnt_tuple_cc45ee1d( t287 ).
    t307 = t308->f4.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = t307.
    APPEND t306 TO t305->items.
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = CAST zif_lnt_statement_runnable( t285 ).
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t312 TYPE REF TO object.
      t312 = t311.
      t310->oval = t312.
    ENDIF.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA t314 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t315) = CAST zcl_lnt_tuple_cc45ee1d( t287 ).
    t314 = t315->f0.
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t313->cval = t314.
    ENDIF.
    DATA(t316) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    t309 = zcl_lnt_st_combi_module=>per( i_first = t310 i_second = t313 i_rest = t316 ).
    t284 = t309.
    IF t284 IS BOUND.
      CREATE OBJECT t283.
      t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t317 TYPE REF TO object.
      t317 = t284.
      t283->oval = t317.
    ENDIF.
    t282 = t283.
    DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t319.
    t318 = t319.
    DATA(t320) = CAST zlnt_runtime_arra_c22708faf2e3( t318 ).
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA t323 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    DATA(t324) = CAST zcl_lnt_tuple_cc45ee1d( t217 ).
    t323 = t324.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t326.
    t325 = t326.
    DATA(t327) = CAST zlnt_runtime_arra_c22708faf2e3( t325 ).
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t329 TYPE string.
    DATA(t330) = CAST zcl_lnt_tuple_cc45ee1d( t323 ).
    t329 = t330->f2.
    CREATE OBJECT t328.
    t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t328->sval = t329.
    APPEND t328 TO t327->items.
    DATA(t331) = CAST zlnt_runtime_arra_c22708faf2e3( t325 ).
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t334) = CAST zcl_lnt_tuple_cc45ee1d( t323 ).
    t333 = t334->f3.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t335 TYPE REF TO object.
      t335 = t333.
      t332->oval = t335.
    ENDIF.
    APPEND t332 TO t331->items.
    DATA(t336) = CAST zlnt_runtime_arra_c22708faf2e3( t325 ).
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t338 TYPE string.
    DATA(t339) = CAST zcl_lnt_tuple_cc45ee1d( t323 ).
    t338 = t339->f4.
    CREATE OBJECT t337.
    t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t337->sval = t338.
    APPEND t337 TO t336->items.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t343) = CAST zcl_lnt_tuple_cc45ee1d( t323 ).
    t342 = t343->f0.
    IF t342 IS BOUND.
      CREATE OBJECT t341.
      t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t341->cval = t342.
    ENDIF.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t346) = CAST zcl_lnt_tuple_cc45ee1d( t323 ).
    t345 = t346->f1.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t347 TYPE REF TO object.
      t347 = t345.
      t344->oval = t347.
    ENDIF.
    DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t325 ).
    t340 = zcl_lnt_st_combi_module=>per( i_first = t341 i_second = t344 i_rest = t348 ).
    t322 = t340.
    IF t322 IS BOUND.
      CREATE OBJECT t321.
      t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t349 TYPE REF TO object.
      t349 = t322.
      t321->oval = t349.
    ENDIF.
    APPEND t321 TO t320->items.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t351) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t352) = CAST zlnt_runtime_dyna_a429568d5be8( t282 ).
    DATA(t353) = CAST zlnt_runtime_arra_c22708faf2e3( t318 ).
    t350 = zcl_lnt_st_combi_module=>alt( i_first = t351 i_second = t352 i_rest = t353 ).
    t225 = t350.
    t224 = t225.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t357) = |READ TABLE|.
    CREATE OBJECT t356.
    t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t356->sval = t357.
    t355 = t356.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t360.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA(t363) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2 ).
    IF t363 IS BOUND.
      CREATE OBJECT t362.
      t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t362->cval = t363.
    ENDIF.
    t361 = t362.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t368.
    DATA t369 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t370.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t370 = zcl_lnt_version_module=>release_b8cd.
    DATA(t371) = |v740sp02|.
    t369 = t370->get( p0 = t371 ).
    t368 = t369.
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t372 TYPE REF TO object.
      t372 = t368.
      t367->oval = t372.
    ENDIF.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA(t374) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t374 IS BOUND.
      CREATE OBJECT t373.
      t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t373->cval = t374.
    ENDIF.
    DATA t375 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t375.
    DATA(t376) = abap_true.
    IF t376 = abap_true.
      DATA t377 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t377.
      DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t378.
      DATA(t379) = abap_true.
      IF t379 = abap_true.
        DATA(t380) = |OpenABAP|.
        DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t381->has = abap_true.
        t381->value = t380.
        t378 = t381.
      ELSE.
        DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t382.
        t378 = t382.
      ENDIF.
      t377 = NEW zcl_lnt_iver_options( i_also = t378 ).
      t375 = t377.
    ELSE.
      DATA t383 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t383.
      t375 = t383.
    ENDIF.
    t366 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t367 i_first = t373 i_opts = t375 ).
    IF t366 IS BOUND.
      CREATE OBJECT t365.
      t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t384 TYPE REF TO object.
      t384 = t366.
      t365->oval = t384.
    ENDIF.
    t364 = t365.
    DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t386.
    t385 = t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t388) = CAST zlnt_runtime_dyna_a429568d5be8( t361 ).
    DATA(t389) = CAST zlnt_runtime_dyna_a429568d5be8( t364 ).
    DATA(t390) = CAST zlnt_runtime_arra_c22708faf2e3( t385 ).
    t387 = zcl_lnt_st_combi_module=>alt( i_first = t388 i_second = t389 i_rest = t390 ).
    t360 = t387.
    IF t360 IS BOUND.
      CREATE OBJECT t359.
      t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t391 TYPE REF TO object.
      t391 = t360.
      t359->oval = t391.
    ENDIF.
    t358 = t359.
    DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t393.
    t392 = t393.
    DATA(t394) = CAST zlnt_runtime_arra_c22708faf2e3( t392 ).
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA(t398) = CAST zif_lnt_statement_runnable( t224 ).
    IF t398 IS BOUND.
      CREATE OBJECT t397.
      t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t399 TYPE REF TO object.
      t399 = t398.
      t397->oval = t399.
    ENDIF.
    t396 = zcl_lnt_st_combi_module=>opt( i_first = t397 ).
    IF t396 IS BOUND.
      CREATE OBJECT t395.
      t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t400 TYPE REF TO object.
      t400 = t396.
      t395->oval = t400.
    ENDIF.
    APPEND t395 TO t394->items.
    DATA t401 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t402) = CAST zlnt_runtime_dyna_a429568d5be8( t355 ).
    DATA(t403) = CAST zlnt_runtime_dyna_a429568d5be8( t358 ).
    DATA(t404) = CAST zlnt_runtime_arra_c22708faf2e3( t392 ).
    t401 = zcl_lnt_st_combi_module=>seq( i_first = t402 i_second = t403 i_rest = t404 ).
    t354 = t401.
    result = t354.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d577_96008512c3b0.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
