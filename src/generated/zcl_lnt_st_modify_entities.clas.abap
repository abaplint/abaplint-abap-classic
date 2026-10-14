* TS: src/abap/2_statements/statements/modify_entities.ts:7:1 ModifyEntities
CLASS zcl_lnt_st_modify_entities DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_modify_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |WITH|.
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
    DATA(t19) = |FIELDS (|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39 ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>plus( i_first = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t22.
      t21->oval = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |)|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    APPEND t29 TO t28->items.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zif_lnt_statement_runnable( t1 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t34 TYPE REF TO object.
      t34 = t33.
      t32->oval = t34.
    ENDIF.
    APPEND t32 TO t31->items.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t37 i_rest = t38 ).
    t16 = t35.
    t15 = t16.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = |BY|.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    t47 = t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t44 ).
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t47 ).
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t51 i_rest = t52 ).
    t40 = t49.
    t39 = t40.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |RELATING TO|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t59->cval = t60.
    ENDIF.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    t61 = t62.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t61 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |BY|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    APPEND t64 TO t63->items.
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t61 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    APPEND t67 TO t66->items.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t61 ).
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t71 i_rest = t72 ).
    t54 = t69.
    t53 = t54.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = |EXECUTE|.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
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
    DATA(t85) = |FROM|.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    APPEND t84 TO t83->items.
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    APPEND t87 TO t86->items.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t91) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t92) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t91 i_rest = t92 ).
    t74 = t89.
    t73 = t74.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = |CREATE|.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zif_lnt_statement_runnable( t39 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t102.
      t101->oval = t103.
    ENDIF.
    t100 = zcl_lnt_st_combi_module=>opt( i_first = t101 ).
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t100.
      t99->oval = t104.
    ENDIF.
    t98 = t99.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    t105 = t106.
    DATA(t107) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = |FROM|.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    APPEND t108 TO t107->items.
    DATA(t110) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t111->cval = t112.
    ENDIF.
    APPEND t111 TO t110->items.
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = CAST zif_lnt_statement_runnable( t53 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t117.
      t116->oval = t118.
    ENDIF.
    t115 = zcl_lnt_st_combi_module=>opt( i_first = t116 ).
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t119 TYPE REF TO object.
      t119 = t115.
      t114->oval = t119.
    ENDIF.
    APPEND t114 TO t113->items.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t95 ).
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t98 ).
    DATA(t123) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
    t120 = zcl_lnt_st_combi_module=>seq( i_first = t121 i_second = t122 i_rest = t123 ).
    t94 = t120.
    t93 = t94.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t128) = |UPDATE FROM|.
    CREATE OBJECT t127.
    t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t127->sval = t128.
    t126 = t127.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t130->cval = t131.
    ENDIF.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t133.
    t132 = t133.
    DATA(t134) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = CAST zif_lnt_statement_runnable( t53 ).
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t139 TYPE REF TO object.
      t139 = t138.
      t137->oval = t139.
    ENDIF.
    t136 = zcl_lnt_st_combi_module=>opt( i_first = t137 ).
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t140 TYPE REF TO object.
      t140 = t136.
      t135->oval = t140.
    ENDIF.
    APPEND t135 TO t134->items.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t142) = CAST zlnt_runtime_dyna_a429568d5be8( t126 ).
    DATA(t143) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
    DATA(t144) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t142 i_second = t143 i_rest = t144 ).
    t125 = t141.
    t124 = t125.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = |DELETE FROM|.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = t149.
    t147 = t148.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t151->cval = t152.
    ENDIF.
    t150 = t151.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t154.
    t153 = t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t150 ).
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t153 ).
    t155 = zcl_lnt_st_combi_module=>seq( i_first = t156 i_second = t157 i_rest = t158 ).
    t146 = t155.
    t145 = t146.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t163) = |UPDATE|.
    CREATE OBJECT t162.
    t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t162->sval = t163.
    t161 = t162.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = CAST zif_lnt_statement_runnable( t15 ).
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t166.
      t165->oval = t167.
    ENDIF.
    t164 = t165.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    t168 = t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t171) = CAST zlnt_runtime_dyna_a429568d5be8( t161 ).
    DATA(t172) = CAST zlnt_runtime_dyna_a429568d5be8( t164 ).
    DATA(t173) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    t170 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t172 i_rest = t173 ).
    t160 = t170.
    t159 = t160.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = |UPDATE SET FIELDS WITH|.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = t178.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA(t181) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t181 IS BOUND.
      CREATE OBJECT t180.
      t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t180->cval = t181.
    ENDIF.
    t179 = t180.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    t182 = t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t185) = CAST zlnt_runtime_dyna_a429568d5be8( t176 ).
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t179 ).
    DATA(t187) = CAST zlnt_runtime_arra_c22708faf2e3( t182 ).
    t184 = zcl_lnt_st_combi_module=>seq( i_first = t185 i_second = t186 i_rest = t187 ).
    t175 = t184.
    t174 = t175.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = CAST zif_lnt_statement_runnable( t174 ).
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t193 TYPE REF TO object.
      t193 = t192.
      t191->oval = t193.
    ENDIF.
    t190 = t191.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t199) = |CREATE SET FIELDS WITH|.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = t199.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA(t202) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t202 IS BOUND.
      CREATE OBJECT t201.
      t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t201->cval = t202.
    ENDIF.
    t200 = t201.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    t203 = t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t197 ).
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t200 ).
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t203 ).
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t206 i_second = t207 i_rest = t208 ).
    t196 = t205.
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t196.
      t195->oval = t209.
    ENDIF.
    t194 = t195.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t211.
    t210 = t211.
    DATA(t212) = CAST zlnt_runtime_arra_c22708faf2e3( t210 ).
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = CAST zif_lnt_statement_runnable( t159 ).
    IF t214 IS BOUND.
      CREATE OBJECT t213.
      t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t215 TYPE REF TO object.
      t215 = t214.
      t213->oval = t215.
    ENDIF.
    APPEND t213 TO t212->items.
    DATA(t216) = CAST zlnt_runtime_arra_c22708faf2e3( t210 ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = CAST zif_lnt_statement_runnable( t145 ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t218.
      t217->oval = t219.
    ENDIF.
    APPEND t217 TO t216->items.
    DATA(t220) = CAST zlnt_runtime_arra_c22708faf2e3( t210 ).
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = CAST zif_lnt_statement_runnable( t124 ).
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t223 TYPE REF TO object.
      t223 = t222.
      t221->oval = t223.
    ENDIF.
    APPEND t221 TO t220->items.
    DATA(t224) = CAST zlnt_runtime_arra_c22708faf2e3( t210 ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = CAST zif_lnt_statement_runnable( t93 ).
    IF t226 IS BOUND.
      CREATE OBJECT t225.
      t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t227 TYPE REF TO object.
      t227 = t226.
      t225->oval = t227.
    ENDIF.
    APPEND t225 TO t224->items.
    DATA(t228) = CAST zlnt_runtime_arra_c22708faf2e3( t210 ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = CAST zif_lnt_statement_runnable( t73 ).
    IF t230 IS BOUND.
      CREATE OBJECT t229.
      t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t231 TYPE REF TO object.
      t231 = t230.
      t229->oval = t231.
    ENDIF.
    APPEND t229 TO t228->items.
    DATA(t232) = CAST zlnt_runtime_arra_c22708faf2e3( t210 ).
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t237) = |CREATE|.
    CREATE OBJECT t236.
    t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t236->sval = t237.
    t235 = t236.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = CAST zif_lnt_statement_runnable( t39 ).
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t242.
      t241->oval = t243.
    ENDIF.
    t240 = zcl_lnt_st_combi_module=>opt( i_first = t241 ).
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t244 TYPE REF TO object.
      t244 = t240.
      t239->oval = t244.
    ENDIF.
    t238 = t239.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t246.
    t245 = t246.
    DATA(t247) = CAST zlnt_runtime_arra_c22708faf2e3( t245 ).
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t251) = |AUTO FILL CID|.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    t249 = zcl_lnt_st_combi_module=>opt_prio( i_first = t250 ).
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t249.
      t248->oval = t252.
    ENDIF.
    APPEND t248 TO t247->items.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t245 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = CAST zif_lnt_statement_runnable( t1 ).
    IF t258 IS BOUND.
      CREATE OBJECT t257.
      t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t258.
      t257->oval = t259.
    ENDIF.
    t256 = t257.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA(t262) = CAST zif_lnt_statement_runnable( t15 ).
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t263 TYPE REF TO object.
      t263 = t262.
      t261->oval = t263.
    ENDIF.
    t260 = t261.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t265.
    t264 = t265.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t267) = CAST zlnt_runtime_dyna_a429568d5be8( t256 ).
    DATA(t268) = CAST zlnt_runtime_dyna_a429568d5be8( t260 ).
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t264 ).
    t266 = zcl_lnt_st_combi_module=>alt_prio( i_first = t267 i_second = t268 i_rest = t269 ).
    t255 = t266.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t270 TYPE REF TO object.
      t270 = t255.
      t254->oval = t270.
    ENDIF.
    APPEND t254 TO t253->items.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t272) = CAST zlnt_runtime_dyna_a429568d5be8( t235 ).
    DATA(t273) = CAST zlnt_runtime_dyna_a429568d5be8( t238 ).
    DATA(t274) = CAST zlnt_runtime_arra_c22708faf2e3( t245 ).
    t271 = zcl_lnt_st_combi_module=>seq( i_first = t272 i_second = t273 i_rest = t274 ).
    t234 = t271.
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t275 TYPE REF TO object.
      t275 = t234.
      t233->oval = t275.
    ENDIF.
    APPEND t233 TO t232->items.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t277) = CAST zlnt_runtime_dyna_a429568d5be8( t190 ).
    DATA(t278) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t279) = CAST zlnt_runtime_arra_c22708faf2e3( t210 ).
    t276 = zcl_lnt_st_combi_module=>alt( i_first = t277 i_second = t278 i_rest = t279 ).
    t189 = t276.
    t188 = t189.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t284) = |FAILED|.
    CREATE OBJECT t283.
    t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t283->sval = t284.
    t282 = t283.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t286->cval = t287.
    ENDIF.
    t285 = t286.
    DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t289.
    t288 = t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t291) = CAST zlnt_runtime_dyna_a429568d5be8( t282 ).
    DATA(t292) = CAST zlnt_runtime_dyna_a429568d5be8( t285 ).
    DATA(t293) = CAST zlnt_runtime_arra_c22708faf2e3( t288 ).
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t291 i_second = t292 i_rest = t293 ).
    t281 = t290.
    t280 = t281.
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t298) = |RESULT|.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = t298.
    t296 = t297.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t301 IS BOUND.
      CREATE OBJECT t300.
      t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t300->cval = t301.
    ENDIF.
    t299 = t300.
    DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t303.
    t302 = t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t305) = CAST zlnt_runtime_dyna_a429568d5be8( t296 ).
    DATA(t306) = CAST zlnt_runtime_dyna_a429568d5be8( t299 ).
    DATA(t307) = CAST zlnt_runtime_arra_c22708faf2e3( t302 ).
    t304 = zcl_lnt_st_combi_module=>seq( i_first = t305 i_second = t306 i_rest = t307 ).
    t295 = t304.
    t294 = t295.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t308.
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t312) = |MAPPED|.
    CREATE OBJECT t311.
    t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t311->sval = t312.
    t310 = t311.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t314.
    DATA(t315) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t315 IS BOUND.
      CREATE OBJECT t314.
      t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t314->cval = t315.
    ENDIF.
    t313 = t314.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t317.
    t316 = t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t319) = CAST zlnt_runtime_dyna_a429568d5be8( t310 ).
    DATA(t320) = CAST zlnt_runtime_dyna_a429568d5be8( t313 ).
    DATA(t321) = CAST zlnt_runtime_arra_c22708faf2e3( t316 ).
    t318 = zcl_lnt_st_combi_module=>seq( i_first = t319 i_second = t320 i_rest = t321 ).
    t309 = t318.
    t308 = t309.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t326) = |REPORTED|.
    CREATE OBJECT t325.
    t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t325->sval = t326.
    t324 = t325.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA(t329) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t329 IS BOUND.
      CREATE OBJECT t328.
      t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t328->cval = t329.
    ENDIF.
    t327 = t328.
    DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t331.
    t330 = t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t333) = CAST zlnt_runtime_dyna_a429568d5be8( t324 ).
    DATA(t334) = CAST zlnt_runtime_dyna_a429568d5be8( t327 ).
    DATA(t335) = CAST zlnt_runtime_arra_c22708faf2e3( t330 ).
    t332 = zcl_lnt_st_combi_module=>seq( i_first = t333 i_second = t334 i_rest = t335 ).
    t323 = t332.
    t322 = t323.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t336.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = CAST zif_lnt_statement_runnable( t280 ).
    IF t342 IS BOUND.
      CREATE OBJECT t341.
      t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t343 TYPE REF TO object.
      t343 = t342.
      t341->oval = t343.
    ENDIF.
    t340 = t341.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = CAST zif_lnt_statement_runnable( t294 ).
    IF t346 IS BOUND.
      CREATE OBJECT t345.
      t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t347 TYPE REF TO object.
      t347 = t346.
      t345->oval = t347.
    ENDIF.
    t344 = t345.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t349.
    t348 = t349.
    DATA(t350) = CAST zlnt_runtime_arra_c22708faf2e3( t348 ).
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA(t352) = CAST zif_lnt_statement_runnable( t308 ).
    IF t352 IS BOUND.
      CREATE OBJECT t351.
      t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t353 TYPE REF TO object.
      t353 = t352.
      t351->oval = t353.
    ENDIF.
    APPEND t351 TO t350->items.
    DATA(t354) = CAST zlnt_runtime_arra_c22708faf2e3( t348 ).
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA(t356) = CAST zif_lnt_statement_runnable( t322 ).
    IF t356 IS BOUND.
      CREATE OBJECT t355.
      t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t357 TYPE REF TO object.
      t357 = t356.
      t355->oval = t357.
    ENDIF.
    APPEND t355 TO t354->items.
    DATA t358 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t359) = CAST zlnt_runtime_dyna_a429568d5be8( t340 ).
    DATA(t360) = CAST zlnt_runtime_dyna_a429568d5be8( t344 ).
    DATA(t361) = CAST zlnt_runtime_arra_c22708faf2e3( t348 ).
    t358 = zcl_lnt_st_combi_module=>per( i_first = t359 i_second = t360 i_rest = t361 ).
    t339 = t358.
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t362 TYPE REF TO object.
      t362 = t339.
      t338->oval = t362.
    ENDIF.
    t337 = zcl_lnt_st_combi_module=>opt_prio( i_first = t338 ).
    t336 = t337.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA t364 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t364.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t369) = |AUGMENTING|.
    CREATE OBJECT t368.
    t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t368->sval = t369.
    t367 = zcl_lnt_st_combi_module=>opt_prio( i_first = t368 ).
    IF t367 IS BOUND.
      CREATE OBJECT t366.
      t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t370 TYPE REF TO object.
      t370 = t367.
      t366->oval = t370.
    ENDIF.
    t365 = t366.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t373) = |ENTITIES OF|.
    CREATE OBJECT t372.
    t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t372->sval = t373.
    t371 = t372.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t375.
    t374 = t375.
    DATA(t376) = CAST zlnt_runtime_arra_c22708faf2e3( t374 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA(t378) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t377->cval = t378.
    ENDIF.
    APPEND t377 TO t376->items.
    DATA(t379) = CAST zlnt_runtime_arra_c22708faf2e3( t374 ).
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA t381 TYPE REF TO zif_lnt_statement_runnable.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t383) = |IN LOCAL MODE|.
    CREATE OBJECT t382.
    t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t382->sval = t383.
    t381 = zcl_lnt_st_combi_module=>opt( i_first = t382 ).
    IF t381 IS BOUND.
      CREATE OBJECT t380.
      t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t384 TYPE REF TO object.
      t384 = t381.
      t380->oval = t384.
    ENDIF.
    APPEND t380 TO t379->items.
    DATA(t385) = CAST zlnt_runtime_arra_c22708faf2e3( t374 ).
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t392) = |ENTITY|.
    CREATE OBJECT t391.
    t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t391->sval = t392.
    t390 = t391.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA(t395) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
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
    DATA(t398) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t400.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t401.
    DATA(t402) = CAST zif_lnt_statement_runnable( t188 ).
    IF t402 IS BOUND.
      CREATE OBJECT t401.
      t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t403 TYPE REF TO object.
      t403 = t402.
      t401->oval = t403.
    ENDIF.
    t400 = zcl_lnt_st_combi_module=>plus( i_first = t401 ).
    IF t400 IS BOUND.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t404 TYPE REF TO object.
      t404 = t400.
      t399->oval = t404.
    ENDIF.
    APPEND t399 TO t398->items.
    DATA t405 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t406) = CAST zlnt_runtime_dyna_a429568d5be8( t390 ).
    DATA(t407) = CAST zlnt_runtime_dyna_a429568d5be8( t393 ).
    DATA(t408) = CAST zlnt_runtime_arra_c22708faf2e3( t396 ).
    t405 = zcl_lnt_st_combi_module=>seq( i_first = t406 i_second = t407 i_rest = t408 ).
    t389 = t405.
    IF t389 IS BOUND.
      CREATE OBJECT t388.
      t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t409 TYPE REF TO object.
      t409 = t389.
      t388->oval = t409.
    ENDIF.
    t387 = zcl_lnt_st_combi_module=>plus_prio( i_first = t388 ).
    IF t387 IS BOUND.
      CREATE OBJECT t386.
      t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t410 TYPE REF TO object.
      t410 = t387.
      t386->oval = t410.
    ENDIF.
    APPEND t386 TO t385->items.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t412) = CAST zlnt_runtime_dyna_a429568d5be8( t365 ).
    DATA(t413) = CAST zlnt_runtime_dyna_a429568d5be8( t371 ).
    DATA(t414) = CAST zlnt_runtime_arra_c22708faf2e3( t374 ).
    t411 = zcl_lnt_st_combi_module=>seq( i_first = t412 i_second = t413 i_rest = t414 ).
    t364 = t411.
    t363 = t364.
    DATA t415 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t415.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t419) = |ENTITIES|.
    CREATE OBJECT t418.
    t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t418->sval = t419.
    t417 = t418.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t424.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t427) = |IN LOCAL MODE|.
    CREATE OBJECT t426.
    t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t426->sval = t427.
    t425 = t426.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t435) = |FORWARDING|.
    CREATE OBJECT t434.
    t434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t434->sval = t435.
    t433 = zcl_lnt_st_combi_module=>opt( i_first = t434 ).
    IF t433 IS BOUND.
      CREATE OBJECT t432.
      t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t436 TYPE REF TO object.
      t436 = t433.
      t432->oval = t436.
    ENDIF.
    t431 = t432.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t439) = |PRIVILEGED|.
    CREATE OBJECT t438.
    t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t438->sval = t439.
    t437 = t438.
    DATA t440 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t441.
    t440 = t441.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t443) = CAST zlnt_runtime_dyna_a429568d5be8( t431 ).
    DATA(t444) = CAST zlnt_runtime_dyna_a429568d5be8( t437 ).
    DATA(t445) = CAST zlnt_runtime_arra_c22708faf2e3( t440 ).
    t442 = zcl_lnt_st_combi_module=>seq( i_first = t443 i_second = t444 i_rest = t445 ).
    t430 = t442.
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t446 TYPE REF TO object.
      t446 = t430.
      t429->oval = t446.
    ENDIF.
    t428 = t429.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t448 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t448.
    t447 = t448.
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t450) = CAST zlnt_runtime_dyna_a429568d5be8( t425 ).
    DATA(t451) = CAST zlnt_runtime_dyna_a429568d5be8( t428 ).
    DATA(t452) = CAST zlnt_runtime_arra_c22708faf2e3( t447 ).
    t449 = zcl_lnt_st_combi_module=>alt_prio( i_first = t450 i_second = t451 i_rest = t452 ).
    t424 = t449.
    IF t424 IS BOUND.
      CREATE OBJECT t423.
      t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t453 TYPE REF TO object.
      t453 = t424.
      t423->oval = t453.
    ENDIF.
    t422 = zcl_lnt_st_combi_module=>opt_prio( i_first = t423 ).
    IF t422 IS BOUND.
      CREATE OBJECT t421.
      t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t454 TYPE REF TO object.
      t454 = t422.
      t421->oval = t454.
    ENDIF.
    t420 = t421.
    DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t456 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t456.
    t455 = t456.
    DATA(t457) = CAST zlnt_runtime_arra_c22708faf2e3( t455 ).
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t459) = |OPERATIONS|.
    CREATE OBJECT t458.
    t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t458->sval = t459.
    APPEND t458 TO t457->items.
    DATA(t460) = CAST zlnt_runtime_arra_c22708faf2e3( t455 ).
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA(t462) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t462 IS BOUND.
      CREATE OBJECT t461.
      t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t461->cval = t462.
    ENDIF.
    APPEND t461 TO t460->items.
    DATA t463 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t464) = CAST zlnt_runtime_dyna_a429568d5be8( t417 ).
    DATA(t465) = CAST zlnt_runtime_dyna_a429568d5be8( t420 ).
    DATA(t466) = CAST zlnt_runtime_arra_c22708faf2e3( t455 ).
    t463 = zcl_lnt_st_combi_module=>seq( i_first = t464 i_second = t465 i_rest = t466 ).
    t416 = t463.
    t415 = t416.
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t467.
    DATA t468 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t468.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t471) = |CREATE|.
    CREATE OBJECT t470.
    t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t470->sval = t471.
    t469 = t470.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA(t474) = CAST zif_lnt_statement_runnable( t15 ).
    IF t474 IS BOUND.
      CREATE OBJECT t473.
      t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t475 TYPE REF TO object.
      t475 = t474.
      t473->oval = t475.
    ENDIF.
    t472 = t473.
    DATA t476 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t477 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t477.
    t476 = t477.
    DATA(t478) = CAST zlnt_runtime_arra_c22708faf2e3( t476 ).
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t479.
    DATA t480 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t480.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t481.
    DATA t482 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t482.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t485) = |CREATE BY|.
    CREATE OBJECT t484.
    t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t484->sval = t485.
    t483 = t484.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t486.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t487.
    DATA(t488) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5 ).
    IF t488 IS BOUND.
      CREATE OBJECT t487.
      t487->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t487->cval = t488.
    ENDIF.
    t486 = t487.
    DATA t489 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t490 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t490.
    t489 = t490.
    DATA(t491) = CAST zlnt_runtime_arra_c22708faf2e3( t489 ).
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t492.
    DATA(t493) = CAST zif_lnt_statement_runnable( t15 ).
    IF t493 IS BOUND.
      CREATE OBJECT t492.
      t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t494 TYPE REF TO object.
      t494 = t493.
      t492->oval = t494.
    ENDIF.
    APPEND t492 TO t491->items.
    DATA t495 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t496) = CAST zlnt_runtime_dyna_a429568d5be8( t483 ).
    DATA(t497) = CAST zlnt_runtime_dyna_a429568d5be8( t486 ).
    DATA(t498) = CAST zlnt_runtime_arra_c22708faf2e3( t489 ).
    t495 = zcl_lnt_st_combi_module=>seq( i_first = t496 i_second = t497 i_rest = t498 ).
    t482 = t495.
    IF t482 IS BOUND.
      CREATE OBJECT t481.
      t481->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t499 TYPE REF TO object.
      t499 = t482.
      t481->oval = t499.
    ENDIF.
    t480 = zcl_lnt_st_combi_module=>opt( i_first = t481 ).
    IF t480 IS BOUND.
      CREATE OBJECT t479.
      t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t500 TYPE REF TO object.
      t500 = t480.
      t479->oval = t500.
    ENDIF.
    APPEND t479 TO t478->items.
    DATA t501 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t502) = CAST zlnt_runtime_dyna_a429568d5be8( t469 ).
    DATA(t503) = CAST zlnt_runtime_dyna_a429568d5be8( t472 ).
    DATA(t504) = CAST zlnt_runtime_arra_c22708faf2e3( t476 ).
    t501 = zcl_lnt_st_combi_module=>seq( i_first = t502 i_second = t503 i_rest = t504 ).
    t468 = t501.
    t467 = t468.
    DATA t505 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t505.
    DATA t506 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t509) = |CREATE BY|.
    CREATE OBJECT t508.
    t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t508->sval = t509.
    t507 = t508.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA(t512) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5 ).
    IF t512 IS BOUND.
      CREATE OBJECT t511.
      t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t511->cval = t512.
    ENDIF.
    t510 = t511.
    DATA t513 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t514.
    t513 = t514.
    DATA(t515) = CAST zlnt_runtime_arra_c22708faf2e3( t513 ).
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t516.
    DATA(t517) = CAST zif_lnt_statement_runnable( t15 ).
    IF t517 IS BOUND.
      CREATE OBJECT t516.
      t516->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t518 TYPE REF TO object.
      t518 = t517.
      t516->oval = t518.
    ENDIF.
    APPEND t516 TO t515->items.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t520) = CAST zlnt_runtime_dyna_a429568d5be8( t507 ).
    DATA(t521) = CAST zlnt_runtime_dyna_a429568d5be8( t510 ).
    DATA(t522) = CAST zlnt_runtime_arra_c22708faf2e3( t513 ).
    t519 = zcl_lnt_st_combi_module=>seq( i_first = t520 i_second = t521 i_rest = t522 ).
    t506 = t519.
    t505 = t506.
    DATA t523 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t523.
    DATA t524 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t524.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t527) = |CREATE FROM|.
    CREATE OBJECT t526.
    t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t526->sval = t527.
    t525 = t526.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t529.
    DATA(t530) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA(t533) = CAST zlnt_runtime_arra_c22708faf2e3( t531 ).
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t534.
    DATA t535 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t535.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t537.
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t540) = |CREATE BY|.
    CREATE OBJECT t539.
    t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t539->sval = t540.
    t538 = t539.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    DATA(t543) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5 ).
    IF t543 IS BOUND.
      CREATE OBJECT t542.
      t542->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t542->cval = t543.
    ENDIF.
    t541 = t542.
    DATA t544 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t545 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t545.
    t544 = t545.
    DATA(t546) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t548) = |FROM|.
    CREATE OBJECT t547.
    t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t547->sval = t548.
    APPEND t547 TO t546->items.
    DATA(t549) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t551 IS BOUND.
      CREATE OBJECT t550.
      t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t550->cval = t551.
    ENDIF.
    APPEND t550 TO t549->items.
    DATA t552 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t553) = CAST zlnt_runtime_dyna_a429568d5be8( t538 ).
    DATA(t554) = CAST zlnt_runtime_dyna_a429568d5be8( t541 ).
    DATA(t555) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    t552 = zcl_lnt_st_combi_module=>seq( i_first = t553 i_second = t554 i_rest = t555 ).
    t537 = t552.
    IF t537 IS BOUND.
      CREATE OBJECT t536.
      t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t556 TYPE REF TO object.
      t556 = t537.
      t536->oval = t556.
    ENDIF.
    t535 = zcl_lnt_st_combi_module=>plus( i_first = t536 ).
    IF t535 IS BOUND.
      CREATE OBJECT t534.
      t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t557 TYPE REF TO object.
      t557 = t535.
      t534->oval = t557.
    ENDIF.
    APPEND t534 TO t533->items.
    DATA t558 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t559) = CAST zlnt_runtime_dyna_a429568d5be8( t525 ).
    DATA(t560) = CAST zlnt_runtime_dyna_a429568d5be8( t528 ).
    DATA(t561) = CAST zlnt_runtime_arra_c22708faf2e3( t531 ).
    t558 = zcl_lnt_st_combi_module=>seq( i_first = t559 i_second = t560 i_rest = t561 ).
    t524 = t558.
    t523 = t524.
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t562.
    DATA t563 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t563.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t566) = |ENTITY|.
    CREATE OBJECT t565.
    t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t565->sval = t566.
    t564 = t565.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t567.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t571) = |IN LOCAL MODE|.
    CREATE OBJECT t570.
    t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t570->sval = t571.
    t569 = zcl_lnt_st_combi_module=>opt( i_first = t570 ).
    IF t569 IS BOUND.
      CREATE OBJECT t568.
      t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t572 TYPE REF TO object.
      t572 = t569.
      t568->oval = t572.
    ENDIF.
    t567 = t568.
    DATA t573 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t574.
    t573 = t574.
    DATA(t575) = CAST zlnt_runtime_arra_c22708faf2e3( t573 ).
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA t577 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t577.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA(t580) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t580 IS BOUND.
      CREATE OBJECT t579.
      t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t579->cval = t580.
    ENDIF.
    t578 = t579.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
    IF t583 IS BOUND.
      CREATE OBJECT t582.
      t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t582->cval = t583.
    ENDIF.
    t581 = t582.
    DATA t584 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t585 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t585.
    t584 = t585.
    DATA t586 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t587) = CAST zlnt_runtime_dyna_a429568d5be8( t578 ).
    DATA(t588) = CAST zlnt_runtime_dyna_a429568d5be8( t581 ).
    DATA(t589) = CAST zlnt_runtime_arra_c22708faf2e3( t584 ).
    t586 = zcl_lnt_st_combi_module=>alt( i_first = t587 i_second = t588 i_rest = t589 ).
    t577 = t586.
    IF t577 IS BOUND.
      CREATE OBJECT t576.
      t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t590 TYPE REF TO object.
      t590 = t577.
      t576->oval = t590.
    ENDIF.
    APPEND t576 TO t575->items.
    DATA(t591) = CAST zlnt_runtime_arra_c22708faf2e3( t573 ).
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA t593 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t593.
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t594.
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t595.
    DATA(t596) = CAST zif_lnt_statement_runnable( t73 ).
    IF t596 IS BOUND.
      CREATE OBJECT t595.
      t595->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t597 TYPE REF TO object.
      t597 = t596.
      t595->oval = t597.
    ENDIF.
    t594 = t595.
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA(t600) = CAST zif_lnt_statement_runnable( t93 ).
    IF t600 IS BOUND.
      CREATE OBJECT t599.
      t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t601 TYPE REF TO object.
      t601 = t600.
      t599->oval = t601.
    ENDIF.
    t598 = t599.
    DATA t602 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t603 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t603.
    t602 = t603.
    DATA(t604) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA(t606) = CAST zif_lnt_statement_runnable( t159 ).
    IF t606 IS BOUND.
      CREATE OBJECT t605.
      t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t607 TYPE REF TO object.
      t607 = t606.
      t605->oval = t607.
    ENDIF.
    APPEND t605 TO t604->items.
    DATA(t608) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t609.
    DATA(t610) = CAST zif_lnt_statement_runnable( t145 ).
    IF t610 IS BOUND.
      CREATE OBJECT t609.
      t609->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t611 TYPE REF TO object.
      t611 = t610.
      t609->oval = t611.
    ENDIF.
    APPEND t609 TO t608->items.
    DATA(t612) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    DATA(t614) = CAST zif_lnt_statement_runnable( t174 ).
    IF t614 IS BOUND.
      CREATE OBJECT t613.
      t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t615 TYPE REF TO object.
      t615 = t614.
      t613->oval = t615.
    ENDIF.
    APPEND t613 TO t612->items.
    DATA(t616) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t617.
    DATA(t618) = CAST zif_lnt_statement_runnable( t124 ).
    IF t618 IS BOUND.
      CREATE OBJECT t617.
      t617->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t619 TYPE REF TO object.
      t619 = t618.
      t617->oval = t619.
    ENDIF.
    APPEND t617 TO t616->items.
    DATA(t620) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t621.
    DATA(t622) = CAST zif_lnt_statement_runnable( t467 ).
    IF t622 IS BOUND.
      CREATE OBJECT t621.
      t621->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t623 TYPE REF TO object.
      t623 = t622.
      t621->oval = t623.
    ENDIF.
    APPEND t621 TO t620->items.
    DATA(t624) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t625.
    DATA(t626) = CAST zif_lnt_statement_runnable( t505 ).
    IF t626 IS BOUND.
      CREATE OBJECT t625.
      t625->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t627 TYPE REF TO object.
      t627 = t626.
      t625->oval = t627.
    ENDIF.
    APPEND t625 TO t624->items.
    DATA(t628) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    DATA(t630) = CAST zif_lnt_statement_runnable( t523 ).
    IF t630 IS BOUND.
      CREATE OBJECT t629.
      t629->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t631 TYPE REF TO object.
      t631 = t630.
      t629->oval = t631.
    ENDIF.
    APPEND t629 TO t628->items.
    DATA t632 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t633) = CAST zlnt_runtime_dyna_a429568d5be8( t594 ).
    DATA(t634) = CAST zlnt_runtime_dyna_a429568d5be8( t598 ).
    DATA(t635) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    t632 = zcl_lnt_st_combi_module=>alt( i_first = t633 i_second = t634 i_rest = t635 ).
    t593 = t632.
    IF t593 IS BOUND.
      CREATE OBJECT t592.
      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t636 TYPE REF TO object.
      t636 = t593.
      t592->oval = t636.
    ENDIF.
    APPEND t592 TO t591->items.
    DATA t637 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t638) = CAST zlnt_runtime_dyna_a429568d5be8( t564 ).
    DATA(t639) = CAST zlnt_runtime_dyna_a429568d5be8( t567 ).
    DATA(t640) = CAST zlnt_runtime_arra_c22708faf2e3( t573 ).
    t637 = zcl_lnt_st_combi_module=>seq( i_first = t638 i_second = t639 i_rest = t640 ).
    t563 = t637.
    t562 = t563.
    DATA t641 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t641.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    DATA t643 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t643.
    DATA t644 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t644.
    DATA t645 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t645.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t645 = zcl_lnt_version_module=>release_b8cd.
    DATA(t646) = |v754|.
    t644 = t645->get( p0 = t646 ).
    t643 = t644.
    IF t643 IS BOUND.
      CREATE OBJECT t642.
      t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t647 TYPE REF TO object.
      t647 = t643.
      t642->oval = t647.
    ENDIF.
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t648.
    DATA t649 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t649.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t652) = |MODIFY|.
    CREATE OBJECT t651.
    t651->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t651->sval = t652.
    t650 = t651.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t653.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t654.
    DATA t655 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t655.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t657.
    DATA(t658) = CAST zif_lnt_statement_runnable( t363 ).
    IF t658 IS BOUND.
      CREATE OBJECT t657.
      t657->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t659 TYPE REF TO object.
      t659 = t658.
      t657->oval = t659.
    ENDIF.
    t656 = t657.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t660.
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t661.
    DATA(t662) = CAST zif_lnt_statement_runnable( t415 ).
    IF t662 IS BOUND.
      CREATE OBJECT t661.
      t661->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t663 TYPE REF TO object.
      t663 = t662.
      t661->oval = t663.
    ENDIF.
    t660 = t661.
    DATA t664 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t665 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t665.
    t664 = t665.
    DATA(t666) = CAST zlnt_runtime_arra_c22708faf2e3( t664 ).
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    DATA(t668) = CAST zif_lnt_statement_runnable( t562 ).
    IF t668 IS BOUND.
      CREATE OBJECT t667.
      t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t669 TYPE REF TO object.
      t669 = t668.
      t667->oval = t669.
    ENDIF.
    APPEND t667 TO t666->items.
    DATA t670 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t671) = CAST zlnt_runtime_dyna_a429568d5be8( t656 ).
    DATA(t672) = CAST zlnt_runtime_dyna_a429568d5be8( t660 ).
    DATA(t673) = CAST zlnt_runtime_arra_c22708faf2e3( t664 ).
    t670 = zcl_lnt_st_combi_module=>alt( i_first = t671 i_second = t672 i_rest = t673 ).
    t655 = t670.
    IF t655 IS BOUND.
      CREATE OBJECT t654.
      t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t674 TYPE REF TO object.
      t674 = t655.
      t654->oval = t674.
    ENDIF.
    t653 = t654.
    DATA t675 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t676 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t676.
    t675 = t676.
    DATA(t677) = CAST zlnt_runtime_arra_c22708faf2e3( t675 ).
    DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t678.
    DATA(t679) = CAST zif_lnt_statement_runnable( t336 ).
    IF t679 IS BOUND.
      CREATE OBJECT t678.
      t678->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t680 TYPE REF TO object.
      t680 = t679.
      t678->oval = t680.
    ENDIF.
    APPEND t678 TO t677->items.
    DATA t681 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t682) = CAST zlnt_runtime_dyna_a429568d5be8( t650 ).
    DATA(t683) = CAST zlnt_runtime_dyna_a429568d5be8( t653 ).
    DATA(t684) = CAST zlnt_runtime_arra_c22708faf2e3( t675 ).
    t681 = zcl_lnt_st_combi_module=>seq( i_first = t682 i_second = t683 i_rest = t684 ).
    t649 = t681.
    IF t649 IS BOUND.
      CREATE OBJECT t648.
      t648->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t685 TYPE REF TO object.
      t685 = t649.
      t648->oval = t685.
    ENDIF.
    DATA t686 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t686.
    DATA(t687) = abap_true.
    IF t687 = abap_true.
      DATA t688 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t688.
      DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t689.
      DATA(t690) = abap_true.
      IF t690 = abap_true.
        DATA(t691) = |OpenABAP|.
        DATA(t692) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t692->has = abap_true.
        t692->value = t691.
        t689 = t692.
      ELSE.
        DATA t693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t693.
        t689 = t693.
      ENDIF.
      t688 = NEW zcl_lnt_iver_options( i_also = t689 ).
      t686 = t688.
    ELSE.
      DATA t694 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t694.
      t686 = t694.
    ENDIF.
    t641 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t642 i_first = t648 i_opts = t686 ).
    result = t641.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d539_1b20166f6dfe.
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
