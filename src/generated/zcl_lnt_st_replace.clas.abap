* TS: src/abap/2_statements/statements/replace.ts:6:1 Replace
CLASS zcl_lnt_st_replace DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_replace IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |LENGTH|.
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
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = |IN|.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    t33 = zcl_lnt_st_combi_module=>opt( i_first = t34 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t33.
      t32->oval = t36.
    ENDIF.
    t31 = t32.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = |SECTION|.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t40 = t41.
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = CAST zif_lnt_statement_runnable( t15 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t47.
      t46->oval = t48.
    ENDIF.
    t45 = t46.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zif_lnt_statement_runnable( t1 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t51.
      t50->oval = t52.
    ENDIF.
    t49 = t50.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t53 = t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    t55 = zcl_lnt_st_combi_module=>per( i_first = t56 i_second = t57 i_rest = t58 ).
    t44 = t55.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t44.
      t43->oval = t59.
    ENDIF.
    APPEND t43 TO t42->items.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = |OF|.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    APPEND t61 TO t60->items.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    APPEND t64 TO t63->items.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t66 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t68 i_rest = t69 ).
    t30 = t66.
    t29 = t30.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = |OF|.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = t76.
    t74 = zcl_lnt_st_combi_module=>opt( i_first = t75 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t74.
      t73->oval = t77.
    ENDIF.
    t72 = t73.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t81 = t82.
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    APPEND t84 TO t83->items.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t89) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t88 i_rest = t89 ).
    t71 = t86.
    t70 = t71.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |IGNORING CASE|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = |RESPECTING CASE|.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t98 = t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t102) = CAST zlnt_runtime_dyna_a429568d5be8( t95 ).
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t98 ).
    t100 = zcl_lnt_st_combi_module=>alt_prio( i_first = t101 i_second = t102 i_rest = t103 ).
    t91 = t100.
    t90 = t91.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = |REPLACEMENT COUNT|.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106 = t107.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    t112 = t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t109 ).
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    t114 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t116 i_rest = t117 ).
    t105 = t114.
    t104 = t105.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = |REPLACEMENT OFFSET|.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    t123 = t124.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    t126 = t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t129) = CAST zlnt_runtime_dyna_a429568d5be8( t120 ).
    DATA(t130) = CAST zlnt_runtime_dyna_a429568d5be8( t123 ).
    DATA(t131) = CAST zlnt_runtime_arra_c22708faf2e3( t126 ).
    t128 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t130 i_rest = t131 ).
    t119 = t128.
    t118 = t119.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = |REPLACEMENT LENGTH|.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t138->cval = t139.
    ENDIF.
    t137 = t138.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t140 = t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t143) = CAST zlnt_runtime_dyna_a429568d5be8( t134 ).
    DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t137 ).
    DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t140 ).
    t142 = zcl_lnt_st_combi_module=>seq( i_first = t143 i_second = t144 i_rest = t145 ).
    t133 = t142.
    t132 = t133.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = |REPLACEMENT LINE|.
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
    t146 = t147.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = |ALL OCCURRENCES|.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = t164.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t167) = |ALL OCCURENCES|.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = t167.
    t165 = t166.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    t168 = t169.
    DATA(t170) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = |FIRST OCCURENCE|.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    APPEND t171 TO t170->items.
    DATA(t173) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = |FIRST OCCURRENCE|.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    APPEND t174 TO t173->items.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t177) = CAST zlnt_runtime_dyna_a429568d5be8( t162 ).
    DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t165 ).
    DATA(t179) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    t176 = zcl_lnt_st_combi_module=>alt_prio( i_first = t177 i_second = t178 i_rest = t179 ).
    t161 = t176.
    t160 = t161.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t184) = |IN CHARACTER MODE|.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    t182 = t183.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = |IN BYTE MODE|.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185 = t186.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t189.
    t188 = t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t191) = CAST zlnt_runtime_dyna_a429568d5be8( t182 ).
    DATA(t192) = CAST zlnt_runtime_dyna_a429568d5be8( t185 ).
    DATA(t193) = CAST zlnt_runtime_arra_c22708faf2e3( t188 ).
    t190 = zcl_lnt_st_combi_module=>alt( i_first = t191 i_second = t192 i_rest = t193 ).
    t181 = t190.
    t180 = t181.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t198) = |WITH|.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = t198.
    t196 = t197.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t200->cval = t201.
    ENDIF.
    t199 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t203.
    t202 = t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t205) = CAST zlnt_runtime_dyna_a429568d5be8( t196 ).
    DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t199 ).
    DATA(t207) = CAST zlnt_runtime_arra_c22708faf2e3( t202 ).
    t204 = zcl_lnt_st_combi_module=>seq( i_first = t205 i_second = t206 i_rest = t207 ).
    t195 = t204.
    t194 = t195.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t208.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |INTO|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t217.
    t216 = t217.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t219) = CAST zlnt_runtime_dyna_a429568d5be8( t210 ).
    DATA(t220) = CAST zlnt_runtime_dyna_a429568d5be8( t213 ).
    DATA(t221) = CAST zlnt_runtime_arra_c22708faf2e3( t216 ).
    t218 = zcl_lnt_st_combi_module=>seq( i_first = t219 i_second = t220 i_rest = t221 ).
    t209 = t218.
    t208 = t209.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t225) = |REPLACE|.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = t225.
    t223 = t224.
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
    DATA(t231) = CAST zif_lnt_statement_runnable( t29 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t232 TYPE REF TO object.
      t232 = t231.
      t230->oval = t232.
    ENDIF.
    t229 = t230.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = CAST zif_lnt_statement_runnable( t160 ).
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t241 TYPE REF TO object.
      t241 = t240.
      t239->oval = t241.
    ENDIF.
    t238 = zcl_lnt_st_combi_module=>opt( i_first = t239 ).
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t242 TYPE REF TO object.
      t242 = t238.
      t237->oval = t242.
    ENDIF.
    t236 = t237.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = CAST zif_lnt_statement_runnable( t70 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t245.
      t244->oval = t246.
    ENDIF.
    t243 = t244.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t248.
    t247 = t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t250) = CAST zlnt_runtime_dyna_a429568d5be8( t236 ).
    DATA(t251) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t252) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    t249 = zcl_lnt_st_combi_module=>seq( i_first = t250 i_second = t251 i_rest = t252 ).
    t235 = t249.
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t253 TYPE REF TO object.
      t253 = t235.
      t234->oval = t253.
    ENDIF.
    t233 = t234.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t255.
    t254 = t255.
    DATA t256 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t257) = CAST zlnt_runtime_dyna_a429568d5be8( t229 ).
    DATA(t258) = CAST zlnt_runtime_dyna_a429568d5be8( t233 ).
    DATA(t259) = CAST zlnt_runtime_arra_c22708faf2e3( t254 ).
    t256 = zcl_lnt_st_combi_module=>per( i_first = t257 i_second = t258 i_rest = t259 ).
    t228 = t256.
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t260 TYPE REF TO object.
      t260 = t228.
      t227->oval = t260.
    ENDIF.
    t226 = t227.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t262.
    t261 = t262.
    DATA(t263) = CAST zlnt_runtime_arra_c22708faf2e3( t261 ).
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t270) = |IN|.
    CREATE OBJECT t269.
    t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t269->sval = t270.
    t268 = t269.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zif_lnt_statement_runnable.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t275) = |TABLE|.
    CREATE OBJECT t274.
    t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t274->sval = t275.
    t273 = zcl_lnt_st_combi_module=>opt( i_first = t274 ).
    IF t273 IS BOUND.
      CREATE OBJECT t272.
      t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t276 TYPE REF TO object.
      t276 = t273.
      t272->oval = t276.
    ENDIF.
    t271 = t272.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t278.
    t277 = t278.
    DATA(t279) = CAST zlnt_runtime_arra_c22708faf2e3( t277 ).
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA(t281) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t281 IS BOUND.
      CREATE OBJECT t280.
      t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t280->cval = t281.
    ENDIF.
    APPEND t280 TO t279->items.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t283) = CAST zlnt_runtime_dyna_a429568d5be8( t268 ).
    DATA(t284) = CAST zlnt_runtime_dyna_a429568d5be8( t271 ).
    DATA(t285) = CAST zlnt_runtime_arra_c22708faf2e3( t277 ).
    t282 = zcl_lnt_st_combi_module=>seq( i_first = t283 i_second = t284 i_rest = t285 ).
    t267 = t282.
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t286 TYPE REF TO object.
      t286 = t267.
      t266->oval = t286.
    ENDIF.
    t265 = zcl_lnt_st_combi_module=>opt( i_first = t266 ).
    IF t265 IS BOUND.
      CREATE OBJECT t264.
      t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t287 TYPE REF TO object.
      t287 = t265.
      t264->oval = t287.
    ENDIF.
    APPEND t264 TO t263->items.
    DATA(t288) = CAST zlnt_runtime_arra_c22708faf2e3( t261 ).
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = CAST zif_lnt_statement_runnable( t194 ).
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t296 TYPE REF TO object.
      t296 = t295.
      t294->oval = t296.
    ENDIF.
    t293 = t294.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA(t299) = CAST zif_lnt_statement_runnable( t208 ).
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t300 TYPE REF TO object.
      t300 = t299.
      t298->oval = t300.
    ENDIF.
    t297 = t298.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t302.
    t301 = t302.
    DATA(t303) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA(t305) = CAST zif_lnt_statement_runnable( t90 ).
    IF t305 IS BOUND.
      CREATE OBJECT t304.
      t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t306 TYPE REF TO object.
      t306 = t305.
      t304->oval = t306.
    ENDIF.
    APPEND t304 TO t303->items.
    DATA(t307) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = CAST zif_lnt_statement_runnable( t180 ).
    IF t309 IS BOUND.
      CREATE OBJECT t308.
      t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t310 TYPE REF TO object.
      t310 = t309.
      t308->oval = t310.
    ENDIF.
    APPEND t308 TO t307->items.
    DATA(t311) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = CAST zif_lnt_statement_runnable( t104 ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t314 TYPE REF TO object.
      t314 = t313.
      t312->oval = t314.
    ENDIF.
    APPEND t312 TO t311->items.
    DATA(t315) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = CAST zif_lnt_statement_runnable( t118 ).
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t317.
      t316->oval = t318.
    ENDIF.
    APPEND t316 TO t315->items.
    DATA(t319) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = CAST zif_lnt_statement_runnable( t132 ).
    IF t321 IS BOUND.
      CREATE OBJECT t320.
      t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t322 TYPE REF TO object.
      t322 = t321.
      t320->oval = t322.
    ENDIF.
    APPEND t320 TO t319->items.
    DATA(t323) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = CAST zif_lnt_statement_runnable( t146 ).
    IF t325 IS BOUND.
      CREATE OBJECT t324.
      t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t326 TYPE REF TO object.
      t326 = t325.
      t324->oval = t326.
    ENDIF.
    APPEND t324 TO t323->items.
    DATA(t327) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA(t329) = CAST zif_lnt_statement_runnable( t1 ).
    IF t329 IS BOUND.
      CREATE OBJECT t328.
      t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t330 TYPE REF TO object.
      t330 = t329.
      t328->oval = t330.
    ENDIF.
    APPEND t328 TO t327->items.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t332) = CAST zlnt_runtime_dyna_a429568d5be8( t293 ).
    DATA(t333) = CAST zlnt_runtime_dyna_a429568d5be8( t297 ).
    DATA(t334) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    t331 = zcl_lnt_st_combi_module=>per( i_first = t332 i_second = t333 i_rest = t334 ).
    t292 = t331.
    IF t292 IS BOUND.
      CREATE OBJECT t291.
      t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t335 TYPE REF TO object.
      t335 = t292.
      t291->oval = t335.
    ENDIF.
    t290 = zcl_lnt_st_combi_module=>opt( i_first = t291 ).
    IF t290 IS BOUND.
      CREATE OBJECT t289.
      t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t336 TYPE REF TO object.
      t336 = t290.
      t289->oval = t336.
    ENDIF.
    APPEND t289 TO t288->items.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t338) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t339) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t261 ).
    t337 = zcl_lnt_st_combi_module=>seq( i_first = t338 i_second = t339 i_rest = t340 ).
    t222 = t337.
    result = t222.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d583_278b8a5e07e6.
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
