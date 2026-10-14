* TS: src/abap/2_statements/statements/generate_report.ts:7:1 GenerateReport
CLASS zcl_lnt_generate_report DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_generate_report IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = |WITHOUT SELECTION-SCREEN|.
    t2 = zcl_lnt_st_combi_module=>str( i_s = t3 ).
    t1 = t2.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |MESSAGE|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t5 = t14.
    t4 = t5.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |INCLUDE|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t30 i_rest = t31 ).
    t19 = t28.
    t18 = t19.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = |LINE|.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t40 = t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t33 = t42.
    t32 = t33.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = |WORD|.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t56 = zcl_lnt_st_combi_module=>seq( i_first = t57 i_second = t58 i_rest = t59 ).
    t47 = t56.
    t46 = t47.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = |OFFSET|.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
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
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t76) = |WITH PRECOMPILED HEADERS|.
    t75 = zcl_lnt_st_combi_module=>str( i_s = t76 ).
    t74 = t75.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = |WITH TEST CODE|.
    t78 = zcl_lnt_st_combi_module=>str( i_s = t79 ).
    t77 = t78.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = |MESSAGE-ID|.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = t84.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t86->cval = t87.
    ENDIF.
    t85 = t86.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    t88 = t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t91) = CAST zlnt_runtime_dyna_a429568d5be8( t82 ).
    DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t85 ).
    DATA(t93) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
    t90 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t92 i_rest = t93 ).
    t81 = t90.
    t80 = t81.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = |TRACE-FILE|.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = t98.
    t96 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t96 ).
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t107) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t106 i_rest = t107 ).
    t95 = t104.
    t94 = t95.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = |SHORTDUMP-ID|.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = t112.
    t110 = t111.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    t116 = t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t119) = CAST zlnt_runtime_dyna_a429568d5be8( t110 ).
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t113 ).
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t116 ).
    t118 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t120 i_rest = t121 ).
    t109 = t118.
    t108 = t109.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = |DIRECTORY ENTRY|.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t130 = t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t124 ).
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t130 ).
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t134 i_rest = t135 ).
    t123 = t132.
    t122 = t123.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = CAST zif_lnt_statement_runnable( t1 ).
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t141 TYPE REF TO object.
      t141 = t140.
      t139->oval = t141.
    ENDIF.
    t138 = t139.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zif_lnt_statement_runnable( t4 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t144.
      t143->oval = t145.
    ENDIF.
    t142 = t143.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    t146 = t147.
    DATA(t148) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = CAST zif_lnt_statement_runnable( t18 ).
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t150.
      t149->oval = t151.
    ENDIF.
    APPEND t149 TO t148->items.
    DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = CAST zif_lnt_statement_runnable( t94 ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t155 TYPE REF TO object.
      t155 = t154.
      t153->oval = t155.
    ENDIF.
    APPEND t153 TO t152->items.
    DATA(t156) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = CAST zif_lnt_statement_runnable( t32 ).
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t158.
      t157->oval = t159.
    ENDIF.
    APPEND t157 TO t156->items.
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = CAST zif_lnt_statement_runnable( t46 ).
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t163 TYPE REF TO object.
      t163 = t162.
      t161->oval = t163.
    ENDIF.
    APPEND t161 TO t160->items.
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = CAST zif_lnt_statement_runnable( t60 ).
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t166.
      t165->oval = t167.
    ENDIF.
    APPEND t165 TO t164->items.
    DATA(t168) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = CAST zif_lnt_statement_runnable( t74 ).
    IF t170 IS BOUND.
      CREATE OBJECT t169.
      t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t171 TYPE REF TO object.
      t171 = t170.
      t169->oval = t171.
    ENDIF.
    APPEND t169 TO t168->items.
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = CAST zif_lnt_statement_runnable( t77 ).
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t175 TYPE REF TO object.
      t175 = t174.
      t173->oval = t175.
    ENDIF.
    APPEND t173 TO t172->items.
    DATA(t176) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = CAST zif_lnt_statement_runnable( t80 ).
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t179 TYPE REF TO object.
      t179 = t178.
      t177->oval = t179.
    ENDIF.
    APPEND t177 TO t176->items.
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = CAST zif_lnt_statement_runnable( t108 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t183 TYPE REF TO object.
      t183 = t182.
      t181->oval = t183.
    ENDIF.
    APPEND t181 TO t180->items.
    DATA(t184) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = CAST zif_lnt_statement_runnable( t122 ).
    IF t186 IS BOUND.
      CREATE OBJECT t185.
      t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t187 TYPE REF TO object.
      t187 = t186.
      t185->oval = t187.
    ENDIF.
    APPEND t185 TO t184->items.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t189) = CAST zlnt_runtime_dyna_a429568d5be8( t138 ).
    DATA(t190) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t191) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    t188 = zcl_lnt_st_combi_module=>per( i_first = t189 i_second = t190 i_rest = t191 ).
    t137 = t188.
    t136 = t137.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = |GENERATE REPORT|.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t198->cval = t199.
    ENDIF.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t201.
    t200 = t201.
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = CAST zif_lnt_statement_runnable( t136 ).
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t207 TYPE REF TO object.
      t207 = t206.
      t205->oval = t207.
    ENDIF.
    t204 = zcl_lnt_st_combi_module=>opt( i_first = t205 ).
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t208 TYPE REF TO object.
      t208 = t204.
      t203->oval = t208.
    ENDIF.
    APPEND t203 TO t202->items.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t210) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t197 ).
    DATA(t212) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t210 i_second = t211 i_rest = t212 ).
    t193 = t209.
    t192 = t193.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA(t214) = |Cloud|.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA(t216) = CAST zif_lnt_statement_runnable( t192 ).
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t217 TYPE REF TO object.
      t217 = t216.
      t215->oval = t217.
    ENDIF.
    t213 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t214 i_first = t215 ).
    result = t213.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d492_5999ca9e129e.
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
