* TS: src/abap/2_statements/statements/new_page.ts:7:1 NewPage
CLASS zcl_lnt_new_page DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_new_page IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |LINE-SIZE|.
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
    DATA(t19) = |PRINT|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = |OFF|.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |ON|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    t31 = zcl_lnt_st_combi_module=>alt( i_first = t32 i_second = t33 i_rest = t34 ).
    t22 = t31.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t22.
      t21->oval = t35.
    ENDIF.
    t20 = t21.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t40 i_rest = t41 ).
    t16 = t38.
    t15 = t16.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = |PARAMETERS|.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    t50 = t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t44 ).
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t47 ).
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t54 i_rest = t55 ).
    t43 = t52.
    t42 = t43.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = |DESTINATION|.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t64 = t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t61 ).
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    t66 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t68 i_rest = t69 ).
    t57 = t66.
    t56 = t57.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |ARCHIVE PARAMETERS|.
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
    t70 = t71.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = |LINE-COUNT|.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t92 = t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t95) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t92 ).
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t95 i_second = t96 i_rest = t97 ).
    t85 = t94.
    t84 = t85.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = |COVER TEXT|.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    t98 = t99.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = |SAP COVER PAGE|.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = t116.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    t120 = t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t117 ).
    DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t120 ).
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t124 i_rest = t125 ).
    t113 = t122.
    t112 = t113.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = |IMMEDIATELY|.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t135.
    t134 = t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t128 ).
    DATA(t138) = CAST zlnt_runtime_dyna_a429568d5be8( t131 ).
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t134 ).
    t136 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t138 i_rest = t139 ).
    t127 = t136.
    t126 = t127.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = |COPIES|.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t148 ).
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t141 = t150.
    t140 = t141.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = |KEEP IN SPOOL|.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t165) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t167) = CAST zlnt_runtime_arra_c22708faf2e3( t162 ).
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t166 i_rest = t167 ).
    t155 = t164.
    t154 = t155.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = |LAYOUT|.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    t176 = t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t170 ).
    DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    t178 = zcl_lnt_st_combi_module=>seq( i_first = t179 i_second = t180 i_rest = t181 ).
    t169 = t178.
    t168 = t169.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t186) = |LIST AUTHORITY|.
    CREATE OBJECT t185.
    t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t185->sval = t186.
    t184 = t185.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t188->cval = t189.
    ENDIF.
    t187 = t188.
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t191.
    t190 = t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t193) = CAST zlnt_runtime_dyna_a429568d5be8( t184 ).
    DATA(t194) = CAST zlnt_runtime_dyna_a429568d5be8( t187 ).
    DATA(t195) = CAST zlnt_runtime_arra_c22708faf2e3( t190 ).
    t192 = zcl_lnt_st_combi_module=>seq( i_first = t193 i_second = t194 i_rest = t195 ).
    t183 = t192.
    t182 = t183.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t200) = |DEPARTMENT|.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = t200.
    t198 = t199.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t202->cval = t203.
    ENDIF.
    t201 = t202.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t205.
    t204 = t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t198 ).
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t201 ).
    DATA(t209) = CAST zlnt_runtime_arra_c22708faf2e3( t204 ).
    t206 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t208 i_rest = t209 ).
    t197 = t206.
    t196 = t197.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t214) = |RECEIVER|.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = t214.
    t212 = t213.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t217 IS BOUND.
      CREATE OBJECT t216.
      t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t216->cval = t217.
    ENDIF.
    t215 = t216.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t219.
    t218 = t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t221) = CAST zlnt_runtime_dyna_a429568d5be8( t212 ).
    DATA(t222) = CAST zlnt_runtime_dyna_a429568d5be8( t215 ).
    DATA(t223) = CAST zlnt_runtime_arra_c22708faf2e3( t218 ).
    t220 = zcl_lnt_st_combi_module=>seq( i_first = t221 i_second = t222 i_rest = t223 ).
    t211 = t220.
    t210 = t211.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t228) = |LIST DATASET|.
    CREATE OBJECT t227.
    t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t227->sval = t228.
    t226 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t230->cval = t231.
    ENDIF.
    t229 = t230.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t233.
    t232 = t233.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t235) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t236) = CAST zlnt_runtime_dyna_a429568d5be8( t229 ).
    DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t232 ).
    t234 = zcl_lnt_st_combi_module=>seq( i_first = t235 i_second = t236 i_rest = t237 ).
    t225 = t234.
    t224 = t225.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t242) = |LIST NAME|.
    CREATE OBJECT t241.
    t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t241->sval = t242.
    t240 = t241.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t244->cval = t245.
    ENDIF.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t247.
    t246 = t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t249) = CAST zlnt_runtime_dyna_a429568d5be8( t240 ).
    DATA(t250) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
    t248 = zcl_lnt_st_combi_module=>seq( i_first = t249 i_second = t250 i_rest = t251 ).
    t239 = t248.
    t238 = t239.
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t252.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t256) = |NEW LIST IDENTIFICATION|.
    CREATE OBJECT t255.
    t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t255->sval = t256.
    t254 = t255.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t258->cval = t259.
    ENDIF.
    t257 = t258.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t261.
    t260 = t261.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t263) = CAST zlnt_runtime_dyna_a429568d5be8( t254 ).
    DATA(t264) = CAST zlnt_runtime_dyna_a429568d5be8( t257 ).
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    t262 = zcl_lnt_st_combi_module=>seq( i_first = t263 i_second = t264 i_rest = t265 ).
    t253 = t262.
    t252 = t253.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t266.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t270) = |NEW-PAGE|.
    CREATE OBJECT t269.
    t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t269->sval = t270.
    t268 = t269.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA t275 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = CAST zif_lnt_statement_runnable( t15 ).
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t279 TYPE REF TO object.
      t279 = t278.
      t277->oval = t279.
    ENDIF.
    t276 = t277.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t285) = |NO-TITLE|.
    CREATE OBJECT t284.
    t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t284->sval = t285.
    t283 = t284.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t288) = |WITH-TITLE|.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = t288.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t290.
    t289 = t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t292) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t293) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t294) = CAST zlnt_runtime_arra_c22708faf2e3( t289 ).
    t291 = zcl_lnt_st_combi_module=>alt( i_first = t292 i_second = t293 i_rest = t294 ).
    t282 = t291.
    IF t282 IS BOUND.
      CREATE OBJECT t281.
      t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t295 TYPE REF TO object.
      t295 = t282.
      t281->oval = t295.
    ENDIF.
    t280 = t281.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t297.
    t296 = t297.
    DATA(t298) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zif_lnt_statement_runnable.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t303) = |NO-HEADING|.
    CREATE OBJECT t302.
    t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t302->sval = t303.
    t301 = t302.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t306) = |WITH-HEADING|.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = t306.
    t304 = t305.
    DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t308 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t308.
    t307 = t308.
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t310) = CAST zlnt_runtime_dyna_a429568d5be8( t301 ).
    DATA(t311) = CAST zlnt_runtime_dyna_a429568d5be8( t304 ).
    DATA(t312) = CAST zlnt_runtime_arra_c22708faf2e3( t307 ).
    t309 = zcl_lnt_st_combi_module=>alt( i_first = t310 i_second = t311 i_rest = t312 ).
    t300 = t309.
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t313 TYPE REF TO object.
      t313 = t300.
      t299->oval = t313.
    ENDIF.
    APPEND t299 TO t298->items.
    DATA(t314) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t316) = |NO DIALOG|.
    CREATE OBJECT t315.
    t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t315->sval = t316.
    APPEND t315 TO t314->items.
    DATA(t317) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t319) = |NO-TOPOFPAGE|.
    CREATE OBJECT t318.
    t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t318->sval = t319.
    APPEND t318 TO t317->items.
    DATA(t320) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA(t322) = CAST zif_lnt_statement_runnable( t42 ).
    IF t322 IS BOUND.
      CREATE OBJECT t321.
      t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t323 TYPE REF TO object.
      t323 = t322.
      t321->oval = t323.
    ENDIF.
    APPEND t321 TO t320->items.
    DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = CAST zif_lnt_statement_runnable( t182 ).
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t327 TYPE REF TO object.
      t327 = t326.
      t325->oval = t327.
    ENDIF.
    APPEND t325 TO t324->items.
    DATA(t328) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA(t330) = CAST zif_lnt_statement_runnable( t126 ).
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t331 TYPE REF TO object.
      t331 = t330.
      t329->oval = t331.
    ENDIF.
    APPEND t329 TO t328->items.
    DATA(t332) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = CAST zif_lnt_statement_runnable( t224 ).
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t335 TYPE REF TO object.
      t335 = t334.
      t333->oval = t335.
    ENDIF.
    APPEND t333 TO t332->items.
    DATA(t336) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA(t338) = CAST zif_lnt_statement_runnable( t112 ).
    IF t338 IS BOUND.
      CREATE OBJECT t337.
      t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t339 TYPE REF TO object.
      t339 = t338.
      t337->oval = t339.
    ENDIF.
    APPEND t337 TO t336->items.
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = CAST zif_lnt_statement_runnable( t252 ).
    IF t342 IS BOUND.
      CREATE OBJECT t341.
      t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t343 TYPE REF TO object.
      t343 = t342.
      t341->oval = t343.
    ENDIF.
    APPEND t341 TO t340->items.
    DATA(t344) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = CAST zif_lnt_statement_runnable( t154 ).
    IF t346 IS BOUND.
      CREATE OBJECT t345.
      t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t347 TYPE REF TO object.
      t347 = t346.
      t345->oval = t347.
    ENDIF.
    APPEND t345 TO t344->items.
    DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = CAST zif_lnt_statement_runnable( t196 ).
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t351 TYPE REF TO object.
      t351 = t350.
      t349->oval = t351.
    ENDIF.
    APPEND t349 TO t348->items.
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA(t354) = CAST zif_lnt_statement_runnable( t238 ).
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t355 TYPE REF TO object.
      t355 = t354.
      t353->oval = t355.
    ENDIF.
    APPEND t353 TO t352->items.
    DATA(t356) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = CAST zif_lnt_statement_runnable( t168 ).
    IF t358 IS BOUND.
      CREATE OBJECT t357.
      t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t359 TYPE REF TO object.
      t359 = t358.
      t357->oval = t359.
    ENDIF.
    APPEND t357 TO t356->items.
    DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA(t362) = CAST zif_lnt_statement_runnable( t56 ).
    IF t362 IS BOUND.
      CREATE OBJECT t361.
      t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t363 TYPE REF TO object.
      t363 = t362.
      t361->oval = t363.
    ENDIF.
    APPEND t361 TO t360->items.
    DATA(t364) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA(t366) = CAST zif_lnt_statement_runnable( t210 ).
    IF t366 IS BOUND.
      CREATE OBJECT t365.
      t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t367 TYPE REF TO object.
      t367 = t366.
      t365->oval = t367.
    ENDIF.
    APPEND t365 TO t364->items.
    DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA(t370) = CAST zif_lnt_statement_runnable( t140 ).
    IF t370 IS BOUND.
      CREATE OBJECT t369.
      t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t371 TYPE REF TO object.
      t371 = t370.
      t369->oval = t371.
    ENDIF.
    APPEND t369 TO t368->items.
    DATA(t372) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA(t374) = CAST zif_lnt_statement_runnable( t98 ).
    IF t374 IS BOUND.
      CREATE OBJECT t373.
      t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t375 TYPE REF TO object.
      t375 = t374.
      t373->oval = t375.
    ENDIF.
    APPEND t373 TO t372->items.
    DATA(t376) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA(t378) = CAST zif_lnt_statement_runnable( t70 ).
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t379 TYPE REF TO object.
      t379 = t378.
      t377->oval = t379.
    ENDIF.
    APPEND t377 TO t376->items.
    DATA(t380) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t382) = |NEW-SECTION|.
    CREATE OBJECT t381.
    t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t381->sval = t382.
    APPEND t381 TO t380->items.
    DATA(t383) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA(t385) = CAST zif_lnt_statement_runnable( t84 ).
    IF t385 IS BOUND.
      CREATE OBJECT t384.
      t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t386 TYPE REF TO object.
      t386 = t385.
      t384->oval = t386.
    ENDIF.
    APPEND t384 TO t383->items.
    DATA(t387) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA(t389) = CAST zif_lnt_statement_runnable( t1 ).
    IF t389 IS BOUND.
      CREATE OBJECT t388.
      t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t390 TYPE REF TO object.
      t390 = t389.
      t388->oval = t390.
    ENDIF.
    APPEND t388 TO t387->items.
    DATA t391 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t392) = CAST zlnt_runtime_dyna_a429568d5be8( t276 ).
    DATA(t393) = CAST zlnt_runtime_dyna_a429568d5be8( t280 ).
    DATA(t394) = CAST zlnt_runtime_arra_c22708faf2e3( t296 ).
    t391 = zcl_lnt_st_combi_module=>per( i_first = t392 i_second = t393 i_rest = t394 ).
    t275 = t391.
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t395 TYPE REF TO object.
      t395 = t275.
      t274->oval = t395.
    ENDIF.
    t273 = zcl_lnt_st_combi_module=>opt( i_first = t274 ).
    IF t273 IS BOUND.
      CREATE OBJECT t272.
      t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t396 TYPE REF TO object.
      t396 = t273.
      t272->oval = t396.
    ENDIF.
    t271 = t272.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t398.
    t397 = t398.
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t400) = CAST zlnt_runtime_dyna_a429568d5be8( t268 ).
    DATA(t401) = CAST zlnt_runtime_dyna_a429568d5be8( t271 ).
    DATA(t402) = CAST zlnt_runtime_arra_c22708faf2e3( t397 ).
    t399 = zcl_lnt_st_combi_module=>seq( i_first = t400 i_second = t401 i_rest = t402 ).
    t267 = t399.
    t266 = t267.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t403.
    DATA(t404) = |Cloud|.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t405.
    DATA(t406) = CAST zif_lnt_statement_runnable( t266 ).
    IF t406 IS BOUND.
      CREATE OBJECT t405.
      t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t407 TYPE REF TO object.
      t407 = t406.
      t405->oval = t407.
    ENDIF.
    t403 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t404 i_first = t405 ).
    result = t403.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d548_48b381ff180b.
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
