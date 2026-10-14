* TS: src/abap/2_statements/statements/selectionscreen.ts:8:1 SelectionScreen
CLASS zcl_lnt_st_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_selection_screen IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c ).
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
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a ).
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
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |BEGIN OF BLOCK|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d105_86aa91718a3c ).
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
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = |WITH FRAME|.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = t29.
    t27 = zcl_lnt_st_combi_module=>opt_prio( i_first = t28 ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t27.
      t26->oval = t30.
    ENDIF.
    APPEND t26 TO t25->items.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |TITLE|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = CAST zif_lnt_statement_runnable( t1 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t42 TYPE REF TO object.
      t42 = t41.
      t40->oval = t42.
    ENDIF.
    t39 = t40.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t47) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t47 i_rest = t48 ).
    t35 = t45.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t35.
      t34->oval = t49.
    ENDIF.
    t33 = zcl_lnt_st_combi_module=>opt_prio( i_first = t34 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t50 TYPE REF TO object.
      t50 = t33.
      t32->oval = t50.
    ENDIF.
    APPEND t32 TO t31->items.
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |NO INTERVALS|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = zcl_lnt_st_combi_module=>opt_prio( i_first = t54 ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t53.
      t52->oval = t56.
    ENDIF.
    APPEND t52 TO t51->items.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t59) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t59 i_rest = t60 ).
    t16 = t57.
    t15 = t16.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |END OF BLOCK|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d105_86aa91718a3c ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    t66 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t66 ).
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t62 = t71.
    t61 = t62.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = |NESTING LEVEL|.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t83 = t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t80 ).
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t83 ).
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t87 i_rest = t88 ).
    t76 = t85.
    t75 = t76.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = |AS|.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = t96.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = |WINDOW|.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = |SUBSCREEN|.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    t106 = t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    t108 = zcl_lnt_st_combi_module=>alt( i_first = t109 i_second = t110 i_rest = t111 ).
    t99 = t108.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t112 TYPE REF TO object.
      t112 = t99.
      t98->oval = t112.
    ENDIF.
    t97 = t98.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t114.
    t113 = t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t113 ).
    t115 = zcl_lnt_st_combi_module=>seq( i_first = t116 i_second = t117 i_rest = t118 ).
    t93 = t115.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t119 TYPE REF TO object.
      t119 = t93.
      t92->oval = t119.
    ENDIF.
    t91 = t92.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t125) = |TITLE|.
    CREATE OBJECT t124.
    t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t124->sval = t125.
    t123 = t124.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA(t128) = CAST zif_lnt_statement_runnable( t1 ).
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
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t123 ).
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t126 ).
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t130 ).
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t134 i_rest = t135 ).
    t122 = t132.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t136 TYPE REF TO object.
      t136 = t122.
      t121->oval = t136.
    ENDIF.
    t120 = t121.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t137 = t138.
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t141) = |NO INTERVALS|.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = t141.
    APPEND t140 TO t139->items.
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zif_lnt_statement_runnable( t75 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t144.
      t143->oval = t145.
    ENDIF.
    APPEND t143 TO t142->items.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t147) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t148) = CAST zlnt_runtime_dyna_a429568d5be8( t120 ).
    DATA(t149) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    t146 = zcl_lnt_st_combi_module=>per( i_first = t147 i_second = t148 i_rest = t149 ).
    t90 = t146.
    t89 = t90.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = |BEGIN OF SCREEN|.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = t154.
    t152 = t153.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t156->cval = t157.
    ENDIF.
    t155 = t156.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t159.
    t158 = t159.
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t158 ).
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = CAST zif_lnt_statement_runnable( t89 ).
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t164.
      t163->oval = t165.
    ENDIF.
    t162 = zcl_lnt_st_combi_module=>opt( i_first = t163 ).
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t162.
      t161->oval = t166.
    ENDIF.
    APPEND t161 TO t160->items.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t168) = CAST zlnt_runtime_dyna_a429568d5be8( t152 ).
    DATA(t169) = CAST zlnt_runtime_dyna_a429568d5be8( t155 ).
    DATA(t170) = CAST zlnt_runtime_arra_c22708faf2e3( t158 ).
    t167 = zcl_lnt_st_combi_module=>seq( i_first = t168 i_second = t169 i_rest = t170 ).
    t151 = t167.
    t150 = t151.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = |END OF SCREEN|.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    t179 = t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t182) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t183) = CAST zlnt_runtime_dyna_a429568d5be8( t176 ).
    DATA(t184) = CAST zlnt_runtime_arra_c22708faf2e3( t179 ).
    t181 = zcl_lnt_st_combi_module=>seq( i_first = t182 i_second = t183 i_rest = t184 ).
    t172 = t181.
    t171 = t172.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t187) = |BEGIN OF LINE|.
    t186 = zcl_lnt_st_combi_module=>str( i_s = t187 ).
    t185 = t186.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t190) = |END OF LINE|.
    t189 = zcl_lnt_st_combi_module=>str( i_s = t190 ).
    t188 = t189.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |MODIF ID|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t197->cval = t198.
    ENDIF.
    t196 = t197.
    DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t200.
    t199 = t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t202) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t203) = CAST zlnt_runtime_dyna_a429568d5be8( t196 ).
    DATA(t204) = CAST zlnt_runtime_arra_c22708faf2e3( t199 ).
    t201 = zcl_lnt_st_combi_module=>seq( i_first = t202 i_second = t203 i_rest = t204 ).
    t192 = t201.
    t191 = t192.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t209) = |VISIBLE LENGTH|.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    DATA t213 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t213.
    DATA(t214) = `^\d+$`.
    DATA(t215) = |^[0-9]+$|.
    DATA(t216) = ||.
    CREATE OBJECT t213 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t215 flags = t216.
    t213->source = t214.
    t212 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t213 ).
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t217 TYPE REF TO object.
      t217 = t212.
      t211->oval = t217.
    ENDIF.
    t210 = t211.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t219.
    t218 = t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t221) = CAST zlnt_runtime_dyna_a429568d5be8( t207 ).
    DATA(t222) = CAST zlnt_runtime_dyna_a429568d5be8( t210 ).
    DATA(t223) = CAST zlnt_runtime_arra_c22708faf2e3( t218 ).
    t220 = zcl_lnt_st_combi_module=>seq( i_first = t221 i_second = t222 i_rest = t223 ).
    t206 = t220.
    t205 = t206.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t228) = |ID|.
    CREATE OBJECT t227.
    t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t227->sval = t228.
    t226 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    DATA t232 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t232.
    DATA(t233) = `^\w+$`.
    DATA(t234) = |^[A-Za-z0-9_]+$|.
    DATA(t235) = ||.
    CREATE OBJECT t232 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t234 flags = t235.
    t232->source = t233.
    t231 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t232 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t231.
      t230->oval = t236.
    ENDIF.
    t229 = t230.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t238.
    t237 = t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t240) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t241) = CAST zlnt_runtime_dyna_a429568d5be8( t229 ).
    DATA(t242) = CAST zlnt_runtime_arra_c22708faf2e3( t237 ).
    t239 = zcl_lnt_st_combi_module=>seq( i_first = t240 i_second = t241 i_rest = t242 ).
    t225 = t239.
    t224 = t225.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t247) = |FOR FIELD|.
    CREATE OBJECT t246.
    t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t246->sval = t247.
    t245 = t246.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t250 IS BOUND.
      CREATE OBJECT t249.
      t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t249->cval = t250.
    ENDIF.
    t248 = t249.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t252.
    t251 = t252.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = CAST zif_lnt_statement_runnable( t224 ).
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t258 TYPE REF TO object.
      t258 = t257.
      t256->oval = t258.
    ENDIF.
    t255 = zcl_lnt_st_combi_module=>opt_prio( i_first = t256 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t255.
      t254->oval = t259.
    ENDIF.
    APPEND t254 TO t253->items.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t261) = CAST zlnt_runtime_dyna_a429568d5be8( t245 ).
    DATA(t262) = CAST zlnt_runtime_dyna_a429568d5be8( t248 ).
    DATA(t263) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    t260 = zcl_lnt_st_combi_module=>seq( i_first = t261 i_second = t262 i_rest = t263 ).
    t244 = t260.
    t243 = t244.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA(t268) = CAST zif_lnt_statement_runnable( t243 ).
    IF t268 IS BOUND.
      CREATE OBJECT t267.
      t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t269 TYPE REF TO object.
      t269 = t268.
      t267->oval = t269.
    ENDIF.
    t266 = t267.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA(t272) = CAST zif_lnt_statement_runnable( t191 ).
    IF t272 IS BOUND.
      CREATE OBJECT t271.
      t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t273 TYPE REF TO object.
      t273 = t272.
      t271->oval = t273.
    ENDIF.
    t270 = t271.
    DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t275.
    t274 = t275.
    DATA(t276) = CAST zlnt_runtime_arra_c22708faf2e3( t274 ).
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = CAST zif_lnt_statement_runnable( t205 ).
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t279 TYPE REF TO object.
      t279 = t278.
      t277->oval = t279.
    ENDIF.
    APPEND t277 TO t276->items.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t281) = CAST zlnt_runtime_dyna_a429568d5be8( t266 ).
    DATA(t282) = CAST zlnt_runtime_dyna_a429568d5be8( t270 ).
    DATA(t283) = CAST zlnt_runtime_arra_c22708faf2e3( t274 ).
    t280 = zcl_lnt_st_combi_module=>per( i_first = t281 i_second = t282 i_rest = t283 ).
    t265 = t280.
    t264 = t265.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t291.
    DATA(t292) = `^\/?[\d\w]+$`.
    DATA(t293) = `^\/?[0-9A-Za-z0-9_]+$`.
    DATA(t294) = ||.
    CREATE OBJECT t291 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t293 flags = t294.
    t291->source = t292.
    t290 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t291 ).
    IF t290 IS BOUND.
      CREATE OBJECT t289.
      t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t295 TYPE REF TO object.
      t295 = t290.
      t289->oval = t295.
    ENDIF.
    t288 = zcl_lnt_st_combi_module=>opt( i_first = t289 ).
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t296 TYPE REF TO object.
      t296 = t288.
      t287->oval = t296.
    ENDIF.
    t286 = t287.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t303) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t302 = zcl_lnt_st_combi_module=>tok( i_t = t303 ).
    IF t302 IS BOUND.
      CREATE OBJECT t301.
      t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t304 TYPE REF TO object.
      t304 = t302.
      t301->oval = t304.
    ENDIF.
    t300 = t301.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t308) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t307 = zcl_lnt_st_combi_module=>tok( i_t = t308 ).
    IF t307 IS BOUND.
      CREATE OBJECT t306.
      t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t309 TYPE REF TO object.
      t309 = t307.
      t306->oval = t309.
    ENDIF.
    t305 = t306.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t311.
    t310 = t311.
    DATA t312 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t313) = CAST zlnt_runtime_dyna_a429568d5be8( t300 ).
    DATA(t314) = CAST zlnt_runtime_dyna_a429568d5be8( t305 ).
    DATA(t315) = CAST zlnt_runtime_arra_c22708faf2e3( t310 ).
    t312 = zcl_lnt_st_combi_module=>alt_prio( i_first = t313 i_second = t314 i_rest = t315 ).
    t299 = t312.
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t316 TYPE REF TO object.
      t316 = t299.
      t298->oval = t316.
    ENDIF.
    t297 = t298.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t318.
    t317 = t318.
    DATA(t319) = CAST zlnt_runtime_arra_c22708faf2e3( t317 ).
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t321 IS BOUND.
      CREATE OBJECT t320.
      t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t320->cval = t321.
    ENDIF.
    APPEND t320 TO t319->items.
    DATA(t322) = CAST zlnt_runtime_arra_c22708faf2e3( t317 ).
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t328) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t327 = zcl_lnt_st_combi_module=>tok( i_t = t328 ).
    IF t327 IS BOUND.
      CREATE OBJECT t326.
      t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t329 TYPE REF TO object.
      t329 = t327.
      t326->oval = t329.
    ENDIF.
    t325 = t326.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t333) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44 ).
    t332 = zcl_lnt_st_combi_module=>tok( i_t = t333 ).
    IF t332 IS BOUND.
      CREATE OBJECT t331.
      t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t334 TYPE REF TO object.
      t334 = t332.
      t331->oval = t334.
    ENDIF.
    t330 = t331.
    DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t336.
    t335 = t336.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t338) = CAST zlnt_runtime_dyna_a429568d5be8( t325 ).
    DATA(t339) = CAST zlnt_runtime_dyna_a429568d5be8( t330 ).
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t335 ).
    t337 = zcl_lnt_st_combi_module=>alt_prio( i_first = t338 i_second = t339 i_rest = t340 ).
    t324 = t337.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t341 TYPE REF TO object.
      t341 = t324.
      t323->oval = t341.
    ENDIF.
    APPEND t323 TO t322->items.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t343) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t344) = CAST zlnt_runtime_dyna_a429568d5be8( t297 ).
    DATA(t345) = CAST zlnt_runtime_arra_c22708faf2e3( t317 ).
    t342 = zcl_lnt_st_combi_module=>seq( i_first = t343 i_second = t344 i_rest = t345 ).
    t285 = t342.
    t284 = t285.
    DATA t346 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t350) = |COMMENT|.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = t350.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA(t353) = CAST zif_lnt_statement_runnable( t284 ).
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t354 TYPE REF TO object.
      t354 = t353.
      t352->oval = t354.
    ENDIF.
    t351 = t352.
    DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t356.
    t355 = t356.
    DATA(t357) = CAST zlnt_runtime_arra_c22708faf2e3( t355 ).
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA(t361) = CAST zif_lnt_statement_runnable( t1 ).
    IF t361 IS BOUND.
      CREATE OBJECT t360.
      t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t362 TYPE REF TO object.
      t362 = t361.
      t360->oval = t362.
    ENDIF.
    t359 = zcl_lnt_st_combi_module=>opt( i_first = t360 ).
    IF t359 IS BOUND.
      CREATE OBJECT t358.
      t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t363 TYPE REF TO object.
      t363 = t359.
      t358->oval = t363.
    ENDIF.
    APPEND t358 TO t357->items.
    DATA(t364) = CAST zlnt_runtime_arra_c22708faf2e3( t355 ).
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA(t368) = CAST zif_lnt_statement_runnable( t264 ).
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t369 TYPE REF TO object.
      t369 = t368.
      t367->oval = t369.
    ENDIF.
    t366 = zcl_lnt_st_combi_module=>opt( i_first = t367 ).
    IF t366 IS BOUND.
      CREATE OBJECT t365.
      t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t370 TYPE REF TO object.
      t370 = t366.
      t365->oval = t370.
    ENDIF.
    APPEND t365 TO t364->items.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t372) = CAST zlnt_runtime_dyna_a429568d5be8( t348 ).
    DATA(t373) = CAST zlnt_runtime_dyna_a429568d5be8( t351 ).
    DATA(t374) = CAST zlnt_runtime_arra_c22708faf2e3( t355 ).
    t371 = zcl_lnt_st_combi_module=>seq( i_first = t372 i_second = t373 i_rest = t374 ).
    t347 = t371.
    t346 = t347.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t375.
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t376.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t379) = |USER-COMMAND|.
    CREATE OBJECT t378.
    t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t378->sval = t379.
    t377 = t378.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA(t385) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t385 IS BOUND.
      CREATE OBJECT t384.
      t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t384->cval = t385.
    ENDIF.
    t383 = t384.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA(t388) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t388 IS BOUND.
      CREATE OBJECT t387.
      t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t387->cval = t388.
    ENDIF.
    t386 = t387.
    DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t390 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t390.
    t389 = t390.
    DATA t391 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t392) = CAST zlnt_runtime_dyna_a429568d5be8( t383 ).
    DATA(t393) = CAST zlnt_runtime_dyna_a429568d5be8( t386 ).
    DATA(t394) = CAST zlnt_runtime_arra_c22708faf2e3( t389 ).
    t391 = zcl_lnt_st_combi_module=>alt( i_first = t392 i_second = t393 i_rest = t394 ).
    t382 = t391.
    IF t382 IS BOUND.
      CREATE OBJECT t381.
      t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t395 TYPE REF TO object.
      t395 = t382.
      t381->oval = t395.
    ENDIF.
    t380 = t381.
    DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t397.
    t396 = t397.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t399) = CAST zlnt_runtime_dyna_a429568d5be8( t377 ).
    DATA(t400) = CAST zlnt_runtime_dyna_a429568d5be8( t380 ).
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    t398 = zcl_lnt_st_combi_module=>seq( i_first = t399 i_second = t400 i_rest = t401 ).
    t376 = t398.
    t375 = t376.
    DATA t402 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t402.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t406) = |PUSHBUTTON|.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = t406.
    t404 = t405.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA(t409) = CAST zif_lnt_statement_runnable( t284 ).
    IF t409 IS BOUND.
      CREATE OBJECT t408.
      t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t410 TYPE REF TO object.
      t410 = t409.
      t408->oval = t410.
    ENDIF.
    t407 = t408.
    DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t412 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t412.
    t411 = t412.
    DATA(t413) = CAST zlnt_runtime_arra_c22708faf2e3( t411 ).
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA(t415) = CAST zif_lnt_statement_runnable( t1 ).
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t416 TYPE REF TO object.
      t416 = t415.
      t414->oval = t416.
    ENDIF.
    APPEND t414 TO t413->items.
    DATA(t417) = CAST zlnt_runtime_arra_c22708faf2e3( t411 ).
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA(t419) = CAST zif_lnt_statement_runnable( t375 ).
    IF t419 IS BOUND.
      CREATE OBJECT t418.
      t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t420 TYPE REF TO object.
      t420 = t419.
      t418->oval = t420.
    ENDIF.
    APPEND t418 TO t417->items.
    DATA(t421) = CAST zlnt_runtime_arra_c22708faf2e3( t411 ).
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA(t425) = CAST zif_lnt_statement_runnable( t191 ).
    IF t425 IS BOUND.
      CREATE OBJECT t424.
      t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t426 TYPE REF TO object.
      t426 = t425.
      t424->oval = t426.
    ENDIF.
    t423 = zcl_lnt_st_combi_module=>opt( i_first = t424 ).
    IF t423 IS BOUND.
      CREATE OBJECT t422.
      t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t427 TYPE REF TO object.
      t427 = t423.
      t422->oval = t427.
    ENDIF.
    APPEND t422 TO t421->items.
    DATA(t428) = CAST zlnt_runtime_arra_c22708faf2e3( t411 ).
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA(t432) = CAST zif_lnt_statement_runnable( t205 ).
    IF t432 IS BOUND.
      CREATE OBJECT t431.
      t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t433 TYPE REF TO object.
      t433 = t432.
      t431->oval = t433.
    ENDIF.
    t430 = zcl_lnt_st_combi_module=>opt( i_first = t431 ).
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t434 TYPE REF TO object.
      t434 = t430.
      t429->oval = t434.
    ENDIF.
    APPEND t429 TO t428->items.
    DATA t435 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t436) = CAST zlnt_runtime_dyna_a429568d5be8( t404 ).
    DATA(t437) = CAST zlnt_runtime_dyna_a429568d5be8( t407 ).
    DATA(t438) = CAST zlnt_runtime_arra_c22708faf2e3( t411 ).
    t435 = zcl_lnt_st_combi_module=>seq( i_first = t436 i_second = t437 i_rest = t438 ).
    t403 = t435.
    t402 = t403.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t439.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t440.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t443) = |PROGRAM|.
    CREATE OBJECT t442.
    t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t442->sval = t443.
    t441 = t442.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA(t446) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t446 IS BOUND.
      CREATE OBJECT t445.
      t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t445->cval = t446.
    ENDIF.
    t444 = t445.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t448 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t448.
    t447 = t448.
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t450) = CAST zlnt_runtime_dyna_a429568d5be8( t441 ).
    DATA(t451) = CAST zlnt_runtime_dyna_a429568d5be8( t444 ).
    DATA(t452) = CAST zlnt_runtime_arra_c22708faf2e3( t447 ).
    t449 = zcl_lnt_st_combi_module=>seq( i_first = t450 i_second = t451 i_rest = t452 ).
    t440 = t449.
    t439 = t440.
    DATA t453 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t453.
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t457) = |DEFAULT|.
    CREATE OBJECT t456.
    t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t456->sval = t457.
    t455 = t456.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t459.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t460.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA(t462) = CAST zif_lnt_statement_runnable( t439 ).
    IF t462 IS BOUND.
      CREATE OBJECT t461.
      t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t463 TYPE REF TO object.
      t463 = t462.
      t461->oval = t463.
    ENDIF.
    t460 = zcl_lnt_st_combi_module=>opt( i_first = t461 ).
    IF t460 IS BOUND.
      CREATE OBJECT t459.
      t459->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t464 TYPE REF TO object.
      t464 = t460.
      t459->oval = t464.
    ENDIF.
    t458 = t459.
    DATA t465 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t466 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t466.
    t465 = t466.
    DATA(t467) = CAST zlnt_runtime_arra_c22708faf2e3( t465 ).
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t469) = |SCREEN|.
    CREATE OBJECT t468.
    t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t468->sval = t469.
    APPEND t468 TO t467->items.
    DATA(t470) = CAST zlnt_runtime_arra_c22708faf2e3( t465 ).
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    DATA(t472) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t472 IS BOUND.
      CREATE OBJECT t471.
      t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t471->cval = t472.
    ENDIF.
    APPEND t471 TO t470->items.
    DATA t473 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t474) = CAST zlnt_runtime_dyna_a429568d5be8( t455 ).
    DATA(t475) = CAST zlnt_runtime_dyna_a429568d5be8( t458 ).
    DATA(t476) = CAST zlnt_runtime_arra_c22708faf2e3( t465 ).
    t473 = zcl_lnt_st_combi_module=>seq( i_first = t474 i_second = t475 i_rest = t476 ).
    t454 = t473.
    t453 = t454.
    DATA t477 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t477.
    DATA t478 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t478.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t481) = |TAB|.
    CREATE OBJECT t480.
    t480->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t480->sval = t481.
    t479 = t480.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t483.
    DATA t484 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t485) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t484 = zcl_lnt_st_combi_module=>tok( i_t = t485 ).
    IF t484 IS BOUND.
      CREATE OBJECT t483.
      t483->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t486 TYPE REF TO object.
      t486 = t484.
      t483->oval = t486.
    ENDIF.
    t482 = t483.
    DATA t487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t488 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t488.
    t487 = t488.
    DATA(t489) = CAST zlnt_runtime_arra_c22708faf2e3( t487 ).
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t490.
    DATA(t491) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t491 IS BOUND.
      CREATE OBJECT t490.
      t490->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t490->cval = t491.
    ENDIF.
    APPEND t490 TO t489->items.
    DATA(t492) = CAST zlnt_runtime_arra_c22708faf2e3( t487 ).
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t493.
    DATA t494 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t495) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t494 = zcl_lnt_st_combi_module=>tok( i_t = t495 ).
    IF t494 IS BOUND.
      CREATE OBJECT t493.
      t493->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t496 TYPE REF TO object.
      t496 = t494.
      t493->oval = t496.
    ENDIF.
    APPEND t493 TO t492->items.
    DATA(t497) = CAST zlnt_runtime_arra_c22708faf2e3( t487 ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA(t499) = CAST zif_lnt_statement_runnable( t1 ).
    IF t499 IS BOUND.
      CREATE OBJECT t498.
      t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t500 TYPE REF TO object.
      t500 = t499.
      t498->oval = t500.
    ENDIF.
    APPEND t498 TO t497->items.
    DATA(t501) = CAST zlnt_runtime_arra_c22708faf2e3( t487 ).
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA(t503) = CAST zif_lnt_statement_runnable( t375 ).
    IF t503 IS BOUND.
      CREATE OBJECT t502.
      t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t504 TYPE REF TO object.
      t504 = t503.
      t502->oval = t504.
    ENDIF.
    APPEND t502 TO t501->items.
    DATA(t505) = CAST zlnt_runtime_arra_c22708faf2e3( t487 ).
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA(t509) = CAST zif_lnt_statement_runnable( t453 ).
    IF t509 IS BOUND.
      CREATE OBJECT t508.
      t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t510 TYPE REF TO object.
      t510 = t509.
      t508->oval = t510.
    ENDIF.
    t507 = zcl_lnt_st_combi_module=>opt( i_first = t508 ).
    IF t507 IS BOUND.
      CREATE OBJECT t506.
      t506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t511 TYPE REF TO object.
      t511 = t507.
      t506->oval = t511.
    ENDIF.
    APPEND t506 TO t505->items.
    DATA(t512) = CAST zlnt_runtime_arra_c22708faf2e3( t487 ).
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t513.
    DATA t514 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t514.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t515.
    DATA(t516) = CAST zif_lnt_statement_runnable( t191 ).
    IF t516 IS BOUND.
      CREATE OBJECT t515.
      t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t517 TYPE REF TO object.
      t517 = t516.
      t515->oval = t517.
    ENDIF.
    t514 = zcl_lnt_st_combi_module=>opt( i_first = t515 ).
    IF t514 IS BOUND.
      CREATE OBJECT t513.
      t513->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t518 TYPE REF TO object.
      t518 = t514.
      t513->oval = t518.
    ENDIF.
    APPEND t513 TO t512->items.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t520) = CAST zlnt_runtime_dyna_a429568d5be8( t479 ).
    DATA(t521) = CAST zlnt_runtime_dyna_a429568d5be8( t482 ).
    DATA(t522) = CAST zlnt_runtime_arra_c22708faf2e3( t487 ).
    t519 = zcl_lnt_st_combi_module=>seq( i_first = t520 i_second = t521 i_rest = t522 ).
    t478 = t519.
    t477 = t478.
    DATA t523 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t523.
    DATA t524 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t524.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t527) = |FUNCTION KEY|.
    CREATE OBJECT t526.
    t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t526->sval = t527.
    t525 = t526.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t529.
    DATA(t530) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t530 IS BOUND.
      CREATE OBJECT t529.
      t529->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t529->cval = t530.
    ENDIF.
    t528 = t529.
    DATA t531 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t532 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t532.
    t531 = t532.
    DATA t533 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t534) = CAST zlnt_runtime_dyna_a429568d5be8( t525 ).
    DATA(t535) = CAST zlnt_runtime_dyna_a429568d5be8( t528 ).
    DATA(t536) = CAST zlnt_runtime_arra_c22708faf2e3( t531 ).
    t533 = zcl_lnt_st_combi_module=>seq( i_first = t534 i_second = t535 i_rest = t536 ).
    t524 = t533.
    t523 = t524.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t537.
    DATA t538 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t538.
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t541) = |SKIP|.
    CREATE OBJECT t540.
    t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t540->sval = t541.
    t539 = t540.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t543.
    DATA t544 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t544.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t545.
    DATA(t546) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t546 IS BOUND.
      CREATE OBJECT t545.
      t545->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t545->cval = t546.
    ENDIF.
    t544 = zcl_lnt_st_combi_module=>opt( i_first = t545 ).
    IF t544 IS BOUND.
      CREATE OBJECT t543.
      t543->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t547 TYPE REF TO object.
      t547 = t544.
      t543->oval = t547.
    ENDIF.
    t542 = t543.
    DATA t548 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t549 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t549.
    t548 = t549.
    DATA t550 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t551) = CAST zlnt_runtime_dyna_a429568d5be8( t539 ).
    DATA(t552) = CAST zlnt_runtime_dyna_a429568d5be8( t542 ).
    DATA(t553) = CAST zlnt_runtime_arra_c22708faf2e3( t548 ).
    t550 = zcl_lnt_st_combi_module=>seq( i_first = t551 i_second = t552 i_rest = t553 ).
    t538 = t550.
    t537 = t538.
    DATA t554 TYPE REF TO zif_lnt_statement_runnable.
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t558) = |POS_LOW|.
    CREATE OBJECT t557.
    t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t557->sval = t558.
    t556 = t557.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t561) = |POS_HIGH|.
    CREATE OBJECT t560.
    t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t560->sval = t561.
    t559 = t560.
    DATA t562 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t563 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t563.
    t562 = t563.
    DATA t564 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t565) = CAST zlnt_runtime_dyna_a429568d5be8( t556 ).
    DATA(t566) = CAST zlnt_runtime_dyna_a429568d5be8( t559 ).
    DATA(t567) = CAST zlnt_runtime_arra_c22708faf2e3( t562 ).
    t564 = zcl_lnt_st_combi_module=>alt_prio( i_first = t565 i_second = t566 i_rest = t567 ).
    t555 = t564.
    t554 = t555.
    DATA t568 TYPE REF TO zif_lnt_statement_runnable.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    DATA t570 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t570.
    DATA(t571) = |^(0?[1-9]\|[1234567][0-9]\|8[0-3])$|.
    DATA(t572) = ||.
    CREATE OBJECT t570 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t571 flags = t572.
    t569 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t570 ).
    t568 = t569.
    DATA t573 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t573.
    DATA t574 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t574.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t577) = |POSITION|.
    CREATE OBJECT t576.
    t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t576->sval = t577.
    t575 = t576.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = CAST zif_lnt_statement_runnable( t568 ).
    IF t583 IS BOUND.
      CREATE OBJECT t582.
      t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t584 TYPE REF TO object.
      t584 = t583.
      t582->oval = t584.
    ENDIF.
    t581 = t582.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t585.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t586.
    DATA(t587) = CAST zif_lnt_statement_runnable( t554 ).
    IF t587 IS BOUND.
      CREATE OBJECT t586.
      t586->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t588 TYPE REF TO object.
      t588 = t587.
      t586->oval = t588.
    ENDIF.
    t585 = t586.
    DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t590.
    t589 = t590.
    DATA t591 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t592) = CAST zlnt_runtime_dyna_a429568d5be8( t581 ).
    DATA(t593) = CAST zlnt_runtime_dyna_a429568d5be8( t585 ).
    DATA(t594) = CAST zlnt_runtime_arra_c22708faf2e3( t589 ).
    t591 = zcl_lnt_st_combi_module=>alt_prio( i_first = t592 i_second = t593 i_rest = t594 ).
    t580 = t591.
    IF t580 IS BOUND.
      CREATE OBJECT t579.
      t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t595 TYPE REF TO object.
      t595 = t580.
      t579->oval = t595.
    ENDIF.
    t578 = t579.
    DATA t596 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t597 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t597.
    t596 = t597.
    DATA(t598) = CAST zlnt_runtime_arra_c22708faf2e3( t596 ).
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA t600 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t600.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t601.
    DATA t602 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t602.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t605) = |FOR TABLE|.
    CREATE OBJECT t604.
    t604->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t604->sval = t605.
    t603 = t604.
    DATA t606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t606.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t607.
    DATA(t608) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t608 IS BOUND.
      CREATE OBJECT t607.
      t607->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t607->cval = t608.
    ENDIF.
    t606 = t607.
    DATA t609 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t610 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t610.
    t609 = t610.
    DATA t611 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t612) = CAST zlnt_runtime_dyna_a429568d5be8( t603 ).
    DATA(t613) = CAST zlnt_runtime_dyna_a429568d5be8( t606 ).
    DATA(t614) = CAST zlnt_runtime_arra_c22708faf2e3( t609 ).
    t611 = zcl_lnt_st_combi_module=>seq( i_first = t612 i_second = t613 i_rest = t614 ).
    t602 = t611.
    IF t602 IS BOUND.
      CREATE OBJECT t601.
      t601->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t615 TYPE REF TO object.
      t615 = t602.
      t601->oval = t615.
    ENDIF.
    t600 = zcl_lnt_st_combi_module=>opt( i_first = t601 ).
    IF t600 IS BOUND.
      CREATE OBJECT t599.
      t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t616 TYPE REF TO object.
      t616 = t600.
      t599->oval = t616.
    ENDIF.
    APPEND t599 TO t598->items.
    DATA t617 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t618) = CAST zlnt_runtime_dyna_a429568d5be8( t575 ).
    DATA(t619) = CAST zlnt_runtime_dyna_a429568d5be8( t578 ).
    DATA(t620) = CAST zlnt_runtime_arra_c22708faf2e3( t596 ).
    t617 = zcl_lnt_st_combi_module=>seq( i_first = t618 i_second = t619 i_rest = t620 ).
    t574 = t617.
    t573 = t574.
    DATA t621 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t621.
    DATA t622 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t622.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t625) = |INCLUDE BLOCKS|.
    CREATE OBJECT t624.
    t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t624->sval = t625.
    t623 = t624.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t626.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    DATA(t628) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d105_86aa91718a3c ).
    IF t628 IS BOUND.
      CREATE OBJECT t627.
      t627->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t627->cval = t628.
    ENDIF.
    t626 = t627.
    DATA t629 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t630 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t630.
    t629 = t630.
    DATA t631 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t632) = CAST zlnt_runtime_dyna_a429568d5be8( t623 ).
    DATA(t633) = CAST zlnt_runtime_dyna_a429568d5be8( t626 ).
    DATA(t634) = CAST zlnt_runtime_arra_c22708faf2e3( t629 ).
    t631 = zcl_lnt_st_combi_module=>seq( i_first = t632 i_second = t633 i_rest = t634 ).
    t622 = t631.
    t621 = t622.
    DATA t635 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t635.
    DATA t636 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t636.
    DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t639) = |BEGIN OF TABBED BLOCK|.
    CREATE OBJECT t638.
    t638->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t638->sval = t639.
    t637 = t638.
    DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t640.
    DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t641.
    DATA(t642) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d105_86aa91718a3c ).
    IF t642 IS BOUND.
      CREATE OBJECT t641.
      t641->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t641->cval = t642.
    ENDIF.
    t640 = t641.
    DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t644 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t644.
    t643 = t644.
    DATA(t645) = CAST zlnt_runtime_arra_c22708faf2e3( t643 ).
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t647) = |FOR|.
    CREATE OBJECT t646.
    t646->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t646->sval = t647.
    APPEND t646 TO t645->items.
    DATA(t648) = CAST zlnt_runtime_arra_c22708faf2e3( t643 ).
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t649.
    DATA(t650) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t650 IS BOUND.
      CREATE OBJECT t649.
      t649->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t649->cval = t650.
    ENDIF.
    APPEND t649 TO t648->items.
    DATA(t651) = CAST zlnt_runtime_arra_c22708faf2e3( t643 ).
    DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t653) = |LINES|.
    CREATE OBJECT t652.
    t652->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t652->sval = t653.
    APPEND t652 TO t651->items.
    DATA(t654) = CAST zlnt_runtime_arra_c22708faf2e3( t643 ).
    DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t655.
    DATA t656 TYPE REF TO zif_lnt_statement_runnable.
    DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t658) = |NO INTERVALS|.
    CREATE OBJECT t657.
    t657->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t657->sval = t658.
    t656 = zcl_lnt_st_combi_module=>opt_prio( i_first = t657 ).
    IF t656 IS BOUND.
      CREATE OBJECT t655.
      t655->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t659 TYPE REF TO object.
      t659 = t656.
      t655->oval = t659.
    ENDIF.
    APPEND t655 TO t654->items.
    DATA t660 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t661) = CAST zlnt_runtime_dyna_a429568d5be8( t637 ).
    DATA(t662) = CAST zlnt_runtime_dyna_a429568d5be8( t640 ).
    DATA(t663) = CAST zlnt_runtime_arra_c22708faf2e3( t643 ).
    t660 = zcl_lnt_st_combi_module=>seq( i_first = t661 i_second = t662 i_rest = t663 ).
    t636 = t660.
    t635 = t636.
    DATA t664 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t664.
    DATA t665 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t665.
    DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t668) = |ULINE|.
    CREATE OBJECT t667.
    t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t667->sval = t668.
    t666 = t667.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t669.
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t670.
    DATA t671 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t671.
    DATA t672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t672.
    DATA(t673) = CAST zif_lnt_statement_runnable( t284 ).
    IF t673 IS BOUND.
      CREATE OBJECT t672.
      t672->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t674 TYPE REF TO object.
      t674 = t673.
      t672->oval = t674.
    ENDIF.
    t671 = zcl_lnt_st_combi_module=>opt( i_first = t672 ).
    IF t671 IS BOUND.
      CREATE OBJECT t670.
      t670->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t675 TYPE REF TO object.
      t675 = t671.
      t670->oval = t675.
    ENDIF.
    t669 = t670.
    DATA t676 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t677 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t677.
    t676 = t677.
    DATA(t678) = CAST zlnt_runtime_arra_c22708faf2e3( t676 ).
    DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t679.
    DATA t680 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t680.
    DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t681.
    DATA(t682) = CAST zif_lnt_statement_runnable( t191 ).
    IF t682 IS BOUND.
      CREATE OBJECT t681.
      t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t683 TYPE REF TO object.
      t683 = t682.
      t681->oval = t683.
    ENDIF.
    t680 = zcl_lnt_st_combi_module=>opt( i_first = t681 ).
    IF t680 IS BOUND.
      CREATE OBJECT t679.
      t679->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t684 TYPE REF TO object.
      t684 = t680.
      t679->oval = t684.
    ENDIF.
    APPEND t679 TO t678->items.
    DATA t685 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t686) = CAST zlnt_runtime_dyna_a429568d5be8( t666 ).
    DATA(t687) = CAST zlnt_runtime_dyna_a429568d5be8( t669 ).
    DATA(t688) = CAST zlnt_runtime_arra_c22708faf2e3( t676 ).
    t685 = zcl_lnt_st_combi_module=>seq( i_first = t686 i_second = t687 i_rest = t688 ).
    t665 = t685.
    t664 = t665.
    DATA t689 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t689.
    DATA t690 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t690.
    DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t693) = |INCLUDE PARAMETERS|.
    CREATE OBJECT t692.
    t692->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t692->sval = t693.
    t691 = t692.
    DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t694.
    DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t695.
    DATA(t696) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t696 IS BOUND.
      CREATE OBJECT t695.
      t695->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t695->cval = t696.
    ENDIF.
    t694 = t695.
    DATA t697 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t698 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t698.
    t697 = t698.
    DATA t699 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t700) = CAST zlnt_runtime_dyna_a429568d5be8( t691 ).
    DATA(t701) = CAST zlnt_runtime_dyna_a429568d5be8( t694 ).
    DATA(t702) = CAST zlnt_runtime_arra_c22708faf2e3( t697 ).
    t699 = zcl_lnt_st_combi_module=>seq( i_first = t700 i_second = t701 i_rest = t702 ).
    t690 = t699.
    t689 = t690.
    DATA t703 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t703.
    DATA t704 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t704.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t707) = |INCLUDE SELECT-OPTIONS|.
    CREATE OBJECT t706.
    t706->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t706->sval = t707.
    t705 = t706.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t708.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t709.
    DATA(t710) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t710 IS BOUND.
      CREATE OBJECT t709.
      t709->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t709->cval = t710.
    ENDIF.
    t708 = t709.
    DATA t711 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t712 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t712.
    t711 = t712.
    DATA t713 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t714) = CAST zlnt_runtime_dyna_a429568d5be8( t705 ).
    DATA(t715) = CAST zlnt_runtime_dyna_a429568d5be8( t708 ).
    DATA(t716) = CAST zlnt_runtime_arra_c22708faf2e3( t711 ).
    t713 = zcl_lnt_st_combi_module=>seq( i_first = t714 i_second = t715 i_rest = t716 ).
    t704 = t713.
    t703 = t704.
    DATA t717 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t717.
    DATA t718 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t718.
    DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t721) = |EXCLUDE|.
    CREATE OBJECT t720.
    t720->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t720->sval = t721.
    t719 = t720.
    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t722.
    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t723.
    DATA t724 TYPE REF TO zif_lnt_statement_runnable.
    DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t727) = |IDS|.
    CREATE OBJECT t726.
    t726->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t726->sval = t727.
    t725 = t726.
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t730) = |PARAMETERS|.
    CREATE OBJECT t729.
    t729->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t729->sval = t730.
    t728 = t729.
    DATA t731 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t732 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t732.
    t731 = t732.
    DATA t733 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t734) = CAST zlnt_runtime_dyna_a429568d5be8( t725 ).
    DATA(t735) = CAST zlnt_runtime_dyna_a429568d5be8( t728 ).
    DATA(t736) = CAST zlnt_runtime_arra_c22708faf2e3( t731 ).
    t733 = zcl_lnt_st_combi_module=>alt( i_first = t734 i_second = t735 i_rest = t736 ).
    t724 = t733.
    IF t724 IS BOUND.
      CREATE OBJECT t723.
      t723->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t737 TYPE REF TO object.
      t737 = t724.
      t723->oval = t737.
    ENDIF.
    t722 = t723.
    DATA t738 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t739 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t739.
    t738 = t739.
    DATA(t740) = CAST zlnt_runtime_arra_c22708faf2e3( t738 ).
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t741.
    DATA t742 TYPE REF TO zif_lnt_statement_runnable.
    DATA t743 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t743.
    DATA(t744) = `^\w+$`.
    DATA(t745) = |^[A-Za-z0-9_]+$|.
    DATA(t746) = ||.
    CREATE OBJECT t743 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t745 flags = t746.
    t743->source = t744.
    t742 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t743 ).
    IF t742 IS BOUND.
      CREATE OBJECT t741.
      t741->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t747 TYPE REF TO object.
      t747 = t742.
      t741->oval = t747.
    ENDIF.
    APPEND t741 TO t740->items.
    DATA t748 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t749) = CAST zlnt_runtime_dyna_a429568d5be8( t719 ).
    DATA(t750) = CAST zlnt_runtime_dyna_a429568d5be8( t722 ).
    DATA(t751) = CAST zlnt_runtime_arra_c22708faf2e3( t738 ).
    t748 = zcl_lnt_st_combi_module=>seq( i_first = t749 i_second = t750 i_rest = t751 ).
    t718 = t748.
    t717 = t718.
    DATA t752 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t752.
    DATA t753 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t753.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t756) = |BEGIN OF VERSION|.
    CREATE OBJECT t755.
    t755->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t755->sval = t756.
    t754 = t755.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t758.
    DATA t759 TYPE REF TO zif_lnt_statement_runnable.
    DATA t760 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t760.
    DATA(t761) = `^\w+$`.
    DATA(t762) = |^[A-Za-z0-9_]+$|.
    DATA(t763) = ||.
    CREATE OBJECT t760 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t762 flags = t763.
    t760->source = t761.
    t759 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t760 ).
    IF t759 IS BOUND.
      CREATE OBJECT t758.
      t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t764 TYPE REF TO object.
      t764 = t759.
      t758->oval = t764.
    ENDIF.
    t757 = t758.
    DATA t765 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t766 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t766.
    t765 = t766.
    DATA(t767) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t768.
    DATA(t769) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c ).
    IF t769 IS BOUND.
      CREATE OBJECT t768.
      t768->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t768->cval = t769.
    ENDIF.
    APPEND t768 TO t767->items.
    DATA t770 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t771) = CAST zlnt_runtime_dyna_a429568d5be8( t754 ).
    DATA(t772) = CAST zlnt_runtime_dyna_a429568d5be8( t757 ).
    DATA(t773) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    t770 = zcl_lnt_st_combi_module=>seq( i_first = t771 i_second = t772 i_rest = t773 ).
    t753 = t770.
    t752 = t753.
    DATA t774 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t774.
    DATA t775 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t775.
    DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t778) = |END OF VERSION|.
    CREATE OBJECT t777.
    t777->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t777->sval = t778.
    t776 = t777.
    DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t779.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t780.
    DATA t781 TYPE REF TO zif_lnt_statement_runnable.
    DATA t782 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t782.
    DATA(t783) = `^\w+$`.
    DATA(t784) = |^[A-Za-z0-9_]+$|.
    DATA(t785) = ||.
    CREATE OBJECT t782 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t784 flags = t785.
    t782->source = t783.
    t781 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t782 ).
    IF t781 IS BOUND.
      CREATE OBJECT t780.
      t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t786 TYPE REF TO object.
      t786 = t781.
      t780->oval = t786.
    ENDIF.
    t779 = t780.
    DATA t787 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t788 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t788.
    t787 = t788.
    DATA t789 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t790) = CAST zlnt_runtime_dyna_a429568d5be8( t776 ).
    DATA(t791) = CAST zlnt_runtime_dyna_a429568d5be8( t779 ).
    DATA(t792) = CAST zlnt_runtime_arra_c22708faf2e3( t787 ).
    t789 = zcl_lnt_st_combi_module=>seq( i_first = t790 i_second = t791 i_rest = t792 ).
    t775 = t789.
    t774 = t775.
    DATA t793 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t793.
    DATA t794 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t794.
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t797) = |SELECTION-SCREEN|.
    CREATE OBJECT t796.
    t796->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t796->sval = t797.
    t795 = t796.
    DATA t798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t798.
    DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t799.
    DATA t800 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t800.
    DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t801.
    DATA t802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t802.
    DATA(t803) = CAST zif_lnt_statement_runnable( t346 ).
    IF t803 IS BOUND.
      CREATE OBJECT t802.
      t802->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t804 TYPE REF TO object.
      t804 = t803.
      t802->oval = t804.
    ENDIF.
    t801 = t802.
    DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t805.
    DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t806.
    DATA(t807) = CAST zif_lnt_statement_runnable( t523 ).
    IF t807 IS BOUND.
      CREATE OBJECT t806.
      t806->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t808 TYPE REF TO object.
      t808 = t807.
      t806->oval = t808.
    ENDIF.
    t805 = t806.
    DATA t809 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t810 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t810.
    t809 = t810.
    DATA(t811) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t812.
    DATA(t813) = CAST zif_lnt_statement_runnable( t537 ).
    IF t813 IS BOUND.
      CREATE OBJECT t812.
      t812->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t814 TYPE REF TO object.
      t814 = t813.
      t812->oval = t814.
    ENDIF.
    APPEND t812 TO t811->items.
    DATA(t815) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t816.
    DATA(t817) = CAST zif_lnt_statement_runnable( t573 ).
    IF t817 IS BOUND.
      CREATE OBJECT t816.
      t816->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t818 TYPE REF TO object.
      t818 = t817.
      t816->oval = t818.
    ENDIF.
    APPEND t816 TO t815->items.
    DATA(t819) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t820.
    DATA(t821) = CAST zif_lnt_statement_runnable( t621 ).
    IF t821 IS BOUND.
      CREATE OBJECT t820.
      t820->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t822 TYPE REF TO object.
      t822 = t821.
      t820->oval = t822.
    ENDIF.
    APPEND t820 TO t819->items.
    DATA(t823) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t824.
    DATA(t825) = CAST zif_lnt_statement_runnable( t703 ).
    IF t825 IS BOUND.
      CREATE OBJECT t824.
      t824->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t826 TYPE REF TO object.
      t826 = t825.
      t824->oval = t826.
    ENDIF.
    APPEND t824 TO t823->items.
    DATA(t827) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t828.
    DATA(t829) = CAST zif_lnt_statement_runnable( t402 ).
    IF t829 IS BOUND.
      CREATE OBJECT t828.
      t828->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t830 TYPE REF TO object.
      t830 = t829.
      t828->oval = t830.
    ENDIF.
    APPEND t828 TO t827->items.
    DATA(t831) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t832.
    DATA(t833) = CAST zif_lnt_statement_runnable( t477 ).
    IF t833 IS BOUND.
      CREATE OBJECT t832.
      t832->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t834 TYPE REF TO object.
      t834 = t833.
      t832->oval = t834.
    ENDIF.
    APPEND t832 TO t831->items.
    DATA(t835) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t836.
    DATA(t837) = CAST zif_lnt_statement_runnable( t664 ).
    IF t837 IS BOUND.
      CREATE OBJECT t836.
      t836->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t838 TYPE REF TO object.
      t838 = t837.
      t836->oval = t838.
    ENDIF.
    APPEND t836 TO t835->items.
    DATA(t839) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t840.
    DATA(t841) = CAST zif_lnt_statement_runnable( t15 ).
    IF t841 IS BOUND.
      CREATE OBJECT t840.
      t840->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t842 TYPE REF TO object.
      t842 = t841.
      t840->oval = t842.
    ENDIF.
    APPEND t840 TO t839->items.
    DATA(t843) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t844.
    DATA(t845) = CAST zif_lnt_statement_runnable( t635 ).
    IF t845 IS BOUND.
      CREATE OBJECT t844.
      t844->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t846 TYPE REF TO object.
      t846 = t845.
      t844->oval = t846.
    ENDIF.
    APPEND t844 TO t843->items.
    DATA(t847) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t848.
    DATA(t849) = CAST zif_lnt_statement_runnable( t61 ).
    IF t849 IS BOUND.
      CREATE OBJECT t848.
      t848->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t850 TYPE REF TO object.
      t850 = t849.
      t848->oval = t850.
    ENDIF.
    APPEND t848 TO t847->items.
    DATA(t851) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t852.
    DATA(t853) = CAST zif_lnt_statement_runnable( t185 ).
    IF t853 IS BOUND.
      CREATE OBJECT t852.
      t852->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t854 TYPE REF TO object.
      t854 = t853.
      t852->oval = t854.
    ENDIF.
    APPEND t852 TO t851->items.
    DATA(t855) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t856.
    DATA(t857) = CAST zif_lnt_statement_runnable( t188 ).
    IF t857 IS BOUND.
      CREATE OBJECT t856.
      t856->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t858 TYPE REF TO object.
      t858 = t857.
      t856->oval = t858.
    ENDIF.
    APPEND t856 TO t855->items.
    DATA(t859) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t860.
    DATA(t861) = CAST zif_lnt_statement_runnable( t689 ).
    IF t861 IS BOUND.
      CREATE OBJECT t860.
      t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t862 TYPE REF TO object.
      t862 = t861.
      t860->oval = t862.
    ENDIF.
    APPEND t860 TO t859->items.
    DATA(t863) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t864.
    DATA(t865) = CAST zif_lnt_statement_runnable( t150 ).
    IF t865 IS BOUND.
      CREATE OBJECT t864.
      t864->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t866 TYPE REF TO object.
      t866 = t865.
      t864->oval = t866.
    ENDIF.
    APPEND t864 TO t863->items.
    DATA(t867) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t868.
    DATA(t869) = CAST zif_lnt_statement_runnable( t171 ).
    IF t869 IS BOUND.
      CREATE OBJECT t868.
      t868->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t870 TYPE REF TO object.
      t870 = t869.
      t868->oval = t870.
    ENDIF.
    APPEND t868 TO t867->items.
    DATA(t871) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t872.
    DATA(t873) = CAST zif_lnt_statement_runnable( t717 ).
    IF t873 IS BOUND.
      CREATE OBJECT t872.
      t872->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t874 TYPE REF TO object.
      t874 = t873.
      t872->oval = t874.
    ENDIF.
    APPEND t872 TO t871->items.
    DATA(t875) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t876.
    DATA(t877) = CAST zif_lnt_statement_runnable( t752 ).
    IF t877 IS BOUND.
      CREATE OBJECT t876.
      t876->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t878 TYPE REF TO object.
      t878 = t877.
      t876->oval = t878.
    ENDIF.
    APPEND t876 TO t875->items.
    DATA(t879) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t880.
    DATA(t881) = CAST zif_lnt_statement_runnable( t774 ).
    IF t881 IS BOUND.
      CREATE OBJECT t880.
      t880->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t882 TYPE REF TO object.
      t882 = t881.
      t880->oval = t882.
    ENDIF.
    APPEND t880 TO t879->items.
    DATA(t883) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t884.
    DATA(t885) = CAST zif_lnt_statement_runnable( t453 ).
    IF t885 IS BOUND.
      CREATE OBJECT t884.
      t884->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t886 TYPE REF TO object.
      t886 = t885.
      t884->oval = t886.
    ENDIF.
    APPEND t884 TO t883->items.
    DATA t887 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t888) = CAST zlnt_runtime_dyna_a429568d5be8( t801 ).
    DATA(t889) = CAST zlnt_runtime_dyna_a429568d5be8( t805 ).
    DATA(t890) = CAST zlnt_runtime_arra_c22708faf2e3( t809 ).
    t887 = zcl_lnt_st_combi_module=>alt_prio( i_first = t888 i_second = t889 i_rest = t890 ).
    t800 = t887.
    IF t800 IS BOUND.
      CREATE OBJECT t799.
      t799->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t891 TYPE REF TO object.
      t891 = t800.
      t799->oval = t891.
    ENDIF.
    t798 = t799.
    DATA t892 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t893 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t893.
    t892 = t893.
    DATA t894 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t895) = CAST zlnt_runtime_dyna_a429568d5be8( t795 ).
    DATA(t896) = CAST zlnt_runtime_dyna_a429568d5be8( t798 ).
    DATA(t897) = CAST zlnt_runtime_arra_c22708faf2e3( t892 ).
    t894 = zcl_lnt_st_combi_module=>seq( i_first = t895 i_second = t896 i_rest = t897 ).
    t794 = t894.
    t793 = t794.
    DATA t898 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t898.
    DATA(t899) = |Cloud|.
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t900.
    DATA(t901) = CAST zif_lnt_statement_runnable( t793 ).
    IF t901 IS BOUND.
      CREATE OBJECT t900.
      t900->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t902 TYPE REF TO object.
      t902 = t901.
      t900->oval = t902.
    ENDIF.
    t898 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t899 i_first = t900 ).
    result = t898.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d596_b011b05deabd.
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
