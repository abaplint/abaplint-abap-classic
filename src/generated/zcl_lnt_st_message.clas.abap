* TS: src/abap/2_statements/statements/message.ts:7:1 Message
CLASS zcl_lnt_st_message DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_message IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |DISPLAY LIKE|.
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
    DATA(t19) = |INTO|.
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
    DATA(t31) = |KeyUser|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = |RAISING|.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t40 = t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t33 = t42.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t33.
      t32->oval = t46.
    ENDIF.
    t30 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t31 i_first = t32 ).
    t29 = t30.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
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
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = CAST zif_lnt_statement_runnable( t15 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t55.
      t54->oval = t56.
    ENDIF.
    t53 = t54.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t57 = t58.
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zif_lnt_statement_runnable( t29 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t62 TYPE REF TO object.
      t62 = t61.
      t60->oval = t62.
    ENDIF.
    APPEND t60 TO t59->items.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    t63 = zcl_lnt_st_combi_module=>per( i_first = t64 i_second = t65 i_rest = t66 ).
    t48 = t63.
    t47 = t48.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = |TYPE|.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t75 = t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t79 i_rest = t80 ).
    t68 = t77.
    t67 = t68.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = CAST zif_lnt_statement_runnable( t47 ).
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t85.
      t84->oval = t86.
    ENDIF.
    t83 = t84.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t88->cval = t89.
    ENDIF.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    t90 = t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t83 ).
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
    t92 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t94 i_rest = t95 ).
    t82 = t92.
    t81 = t82.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = CAST zif_lnt_statement_runnable( t81 ).
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t101 TYPE REF TO object.
      t101 = t100.
      t99->oval = t101.
    ENDIF.
    t98 = t99.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = CAST zif_lnt_statement_runnable( t81 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t110.
      t109->oval = t111.
    ENDIF.
    t108 = t109.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    t112 = t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    t114 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t116 i_rest = t117 ).
    t104 = t114.
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t104.
      t103->oval = t118.
    ENDIF.
    t102 = t103.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    t119 = t120.
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t125->cval = t126.
    ENDIF.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t130 = t131.
    DATA(t132) = CAST zlnt_runtime_arra_c22708faf2e3( t130 ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = CAST zif_lnt_statement_runnable( t81 ).
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t135 TYPE REF TO object.
      t135 = t134.
      t133->oval = t135.
    ENDIF.
    APPEND t133 TO t132->items.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t124 ).
    DATA(t138) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t130 ).
    t136 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t138 i_rest = t139 ).
    t123 = t136.
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t140 TYPE REF TO object.
      t140 = t123.
      t122->oval = t140.
    ENDIF.
    APPEND t122 TO t121->items.
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA(t146) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t146 IS BOUND.
      CREATE OBJECT t145.
      t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t145->cval = t146.
    ENDIF.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
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
    DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    APPEND t153 TO t152->items.
    DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = CAST zif_lnt_statement_runnable( t47 ).
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t157.
      t156->oval = t158.
    ENDIF.
    APPEND t156 TO t155->items.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t160) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
    DATA(t161) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t162) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t161 i_rest = t162 ).
    t143 = t159.
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t163 TYPE REF TO object.
      t163 = t143.
      t142->oval = t163.
    ENDIF.
    APPEND t142 TO t141->items.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t165) = CAST zlnt_runtime_dyna_a429568d5be8( t98 ).
    DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t167) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    t164 = zcl_lnt_st_combi_module=>alt( i_first = t165 i_second = t166 i_rest = t167 ).
    t97 = t164.
    t96 = t97.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = |WITH|.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    t176 = t177.
    DATA(t178) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = CAST zif_lnt_statement_runnable( t96 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t183 TYPE REF TO object.
      t183 = t182.
      t181->oval = t183.
    ENDIF.
    t180 = zcl_lnt_st_combi_module=>opt( i_first = t181 ).
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t184 TYPE REF TO object.
      t184 = t180.
      t179->oval = t184.
    ENDIF.
    APPEND t179 TO t178->items.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t170 ).
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t188) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t187 i_rest = t188 ).
    t169 = t185.
    t168 = t169.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43 ).
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t192->cval = t193.
    ENDIF.
    t191 = t192.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = CAST zif_lnt_statement_runnable( t47 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t199 TYPE REF TO object.
      t199 = t198.
      t197->oval = t199.
    ENDIF.
    t196 = zcl_lnt_st_combi_module=>opt( i_first = t197 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t200 TYPE REF TO object.
      t200 = t196.
      t195->oval = t200.
    ENDIF.
    t194 = t195.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t202.
    t201 = t202.
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = CAST zif_lnt_statement_runnable( t168 ).
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t208 TYPE REF TO object.
      t208 = t207.
      t206->oval = t208.
    ENDIF.
    t205 = zcl_lnt_st_combi_module=>opt( i_first = t206 ).
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t205.
      t204->oval = t209.
    ENDIF.
    APPEND t204 TO t203->items.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t212) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t211 i_second = t212 i_rest = t213 ).
    t190 = t210.
    t189 = t190.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    t216 = t217.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA(t221) = CAST zif_lnt_statement_runnable( t67 ).
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
    DATA(t225) = CAST zlnt_runtime_arra_c22708faf2e3( t223 ).
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = CAST zif_lnt_statement_runnable( t1 ).
    IF t229 IS BOUND.
      CREATE OBJECT t228.
      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t230 TYPE REF TO object.
      t230 = t229.
      t228->oval = t230.
    ENDIF.
    t227 = zcl_lnt_st_combi_module=>opt_prio( i_first = t228 ).
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t231 TYPE REF TO object.
      t231 = t227.
      t226->oval = t231.
    ENDIF.
    APPEND t226 TO t225->items.
    DATA(t232) = CAST zlnt_runtime_arra_c22708faf2e3( t223 ).
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = CAST zif_lnt_statement_runnable( t29 ).
    IF t236 IS BOUND.
      CREATE OBJECT t235.
      t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t237 TYPE REF TO object.
      t237 = t236.
      t235->oval = t237.
    ENDIF.
    t234 = zcl_lnt_st_combi_module=>opt_prio( i_first = t235 ).
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t238 TYPE REF TO object.
      t238 = t234.
      t233->oval = t238.
    ENDIF.
    APPEND t233 TO t232->items.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t240) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t241) = CAST zlnt_runtime_dyna_a429568d5be8( t219 ).
    DATA(t242) = CAST zlnt_runtime_arra_c22708faf2e3( t223 ).
    t239 = zcl_lnt_st_combi_module=>seq( i_first = t240 i_second = t241 i_rest = t242 ).
    t215 = t239.
    t214 = t215.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = |WITH|.
    CREATE OBJECT t251.
    t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t251->sval = t252.
    t250 = t251.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    t253 = t254.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t257.
    t256 = t257.
    DATA(t258) = CAST zlnt_runtime_arra_c22708faf2e3( t256 ).
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA(t262) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t261->cval = t262.
    ENDIF.
    t260 = zcl_lnt_st_combi_module=>opt( i_first = t261 ).
    IF t260 IS BOUND.
      CREATE OBJECT t259.
      t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t263 TYPE REF TO object.
      t263 = t260.
      t259->oval = t263.
    ENDIF.
    APPEND t259 TO t258->items.
    DATA(t264) = CAST zlnt_runtime_arra_c22708faf2e3( t256 ).
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA(t268) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t268 IS BOUND.
      CREATE OBJECT t267.
      t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t267->cval = t268.
    ENDIF.
    t266 = zcl_lnt_st_combi_module=>opt( i_first = t267 ).
    IF t266 IS BOUND.
      CREATE OBJECT t265.
      t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t269 TYPE REF TO object.
      t269 = t266.
      t265->oval = t269.
    ENDIF.
    APPEND t265 TO t264->items.
    DATA(t270) = CAST zlnt_runtime_arra_c22708faf2e3( t256 ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t273->cval = t274.
    ENDIF.
    t272 = zcl_lnt_st_combi_module=>opt( i_first = t273 ).
    IF t272 IS BOUND.
      CREATE OBJECT t271.
      t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t275 TYPE REF TO object.
      t275 = t272.
      t271->oval = t275.
    ENDIF.
    APPEND t271 TO t270->items.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t277) = CAST zlnt_runtime_dyna_a429568d5be8( t250 ).
    DATA(t278) = CAST zlnt_runtime_dyna_a429568d5be8( t253 ).
    DATA(t279) = CAST zlnt_runtime_arra_c22708faf2e3( t256 ).
    t276 = zcl_lnt_st_combi_module=>seq( i_first = t277 i_second = t278 i_rest = t279 ).
    t249 = t276.
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t280 TYPE REF TO object.
      t280 = t249.
      t248->oval = t280.
    ENDIF.
    t247 = zcl_lnt_st_combi_module=>opt( i_first = t248 ).
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t281 TYPE REF TO object.
      t281 = t247.
      t246->oval = t281.
    ENDIF.
    t245 = t246.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = CAST zif_lnt_statement_runnable( t15 ).
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t288 TYPE REF TO object.
      t288 = t287.
      t286->oval = t288.
    ENDIF.
    t285 = t286.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA(t291) = CAST zif_lnt_statement_runnable( t29 ).
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t292 TYPE REF TO object.
      t292 = t291.
      t290->oval = t292.
    ENDIF.
    t289 = t290.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t294.
    t293 = t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t296) = CAST zlnt_runtime_dyna_a429568d5be8( t285 ).
    DATA(t297) = CAST zlnt_runtime_dyna_a429568d5be8( t289 ).
    DATA(t298) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
    t295 = zcl_lnt_st_combi_module=>alt_prio( i_first = t296 i_second = t297 i_rest = t298 ).
    t284 = t295.
    IF t284 IS BOUND.
      CREATE OBJECT t283.
      t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t299 TYPE REF TO object.
      t299 = t284.
      t283->oval = t299.
    ENDIF.
    t282 = t283.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t301.
    t300 = t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t303) = CAST zlnt_runtime_dyna_a429568d5be8( t245 ).
    DATA(t304) = CAST zlnt_runtime_dyna_a429568d5be8( t282 ).
    DATA(t305) = CAST zlnt_runtime_arra_c22708faf2e3( t300 ).
    t302 = zcl_lnt_st_combi_module=>seq( i_first = t303 i_second = t304 i_rest = t305 ).
    t244 = t302.
    t243 = t244.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = CAST zif_lnt_statement_runnable( t15 ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t314 TYPE REF TO object.
      t314 = t313.
      t312->oval = t314.
    ENDIF.
    t311 = t312.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = CAST zif_lnt_statement_runnable( t29 ).
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t317.
      t316->oval = t318.
    ENDIF.
    t315 = t316.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t320.
    t319 = t320.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t322) = CAST zlnt_runtime_dyna_a429568d5be8( t311 ).
    DATA(t323) = CAST zlnt_runtime_dyna_a429568d5be8( t315 ).
    DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    t321 = zcl_lnt_st_combi_module=>alt_prio( i_first = t322 i_second = t323 i_rest = t324 ).
    t310 = t321.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t325 TYPE REF TO object.
      t325 = t310.
      t309->oval = t325.
    ENDIF.
    t308 = t309.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t333) = |WITH|.
    CREATE OBJECT t332.
    t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t332->sval = t333.
    t331 = t332.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t335->cval = t336.
    ENDIF.
    t334 = t335.
    DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t338.
    t337 = t338.
    DATA(t339) = CAST zlnt_runtime_arra_c22708faf2e3( t337 ).
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA(t343) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t343 IS BOUND.
      CREATE OBJECT t342.
      t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t342->cval = t343.
    ENDIF.
    t341 = zcl_lnt_st_combi_module=>opt( i_first = t342 ).
    IF t341 IS BOUND.
      CREATE OBJECT t340.
      t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t344 TYPE REF TO object.
      t344 = t341.
      t340->oval = t344.
    ENDIF.
    APPEND t340 TO t339->items.
    DATA(t345) = CAST zlnt_runtime_arra_c22708faf2e3( t337 ).
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA(t349) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t349 IS BOUND.
      CREATE OBJECT t348.
      t348->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t348->cval = t349.
    ENDIF.
    t347 = zcl_lnt_st_combi_module=>opt( i_first = t348 ).
    IF t347 IS BOUND.
      CREATE OBJECT t346.
      t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t350 TYPE REF TO object.
      t350 = t347.
      t346->oval = t350.
    ENDIF.
    APPEND t346 TO t345->items.
    DATA(t351) = CAST zlnt_runtime_arra_c22708faf2e3( t337 ).
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA(t355) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t355 IS BOUND.
      CREATE OBJECT t354.
      t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t354->cval = t355.
    ENDIF.
    t353 = zcl_lnt_st_combi_module=>opt( i_first = t354 ).
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t356 TYPE REF TO object.
      t356 = t353.
      t352->oval = t356.
    ENDIF.
    APPEND t352 TO t351->items.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t358) = CAST zlnt_runtime_dyna_a429568d5be8( t331 ).
    DATA(t359) = CAST zlnt_runtime_dyna_a429568d5be8( t334 ).
    DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t337 ).
    t357 = zcl_lnt_st_combi_module=>seq( i_first = t358 i_second = t359 i_rest = t360 ).
    t330 = t357.
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t361 TYPE REF TO object.
      t361 = t330.
      t329->oval = t361.
    ENDIF.
    t328 = zcl_lnt_st_combi_module=>opt( i_first = t329 ).
    IF t328 IS BOUND.
      CREATE OBJECT t327.
      t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t362 TYPE REF TO object.
      t362 = t328.
      t327->oval = t362.
    ENDIF.
    t326 = t327.
    DATA t363 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t364.
    t363 = t364.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t366) = CAST zlnt_runtime_dyna_a429568d5be8( t308 ).
    DATA(t367) = CAST zlnt_runtime_dyna_a429568d5be8( t326 ).
    DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t363 ).
    t365 = zcl_lnt_st_combi_module=>seq( i_first = t366 i_second = t367 i_rest = t368 ).
    t307 = t365.
    t306 = t307.
    DATA t369 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t369.
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t370.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA(t373) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43 ).
    IF t373 IS BOUND.
      CREATE OBJECT t372.
      t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t372->cval = t373.
    ENDIF.
    t371 = t372.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t376.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA(t379) = CAST zif_lnt_statement_runnable( t243 ).
    IF t379 IS BOUND.
      CREATE OBJECT t378.
      t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t380 TYPE REF TO object.
      t380 = t379.
      t378->oval = t380.
    ENDIF.
    t377 = t378.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA(t383) = CAST zif_lnt_statement_runnable( t306 ).
    IF t383 IS BOUND.
      CREATE OBJECT t382.
      t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t384 TYPE REF TO object.
      t384 = t383.
      t382->oval = t384.
    ENDIF.
    t381 = t382.
    DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t386.
    t385 = t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t388) = CAST zlnt_runtime_dyna_a429568d5be8( t377 ).
    DATA(t389) = CAST zlnt_runtime_dyna_a429568d5be8( t381 ).
    DATA(t390) = CAST zlnt_runtime_arra_c22708faf2e3( t385 ).
    t387 = zcl_lnt_st_combi_module=>alt( i_first = t388 i_second = t389 i_rest = t390 ).
    t376 = t387.
    IF t376 IS BOUND.
      CREATE OBJECT t375.
      t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t391 TYPE REF TO object.
      t391 = t376.
      t375->oval = t391.
    ENDIF.
    t374 = t375.
    DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t393.
    t392 = t393.
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t395) = CAST zlnt_runtime_dyna_a429568d5be8( t371 ).
    DATA(t396) = CAST zlnt_runtime_dyna_a429568d5be8( t374 ).
    DATA(t397) = CAST zlnt_runtime_arra_c22708faf2e3( t392 ).
    t394 = zcl_lnt_st_combi_module=>seq( i_first = t395 i_second = t396 i_rest = t397 ).
    t370 = t394.
    t369 = t370.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t398.
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t399.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t402) = |MESSAGE|.
    CREATE OBJECT t401.
    t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t401->sval = t402.
    t400 = t401.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t404.
    DATA t405 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t405.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t406.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t408.
    DATA(t409) = |Cloud|.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA(t411) = CAST zif_lnt_statement_runnable( t189 ).
    IF t411 IS BOUND.
      CREATE OBJECT t410.
      t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t412 TYPE REF TO object.
      t412 = t411.
      t410->oval = t412.
    ENDIF.
    t408 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t409 i_first = t410 ).
    IF t408 IS BOUND.
      CREATE OBJECT t407.
      t407->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t413 TYPE REF TO object.
      t413 = t408.
      t407->oval = t413.
    ENDIF.
    t406 = t407.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA(t417) = |Cloud|.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA(t419) = CAST zif_lnt_statement_runnable( t214 ).
    IF t419 IS BOUND.
      CREATE OBJECT t418.
      t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t420 TYPE REF TO object.
      t420 = t419.
      t418->oval = t420.
    ENDIF.
    t416 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t417 i_first = t418 ).
    IF t416 IS BOUND.
      CREATE OBJECT t415.
      t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t421 TYPE REF TO object.
      t421 = t416.
      t415->oval = t421.
    ENDIF.
    t414 = t415.
    DATA t422 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t423.
    t422 = t423.
    DATA(t424) = CAST zlnt_runtime_arra_c22708faf2e3( t422 ).
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t425.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t426.
    DATA(t427) = |Cloud|.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA(t429) = CAST zif_lnt_statement_runnable( t369 ).
    IF t429 IS BOUND.
      CREATE OBJECT t428.
      t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t430 TYPE REF TO object.
      t430 = t429.
      t428->oval = t430.
    ENDIF.
    t426 = zcl_lnt_st_combi_module=>ver_lang( i_lang_version = t427 i_first = t428 ).
    IF t426 IS BOUND.
      CREATE OBJECT t425.
      t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t431 TYPE REF TO object.
      t431 = t426.
      t425->oval = t431.
    ENDIF.
    APPEND t425 TO t424->items.
    DATA t432 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t433) = CAST zlnt_runtime_dyna_a429568d5be8( t406 ).
    DATA(t434) = CAST zlnt_runtime_dyna_a429568d5be8( t414 ).
    DATA(t435) = CAST zlnt_runtime_arra_c22708faf2e3( t422 ).
    t432 = zcl_lnt_st_combi_module=>alt_prio( i_first = t433 i_second = t434 i_rest = t435 ).
    t405 = t432.
    IF t405 IS BOUND.
      CREATE OBJECT t404.
      t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t436 TYPE REF TO object.
      t436 = t405.
      t404->oval = t436.
    ENDIF.
    t403 = t404.
    DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t438.
    t437 = t438.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t440) = CAST zlnt_runtime_dyna_a429568d5be8( t400 ).
    DATA(t441) = CAST zlnt_runtime_dyna_a429568d5be8( t403 ).
    DATA(t442) = CAST zlnt_runtime_arra_c22708faf2e3( t437 ).
    t439 = zcl_lnt_st_combi_module=>seq( i_first = t440 i_second = t441 i_rest = t442 ).
    t399 = t439.
    t398 = t399.
    DATA(t443) = CAST zif_lnt_statement_runnable( t398 ).
    result = t443.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d535_c4d9172ef5ea.
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
