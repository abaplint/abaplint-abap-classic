* TS: src/abap/2_statements/expressions/string_template_formatting.ts:7:1 StringTemplateFormatting
CLASS zcl_lnt_strng_tmplt_frmttng DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_strng_tmplt_frmttng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |OUT|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |RAW|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |IN|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t9.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t15.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA(t18) = t3.
    DATA(t19) = t6.
    DATA(t20) = t9.
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t19 i_rest = t20 ).
    t2 = t17.
    t1 = t2.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = |LEFT|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = |RIGHT|.
    CLEAR t27.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    CREATE OBJECT t30.
    t29 = t30.
    DATA(t31) = t29.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = |CENTER|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31->load( ).
    APPEND t32 TO t31->items.
    t31->save( ).
    DATA(t34) = t29.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t35.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34->load( ).
    APPEND t35 TO t34->items.
    t34->save( ).
    DATA(t37) = t29.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t38.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t37->load( ).
    APPEND t38 TO t37->items.
    t37->save( ).
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA(t41) = t23.
    DATA(t42) = t26.
    DATA(t43) = t29.
    t40 = zcl_lnt_st_combi_module=>alt_prio( i_first = t41 i_second = t42 i_rest = t43 ).
    t22 = t40.
    t21 = t22.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = |RAW|.
    CLEAR t47.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = |ISO|.
    CLEAR t50.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    CREATE OBJECT t53.
    t52 = t53.
    DATA(t54) = t52.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = |USER|.
    CLEAR t55.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    t54->load( ).
    APPEND t55 TO t54->items.
    t54->save( ).
    DATA(t57) = t52.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = |ENVIRONMENT|.
    CLEAR t58.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    t57->load( ).
    APPEND t58 TO t57->items.
    t57->save( ).
    DATA(t60) = t52.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t61.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60->load( ).
    APPEND t61 TO t60->items.
    t60->save( ).
    DATA(t63) = t52.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t64.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    t63->load( ).
    APPEND t64 TO t63->items.
    t63->save( ).
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA(t67) = t46.
    DATA(t68) = t49.
    DATA(t69) = t52.
    t66 = zcl_lnt_st_combi_module=>alt_prio( i_first = t67 i_second = t68 i_rest = t69 ).
    t45 = t66.
    t44 = t45.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = |SPACE|.
    CLEAR t73.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = |ISO|.
    CLEAR t76.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    CREATE OBJECT t79.
    t78 = t79.
    DATA(t80) = t78.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = |USER|.
    CLEAR t81.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    t80->load( ).
    APPEND t81 TO t80->items.
    t80->save( ).
    DATA(t83) = t78.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = |ENVIRONMENT|.
    CLEAR t84.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    t83->load( ).
    APPEND t84 TO t83->items.
    t83->save( ).
    DATA(t86) = t78.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t87.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t86->load( ).
    APPEND t87 TO t86->items.
    t86->save( ).
    DATA(t89) = t78.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t90.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    t89->load( ).
    APPEND t90 TO t89->items.
    t89->save( ).
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA(t93) = t72.
    DATA(t94) = t75.
    DATA(t95) = t78.
    t92 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t94 i_rest = t95 ).
    t71 = t92.
    t70 = t71.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = |RAW|.
    CLEAR t99.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = t100.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = |USER|.
    CLEAR t102.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t105.
    CREATE OBJECT t105.
    t104 = t105.
    DATA(t106) = t104.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = |ENVIRONMENT|.
    CLEAR t107.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106->load( ).
    APPEND t107 TO t106->items.
    t106->save( ).
    DATA(t109) = t104.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t110.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t109->load( ).
    APPEND t110 TO t109->items.
    t109->save( ).
    DATA(t112) = t104.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t113.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    t112->load( ).
    APPEND t113 TO t112->items.
    t112->save( ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA(t116) = t98.
    DATA(t117) = t101.
    DATA(t118) = t104.
    t115 = zcl_lnt_st_combi_module=>alt_prio( i_first = t116 i_second = t117 i_rest = t118 ).
    t97 = t115.
    t96 = t97.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = |LEFT|.
    CLEAR t122.
    CREATE OBJECT t122.
    t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t122->sval = t123.
    t121 = t122.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = |LEFTPLUS|.
    CLEAR t125.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t128.
    CREATE OBJECT t128.
    t127 = t128.
    DATA(t129) = t127.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = |LEFTSPACE|.
    CLEAR t130.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t129->load( ).
    APPEND t130 TO t129->items.
    t129->save( ).
    DATA(t132) = t127.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = |RIGHT|.
    CLEAR t133.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t132->load( ).
    APPEND t133 TO t132->items.
    t132->save( ).
    DATA(t135) = t127.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = |RIGHTPLUS|.
    CLEAR t136.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = t137.
    t135->load( ).
    APPEND t136 TO t135->items.
    t135->save( ).
    DATA(t138) = t127.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = |RIGHTSPACE|.
    CLEAR t139.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = t140.
    t138->load( ).
    APPEND t139 TO t138->items.
    t138->save( ).
    DATA(t141) = t127.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA(t143) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t142.
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t142->cval = t143.
    ENDIF.
    t141->load( ).
    APPEND t142 TO t141->items.
    t141->save( ).
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA(t145) = t121.
    DATA(t146) = t124.
    DATA(t147) = t127.
    t144 = zcl_lnt_st_combi_module=>alt_prio( i_first = t145 i_second = t146 i_rest = t147 ).
    t120 = t144.
    t119 = t120.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = |RAW|.
    CLEAR t151.
    CREATE OBJECT t151.
    t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t151->sval = t152.
    t150 = t151.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA(t155) = |UPPER|.
    CLEAR t154.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = t155.
    t153 = t154.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t157.
    CREATE OBJECT t157.
    t156 = t157.
    DATA(t158) = t156.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = |LOWER|.
    CLEAR t159.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = t160.
    t158->load( ).
    APPEND t159 TO t158->items.
    t158->save( ).
    DATA(t161) = t156.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA(t163) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t162.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t162->cval = t163.
    ENDIF.
    t161->load( ).
    APPEND t162 TO t161->items.
    t161->save( ).
    DATA(t164) = t156.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t165.
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t165->cval = t166.
    ENDIF.
    t164->load( ).
    APPEND t165 TO t164->items.
    t164->save( ).
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA(t168) = t150.
    DATA(t169) = t153.
    DATA(t170) = t156.
    t167 = zcl_lnt_st_combi_module=>alt_prio( i_first = t168 i_second = t169 i_rest = t170 ).
    t149 = t167.
    t148 = t149.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = |YES|.
    CLEAR t174.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = |NO|.
    CLEAR t177.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = t178.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    CREATE OBJECT t180.
    t179 = t180.
    DATA(t181) = t179.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t182.
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t182->cval = t183.
    ENDIF.
    t181->load( ).
    APPEND t182 TO t181->items.
    t181->save( ).
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA(t185) = t173.
    DATA(t186) = t176.
    DATA(t187) = t179.
    t184 = zcl_lnt_st_combi_module=>alt_prio( i_first = t185 i_second = t186 i_rest = t187 ).
    t172 = t184.
    t171 = t172.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = |SIMPLE|.
    CLEAR t191.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = |SIGN_AS_POSTFIX|.
    CLEAR t194.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    CREATE OBJECT t197.
    t196 = t197.
    DATA(t198) = t196.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = |SCALE_PRESERVING|.
    CLEAR t199.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = t200.
    t198->load( ).
    APPEND t199 TO t198->items.
    t198->save( ).
    DATA(t201) = t196.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = |SCIENTIFIC|.
    CLEAR t202.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
    t201->load( ).
    APPEND t202 TO t201->items.
    t201->save( ).
    DATA(t204) = t196.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = |SCIENTIFIC_WITH_LEADING_ZERO|.
    CLEAR t205.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t204->load( ).
    APPEND t205 TO t204->items.
    t204->save( ).
    DATA(t207) = t196.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA(t209) = |SCALE_PRESERVING_SCIENTIFIC|.
    CLEAR t208.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207->load( ).
    APPEND t208 TO t207->items.
    t207->save( ).
    DATA(t210) = t196.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = |ENGINEERING|.
    CLEAR t211.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    t210->load( ).
    APPEND t211 TO t210->items.
    t210->save( ).
    DATA(t213) = t196.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t214.
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    t213->load( ).
    APPEND t214 TO t213->items.
    t213->save( ).
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA(t217) = t190.
    DATA(t218) = t193.
    DATA(t219) = t196.
    t216 = zcl_lnt_st_combi_module=>alt_prio( i_first = t217 i_second = t218 i_rest = t219 ).
    t189 = t216.
    t188 = t189.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA(t224) = |WIDTH =|.
    CLEAR t223.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    t222 = t223.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t226.
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t226->cval = t227.
    ENDIF.
    t225 = t226.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t229.
    CREATE OBJECT t229.
    t228 = t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA(t231) = t222.
    DATA(t232) = t225.
    DATA(t233) = t228.
    t230 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t232 i_rest = t233 ).
    t221 = t230.
    t220 = t221.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = |ALIGN =|.
    CLEAR t237.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    t236 = t237.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = t21.
    CLEAR t240.
    IF t241 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t242.
      DATA t243 TYPE REF TO object.
      CLEAR t243.
      CLEAR t242.
      t243 = t241.
      TRY.
          t240 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t242 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t240 = t242->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t239 = t240.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t245.
    CREATE OBJECT t245.
    t244 = t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA(t247) = t236.
    DATA(t248) = t239.
    DATA(t249) = t244.
    t246 = zcl_lnt_st_combi_module=>seq( i_first = t247 i_second = t248 i_rest = t249 ).
    t235 = t246.
    t234 = t235.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = |TIMEZONE =|.
    CLEAR t253.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = t254.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t256.
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t256->cval = t257.
    ENDIF.
    t255 = t256.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t259.
    CREATE OBJECT t259.
    t258 = t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t260.
    DATA(t261) = t252.
    DATA(t262) = t255.
    DATA(t263) = t258.
    t260 = zcl_lnt_st_combi_module=>seq( i_first = t261 i_second = t262 i_rest = t263 ).
    t251 = t260.
    t250 = t251.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA(t268) = |TIMESTAMP =|.
    CLEAR t267.
    CREATE OBJECT t267.
    t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t267->sval = t268.
    t266 = t267.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = t70.
    CLEAR t270.
    IF t271 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t272.
      DATA t273 TYPE REF TO object.
      CLEAR t273.
      CLEAR t272.
      t273 = t271.
      TRY.
          t270 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t272 ?= t271.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t270 = t272->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t271.
        ENDIF.
      ENDIF.
    ENDIF.
    t269 = t270.
    DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t275.
    CREATE OBJECT t275.
    t274 = t275.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t276.
    DATA(t277) = t266.
    DATA(t278) = t269.
    DATA(t279) = t274.
    t276 = zcl_lnt_st_combi_module=>seq( i_first = t277 i_second = t278 i_rest = t279 ).
    t265 = t276.
    t264 = t265.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA(t284) = |PAD =|.
    CLEAR t283.
    CREATE OBJECT t283.
    t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t283->sval = t284.
    t282 = t283.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t286.
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t286->cval = t287.
    ENDIF.
    t285 = t286.
    DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t289.
    CREATE OBJECT t289.
    t288 = t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA(t291) = t282.
    DATA(t292) = t285.
    DATA(t293) = t288.
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t291 i_second = t292 i_rest = t293 ).
    t281 = t290.
    t280 = t281.
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA(t298) = |NUMBER =|.
    CLEAR t297.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = t298.
    t296 = t297.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = t96.
    CLEAR t300.
    IF t301 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t302.
      DATA t303 TYPE REF TO object.
      CLEAR t303.
      CLEAR t302.
      t303 = t301.
      TRY.
          t300 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    t299 = t300.
    DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t305.
    CREATE OBJECT t305.
    t304 = t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA(t307) = t296.
    DATA(t308) = t299.
    DATA(t309) = t304.
    t306 = zcl_lnt_st_combi_module=>seq( i_first = t307 i_second = t308 i_rest = t309 ).
    t295 = t306.
    t294 = t295.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = |SIGN =|.
    CLEAR t313.
    CREATE OBJECT t313.
    t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t313->sval = t314.
    t312 = t313.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = t119.
    CLEAR t316.
    IF t317 IS BOUND.
      DATA t318 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t318.
      DATA t319 TYPE REF TO object.
      CLEAR t319.
      CLEAR t318.
      t319 = t317.
      TRY.
          t316 ?= t319.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t318 ?= t317.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t318 IS BOUND.
          t316 = t318->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t317.
        ENDIF.
      ENDIF.
    ENDIF.
    t315 = t316.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t321.
    CREATE OBJECT t321.
    t320 = t321.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA(t323) = t312.
    DATA(t324) = t315.
    DATA(t325) = t320.
    t322 = zcl_lnt_st_combi_module=>seq( i_first = t323 i_second = t324 i_rest = t325 ).
    t311 = t322.
    t310 = t311.
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t326.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA(t330) = |DECIMALS =|.
    CLEAR t329.
    CREATE OBJECT t329.
    t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t329->sval = t330.
    t328 = t329.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t332.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t332->cval = t333.
    ENDIF.
    t331 = t332.
    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t335.
    CREATE OBJECT t335.
    t334 = t335.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t336.
    DATA(t337) = t328.
    DATA(t338) = t331.
    DATA(t339) = t334.
    t336 = zcl_lnt_st_combi_module=>seq( i_first = t337 i_second = t338 i_rest = t339 ).
    t327 = t336.
    t326 = t327.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t340.
    DATA t341 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA t343 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t343.
    DATA t344 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t345.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t345 = zcl_lnt_version_module=>release_b8cd.
    DATA(t346) = |v740sp02|.
    t344 = t345->get( p0 = t346 ).
    t343 = t344.
    CLEAR t342.
    IF t343 IS BOUND.
      DATA t347 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t347.
      DATA t348 TYPE REF TO object.
      CLEAR t348.
      CLEAR t347.
      t348 = t343.
      TRY.
          t342 ?= t348.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t342 IS NOT BOUND.
        TRY.
            t347 ?= t343.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t347 IS BOUND.
          t342 = t347->source( ).
        ENDIF.
        IF t342 IS NOT BOUND.
          CREATE OBJECT t342.
          t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t342->oval = t343.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA(t353) = |ALPHA =|.
    CLEAR t352.
    CREATE OBJECT t352.
    t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t352->sval = t353.
    t351 = t352.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA(t356) = t1.
    CLEAR t355.
    IF t356 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t357.
      DATA t358 TYPE REF TO object.
      CLEAR t358.
      CLEAR t357.
      t358 = t356.
      TRY.
          t355 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t355 IS NOT BOUND.
        TRY.
            t357 ?= t356.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t355 = t357->source( ).
        ENDIF.
        IF t355 IS NOT BOUND.
          CREATE OBJECT t355.
          t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t355->oval = t356.
        ENDIF.
      ENDIF.
    ENDIF.
    t354 = t355.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t360.
    CREATE OBJECT t360.
    t359 = t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA(t362) = t351.
    DATA(t363) = t354.
    DATA(t364) = t359.
    t361 = zcl_lnt_st_combi_module=>seq( i_first = t362 i_second = t363 i_rest = t364 ).
    t350 = t361.
    CLEAR t349.
    IF t350 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t365.
      DATA t366 TYPE REF TO object.
      CLEAR t366.
      CLEAR t365.
      t366 = t350.
      TRY.
          t349 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t365 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t349 = t365->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t367.
    DATA(t368) = abap_true.
    IF t368 = abap_true.
      DATA t369 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t369.
      DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t370.
      DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t371.
      DATA(t372) = abap_true.
      IF t372 = abap_true.
        DATA(t373) = |OpenABAP|.
        DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t374->has = abap_true.
        t374->value = t373.
        t371 = t374.
      ELSE.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t375.
        t371 = t375.
      ENDIF.
      t370 = t371.
      t369 = NEW zcl_lnt_iver_options( i_also = t370 ).
      CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
      t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t376.
      IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t376 ).
      ENDIF.
      CREATE OBJECT t369->zlnt_json_ownkeys_70e5fd461788.
      t369->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t377) = |also|.
      DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t378.
      IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
      ENDIF.
      t367 = t369.
    ELSE.
      DATA t379 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t379.
      t367 = t379.
    ENDIF.
    t341 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t342 i_first = t349 i_opts = t367 ).
    t340 = t341.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA t383 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t383.
    DATA t384 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t385.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t385 = zcl_lnt_version_module=>release_b8cd.
    DATA(t386) = |v740sp02|.
    t384 = t385->get( p0 = t386 ).
    t383 = t384.
    CLEAR t382.
    IF t383 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t387.
      DATA t388 TYPE REF TO object.
      CLEAR t388.
      CLEAR t387.
      t388 = t383.
      TRY.
          t382 ?= t388.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t382 IS NOT BOUND.
        TRY.
            t387 ?= t383.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t382 = t387->source( ).
        ENDIF.
        IF t382 IS NOT BOUND.
          CREATE OBJECT t382.
          t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t382->oval = t383.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA(t393) = |XSD =|.
    CLEAR t392.
    CREATE OBJECT t392.
    t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t392->sval = t393.
    t391 = t392.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA(t396) = t171.
    CLEAR t395.
    IF t396 IS BOUND.
      DATA t397 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t397.
      DATA t398 TYPE REF TO object.
      CLEAR t398.
      CLEAR t397.
      t398 = t396.
      TRY.
          t395 ?= t398.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t395 IS NOT BOUND.
        TRY.
            t397 ?= t396.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t397 IS BOUND.
          t395 = t397->source( ).
        ENDIF.
        IF t395 IS NOT BOUND.
          CREATE OBJECT t395.
          t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t395->oval = t396.
        ENDIF.
      ENDIF.
    ENDIF.
    t394 = t395.
    DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t399.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t400.
    CREATE OBJECT t400.
    t399 = t400.
    DATA t401 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t401.
    DATA(t402) = t391.
    DATA(t403) = t394.
    DATA(t404) = t399.
    t401 = zcl_lnt_st_combi_module=>seq( i_first = t402 i_second = t403 i_rest = t404 ).
    t390 = t401.
    CLEAR t389.
    IF t390 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t405.
      DATA t406 TYPE REF TO object.
      CLEAR t406.
      CLEAR t405.
      t406 = t390.
      TRY.
          t389 ?= t406.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t389 IS NOT BOUND.
        TRY.
            t405 ?= t390.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t389 = t405->source( ).
        ENDIF.
        IF t389 IS NOT BOUND.
          CREATE OBJECT t389.
          t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t389->oval = t390.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t407 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t407.
    t381 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t382 i_first = t389 i_opts = t407 ).
    t380 = t381.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t408.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA(t412) = |COUNTRY =|.
    CLEAR t411.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t411->sval = t412.
    t410 = t411.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA(t415) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t414.
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t414->cval = t415.
    ENDIF.
    t413 = t414.
    DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t417.
    CREATE OBJECT t417.
    t416 = t417.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t418.
    DATA(t419) = t410.
    DATA(t420) = t413.
    DATA(t421) = t416.
    t418 = zcl_lnt_st_combi_module=>seq( i_first = t419 i_second = t420 i_rest = t421 ).
    t409 = t418.
    t408 = t409.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t425.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA(t429) = |TIME =|.
    CLEAR t428.
    CREATE OBJECT t428.
    t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t428->sval = t429.
    t427 = t428.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA(t432) = t44.
    CLEAR t431.
    IF t432 IS BOUND.
      DATA t433 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t433.
      DATA t434 TYPE REF TO object.
      CLEAR t434.
      CLEAR t433.
      t434 = t432.
      TRY.
          t431 ?= t434.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t431 IS NOT BOUND.
        TRY.
            t433 ?= t432.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t433 IS BOUND.
          t431 = t433->source( ).
        ENDIF.
        IF t431 IS NOT BOUND.
          CREATE OBJECT t431.
          t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t431->oval = t432.
        ENDIF.
      ENDIF.
    ENDIF.
    t430 = t431.
    DATA t435 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t435.
    DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t436.
    CREATE OBJECT t436.
    t435 = t436.
    DATA t437 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t437.
    DATA(t438) = t427.
    DATA(t439) = t430.
    DATA(t440) = t435.
    t437 = zcl_lnt_st_combi_module=>seq( i_first = t438 i_second = t439 i_rest = t440 ).
    t426 = t437.
    CLEAR t425.
    IF t426 IS BOUND.
      DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t441.
      DATA t442 TYPE REF TO object.
      CLEAR t442.
      CLEAR t441.
      t442 = t426.
      TRY.
          t425 ?= t442.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t425 IS NOT BOUND.
        TRY.
            t441 ?= t426.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t441 IS BOUND.
          t425 = t441->source( ).
        ENDIF.
        IF t425 IS NOT BOUND.
          CREATE OBJECT t425.
          t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t425->oval = t426.
        ENDIF.
      ENDIF.
    ENDIF.
    t424 = t425.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t445.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = |DATE =|.
    CLEAR t447.
    CREATE OBJECT t447.
    t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t447->sval = t448.
    t446 = t447.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t450.
    DATA(t451) = t44.
    CLEAR t450.
    IF t451 IS BOUND.
      DATA t452 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t452.
      DATA t453 TYPE REF TO object.
      CLEAR t453.
      CLEAR t452.
      t453 = t451.
      TRY.
          t450 ?= t453.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t450 IS NOT BOUND.
        TRY.
            t452 ?= t451.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t452 IS BOUND.
          t450 = t452->source( ).
        ENDIF.
        IF t450 IS NOT BOUND.
          CREATE OBJECT t450.
          t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t450->oval = t451.
        ENDIF.
      ENDIF.
    ENDIF.
    t449 = t450.
    DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t455.
    CREATE OBJECT t455.
    t454 = t455.
    DATA t456 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t456.
    DATA(t457) = t446.
    DATA(t458) = t449.
    DATA(t459) = t454.
    t456 = zcl_lnt_st_combi_module=>seq( i_first = t457 i_second = t458 i_rest = t459 ).
    t445 = t456.
    CLEAR t444.
    IF t445 IS BOUND.
      DATA t460 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t460.
      DATA t461 TYPE REF TO object.
      CLEAR t461.
      CLEAR t460.
      t461 = t445.
      TRY.
          t444 ?= t461.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t444 IS NOT BOUND.
        TRY.
            t460 ?= t445.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t460 IS BOUND.
          t444 = t460->source( ).
        ENDIF.
        IF t444 IS NOT BOUND.
          CREATE OBJECT t444.
          t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t444->oval = t445.
        ENDIF.
      ENDIF.
    ENDIF.
    t443 = t444.
    DATA t462 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t463.
    CREATE OBJECT t463.
    t462 = t463.
    DATA(t464) = t462.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA t466 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t466.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    DATA(t469) = |CASE =|.
    CLEAR t468.
    CREATE OBJECT t468.
    t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t468->sval = t469.
    t467 = t468.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    DATA(t472) = t148.
    CLEAR t471.
    IF t472 IS BOUND.
      DATA t473 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t473.
      DATA t474 TYPE REF TO object.
      CLEAR t474.
      CLEAR t473.
      t474 = t472.
      TRY.
          t471 ?= t474.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t471 IS NOT BOUND.
        TRY.
            t473 ?= t472.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t473 IS BOUND.
          t471 = t473->source( ).
        ENDIF.
        IF t471 IS NOT BOUND.
          CREATE OBJECT t471.
          t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t471->oval = t472.
        ENDIF.
      ENDIF.
    ENDIF.
    t470 = t471.
    DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t475.
    DATA t476 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t476.
    CREATE OBJECT t476.
    t475 = t476.
    DATA t477 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t477.
    DATA(t478) = t467.
    DATA(t479) = t470.
    DATA(t480) = t475.
    t477 = zcl_lnt_st_combi_module=>seq( i_first = t478 i_second = t479 i_rest = t480 ).
    t466 = t477.
    CLEAR t465.
    IF t466 IS BOUND.
      DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t481.
      DATA t482 TYPE REF TO object.
      CLEAR t482.
      CLEAR t481.
      t482 = t466.
      TRY.
          t465 ?= t482.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t465 IS NOT BOUND.
        TRY.
            t481 ?= t466.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t481 IS BOUND.
          t465 = t481->source( ).
        ENDIF.
        IF t465 IS NOT BOUND.
          CREATE OBJECT t465.
          t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t465->oval = t466.
        ENDIF.
      ENDIF.
    ENDIF.
    t464->load( ).
    APPEND t465 TO t464->items.
    t464->save( ).
    DATA(t483) = t462.
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t484.
    DATA t485 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t485.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t486.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t487.
    DATA(t488) = |EXPONENT|.
    CLEAR t487.
    CREATE OBJECT t487.
    t487->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t487->sval = t488.
    t486 = t487.
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t489.
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t490.
    DATA(t491) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t490.
    IF t491 IS BOUND.
      CREATE OBJECT t490.
      t490->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t490->cval = t491.
    ENDIF.
    t489 = t490.
    DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t492.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t493.
    CREATE OBJECT t493.
    t492 = t493.
    DATA t494 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t494.
    DATA(t495) = t486.
    DATA(t496) = t489.
    DATA(t497) = t492.
    t494 = zcl_lnt_st_combi_module=>seq( i_first = t495 i_second = t496 i_rest = t497 ).
    t485 = t494.
    CLEAR t484.
    IF t485 IS BOUND.
      DATA t498 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t498.
      DATA t499 TYPE REF TO object.
      CLEAR t499.
      CLEAR t498.
      t499 = t485.
      TRY.
          t484 ?= t499.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t484 IS NOT BOUND.
        TRY.
            t498 ?= t485.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t498 IS BOUND.
          t484 = t498->source( ).
        ENDIF.
        IF t484 IS NOT BOUND.
          CREATE OBJECT t484.
          t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t484->oval = t485.
        ENDIF.
      ENDIF.
    ENDIF.
    t483->load( ).
    APPEND t484 TO t483->items.
    t483->save( ).
    DATA(t500) = t462.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    DATA t502 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA(t505) = |ZERO =|.
    CLEAR t504.
    CREATE OBJECT t504.
    t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t504->sval = t505.
    t503 = t504.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA(t508) = t171.
    CLEAR t507.
    IF t508 IS BOUND.
      DATA t509 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t509.
      DATA t510 TYPE REF TO object.
      CLEAR t510.
      CLEAR t509.
      t510 = t508.
      TRY.
          t507 ?= t510.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t507 IS NOT BOUND.
        TRY.
            t509 ?= t508.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t509 IS BOUND.
          t507 = t509->source( ).
        ENDIF.
        IF t507 IS NOT BOUND.
          CREATE OBJECT t507.
          t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t507->oval = t508.
        ENDIF.
      ENDIF.
    ENDIF.
    t506 = t507.
    DATA t511 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t511.
    DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t512.
    CREATE OBJECT t512.
    t511 = t512.
    DATA t513 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t513.
    DATA(t514) = t503.
    DATA(t515) = t506.
    DATA(t516) = t511.
    t513 = zcl_lnt_st_combi_module=>seq( i_first = t514 i_second = t515 i_rest = t516 ).
    t502 = t513.
    CLEAR t501.
    IF t502 IS BOUND.
      DATA t517 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t517.
      DATA t518 TYPE REF TO object.
      CLEAR t518.
      CLEAR t517.
      t518 = t502.
      TRY.
          t501 ?= t518.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t501 IS NOT BOUND.
        TRY.
            t517 ?= t502.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t517 IS BOUND.
          t501 = t517->source( ).
        ENDIF.
        IF t501 IS NOT BOUND.
          CREATE OBJECT t501.
          t501->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t501->oval = t502.
        ENDIF.
      ENDIF.
    ENDIF.
    t500->load( ).
    APPEND t501 TO t500->items.
    t500->save( ).
    DATA(t519) = t462.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t520.
    DATA(t521) = t380.
    CLEAR t520.
    IF t521 IS BOUND.
      DATA t522 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t522.
      DATA t523 TYPE REF TO object.
      CLEAR t523.
      CLEAR t522.
      t523 = t521.
      TRY.
          t520 ?= t523.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t520 IS NOT BOUND.
        TRY.
            t522 ?= t521.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t522 IS BOUND.
          t520 = t522->source( ).
        ENDIF.
        IF t520 IS NOT BOUND.
          CREATE OBJECT t520.
          t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t520->oval = t521.
        ENDIF.
      ENDIF.
    ENDIF.
    t519->load( ).
    APPEND t520 TO t519->items.
    t519->save( ).
    DATA(t524) = t462.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA t526 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t526.
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t527.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t528.
    DATA(t529) = |STYLE =|.
    CLEAR t528.
    CREATE OBJECT t528.
    t528->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t528->sval = t529.
    t527 = t528.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t530.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA(t532) = t188.
    CLEAR t531.
    IF t532 IS BOUND.
      DATA t533 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t533.
      DATA t534 TYPE REF TO object.
      CLEAR t534.
      CLEAR t533.
      t534 = t532.
      TRY.
          t531 ?= t534.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t531 IS NOT BOUND.
        TRY.
            t533 ?= t532.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t533 IS BOUND.
          t531 = t533->source( ).
        ENDIF.
        IF t531 IS NOT BOUND.
          CREATE OBJECT t531.
          t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t531->oval = t532.
        ENDIF.
      ENDIF.
    ENDIF.
    t530 = t531.
    DATA t535 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t535.
    DATA t536 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t536.
    CREATE OBJECT t536.
    t535 = t536.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t537.
    DATA(t538) = t527.
    DATA(t539) = t530.
    DATA(t540) = t535.
    t537 = zcl_lnt_st_combi_module=>seq( i_first = t538 i_second = t539 i_rest = t540 ).
    t526 = t537.
    CLEAR t525.
    IF t526 IS BOUND.
      DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t541.
      DATA t542 TYPE REF TO object.
      CLEAR t542.
      CLEAR t541.
      t542 = t526.
      TRY.
          t525 ?= t542.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t525 IS NOT BOUND.
        TRY.
            t541 ?= t526.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t541 IS BOUND.
          t525 = t541->source( ).
        ENDIF.
        IF t525 IS NOT BOUND.
          CREATE OBJECT t525.
          t525->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t525->oval = t526.
        ENDIF.
      ENDIF.
    ENDIF.
    t524->load( ).
    APPEND t525 TO t524->items.
    t524->save( ).
    DATA(t543) = t462.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    DATA t545 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t545.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA(t548) = |CURRENCY =|.
    CLEAR t547.
    CREATE OBJECT t547.
    t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t547->sval = t548.
    t546 = t547.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t550.
    IF t551 IS BOUND.
      CREATE OBJECT t550.
      t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t550->cval = t551.
    ENDIF.
    t549 = t550.
    DATA t552 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t552.
    DATA t553 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t553.
    CREATE OBJECT t553.
    t552 = t553.
    DATA t554 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t554.
    DATA(t555) = t546.
    DATA(t556) = t549.
    DATA(t557) = t552.
    t554 = zcl_lnt_st_combi_module=>seq( i_first = t555 i_second = t556 i_rest = t557 ).
    t545 = t554.
    CLEAR t544.
    IF t545 IS BOUND.
      DATA t558 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t558.
      DATA t559 TYPE REF TO object.
      CLEAR t559.
      CLEAR t558.
      t559 = t545.
      TRY.
          t544 ?= t559.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t544 IS NOT BOUND.
        TRY.
            t558 ?= t545.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t558 IS BOUND.
          t544 = t558->source( ).
        ENDIF.
        IF t544 IS NOT BOUND.
          CREATE OBJECT t544.
          t544->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t544->oval = t545.
        ENDIF.
      ENDIF.
    ENDIF.
    t543->load( ).
    APPEND t544 TO t543->items.
    t543->save( ).
    DATA(t560) = t462.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t562.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t563.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t564.
    DATA(t565) = t310.
    CLEAR t564.
    IF t565 IS BOUND.
      DATA t566 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t566.
      DATA t567 TYPE REF TO object.
      CLEAR t567.
      CLEAR t566.
      t567 = t565.
      TRY.
          t564 ?= t567.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t564 IS NOT BOUND.
        TRY.
            t566 ?= t565.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t566 IS BOUND.
          t564 = t566->source( ).
        ENDIF.
        IF t564 IS NOT BOUND.
          CREATE OBJECT t564.
          t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t564->oval = t565.
        ENDIF.
      ENDIF.
    ENDIF.
    t563 = t564.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t569.
    DATA(t570) = t294.
    CLEAR t569.
    IF t570 IS BOUND.
      DATA t571 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t571.
      DATA t572 TYPE REF TO object.
      CLEAR t572.
      CLEAR t571.
      t572 = t570.
      TRY.
          t569 ?= t572.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t569 IS NOT BOUND.
        TRY.
            t571 ?= t570.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t571 IS BOUND.
          t569 = t571->source( ).
        ENDIF.
        IF t569 IS NOT BOUND.
          CREATE OBJECT t569.
          t569->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t569->oval = t570.
        ENDIF.
      ENDIF.
    ENDIF.
    t568 = t569.
    DATA t573 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t573.
    DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t574.
    CREATE OBJECT t574.
    t573 = t574.
    DATA(t575) = t573.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA(t577) = t326.
    CLEAR t576.
    IF t577 IS BOUND.
      DATA t578 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t578.
      DATA t579 TYPE REF TO object.
      CLEAR t579.
      CLEAR t578.
      t579 = t577.
      TRY.
          t576 ?= t579.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t576 IS NOT BOUND.
        TRY.
            t578 ?= t577.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t578 IS BOUND.
          t576 = t578->source( ).
        ENDIF.
        IF t576 IS NOT BOUND.
          CREATE OBJECT t576.
          t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t576->oval = t577.
        ENDIF.
      ENDIF.
    ENDIF.
    t575->load( ).
    APPEND t576 TO t575->items.
    t575->save( ).
    DATA(t580) = t573.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA(t582) = t220.
    CLEAR t581.
    IF t582 IS BOUND.
      DATA t583 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t583.
      DATA t584 TYPE REF TO object.
      CLEAR t584.
      CLEAR t583.
      t584 = t582.
      TRY.
          t581 ?= t584.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t581 IS NOT BOUND.
        TRY.
            t583 ?= t582.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t583 IS BOUND.
          t581 = t583->source( ).
        ENDIF.
        IF t581 IS NOT BOUND.
          CREATE OBJECT t581.
          t581->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t581->oval = t582.
        ENDIF.
      ENDIF.
    ENDIF.
    t580->load( ).
    APPEND t581 TO t580->items.
    t580->save( ).
    DATA(t585) = t573.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t586.
    DATA(t587) = t280.
    CLEAR t586.
    IF t587 IS BOUND.
      DATA t588 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t588.
      DATA t589 TYPE REF TO object.
      CLEAR t589.
      CLEAR t588.
      t589 = t587.
      TRY.
          t586 ?= t589.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t586 IS NOT BOUND.
        TRY.
            t588 ?= t587.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t588 IS BOUND.
          t586 = t588->source( ).
        ENDIF.
        IF t586 IS NOT BOUND.
          CREATE OBJECT t586.
          t586->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t586->oval = t587.
        ENDIF.
      ENDIF.
    ENDIF.
    t585->load( ).
    APPEND t586 TO t585->items.
    t585->save( ).
    DATA(t590) = t573.
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t591.
    DATA(t592) = t340.
    CLEAR t591.
    IF t592 IS BOUND.
      DATA t593 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t593.
      DATA t594 TYPE REF TO object.
      CLEAR t594.
      CLEAR t593.
      t594 = t592.
      TRY.
          t591 ?= t594.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t591 IS NOT BOUND.
        TRY.
            t593 ?= t592.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t593 IS BOUND.
          t591 = t593->source( ).
        ENDIF.
        IF t591 IS NOT BOUND.
          CREATE OBJECT t591.
          t591->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t591->oval = t592.
        ENDIF.
      ENDIF.
    ENDIF.
    t590->load( ).
    APPEND t591 TO t590->items.
    t590->save( ).
    DATA(t595) = t573.
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t596.
    DATA(t597) = t234.
    CLEAR t596.
    IF t597 IS BOUND.
      DATA t598 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t598.
      DATA t599 TYPE REF TO object.
      CLEAR t599.
      CLEAR t598.
      t599 = t597.
      TRY.
          t596 ?= t599.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t596 IS NOT BOUND.
        TRY.
            t598 ?= t597.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t598 IS BOUND.
          t596 = t598->source( ).
        ENDIF.
        IF t596 IS NOT BOUND.
          CREATE OBJECT t596.
          t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t596->oval = t597.
        ENDIF.
      ENDIF.
    ENDIF.
    t595->load( ).
    APPEND t596 TO t595->items.
    t595->save( ).
    DATA(t600) = t573.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t601.
    DATA(t602) = t408.
    CLEAR t601.
    IF t602 IS BOUND.
      DATA t603 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t603.
      DATA t604 TYPE REF TO object.
      CLEAR t604.
      CLEAR t603.
      t604 = t602.
      TRY.
          t601 ?= t604.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t601 IS NOT BOUND.
        TRY.
            t603 ?= t602.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t603 IS BOUND.
          t601 = t603->source( ).
        ENDIF.
        IF t601 IS NOT BOUND.
          CREATE OBJECT t601.
          t601->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t601->oval = t602.
        ENDIF.
      ENDIF.
    ENDIF.
    t600->load( ).
    APPEND t601 TO t600->items.
    t600->save( ).
    DATA t605 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t605.
    DATA(t606) = t563.
    DATA(t607) = t568.
    DATA(t608) = t573.
    t605 = zcl_lnt_st_combi_module=>per( i_first = t606 i_second = t607 i_rest = t608 ).
    t562 = t605.
    CLEAR t561.
    IF t562 IS BOUND.
      DATA t609 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t609.
      DATA t610 TYPE REF TO object.
      CLEAR t610.
      CLEAR t609.
      t610 = t562.
      TRY.
          t561 ?= t610.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t561 IS NOT BOUND.
        TRY.
            t609 ?= t562.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t609 IS BOUND.
          t561 = t609->source( ).
        ENDIF.
        IF t561 IS NOT BOUND.
          CREATE OBJECT t561.
          t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t561->oval = t562.
        ENDIF.
      ENDIF.
    ENDIF.
    t560->load( ).
    APPEND t561 TO t560->items.
    t560->save( ).
    DATA(t611) = t462.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t613.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t614.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t615.
    DATA(t616) = t250.
    CLEAR t615.
    IF t616 IS BOUND.
      DATA t617 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t617.
      DATA t618 TYPE REF TO object.
      CLEAR t618.
      CLEAR t617.
      t618 = t616.
      TRY.
          t615 ?= t618.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t615 IS NOT BOUND.
        TRY.
            t617 ?= t616.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t617 IS BOUND.
          t615 = t617->source( ).
        ENDIF.
        IF t615 IS NOT BOUND.
          CREATE OBJECT t615.
          t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t615->oval = t616.
        ENDIF.
      ENDIF.
    ENDIF.
    t614 = t615.
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t619.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t620.
    DATA(t621) = t264.
    CLEAR t620.
    IF t621 IS BOUND.
      DATA t622 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t622.
      DATA t623 TYPE REF TO object.
      CLEAR t623.
      CLEAR t622.
      t623 = t621.
      TRY.
          t620 ?= t623.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t620 IS NOT BOUND.
        TRY.
            t622 ?= t621.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t622 IS BOUND.
          t620 = t622->source( ).
        ENDIF.
        IF t620 IS NOT BOUND.
          CREATE OBJECT t620.
          t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t620->oval = t621.
        ENDIF.
      ENDIF.
    ENDIF.
    t619 = t620.
    DATA t624 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t624.
    DATA t625 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t625.
    CREATE OBJECT t625.
    t624 = t625.
    DATA t626 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t626.
    DATA(t627) = t614.
    DATA(t628) = t619.
    DATA(t629) = t624.
    t626 = zcl_lnt_st_combi_module=>per( i_first = t627 i_second = t628 i_rest = t629 ).
    t613 = t626.
    CLEAR t612.
    IF t613 IS BOUND.
      DATA t630 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t630.
      DATA t631 TYPE REF TO object.
      CLEAR t631.
      CLEAR t630.
      t631 = t613.
      TRY.
          t612 ?= t631.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t612 IS NOT BOUND.
        TRY.
            t630 ?= t613.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t630 IS BOUND.
          t612 = t630->source( ).
        ENDIF.
        IF t612 IS NOT BOUND.
          CREATE OBJECT t612.
          t612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t612->oval = t613.
        ENDIF.
      ENDIF.
    ENDIF.
    t611->load( ).
    APPEND t612 TO t611->items.
    t611->save( ).
    DATA t632 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t632.
    DATA(t633) = t424.
    DATA(t634) = t443.
    DATA(t635) = t462.
    t632 = zcl_lnt_st_combi_module=>alt_prio( i_first = t633 i_second = t634 i_rest = t635 ).
    t423 = t632.
    t422 = t423.
    DATA(t636) = t422.
    result = t636.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d347_94341124f92e.
  ENDMETHOD.
ENDCLASS.
