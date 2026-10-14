* TS: src/abap/2_statements/statements/parameter.ts:7:1 Parameter
CLASS zcl_lnt_st_parameter DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_parameter IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |PARAMETER|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |PARAMETERS|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
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
    DATA(t19) = |DEFAULT|.
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
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    t31 = zcl_lnt_st_combi_module=>alt_prio( i_first = t32 i_second = t33 i_rest = t34 ).
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
    DATA(t46) = |RADIOBUTTON GROUP|.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95 ).
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
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = |TYPE|.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = t63.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = |LIKE|.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t67 = t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t61 ).
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    t69 = zcl_lnt_st_combi_module=>alt_prio( i_first = t70 i_second = t71 i_rest = t72 ).
    t60 = t69.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t60.
      t59->oval = t73.
    ENDIF.
    t58 = t59.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
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
    t85 = zcl_lnt_st_combi_module=>alt_prio( i_first = t86 i_second = t87 i_rest = t88 ).
    t76 = t85.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t89 TYPE REF TO object.
      t89 = t76.
      t75->oval = t89.
    ENDIF.
    t74 = t75.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    t90 = t91.
    DATA(t92) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d ).
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>opt_prio( i_first = t95 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t97 TYPE REF TO object.
      t97 = t94.
      t93->oval = t97.
    ENDIF.
    APPEND t93 TO t92->items.
    DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    t100 = zcl_lnt_st_combi_module=>opt_prio( i_first = t101 ).
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t100.
      t99->oval = t103.
    ENDIF.
    APPEND t99 TO t98->items.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t107) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t106 i_rest = t107 ).
    t57 = t104.
    t56 = t57.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = |MEMORY ID|.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = t112.
    t110 = t111.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f ).
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    t116 = t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t119) = CAST zlnt_runtime_dyna_a429568d5be8( t110 ).
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t113 ).
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t116 ).
    t118 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t120 i_rest = t121 ).
    t109 = t118.
    t108 = t109.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t124) = |AS LISTBOX|.
    t123 = zcl_lnt_st_combi_module=>str( i_s = t124 ).
    t122 = t123.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |USER-COMMAND|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t133.
    DATA(t134) = `^[\w\?\/]+$`.
    DATA(t135) = `^[A-Za-z0-9_\?\/]+$`.
    DATA(t136) = ||.
    CREATE OBJECT t133 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t135 flags = t136.
    t133->source = t134.
    t132 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t133 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t132.
      t131->oval = t137.
    ENDIF.
    t130 = t131.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t138 = t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t142) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    t140 = zcl_lnt_st_combi_module=>seq( i_first = t141 i_second = t142 i_rest = t143 ).
    t126 = t140.
    t125 = t126.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t148) = |MODIF ID|.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = t148.
    t146 = t147.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57 ).
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t146 ).
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t149 ).
    DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    t154 = zcl_lnt_st_combi_module=>seq( i_first = t155 i_second = t156 i_rest = t157 ).
    t145 = t154.
    t144 = t145.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = |VISIBLE LENGTH|.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = t162.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t164->cval = t165.
    ENDIF.
    t163 = t164.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    t166 = t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t169) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t163 ).
    DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t166 ).
    t168 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t170 i_rest = t171 ).
    t159 = t168.
    t158 = t159.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = |LENGTH|.
    CREATE OBJECT t175.
    t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t175->sval = t176.
    t174 = t175.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t178->cval = t179.
    ENDIF.
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t181.
    t180 = t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t183) = CAST zlnt_runtime_dyna_a429568d5be8( t174 ).
    DATA(t184) = CAST zlnt_runtime_dyna_a429568d5be8( t177 ).
    DATA(t185) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
    t182 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t184 i_rest = t185 ).
    t173 = t182.
    t172 = t173.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = |MATCHCODE OBJECT|.
    CREATE OBJECT t189.
    t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t189->sval = t190.
    t188 = t189.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t192->cval = t193.
    ENDIF.
    t191 = t192.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t195.
    t194 = t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t197) = CAST zlnt_runtime_dyna_a429568d5be8( t188 ).
    DATA(t198) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t199) = CAST zlnt_runtime_arra_c22708faf2e3( t194 ).
    t196 = zcl_lnt_st_combi_module=>seq( i_first = t197 i_second = t198 i_rest = t199 ).
    t187 = t196.
    t186 = t187.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = |DECIMALS|.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t203->sval = t204.
    t202 = t203.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t206->cval = t207.
    ENDIF.
    t205 = t206.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t209.
    t208 = t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t202 ).
    DATA(t212) = CAST zlnt_runtime_dyna_a429568d5be8( t205 ).
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t208 ).
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t211 i_second = t212 i_rest = t213 ).
    t201 = t210.
    t200 = t201.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t218) = |FOR TABLE|.
    CREATE OBJECT t217.
    t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t217->sval = t218.
    t216 = t217.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA(t221) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
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
    DATA(t228) = |VALUE-REQUEST|.
    CREATE OBJECT t227.
    t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t227->sval = t228.
    t226 = zcl_lnt_st_combi_module=>opt( i_first = t227 ).
    IF t226 IS BOUND.
      CREATE OBJECT t225.
      t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t229 TYPE REF TO object.
      t229 = t226.
      t225->oval = t229.
    ENDIF.
    APPEND t225 TO t224->items.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t231) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t232) = CAST zlnt_runtime_dyna_a429568d5be8( t219 ).
    DATA(t233) = CAST zlnt_runtime_arra_c22708faf2e3( t222 ).
    t230 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t232 i_rest = t233 ).
    t215 = t230.
    t214 = t215.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = CAST zif_lnt_statement_runnable( t56 ).
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t238.
      t237->oval = t239.
    ENDIF.
    t236 = t237.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = CAST zif_lnt_statement_runnable( t15 ).
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t242.
      t241->oval = t243.
    ENDIF.
    t240 = t241.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t245.
    t244 = t245.
    DATA(t246) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t248) = |OBLIGATORY|.
    CREATE OBJECT t247.
    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t247->sval = t248.
    APPEND t247 TO t246->items.
    DATA(t249) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = CAST zif_lnt_statement_runnable( t186 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t251.
      t250->oval = t252.
    ENDIF.
    APPEND t250 TO t249->items.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zif_lnt_statement_runnable( t125 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t255.
      t254->oval = t256.
    ENDIF.
    APPEND t254 TO t253->items.
    DATA(t257) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = CAST zif_lnt_statement_runnable( t172 ).
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t260 TYPE REF TO object.
      t260 = t259.
      t258->oval = t260.
    ENDIF.
    APPEND t258 TO t257->items.
    DATA(t261) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = CAST zif_lnt_statement_runnable( t200 ).
    IF t263 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t264 TYPE REF TO object.
      t264 = t263.
      t262->oval = t264.
    ENDIF.
    APPEND t262 TO t261->items.
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA(t267) = CAST zif_lnt_statement_runnable( t42 ).
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t268 TYPE REF TO object.
      t268 = t267.
      t266->oval = t268.
    ENDIF.
    APPEND t266 TO t265->items.
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = CAST zif_lnt_statement_runnable( t108 ).
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t272 TYPE REF TO object.
      t272 = t271.
      t270->oval = t272.
    ENDIF.
    APPEND t270 TO t269->items.
    DATA(t273) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = CAST zif_lnt_statement_runnable( t144 ).
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t276 TYPE REF TO object.
      t276 = t275.
      t274->oval = t276.
    ENDIF.
    APPEND t274 TO t273->items.
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA(t279) = CAST zif_lnt_statement_runnable( t122 ).
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t280 TYPE REF TO object.
      t280 = t279.
      t278->oval = t280.
    ENDIF.
    APPEND t278 TO t277->items.
    DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = CAST zif_lnt_statement_runnable( t158 ).
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t284 TYPE REF TO object.
      t284 = t283.
      t282->oval = t284.
    ENDIF.
    APPEND t282 TO t281->items.
    DATA(t285) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = CAST zif_lnt_statement_runnable( t214 ).
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t288 TYPE REF TO object.
      t288 = t287.
      t286->oval = t288.
    ENDIF.
    APPEND t286 TO t285->items.
    DATA(t289) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t291) = |VALUE CHECK|.
    CREATE OBJECT t290.
    t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t290->sval = t291.
    APPEND t290 TO t289->items.
    DATA(t292) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = |NO-DISPLAY|.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    APPEND t293 TO t292->items.
    DATA(t295) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t297) = |AS CHECKBOX|.
    CREATE OBJECT t296.
    t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t296->sval = t297.
    APPEND t296 TO t295->items.
    DATA(t298) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t300) = |LOWER CASE|.
    CREATE OBJECT t299.
    t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t299->sval = t300.
    APPEND t299 TO t298->items.
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t302) = CAST zlnt_runtime_dyna_a429568d5be8( t236 ).
    DATA(t303) = CAST zlnt_runtime_dyna_a429568d5be8( t240 ).
    DATA(t304) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    t301 = zcl_lnt_st_combi_module=>per( i_first = t302 i_second = t303 i_rest = t304 ).
    t235 = t301.
    t234 = t235.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = CAST zif_lnt_statement_runnable( t1 ).
    IF t309 IS BOUND.
      CREATE OBJECT t308.
      t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t310 TYPE REF TO object.
      t310 = t309.
      t308->oval = t310.
    ENDIF.
    t307 = t308.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t312->cval = t313.
    ENDIF.
    t311 = t312.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t315 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t315.
    t314 = t315.
    DATA(t316) = CAST zlnt_runtime_arra_c22708faf2e3( t314 ).
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA(t320) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
    IF t320 IS BOUND.
      CREATE OBJECT t319.
      t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t319->cval = t320.
    ENDIF.
    t318 = zcl_lnt_st_combi_module=>opt( i_first = t319 ).
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t321 TYPE REF TO object.
      t321 = t318.
      t317->oval = t321.
    ENDIF.
    APPEND t317 TO t316->items.
    DATA(t322) = CAST zlnt_runtime_arra_c22708faf2e3( t314 ).
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = CAST zif_lnt_statement_runnable( t234 ).
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t327 TYPE REF TO object.
      t327 = t326.
      t325->oval = t327.
    ENDIF.
    t324 = zcl_lnt_st_combi_module=>opt( i_first = t325 ).
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t328 TYPE REF TO object.
      t328 = t324.
      t323->oval = t328.
    ENDIF.
    APPEND t323 TO t322->items.
    DATA t329 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t330) = CAST zlnt_runtime_dyna_a429568d5be8( t307 ).
    DATA(t331) = CAST zlnt_runtime_dyna_a429568d5be8( t311 ).
    DATA(t332) = CAST zlnt_runtime_arra_c22708faf2e3( t314 ).
    t329 = zcl_lnt_st_combi_module=>seq( i_first = t330 i_second = t331 i_rest = t332 ).
    t306 = t329.
    t305 = t306.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA(t334) = |Cloud|.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = CAST zif_lnt_statement_runnable( t305 ).
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t337 TYPE REF TO object.
      t337 = t336.
      t335->oval = t337.
    ENDIF.
    t333 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t334 i_first = t335 ).
    result = t333.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d555_4421dfbe5302.
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
