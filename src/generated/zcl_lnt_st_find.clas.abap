* TS: src/abap/2_statements/statements/find.ts:6:1 Find
CLASS zcl_lnt_st_find DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_find IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |IGNORING CASE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |RESPECTING CASE|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |IN BYTE MODE|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |IN CHARACTER MODE|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    APPEND t15 TO t14->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |OF|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t19.
      t18->oval = t32.
    ENDIF.
    APPEND t18 TO t17->items.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |FROM|.
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
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t35.
      t34->oval = t48.
    ENDIF.
    APPEND t34 TO t33->items.
    DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = |TO|.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = t54.
    t52 = t53.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t62 i_rest = t63 ).
    t51 = t60.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t51.
      t50->oval = t64.
    ENDIF.
    APPEND t50 TO t49->items.
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = |MATCH OFFSET|.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t68 ).
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t71 ).
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t78 i_rest = t79 ).
    t67 = t76.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t80 TYPE REF TO object.
      t80 = t67.
      t66->oval = t80.
    ENDIF.
    APPEND t66 TO t65->items.
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = |MATCH LINE|.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = t86.
    t84 = t85.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t88->cval = t89.
    ENDIF.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    t90 = t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
    t92 = zcl_lnt_st_combi_module=>seq( i_first = t93 i_second = t94 i_rest = t95 ).
    t83 = t92.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t83.
      t82->oval = t96.
    ENDIF.
    APPEND t82 TO t81->items.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = |MATCH COUNT|.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    t106 = t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t110 i_rest = t111 ).
    t99 = t108.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t112 TYPE REF TO object.
      t112 = t99.
      t98->oval = t112.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = |MATCH LENGTH|.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = t118.
    t116 = t117.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t120->cval = t121.
    ENDIF.
    t119 = t120.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    t122 = t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t125) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
    DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t119 ).
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    t124 = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t126 i_rest = t127 ).
    t115 = t124.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t128 TYPE REF TO object.
      t128 = t115.
      t114->oval = t128.
    ENDIF.
    APPEND t114 TO t113->items.
    DATA(t129) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = |LENGTH|.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t136->cval = t137.
    ENDIF.
    t135 = t136.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t138 = t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t132 ).
    DATA(t142) = CAST zlnt_runtime_dyna_a429568d5be8( t135 ).
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    t140 = zcl_lnt_st_combi_module=>seq( i_first = t141 i_second = t142 i_rest = t143 ).
    t131 = t140.
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t131.
      t130->oval = t144.
    ENDIF.
    APPEND t130 TO t129->items.
    DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = |RESULTS|.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = t150.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    t151 = t152.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t155.
    t154 = t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t148 ).
    DATA(t158) = CAST zlnt_runtime_dyna_a429568d5be8( t151 ).
    DATA(t159) = CAST zlnt_runtime_arra_c22708faf2e3( t154 ).
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t158 i_rest = t159 ).
    t147 = t156.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t160 TYPE REF TO object.
      t160 = t147.
      t146->oval = t160.
    ENDIF.
    APPEND t146 TO t145->items.
    DATA(t161) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = |SUBMATCHES|.
    CREATE OBJECT t165.
    t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t165->sval = t166.
    t164 = t165.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t168->cval = t169.
    ENDIF.
    t167 = t168.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t171.
    t170 = t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t164 ).
    DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t167 ).
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t170 ).
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t173 i_second = t174 i_rest = t175 ).
    t163 = t172.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t163.
      t162->oval = t176.
    ENDIF.
    APPEND t162 TO t161->items.
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |SUBMATCHES|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t186 = t187.
    DATA(t188) = CAST zlnt_runtime_arra_c22708faf2e3( t186 ).
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    APPEND t189 TO t188->items.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t192) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t193) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t194) = CAST zlnt_runtime_arra_c22708faf2e3( t186 ).
    t191 = zcl_lnt_st_combi_module=>seq( i_first = t192 i_second = t193 i_rest = t194 ).
    t179 = t191.
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t195 TYPE REF TO object.
      t195 = t179.
      t178->oval = t195.
    ENDIF.
    APPEND t178 TO t177->items.
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = |SUBMATCHES|.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = t201.
    t199 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t205->cval = t206.
    ENDIF.
    t204 = zcl_lnt_st_combi_module=>plus( i_first = t205 ).
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t207 TYPE REF TO object.
      t207 = t204.
      t203->oval = t207.
    ENDIF.
    t202 = t203.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t209.
    t208 = t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t199 ).
    DATA(t212) = CAST zlnt_runtime_dyna_a429568d5be8( t202 ).
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t208 ).
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t211 i_second = t212 i_rest = t213 ).
    t198 = t210.
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t214 TYPE REF TO object.
      t214 = t198.
      t197->oval = t214.
    ENDIF.
    APPEND t197 TO t196->items.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t216) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t217) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t218) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t215 = zcl_lnt_st_combi_module=>per( i_first = t216 i_second = t217 i_rest = t218 ).
    t2 = t215.
    t1 = t2.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t223) = |SECTION LENGTH|.
    CREATE OBJECT t222.
    t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t222->sval = t223.
    t221 = t222.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t226 IS BOUND.
      CREATE OBJECT t225.
      t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t225->cval = t226.
    ENDIF.
    t224 = t225.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t227 = t228.
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t231) = |OF|.
    CREATE OBJECT t230.
    t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t230->sval = t231.
    APPEND t230 TO t229->items.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t233) = CAST zlnt_runtime_dyna_a429568d5be8( t221 ).
    DATA(t234) = CAST zlnt_runtime_dyna_a429568d5be8( t224 ).
    DATA(t235) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    t232 = zcl_lnt_st_combi_module=>seq( i_first = t233 i_second = t234 i_rest = t235 ).
    t220 = t232.
    t219 = t220.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
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
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t245) = |TABLE|.
    CREATE OBJECT t244.
    t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t244->sval = t245.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t248) = |SECTION OFFSET|.
    CREATE OBJECT t247.
    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t247->sval = t248.
    t246 = t247.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t250.
    t249 = t250.
    DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA(t253) = CAST zif_lnt_statement_runnable( t219 ).
    IF t253 IS BOUND.
      CREATE OBJECT t252.
      t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t254 TYPE REF TO object.
      t254 = t253.
      t252->oval = t254.
    ENDIF.
    APPEND t252 TO t251->items.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t256) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t257) = CAST zlnt_runtime_dyna_a429568d5be8( t246 ).
    DATA(t258) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
    t255 = zcl_lnt_st_combi_module=>alt_prio( i_first = t256 i_second = t257 i_rest = t258 ).
    t242 = t255.
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t242.
      t241->oval = t259.
    ENDIF.
    t240 = zcl_lnt_st_combi_module=>opt_prio( i_first = t241 ).
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t260 TYPE REF TO object.
      t260 = t240.
      t239->oval = t260.
    ENDIF.
    t238 = t239.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t263 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t262->cval = t263.
    ENDIF.
    t261 = t262.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t265.
    t264 = t265.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t267) = CAST zlnt_runtime_dyna_a429568d5be8( t238 ).
    DATA(t268) = CAST zlnt_runtime_dyna_a429568d5be8( t261 ).
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t264 ).
    t266 = zcl_lnt_st_combi_module=>seq( i_first = t267 i_second = t268 i_rest = t269 ).
    t237 = t266.
    t236 = t237.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t274) = |FIND|.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t282) = |FIRST OCCURRENCE OF|.
    CREATE OBJECT t281.
    t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t281->sval = t282.
    t280 = t281.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t285) = |ALL OCCURRENCES OF|.
    CREATE OBJECT t284.
    t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t284->sval = t285.
    t283 = t284.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t287.
    t286 = t287.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t289) = CAST zlnt_runtime_dyna_a429568d5be8( t280 ).
    DATA(t290) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t291) = CAST zlnt_runtime_arra_c22708faf2e3( t286 ).
    t288 = zcl_lnt_st_combi_module=>alt_prio( i_first = t289 i_second = t290 i_rest = t291 ).
    t279 = t288.
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t292 TYPE REF TO object.
      t292 = t279.
      t278->oval = t292.
    ENDIF.
    t277 = zcl_lnt_st_combi_module=>opt( i_first = t278 ).
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t293 TYPE REF TO object.
      t293 = t277.
      t276->oval = t293.
    ENDIF.
    t275 = t276.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t295.
    t294 = t295.
    DATA(t296) = CAST zlnt_runtime_arra_c22708faf2e3( t294 ).
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA(t298) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f ).
    IF t298 IS BOUND.
      CREATE OBJECT t297.
      t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t297->cval = t298.
    ENDIF.
    APPEND t297 TO t296->items.
    DATA(t299) = CAST zlnt_runtime_arra_c22708faf2e3( t294 ).
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t301 IS BOUND.
      CREATE OBJECT t300.
      t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t300->cval = t301.
    ENDIF.
    APPEND t300 TO t299->items.
    DATA(t302) = CAST zlnt_runtime_arra_c22708faf2e3( t294 ).
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t304) = |IN|.
    CREATE OBJECT t303.
    t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t303->sval = t304.
    APPEND t303 TO t302->items.
    DATA(t305) = CAST zlnt_runtime_arra_c22708faf2e3( t294 ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = CAST zif_lnt_statement_runnable( t236 ).
    IF t307 IS BOUND.
      CREATE OBJECT t306.
      t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t308 TYPE REF TO object.
      t308 = t307.
      t306->oval = t308.
    ENDIF.
    APPEND t306 TO t305->items.
    DATA(t309) = CAST zlnt_runtime_arra_c22708faf2e3( t294 ).
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = CAST zif_lnt_statement_runnable( t1 ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t314 TYPE REF TO object.
      t314 = t313.
      t312->oval = t314.
    ENDIF.
    t311 = zcl_lnt_st_combi_module=>opt( i_first = t312 ).
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t315 TYPE REF TO object.
      t315 = t311.
      t310->oval = t315.
    ENDIF.
    APPEND t310 TO t309->items.
    DATA t316 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t317) = CAST zlnt_runtime_dyna_a429568d5be8( t272 ).
    DATA(t318) = CAST zlnt_runtime_dyna_a429568d5be8( t275 ).
    DATA(t319) = CAST zlnt_runtime_arra_c22708faf2e3( t294 ).
    t316 = zcl_lnt_st_combi_module=>seq( i_first = t317 i_second = t318 i_rest = t319 ).
    t271 = t316.
    t270 = t271.
    DATA(t320) = CAST zif_lnt_statement_runnable( t270 ).
    result = t320.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d482_8915322fe317.
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
