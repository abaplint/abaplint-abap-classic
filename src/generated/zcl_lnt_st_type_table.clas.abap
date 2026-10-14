* TS: src/abap/2_statements/expressions/type_table.ts:9:1 TypeTable
CLASS zcl_lnt_st_type_table DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_type_table IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE string.
    DATA(t2) = |WITH HEADER LINE|.
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |INITIAL SIZE|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
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
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t13 = zcl_lnt_st_combi_module=>seq( i_first = t14 i_second = t15 i_rest = t16 ).
    t4 = t13.
    t3 = t4.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = |STANDARD|.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = |HASHED|.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = t29.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t30 = t31.
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |INDEX|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    APPEND t33 TO t32->items.
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = |SORTED|.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    APPEND t36 TO t35->items.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = |ANY|.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    APPEND t39 TO t38->items.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    t41 = zcl_lnt_st_combi_module=>alt( i_first = t42 i_second = t43 i_rest = t44 ).
    t23 = t41.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t45 TYPE REF TO object.
      t45 = t23.
      t22->oval = t45.
    ENDIF.
    t21 = zcl_lnt_st_combi_module=>opt( i_first = t22 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t21.
      t20->oval = t46.
    ENDIF.
    t19 = t20.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = |TABLE|.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = t49.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    t50 = t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t47 ).
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t54 i_rest = t55 ).
    t18 = t52.
    t17 = t18.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |STANDARD|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = |HASHED|.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = t68.
    t66 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t73) = |INDEX|.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = t73.
    APPEND t72 TO t71->items.
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = |SORTED|.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = t76.
    APPEND t75 TO t74->items.
    DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = |ANY|.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    APPEND t78 TO t77->items.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t66 ).
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t80 = zcl_lnt_st_combi_module=>alt( i_first = t81 i_second = t82 i_rest = t83 ).
    t62 = t80.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t62.
      t61->oval = t84.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>opt( i_first = t61 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t85 TYPE REF TO object.
      t85 = t60.
      t59->oval = t85.
    ENDIF.
    t58 = t59.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = |TABLE OF|.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t89 = t90.
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = |REF TO|.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    t93 = zcl_lnt_st_combi_module=>opt_prio( i_first = t94 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t93.
      t92->oval = t96.
    ENDIF.
    APPEND t92 TO t91->items.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    DATA(t102) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t102 i_rest = t103 ).
    t57 = t100.
    t56 = t57.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = |STANDARD|.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = |HASHED|.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = t116.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t117 = t118.
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t121) = |INDEX|.
    CREATE OBJECT t120.
    t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t120->sval = t121.
    APPEND t120 TO t119->items.
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = |SORTED|.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = t124.
    APPEND t123 TO t122->items.
    DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = |ANY|.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = t127.
    APPEND t126 TO t125->items.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t129) = CAST zlnt_runtime_dyna_a429568d5be8( t111 ).
    DATA(t130) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t131) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    t128 = zcl_lnt_st_combi_module=>alt( i_first = t129 i_second = t130 i_rest = t131 ).
    t110 = t128.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t132 TYPE REF TO object.
      t132 = t110.
      t109->oval = t132.
    ENDIF.
    t108 = zcl_lnt_st_combi_module=>opt( i_first = t109 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t133 TYPE REF TO object.
      t133 = t108.
      t107->oval = t133.
    ENDIF.
    t106 = t107.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = |TABLE OF|.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t137 = t138.
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t143) = |REF TO|.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = t143.
    t141 = zcl_lnt_st_combi_module=>opt_prio( i_first = t142 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t141.
      t140->oval = t144.
    ENDIF.
    APPEND t140 TO t139->items.
    DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    t147 = zcl_lnt_st_combi_module=>opt( i_first = t148 ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t150 TYPE REF TO object.
      t150 = t147.
      t146->oval = t150.
    ENDIF.
    APPEND t146 TO t145->items.
    DATA(t151) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = t1.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = CAST zif_lnt_statement_runnable( t3 ).
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t162 TYPE REF TO object.
      t162 = t161.
      t160->oval = t162.
    ENDIF.
    t159 = t160.
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
    DATA(t169) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c ).
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t168->cval = t169.
    ENDIF.
    t167 = zcl_lnt_st_combi_module=>plus_prio( i_first = t168 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t170 TYPE REF TO object.
      t170 = t167.
      t166->oval = t170.
    ENDIF.
    APPEND t166 TO t165->items.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t172) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t174) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    t171 = zcl_lnt_st_combi_module=>per( i_first = t172 i_second = t173 i_rest = t174 ).
    t155 = t171.
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t175 TYPE REF TO object.
      t175 = t155.
      t154->oval = t175.
    ENDIF.
    t153 = zcl_lnt_st_combi_module=>opt( i_first = t154 ).
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t153.
      t152->oval = t176.
    ENDIF.
    APPEND t152 TO t151->items.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t134 ).
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    t177 = zcl_lnt_st_combi_module=>seq( i_first = t178 i_second = t179 i_rest = t180 ).
    t105 = t177.
    t104 = t105.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t185) = |RANGE OF|.
    CREATE OBJECT t184.
    t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t184->sval = t185.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA(t188) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t188 IS BOUND.
      CREATE OBJECT t187.
      t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t187->cval = t188.
    ENDIF.
    t186 = t187.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t190.
    t189 = t190.
    DATA(t191) = CAST zlnt_runtime_arra_c22708faf2e3( t189 ).
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = t1.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = zcl_lnt_st_combi_module=>opt_prio( i_first = t194 ).
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t196 TYPE REF TO object.
      t196 = t193.
      t192->oval = t196.
    ENDIF.
    APPEND t192 TO t191->items.
    DATA(t197) = CAST zlnt_runtime_arra_c22708faf2e3( t189 ).
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = CAST zif_lnt_statement_runnable( t3 ).
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t201.
      t200->oval = t202.
    ENDIF.
    t199 = zcl_lnt_st_combi_module=>opt_prio( i_first = t200 ).
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t203 TYPE REF TO object.
      t203 = t199.
      t198->oval = t203.
    ENDIF.
    APPEND t198 TO t197->items.
    DATA(t204) = CAST zlnt_runtime_arra_c22708faf2e3( t189 ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t208) = |VALUE IS INITIAL|.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = t208.
    t206 = zcl_lnt_st_combi_module=>opt_prio( i_first = t207 ).
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t206.
      t205->oval = t209.
    ENDIF.
    APPEND t205 TO t204->items.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t212) = CAST zlnt_runtime_dyna_a429568d5be8( t186 ).
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t189 ).
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t211 i_second = t212 i_rest = t213 ).
    t182 = t210.
    t181 = t182.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t218) = |RANGE OF|.
    CREATE OBJECT t217.
    t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t217->sval = t218.
    t216 = t217.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA(t221) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t221 IS BOUND.
      CREATE OBJECT t220.
      t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t220->cval = t221.
    ENDIF.
    t219 = t220.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t223.
    t222 = t223.
    DATA(t224) = CAST zlnt_runtime_arra_c22708faf2e3( t222 ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t228) = t1.
    CREATE OBJECT t227.
    t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t227->sval = t228.
    t226 = zcl_lnt_st_combi_module=>opt_prio( i_first = t227 ).
    IF t226 IS BOUND.
      CREATE OBJECT t225.
      t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t229 TYPE REF TO object.
      t229 = t226.
      t225->oval = t229.
    ENDIF.
    APPEND t225 TO t224->items.
    DATA(t230) = CAST zlnt_runtime_arra_c22708faf2e3( t222 ).
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = CAST zif_lnt_statement_runnable( t3 ).
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t235 TYPE REF TO object.
      t235 = t234.
      t233->oval = t235.
    ENDIF.
    t232 = zcl_lnt_st_combi_module=>opt_prio( i_first = t233 ).
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t232.
      t231->oval = t236.
    ENDIF.
    APPEND t231 TO t230->items.
    DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t222 ).
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = |VALUE IS INITIAL|.
    CREATE OBJECT t240.
    t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t240->sval = t241.
    t239 = zcl_lnt_st_combi_module=>opt_prio( i_first = t240 ).
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t242 TYPE REF TO object.
      t242 = t239.
      t238->oval = t242.
    ENDIF.
    APPEND t238 TO t237->items.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t244) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t245) = CAST zlnt_runtime_dyna_a429568d5be8( t219 ).
    DATA(t246) = CAST zlnt_runtime_arra_c22708faf2e3( t222 ).
    t243 = zcl_lnt_st_combi_module=>seq( i_first = t244 i_second = t245 i_rest = t246 ).
    t215 = t243.
    t214 = t215.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = CAST zif_lnt_statement_runnable( t17 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t251.
      t250->oval = t252.
    ENDIF.
    t249 = t250.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = CAST zif_lnt_statement_runnable( t56 ).
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
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
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
    DATA(t270) = t1.
    CREATE OBJECT t269.
    t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t269->sval = t270.
    t268 = t269.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA(t273) = CAST zif_lnt_statement_runnable( t3 ).
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
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA(t281) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c ).
    IF t281 IS BOUND.
      CREATE OBJECT t280.
      t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t280->cval = t281.
    ENDIF.
    t279 = zcl_lnt_st_combi_module=>plus_prio( i_first = t280 ).
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t282 TYPE REF TO object.
      t282 = t279.
      t278->oval = t282.
    ENDIF.
    APPEND t278 TO t277->items.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t284) = CAST zlnt_runtime_dyna_a429568d5be8( t268 ).
    DATA(t285) = CAST zlnt_runtime_dyna_a429568d5be8( t271 ).
    DATA(t286) = CAST zlnt_runtime_arra_c22708faf2e3( t275 ).
    t283 = zcl_lnt_st_combi_module=>per( i_first = t284 i_second = t285 i_rest = t286 ).
    t267 = t283.
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t287 TYPE REF TO object.
      t287 = t267.
      t266->oval = t287.
    ENDIF.
    t265 = zcl_lnt_st_combi_module=>opt( i_first = t266 ).
    IF t265 IS BOUND.
      CREATE OBJECT t264.
      t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t288 TYPE REF TO object.
      t288 = t265.
      t264->oval = t288.
    ENDIF.
    t263 = t264.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t294.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA(t296) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c ).
    IF t296 IS BOUND.
      CREATE OBJECT t295.
      t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t295->cval = t296.
    ENDIF.
    t294 = zcl_lnt_st_combi_module=>plus( i_first = t295 ).
    IF t294 IS BOUND.
      CREATE OBJECT t293.
      t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t297 TYPE REF TO object.
      t297 = t294.
      t293->oval = t297.
    ENDIF.
    t292 = t293.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = CAST zif_lnt_statement_runnable( t3 ).
    IF t302 IS BOUND.
      CREATE OBJECT t301.
      t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t303 TYPE REF TO object.
      t303 = t302.
      t301->oval = t303.
    ENDIF.
    t300 = zcl_lnt_st_combi_module=>opt_prio( i_first = t301 ).
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t304 TYPE REF TO object.
      t304 = t300.
      t299->oval = t304.
    ENDIF.
    t298 = t299.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t306.
    t305 = t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t308) = CAST zlnt_runtime_dyna_a429568d5be8( t292 ).
    DATA(t309) = CAST zlnt_runtime_dyna_a429568d5be8( t298 ).
    DATA(t310) = CAST zlnt_runtime_arra_c22708faf2e3( t305 ).
    t307 = zcl_lnt_st_combi_module=>seq( i_first = t308 i_second = t309 i_rest = t310 ).
    t291 = t307.
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t311 TYPE REF TO object.
      t311 = t291.
      t290->oval = t311.
    ENDIF.
    t289 = t290.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t313.
    t312 = t313.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t315) = CAST zlnt_runtime_dyna_a429568d5be8( t263 ).
    DATA(t316) = CAST zlnt_runtime_dyna_a429568d5be8( t289 ).
    DATA(t317) = CAST zlnt_runtime_arra_c22708faf2e3( t312 ).
    t314 = zcl_lnt_st_combi_module=>alt( i_first = t315 i_second = t316 i_rest = t317 ).
    t262 = t314.
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t262.
      t261->oval = t318.
    ENDIF.
    t260 = t261.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t320.
    t319 = t320.
    DATA(t321) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t325) = |VALUE IS INITIAL|.
    CREATE OBJECT t324.
    t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t324->sval = t325.
    t323 = zcl_lnt_st_combi_module=>opt_prio( i_first = t324 ).
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t326 TYPE REF TO object.
      t326 = t323.
      t322->oval = t326.
    ENDIF.
    APPEND t322 TO t321->items.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t328) = CAST zlnt_runtime_dyna_a429568d5be8( t256 ).
    DATA(t329) = CAST zlnt_runtime_dyna_a429568d5be8( t260 ).
    DATA(t330) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    t327 = zcl_lnt_st_combi_module=>seq( i_first = t328 i_second = t329 i_rest = t330 ).
    t255 = t327.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t331 TYPE REF TO object.
      t331 = t255.
      t254->oval = t331.
    ENDIF.
    t253 = t254.
    DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t333.
    t332 = t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t335) = CAST zlnt_runtime_dyna_a429568d5be8( t249 ).
    DATA(t336) = CAST zlnt_runtime_dyna_a429568d5be8( t253 ).
    DATA(t337) = CAST zlnt_runtime_arra_c22708faf2e3( t332 ).
    t334 = zcl_lnt_st_combi_module=>alt( i_first = t335 i_second = t336 i_rest = t337 ).
    t248 = t334.
    t247 = t248.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t338.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t342) = |OCCURS|.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = t342.
    t340 = t341.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA(t348) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t348 IS BOUND.
      CREATE OBJECT t347.
      t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t347->cval = t348.
    ENDIF.
    t346 = t347.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t351 IS BOUND.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t350->cval = t351.
    ENDIF.
    t349 = t350.
    DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t353.
    t352 = t353.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t355) = CAST zlnt_runtime_dyna_a429568d5be8( t346 ).
    DATA(t356) = CAST zlnt_runtime_dyna_a429568d5be8( t349 ).
    DATA(t357) = CAST zlnt_runtime_arra_c22708faf2e3( t352 ).
    t354 = zcl_lnt_st_combi_module=>alt_prio( i_first = t355 i_second = t356 i_rest = t357 ).
    t345 = t354.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t358 TYPE REF TO object.
      t358 = t345.
      t344->oval = t358.
    ENDIF.
    t343 = t344.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t360.
    t359 = t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t362) = CAST zlnt_runtime_dyna_a429568d5be8( t340 ).
    DATA(t363) = CAST zlnt_runtime_dyna_a429568d5be8( t343 ).
    DATA(t364) = CAST zlnt_runtime_arra_c22708faf2e3( t359 ).
    t361 = zcl_lnt_st_combi_module=>seq( i_first = t362 i_second = t363 i_rest = t364 ).
    t339 = t361.
    t338 = t339.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t365.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    DATA(t369) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t369 IS BOUND.
      CREATE OBJECT t368.
      t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t368->cval = t369.
    ENDIF.
    t367 = t368.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA(t372) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
    IF t372 IS BOUND.
      CREATE OBJECT t371.
      t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t371->cval = t372.
    ENDIF.
    t370 = t371.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t374.
    t373 = t374.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t376) = CAST zlnt_runtime_dyna_a429568d5be8( t367 ).
    DATA(t377) = CAST zlnt_runtime_dyna_a429568d5be8( t370 ).
    DATA(t378) = CAST zlnt_runtime_arra_c22708faf2e3( t373 ).
    t375 = zcl_lnt_st_combi_module=>alt( i_first = t376 i_second = t377 i_rest = t378 ).
    t366 = t375.
    t365 = t366.
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t379.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t382.
    t381 = t382.
    DATA(t383) = CAST zlnt_runtime_arra_c22708faf2e3( t381 ).
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA t386 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t386.
    DATA t387 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t388.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t388 = zcl_lnt_version_module=>release_b8cd.
    DATA(t389) = |v773|.
    t387 = t388->get( p0 = t389 ).
    t386 = t387.
    IF t386 IS BOUND.
      CREATE OBJECT t385.
      t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t390 TYPE REF TO object.
      t390 = t386.
      t385->oval = t390.
    ENDIF.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA t392 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t392.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t395) = |ACTION IMPORT|.
    CREATE OBJECT t394.
    t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t394->sval = t395.
    t393 = t394.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA(t398) = CAST zif_lnt_statement_runnable( t365 ).
    IF t398 IS BOUND.
      CREATE OBJECT t397.
      t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t399 TYPE REF TO object.
      t399 = t398.
      t397->oval = t399.
    ENDIF.
    t396 = t397.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t401.
    t400 = t401.
    DATA t402 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t403) = CAST zlnt_runtime_dyna_a429568d5be8( t393 ).
    DATA(t404) = CAST zlnt_runtime_dyna_a429568d5be8( t396 ).
    DATA(t405) = CAST zlnt_runtime_arra_c22708faf2e3( t400 ).
    t402 = zcl_lnt_st_combi_module=>seq( i_first = t403 i_second = t404 i_rest = t405 ).
    t392 = t402.
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t406 TYPE REF TO object.
      t406 = t392.
      t391->oval = t406.
    ENDIF.
    DATA t407 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t407.
    DATA(t408) = abap_true.
    IF t408 = abap_true.
      DATA t409 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t409.
      DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t410.
      DATA(t411) = abap_true.
      IF t411 = abap_true.
        DATA(t412) = |OpenABAP|.
        DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t413->has = abap_true.
        t413->value = t412.
        t410 = t413.
      ELSE.
        DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t414.
        t410 = t414.
      ENDIF.
      t409 = NEW zcl_lnt_iver_options( i_also = t410 ).
      t407 = t409.
    ELSE.
      DATA t415 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t415.
      t407 = t415.
    ENDIF.
    t384 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t385 i_first = t391 i_opts = t407 ).
    APPEND t384 TO t383->items.
    DATA(t416) = CAST zlnt_runtime_arra_c22708faf2e3( t381 ).
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t419.
    DATA t420 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t421.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t421 = zcl_lnt_version_module=>release_b8cd.
    DATA(t422) = |v774|.
    t420 = t421->get( p0 = t422 ).
    t419 = t420.
    IF t419 IS BOUND.
      CREATE OBJECT t418.
      t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t423 TYPE REF TO object.
      t423 = t419.
      t418->oval = t423.
    ENDIF.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA t425 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t428) = |READ LINK|.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = t428.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA(t431) = CAST zif_lnt_statement_runnable( t365 ).
    IF t431 IS BOUND.
      CREATE OBJECT t430.
      t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t432 TYPE REF TO object.
      t432 = t431.
      t430->oval = t432.
    ENDIF.
    t429 = t430.
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t434 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t434.
    t433 = t434.
    DATA t435 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t436) = CAST zlnt_runtime_dyna_a429568d5be8( t426 ).
    DATA(t437) = CAST zlnt_runtime_dyna_a429568d5be8( t429 ).
    DATA(t438) = CAST zlnt_runtime_arra_c22708faf2e3( t433 ).
    t435 = zcl_lnt_st_combi_module=>seq( i_first = t436 i_second = t437 i_rest = t438 ).
    t425 = t435.
    IF t425 IS BOUND.
      CREATE OBJECT t424.
      t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t439 TYPE REF TO object.
      t439 = t425.
      t424->oval = t439.
    ENDIF.
    DATA t440 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t440.
    DATA(t441) = abap_true.
    IF t441 = abap_true.
      DATA t442 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t442.
      DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t443.
      DATA(t444) = abap_true.
      IF t444 = abap_true.
        DATA(t445) = |OpenABAP|.
        DATA(t446) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t446->has = abap_true.
        t446->value = t445.
        t443 = t446.
      ELSE.
        DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t447.
        t443 = t447.
      ENDIF.
      t442 = NEW zcl_lnt_iver_options( i_also = t443 ).
      t440 = t442.
    ELSE.
      DATA t448 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t448.
      t440 = t448.
    ENDIF.
    t417 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t418 i_first = t424 i_opts = t440 ).
    APPEND t417 TO t416->items.
    DATA(t449) = CAST zlnt_runtime_arra_c22708faf2e3( t381 ).
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t452.
    DATA t453 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t453.
    DATA t454 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t454.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t454 = zcl_lnt_version_module=>release_b8cd.
    DATA(t455) = |v787|.
    t453 = t454->get( p0 = t455 ).
    t452 = t453.
    IF t452 IS BOUND.
      CREATE OBJECT t451.
      t451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t456 TYPE REF TO object.
      t456 = t452.
      t451->oval = t456.
    ENDIF.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t461) = |EVENT|.
    CREATE OBJECT t460.
    t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t460->sval = t461.
    t459 = t460.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA(t464) = CAST zif_lnt_statement_runnable( t365 ).
    IF t464 IS BOUND.
      CREATE OBJECT t463.
      t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t465 TYPE REF TO object.
      t465 = t464.
      t463->oval = t465.
    ENDIF.
    t462 = t463.
    DATA t466 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t467.
    t466 = t467.
    DATA t468 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t469) = CAST zlnt_runtime_dyna_a429568d5be8( t459 ).
    DATA(t470) = CAST zlnt_runtime_dyna_a429568d5be8( t462 ).
    DATA(t471) = CAST zlnt_runtime_arra_c22708faf2e3( t466 ).
    t468 = zcl_lnt_st_combi_module=>seq( i_first = t469 i_second = t470 i_rest = t471 ).
    t458 = t468.
    IF t458 IS BOUND.
      CREATE OBJECT t457.
      t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t472 TYPE REF TO object.
      t472 = t458.
      t457->oval = t472.
    ENDIF.
    DATA t473 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t473.
    DATA(t474) = abap_true.
    IF t474 = abap_true.
      DATA t475 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t475.
      DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t476.
      DATA(t477) = abap_true.
      IF t477 = abap_true.
        DATA(t478) = |OpenABAP|.
        DATA(t479) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t479->has = abap_true.
        t479->value = t478.
        t476 = t479.
      ELSE.
        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t480.
        t476 = t480.
      ENDIF.
      t475 = NEW zcl_lnt_iver_options( i_also = t476 ).
      t473 = t475.
    ELSE.
      DATA t481 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t481.
      t473 = t481.
    ENDIF.
    t450 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t451 i_first = t457 i_opts = t473 ).
    APPEND t450 TO t449->items.
    DATA t482 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t483) = CAST zlnt_runtime_arra_c22708faf2e3( t381 ).
    t482 = zcl_lnt_derived_types_module=>derived_types_alt( i_extra = t483 ).
    t380 = t482.
    t379 = t380.
    DATA t484 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t484.
    DATA t485 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t485.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t486.
    DATA t487 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t487.
    DATA t488 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t488.
    DATA t489 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t489.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t489 = zcl_lnt_version_module=>release_b8cd.
    DATA(t490) = |v770|.
    t488 = t489->get( p0 = t490 ).
    t487 = t488.
    IF t487 IS BOUND.
      CREATE OBJECT t486.
      t486->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t491 TYPE REF TO object.
      t491 = t487.
      t486->oval = t491.
    ENDIF.
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t492.
    DATA t493 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t496) = |TABLE FOR|.
    CREATE OBJECT t495.
    t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t495->sval = t496.
    t494 = t495.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t497.
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA(t499) = CAST zif_lnt_statement_runnable( t379 ).
    IF t499 IS BOUND.
      CREATE OBJECT t498.
      t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t500 TYPE REF TO object.
      t500 = t499.
      t498->oval = t500.
    ENDIF.
    t497 = t498.
    DATA t501 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t502.
    t501 = t502.
    DATA(t503) = CAST zlnt_runtime_arra_c22708faf2e3( t501 ).
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA t505 TYPE REF TO zif_lnt_statement_runnable.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t507) = |VALUE IS INITIAL|.
    CREATE OBJECT t506.
    t506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t506->sval = t507.
    t505 = zcl_lnt_st_combi_module=>opt_prio( i_first = t506 ).
    IF t505 IS BOUND.
      CREATE OBJECT t504.
      t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t508 TYPE REF TO object.
      t508 = t505.
      t504->oval = t508.
    ENDIF.
    APPEND t504 TO t503->items.
    DATA t509 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t510) = CAST zlnt_runtime_dyna_a429568d5be8( t494 ).
    DATA(t511) = CAST zlnt_runtime_dyna_a429568d5be8( t497 ).
    DATA(t512) = CAST zlnt_runtime_arra_c22708faf2e3( t501 ).
    t509 = zcl_lnt_st_combi_module=>seq( i_first = t510 i_second = t511 i_rest = t512 ).
    t493 = t509.
    IF t493 IS BOUND.
      CREATE OBJECT t492.
      t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t513 TYPE REF TO object.
      t513 = t493.
      t492->oval = t513.
    ENDIF.
    DATA t514 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t514.
    DATA(t515) = abap_true.
    IF t515 = abap_true.
      DATA t516 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t516.
      DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t517.
      DATA(t518) = abap_true.
      IF t518 = abap_true.
        DATA(t519) = |OpenABAP|.
        DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t520->has = abap_true.
        t520->value = t519.
        t517 = t520.
      ELSE.
        DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t521.
        t517 = t521.
      ENDIF.
      t516 = NEW zcl_lnt_iver_options( i_also = t517 ).
      t514 = t516.
    ELSE.
      DATA t522 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t522.
      t514 = t522.
    ENDIF.
    t485 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t486 i_first = t492 i_opts = t514 ).
    t484 = t485.
    DATA t523 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t523.
    DATA t524 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t524.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA t527 TYPE REF TO zif_lnt_statement_runnable.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t529) = |REF TO|.
    CREATE OBJECT t528.
    t528->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t528->sval = t529.
    t527 = zcl_lnt_st_combi_module=>opt( i_first = t528 ).
    IF t527 IS BOUND.
      CREATE OBJECT t526.
      t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t530 TYPE REF TO object.
      t530 = t527.
      t526->oval = t530.
    ENDIF.
    t525 = t526.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA(t533) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t533 IS BOUND.
      CREATE OBJECT t532.
      t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t532->cval = t533.
    ENDIF.
    t531 = t532.
    DATA t534 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t535 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t535.
    t534 = t535.
    DATA(t536) = CAST zlnt_runtime_arra_c22708faf2e3( t534 ).
    DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t537.
    DATA t538 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t538.
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t539.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA t541 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t541.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t543.
    DATA(t544) = CAST zif_lnt_statement_runnable( t338 ).
    IF t544 IS BOUND.
      CREATE OBJECT t543.
      t543->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t545 TYPE REF TO object.
      t545 = t544.
      t543->oval = t545.
    ENDIF.
    t542 = t543.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t550) = t1.
    CREATE OBJECT t549.
    t549->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t549->sval = t550.
    t548 = zcl_lnt_st_combi_module=>opt( i_first = t549 ).
    IF t548 IS BOUND.
      CREATE OBJECT t547.
      t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t551 TYPE REF TO object.
      t551 = t548.
      t547->oval = t551.
    ENDIF.
    t546 = t547.
    DATA t552 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t553 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t553.
    t552 = t553.
    DATA t554 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t555) = CAST zlnt_runtime_dyna_a429568d5be8( t542 ).
    DATA(t556) = CAST zlnt_runtime_dyna_a429568d5be8( t546 ).
    DATA(t557) = CAST zlnt_runtime_arra_c22708faf2e3( t552 ).
    t554 = zcl_lnt_st_combi_module=>seq( i_first = t555 i_second = t556 i_rest = t557 ).
    t541 = t554.
    IF t541 IS BOUND.
      CREATE OBJECT t540.
      t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t558 TYPE REF TO object.
      t558 = t541.
      t540->oval = t558.
    ENDIF.
    t539 = t540.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t561) = t1.
    CREATE OBJECT t560.
    t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t560->sval = t561.
    t559 = t560.
    DATA t562 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t563 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t563.
    t562 = t563.
    DATA t564 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t565) = CAST zlnt_runtime_dyna_a429568d5be8( t539 ).
    DATA(t566) = CAST zlnt_runtime_dyna_a429568d5be8( t559 ).
    DATA(t567) = CAST zlnt_runtime_arra_c22708faf2e3( t562 ).
    t564 = zcl_lnt_st_combi_module=>alt( i_first = t565 i_second = t566 i_rest = t567 ).
    t538 = t564.
    IF t538 IS BOUND.
      CREATE OBJECT t537.
      t537->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t568 TYPE REF TO object.
      t568 = t538.
      t537->oval = t568.
    ENDIF.
    APPEND t537 TO t536->items.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t570) = CAST zlnt_runtime_dyna_a429568d5be8( t525 ).
    DATA(t571) = CAST zlnt_runtime_dyna_a429568d5be8( t531 ).
    DATA(t572) = CAST zlnt_runtime_arra_c22708faf2e3( t534 ).
    t569 = zcl_lnt_st_combi_module=>seq( i_first = t570 i_second = t571 i_rest = t572 ).
    t524 = t569.
    t523 = t524.
    DATA t573 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t573.
    DATA t574 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t574.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t575.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA t577 TYPE REF TO zif_lnt_statement_runnable.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t579) = |REF TO|.
    CREATE OBJECT t578.
    t578->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t578->sval = t579.
    t577 = zcl_lnt_st_combi_module=>opt( i_first = t578 ).
    IF t577 IS BOUND.
      CREATE OBJECT t576.
      t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t580 TYPE REF TO object.
      t580 = t577.
      t576->oval = t580.
    ENDIF.
    t575 = t576.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
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
    DATA(t586) = CAST zlnt_runtime_arra_c22708faf2e3( t584 ).
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    DATA t588 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t588.
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t589.
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t590.
    DATA t591 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t591.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA(t594) = CAST zif_lnt_statement_runnable( t338 ).
    IF t594 IS BOUND.
      CREATE OBJECT t593.
      t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t595 TYPE REF TO object.
      t595 = t594.
      t593->oval = t595.
    ENDIF.
    t592 = t593.
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t596.
    DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t597.
    DATA t598 TYPE REF TO zif_lnt_statement_runnable.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t600) = t1.
    CREATE OBJECT t599.
    t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t599->sval = t600.
    t598 = zcl_lnt_st_combi_module=>opt( i_first = t599 ).
    IF t598 IS BOUND.
      CREATE OBJECT t597.
      t597->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t601 TYPE REF TO object.
      t601 = t598.
      t597->oval = t601.
    ENDIF.
    t596 = t597.
    DATA t602 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t603 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t603.
    t602 = t603.
    DATA t604 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t605) = CAST zlnt_runtime_dyna_a429568d5be8( t592 ).
    DATA(t606) = CAST zlnt_runtime_dyna_a429568d5be8( t596 ).
    DATA(t607) = CAST zlnt_runtime_arra_c22708faf2e3( t602 ).
    t604 = zcl_lnt_st_combi_module=>seq( i_first = t605 i_second = t606 i_rest = t607 ).
    t591 = t604.
    IF t591 IS BOUND.
      CREATE OBJECT t590.
      t590->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t608 TYPE REF TO object.
      t608 = t591.
      t590->oval = t608.
    ENDIF.
    t589 = t590.
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t611) = t1.
    CREATE OBJECT t610.
    t610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t610->sval = t611.
    t609 = t610.
    DATA t612 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t613 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t613.
    t612 = t613.
    DATA t614 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t615) = CAST zlnt_runtime_dyna_a429568d5be8( t589 ).
    DATA(t616) = CAST zlnt_runtime_dyna_a429568d5be8( t609 ).
    DATA(t617) = CAST zlnt_runtime_arra_c22708faf2e3( t612 ).
    t614 = zcl_lnt_st_combi_module=>alt( i_first = t615 i_second = t616 i_rest = t617 ).
    t588 = t614.
    IF t588 IS BOUND.
      CREATE OBJECT t587.
      t587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t618 TYPE REF TO object.
      t618 = t588.
      t587->oval = t618.
    ENDIF.
    APPEND t587 TO t586->items.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t620) = CAST zlnt_runtime_dyna_a429568d5be8( t575 ).
    DATA(t621) = CAST zlnt_runtime_dyna_a429568d5be8( t581 ).
    DATA(t622) = CAST zlnt_runtime_arra_c22708faf2e3( t584 ).
    t619 = zcl_lnt_st_combi_module=>seq( i_first = t620 i_second = t621 i_rest = t622 ).
    t574 = t619.
    t573 = t574.
    DATA t623 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t623.
    DATA t624 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t624.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t627) = |LINE OF|.
    CREATE OBJECT t626.
    t626->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t626->sval = t627.
    t625 = t626.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    DATA(t630) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t630 IS BOUND.
      CREATE OBJECT t629.
      t629->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t629->cval = t630.
    ENDIF.
    t628 = t629.
    DATA t631 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t632 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t632.
    t631 = t632.
    DATA(t633) = CAST zlnt_runtime_arra_c22708faf2e3( t631 ).
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t634.
    DATA(t635) = CAST zif_lnt_statement_runnable( t338 ).
    IF t635 IS BOUND.
      CREATE OBJECT t634.
      t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t636 TYPE REF TO object.
      t636 = t635.
      t634->oval = t636.
    ENDIF.
    APPEND t634 TO t633->items.
    DATA(t637) = CAST zlnt_runtime_arra_c22708faf2e3( t631 ).
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t639) = t1.
    CREATE OBJECT t638.
    t638->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t638->sval = t639.
    APPEND t638 TO t637->items.
    DATA t640 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t641) = CAST zlnt_runtime_dyna_a429568d5be8( t625 ).
    DATA(t642) = CAST zlnt_runtime_dyna_a429568d5be8( t628 ).
    DATA(t643) = CAST zlnt_runtime_arra_c22708faf2e3( t631 ).
    t640 = zcl_lnt_st_combi_module=>seq( i_first = t641 i_second = t642 i_rest = t643 ).
    t624 = t640.
    t623 = t624.
    DATA t644 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t644.
    DATA t645 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t645.
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t646.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t647.
    DATA t648 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t648.
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t649.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t650.
    DATA(t651) = CAST zif_lnt_statement_runnable( t338 ).
    IF t651 IS BOUND.
      CREATE OBJECT t650.
      t650->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t652 TYPE REF TO object.
      t652 = t651.
      t650->oval = t652.
    ENDIF.
    t649 = t650.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t653.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t654.
    DATA t655 TYPE REF TO zif_lnt_statement_runnable.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t657) = t1.
    CREATE OBJECT t656.
    t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t656->sval = t657.
    t655 = zcl_lnt_st_combi_module=>opt( i_first = t656 ).
    IF t655 IS BOUND.
      CREATE OBJECT t654.
      t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t658 TYPE REF TO object.
      t658 = t655.
      t654->oval = t658.
    ENDIF.
    t653 = t654.
    DATA t659 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t660 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t660.
    t659 = t660.
    DATA t661 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t662) = CAST zlnt_runtime_dyna_a429568d5be8( t649 ).
    DATA(t663) = CAST zlnt_runtime_dyna_a429568d5be8( t653 ).
    DATA(t664) = CAST zlnt_runtime_arra_c22708faf2e3( t659 ).
    t661 = zcl_lnt_st_combi_module=>seq( i_first = t662 i_second = t663 i_rest = t664 ).
    t648 = t661.
    IF t648 IS BOUND.
      CREATE OBJECT t647.
      t647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t665 TYPE REF TO object.
      t665 = t648.
      t647->oval = t665.
    ENDIF.
    t646 = t647.
    DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t666.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    DATA t668 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t668.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t671) = |LIKE|.
    CREATE OBJECT t670.
    t670->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t670->sval = t671.
    t669 = t670.
    DATA t672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t672.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t673.
    DATA t674 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t674.
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t675.
    DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t676.
    DATA(t677) = CAST zif_lnt_statement_runnable( t573 ).
    IF t677 IS BOUND.
      CREATE OBJECT t676.
      t676->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t678 TYPE REF TO object.
      t678 = t677.
      t676->oval = t678.
    ENDIF.
    t675 = t676.
    DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t679.
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t680.
    DATA(t681) = CAST zif_lnt_statement_runnable( t104 ).
    IF t681 IS BOUND.
      CREATE OBJECT t680.
      t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t682 TYPE REF TO object.
      t682 = t681.
      t680->oval = t682.
    ENDIF.
    t679 = t680.
    DATA t683 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t684 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t684.
    t683 = t684.
    DATA(t685) = CAST zlnt_runtime_arra_c22708faf2e3( t683 ).
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t686.
    DATA(t687) = CAST zif_lnt_statement_runnable( t214 ).
    IF t687 IS BOUND.
      CREATE OBJECT t686.
      t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t688 TYPE REF TO object.
      t688 = t687.
      t686->oval = t688.
    ENDIF.
    APPEND t686 TO t685->items.
    DATA(t689) = CAST zlnt_runtime_arra_c22708faf2e3( t683 ).
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t690.
    DATA(t691) = CAST zif_lnt_statement_runnable( t623 ).
    IF t691 IS BOUND.
      CREATE OBJECT t690.
      t690->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t692 TYPE REF TO object.
      t692 = t691.
      t690->oval = t692.
    ENDIF.
    APPEND t690 TO t689->items.
    DATA t693 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t694) = CAST zlnt_runtime_dyna_a429568d5be8( t675 ).
    DATA(t695) = CAST zlnt_runtime_dyna_a429568d5be8( t679 ).
    DATA(t696) = CAST zlnt_runtime_arra_c22708faf2e3( t683 ).
    t693 = zcl_lnt_st_combi_module=>alt( i_first = t694 i_second = t695 i_rest = t696 ).
    t674 = t693.
    IF t674 IS BOUND.
      CREATE OBJECT t673.
      t673->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t697 TYPE REF TO object.
      t697 = t674.
      t673->oval = t697.
    ENDIF.
    t672 = t673.
    DATA t698 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t699 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t699.
    t698 = t699.
    DATA t700 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t701) = CAST zlnt_runtime_dyna_a429568d5be8( t669 ).
    DATA(t702) = CAST zlnt_runtime_dyna_a429568d5be8( t672 ).
    DATA(t703) = CAST zlnt_runtime_arra_c22708faf2e3( t698 ).
    t700 = zcl_lnt_st_combi_module=>seq( i_first = t701 i_second = t702 i_rest = t703 ).
    t668 = t700.
    IF t668 IS BOUND.
      CREATE OBJECT t667.
      t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t704 TYPE REF TO object.
      t704 = t668.
      t667->oval = t704.
    ENDIF.
    t666 = t667.
    DATA t705 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t706 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t706.
    t705 = t706.
    DATA(t707) = CAST zlnt_runtime_arra_c22708faf2e3( t705 ).
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t708.
    DATA t709 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t709.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t712) = |TYPE|.
    CREATE OBJECT t711.
    t711->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t711->sval = t712.
    t710 = t711.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t714.
    DATA t715 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t715.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t716.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t717.
    DATA(t718) = CAST zif_lnt_statement_runnable( t523 ).
    IF t718 IS BOUND.
      CREATE OBJECT t717.
      t717->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t719 TYPE REF TO object.
      t719 = t718.
      t717->oval = t719.
    ENDIF.
    t716 = t717.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t720.
    DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t721.
    DATA(t722) = CAST zif_lnt_statement_runnable( t247 ).
    IF t722 IS BOUND.
      CREATE OBJECT t721.
      t721->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t723 TYPE REF TO object.
      t723 = t722.
      t721->oval = t723.
    ENDIF.
    t720 = t721.
    DATA t724 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t725 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t725.
    t724 = t725.
    DATA(t726) = CAST zlnt_runtime_arra_c22708faf2e3( t724 ).
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t727.
    DATA(t728) = CAST zif_lnt_statement_runnable( t181 ).
    IF t728 IS BOUND.
      CREATE OBJECT t727.
      t727->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t729 TYPE REF TO object.
      t729 = t728.
      t727->oval = t729.
    ENDIF.
    APPEND t727 TO t726->items.
    DATA(t730) = CAST zlnt_runtime_arra_c22708faf2e3( t724 ).
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t731.
    DATA(t732) = CAST zif_lnt_statement_runnable( t623 ).
    IF t732 IS BOUND.
      CREATE OBJECT t731.
      t731->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t733 TYPE REF TO object.
      t733 = t732.
      t731->oval = t733.
    ENDIF.
    APPEND t731 TO t730->items.
    DATA(t734) = CAST zlnt_runtime_arra_c22708faf2e3( t724 ).
    DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t735.
    DATA(t736) = CAST zif_lnt_statement_runnable( t484 ).
    IF t736 IS BOUND.
      CREATE OBJECT t735.
      t735->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t737 TYPE REF TO object.
      t737 = t736.
      t735->oval = t737.
    ENDIF.
    APPEND t735 TO t734->items.
    DATA t738 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t739) = CAST zlnt_runtime_dyna_a429568d5be8( t716 ).
    DATA(t740) = CAST zlnt_runtime_dyna_a429568d5be8( t720 ).
    DATA(t741) = CAST zlnt_runtime_arra_c22708faf2e3( t724 ).
    t738 = zcl_lnt_st_combi_module=>alt( i_first = t739 i_second = t740 i_rest = t741 ).
    t715 = t738.
    IF t715 IS BOUND.
      CREATE OBJECT t714.
      t714->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t742 TYPE REF TO object.
      t742 = t715.
      t714->oval = t742.
    ENDIF.
    t713 = t714.
    DATA t743 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t744 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t744.
    t743 = t744.
    DATA t745 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t746) = CAST zlnt_runtime_dyna_a429568d5be8( t710 ).
    DATA(t747) = CAST zlnt_runtime_dyna_a429568d5be8( t713 ).
    DATA(t748) = CAST zlnt_runtime_arra_c22708faf2e3( t743 ).
    t745 = zcl_lnt_st_combi_module=>seq( i_first = t746 i_second = t747 i_rest = t748 ).
    t709 = t745.
    IF t709 IS BOUND.
      CREATE OBJECT t708.
      t708->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t749 TYPE REF TO object.
      t749 = t709.
      t708->oval = t749.
    ENDIF.
    APPEND t708 TO t707->items.
    DATA t750 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t751) = CAST zlnt_runtime_dyna_a429568d5be8( t646 ).
    DATA(t752) = CAST zlnt_runtime_dyna_a429568d5be8( t666 ).
    DATA(t753) = CAST zlnt_runtime_arra_c22708faf2e3( t705 ).
    t750 = zcl_lnt_st_combi_module=>alt_prio( i_first = t751 i_second = t752 i_rest = t753 ).
    t645 = t750.
    t644 = t645.
    DATA(t754) = CAST zif_lnt_statement_runnable( t644 ).
    result = t754.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
  ENDMETHOD.
ENDCLASS.
