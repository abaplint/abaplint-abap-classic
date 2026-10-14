* TS: src/abap/2_statements/statements/import.ts:8:1 Import
CLASS zcl_lnt_st_import DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_import IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |TO|.
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
    DATA(t19) = |CLIENT|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA(t33) = |ID|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA(t47) = |USING|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t64 = zcl_lnt_st_combi_module=>tok( i_t = t65 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t64.
      t63->oval = t66.
    ENDIF.
    t62 = t63.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t67 = t68.
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t72.
    DATA(t73) = `^[\w$%\^]{2}$`.
    DATA(t74) = `^[A-Za-z0-9_$%\^]{2}$`.
    DATA(t75) = ||.
    CREATE OBJECT t72 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t74 flags = t75.
    t72->source = t73.
    t71 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t72 ).
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t71.
      t70->oval = t76.
    ENDIF.
    APPEND t70 TO t69->items.
    DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t80) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t79 = zcl_lnt_st_combi_module=>tok( i_t = t80 ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t79.
      t78->oval = t81.
    ENDIF.
    APPEND t78 TO t77->items.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t58 = t82.
    t57 = t58.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = |DATA BUFFER|.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t92->cval = t93.
    ENDIF.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    t94 = t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t88 ).
    DATA(t98) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t94 ).
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t98 i_rest = t99 ).
    t87 = t96.
    t86 = t87.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA(t102) = |KeyUser|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |MEMORY|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t115) = |ID|.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = t115.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116 = t117.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    t119 = t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t113 ).
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t122 i_second = t123 i_rest = t124 ).
    t112 = t121.
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t125 TYPE REF TO object.
      t125 = t112.
      t111->oval = t125.
    ENDIF.
    t110 = zcl_lnt_st_combi_module=>opt( i_first = t111 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t110.
      t109->oval = t126.
    ENDIF.
    t108 = t109.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t128.
    t127 = t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t130) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t132) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    t129 = zcl_lnt_st_combi_module=>seq( i_first = t130 i_second = t131 i_rest = t132 ).
    t104 = t129.
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t133 TYPE REF TO object.
      t133 = t104.
      t103->oval = t133.
    ENDIF.
    t101 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t102 i_first = t103 ).
    t100 = t101.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = |INTERNAL TABLE|.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t140->cval = t141.
    ENDIF.
    t139 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t143.
    t142 = t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t136 ).
    DATA(t146) = CAST zlnt_runtime_dyna_a429568d5be8( t139 ).
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
    t144 = zcl_lnt_st_combi_module=>seq( i_first = t145 i_second = t146 i_rest = t147 ).
    t135 = t144.
    t134 = t135.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA(t150) = |KeyUser|.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = |SHARED MEMORY|.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = |SHARED BUFFER|.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = t161.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t165) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t167) = CAST zlnt_runtime_arra_c22708faf2e3( t162 ).
    t164 = zcl_lnt_st_combi_module=>alt( i_first = t165 i_second = t166 i_rest = t167 ).
    t155 = t164.
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t168 TYPE REF TO object.
      t168 = t155.
      t154->oval = t168.
    ENDIF.
    t153 = t154.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = CAST zif_lnt_statement_runnable( t57 ).
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t172 TYPE REF TO object.
      t172 = t171.
      t170->oval = t172.
    ENDIF.
    t169 = t170.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t174.
    t173 = t174.
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t173 ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = CAST zif_lnt_statement_runnable( t1 ).
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t181 TYPE REF TO object.
      t181 = t180.
      t179->oval = t181.
    ENDIF.
    t178 = t179.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = CAST zif_lnt_statement_runnable( t15 ).
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t185 TYPE REF TO object.
      t185 = t184.
      t183->oval = t185.
    ENDIF.
    t182 = t183.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t186 = t187.
    DATA(t188) = CAST zlnt_runtime_arra_c22708faf2e3( t186 ).
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = CAST zif_lnt_statement_runnable( t29 ).
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t191 TYPE REF TO object.
      t191 = t190.
      t189->oval = t191.
    ENDIF.
    APPEND t189 TO t188->items.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t193) = CAST zlnt_runtime_dyna_a429568d5be8( t178 ).
    DATA(t194) = CAST zlnt_runtime_dyna_a429568d5be8( t182 ).
    DATA(t195) = CAST zlnt_runtime_arra_c22708faf2e3( t186 ).
    t192 = zcl_lnt_st_combi_module=>per( i_first = t193 i_second = t194 i_rest = t195 ).
    t177 = t192.
    IF t177 IS BOUND.
      CREATE OBJECT t176.
      t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t196 TYPE REF TO object.
      t196 = t177.
      t176->oval = t196.
    ENDIF.
    APPEND t176 TO t175->items.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t198) = CAST zlnt_runtime_dyna_a429568d5be8( t153 ).
    DATA(t199) = CAST zlnt_runtime_dyna_a429568d5be8( t169 ).
    DATA(t200) = CAST zlnt_runtime_arra_c22708faf2e3( t173 ).
    t197 = zcl_lnt_st_combi_module=>seq( i_first = t198 i_second = t199 i_rest = t200 ).
    t152 = t197.
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t201 TYPE REF TO object.
      t201 = t152.
      t151->oval = t201.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t150 i_first = t151 ).
    t148 = t149.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA(t204) = |KeyUser|.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t209) = |DATABASE|.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = CAST zif_lnt_statement_runnable( t57 ).
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t213 TYPE REF TO object.
      t213 = t212.
      t211->oval = t213.
    ENDIF.
    t210 = t211.
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
    DATA(t221) = CAST zif_lnt_statement_runnable( t1 ).
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
    DATA(t225) = CAST zif_lnt_statement_runnable( t15 ).
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
    DATA(t231) = CAST zif_lnt_statement_runnable( t29 ).
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
    DATA(t235) = CAST zif_lnt_statement_runnable( t43 ).
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t235.
      t234->oval = t236.
    ENDIF.
    APPEND t234 TO t233->items.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t238) = CAST zlnt_runtime_dyna_a429568d5be8( t219 ).
    DATA(t239) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t240) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    t237 = zcl_lnt_st_combi_module=>per( i_first = t238 i_second = t239 i_rest = t240 ).
    t218 = t237.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t241 TYPE REF TO object.
      t241 = t218.
      t217->oval = t241.
    ENDIF.
    APPEND t217 TO t216->items.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t243) = CAST zlnt_runtime_dyna_a429568d5be8( t207 ).
    DATA(t244) = CAST zlnt_runtime_dyna_a429568d5be8( t210 ).
    DATA(t245) = CAST zlnt_runtime_arra_c22708faf2e3( t214 ).
    t242 = zcl_lnt_st_combi_module=>seq( i_first = t243 i_second = t244 i_rest = t245 ).
    t206 = t242.
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t206.
      t205->oval = t246.
    ENDIF.
    t203 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t204 i_first = t205 ).
    t202 = t203.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA(t249) = |KeyUser|.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t254) = |LOGFILE ID|.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = t254.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t256->cval = t257.
    ENDIF.
    t255 = t256.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    t258 = t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t261) = CAST zlnt_runtime_dyna_a429568d5be8( t252 ).
    DATA(t262) = CAST zlnt_runtime_dyna_a429568d5be8( t255 ).
    DATA(t263) = CAST zlnt_runtime_arra_c22708faf2e3( t258 ).
    t260 = zcl_lnt_st_combi_module=>seq( i_first = t261 i_second = t262 i_rest = t263 ).
    t251 = t260.
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t264 TYPE REF TO object.
      t264 = t251.
      t250->oval = t264.
    ENDIF.
    t248 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t249 i_first = t250 ).
    t247 = t248.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = CAST zif_lnt_statement_runnable( t86 ).
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t270 TYPE REF TO object.
      t270 = t269.
      t268->oval = t270.
    ENDIF.
    t267 = t268.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA(t273) = CAST zif_lnt_statement_runnable( t100 ).
    IF t273 IS BOUND.
      CREATE OBJECT t272.
      t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t274 TYPE REF TO object.
      t274 = t273.
      t272->oval = t274.
    ENDIF.
    t271 = t272.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t276.
    t275 = t276.
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t275 ).
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA(t279) = CAST zif_lnt_statement_runnable( t202 ).
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t280 TYPE REF TO object.
      t280 = t279.
      t278->oval = t280.
    ENDIF.
    APPEND t278 TO t277->items.
    DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t275 ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = CAST zif_lnt_statement_runnable( t134 ).
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t284 TYPE REF TO object.
      t284 = t283.
      t282->oval = t284.
    ENDIF.
    APPEND t282 TO t281->items.
    DATA(t285) = CAST zlnt_runtime_arra_c22708faf2e3( t275 ).
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = CAST zif_lnt_statement_runnable( t148 ).
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t288 TYPE REF TO object.
      t288 = t287.
      t286->oval = t288.
    ENDIF.
    APPEND t286 TO t285->items.
    DATA(t289) = CAST zlnt_runtime_arra_c22708faf2e3( t275 ).
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA(t291) = CAST zif_lnt_statement_runnable( t247 ).
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t292 TYPE REF TO object.
      t292 = t291.
      t290->oval = t292.
    ENDIF.
    APPEND t290 TO t289->items.
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t294) = CAST zlnt_runtime_dyna_a429568d5be8( t267 ).
    DATA(t295) = CAST zlnt_runtime_dyna_a429568d5be8( t271 ).
    DATA(t296) = CAST zlnt_runtime_arra_c22708faf2e3( t275 ).
    t293 = zcl_lnt_st_combi_module=>alt( i_first = t294 i_second = t295 i_rest = t296 ).
    t266 = t293.
    t265 = t266.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t297.
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA(t303) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e ).
    IF t303 IS BOUND.
      CREATE OBJECT t302.
      t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t302->cval = t303.
    ENDIF.
    t301 = t302.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t309) = |TO|.
    CREATE OBJECT t308.
    t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t308->sval = t309.
    t307 = t308.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t312) = |INTO|.
    CREATE OBJECT t311.
    t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t311->sval = t312.
    t310 = t311.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t314.
    t313 = t314.
    DATA t315 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t316) = CAST zlnt_runtime_dyna_a429568d5be8( t307 ).
    DATA(t317) = CAST zlnt_runtime_dyna_a429568d5be8( t310 ).
    DATA(t318) = CAST zlnt_runtime_arra_c22708faf2e3( t313 ).
    t315 = zcl_lnt_st_combi_module=>alt( i_first = t316 i_second = t317 i_rest = t318 ).
    t306 = t315.
    IF t306 IS BOUND.
      CREATE OBJECT t305.
      t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t319 TYPE REF TO object.
      t319 = t306.
      t305->oval = t319.
    ENDIF.
    t304 = t305.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t321.
    t320 = t321.
    DATA(t322) = CAST zlnt_runtime_arra_c22708faf2e3( t320 ).
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA(t324) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t323->cval = t324.
    ENDIF.
    APPEND t323 TO t322->items.
    DATA t325 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t326) = CAST zlnt_runtime_dyna_a429568d5be8( t301 ).
    DATA(t327) = CAST zlnt_runtime_dyna_a429568d5be8( t304 ).
    DATA(t328) = CAST zlnt_runtime_arra_c22708faf2e3( t320 ).
    t325 = zcl_lnt_st_combi_module=>seq( i_first = t326 i_second = t327 i_rest = t328 ).
    t300 = t325.
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t329 TYPE REF TO object.
      t329 = t300.
      t299->oval = t329.
    ENDIF.
    t298 = zcl_lnt_st_combi_module=>plus( i_first = t299 ).
    t297 = t298.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t336.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA(t339) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e ).
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t338->cval = t339.
    ENDIF.
    t337 = t338.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396 ).
    IF t342 IS BOUND.
      CREATE OBJECT t341.
      t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t341->cval = t342.
    ENDIF.
    t340 = t341.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t344.
    t343 = t344.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t346) = CAST zlnt_runtime_dyna_a429568d5be8( t337 ).
    DATA(t347) = CAST zlnt_runtime_dyna_a429568d5be8( t340 ).
    DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t343 ).
    t345 = zcl_lnt_st_combi_module=>alt( i_first = t346 i_second = t347 i_rest = t348 ).
    t336 = t345.
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t349 TYPE REF TO object.
      t349 = t336.
      t335->oval = t349.
    ENDIF.
    t334 = t335.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t352) = |=|.
    CREATE OBJECT t351.
    t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t351->sval = t352.
    t350 = t351.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t354.
    t353 = t354.
    DATA(t355) = CAST zlnt_runtime_arra_c22708faf2e3( t353 ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA(t357) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t357 IS BOUND.
      CREATE OBJECT t356.
      t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t356->cval = t357.
    ENDIF.
    APPEND t356 TO t355->items.
    DATA t358 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t359) = CAST zlnt_runtime_dyna_a429568d5be8( t334 ).
    DATA(t360) = CAST zlnt_runtime_dyna_a429568d5be8( t350 ).
    DATA(t361) = CAST zlnt_runtime_arra_c22708faf2e3( t353 ).
    t358 = zcl_lnt_st_combi_module=>seq( i_first = t359 i_second = t360 i_rest = t361 ).
    t333 = t358.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t362 TYPE REF TO object.
      t362 = t333.
      t332->oval = t362.
    ENDIF.
    t331 = zcl_lnt_st_combi_module=>plus( i_first = t332 ).
    t330 = t331.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA t364 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t364.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA(t367) = CAST zif_lnt_statement_runnable( t330 ).
    IF t367 IS BOUND.
      CREATE OBJECT t366.
      t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t368 TYPE REF TO object.
      t368 = t367.
      t366->oval = t368.
    ENDIF.
    t365 = t366.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA(t371) = CAST zif_lnt_statement_runnable( t297 ).
    IF t371 IS BOUND.
      CREATE OBJECT t370.
      t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t372 TYPE REF TO object.
      t372 = t371.
      t370->oval = t372.
    ENDIF.
    t369 = t370.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t374.
    t373 = t374.
    DATA(t375) = CAST zlnt_runtime_arra_c22708faf2e3( t373 ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA(t377) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t377 IS BOUND.
      CREATE OBJECT t376.
      t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t376->cval = t377.
    ENDIF.
    APPEND t376 TO t375->items.
    DATA(t378) = CAST zlnt_runtime_arra_c22708faf2e3( t373 ).
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA(t382) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t382 IS BOUND.
      CREATE OBJECT t381.
      t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t381->cval = t382.
    ENDIF.
    t380 = zcl_lnt_st_combi_module=>plus( i_first = t381 ).
    IF t380 IS BOUND.
      CREATE OBJECT t379.
      t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t383 TYPE REF TO object.
      t383 = t380.
      t379->oval = t383.
    ENDIF.
    APPEND t379 TO t378->items.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t385) = CAST zlnt_runtime_dyna_a429568d5be8( t365 ).
    DATA(t386) = CAST zlnt_runtime_dyna_a429568d5be8( t369 ).
    DATA(t387) = CAST zlnt_runtime_arra_c22708faf2e3( t373 ).
    t384 = zcl_lnt_st_combi_module=>alt( i_first = t385 i_second = t386 i_rest = t387 ).
    t364 = t384.
    t363 = t364.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t392) = |ACCEPTING PADDING|.
    CREATE OBJECT t391.
    t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t391->sval = t392.
    t390 = t391.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t395) = |IGNORING CONVERSION ERRORS|.
    CREATE OBJECT t394.
    t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t394->sval = t395.
    t393 = t394.
    DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t397.
    t396 = t397.
    DATA(t398) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t400) = |IN CHAR-TO-HEX MODE|.
    CREATE OBJECT t399.
    t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t399->sval = t400.
    APPEND t399 TO t398->items.
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t403) = |IGNORING STRUCTURE BOUNDARIES|.
    CREATE OBJECT t402.
    t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t402->sval = t403.
    APPEND t402 TO t401->items.
    DATA(t404) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t406) = |ACCEPTING TRUNCATION|.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = t406.
    APPEND t405 TO t404->items.
    DATA(t407) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t412) = |REPLACEMENT CHARACTER|.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t411->sval = t412.
    t410 = t411.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA(t415) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t414->cval = t415.
    ENDIF.
    t413 = t414.
    DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t417 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t417.
    t416 = t417.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t419) = CAST zlnt_runtime_dyna_a429568d5be8( t410 ).
    DATA(t420) = CAST zlnt_runtime_dyna_a429568d5be8( t413 ).
    DATA(t421) = CAST zlnt_runtime_arra_c22708faf2e3( t416 ).
    t418 = zcl_lnt_st_combi_module=>seq( i_first = t419 i_second = t420 i_rest = t421 ).
    t409 = t418.
    IF t409 IS BOUND.
      CREATE OBJECT t408.
      t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t422 TYPE REF TO object.
      t422 = t409.
      t408->oval = t422.
    ENDIF.
    APPEND t408 TO t407->items.
    DATA(t423) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA t425 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t428) = |CODE PAGE INTO|.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = t428.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA(t431) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t431 IS BOUND.
      CREATE OBJECT t430.
      t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t430->cval = t431.
    ENDIF.
    t429 = t430.
    DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t433.
    t432 = t433.
    DATA t434 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t435) = CAST zlnt_runtime_dyna_a429568d5be8( t426 ).
    DATA(t436) = CAST zlnt_runtime_dyna_a429568d5be8( t429 ).
    DATA(t437) = CAST zlnt_runtime_arra_c22708faf2e3( t432 ).
    t434 = zcl_lnt_st_combi_module=>seq( i_first = t435 i_second = t436 i_rest = t437 ).
    t425 = t434.
    IF t425 IS BOUND.
      CREATE OBJECT t424.
      t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t438 TYPE REF TO object.
      t438 = t425.
      t424->oval = t438.
    ENDIF.
    APPEND t424 TO t423->items.
    DATA(t439) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t440.
    DATA t441 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t441.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t444) = |ENDIAN INTO|.
    CREATE OBJECT t443.
    t443->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t443->sval = t444.
    t442 = t443.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    DATA(t447) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t447 IS BOUND.
      CREATE OBJECT t446.
      t446->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t446->cval = t447.
    ENDIF.
    t445 = t446.
    DATA t448 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t449 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t449.
    t448 = t449.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t451) = CAST zlnt_runtime_dyna_a429568d5be8( t442 ).
    DATA(t452) = CAST zlnt_runtime_dyna_a429568d5be8( t445 ).
    DATA(t453) = CAST zlnt_runtime_arra_c22708faf2e3( t448 ).
    t450 = zcl_lnt_st_combi_module=>seq( i_first = t451 i_second = t452 i_rest = t453 ).
    t441 = t450.
    IF t441 IS BOUND.
      CREATE OBJECT t440.
      t440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t454 TYPE REF TO object.
      t454 = t441.
      t440->oval = t454.
    ENDIF.
    APPEND t440 TO t439->items.
    DATA t455 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t456) = CAST zlnt_runtime_dyna_a429568d5be8( t390 ).
    DATA(t457) = CAST zlnt_runtime_dyna_a429568d5be8( t393 ).
    DATA(t458) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    t455 = zcl_lnt_st_combi_module=>per( i_first = t456 i_second = t457 i_rest = t458 ).
    t389 = t455.
    t388 = t389.
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t459.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t460.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t463) = |IMPORT|.
    CREATE OBJECT t462.
    t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t462->sval = t463.
    t461 = t462.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA(t466) = CAST zif_lnt_statement_runnable( t363 ).
    IF t466 IS BOUND.
      CREATE OBJECT t465.
      t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t467 TYPE REF TO object.
      t467 = t466.
      t465->oval = t467.
    ENDIF.
    t464 = t465.
    DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t469 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t469.
    t468 = t469.
    DATA(t470) = CAST zlnt_runtime_arra_c22708faf2e3( t468 ).
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t472) = |FROM|.
    CREATE OBJECT t471.
    t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t471->sval = t472.
    APPEND t471 TO t470->items.
    DATA(t473) = CAST zlnt_runtime_arra_c22708faf2e3( t468 ).
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    DATA(t475) = CAST zif_lnt_statement_runnable( t265 ).
    IF t475 IS BOUND.
      CREATE OBJECT t474.
      t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t476 TYPE REF TO object.
      t476 = t475.
      t474->oval = t476.
    ENDIF.
    APPEND t474 TO t473->items.
    DATA(t477) = CAST zlnt_runtime_arra_c22708faf2e3( t468 ).
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA t479 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t479.
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t480.
    DATA(t481) = CAST zif_lnt_statement_runnable( t388 ).
    IF t481 IS BOUND.
      CREATE OBJECT t480.
      t480->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t482 TYPE REF TO object.
      t482 = t481.
      t480->oval = t482.
    ENDIF.
    t479 = zcl_lnt_st_combi_module=>opt( i_first = t480 ).
    IF t479 IS BOUND.
      CREATE OBJECT t478.
      t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t483 TYPE REF TO object.
      t483 = t479.
      t478->oval = t483.
    ENDIF.
    APPEND t478 TO t477->items.
    DATA t484 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t485) = CAST zlnt_runtime_dyna_a429568d5be8( t461 ).
    DATA(t486) = CAST zlnt_runtime_dyna_a429568d5be8( t464 ).
    DATA(t487) = CAST zlnt_runtime_arra_c22708faf2e3( t468 ).
    t484 = zcl_lnt_st_combi_module=>seq( i_first = t485 i_second = t486 i_rest = t487 ).
    t460 = t484.
    t459 = t460.
    DATA(t488) = CAST zif_lnt_statement_runnable( t459 ).
    result = t488.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d509_83ce94d67b86.
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
