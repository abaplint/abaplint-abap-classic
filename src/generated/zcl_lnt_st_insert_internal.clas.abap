* TS: src/abap/2_statements/statements/insert_internal.ts:7:1 InsertInternal
CLASS zcl_lnt_st_insert_internal DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_insert_internal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
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
    DATA(t19) = |ASSIGNING|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c ).
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
    DATA(t33) = |REFERENCE INTO|.
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
    DATA(t47) = |INDEX|.
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
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t59) = |INITIAL LINE|.
    t58 = zcl_lnt_st_combi_module=>str( i_s = t59 ).
    t57 = t58.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = |INTO|.
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
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = |INTO TABLE|.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = t78.
    t76 = t77.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t82 = t83.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = CAST zif_lnt_statement_runnable( t29 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t92 TYPE REF TO object.
      t92 = t91.
      t90->oval = t92.
    ENDIF.
    t89 = t90.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = CAST zif_lnt_statement_runnable( t15 ).
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t95.
      t94->oval = t96.
    ENDIF.
    t93 = t94.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    t97 = t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t93 ).
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    t99 = zcl_lnt_st_combi_module=>alt( i_first = t100 i_second = t101 i_rest = t102 ).
    t88 = t99.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t88.
      t87->oval = t103.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt( i_first = t87 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t86.
      t85->oval = t104.
    ENDIF.
    APPEND t85 TO t84->items.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t107) = CAST zlnt_runtime_dyna_a429568d5be8( t79 ).
    DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    t105 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t107 i_rest = t108 ).
    t75 = t105.
    t74 = t75.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = |TO|.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t111 ).
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t110 = t119.
    t109 = t110.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = |FROM|.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = t127.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t131 = t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t128 ).
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t131 ).
    t133 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t135 i_rest = t136 ).
    t124 = t133.
    t123 = t124.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA(t143) = CAST zif_lnt_statement_runnable( t123 ).
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t143.
      t142->oval = t144.
    ENDIF.
    t141 = t142.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = CAST zif_lnt_statement_runnable( t109 ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t148 TYPE REF TO object.
      t148 = t147.
      t146->oval = t148.
    ENDIF.
    t145 = t146.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    t149 = t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t141 ).
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    t151 = zcl_lnt_st_combi_module=>per( i_first = t152 i_second = t153 i_rest = t154 ).
    t140 = t151.
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t155 TYPE REF TO object.
      t155 = t140.
      t139->oval = t155.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>opt( i_first = t139 ).
    t137 = t138.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = CAST zif_lnt_statement_runnable( t74 ).
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t161 TYPE REF TO object.
      t161 = t160.
      t159->oval = t161.
    ENDIF.
    t158 = t159.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = CAST zif_lnt_statement_runnable( t60 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t168 TYPE REF TO object.
      t168 = t167.
      t166->oval = t168.
    ENDIF.
    t165 = t166.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = CAST zif_lnt_statement_runnable( t43 ).
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t177 TYPE REF TO object.
      t177 = t176.
      t175->oval = t177.
    ENDIF.
    t174 = t175.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = CAST zif_lnt_statement_runnable( t29 ).
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t184 TYPE REF TO object.
      t184 = t183.
      t182->oval = t184.
    ENDIF.
    t181 = t182.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = CAST zif_lnt_statement_runnable( t15 ).
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t188 TYPE REF TO object.
      t188 = t187.
      t186->oval = t188.
    ENDIF.
    t185 = t186.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t190.
    t189 = t190.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t192) = CAST zlnt_runtime_dyna_a429568d5be8( t181 ).
    DATA(t193) = CAST zlnt_runtime_dyna_a429568d5be8( t185 ).
    DATA(t194) = CAST zlnt_runtime_arra_c22708faf2e3( t189 ).
    t191 = zcl_lnt_st_combi_module=>alt( i_first = t192 i_second = t193 i_rest = t194 ).
    t180 = t191.
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t195 TYPE REF TO object.
      t195 = t180.
      t179->oval = t195.
    ENDIF.
    t178 = t179.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t199) = CAST zlnt_runtime_dyna_a429568d5be8( t174 ).
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t178 ).
    DATA(t201) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    t198 = zcl_lnt_st_combi_module=>per( i_first = t199 i_second = t200 i_rest = t201 ).
    t173 = t198.
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t173.
      t172->oval = t202.
    ENDIF.
    t171 = zcl_lnt_st_combi_module=>opt( i_first = t172 ).
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t203 TYPE REF TO object.
      t203 = t171.
      t170->oval = t203.
    ENDIF.
    t169 = t170.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t205.
    t204 = t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t165 ).
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t169 ).
    DATA(t209) = CAST zlnt_runtime_arra_c22708faf2e3( t204 ).
    t206 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t208 i_rest = t209 ).
    t164 = t206.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t210 TYPE REF TO object.
      t210 = t164.
      t163->oval = t210.
    ENDIF.
    t162 = t163.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    t211 = t212.
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t211 ).
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = CAST zif_lnt_statement_runnable( t43 ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t218.
      t217->oval = t219.
    ENDIF.
    t216 = t217.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = CAST zif_lnt_statement_runnable( t29 ).
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t226 TYPE REF TO object.
      t226 = t225.
      t224->oval = t226.
    ENDIF.
    t223 = t224.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = CAST zif_lnt_statement_runnable( t15 ).
    IF t229 IS BOUND.
      CREATE OBJECT t228.
      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t230 TYPE REF TO object.
      t230 = t229.
      t228->oval = t230.
    ENDIF.
    t227 = t228.
    DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t232.
    t231 = t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t234) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t235) = CAST zlnt_runtime_dyna_a429568d5be8( t227 ).
    DATA(t236) = CAST zlnt_runtime_arra_c22708faf2e3( t231 ).
    t233 = zcl_lnt_st_combi_module=>alt( i_first = t234 i_second = t235 i_rest = t236 ).
    t222 = t233.
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t237 TYPE REF TO object.
      t237 = t222.
      t221->oval = t237.
    ENDIF.
    t220 = t221.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t239.
    t238 = t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t241) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t242) = CAST zlnt_runtime_dyna_a429568d5be8( t220 ).
    DATA(t243) = CAST zlnt_runtime_arra_c22708faf2e3( t238 ).
    t240 = zcl_lnt_st_combi_module=>per( i_first = t241 i_second = t242 i_rest = t243 ).
    t215 = t240.
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t244 TYPE REF TO object.
      t244 = t215.
      t214->oval = t244.
    ENDIF.
    APPEND t214 TO t213->items.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t246) = CAST zlnt_runtime_dyna_a429568d5be8( t158 ).
    DATA(t247) = CAST zlnt_runtime_dyna_a429568d5be8( t162 ).
    DATA(t248) = CAST zlnt_runtime_arra_c22708faf2e3( t211 ).
    t245 = zcl_lnt_st_combi_module=>alt( i_first = t246 i_second = t247 i_rest = t248 ).
    t157 = t245.
    t156 = t157.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t253) = |LINES OF|.
    CREATE OBJECT t252.
    t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t252->sval = t253.
    t251 = t252.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA(t256) = CAST zif_lnt_statement_runnable( t1 ).
    IF t256 IS BOUND.
      CREATE OBJECT t255.
      t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t257 TYPE REF TO object.
      t257 = t256.
      t255->oval = t257.
    ENDIF.
    t254 = t255.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    t258 = t259.
    DATA(t260) = CAST zlnt_runtime_arra_c22708faf2e3( t258 ).
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA(t264) = CAST zif_lnt_statement_runnable( t137 ).
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t265 TYPE REF TO object.
      t265 = t264.
      t263->oval = t265.
    ENDIF.
    t262 = zcl_lnt_st_combi_module=>opt( i_first = t263 ).
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t266 TYPE REF TO object.
      t266 = t262.
      t261->oval = t266.
    ENDIF.
    APPEND t261 TO t260->items.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t268) = CAST zlnt_runtime_dyna_a429568d5be8( t251 ).
    DATA(t269) = CAST zlnt_runtime_dyna_a429568d5be8( t254 ).
    DATA(t270) = CAST zlnt_runtime_arra_c22708faf2e3( t258 ).
    t267 = zcl_lnt_st_combi_module=>seq( i_first = t268 i_second = t269 i_rest = t270 ).
    t250 = t267.
    t249 = t250.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390 ).
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t274->cval = t275.
    ENDIF.
    t273 = t274.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA t280 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t280.
    DATA t281 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t282.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t282 = zcl_lnt_version_module=>release_b8cd.
    DATA(t283) = |v740sp02|.
    t281 = t282->get( p0 = t283 ).
    t280 = t281.
    IF t280 IS BOUND.
      CREATE OBJECT t279.
      t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t284 TYPE REF TO object.
      t284 = t280.
      t279->oval = t284.
    ENDIF.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA(t286) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t286 IS BOUND.
      CREATE OBJECT t285.
      t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t285->cval = t286.
    ENDIF.
    DATA t287 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t287.
    DATA(t288) = abap_true.
    IF t288 = abap_true.
      DATA t289 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t289.
      DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t290.
      DATA(t291) = abap_true.
      IF t291 = abap_true.
        DATA(t292) = |OpenABAP|.
        DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t293->has = abap_true.
        t293->value = t292.
        t290 = t293.
      ELSE.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        t290 = t294.
      ENDIF.
      t289 = NEW zcl_lnt_iver_options( i_also = t290 ).
      t287 = t289.
    ELSE.
      DATA t295 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t295.
      t287 = t295.
    ENDIF.
    t278 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t279 i_first = t285 i_opts = t287 ).
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t296 TYPE REF TO object.
      t296 = t278.
      t277->oval = t296.
    ENDIF.
    t276 = t277.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t298.
    t297 = t298.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t300) = CAST zlnt_runtime_dyna_a429568d5be8( t273 ).
    DATA(t301) = CAST zlnt_runtime_dyna_a429568d5be8( t276 ).
    DATA(t302) = CAST zlnt_runtime_arra_c22708faf2e3( t297 ).
    t299 = zcl_lnt_st_combi_module=>alt( i_first = t300 i_second = t301 i_rest = t302 ).
    t272 = t299.
    t271 = t272.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t307) = |TABLE|.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = t307.
    t305 = t306.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA(t310) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t309->cval = t310.
    ENDIF.
    t308 = t309.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t312.
    t311 = t312.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t314) = CAST zlnt_runtime_dyna_a429568d5be8( t305 ).
    DATA(t315) = CAST zlnt_runtime_dyna_a429568d5be8( t308 ).
    DATA(t316) = CAST zlnt_runtime_arra_c22708faf2e3( t311 ).
    t313 = zcl_lnt_st_combi_module=>seq( i_first = t314 i_second = t315 i_rest = t316 ).
    t304 = t313.
    t303 = t304.
    DATA t317 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t321) = |INSERT|.
    CREATE OBJECT t320.
    t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t320->sval = t321.
    t319 = t320.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA(t327) = CAST zif_lnt_statement_runnable( t303 ).
    IF t327 IS BOUND.
      CREATE OBJECT t326.
      t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t328 TYPE REF TO object.
      t328 = t327.
      t326->oval = t328.
    ENDIF.
    t325 = t326.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA(t337) = CAST zif_lnt_statement_runnable( t57 ).
    IF t337 IS BOUND.
      CREATE OBJECT t336.
      t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t338 TYPE REF TO object.
      t338 = t337.
      t336->oval = t338.
    ENDIF.
    t335 = t336.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = CAST zif_lnt_statement_runnable( t249 ).
    IF t341 IS BOUND.
      CREATE OBJECT t340.
      t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t342 TYPE REF TO object.
      t342 = t341.
      t340->oval = t342.
    ENDIF.
    t339 = t340.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t344.
    t343 = t344.
    DATA(t345) = CAST zlnt_runtime_arra_c22708faf2e3( t343 ).
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA(t347) = CAST zif_lnt_statement_runnable( t271 ).
    IF t347 IS BOUND.
      CREATE OBJECT t346.
      t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t348 TYPE REF TO object.
      t348 = t347.
      t346->oval = t348.
    ENDIF.
    APPEND t346 TO t345->items.
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t350) = CAST zlnt_runtime_dyna_a429568d5be8( t335 ).
    DATA(t351) = CAST zlnt_runtime_dyna_a429568d5be8( t339 ).
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t343 ).
    t349 = zcl_lnt_st_combi_module=>alt_prio( i_first = t350 i_second = t351 i_rest = t352 ).
    t334 = t349.
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t353 TYPE REF TO object.
      t353 = t334.
      t333->oval = t353.
    ENDIF.
    t332 = t333.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA(t356) = CAST zif_lnt_statement_runnable( t156 ).
    IF t356 IS BOUND.
      CREATE OBJECT t355.
      t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t357 TYPE REF TO object.
      t357 = t356.
      t355->oval = t357.
    ENDIF.
    t354 = t355.
    DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t359.
    t358 = t359.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t361) = CAST zlnt_runtime_dyna_a429568d5be8( t332 ).
    DATA(t362) = CAST zlnt_runtime_dyna_a429568d5be8( t354 ).
    DATA(t363) = CAST zlnt_runtime_arra_c22708faf2e3( t358 ).
    t360 = zcl_lnt_st_combi_module=>seq( i_first = t361 i_second = t362 i_rest = t363 ).
    t331 = t360.
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t364 TYPE REF TO object.
      t364 = t331.
      t330->oval = t364.
    ENDIF.
    t329 = t330.
    DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t366.
    t365 = t366.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t368) = CAST zlnt_runtime_dyna_a429568d5be8( t325 ).
    DATA(t369) = CAST zlnt_runtime_dyna_a429568d5be8( t329 ).
    DATA(t370) = CAST zlnt_runtime_arra_c22708faf2e3( t365 ).
    t367 = zcl_lnt_st_combi_module=>alt_prio( i_first = t368 i_second = t369 i_rest = t370 ).
    t324 = t367.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t371 TYPE REF TO object.
      t371 = t324.
      t323->oval = t371.
    ENDIF.
    t322 = t323.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t373.
    t372 = t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t375) = CAST zlnt_runtime_dyna_a429568d5be8( t319 ).
    DATA(t376) = CAST zlnt_runtime_dyna_a429568d5be8( t322 ).
    DATA(t377) = CAST zlnt_runtime_arra_c22708faf2e3( t372 ).
    t374 = zcl_lnt_st_combi_module=>seq( i_first = t375 i_second = t376 i_rest = t377 ).
    t318 = t374.
    t317 = t318.
    DATA(t378) = CAST zif_lnt_statement_runnable( t317 ).
    result = t378.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d519_36bc4e0e9240.
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
