* TS: src/abap/2_statements/statements/describe.ts:7:1 Describe
CLASS zcl_lnt_st_describe DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_describe IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |LINES|.
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
    DATA(t19) = |KIND|.
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
    DATA(t33) = |OCCURS|.
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
    DATA(t47) = |TABLE|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
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
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t51 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zif_lnt_statement_runnable( t1 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t60.
      t59->oval = t61.
    ENDIF.
    t58 = t59.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zif_lnt_statement_runnable( t15 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t65 TYPE REF TO object.
      t65 = t64.
      t63->oval = t65.
    ENDIF.
    t62 = t63.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t67.
    t66 = t67.
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t66 ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = CAST zif_lnt_statement_runnable( t29 ).
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t71 TYPE REF TO object.
      t71 = t70.
      t69->oval = t71.
    ENDIF.
    APPEND t69 TO t68->items.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t66 ).
    t72 = zcl_lnt_st_combi_module=>per( i_first = t73 i_second = t74 i_rest = t75 ).
    t57 = t72.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t57.
      t56->oval = t76.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>opt( i_first = t56 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t55.
      t54->oval = t77.
    ENDIF.
    APPEND t54 TO t53->items.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t80) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t51 ).
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t80 i_rest = t81 ).
    t44 = t78.
    t43 = t44.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = |IN|.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = t86.
    t84 = t85.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = |BYTE|.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = |CHARACTER|.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    t96 = t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t99) = CAST zlnt_runtime_dyna_a429568d5be8( t90 ).
    DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t93 ).
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t96 ).
    t98 = zcl_lnt_st_combi_module=>alt( i_first = t99 i_second = t100 i_rest = t101 ).
    t89 = t98.
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t102 TYPE REF TO object.
      t102 = t89.
      t88->oval = t102.
    ENDIF.
    t87 = t88.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    t103 = t104.
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |MODE|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    APPEND t106 TO t105->items.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t110 i_rest = t111 ).
    t83 = t108.
    t82 = t83.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = |FIELD|.
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
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t120 ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = |TYPE|.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
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
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t140 TYPE REF TO object.
      t140 = t127.
      t126->oval = t140.
    ENDIF.
    t125 = t126.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t146) = |COMPONENTS|.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = t146.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    t147 = t148.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    t150 = t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
    DATA(t154) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    t152 = zcl_lnt_st_combi_module=>seq( i_first = t153 i_second = t154 i_rest = t155 ).
    t143 = t152.
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t156 TYPE REF TO object.
      t156 = t143.
      t142->oval = t156.
    ENDIF.
    t141 = t142.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    t157 = t158.
    DATA(t159) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = |LENGTH|.
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
    DATA(t174) = CAST zif_lnt_statement_runnable( t82 ).
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t175 TYPE REF TO object.
      t175 = t174.
      t173->oval = t175.
    ENDIF.
    t172 = zcl_lnt_st_combi_module=>opt( i_first = t173 ).
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t172.
      t171->oval = t176.
    ENDIF.
    APPEND t171 TO t170->items.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t162 ).
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t165 ).
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    t177 = zcl_lnt_st_combi_module=>seq( i_first = t178 i_second = t179 i_rest = t180 ).
    t161 = t177.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t181 TYPE REF TO object.
      t181 = t161.
      t160->oval = t181.
    ENDIF.
    APPEND t160 TO t159->items.
    DATA(t182) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = |DECIMALS|.
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
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t197 TYPE REF TO object.
      t197 = t184.
      t183->oval = t197.
    ENDIF.
    APPEND t183 TO t182->items.
    DATA(t198) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = |HELP-ID|.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
    t201 = t202.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t205->cval = t206.
    ENDIF.
    t204 = t205.
    DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t208.
    t207 = t208.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t210) = CAST zlnt_runtime_dyna_a429568d5be8( t201 ).
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t204 ).
    DATA(t212) = CAST zlnt_runtime_arra_c22708faf2e3( t207 ).
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t210 i_second = t211 i_rest = t212 ).
    t200 = t209.
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t213 TYPE REF TO object.
      t213 = t200.
      t199->oval = t213.
    ENDIF.
    APPEND t199 TO t198->items.
    DATA(t214) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t219) = |OUTPUT-LENGTH|.
    CREATE OBJECT t218.
    t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t218->sval = t219.
    t217 = t218.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t221->cval = t222.
    ENDIF.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t224.
    t223 = t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t226) = CAST zlnt_runtime_dyna_a429568d5be8( t217 ).
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t220 ).
    DATA(t228) = CAST zlnt_runtime_arra_c22708faf2e3( t223 ).
    t225 = zcl_lnt_st_combi_module=>seq( i_first = t226 i_second = t227 i_rest = t228 ).
    t216 = t225.
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t229 TYPE REF TO object.
      t229 = t216.
      t215->oval = t229.
    ENDIF.
    APPEND t215 TO t214->items.
    DATA(t230) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t235) = |EDIT MASK|.
    CREATE OBJECT t234.
    t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t234->sval = t235.
    t233 = t234.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t237->cval = t238.
    ENDIF.
    t236 = t237.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t240.
    t239 = t240.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t242) = CAST zlnt_runtime_dyna_a429568d5be8( t233 ).
    DATA(t243) = CAST zlnt_runtime_dyna_a429568d5be8( t236 ).
    DATA(t244) = CAST zlnt_runtime_arra_c22708faf2e3( t239 ).
    t241 = zcl_lnt_st_combi_module=>seq( i_first = t242 i_second = t243 i_rest = t244 ).
    t232 = t241.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t245 TYPE REF TO object.
      t245 = t232.
      t231->oval = t245.
    ENDIF.
    APPEND t231 TO t230->items.
    DATA(t246) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t251) = |INTO|.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    t249 = t250.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t254 IS BOUND.
      CREATE OBJECT t253.
      t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t253->cval = t254.
    ENDIF.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t256.
    t255 = t256.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t258) = CAST zlnt_runtime_dyna_a429568d5be8( t249 ).
    DATA(t259) = CAST zlnt_runtime_dyna_a429568d5be8( t252 ).
    DATA(t260) = CAST zlnt_runtime_arra_c22708faf2e3( t255 ).
    t257 = zcl_lnt_st_combi_module=>seq( i_first = t258 i_second = t259 i_rest = t260 ).
    t248 = t257.
    IF t248 IS BOUND.
      CREATE OBJECT t247.
      t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t261 TYPE REF TO object.
      t261 = t248.
      t247->oval = t261.
    ENDIF.
    APPEND t247 TO t246->items.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t263) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t264) = CAST zlnt_runtime_dyna_a429568d5be8( t141 ).
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    t262 = zcl_lnt_st_combi_module=>per( i_first = t263 i_second = t264 i_rest = t265 ).
    t124 = t262.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t266 TYPE REF TO object.
      t266 = t124.
      t123->oval = t266.
    ENDIF.
    APPEND t123 TO t122->items.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t268) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t269) = CAST zlnt_runtime_dyna_a429568d5be8( t117 ).
    DATA(t270) = CAST zlnt_runtime_arra_c22708faf2e3( t120 ).
    t267 = zcl_lnt_st_combi_module=>seq( i_first = t268 i_second = t269 i_rest = t270 ).
    t113 = t267.
    t112 = t113.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t275) = |DISTANCE BETWEEN|.
    CREATE OBJECT t274.
    t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t274->sval = t275.
    t273 = t274.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t277->cval = t278.
    ENDIF.
    t276 = t277.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t280.
    t279 = t280.
    DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t283) = |AND|.
    CREATE OBJECT t282.
    t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t282->sval = t283.
    APPEND t282 TO t281->items.
    DATA(t284) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA(t286) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t286 IS BOUND.
      CREATE OBJECT t285.
      t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t285->cval = t286.
    ENDIF.
    APPEND t285 TO t284->items.
    DATA(t287) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t289) = |INTO|.
    CREATE OBJECT t288.
    t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t288->sval = t289.
    APPEND t288 TO t287->items.
    DATA(t290) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA(t292) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t292 IS BOUND.
      CREATE OBJECT t291.
      t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t291->cval = t292.
    ENDIF.
    APPEND t291 TO t290->items.
    DATA(t293) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = CAST zif_lnt_statement_runnable( t82 ).
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t298 TYPE REF TO object.
      t298 = t297.
      t296->oval = t298.
    ENDIF.
    t295 = zcl_lnt_st_combi_module=>opt( i_first = t296 ).
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t299 TYPE REF TO object.
      t299 = t295.
      t294->oval = t299.
    ENDIF.
    APPEND t294 TO t293->items.
    DATA t300 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t301) = CAST zlnt_runtime_dyna_a429568d5be8( t273 ).
    DATA(t302) = CAST zlnt_runtime_dyna_a429568d5be8( t276 ).
    DATA(t303) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    t300 = zcl_lnt_st_combi_module=>seq( i_first = t301 i_second = t302 i_rest = t303 ).
    t272 = t300.
    t271 = t272.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t308) = |NUMBER OF LINES|.
    CREATE OBJECT t307.
    t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t307->sval = t308.
    t306 = t307.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t310->cval = t311.
    ENDIF.
    t309 = t310.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t313.
    t312 = t313.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t315) = CAST zlnt_runtime_dyna_a429568d5be8( t306 ).
    DATA(t316) = CAST zlnt_runtime_dyna_a429568d5be8( t309 ).
    DATA(t317) = CAST zlnt_runtime_arra_c22708faf2e3( t312 ).
    t314 = zcl_lnt_st_combi_module=>seq( i_first = t315 i_second = t316 i_rest = t317 ).
    t305 = t314.
    t304 = t305.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t322) = |NUMBER OF PAGES|.
    CREATE OBJECT t321.
    t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t321->sval = t322.
    t320 = t321.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t325 IS BOUND.
      CREATE OBJECT t324.
      t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t324->cval = t325.
    ENDIF.
    t323 = t324.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t327.
    t326 = t327.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t329) = CAST zlnt_runtime_dyna_a429568d5be8( t320 ).
    DATA(t330) = CAST zlnt_runtime_dyna_a429568d5be8( t323 ).
    DATA(t331) = CAST zlnt_runtime_arra_c22708faf2e3( t326 ).
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t330 i_rest = t331 ).
    t319 = t328.
    t318 = t319.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t336) = |LINE|.
    CREATE OBJECT t335.
    t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t335->sval = t336.
    t334 = t335.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA(t339) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t338->cval = t339.
    ENDIF.
    t337 = t338.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t341.
    t340 = t341.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t343) = CAST zlnt_runtime_dyna_a429568d5be8( t334 ).
    DATA(t344) = CAST zlnt_runtime_dyna_a429568d5be8( t337 ).
    DATA(t345) = CAST zlnt_runtime_arra_c22708faf2e3( t340 ).
    t342 = zcl_lnt_st_combi_module=>seq( i_first = t343 i_second = t344 i_rest = t345 ).
    t333 = t342.
    t332 = t333.
    DATA t346 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t350) = |PAGE|.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = t350.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA(t353) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t352->cval = t353.
    ENDIF.
    t351 = t352.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t355.
    t354 = t355.
    DATA t356 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t357) = CAST zlnt_runtime_dyna_a429568d5be8( t348 ).
    DATA(t358) = CAST zlnt_runtime_dyna_a429568d5be8( t351 ).
    DATA(t359) = CAST zlnt_runtime_arra_c22708faf2e3( t354 ).
    t356 = zcl_lnt_st_combi_module=>seq( i_first = t357 i_second = t358 i_rest = t359 ).
    t347 = t356.
    t346 = t347.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t364) = |INDEX|.
    CREATE OBJECT t363.
    t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t363->sval = t364.
    t362 = t363.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA(t367) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t367 IS BOUND.
      CREATE OBJECT t366.
      t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t366->cval = t367.
    ENDIF.
    t365 = t366.
    DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t369.
    t368 = t369.
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t371) = CAST zlnt_runtime_dyna_a429568d5be8( t362 ).
    DATA(t372) = CAST zlnt_runtime_dyna_a429568d5be8( t365 ).
    DATA(t373) = CAST zlnt_runtime_arra_c22708faf2e3( t368 ).
    t370 = zcl_lnt_st_combi_module=>seq( i_first = t371 i_second = t372 i_rest = t373 ).
    t361 = t370.
    t360 = t361.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t374.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t375.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t378) = |TOP-LINES|.
    CREATE OBJECT t377.
    t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t377->sval = t378.
    t376 = t377.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA(t381) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t381 IS BOUND.
      CREATE OBJECT t380.
      t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t380->cval = t381.
    ENDIF.
    t379 = t380.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t383.
    t382 = t383.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t385) = CAST zlnt_runtime_dyna_a429568d5be8( t376 ).
    DATA(t386) = CAST zlnt_runtime_dyna_a429568d5be8( t379 ).
    DATA(t387) = CAST zlnt_runtime_arra_c22708faf2e3( t382 ).
    t384 = zcl_lnt_st_combi_module=>seq( i_first = t385 i_second = t386 i_rest = t387 ).
    t375 = t384.
    t374 = t375.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t392) = |LINE-SIZE|.
    CREATE OBJECT t391.
    t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t391->sval = t392.
    t390 = t391.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA(t395) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t395 IS BOUND.
      CREATE OBJECT t394.
      t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t394->cval = t395.
    ENDIF.
    t393 = t394.
    DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t397.
    t396 = t397.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t399) = CAST zlnt_runtime_dyna_a429568d5be8( t390 ).
    DATA(t400) = CAST zlnt_runtime_dyna_a429568d5be8( t393 ).
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    t398 = zcl_lnt_st_combi_module=>seq( i_first = t399 i_second = t400 i_rest = t401 ).
    t389 = t398.
    t388 = t389.
    DATA t402 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t402.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t406) = |LINE-COUNT|.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = t406.
    t404 = t405.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA(t409) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t409 IS BOUND.
      CREATE OBJECT t408.
      t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t408->cval = t409.
    ENDIF.
    t407 = t408.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t411.
    t410 = t411.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t413) = CAST zlnt_runtime_dyna_a429568d5be8( t404 ).
    DATA(t414) = CAST zlnt_runtime_dyna_a429568d5be8( t407 ).
    DATA(t415) = CAST zlnt_runtime_arra_c22708faf2e3( t410 ).
    t412 = zcl_lnt_st_combi_module=>seq( i_first = t413 i_second = t414 i_rest = t415 ).
    t403 = t412.
    t402 = t403.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t420) = |FIRST-LINE|.
    CREATE OBJECT t419.
    t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t419->sval = t420.
    t418 = t419.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA(t423) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t423 IS BOUND.
      CREATE OBJECT t422.
      t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t422->cval = t423.
    ENDIF.
    t421 = t422.
    DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t425.
    t424 = t425.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t427) = CAST zlnt_runtime_dyna_a429568d5be8( t418 ).
    DATA(t428) = CAST zlnt_runtime_dyna_a429568d5be8( t421 ).
    DATA(t429) = CAST zlnt_runtime_arra_c22708faf2e3( t424 ).
    t426 = zcl_lnt_st_combi_module=>seq( i_first = t427 i_second = t428 i_rest = t429 ).
    t417 = t426.
    t416 = t417.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t434) = |LIST|.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = t434.
    t432 = t433.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA t437 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t439.
    DATA(t440) = CAST zif_lnt_statement_runnable( t304 ).
    IF t440 IS BOUND.
      CREATE OBJECT t439.
      t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t441 TYPE REF TO object.
      t441 = t440.
      t439->oval = t441.
    ENDIF.
    t438 = t439.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t443.
    DATA(t444) = CAST zif_lnt_statement_runnable( t318 ).
    IF t444 IS BOUND.
      CREATE OBJECT t443.
      t443->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t445 TYPE REF TO object.
      t445 = t444.
      t443->oval = t445.
    ENDIF.
    t442 = t443.
    DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t447.
    t446 = t447.
    DATA(t448) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    DATA(t450) = CAST zif_lnt_statement_runnable( t360 ).
    IF t450 IS BOUND.
      CREATE OBJECT t449.
      t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t451 TYPE REF TO object.
      t451 = t450.
      t449->oval = t451.
    ENDIF.
    APPEND t449 TO t448->items.
    DATA(t452) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA(t454) = CAST zif_lnt_statement_runnable( t332 ).
    IF t454 IS BOUND.
      CREATE OBJECT t453.
      t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t455 TYPE REF TO object.
      t455 = t454.
      t453->oval = t455.
    ENDIF.
    APPEND t453 TO t452->items.
    DATA(t456) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA(t458) = CAST zif_lnt_statement_runnable( t346 ).
    IF t458 IS BOUND.
      CREATE OBJECT t457.
      t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t459 TYPE REF TO object.
      t459 = t458.
      t457->oval = t459.
    ENDIF.
    APPEND t457 TO t456->items.
    DATA(t460) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA(t462) = CAST zif_lnt_statement_runnable( t374 ).
    IF t462 IS BOUND.
      CREATE OBJECT t461.
      t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t463 TYPE REF TO object.
      t463 = t462.
      t461->oval = t463.
    ENDIF.
    APPEND t461 TO t460->items.
    DATA(t464) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA(t466) = CAST zif_lnt_statement_runnable( t416 ).
    IF t466 IS BOUND.
      CREATE OBJECT t465.
      t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t467 TYPE REF TO object.
      t467 = t466.
      t465->oval = t467.
    ENDIF.
    APPEND t465 TO t464->items.
    DATA(t468) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t469.
    DATA(t470) = CAST zif_lnt_statement_runnable( t1 ).
    IF t470 IS BOUND.
      CREATE OBJECT t469.
      t469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t471 TYPE REF TO object.
      t471 = t470.
      t469->oval = t471.
    ENDIF.
    APPEND t469 TO t468->items.
    DATA(t472) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA(t474) = CAST zif_lnt_statement_runnable( t388 ).
    IF t474 IS BOUND.
      CREATE OBJECT t473.
      t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t475 TYPE REF TO object.
      t475 = t474.
      t473->oval = t475.
    ENDIF.
    APPEND t473 TO t472->items.
    DATA(t476) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA(t478) = CAST zif_lnt_statement_runnable( t402 ).
    IF t478 IS BOUND.
      CREATE OBJECT t477.
      t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t479 TYPE REF TO object.
      t479 = t478.
      t477->oval = t479.
    ENDIF.
    APPEND t477 TO t476->items.
    DATA t480 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t481) = CAST zlnt_runtime_dyna_a429568d5be8( t438 ).
    DATA(t482) = CAST zlnt_runtime_dyna_a429568d5be8( t442 ).
    DATA(t483) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    t480 = zcl_lnt_st_combi_module=>per( i_first = t481 i_second = t482 i_rest = t483 ).
    t437 = t480.
    IF t437 IS BOUND.
      CREATE OBJECT t436.
      t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t484 TYPE REF TO object.
      t484 = t437.
      t436->oval = t484.
    ENDIF.
    t435 = t436.
    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t486.
    t485 = t486.
    DATA t487 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t488) = CAST zlnt_runtime_dyna_a429568d5be8( t432 ).
    DATA(t489) = CAST zlnt_runtime_dyna_a429568d5be8( t435 ).
    DATA(t490) = CAST zlnt_runtime_arra_c22708faf2e3( t485 ).
    t487 = zcl_lnt_st_combi_module=>seq( i_first = t488 i_second = t489 i_rest = t490 ).
    t431 = t487.
    t430 = t431.
    DATA t491 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t491.
    DATA t492 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t492.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t495) = |DESCRIBE|.
    CREATE OBJECT t494.
    t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t494->sval = t495.
    t493 = t494.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t496.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t497.
    DATA t498 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t498.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t500.
    DATA(t501) = CAST zif_lnt_statement_runnable( t43 ).
    IF t501 IS BOUND.
      CREATE OBJECT t500.
      t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t502 TYPE REF TO object.
      t502 = t501.
      t500->oval = t502.
    ENDIF.
    t499 = t500.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA(t505) = CAST zif_lnt_statement_runnable( t112 ).
    IF t505 IS BOUND.
      CREATE OBJECT t504.
      t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t506 TYPE REF TO object.
      t506 = t505.
      t504->oval = t506.
    ENDIF.
    t503 = t504.
    DATA t507 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t508 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t508.
    t507 = t508.
    DATA(t509) = CAST zlnt_runtime_arra_c22708faf2e3( t507 ).
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA(t511) = CAST zif_lnt_statement_runnable( t271 ).
    IF t511 IS BOUND.
      CREATE OBJECT t510.
      t510->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t512 TYPE REF TO object.
      t512 = t511.
      t510->oval = t512.
    ENDIF.
    APPEND t510 TO t509->items.
    DATA(t513) = CAST zlnt_runtime_arra_c22708faf2e3( t507 ).
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA(t515) = CAST zif_lnt_statement_runnable( t430 ).
    IF t515 IS BOUND.
      CREATE OBJECT t514.
      t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t516 TYPE REF TO object.
      t516 = t515.
      t514->oval = t516.
    ENDIF.
    APPEND t514 TO t513->items.
    DATA t517 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t518) = CAST zlnt_runtime_dyna_a429568d5be8( t499 ).
    DATA(t519) = CAST zlnt_runtime_dyna_a429568d5be8( t503 ).
    DATA(t520) = CAST zlnt_runtime_arra_c22708faf2e3( t507 ).
    t517 = zcl_lnt_st_combi_module=>alt_prio( i_first = t518 i_second = t519 i_rest = t520 ).
    t498 = t517.
    IF t498 IS BOUND.
      CREATE OBJECT t497.
      t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t521 TYPE REF TO object.
      t521 = t498.
      t497->oval = t521.
    ENDIF.
    t496 = t497.
    DATA t522 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t523 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t523.
    t522 = t523.
    DATA t524 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t525) = CAST zlnt_runtime_dyna_a429568d5be8( t493 ).
    DATA(t526) = CAST zlnt_runtime_dyna_a429568d5be8( t496 ).
    DATA(t527) = CAST zlnt_runtime_arra_c22708faf2e3( t522 ).
    t524 = zcl_lnt_st_combi_module=>seq( i_first = t525 i_second = t526 i_rest = t527 ).
    t492 = t524.
    t491 = t492.
    DATA t528 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t528.
    DATA(t529) = |Cloud|.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t530.
    DATA(t531) = CAST zif_lnt_statement_runnable( t491 ).
    IF t531 IS BOUND.
      CREATE OBJECT t530.
      t530->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t532 TYPE REF TO object.
      t532 = t531.
      t530->oval = t532.
    ENDIF.
    t528 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t529 i_first = t530 ).
    result = t528.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d433_8ed7f6afa5ce.
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
