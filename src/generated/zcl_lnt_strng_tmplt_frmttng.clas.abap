* TS: src/abap/2_statements/expressions/string_template_formatting.ts:7:1 StringTemplateFormatting
CLASS zcl_lnt_strng_tmplt_frmttng DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_strng_tmplt_frmttng IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |OUT|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |RAW|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |IN|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    APPEND t15 TO t14->items.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t19 i_rest = t20 ).
    t2 = t17.
    t1 = t2.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = |LEFT|.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |RIGHT|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |CENTER|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    APPEND t32 TO t31->items.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    APPEND t35 TO t34->items.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    APPEND t38 TO t37->items.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    t40 = zcl_lnt_st_combi_module=>alt_prio( i_first = t41 i_second = t42 i_rest = t43 ).
    t22 = t40.
    t21 = t22.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |RAW|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = |ISO|.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t52 = t53.
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = |USER|.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    APPEND t55 TO t54->items.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = |ENVIRONMENT|.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    APPEND t58 TO t57->items.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    APPEND t61 TO t60->items.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    APPEND t64 TO t63->items.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    t66 = zcl_lnt_st_combi_module=>alt_prio( i_first = t67 i_second = t68 i_rest = t69 ).
    t45 = t66.
    t44 = t45.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |SPACE|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = |ISO|.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = |USER|.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    APPEND t81 TO t80->items.
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = |ENVIRONMENT|.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    APPEND t84 TO t83->items.
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    APPEND t87 TO t86->items.
    DATA(t89) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    APPEND t90 TO t89->items.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t92 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t94 i_rest = t95 ).
    t71 = t92.
    t70 = t71.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = |RAW|.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = t100.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = |USER|.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t104 = t105.
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = |ENVIRONMENT|.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    APPEND t107 TO t106->items.
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    APPEND t110 TO t109->items.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t98 ).
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    t115 = zcl_lnt_st_combi_module=>alt_prio( i_first = t116 i_second = t117 i_rest = t118 ).
    t97 = t115.
    t96 = t97.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t123) = |LEFT|.
    CREATE OBJECT t122.
    t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t122->sval = t123.
    t121 = t122.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = |LEFTPLUS|.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t128.
    t127 = t128.
    DATA(t129) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = |LEFTSPACE|.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    APPEND t130 TO t129->items.
    DATA(t132) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = |RIGHT|.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    APPEND t133 TO t132->items.
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = |RIGHTPLUS|.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = t137.
    APPEND t136 TO t135->items.
    DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = |RIGHTSPACE|.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = t140.
    APPEND t139 TO t138->items.
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA(t143) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t142->cval = t143.
    ENDIF.
    APPEND t142 TO t141->items.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t146) = CAST zlnt_runtime_dyna_a429568d5be8( t124 ).
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    t144 = zcl_lnt_st_combi_module=>alt_prio( i_first = t145 i_second = t146 i_rest = t147 ).
    t120 = t144.
    t119 = t120.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t152) = |RAW|.
    CREATE OBJECT t151.
    t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t151->sval = t152.
    t150 = t151.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = |UPPER|.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = t155.
    t153 = t154.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t157.
    t156 = t157.
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t156 ).
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t160) = |LOWER|.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = t160.
    APPEND t159 TO t158->items.
    DATA(t161) = CAST zlnt_runtime_arra_c22708faf2e3( t156 ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA(t163) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t162->cval = t163.
    ENDIF.
    APPEND t162 TO t161->items.
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t156 ).
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t165->cval = t166.
    ENDIF.
    APPEND t165 TO t164->items.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t168) = CAST zlnt_runtime_dyna_a429568d5be8( t150 ).
    DATA(t169) = CAST zlnt_runtime_dyna_a429568d5be8( t153 ).
    DATA(t170) = CAST zlnt_runtime_arra_c22708faf2e3( t156 ).
    t167 = zcl_lnt_st_combi_module=>alt_prio( i_first = t168 i_second = t169 i_rest = t170 ).
    t149 = t167.
    t148 = t149.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = |YES|.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = |NO|.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = t178.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    t179 = t180.
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t179 ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t182->cval = t183.
    ENDIF.
    APPEND t182 TO t181->items.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t185) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t176 ).
    DATA(t187) = CAST zlnt_runtime_arra_c22708faf2e3( t179 ).
    t184 = zcl_lnt_st_combi_module=>alt_prio( i_first = t185 i_second = t186 i_rest = t187 ).
    t172 = t184.
    t171 = t172.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = |SIMPLE|.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |SIGN_AS_POSTFIX|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t196 = t197.
    DATA(t198) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t200) = |SCALE_PRESERVING|.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = t200.
    APPEND t199 TO t198->items.
    DATA(t201) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = |SCIENTIFIC|.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
    APPEND t202 TO t201->items.
    DATA(t204) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = |SCIENTIFIC_WITH_LEADING_ZERO|.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    APPEND t205 TO t204->items.
    DATA(t207) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t209) = |SCALE_PRESERVING_SCIENTIFIC|.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    APPEND t208 TO t207->items.
    DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |ENGINEERING|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    APPEND t211 TO t210->items.
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    APPEND t214 TO t213->items.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t217) = CAST zlnt_runtime_dyna_a429568d5be8( t190 ).
    DATA(t218) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t219) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    t216 = zcl_lnt_st_combi_module=>alt_prio( i_first = t217 i_second = t218 i_rest = t219 ).
    t189 = t216.
    t188 = t189.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = |WIDTH =|.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    t222 = t223.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t226->cval = t227.
    ENDIF.
    t225 = t226.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t229.
    t228 = t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t231) = CAST zlnt_runtime_dyna_a429568d5be8( t222 ).
    DATA(t232) = CAST zlnt_runtime_dyna_a429568d5be8( t225 ).
    DATA(t233) = CAST zlnt_runtime_arra_c22708faf2e3( t228 ).
    t230 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t232 i_rest = t233 ).
    t221 = t230.
    t220 = t221.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = |ALIGN =|.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    t236 = t237.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = CAST zif_lnt_statement_runnable( t21 ).
    IF t241 IS BOUND.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t242 TYPE REF TO object.
      t242 = t241.
      t240->oval = t242.
    ENDIF.
    t239 = t240.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t244.
    t243 = t244.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t246) = CAST zlnt_runtime_dyna_a429568d5be8( t236 ).
    DATA(t247) = CAST zlnt_runtime_dyna_a429568d5be8( t239 ).
    DATA(t248) = CAST zlnt_runtime_arra_c22708faf2e3( t243 ).
    t245 = zcl_lnt_st_combi_module=>seq( i_first = t246 i_second = t247 i_rest = t248 ).
    t235 = t245.
    t234 = t235.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t253) = |TIMEZONE =|.
    CREATE OBJECT t252.
    t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t252->sval = t253.
    t251 = t252.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA(t256) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t256 IS BOUND.
      CREATE OBJECT t255.
      t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t255->cval = t256.
    ENDIF.
    t254 = t255.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    t257 = t258.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t260) = CAST zlnt_runtime_dyna_a429568d5be8( t251 ).
    DATA(t261) = CAST zlnt_runtime_dyna_a429568d5be8( t254 ).
    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t257 ).
    t259 = zcl_lnt_st_combi_module=>seq( i_first = t260 i_second = t261 i_rest = t262 ).
    t250 = t259.
    t249 = t250.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t263.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t267) = |TIMESTAMP =|.
    CREATE OBJECT t266.
    t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t266->sval = t267.
    t265 = t266.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA(t270) = CAST zif_lnt_statement_runnable( t70 ).
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t271 TYPE REF TO object.
      t271 = t270.
      t269->oval = t271.
    ENDIF.
    t268 = t269.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t273.
    t272 = t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t275) = CAST zlnt_runtime_dyna_a429568d5be8( t265 ).
    DATA(t276) = CAST zlnt_runtime_dyna_a429568d5be8( t268 ).
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t272 ).
    t274 = zcl_lnt_st_combi_module=>seq( i_first = t275 i_second = t276 i_rest = t277 ).
    t264 = t274.
    t263 = t264.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t282) = |PAD =|.
    CREATE OBJECT t281.
    t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t281->sval = t282.
    t280 = t281.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA(t285) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t284->cval = t285.
    ENDIF.
    t283 = t284.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t287.
    t286 = t287.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t289) = CAST zlnt_runtime_dyna_a429568d5be8( t280 ).
    DATA(t290) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t291) = CAST zlnt_runtime_arra_c22708faf2e3( t286 ).
    t288 = zcl_lnt_st_combi_module=>seq( i_first = t289 i_second = t290 i_rest = t291 ).
    t279 = t288.
    t278 = t279.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t292.
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t296) = |NUMBER =|.
    CREATE OBJECT t295.
    t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t295->sval = t296.
    t294 = t295.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA(t299) = CAST zif_lnt_statement_runnable( t96 ).
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
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t304) = CAST zlnt_runtime_dyna_a429568d5be8( t294 ).
    DATA(t305) = CAST zlnt_runtime_dyna_a429568d5be8( t297 ).
    DATA(t306) = CAST zlnt_runtime_arra_c22708faf2e3( t301 ).
    t303 = zcl_lnt_st_combi_module=>seq( i_first = t304 i_second = t305 i_rest = t306 ).
    t293 = t303.
    t292 = t293.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t311) = |SIGN =|.
    CREATE OBJECT t310.
    t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t310->sval = t311.
    t309 = t310.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = CAST zif_lnt_statement_runnable( t119 ).
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t315 TYPE REF TO object.
      t315 = t314.
      t313->oval = t315.
    ENDIF.
    t312 = t313.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t317.
    t316 = t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t319) = CAST zlnt_runtime_dyna_a429568d5be8( t309 ).
    DATA(t320) = CAST zlnt_runtime_dyna_a429568d5be8( t312 ).
    DATA(t321) = CAST zlnt_runtime_arra_c22708faf2e3( t316 ).
    t318 = zcl_lnt_st_combi_module=>seq( i_first = t319 i_second = t320 i_rest = t321 ).
    t308 = t318.
    t307 = t308.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t326) = |DECIMALS =|.
    CREATE OBJECT t325.
    t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t325->sval = t326.
    t324 = t325.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA(t329) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA t339 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t339.
    DATA t340 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t341.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t341 = zcl_lnt_version_module=>release_b8cd.
    DATA(t342) = |v740sp02|.
    t340 = t341->get( p0 = t342 ).
    t339 = t340.
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t343 TYPE REF TO object.
      t343 = t339.
      t338->oval = t343.
    ENDIF.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t348) = |ALPHA =|.
    CREATE OBJECT t347.
    t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t347->sval = t348.
    t346 = t347.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = CAST zif_lnt_statement_runnable( t1 ).
    IF t351 IS BOUND.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t352 TYPE REF TO object.
      t352 = t351.
      t350->oval = t352.
    ENDIF.
    t349 = t350.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t354.
    t353 = t354.
    DATA t355 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t356) = CAST zlnt_runtime_dyna_a429568d5be8( t346 ).
    DATA(t357) = CAST zlnt_runtime_dyna_a429568d5be8( t349 ).
    DATA(t358) = CAST zlnt_runtime_arra_c22708faf2e3( t353 ).
    t355 = zcl_lnt_st_combi_module=>seq( i_first = t356 i_second = t357 i_rest = t358 ).
    t345 = t355.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t359 TYPE REF TO object.
      t359 = t345.
      t344->oval = t359.
    ENDIF.
    DATA t360 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t360.
    DATA(t361) = abap_true.
    IF t361 = abap_true.
      DATA t362 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t362.
      DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t363.
      DATA(t364) = abap_true.
      IF t364 = abap_true.
        DATA(t365) = |OpenABAP|.
        DATA(t366) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t366->has = abap_true.
        t366->value = t365.
        t363 = t366.
      ELSE.
        DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t367.
        t363 = t367.
      ENDIF.
      t362 = NEW zcl_lnt_iver_options( i_also = t363 ).
      t360 = t362.
    ELSE.
      DATA t368 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t368.
      t360 = t368.
    ENDIF.
    t337 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t338 i_first = t344 i_opts = t360 ).
    t336 = t337.
    DATA t369 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t369.
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t370.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t372.
    DATA t373 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t374.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t374 = zcl_lnt_version_module=>release_b8cd.
    DATA(t375) = |v740sp02|.
    t373 = t374->get( p0 = t375 ).
    t372 = t373.
    IF t372 IS BOUND.
      CREATE OBJECT t371.
      t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t376 TYPE REF TO object.
      t376 = t372.
      t371->oval = t376.
    ENDIF.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t381) = |XSD =|.
    CREATE OBJECT t380.
    t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t380->sval = t381.
    t379 = t380.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA(t384) = CAST zif_lnt_statement_runnable( t171 ).
    IF t384 IS BOUND.
      CREATE OBJECT t383.
      t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t385 TYPE REF TO object.
      t385 = t384.
      t383->oval = t385.
    ENDIF.
    t382 = t383.
    DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t387.
    t386 = t387.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t389) = CAST zlnt_runtime_dyna_a429568d5be8( t379 ).
    DATA(t390) = CAST zlnt_runtime_dyna_a429568d5be8( t382 ).
    DATA(t391) = CAST zlnt_runtime_arra_c22708faf2e3( t386 ).
    t388 = zcl_lnt_st_combi_module=>seq( i_first = t389 i_second = t390 i_rest = t391 ).
    t378 = t388.
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t392 TYPE REF TO object.
      t392 = t378.
      t377->oval = t392.
    ENDIF.
    DATA t393 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t393.
    t370 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t371 i_first = t377 i_opts = t393 ).
    t369 = t370.
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t394.
    DATA t395 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t395.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t398) = |COUNTRY =|.
    CREATE OBJECT t397.
    t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t397->sval = t398.
    t396 = t397.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t400.
    DATA(t401) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t401 IS BOUND.
      CREATE OBJECT t400.
      t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t400->cval = t401.
    ENDIF.
    t399 = t400.
    DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t403.
    t402 = t403.
    DATA t404 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t405) = CAST zlnt_runtime_dyna_a429568d5be8( t396 ).
    DATA(t406) = CAST zlnt_runtime_dyna_a429568d5be8( t399 ).
    DATA(t407) = CAST zlnt_runtime_arra_c22708faf2e3( t402 ).
    t404 = zcl_lnt_st_combi_module=>seq( i_first = t405 i_second = t406 i_rest = t407 ).
    t395 = t404.
    t394 = t395.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t408.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t412.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t415) = |TIME =|.
    CREATE OBJECT t414.
    t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t414->sval = t415.
    t413 = t414.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA(t418) = CAST zif_lnt_statement_runnable( t44 ).
    IF t418 IS BOUND.
      CREATE OBJECT t417.
      t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t419 TYPE REF TO object.
      t419 = t418.
      t417->oval = t419.
    ENDIF.
    t416 = t417.
    DATA t420 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t421 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t421.
    t420 = t421.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t423) = CAST zlnt_runtime_dyna_a429568d5be8( t413 ).
    DATA(t424) = CAST zlnt_runtime_dyna_a429568d5be8( t416 ).
    DATA(t425) = CAST zlnt_runtime_arra_c22708faf2e3( t420 ).
    t422 = zcl_lnt_st_combi_module=>seq( i_first = t423 i_second = t424 i_rest = t425 ).
    t412 = t422.
    IF t412 IS BOUND.
      CREATE OBJECT t411.
      t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t426 TYPE REF TO object.
      t426 = t412.
      t411->oval = t426.
    ENDIF.
    t410 = t411.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA t429 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t432) = |DATE =|.
    CREATE OBJECT t431.
    t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t431->sval = t432.
    t430 = t431.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA(t435) = CAST zif_lnt_statement_runnable( t44 ).
    IF t435 IS BOUND.
      CREATE OBJECT t434.
      t434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t436 TYPE REF TO object.
      t436 = t435.
      t434->oval = t436.
    ENDIF.
    t433 = t434.
    DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t438.
    t437 = t438.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t440) = CAST zlnt_runtime_dyna_a429568d5be8( t430 ).
    DATA(t441) = CAST zlnt_runtime_dyna_a429568d5be8( t433 ).
    DATA(t442) = CAST zlnt_runtime_arra_c22708faf2e3( t437 ).
    t439 = zcl_lnt_st_combi_module=>seq( i_first = t440 i_second = t441 i_rest = t442 ).
    t429 = t439.
    IF t429 IS BOUND.
      CREATE OBJECT t428.
      t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t443 TYPE REF TO object.
      t443 = t429.
      t428->oval = t443.
    ENDIF.
    t427 = t428.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t445 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t445.
    t444 = t445.
    DATA(t446) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA t448 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t448.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t451) = |CASE =|.
    CREATE OBJECT t450.
    t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t450->sval = t451.
    t449 = t450.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t452.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA(t454) = CAST zif_lnt_statement_runnable( t148 ).
    IF t454 IS BOUND.
      CREATE OBJECT t453.
      t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t455 TYPE REF TO object.
      t455 = t454.
      t453->oval = t455.
    ENDIF.
    t452 = t453.
    DATA t456 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t457 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t457.
    t456 = t457.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t459) = CAST zlnt_runtime_dyna_a429568d5be8( t449 ).
    DATA(t460) = CAST zlnt_runtime_dyna_a429568d5be8( t452 ).
    DATA(t461) = CAST zlnt_runtime_arra_c22708faf2e3( t456 ).
    t458 = zcl_lnt_st_combi_module=>seq( i_first = t459 i_second = t460 i_rest = t461 ).
    t448 = t458.
    IF t448 IS BOUND.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t462 TYPE REF TO object.
      t462 = t448.
      t447->oval = t462.
    ENDIF.
    APPEND t447 TO t446->items.
    DATA(t463) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA t465 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t465.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t468) = |EXPONENT|.
    CREATE OBJECT t467.
    t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t467->sval = t468.
    t466 = t467.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA(t471) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t471 IS BOUND.
      CREATE OBJECT t470.
      t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t470->cval = t471.
    ENDIF.
    t469 = t470.
    DATA t472 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t473 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t473.
    t472 = t473.
    DATA t474 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t475) = CAST zlnt_runtime_dyna_a429568d5be8( t466 ).
    DATA(t476) = CAST zlnt_runtime_dyna_a429568d5be8( t469 ).
    DATA(t477) = CAST zlnt_runtime_arra_c22708faf2e3( t472 ).
    t474 = zcl_lnt_st_combi_module=>seq( i_first = t475 i_second = t476 i_rest = t477 ).
    t465 = t474.
    IF t465 IS BOUND.
      CREATE OBJECT t464.
      t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t478 TYPE REF TO object.
      t478 = t465.
      t464->oval = t478.
    ENDIF.
    APPEND t464 TO t463->items.
    DATA(t479) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t480.
    DATA t481 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t481.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t484) = |ZERO =|.
    CREATE OBJECT t483.
    t483->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t483->sval = t484.
    t482 = t483.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t485.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t486.
    DATA(t487) = CAST zif_lnt_statement_runnable( t171 ).
    IF t487 IS BOUND.
      CREATE OBJECT t486.
      t486->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t488 TYPE REF TO object.
      t488 = t487.
      t486->oval = t488.
    ENDIF.
    t485 = t486.
    DATA t489 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t490 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t490.
    t489 = t490.
    DATA t491 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t492) = CAST zlnt_runtime_dyna_a429568d5be8( t482 ).
    DATA(t493) = CAST zlnt_runtime_dyna_a429568d5be8( t485 ).
    DATA(t494) = CAST zlnt_runtime_arra_c22708faf2e3( t489 ).
    t491 = zcl_lnt_st_combi_module=>seq( i_first = t492 i_second = t493 i_rest = t494 ).
    t481 = t491.
    IF t481 IS BOUND.
      CREATE OBJECT t480.
      t480->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t495 TYPE REF TO object.
      t495 = t481.
      t480->oval = t495.
    ENDIF.
    APPEND t480 TO t479->items.
    DATA(t496) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t497.
    DATA(t498) = CAST zif_lnt_statement_runnable( t369 ).
    IF t498 IS BOUND.
      CREATE OBJECT t497.
      t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t499 TYPE REF TO object.
      t499 = t498.
      t497->oval = t499.
    ENDIF.
    APPEND t497 TO t496->items.
    DATA(t500) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    DATA t502 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t505) = |STYLE =|.
    CREATE OBJECT t504.
    t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t504->sval = t505.
    t503 = t504.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA(t508) = CAST zif_lnt_statement_runnable( t188 ).
    IF t508 IS BOUND.
      CREATE OBJECT t507.
      t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t509 TYPE REF TO object.
      t509 = t508.
      t507->oval = t509.
    ENDIF.
    t506 = t507.
    DATA t510 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t511 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t511.
    t510 = t511.
    DATA t512 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t513) = CAST zlnt_runtime_dyna_a429568d5be8( t503 ).
    DATA(t514) = CAST zlnt_runtime_dyna_a429568d5be8( t506 ).
    DATA(t515) = CAST zlnt_runtime_arra_c22708faf2e3( t510 ).
    t512 = zcl_lnt_st_combi_module=>seq( i_first = t513 i_second = t514 i_rest = t515 ).
    t502 = t512.
    IF t502 IS BOUND.
      CREATE OBJECT t501.
      t501->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t516 TYPE REF TO object.
      t516 = t502.
      t501->oval = t516.
    ENDIF.
    APPEND t501 TO t500->items.
    DATA(t517) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t518.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t519.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t522) = |CURRENCY =|.
    CREATE OBJECT t521.
    t521->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t521->sval = t522.
    t520 = t521.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t523.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t524.
    DATA(t525) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t525 IS BOUND.
      CREATE OBJECT t524.
      t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t524->cval = t525.
    ENDIF.
    t523 = t524.
    DATA t526 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t527 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t527.
    t526 = t527.
    DATA t528 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t529) = CAST zlnt_runtime_dyna_a429568d5be8( t520 ).
    DATA(t530) = CAST zlnt_runtime_dyna_a429568d5be8( t523 ).
    DATA(t531) = CAST zlnt_runtime_arra_c22708faf2e3( t526 ).
    t528 = zcl_lnt_st_combi_module=>seq( i_first = t529 i_second = t530 i_rest = t531 ).
    t519 = t528.
    IF t519 IS BOUND.
      CREATE OBJECT t518.
      t518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t532 TYPE REF TO object.
      t532 = t519.
      t518->oval = t532.
    ENDIF.
    APPEND t518 TO t517->items.
    DATA(t533) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t534.
    DATA t535 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t535.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t537.
    DATA(t538) = CAST zif_lnt_statement_runnable( t307 ).
    IF t538 IS BOUND.
      CREATE OBJECT t537.
      t537->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t539 TYPE REF TO object.
      t539 = t538.
      t537->oval = t539.
    ENDIF.
    t536 = t537.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA(t542) = CAST zif_lnt_statement_runnable( t292 ).
    IF t542 IS BOUND.
      CREATE OBJECT t541.
      t541->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t543 TYPE REF TO object.
      t543 = t542.
      t541->oval = t543.
    ENDIF.
    t540 = t541.
    DATA t544 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t545 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t545.
    t544 = t545.
    DATA(t546) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA(t548) = CAST zif_lnt_statement_runnable( t322 ).
    IF t548 IS BOUND.
      CREATE OBJECT t547.
      t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t549 TYPE REF TO object.
      t549 = t548.
      t547->oval = t549.
    ENDIF.
    APPEND t547 TO t546->items.
    DATA(t550) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t551.
    DATA(t552) = CAST zif_lnt_statement_runnable( t220 ).
    IF t552 IS BOUND.
      CREATE OBJECT t551.
      t551->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t553 TYPE REF TO object.
      t553 = t552.
      t551->oval = t553.
    ENDIF.
    APPEND t551 TO t550->items.
    DATA(t554) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t555.
    DATA(t556) = CAST zif_lnt_statement_runnable( t278 ).
    IF t556 IS BOUND.
      CREATE OBJECT t555.
      t555->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t557 TYPE REF TO object.
      t557 = t556.
      t555->oval = t557.
    ENDIF.
    APPEND t555 TO t554->items.
    DATA(t558) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    DATA(t560) = CAST zif_lnt_statement_runnable( t336 ).
    IF t560 IS BOUND.
      CREATE OBJECT t559.
      t559->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t561 TYPE REF TO object.
      t561 = t560.
      t559->oval = t561.
    ENDIF.
    APPEND t559 TO t558->items.
    DATA(t562) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t563.
    DATA(t564) = CAST zif_lnt_statement_runnable( t234 ).
    IF t564 IS BOUND.
      CREATE OBJECT t563.
      t563->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t565 TYPE REF TO object.
      t565 = t564.
      t563->oval = t565.
    ENDIF.
    APPEND t563 TO t562->items.
    DATA(t566) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t567.
    DATA(t568) = CAST zif_lnt_statement_runnable( t394 ).
    IF t568 IS BOUND.
      CREATE OBJECT t567.
      t567->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t569 TYPE REF TO object.
      t569 = t568.
      t567->oval = t569.
    ENDIF.
    APPEND t567 TO t566->items.
    DATA t570 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t571) = CAST zlnt_runtime_dyna_a429568d5be8( t536 ).
    DATA(t572) = CAST zlnt_runtime_dyna_a429568d5be8( t540 ).
    DATA(t573) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    t570 = zcl_lnt_st_combi_module=>per( i_first = t571 i_second = t572 i_rest = t573 ).
    t535 = t570.
    IF t535 IS BOUND.
      CREATE OBJECT t534.
      t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t574 TYPE REF TO object.
      t574 = t535.
      t534->oval = t574.
    ENDIF.
    APPEND t534 TO t533->items.
    DATA(t575) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA t577 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t577.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA(t580) = CAST zif_lnt_statement_runnable( t249 ).
    IF t580 IS BOUND.
      CREATE OBJECT t579.
      t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t581 TYPE REF TO object.
      t581 = t580.
      t579->oval = t581.
    ENDIF.
    t578 = t579.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t583.
    DATA(t584) = CAST zif_lnt_statement_runnable( t263 ).
    IF t584 IS BOUND.
      CREATE OBJECT t583.
      t583->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t585 TYPE REF TO object.
      t585 = t584.
      t583->oval = t585.
    ENDIF.
    t582 = t583.
    DATA t586 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t587 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t587.
    t586 = t587.
    DATA t588 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t589) = CAST zlnt_runtime_dyna_a429568d5be8( t578 ).
    DATA(t590) = CAST zlnt_runtime_dyna_a429568d5be8( t582 ).
    DATA(t591) = CAST zlnt_runtime_arra_c22708faf2e3( t586 ).
    t588 = zcl_lnt_st_combi_module=>per( i_first = t589 i_second = t590 i_rest = t591 ).
    t577 = t588.
    IF t577 IS BOUND.
      CREATE OBJECT t576.
      t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t592 TYPE REF TO object.
      t592 = t577.
      t576->oval = t592.
    ENDIF.
    APPEND t576 TO t575->items.
    DATA t593 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t594) = CAST zlnt_runtime_dyna_a429568d5be8( t410 ).
    DATA(t595) = CAST zlnt_runtime_dyna_a429568d5be8( t427 ).
    DATA(t596) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    t593 = zcl_lnt_st_combi_module=>alt_prio( i_first = t594 i_second = t595 i_rest = t596 ).
    t409 = t593.
    t408 = t409.
    DATA(t597) = CAST zif_lnt_statement_runnable( t408 ).
    result = t597.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d330_a5190e54e774.
  ENDMETHOD.
ENDCLASS.
