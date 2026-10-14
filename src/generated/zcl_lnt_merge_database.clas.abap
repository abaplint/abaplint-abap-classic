* TS: src/abap/2_statements/statements/merge_database.ts:9:1 MergeDatabase
CLASS zcl_lnt_merge_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_merge_database IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
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
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |AS|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t21 i_rest = t22 ).
    t10 = t19.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t10.
      t9->oval = t23.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt_prio( i_first = t9 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t8.
      t7->oval = t24.
    ENDIF.
    t6 = t7.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t2 = t27.
    t1 = t2.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t35 = zcl_lnt_st_combi_module=>tok( i_t = t36 ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t35.
      t34->oval = t37.
    ENDIF.
    t33 = t34.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = |SELECT|.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t41 = t42.
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t46.
    DATA(t47) = abap_true.
    IF t47 = abap_true.
      DATA(t48) = abap_false.
      DATA(t49) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t49->has = abap_true.
      t49->value = t48.
      t46 = t49.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t50.
      t46 = t50.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t51.
    DATA(t52) = abap_true.
    IF t52 = abap_true.
      DATA(t53) = abap_false.
      DATA(t54) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t54->has = abap_true.
      t54->value = t53.
      t51 = t54.
    ELSE.
      DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t55.
      t51 = t55.
    ENDIF.
    t45 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t46 i_allow_order_by = t51 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t45.
      t44->oval = t56.
    ENDIF.
    APPEND t44 TO t43->items.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t59 = zcl_lnt_st_combi_module=>tok( i_t = t60 ).
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t59.
      t58->oval = t61.
    ENDIF.
    APPEND t58 TO t57->items.
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |AS|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = t68.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t73 = t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t76) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t66 = t75.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t79 TYPE REF TO object.
      t79 = t66.
      t65->oval = t79.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>opt_prio( i_first = t65 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t80 TYPE REF TO object.
      t80 = t64.
      t63->oval = t80.
    ENDIF.
    APPEND t63 TO t62->items.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t38 ).
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t83 i_rest = t84 ).
    t32 = t81.
    t31 = t32.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t90) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t89 = zcl_lnt_st_combi_module=>tok( i_t = t90 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t89.
      t88->oval = t91.
    ENDIF.
    t87 = t88.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t93->cval = t94.
    ENDIF.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t95 = t96.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = |AS|.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    APPEND t98 TO t97->items.
    DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    APPEND t101 TO t100->items.
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = |DECLARE CLIENT|.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = t110.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t112->cval = t113.
    ENDIF.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    t114 = t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t111 ).
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t114 ).
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t118 i_rest = t119 ).
    t107 = t116.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t107.
      t106->oval = t120.
    ENDIF.
    t105 = zcl_lnt_st_combi_module=>opt_prio( i_first = t106 ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t121 TYPE REF TO object.
      t121 = t105.
      t104->oval = t121.
    ENDIF.
    APPEND t104 TO t103->items.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t124 i_rest = t125 ).
    t86 = t122.
    t85 = t86.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = |AS|.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
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
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t148 TYPE REF TO object.
      t148 = t135.
      t134->oval = t148.
    ENDIF.
    t133 = zcl_lnt_st_combi_module=>opt_prio( i_first = t134 ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t149 TYPE REF TO object.
      t149 = t133.
      t132->oval = t149.
    ENDIF.
    t131 = t132.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    t150 = t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t128 ).
    DATA(t154) = CAST zlnt_runtime_dyna_a429568d5be8( t131 ).
    DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    t152 = zcl_lnt_st_combi_module=>seq( i_first = t153 i_second = t154 i_rest = t155 ).
    t127 = t152.
    t126 = t127.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t160) = |USING|.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = t160.
    t158 = t159.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = CAST zif_lnt_statement_runnable( t31 ).
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t166.
      t165->oval = t167.
    ENDIF.
    t164 = t165.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = CAST zif_lnt_statement_runnable( t85 ).
    IF t170 IS BOUND.
      CREATE OBJECT t169.
      t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t171 TYPE REF TO object.
      t171 = t170.
      t169->oval = t171.
    ENDIF.
    t168 = t169.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    t172 = t173.
    DATA(t174) = CAST zlnt_runtime_arra_c22708faf2e3( t172 ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = CAST zif_lnt_statement_runnable( t126 ).
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t177 TYPE REF TO object.
      t177 = t176.
      t175->oval = t177.
    ENDIF.
    APPEND t175 TO t174->items.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t164 ).
    DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t168 ).
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t172 ).
    t178 = zcl_lnt_st_combi_module=>alt_prio( i_first = t179 i_second = t180 i_rest = t181 ).
    t163 = t178.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t182 TYPE REF TO object.
      t182 = t163.
      t162->oval = t182.
    ENDIF.
    t161 = t162.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t184.
    t183 = t184.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t158 ).
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t161 ).
    DATA(t188) = CAST zlnt_runtime_arra_c22708faf2e3( t183 ).
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t187 i_rest = t188 ).
    t157 = t185.
    t156 = t157.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t193) = |ON|.
    CREATE OBJECT t192.
    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t192->sval = t193.
    t191 = t192.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t195->cval = t196.
    ENDIF.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t198.
    t197 = t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t201) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t197 ).
    t199 = zcl_lnt_st_combi_module=>seq( i_first = t200 i_second = t201 i_rest = t202 ).
    t190 = t199.
    t189 = t190.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t206->cval = t207.
    ENDIF.
    t205 = t206.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = |=|.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = t210.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    t211 = t212.
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t211 ).
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d291_77feaa8efd76 ).
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    APPEND t214 TO t213->items.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t217) = CAST zlnt_runtime_dyna_a429568d5be8( t205 ).
    DATA(t218) = CAST zlnt_runtime_dyna_a429568d5be8( t208 ).
    DATA(t219) = CAST zlnt_runtime_arra_c22708faf2e3( t211 ).
    t216 = zcl_lnt_st_combi_module=>seq( i_first = t217 i_second = t218 i_rest = t219 ).
    t204 = t216.
    t203 = t204.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA(t224) = CAST zif_lnt_statement_runnable( t203 ).
    IF t224 IS BOUND.
      CREATE OBJECT t223.
      t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t225 TYPE REF TO object.
      t225 = t224.
      t223->oval = t225.
    ENDIF.
    t222 = t223.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = |,|.
    CREATE OBJECT t232.
    t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t232->sval = t233.
    t231 = t232.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = CAST zif_lnt_statement_runnable( t203 ).
    IF t236 IS BOUND.
      CREATE OBJECT t235.
      t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t237 TYPE REF TO object.
      t237 = t236.
      t235->oval = t237.
    ENDIF.
    t234 = t235.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t239.
    t238 = t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t241) = CAST zlnt_runtime_dyna_a429568d5be8( t231 ).
    DATA(t242) = CAST zlnt_runtime_dyna_a429568d5be8( t234 ).
    DATA(t243) = CAST zlnt_runtime_arra_c22708faf2e3( t238 ).
    t240 = zcl_lnt_st_combi_module=>seq( i_first = t241 i_second = t242 i_rest = t243 ).
    t230 = t240.
    IF t230 IS BOUND.
      CREATE OBJECT t229.
      t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t244 TYPE REF TO object.
      t244 = t230.
      t229->oval = t244.
    ENDIF.
    t228 = zcl_lnt_st_combi_module=>star_prio( i_first = t229 ).
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t245 TYPE REF TO object.
      t245 = t228.
      t227->oval = t245.
    ENDIF.
    t226 = t227.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t247.
    t246 = t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t249) = CAST zlnt_runtime_dyna_a429568d5be8( t222 ).
    DATA(t250) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
    t248 = zcl_lnt_st_combi_module=>seq( i_first = t249 i_second = t250 i_rest = t251 ).
    t221 = t248.
    t220 = t221.
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t252.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t256) = |DELETE|.
    CREATE OBJECT t255.
    t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t255->sval = t256.
    t254 = t255.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t262) = |UPDATE|.
    CREATE OBJECT t261.
    t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t261->sval = t262.
    t260 = t261.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t268) = |ALL|.
    CREATE OBJECT t267.
    t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t267->sval = t268.
    t266 = t267.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t274) = |SET|.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = CAST zif_lnt_statement_runnable( t220 ).
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t278 TYPE REF TO object.
      t278 = t277.
      t276->oval = t278.
    ENDIF.
    t275 = t276.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t280.
    t279 = t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t282) = CAST zlnt_runtime_dyna_a429568d5be8( t272 ).
    DATA(t283) = CAST zlnt_runtime_dyna_a429568d5be8( t275 ).
    DATA(t284) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    t281 = zcl_lnt_st_combi_module=>seq( i_first = t282 i_second = t283 i_rest = t284 ).
    t271 = t281.
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t285 TYPE REF TO object.
      t285 = t271.
      t270->oval = t285.
    ENDIF.
    t269 = t270.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t287.
    t286 = t287.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t289) = CAST zlnt_runtime_dyna_a429568d5be8( t266 ).
    DATA(t290) = CAST zlnt_runtime_dyna_a429568d5be8( t269 ).
    DATA(t291) = CAST zlnt_runtime_arra_c22708faf2e3( t286 ).
    t288 = zcl_lnt_st_combi_module=>alt_prio( i_first = t289 i_second = t290 i_rest = t291 ).
    t265 = t288.
    IF t265 IS BOUND.
      CREATE OBJECT t264.
      t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t292 TYPE REF TO object.
      t292 = t265.
      t264->oval = t292.
    ENDIF.
    t263 = t264.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t294.
    t293 = t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t296) = CAST zlnt_runtime_dyna_a429568d5be8( t260 ).
    DATA(t297) = CAST zlnt_runtime_dyna_a429568d5be8( t263 ).
    DATA(t298) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
    t295 = zcl_lnt_st_combi_module=>seq( i_first = t296 i_second = t297 i_rest = t298 ).
    t259 = t295.
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t299 TYPE REF TO object.
      t299 = t259.
      t258->oval = t299.
    ENDIF.
    t257 = t258.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t301.
    t300 = t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t303) = CAST zlnt_runtime_dyna_a429568d5be8( t254 ).
    DATA(t304) = CAST zlnt_runtime_dyna_a429568d5be8( t257 ).
    DATA(t305) = CAST zlnt_runtime_arra_c22708faf2e3( t300 ).
    t302 = zcl_lnt_st_combi_module=>alt_prio( i_first = t303 i_second = t304 i_rest = t305 ).
    t253 = t302.
    t252 = t253.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t310) = |WHEN MATCHED|.
    CREATE OBJECT t309.
    t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t309->sval = t310.
    t308 = t309.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t313.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t314.
    DATA t315 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t318) = |AND|.
    CREATE OBJECT t317.
    t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t317->sval = t318.
    t316 = t317.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t321 IS BOUND.
      CREATE OBJECT t320.
      t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t320->cval = t321.
    ENDIF.
    t319 = t320.
    DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t323.
    t322 = t323.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t325) = CAST zlnt_runtime_dyna_a429568d5be8( t316 ).
    DATA(t326) = CAST zlnt_runtime_dyna_a429568d5be8( t319 ).
    DATA(t327) = CAST zlnt_runtime_arra_c22708faf2e3( t322 ).
    t324 = zcl_lnt_st_combi_module=>seq( i_first = t325 i_second = t326 i_rest = t327 ).
    t315 = t324.
    IF t315 IS BOUND.
      CREATE OBJECT t314.
      t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t328 TYPE REF TO object.
      t328 = t315.
      t314->oval = t328.
    ENDIF.
    t313 = zcl_lnt_st_combi_module=>opt_prio( i_first = t314 ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t329 TYPE REF TO object.
      t329 = t313.
      t312->oval = t329.
    ENDIF.
    t311 = t312.
    DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t331.
    t330 = t331.
    DATA(t332) = CAST zlnt_runtime_arra_c22708faf2e3( t330 ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t334) = |THEN|.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = t334.
    APPEND t333 TO t332->items.
    DATA(t335) = CAST zlnt_runtime_arra_c22708faf2e3( t330 ).
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA(t337) = CAST zif_lnt_statement_runnable( t252 ).
    IF t337 IS BOUND.
      CREATE OBJECT t336.
      t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t338 TYPE REF TO object.
      t338 = t337.
      t336->oval = t338.
    ENDIF.
    APPEND t336 TO t335->items.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t340) = CAST zlnt_runtime_dyna_a429568d5be8( t308 ).
    DATA(t341) = CAST zlnt_runtime_dyna_a429568d5be8( t311 ).
    DATA(t342) = CAST zlnt_runtime_arra_c22708faf2e3( t330 ).
    t339 = zcl_lnt_st_combi_module=>seq( i_first = t340 i_second = t341 i_rest = t342 ).
    t307 = t339.
    t306 = t307.
    DATA t343 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t343.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t348) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t347 = zcl_lnt_st_combi_module=>tok( i_t = t348 ).
    IF t347 IS BOUND.
      CREATE OBJECT t346.
      t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t349 TYPE REF TO object.
      t349 = t347.
      t346->oval = t349.
    ENDIF.
    t345 = t346.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA(t352) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t352 IS BOUND.
      CREATE OBJECT t351.
      t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t351->cval = t352.
    ENDIF.
    t350 = t351.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t354.
    t353 = t354.
    DATA(t355) = CAST zlnt_runtime_arra_c22708faf2e3( t353 ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t357.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t362) = |,|.
    CREATE OBJECT t361.
    t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t361->sval = t362.
    t360 = t361.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA(t365) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t365 IS BOUND.
      CREATE OBJECT t364.
      t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t364->cval = t365.
    ENDIF.
    t363 = t364.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t367.
    t366 = t367.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t369) = CAST zlnt_runtime_dyna_a429568d5be8( t360 ).
    DATA(t370) = CAST zlnt_runtime_dyna_a429568d5be8( t363 ).
    DATA(t371) = CAST zlnt_runtime_arra_c22708faf2e3( t366 ).
    t368 = zcl_lnt_st_combi_module=>seq( i_first = t369 i_second = t370 i_rest = t371 ).
    t359 = t368.
    IF t359 IS BOUND.
      CREATE OBJECT t358.
      t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t372 TYPE REF TO object.
      t372 = t359.
      t358->oval = t372.
    ENDIF.
    t357 = zcl_lnt_st_combi_module=>star_prio( i_first = t358 ).
    IF t357 IS BOUND.
      CREATE OBJECT t356.
      t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t373 TYPE REF TO object.
      t373 = t357.
      t356->oval = t373.
    ENDIF.
    APPEND t356 TO t355->items.
    DATA(t374) = CAST zlnt_runtime_arra_c22708faf2e3( t353 ).
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t377) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t376 = zcl_lnt_st_combi_module=>tok( i_t = t377 ).
    IF t376 IS BOUND.
      CREATE OBJECT t375.
      t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t378 TYPE REF TO object.
      t378 = t376.
      t375->oval = t378.
    ENDIF.
    APPEND t375 TO t374->items.
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t380) = CAST zlnt_runtime_dyna_a429568d5be8( t345 ).
    DATA(t381) = CAST zlnt_runtime_dyna_a429568d5be8( t350 ).
    DATA(t382) = CAST zlnt_runtime_arra_c22708faf2e3( t353 ).
    t379 = zcl_lnt_st_combi_module=>seq( i_first = t380 i_second = t381 i_rest = t382 ).
    t344 = t379.
    t343 = t344.
    DATA t383 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t383.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t388) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t387 = zcl_lnt_st_combi_module=>tok( i_t = t388 ).
    IF t387 IS BOUND.
      CREATE OBJECT t386.
      t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t389 TYPE REF TO object.
      t389 = t387.
      t386->oval = t389.
    ENDIF.
    t385 = t386.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d291_77feaa8efd76 ).
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t391->cval = t392.
    ENDIF.
    t390 = t391.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t394.
    t393 = t394.
    DATA(t395) = CAST zlnt_runtime_arra_c22708faf2e3( t393 ).
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t399.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t402) = |,|.
    CREATE OBJECT t401.
    t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t401->sval = t402.
    t400 = t401.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t404.
    DATA(t405) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d291_77feaa8efd76 ).
    IF t405 IS BOUND.
      CREATE OBJECT t404.
      t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t404->cval = t405.
    ENDIF.
    t403 = t404.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t407.
    t406 = t407.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t409) = CAST zlnt_runtime_dyna_a429568d5be8( t400 ).
    DATA(t410) = CAST zlnt_runtime_dyna_a429568d5be8( t403 ).
    DATA(t411) = CAST zlnt_runtime_arra_c22708faf2e3( t406 ).
    t408 = zcl_lnt_st_combi_module=>seq( i_first = t409 i_second = t410 i_rest = t411 ).
    t399 = t408.
    IF t399 IS BOUND.
      CREATE OBJECT t398.
      t398->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t412 TYPE REF TO object.
      t412 = t399.
      t398->oval = t412.
    ENDIF.
    t397 = zcl_lnt_st_combi_module=>star_prio( i_first = t398 ).
    IF t397 IS BOUND.
      CREATE OBJECT t396.
      t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t413 TYPE REF TO object.
      t413 = t397.
      t396->oval = t413.
    ENDIF.
    APPEND t396 TO t395->items.
    DATA(t414) = CAST zlnt_runtime_arra_c22708faf2e3( t393 ).
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t417) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t416 = zcl_lnt_st_combi_module=>tok( i_t = t417 ).
    IF t416 IS BOUND.
      CREATE OBJECT t415.
      t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t418 TYPE REF TO object.
      t418 = t416.
      t415->oval = t418.
    ENDIF.
    APPEND t415 TO t414->items.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t420) = CAST zlnt_runtime_dyna_a429568d5be8( t385 ).
    DATA(t421) = CAST zlnt_runtime_dyna_a429568d5be8( t390 ).
    DATA(t422) = CAST zlnt_runtime_arra_c22708faf2e3( t393 ).
    t419 = zcl_lnt_st_combi_module=>seq( i_first = t420 i_second = t421 i_rest = t422 ).
    t384 = t419.
    t383 = t384.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t423.
    DATA t424 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t424.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t427) = |INSERT|.
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
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t433) = |ALL|.
    CREATE OBJECT t432.
    t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t432->sval = t433.
    t431 = t432.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA t436 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t436.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA(t439) = CAST zif_lnt_statement_runnable( t343 ).
    IF t439 IS BOUND.
      CREATE OBJECT t438.
      t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t440 TYPE REF TO object.
      t440 = t439.
      t438->oval = t440.
    ENDIF.
    t437 = t438.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t443) = |VALUES|.
    CREATE OBJECT t442.
    t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t442->sval = t443.
    t441 = t442.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t445 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t445.
    t444 = t445.
    DATA(t446) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = CAST zif_lnt_statement_runnable( t383 ).
    IF t448 IS BOUND.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t449 TYPE REF TO object.
      t449 = t448.
      t447->oval = t449.
    ENDIF.
    APPEND t447 TO t446->items.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t451) = CAST zlnt_runtime_dyna_a429568d5be8( t437 ).
    DATA(t452) = CAST zlnt_runtime_dyna_a429568d5be8( t441 ).
    DATA(t453) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    t450 = zcl_lnt_st_combi_module=>seq( i_first = t451 i_second = t452 i_rest = t453 ).
    t436 = t450.
    IF t436 IS BOUND.
      CREATE OBJECT t435.
      t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t454 TYPE REF TO object.
      t454 = t436.
      t435->oval = t454.
    ENDIF.
    t434 = t435.
    DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t456 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t456.
    t455 = t456.
    DATA t457 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t458) = CAST zlnt_runtime_dyna_a429568d5be8( t431 ).
    DATA(t459) = CAST zlnt_runtime_dyna_a429568d5be8( t434 ).
    DATA(t460) = CAST zlnt_runtime_arra_c22708faf2e3( t455 ).
    t457 = zcl_lnt_st_combi_module=>alt_prio( i_first = t458 i_second = t459 i_rest = t460 ).
    t430 = t457.
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t461 TYPE REF TO object.
      t461 = t430.
      t429->oval = t461.
    ENDIF.
    t428 = t429.
    DATA t462 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t463 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t463.
    t462 = t463.
    DATA t464 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t465) = CAST zlnt_runtime_dyna_a429568d5be8( t425 ).
    DATA(t466) = CAST zlnt_runtime_dyna_a429568d5be8( t428 ).
    DATA(t467) = CAST zlnt_runtime_arra_c22708faf2e3( t462 ).
    t464 = zcl_lnt_st_combi_module=>seq( i_first = t465 i_second = t466 i_rest = t467 ).
    t424 = t464.
    t423 = t424.
    DATA t468 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t468.
    DATA t469 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t472) = |WHEN NOT MATCHED|.
    CREATE OBJECT t471.
    t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t471->sval = t472.
    t470 = t471.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    DATA t475 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t475.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA t477 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t480) = |AND|.
    CREATE OBJECT t479.
    t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t479->sval = t480.
    t478 = t479.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t481.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA(t483) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t483 IS BOUND.
      CREATE OBJECT t482.
      t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t482->cval = t483.
    ENDIF.
    t481 = t482.
    DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t485.
    t484 = t485.
    DATA t486 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t487) = CAST zlnt_runtime_dyna_a429568d5be8( t478 ).
    DATA(t488) = CAST zlnt_runtime_dyna_a429568d5be8( t481 ).
    DATA(t489) = CAST zlnt_runtime_arra_c22708faf2e3( t484 ).
    t486 = zcl_lnt_st_combi_module=>seq( i_first = t487 i_second = t488 i_rest = t489 ).
    t477 = t486.
    IF t477 IS BOUND.
      CREATE OBJECT t476.
      t476->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t490 TYPE REF TO object.
      t490 = t477.
      t476->oval = t490.
    ENDIF.
    t475 = zcl_lnt_st_combi_module=>opt_prio( i_first = t476 ).
    IF t475 IS BOUND.
      CREATE OBJECT t474.
      t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t491 TYPE REF TO object.
      t491 = t475.
      t474->oval = t491.
    ENDIF.
    t473 = t474.
    DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t493.
    t492 = t493.
    DATA(t494) = CAST zlnt_runtime_arra_c22708faf2e3( t492 ).
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t496) = |THEN|.
    CREATE OBJECT t495.
    t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t495->sval = t496.
    APPEND t495 TO t494->items.
    DATA(t497) = CAST zlnt_runtime_arra_c22708faf2e3( t492 ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA(t499) = CAST zif_lnt_statement_runnable( t423 ).
    IF t499 IS BOUND.
      CREATE OBJECT t498.
      t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t500 TYPE REF TO object.
      t500 = t499.
      t498->oval = t500.
    ENDIF.
    APPEND t498 TO t497->items.
    DATA t501 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t502) = CAST zlnt_runtime_dyna_a429568d5be8( t470 ).
    DATA(t503) = CAST zlnt_runtime_dyna_a429568d5be8( t473 ).
    DATA(t504) = CAST zlnt_runtime_arra_c22708faf2e3( t492 ).
    t501 = zcl_lnt_st_combi_module=>seq( i_first = t502 i_second = t503 i_rest = t504 ).
    t469 = t501.
    t468 = t469.
    DATA t505 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t505.
    DATA t506 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA t509 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t509.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA(t512) = CAST zif_lnt_statement_runnable( t306 ).
    IF t512 IS BOUND.
      CREATE OBJECT t511.
      t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t513 TYPE REF TO object.
      t513 = t512.
      t511->oval = t513.
    ENDIF.
    t510 = t511.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t515.
    DATA t516 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t516.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t517.
    DATA(t518) = CAST zif_lnt_statement_runnable( t468 ).
    IF t518 IS BOUND.
      CREATE OBJECT t517.
      t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t519 TYPE REF TO object.
      t519 = t518.
      t517->oval = t519.
    ENDIF.
    t516 = zcl_lnt_st_combi_module=>opt_prio( i_first = t517 ).
    IF t516 IS BOUND.
      CREATE OBJECT t515.
      t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t520 TYPE REF TO object.
      t520 = t516.
      t515->oval = t520.
    ENDIF.
    t514 = t515.
    DATA t521 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t522 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t522.
    t521 = t522.
    DATA t523 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t524) = CAST zlnt_runtime_dyna_a429568d5be8( t510 ).
    DATA(t525) = CAST zlnt_runtime_dyna_a429568d5be8( t514 ).
    DATA(t526) = CAST zlnt_runtime_arra_c22708faf2e3( t521 ).
    t523 = zcl_lnt_st_combi_module=>seq( i_first = t524 i_second = t525 i_rest = t526 ).
    t509 = t523.
    IF t509 IS BOUND.
      CREATE OBJECT t508.
      t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t527 TYPE REF TO object.
      t527 = t509.
      t508->oval = t527.
    ENDIF.
    t507 = t508.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t529.
    DATA(t530) = CAST zif_lnt_statement_runnable( t468 ).
    IF t530 IS BOUND.
      CREATE OBJECT t529.
      t529->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t531 TYPE REF TO object.
      t531 = t530.
      t529->oval = t531.
    ENDIF.
    t528 = t529.
    DATA t532 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t533.
    t532 = t533.
    DATA t534 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t535) = CAST zlnt_runtime_dyna_a429568d5be8( t507 ).
    DATA(t536) = CAST zlnt_runtime_dyna_a429568d5be8( t528 ).
    DATA(t537) = CAST zlnt_runtime_arra_c22708faf2e3( t532 ).
    t534 = zcl_lnt_st_combi_module=>alt_prio( i_first = t535 i_second = t536 i_rest = t537 ).
    t506 = t534.
    t505 = t506.
    DATA t538 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t538.
    DATA t539 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t539.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t542) = |OPTIONS|.
    CREATE OBJECT t541.
    t541->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t541->sval = t542.
    t540 = t541.
    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t543.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    DATA t545 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t545.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA(t548) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    IF t548 IS BOUND.
      CREATE OBJECT t547.
      t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t547->cval = t548.
    ENDIF.
    t546 = t547.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t551 IS BOUND.
      CREATE OBJECT t550.
      t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t550->cval = t551.
    ENDIF.
    t549 = t550.
    DATA t552 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t553 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t553.
    t552 = t553.
    DATA(t554) = CAST zlnt_runtime_arra_c22708faf2e3( t552 ).
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t555.
    DATA t556 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t556.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA(t559) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t559 IS BOUND.
      CREATE OBJECT t558.
      t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t558->cval = t559.
    ENDIF.
    t557 = t558.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t560.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    DATA(t562) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    IF t562 IS BOUND.
      CREATE OBJECT t561.
      t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t561->cval = t562.
    ENDIF.
    t560 = t561.
    DATA t563 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t564 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t564.
    t563 = t564.
    DATA t565 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t566) = CAST zlnt_runtime_dyna_a429568d5be8( t557 ).
    DATA(t567) = CAST zlnt_runtime_dyna_a429568d5be8( t560 ).
    DATA(t568) = CAST zlnt_runtime_arra_c22708faf2e3( t563 ).
    t565 = zcl_lnt_st_combi_module=>seq( i_first = t566 i_second = t567 i_rest = t568 ).
    t556 = t565.
    IF t556 IS BOUND.
      CREATE OBJECT t555.
      t555->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t569 TYPE REF TO object.
      t569 = t556.
      t555->oval = t569.
    ENDIF.
    APPEND t555 TO t554->items.
    DATA(t570) = CAST zlnt_runtime_arra_c22708faf2e3( t552 ).
    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t571.
    DATA t572 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t572.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t574.
    DATA(t575) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    IF t575 IS BOUND.
      CREATE OBJECT t574.
      t574->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t574->cval = t575.
    ENDIF.
    t573 = t574.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    DATA(t578) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t578 IS BOUND.
      CREATE OBJECT t577.
      t577->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t577->cval = t578.
    ENDIF.
    t576 = t577.
    DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t580.
    t579 = t580.
    DATA t581 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t582) = CAST zlnt_runtime_dyna_a429568d5be8( t573 ).
    DATA(t583) = CAST zlnt_runtime_dyna_a429568d5be8( t576 ).
    DATA(t584) = CAST zlnt_runtime_arra_c22708faf2e3( t579 ).
    t581 = zcl_lnt_st_combi_module=>seq( i_first = t582 i_second = t583 i_rest = t584 ).
    t572 = t581.
    IF t572 IS BOUND.
      CREATE OBJECT t571.
      t571->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t585 TYPE REF TO object.
      t585 = t572.
      t571->oval = t585.
    ENDIF.
    APPEND t571 TO t570->items.
    DATA t586 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t587) = CAST zlnt_runtime_dyna_a429568d5be8( t546 ).
    DATA(t588) = CAST zlnt_runtime_dyna_a429568d5be8( t549 ).
    DATA(t589) = CAST zlnt_runtime_arra_c22708faf2e3( t552 ).
    t586 = zcl_lnt_st_combi_module=>alt_prio( i_first = t587 i_second = t588 i_rest = t589 ).
    t545 = t586.
    IF t545 IS BOUND.
      CREATE OBJECT t544.
      t544->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t590 TYPE REF TO object.
      t590 = t545.
      t544->oval = t590.
    ENDIF.
    t543 = t544.
    DATA t591 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t592 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t592.
    t591 = t592.
    DATA t593 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t594) = CAST zlnt_runtime_dyna_a429568d5be8( t540 ).
    DATA(t595) = CAST zlnt_runtime_dyna_a429568d5be8( t543 ).
    DATA(t596) = CAST zlnt_runtime_arra_c22708faf2e3( t591 ).
    t593 = zcl_lnt_st_combi_module=>seq( i_first = t594 i_second = t595 i_rest = t596 ).
    t539 = t593.
    t538 = t539.
    DATA t597 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t597.
    DATA t598 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA(t600) = CAST zif_lnt_statement_runnable( t538 ).
    IF t600 IS BOUND.
      CREATE OBJECT t599.
      t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t601 TYPE REF TO object.
      t601 = t600.
      t599->oval = t601.
    ENDIF.
    t598 = zcl_lnt_st_combi_module=>opt_prio( i_first = t599 ).
    t597 = t598.
    DATA t602 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t602.
    DATA t603 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t603.
    DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t606) = |INTO|.
    CREATE OBJECT t605.
    t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t605->sval = t606.
    t604 = t605.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t607.
    DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t608.
    DATA(t609) = CAST zif_lnt_statement_runnable( t1 ).
    IF t609 IS BOUND.
      CREATE OBJECT t608.
      t608->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t610 TYPE REF TO object.
      t610 = t609.
      t608->oval = t610.
    ENDIF.
    t607 = t608.
    DATA t611 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t612 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t612.
    t611 = t612.
    DATA(t613) = CAST zlnt_runtime_arra_c22708faf2e3( t611 ).
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t614.
    DATA t615 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t615.
    DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t616.
    DATA(t617) = CAST zif_lnt_statement_runnable( t156 ).
    IF t617 IS BOUND.
      CREATE OBJECT t616.
      t616->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t618 TYPE REF TO object.
      t618 = t617.
      t616->oval = t618.
    ENDIF.
    t615 = zcl_lnt_st_combi_module=>opt_prio( i_first = t616 ).
    IF t615 IS BOUND.
      CREATE OBJECT t614.
      t614->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t619 TYPE REF TO object.
      t619 = t615.
      t614->oval = t619.
    ENDIF.
    APPEND t614 TO t613->items.
    DATA(t620) = CAST zlnt_runtime_arra_c22708faf2e3( t611 ).
    DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t621.
    DATA t622 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t622.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t623.
    DATA(t624) = CAST zif_lnt_statement_runnable( t189 ).
    IF t624 IS BOUND.
      CREATE OBJECT t623.
      t623->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t625 TYPE REF TO object.
      t625 = t624.
      t623->oval = t625.
    ENDIF.
    t622 = zcl_lnt_st_combi_module=>opt_prio( i_first = t623 ).
    IF t622 IS BOUND.
      CREATE OBJECT t621.
      t621->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t626 TYPE REF TO object.
      t626 = t622.
      t621->oval = t626.
    ENDIF.
    APPEND t621 TO t620->items.
    DATA(t627) = CAST zlnt_runtime_arra_c22708faf2e3( t611 ).
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    DATA t629 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t629.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t630.
    DATA(t631) = CAST zif_lnt_statement_runnable( t505 ).
    IF t631 IS BOUND.
      CREATE OBJECT t630.
      t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t632 TYPE REF TO object.
      t632 = t631.
      t630->oval = t632.
    ENDIF.
    t629 = zcl_lnt_st_combi_module=>opt_prio( i_first = t630 ).
    IF t629 IS BOUND.
      CREATE OBJECT t628.
      t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t633 TYPE REF TO object.
      t633 = t629.
      t628->oval = t633.
    ENDIF.
    APPEND t628 TO t627->items.
    DATA(t634) = CAST zlnt_runtime_arra_c22708faf2e3( t611 ).
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t635.
    DATA(t636) = CAST zif_lnt_statement_runnable( t597 ).
    IF t636 IS BOUND.
      CREATE OBJECT t635.
      t635->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t637 TYPE REF TO object.
      t637 = t636.
      t635->oval = t637.
    ENDIF.
    APPEND t635 TO t634->items.
    DATA t638 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t639) = CAST zlnt_runtime_dyna_a429568d5be8( t604 ).
    DATA(t640) = CAST zlnt_runtime_dyna_a429568d5be8( t607 ).
    DATA(t641) = CAST zlnt_runtime_arra_c22708faf2e3( t611 ).
    t638 = zcl_lnt_st_combi_module=>seq( i_first = t639 i_second = t640 i_rest = t641 ).
    t603 = t638.
    t602 = t603.
    DATA t642 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t642.
    DATA t643 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t643.
    DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t644.
    DATA t645 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t645.
    DATA t646 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t646.
    DATA t647 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t647.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t647 = zcl_lnt_version_module=>release_b8cd.
    DATA(t648) = |v917|.
    t646 = t647->get( p0 = t648 ).
    t645 = t646.
    IF t645 IS BOUND.
      CREATE OBJECT t644.
      t644->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t649 TYPE REF TO object.
      t649 = t645.
      t644->oval = t649.
    ENDIF.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t650.
    DATA t651 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t651.
    DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t654) = |MERGE|.
    CREATE OBJECT t653.
    t653->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t653->sval = t654.
    t652 = t653.
    DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t655.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    DATA t657 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t657.
    DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t658.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    DATA(t660) = CAST zif_lnt_statement_runnable( t602 ).
    IF t660 IS BOUND.
      CREATE OBJECT t659.
      t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t661 TYPE REF TO object.
      t661 = t660.
      t659->oval = t661.
    ENDIF.
    t658 = t659.
    DATA t662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t662.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t663.
    DATA(t664) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t664 IS BOUND.
      CREATE OBJECT t663.
      t663->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t663->cval = t664.
    ENDIF.
    t662 = t663.
    DATA t665 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t666 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t666.
    t665 = t666.
    DATA t667 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t668) = CAST zlnt_runtime_dyna_a429568d5be8( t658 ).
    DATA(t669) = CAST zlnt_runtime_dyna_a429568d5be8( t662 ).
    DATA(t670) = CAST zlnt_runtime_arra_c22708faf2e3( t665 ).
    t667 = zcl_lnt_st_combi_module=>alt( i_first = t668 i_second = t669 i_rest = t670 ).
    t657 = t667.
    IF t657 IS BOUND.
      CREATE OBJECT t656.
      t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t671 TYPE REF TO object.
      t671 = t657.
      t656->oval = t671.
    ENDIF.
    t655 = t656.
    DATA t672 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t673 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t673.
    t672 = t673.
    DATA t674 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t675) = CAST zlnt_runtime_dyna_a429568d5be8( t652 ).
    DATA(t676) = CAST zlnt_runtime_dyna_a429568d5be8( t655 ).
    DATA(t677) = CAST zlnt_runtime_arra_c22708faf2e3( t672 ).
    t674 = zcl_lnt_st_combi_module=>seq( i_first = t675 i_second = t676 i_rest = t677 ).
    t651 = t674.
    IF t651 IS BOUND.
      CREATE OBJECT t650.
      t650->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t678 TYPE REF TO object.
      t678 = t651.
      t650->oval = t678.
    ENDIF.
    DATA t679 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t679.
    t643 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t644 i_first = t650 i_opts = t679 ).
    t642 = t643.
    DATA t680 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t680.
    DATA(t681) = |KeyUser|.
    DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t682.
    DATA(t683) = CAST zif_lnt_statement_runnable( t642 ).
    IF t683 IS BOUND.
      CREATE OBJECT t682.
      t682->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t684 TYPE REF TO object.
      t684 = t683.
      t682->oval = t684.
    ENDIF.
    t680 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t681 i_first = t682 ).
    result = t680.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d534_4a06e0073eb0.
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
