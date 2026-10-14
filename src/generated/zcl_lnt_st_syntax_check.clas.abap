* TS: src/abap/2_statements/statements/syntax_check.ts:7:1 SyntaxCheck
CLASS zcl_lnt_st_syntax_check DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_syntax_check IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |PROGRAM|.
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
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |OFFSET|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
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
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |FRAME ENTRY|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t41 i_rest = t42 ).
    t30 = t39.
    t29 = t30.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |INCLUDE|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t51 ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t44 = t53.
    t43 = t44.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = |TRACE-TABLE|.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t58 = t67.
    t57 = t58.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t75) = |LINE|.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = t75.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    t76 = t77.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t79 = t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t73 ).
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t79 ).
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t83 i_rest = t84 ).
    t72 = t81.
    t71 = t72.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |WORD|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t93 = t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t90 ).
    DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t97 i_rest = t98 ).
    t86 = t95.
    t85 = t86.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = |MESSAGE-ID|.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    t107 = t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t104 ).
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t107 ).
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t100 = t109.
    t99 = t100.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = |MESSAGE|.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    t115 = t116.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t119->cval = t120.
    ENDIF.
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t121 = t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t125) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t126) = CAST zlnt_runtime_arra_c22708faf2e3( t121 ).
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t124 i_second = t125 i_rest = t126 ).
    t114 = t123.
    t113 = t114.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = |ID|.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t133->cval = t134.
    ENDIF.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    t135 = t136.
    DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = |TABLE|.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
    APPEND t138 TO t137->items.
    DATA(t140) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA(t142) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t141->cval = t142.
    ENDIF.
    APPEND t141 TO t140->items.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t132 ).
    DATA(t146) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    t143 = zcl_lnt_st_combi_module=>seq( i_first = t144 i_second = t145 i_rest = t146 ).
    t128 = t143.
    t127 = t128.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t151) = |REPLACING|.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    t152 = t153.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t156.
    t155 = t156.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t158) = CAST zlnt_runtime_dyna_a429568d5be8( t149 ).
    DATA(t159) = CAST zlnt_runtime_dyna_a429568d5be8( t152 ).
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t155 ).
    t157 = zcl_lnt_st_combi_module=>seq( i_first = t158 i_second = t159 i_rest = t160 ).
    t148 = t157.
    t147 = t148.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = |DIRECTORY ENTRY|.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = t165.
    t163 = t164.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    t166 = t167.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    t169 = t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t172) = CAST zlnt_runtime_dyna_a429568d5be8( t163 ).
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t166 ).
    DATA(t174) = CAST zlnt_runtime_arra_c22708faf2e3( t169 ).
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t172 i_second = t173 i_rest = t174 ).
    t162 = t171.
    t161 = t162.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t179) = |SHORTDUMP-ID|.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t179.
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t181->cval = t182.
    ENDIF.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t184.
    t183 = t184.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t177 ).
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t188) = CAST zlnt_runtime_arra_c22708faf2e3( t183 ).
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t187 i_rest = t188 ).
    t176 = t185.
    t175 = t176.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t193) = |FILTER|.
    CREATE OBJECT t192.
    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t192->sval = t193.
    t191 = t192.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t195->cval = t196.
    ENDIF.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t198.
    t197 = t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t201) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t197 ).
    t199 = zcl_lnt_st_combi_module=>seq( i_first = t200 i_second = t201 i_rest = t202 ).
    t190 = t199.
    t189 = t190.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t209) = |PROGRAM|.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207 = zcl_lnt_st_combi_module=>opt_prio( i_first = t208 ).
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t210 TYPE REF TO object.
      t210 = t207.
      t206->oval = t210.
    ENDIF.
    t205 = t206.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t215.
    t214 = t215.
    DATA(t216) = CAST zlnt_runtime_arra_c22708faf2e3( t214 ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA(t221) = CAST zif_lnt_statement_runnable( t113 ).
    IF t221 IS BOUND.
      CREATE OBJECT t220.
      t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t222 TYPE REF TO object.
      t222 = t221.
      t220->oval = t222.
    ENDIF.
    t219 = t220.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = CAST zif_lnt_statement_runnable( t71 ).
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t226 TYPE REF TO object.
      t226 = t225.
      t224->oval = t226.
    ENDIF.
    t223 = t224.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t227 = t228.
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = CAST zif_lnt_statement_runnable( t85 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t232 TYPE REF TO object.
      t232 = t231.
      t230->oval = t232.
    ENDIF.
    APPEND t230 TO t229->items.
    DATA(t233) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = CAST zif_lnt_statement_runnable( t15 ).
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t235.
      t234->oval = t236.
    ENDIF.
    APPEND t234 TO t233->items.
    DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = CAST zif_lnt_statement_runnable( t1 ).
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t240 TYPE REF TO object.
      t240 = t239.
      t238->oval = t240.
    ENDIF.
    APPEND t238 TO t237->items.
    DATA(t241) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA(t243) = CAST zif_lnt_statement_runnable( t147 ).
    IF t243 IS BOUND.
      CREATE OBJECT t242.
      t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t244 TYPE REF TO object.
      t244 = t243.
      t242->oval = t244.
    ENDIF.
    APPEND t242 TO t241->items.
    DATA(t245) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = CAST zif_lnt_statement_runnable( t161 ).
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t248 TYPE REF TO object.
      t248 = t247.
      t246->oval = t248.
    ENDIF.
    APPEND t246 TO t245->items.
    DATA(t249) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = CAST zif_lnt_statement_runnable( t29 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t251.
      t250->oval = t252.
    ENDIF.
    APPEND t250 TO t249->items.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zif_lnt_statement_runnable( t43 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t255.
      t254->oval = t256.
    ENDIF.
    APPEND t254 TO t253->items.
    DATA(t257) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = CAST zif_lnt_statement_runnable( t99 ).
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t260 TYPE REF TO object.
      t260 = t259.
      t258->oval = t260.
    ENDIF.
    APPEND t258 TO t257->items.
    DATA(t261) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = CAST zif_lnt_statement_runnable( t57 ).
    IF t263 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t264 TYPE REF TO object.
      t264 = t263.
      t262->oval = t264.
    ENDIF.
    APPEND t262 TO t261->items.
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA(t267) = CAST zif_lnt_statement_runnable( t175 ).
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t268 TYPE REF TO object.
      t268 = t267.
      t266->oval = t268.
    ENDIF.
    APPEND t266 TO t265->items.
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = CAST zif_lnt_statement_runnable( t189 ).
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t272 TYPE REF TO object.
      t272 = t271.
      t270->oval = t272.
    ENDIF.
    APPEND t270 TO t269->items.
    DATA(t273) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA t275 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = CAST zif_lnt_statement_runnable( t127 ).
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t278 TYPE REF TO object.
      t278 = t277.
      t276->oval = t278.
    ENDIF.
    t275 = zcl_lnt_st_combi_module=>plus( i_first = t276 ).
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t279 TYPE REF TO object.
      t279 = t275.
      t274->oval = t279.
    ENDIF.
    APPEND t274 TO t273->items.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t281) = CAST zlnt_runtime_dyna_a429568d5be8( t219 ).
    DATA(t282) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t283) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    t280 = zcl_lnt_st_combi_module=>per( i_first = t281 i_second = t282 i_rest = t283 ).
    t218 = t280.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t284 TYPE REF TO object.
      t284 = t218.
      t217->oval = t284.
    ENDIF.
    APPEND t217 TO t216->items.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t286) = CAST zlnt_runtime_dyna_a429568d5be8( t205 ).
    DATA(t287) = CAST zlnt_runtime_dyna_a429568d5be8( t211 ).
    DATA(t288) = CAST zlnt_runtime_arra_c22708faf2e3( t214 ).
    t285 = zcl_lnt_st_combi_module=>seq( i_first = t286 i_second = t287 i_rest = t288 ).
    t204 = t285.
    t203 = t204.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t293) = |DYNPRO|.
    CREATE OBJECT t292.
    t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t292->sval = t293.
    t291 = t292.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA(t296) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t296 IS BOUND.
      CREATE OBJECT t295.
      t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t295->cval = t296.
    ENDIF.
    t294 = t295.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t298.
    t297 = t298.
    DATA(t299) = CAST zlnt_runtime_arra_c22708faf2e3( t297 ).
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t301 IS BOUND.
      CREATE OBJECT t300.
      t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t300->cval = t301.
    ENDIF.
    APPEND t300 TO t299->items.
    DATA(t302) = CAST zlnt_runtime_arra_c22708faf2e3( t297 ).
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA(t304) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t304 IS BOUND.
      CREATE OBJECT t303.
      t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t303->cval = t304.
    ENDIF.
    APPEND t303 TO t302->items.
    DATA(t305) = CAST zlnt_runtime_arra_c22708faf2e3( t297 ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t307 IS BOUND.
      CREATE OBJECT t306.
      t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t306->cval = t307.
    ENDIF.
    APPEND t306 TO t305->items.
    DATA(t308) = CAST zlnt_runtime_arra_c22708faf2e3( t297 ).
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = CAST zif_lnt_statement_runnable( t113 ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t314 TYPE REF TO object.
      t314 = t313.
      t312->oval = t314.
    ENDIF.
    t311 = t312.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = CAST zif_lnt_statement_runnable( t71 ).
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t317.
      t316->oval = t318.
    ENDIF.
    t315 = t316.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t320.
    t319 = t320.
    DATA(t321) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = CAST zif_lnt_statement_runnable( t85 ).
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t324 TYPE REF TO object.
      t324 = t323.
      t322->oval = t324.
    ENDIF.
    APPEND t322 TO t321->items.
    DATA(t325) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA(t327) = CAST zif_lnt_statement_runnable( t15 ).
    IF t327 IS BOUND.
      CREATE OBJECT t326.
      t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t328 TYPE REF TO object.
      t328 = t327.
      t326->oval = t328.
    ENDIF.
    APPEND t326 TO t325->items.
    DATA(t329) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA(t331) = CAST zif_lnt_statement_runnable( t99 ).
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t332 TYPE REF TO object.
      t332 = t331.
      t330->oval = t332.
    ENDIF.
    APPEND t330 TO t329->items.
    DATA(t333) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA(t335) = CAST zif_lnt_statement_runnable( t57 ).
    IF t335 IS BOUND.
      CREATE OBJECT t334.
      t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t336 TYPE REF TO object.
      t336 = t335.
      t334->oval = t336.
    ENDIF.
    APPEND t334 TO t333->items.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t338) = CAST zlnt_runtime_dyna_a429568d5be8( t311 ).
    DATA(t339) = CAST zlnt_runtime_dyna_a429568d5be8( t315 ).
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    t337 = zcl_lnt_st_combi_module=>per( i_first = t338 i_second = t339 i_rest = t340 ).
    t310 = t337.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t341 TYPE REF TO object.
      t341 = t310.
      t309->oval = t341.
    ENDIF.
    APPEND t309 TO t308->items.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t343) = CAST zlnt_runtime_dyna_a429568d5be8( t291 ).
    DATA(t344) = CAST zlnt_runtime_dyna_a429568d5be8( t294 ).
    DATA(t345) = CAST zlnt_runtime_arra_c22708faf2e3( t297 ).
    t342 = zcl_lnt_st_combi_module=>seq( i_first = t343 i_second = t344 i_rest = t345 ).
    t290 = t342.
    t289 = t290.
    DATA t346 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t350) = |SYNTAX-CHECK FOR|.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = t350.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA(t356) = CAST zif_lnt_statement_runnable( t203 ).
    IF t356 IS BOUND.
      CREATE OBJECT t355.
      t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t357 TYPE REF TO object.
      t357 = t356.
      t355->oval = t357.
    ENDIF.
    t354 = t355.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA(t360) = CAST zif_lnt_statement_runnable( t289 ).
    IF t360 IS BOUND.
      CREATE OBJECT t359.
      t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t361 TYPE REF TO object.
      t361 = t360.
      t359->oval = t361.
    ENDIF.
    t358 = t359.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t363 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t363.
    t362 = t363.
    DATA t364 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t365) = CAST zlnt_runtime_dyna_a429568d5be8( t354 ).
    DATA(t366) = CAST zlnt_runtime_dyna_a429568d5be8( t358 ).
    DATA(t367) = CAST zlnt_runtime_arra_c22708faf2e3( t362 ).
    t364 = zcl_lnt_st_combi_module=>alt( i_first = t365 i_second = t366 i_rest = t367 ).
    t353 = t364.
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t368 TYPE REF TO object.
      t368 = t353.
      t352->oval = t368.
    ENDIF.
    t351 = t352.
    DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t370.
    t369 = t370.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t372) = CAST zlnt_runtime_dyna_a429568d5be8( t348 ).
    DATA(t373) = CAST zlnt_runtime_dyna_a429568d5be8( t351 ).
    DATA(t374) = CAST zlnt_runtime_arra_c22708faf2e3( t369 ).
    t371 = zcl_lnt_st_combi_module=>seq( i_first = t372 i_second = t373 i_rest = t374 ).
    t347 = t371.
    t346 = t347.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t375.
    DATA(t376) = |Cloud|.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA(t378) = CAST zif_lnt_statement_runnable( t346 ).
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t379 TYPE REF TO object.
      t379 = t378.
      t377->oval = t379.
    ENDIF.
    t375 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t376 i_first = t377 ).
    result = t375.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d635_768248399129.
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
