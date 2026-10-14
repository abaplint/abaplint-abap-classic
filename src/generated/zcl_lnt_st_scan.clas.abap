* TS: src/abap/2_statements/statements/scan.ts:7:1 Scan
CLASS zcl_lnt_st_scan DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_scan IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |TOKENS INTO|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
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
    DATA(t19) = |WORD INTO|.
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
    DATA(t33) = |LINE INTO|.
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
    DATA(t47) = |STATEMENTS INTO|.
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
    DATA(t61) = |LEVELS INTO|.
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
    DATA(t75) = |STRUCTURES INTO|.
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
    DATA(t89) = |INCLUDE INTO|.
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
    DATA(t103) = |OFFSET INTO|.
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
    DATA(t117) = |ENHANCEMENTS INTO|.
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
    DATA(t131) = |ENHANCEMENT OPTIONS INTO|.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
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
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t138) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
    DATA(t139) = CAST zlnt_runtime_dyna_a429568d5be8( t132 ).
    DATA(t140) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t139 i_rest = t140 ).
    t128 = t137.
    t127 = t128.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t145) = |KEYWORDS FROM|.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = t145.
    t143 = t144.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t143 ).
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t146 ).
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t153 i_rest = t154 ).
    t142 = t151.
    t141 = t142.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = |WITH PRAGMAS|.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t163 = t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t157 ).
    DATA(t167) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t168) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    t165 = zcl_lnt_st_combi_module=>seq( i_first = t166 i_second = t167 i_rest = t168 ).
    t156 = t165.
    t155 = t156.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t173) = |OVERFLOW INTO|.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = t173.
    t171 = t172.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t175->cval = t176.
    ENDIF.
    t174 = t175.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t178.
    t177 = t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t171 ).
    DATA(t181) = CAST zlnt_runtime_dyna_a429568d5be8( t174 ).
    DATA(t182) = CAST zlnt_runtime_arra_c22708faf2e3( t177 ).
    t179 = zcl_lnt_st_combi_module=>seq( i_first = t180 i_second = t181 i_rest = t182 ).
    t170 = t179.
    t169 = t170.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = |MESSAGE INTO|.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185 = t186.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    t188 = t189.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t192.
    t191 = t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t194) = CAST zlnt_runtime_dyna_a429568d5be8( t185 ).
    DATA(t195) = CAST zlnt_runtime_dyna_a429568d5be8( t188 ).
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t191 ).
    t193 = zcl_lnt_st_combi_module=>seq( i_first = t194 i_second = t195 i_rest = t196 ).
    t184 = t193.
    t183 = t184.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = |INCLUDE PROGRAM FROM|.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = t201.
    t199 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    t202 = t203.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t206.
    t205 = t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t199 ).
    DATA(t209) = CAST zlnt_runtime_dyna_a429568d5be8( t202 ).
    DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t205 ).
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t209 i_rest = t210 ).
    t198 = t207.
    t197 = t198.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t215) = |FRAME PROGRAM FROM|.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    t216 = t217.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    t219 = t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t222) = CAST zlnt_runtime_dyna_a429568d5be8( t213 ).
    DATA(t223) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t224) = CAST zlnt_runtime_arra_c22708faf2e3( t219 ).
    t221 = zcl_lnt_st_combi_module=>seq( i_first = t222 i_second = t223 i_rest = t224 ).
    t212 = t221.
    t211 = t212.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t229) = |PROGRAM FROM|.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = t229.
    t227 = t228.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t231->cval = t232.
    ENDIF.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    t233 = t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t236) = CAST zlnt_runtime_dyna_a429568d5be8( t227 ).
    DATA(t237) = CAST zlnt_runtime_dyna_a429568d5be8( t230 ).
    DATA(t238) = CAST zlnt_runtime_arra_c22708faf2e3( t233 ).
    t235 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t237 i_rest = t238 ).
    t226 = t235.
    t225 = t226.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t243) = |FROM|.
    CREATE OBJECT t242.
    t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t242->sval = t243.
    t241 = t242.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t246 IS BOUND.
      CREATE OBJECT t245.
      t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t245->cval = t246.
    ENDIF.
    t244 = t245.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t248.
    t247 = t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t250) = CAST zlnt_runtime_dyna_a429568d5be8( t241 ).
    DATA(t251) = CAST zlnt_runtime_dyna_a429568d5be8( t244 ).
    DATA(t252) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    t249 = zcl_lnt_st_combi_module=>seq( i_first = t250 i_second = t251 i_rest = t252 ).
    t240 = t249.
    t239 = t240.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t257) = |TO|.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = t257.
    t255 = t256.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA(t260) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t260 IS BOUND.
      CREATE OBJECT t259.
      t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t259->cval = t260.
    ENDIF.
    t258 = t259.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t262.
    t261 = t262.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t264) = CAST zlnt_runtime_dyna_a429568d5be8( t255 ).
    DATA(t265) = CAST zlnt_runtime_dyna_a429568d5be8( t258 ).
    DATA(t266) = CAST zlnt_runtime_arra_c22708faf2e3( t261 ).
    t263 = zcl_lnt_st_combi_module=>seq( i_first = t264 i_second = t265 i_rest = t266 ).
    t254 = t263.
    t253 = t254.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t271) = |REPLACING|.
    CREATE OBJECT t270.
    t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t270->sval = t271.
    t269 = t270.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t273->cval = t274.
    ENDIF.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t276.
    t275 = t276.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t278) = CAST zlnt_runtime_dyna_a429568d5be8( t269 ).
    DATA(t279) = CAST zlnt_runtime_dyna_a429568d5be8( t272 ).
    DATA(t280) = CAST zlnt_runtime_arra_c22708faf2e3( t275 ).
    t277 = zcl_lnt_st_combi_module=>seq( i_first = t278 i_second = t279 i_rest = t280 ).
    t268 = t277.
    t267 = t268.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t285) = |ID|.
    CREATE OBJECT t284.
    t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t284->sval = t285.
    t283 = t284.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t287->cval = t288.
    ENDIF.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t290.
    t289 = t290.
    DATA(t291) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t293) = |TABLE|.
    CREATE OBJECT t292.
    t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t292->sval = t293.
    APPEND t292 TO t291->items.
    DATA(t294) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA(t296) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t296 IS BOUND.
      CREATE OBJECT t295.
      t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t295->cval = t296.
    ENDIF.
    APPEND t295 TO t294->items.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t298) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t299) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t300) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    t297 = zcl_lnt_st_combi_module=>seq( i_first = t298 i_second = t299 i_rest = t300 ).
    t282 = t297.
    t281 = t282.
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t305) = |SCAN ABAP-SOURCE|.
    CREATE OBJECT t304.
    t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t304->sval = t305.
    t303 = t304.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA(t308) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t308 IS BOUND.
      CREATE OBJECT t307.
      t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t307->cval = t308.
    ENDIF.
    t306 = t307.
    DATA t309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t310.
    t309 = t310.
    DATA(t311) = CAST zlnt_runtime_arra_c22708faf2e3( t309 ).
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t313.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = CAST zif_lnt_statement_runnable( t1 ).
    IF t316 IS BOUND.
      CREATE OBJECT t315.
      t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t317 TYPE REF TO object.
      t317 = t316.
      t315->oval = t317.
    ENDIF.
    t314 = t315.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA(t320) = CAST zif_lnt_statement_runnable( t57 ).
    IF t320 IS BOUND.
      CREATE OBJECT t319.
      t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t321 TYPE REF TO object.
      t321 = t320.
      t319->oval = t321.
    ENDIF.
    t318 = t319.
    DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t323.
    t322 = t323.
    DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = CAST zif_lnt_statement_runnable( t239 ).
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t327 TYPE REF TO object.
      t327 = t326.
      t325->oval = t327.
    ENDIF.
    APPEND t325 TO t324->items.
    DATA(t328) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA(t330) = CAST zif_lnt_statement_runnable( t253 ).
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t331 TYPE REF TO object.
      t331 = t330.
      t329->oval = t331.
    ENDIF.
    APPEND t329 TO t328->items.
    DATA(t332) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = CAST zif_lnt_statement_runnable( t43 ).
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t335 TYPE REF TO object.
      t335 = t334.
      t333->oval = t335.
    ENDIF.
    APPEND t333 TO t332->items.
    DATA(t336) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA(t338) = CAST zif_lnt_statement_runnable( t71 ).
    IF t338 IS BOUND.
      CREATE OBJECT t337.
      t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t339 TYPE REF TO object.
      t339 = t338.
      t337->oval = t339.
    ENDIF.
    APPEND t337 TO t336->items.
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = CAST zif_lnt_statement_runnable( t141 ).
    IF t342 IS BOUND.
      CREATE OBJECT t341.
      t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t343 TYPE REF TO object.
      t343 = t342.
      t341->oval = t343.
    ENDIF.
    APPEND t341 TO t340->items.
    DATA(t344) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = CAST zif_lnt_statement_runnable( t15 ).
    IF t346 IS BOUND.
      CREATE OBJECT t345.
      t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t347 TYPE REF TO object.
      t347 = t346.
      t345->oval = t347.
    ENDIF.
    APPEND t345 TO t344->items.
    DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = CAST zif_lnt_statement_runnable( t29 ).
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t351 TYPE REF TO object.
      t351 = t350.
      t349->oval = t351.
    ENDIF.
    APPEND t349 TO t348->items.
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA(t354) = CAST zif_lnt_statement_runnable( t99 ).
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t355 TYPE REF TO object.
      t355 = t354.
      t353->oval = t355.
    ENDIF.
    APPEND t353 TO t352->items.
    DATA(t356) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = CAST zif_lnt_statement_runnable( t169 ).
    IF t358 IS BOUND.
      CREATE OBJECT t357.
      t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t359 TYPE REF TO object.
      t359 = t358.
      t357->oval = t359.
    ENDIF.
    APPEND t357 TO t356->items.
    DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA(t362) = CAST zif_lnt_statement_runnable( t183 ).
    IF t362 IS BOUND.
      CREATE OBJECT t361.
      t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t363 TYPE REF TO object.
      t363 = t362.
      t361->oval = t363.
    ENDIF.
    APPEND t361 TO t360->items.
    DATA(t364) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA(t366) = CAST zif_lnt_statement_runnable( t197 ).
    IF t366 IS BOUND.
      CREATE OBJECT t365.
      t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t367 TYPE REF TO object.
      t367 = t366.
      t365->oval = t367.
    ENDIF.
    APPEND t365 TO t364->items.
    DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA(t370) = CAST zif_lnt_statement_runnable( t85 ).
    IF t370 IS BOUND.
      CREATE OBJECT t369.
      t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t371 TYPE REF TO object.
      t371 = t370.
      t369->oval = t371.
    ENDIF.
    APPEND t369 TO t368->items.
    DATA(t372) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA(t374) = CAST zif_lnt_statement_runnable( t211 ).
    IF t374 IS BOUND.
      CREATE OBJECT t373.
      t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t375 TYPE REF TO object.
      t375 = t374.
      t373->oval = t375.
    ENDIF.
    APPEND t373 TO t372->items.
    DATA(t376) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA(t378) = CAST zif_lnt_statement_runnable( t127 ).
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t379 TYPE REF TO object.
      t379 = t378.
      t377->oval = t379.
    ENDIF.
    APPEND t377 TO t376->items.
    DATA(t380) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA(t382) = CAST zif_lnt_statement_runnable( t113 ).
    IF t382 IS BOUND.
      CREATE OBJECT t381.
      t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t383 TYPE REF TO object.
      t383 = t382.
      t381->oval = t383.
    ENDIF.
    APPEND t381 TO t380->items.
    DATA(t384) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA(t386) = CAST zif_lnt_statement_runnable( t225 ).
    IF t386 IS BOUND.
      CREATE OBJECT t385.
      t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t387 TYPE REF TO object.
      t387 = t386.
      t385->oval = t387.
    ENDIF.
    APPEND t385 TO t384->items.
    DATA(t388) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA(t390) = CAST zif_lnt_statement_runnable( t267 ).
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t391 TYPE REF TO object.
      t391 = t390.
      t389->oval = t391.
    ENDIF.
    APPEND t389 TO t388->items.
    DATA(t392) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t394) = |WITH ANALYSIS|.
    CREATE OBJECT t393.
    t393->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t393->sval = t394.
    APPEND t393 TO t392->items.
    DATA(t395) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t397) = |WITH COMMENTS|.
    CREATE OBJECT t396.
    t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t396->sval = t397.
    APPEND t396 TO t395->items.
    DATA(t398) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t400) = |WITH TYPE-POOLS|.
    CREATE OBJECT t399.
    t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t399->sval = t400.
    APPEND t399 TO t398->items.
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t403) = |WITH INCLUDES|.
    CREATE OBJECT t402.
    t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t402->sval = t403.
    APPEND t402 TO t401->items.
    DATA(t404) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t406) = |WITHOUT TRMAC|.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = t406.
    APPEND t405 TO t404->items.
    DATA(t407) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t409) = |WITH DECLARATIONS|.
    CREATE OBJECT t408.
    t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t408->sval = t409.
    APPEND t408 TO t407->items.
    DATA(t410) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t412) = |WITH BLOCKS|.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t411->sval = t412.
    APPEND t411 TO t410->items.
    DATA(t413) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t415) = |PRESERVING IDENTIFIER ESCAPING|.
    CREATE OBJECT t414.
    t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t414->sval = t415.
    APPEND t414 TO t413->items.
    DATA(t416) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t418) = |WITH LIST TOKENIZATION|.
    CREATE OBJECT t417.
    t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t417->sval = t418.
    APPEND t417 TO t416->items.
    DATA(t419) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t421) = |WITH EXPLICIT ENHANCEMENTS|.
    CREATE OBJECT t420.
    t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t420->sval = t421.
    APPEND t420 TO t419->items.
    DATA(t422) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t424) = |WITH IMPLICIT ENHANCEMENTS|.
    CREATE OBJECT t423.
    t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t423->sval = t424.
    APPEND t423 TO t422->items.
    DATA(t425) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t427) = |WITH INACTIVE ENHANCEMENTS|.
    CREATE OBJECT t426.
    t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t426->sval = t427.
    APPEND t426 TO t425->items.
    DATA(t428) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA(t430) = CAST zif_lnt_statement_runnable( t155 ).
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t431 TYPE REF TO object.
      t431 = t430.
      t429->oval = t431.
    ENDIF.
    APPEND t429 TO t428->items.
    DATA(t432) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA(t434) = CAST zif_lnt_statement_runnable( t281 ).
    IF t434 IS BOUND.
      CREATE OBJECT t433.
      t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t435 TYPE REF TO object.
      t435 = t434.
      t433->oval = t435.
    ENDIF.
    APPEND t433 TO t432->items.
    DATA t436 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t437) = CAST zlnt_runtime_dyna_a429568d5be8( t314 ).
    DATA(t438) = CAST zlnt_runtime_dyna_a429568d5be8( t318 ).
    DATA(t439) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    t436 = zcl_lnt_st_combi_module=>per( i_first = t437 i_second = t438 i_rest = t439 ).
    t313 = t436.
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t440 TYPE REF TO object.
      t440 = t313.
      t312->oval = t440.
    ENDIF.
    APPEND t312 TO t311->items.
    DATA t441 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t442) = CAST zlnt_runtime_dyna_a429568d5be8( t303 ).
    DATA(t443) = CAST zlnt_runtime_dyna_a429568d5be8( t306 ).
    DATA(t444) = CAST zlnt_runtime_arra_c22708faf2e3( t309 ).
    t441 = zcl_lnt_st_combi_module=>seq( i_first = t442 i_second = t443 i_rest = t444 ).
    t302 = t441.
    t301 = t302.
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t445.
    DATA(t446) = |Cloud|.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = CAST zif_lnt_statement_runnable( t301 ).
    IF t448 IS BOUND.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t449 TYPE REF TO object.
      t449 = t448.
      t447->oval = t449.
    ENDIF.
    t445 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t446 i_first = t447 ).
    result = t445.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d591_802cad6c5ea5.
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
