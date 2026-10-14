* TS: src/abap/2_statements/statements/insert_database.ts:8:1 InsertDatabase
CLASS zcl_lnt_st_insert_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_insert_database IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t15 = zcl_lnt_st_combi_module=>tok( i_t = t16 ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t17 TYPE REF TO object.
      t17 = t15.
      t14->oval = t17.
    ENDIF.
    APPEND t14 TO t13->items.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t19 i_second = t20 i_rest = t21 ).
    t2 = t18.
    t1 = t2.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = |FROM|.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = |TABLE|.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29 = zcl_lnt_st_combi_module=>opt( i_first = t30 ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t29.
      t28->oval = t32.
    ENDIF.
    t27 = t28.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    t33 = t34.
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    APPEND t36 TO t35->items.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d314_757c7fdfaec1 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>opt_prio( i_first = t41 ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t43 TYPE REF TO object.
      t43 = t40.
      t39->oval = t43.
    ENDIF.
    APPEND t39 TO t38->items.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795 ).
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt_prio( i_first = t47 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t46.
      t45->oval = t49.
    ENDIF.
    APPEND t45 TO t44->items.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    t50 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t52 i_rest = t53 ).
    t23 = t50.
    t22 = t23.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = |FROM|.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zif_lnt_statement_runnable( t1 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t62 TYPE REF TO object.
      t62 = t61.
      t60->oval = t62.
    ENDIF.
    t59 = t60.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t63 = t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t63 ).
    t65 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t67 i_rest = t68 ).
    t55 = t65.
    t54 = t55.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = CAST zif_lnt_statement_runnable( t22 ).
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t74 TYPE REF TO object.
      t74 = t73.
      t72->oval = t74.
    ENDIF.
    t71 = t72.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zif_lnt_statement_runnable( t54 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t78 TYPE REF TO object.
      t78 = t77.
      t76->oval = t78.
    ENDIF.
    t75 = t76.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t79 = t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t71 ).
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t79 ).
    t81 = zcl_lnt_st_combi_module=>alt( i_first = t82 i_second = t83 i_rest = t84 ).
    t70 = t81.
    t69 = t70.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    t89 = zcl_lnt_st_combi_module=>opt( i_first = t90 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t92 TYPE REF TO object.
      t92 = t89.
      t88->oval = t92.
    ENDIF.
    t87 = t88.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t97 IS BOUND.
      CREATE OBJECT t96.
      t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t96->cval = t97.
    ENDIF.
    t95 = zcl_lnt_st_combi_module=>opt( i_first = t96 ).
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t98 TYPE REF TO object.
      t98 = t95.
      t94->oval = t98.
    ENDIF.
    t93 = t94.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    t99 = t100.
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t99 ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = CAST zif_lnt_statement_runnable( t69 ).
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t103.
      t102->oval = t104.
    ENDIF.
    APPEND t102 TO t101->items.
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t99 ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = |ACCEPTING DUPLICATE KEYS|.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    t107 = zcl_lnt_st_combi_module=>opt( i_first = t108 ).
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t110 TYPE REF TO object.
      t110 = t107.
      t106->oval = t110.
    ENDIF.
    APPEND t106 TO t105->items.
    DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t99 ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a ).
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt_prio( i_first = t114 ).
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t116 TYPE REF TO object.
      t116 = t113.
      t112->oval = t116.
    ENDIF.
    APPEND t112 TO t111->items.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t119) = CAST zlnt_runtime_dyna_a429568d5be8( t93 ).
    DATA(t120) = CAST zlnt_runtime_arra_c22708faf2e3( t99 ).
    t117 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t119 i_rest = t120 ).
    t86 = t117.
    t85 = t86.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    t123 = t124.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = CAST zif_lnt_statement_runnable( t85 ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t133.
      t132->oval = t134.
    ENDIF.
    t131 = t132.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
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
    DATA(t140) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA(t142) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t141->cval = t142.
    ENDIF.
    APPEND t141 TO t140->items.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t131 ).
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t135 ).
    DATA(t146) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    t143 = zcl_lnt_st_combi_module=>alt( i_first = t144 i_second = t145 i_rest = t146 ).
    t130 = t143.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t130.
      t129->oval = t147.
    ENDIF.
    t128 = zcl_lnt_st_combi_module=>opt( i_first = t129 ).
    IF t128 IS BOUND.
      CREATE OBJECT t127.
      t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t148 TYPE REF TO object.
      t148 = t128.
      t127->oval = t148.
    ENDIF.
    t126 = t127.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    t149 = t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t123 ).
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t126 ).
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t153 i_rest = t154 ).
    t122 = t151.
    t121 = t122.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = |INTO|.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t163 = t164.
    DATA(t165) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t168->cval = t169.
    ENDIF.
    t167 = zcl_lnt_st_combi_module=>opt( i_first = t168 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t170 TYPE REF TO object.
      t170 = t167.
      t166->oval = t170.
    ENDIF.
    APPEND t166 TO t165->items.
    DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    t173 = zcl_lnt_st_combi_module=>opt( i_first = t174 ).
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t173.
      t172->oval = t176.
    ENDIF.
    APPEND t172 TO t171->items.
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t179) = |VALUES|.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t179.
    APPEND t178 TO t177->items.
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t181->cval = t182.
    ENDIF.
    APPEND t181 TO t180->items.
    DATA(t183) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d314_757c7fdfaec1 ).
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t186->cval = t187.
    ENDIF.
    t185 = zcl_lnt_st_combi_module=>opt_prio( i_first = t186 ).
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t188 TYPE REF TO object.
      t188 = t185.
      t184->oval = t188.
    ENDIF.
    APPEND t184 TO t183->items.
    DATA(t189) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795 ).
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t192->cval = t193.
    ENDIF.
    t191 = zcl_lnt_st_combi_module=>opt_prio( i_first = t192 ).
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t194 TYPE REF TO object.
      t194 = t191.
      t190->oval = t194.
    ENDIF.
    APPEND t190 TO t189->items.
    DATA(t195) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a ).
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t198->cval = t199.
    ENDIF.
    t197 = zcl_lnt_st_combi_module=>opt_prio( i_first = t198 ).
    IF t197 IS BOUND.
      CREATE OBJECT t196.
      t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t200 TYPE REF TO object.
      t200 = t197.
      t196->oval = t200.
    ENDIF.
    APPEND t196 TO t195->items.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t202) = CAST zlnt_runtime_dyna_a429568d5be8( t157 ).
    DATA(t203) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t204) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    t201 = zcl_lnt_st_combi_module=>seq( i_first = t202 i_second = t203 i_rest = t204 ).
    t156 = t201.
    t155 = t156.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA(t206) = |KeyUser|.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t211) = |INSERT|.
    CREATE OBJECT t210.
    t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t210->sval = t211.
    t209 = t210.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = CAST zif_lnt_statement_runnable( t121 ).
    IF t217 IS BOUND.
      CREATE OBJECT t216.
      t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t218 TYPE REF TO object.
      t218 = t217.
      t216->oval = t218.
    ENDIF.
    t215 = t216.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA(t221) = CAST zif_lnt_statement_runnable( t155 ).
    IF t221 IS BOUND.
      CREATE OBJECT t220.
      t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t222 TYPE REF TO object.
      t222 = t221.
      t220->oval = t222.
    ENDIF.
    t219 = t220.
    DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t224.
    t223 = t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t226) = CAST zlnt_runtime_dyna_a429568d5be8( t215 ).
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t219 ).
    DATA(t228) = CAST zlnt_runtime_arra_c22708faf2e3( t223 ).
    t225 = zcl_lnt_st_combi_module=>alt( i_first = t226 i_second = t227 i_rest = t228 ).
    t214 = t225.
    IF t214 IS BOUND.
      CREATE OBJECT t213.
      t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t229 TYPE REF TO object.
      t229 = t214.
      t213->oval = t229.
    ENDIF.
    t212 = t213.
    DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t231.
    t230 = t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t233) = CAST zlnt_runtime_dyna_a429568d5be8( t209 ).
    DATA(t234) = CAST zlnt_runtime_dyna_a429568d5be8( t212 ).
    DATA(t235) = CAST zlnt_runtime_arra_c22708faf2e3( t230 ).
    t232 = zcl_lnt_st_combi_module=>seq( i_first = t233 i_second = t234 i_rest = t235 ).
    t208 = t232.
    IF t208 IS BOUND.
      CREATE OBJECT t207.
      t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t208.
      t207->oval = t236.
    ENDIF.
    t205 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t206 i_first = t207 ).
    result = t205.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d517_e2a65928dcca.
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
