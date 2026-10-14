* TS: src/abap/2_statements/statements/create_data.ts:8:1 CreateData
CLASS zcl_lnt_st_create_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_create_data IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |AREA HANDLE|.
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
    DATA(t19) = |TYPE HANDLE|.
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
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = |TYPE|.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = |TYPE REF TO|.
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
    DATA(t44) = |TYPE TABLE OF|.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    APPEND t43 TO t42->items.
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |TYPE TABLE OF REF TO|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    APPEND t46 TO t45->items.
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = |TYPE SORTED TABLE OF|.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    APPEND t49 TO t48->items.
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = |TYPE HASHED TABLE OF|.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = t53.
    APPEND t52 TO t51->items.
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = |TYPE STANDARD TABLE OF|.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    APPEND t55 TO t54->items.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = |TYPE LINE OF|.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    APPEND t58 TO t57->items.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t60 = zcl_lnt_st_combi_module=>alt( i_first = t61 i_second = t62 i_rest = t63 ).
    t33 = t60.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t33.
      t32->oval = t64.
    ENDIF.
    t31 = t32.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t68 ).
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t71 ).
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    t76 = zcl_lnt_st_combi_module=>alt( i_first = t77 i_second = t78 i_rest = t79 ).
    t67 = t76.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t80 TYPE REF TO object.
      t80 = t67.
      t66->oval = t80.
    ENDIF.
    t65 = t66.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t81 = t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t85 i_rest = t86 ).
    t30 = t83.
    t29 = t30.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |LIKE|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = |LIKE HASHED TABLE OF|.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t98 = t99.
    DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t98 ).
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = |LIKE LINE OF|.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    APPEND t101 TO t100->items.
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t98 ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = |LIKE STANDARD TABLE OF|.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    APPEND t104 TO t103->items.
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t98 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = |LIKE SORTED TABLE OF|.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    APPEND t107 TO t106->items.
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t98 ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = |LIKE TABLE OF|.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    APPEND t110 TO t109->items.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t95 ).
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t98 ).
    t112 = zcl_lnt_st_combi_module=>alt( i_first = t113 i_second = t114 i_rest = t115 ).
    t91 = t112.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t116 TYPE REF TO object.
      t116 = t91.
      t90->oval = t116.
    ENDIF.
    t89 = t90.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
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
    t128 = zcl_lnt_st_combi_module=>alt( i_first = t129 i_second = t130 i_rest = t131 ).
    t119 = t128.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t132 TYPE REF TO object.
      t132 = t119.
      t118->oval = t132.
    ENDIF.
    t117 = t118.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    t133 = t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t117 ).
    DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    t135 = zcl_lnt_st_combi_module=>seq( i_first = t136 i_second = t137 i_rest = t138 ).
    t88 = t135.
    t87 = t88.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t143) = |LENGTH|.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = t143.
    t141 = t142.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA(t146) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t146 IS BOUND.
      CREATE OBJECT t145.
      t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t145->cval = t146.
    ENDIF.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t148.
    t147 = t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t150) = CAST zlnt_runtime_dyna_a429568d5be8( t141 ).
    DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
    DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t147 ).
    t149 = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t151 i_rest = t152 ).
    t140 = t149.
    t139 = t140.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t157) = |INITIAL SIZE|.
    CREATE OBJECT t156.
    t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t156->sval = t157.
    t155 = t156.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t159->cval = t160.
    ENDIF.
    t158 = t159.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t162.
    t161 = t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t164) = CAST zlnt_runtime_dyna_a429568d5be8( t155 ).
    DATA(t165) = CAST zlnt_runtime_dyna_a429568d5be8( t158 ).
    DATA(t166) = CAST zlnt_runtime_arra_c22708faf2e3( t161 ).
    t163 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t165 i_rest = t166 ).
    t154 = t163.
    t153 = t154.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = |DECIMALS|.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = t171.
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t173->cval = t174.
    ENDIF.
    t172 = t173.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t176.
    t175 = t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t169 ).
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t172 ).
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t175 ).
    t177 = zcl_lnt_st_combi_module=>seq( i_first = t178 i_second = t179 i_rest = t180 ).
    t168 = t177.
    t167 = t168.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t185) = |UNIQUE|.
    CREATE OBJECT t184.
    t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t184->sval = t185.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t188) = |NON-UNIQUE|.
    CREATE OBJECT t187.
    t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t187->sval = t188.
    t186 = t187.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t190.
    t189 = t190.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t192) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t193) = CAST zlnt_runtime_dyna_a429568d5be8( t186 ).
    DATA(t194) = CAST zlnt_runtime_arra_c22708faf2e3( t189 ).
    t191 = zcl_lnt_st_combi_module=>alt( i_first = t192 i_second = t193 i_rest = t194 ).
    t182 = t191.
    t181 = t182.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t198.
    DATA t199 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t200.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t200 = zcl_lnt_version_module=>release_b8cd.
    DATA(t201) = |v740sp02|.
    t199 = t200->get( p0 = t201 ).
    t198 = t199.
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t198.
      t197->oval = t202.
    ENDIF.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = |EMPTY KEY|.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t203->sval = t204.
    DATA t205 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t205.
    DATA(t206) = abap_true.
    IF t206 = abap_true.
      DATA t207 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t207.
      DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t208.
      DATA(t209) = abap_true.
      IF t209 = abap_true.
        DATA(t210) = |OpenABAP|.
        DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t211->has = abap_true.
        t211->value = t210.
        t208 = t211.
      ELSE.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        t208 = t212.
      ENDIF.
      t207 = NEW zcl_lnt_iver_options( i_also = t208 ).
      t205 = t207.
    ELSE.
      DATA t213 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t213.
      t205 = t213.
    ENDIF.
    t196 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t197 i_first = t203 i_opts = t205 ).
    t195 = t196.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA(t220) = CAST zif_lnt_statement_runnable( t181 ).
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t221 TYPE REF TO object.
      t221 = t220.
      t219->oval = t221.
    ENDIF.
    t218 = zcl_lnt_st_combi_module=>opt( i_first = t219 ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t222 TYPE REF TO object.
      t222 = t218.
      t217->oval = t222.
    ENDIF.
    t216 = t217.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t228) = |DEFAULT KEY|.
    CREATE OBJECT t227.
    t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t227->sval = t228.
    t226 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = CAST zif_lnt_statement_runnable( t195 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t232 TYPE REF TO object.
      t232 = t231.
      t230->oval = t232.
    ENDIF.
    t229 = t230.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    t233 = t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t236) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t237) = CAST zlnt_runtime_dyna_a429568d5be8( t229 ).
    DATA(t238) = CAST zlnt_runtime_arra_c22708faf2e3( t233 ).
    t235 = zcl_lnt_st_combi_module=>alt( i_first = t236 i_second = t237 i_rest = t238 ).
    t225 = t235.
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t225.
      t224->oval = t239.
    ENDIF.
    t223 = t224.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    t240 = t241.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t243) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t244) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t245) = CAST zlnt_runtime_arra_c22708faf2e3( t240 ).
    t242 = zcl_lnt_st_combi_module=>seq( i_first = t243 i_second = t244 i_rest = t245 ).
    t215 = t242.
    t214 = t215.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = CAST zif_lnt_statement_runnable( t181 ).
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t253 TYPE REF TO object.
      t253 = t252.
      t251->oval = t253.
    ENDIF.
    t250 = zcl_lnt_st_combi_module=>opt( i_first = t251 ).
    IF t250 IS BOUND.
      CREATE OBJECT t249.
      t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t254 TYPE REF TO object.
      t254 = t250.
      t249->oval = t254.
    ENDIF.
    t248 = t249.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t257) = |KEY|.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = t257.
    t255 = t256.
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
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA(t267) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t266->cval = t267.
    ENDIF.
    t265 = zcl_lnt_st_combi_module=>plus( i_first = t266 ).
    IF t265 IS BOUND.
      CREATE OBJECT t264.
      t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t268 TYPE REF TO object.
      t268 = t265.
      t264->oval = t268.
    ENDIF.
    t263 = t264.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t270->cval = t271.
    ENDIF.
    t269 = t270.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t273.
    t272 = t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t275) = CAST zlnt_runtime_dyna_a429568d5be8( t263 ).
    DATA(t276) = CAST zlnt_runtime_dyna_a429568d5be8( t269 ).
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t272 ).
    t274 = zcl_lnt_st_combi_module=>alt( i_first = t275 i_second = t276 i_rest = t277 ).
    t262 = t274.
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t278 TYPE REF TO object.
      t278 = t262.
      t261->oval = t278.
    ENDIF.
    APPEND t261 TO t260->items.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t280) = CAST zlnt_runtime_dyna_a429568d5be8( t248 ).
    DATA(t281) = CAST zlnt_runtime_dyna_a429568d5be8( t255 ).
    DATA(t282) = CAST zlnt_runtime_arra_c22708faf2e3( t258 ).
    t279 = zcl_lnt_st_combi_module=>seq( i_first = t280 i_second = t281 i_rest = t282 ).
    t247 = t279.
    t246 = t247.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t287) = |WITH|.
    CREATE OBJECT t286.
    t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t286->sval = t287.
    t285 = t286.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA(t293) = CAST zif_lnt_statement_runnable( t214 ).
    IF t293 IS BOUND.
      CREATE OBJECT t292.
      t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t294 TYPE REF TO object.
      t294 = t293.
      t292->oval = t294.
    ENDIF.
    t291 = t292.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = CAST zif_lnt_statement_runnable( t246 ).
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t298 TYPE REF TO object.
      t298 = t297.
      t296->oval = t298.
    ENDIF.
    t295 = t296.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t300.
    t299 = t300.
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t302) = CAST zlnt_runtime_dyna_a429568d5be8( t291 ).
    DATA(t303) = CAST zlnt_runtime_dyna_a429568d5be8( t295 ).
    DATA(t304) = CAST zlnt_runtime_arra_c22708faf2e3( t299 ).
    t301 = zcl_lnt_st_combi_module=>alt( i_first = t302 i_second = t303 i_rest = t304 ).
    t290 = t301.
    IF t290 IS BOUND.
      CREATE OBJECT t289.
      t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t305 TYPE REF TO object.
      t305 = t290.
      t289->oval = t305.
    ENDIF.
    t288 = t289.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t307.
    t306 = t307.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t309) = CAST zlnt_runtime_dyna_a429568d5be8( t285 ).
    DATA(t310) = CAST zlnt_runtime_dyna_a429568d5be8( t288 ).
    DATA(t311) = CAST zlnt_runtime_arra_c22708faf2e3( t306 ).
    t308 = zcl_lnt_st_combi_module=>seq( i_first = t309 i_second = t310 i_rest = t311 ).
    t284 = t308.
    t283 = t284.
    DATA t312 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t312.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t313.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA(t319) = CAST zif_lnt_statement_runnable( t29 ).
    IF t319 IS BOUND.
      CREATE OBJECT t318.
      t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t320 TYPE REF TO object.
      t320 = t319.
      t318->oval = t320.
    ENDIF.
    t317 = t318.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = CAST zif_lnt_statement_runnable( t87 ).
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t324 TYPE REF TO object.
      t324 = t323.
      t322->oval = t324.
    ENDIF.
    t321 = t322.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t326.
    t325 = t326.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t328) = CAST zlnt_runtime_dyna_a429568d5be8( t317 ).
    DATA(t329) = CAST zlnt_runtime_dyna_a429568d5be8( t321 ).
    DATA(t330) = CAST zlnt_runtime_arra_c22708faf2e3( t325 ).
    t327 = zcl_lnt_st_combi_module=>alt( i_first = t328 i_second = t329 i_rest = t330 ).
    t316 = t327.
    IF t316 IS BOUND.
      CREATE OBJECT t315.
      t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t331 TYPE REF TO object.
      t331 = t316.
      t315->oval = t331.
    ENDIF.
    t314 = t315.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = CAST zif_lnt_statement_runnable( t283 ).
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t337 TYPE REF TO object.
      t337 = t336.
      t335->oval = t337.
    ENDIF.
    t334 = zcl_lnt_st_combi_module=>opt( i_first = t335 ).
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t338 TYPE REF TO object.
      t338 = t334.
      t333->oval = t338.
    ENDIF.
    t332 = t333.
    DATA t339 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t340.
    t339 = t340.
    DATA(t341) = CAST zlnt_runtime_arra_c22708faf2e3( t339 ).
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA t343 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = CAST zif_lnt_statement_runnable( t153 ).
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t346 TYPE REF TO object.
      t346 = t345.
      t344->oval = t346.
    ENDIF.
    t343 = zcl_lnt_st_combi_module=>opt( i_first = t344 ).
    IF t343 IS BOUND.
      CREATE OBJECT t342.
      t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t347 TYPE REF TO object.
      t347 = t343.
      t342->oval = t347.
    ENDIF.
    APPEND t342 TO t341->items.
    DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t339 ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA(t352) = CAST zif_lnt_statement_runnable( t139 ).
    IF t352 IS BOUND.
      CREATE OBJECT t351.
      t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t353 TYPE REF TO object.
      t353 = t352.
      t351->oval = t353.
    ENDIF.
    t350 = zcl_lnt_st_combi_module=>opt( i_first = t351 ).
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t354 TYPE REF TO object.
      t354 = t350.
      t349->oval = t354.
    ENDIF.
    APPEND t349 TO t348->items.
    DATA(t355) = CAST zlnt_runtime_arra_c22708faf2e3( t339 ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t357.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA(t359) = CAST zif_lnt_statement_runnable( t167 ).
    IF t359 IS BOUND.
      CREATE OBJECT t358.
      t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t360 TYPE REF TO object.
      t360 = t359.
      t358->oval = t360.
    ENDIF.
    t357 = zcl_lnt_st_combi_module=>opt( i_first = t358 ).
    IF t357 IS BOUND.
      CREATE OBJECT t356.
      t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t361 TYPE REF TO object.
      t361 = t357.
      t356->oval = t361.
    ENDIF.
    APPEND t356 TO t355->items.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t363) = CAST zlnt_runtime_dyna_a429568d5be8( t314 ).
    DATA(t364) = CAST zlnt_runtime_dyna_a429568d5be8( t332 ).
    DATA(t365) = CAST zlnt_runtime_arra_c22708faf2e3( t339 ).
    t362 = zcl_lnt_st_combi_module=>seq( i_first = t363 i_second = t364 i_rest = t365 ).
    t313 = t362.
    t312 = t313.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t366.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t367.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t370) = |CREATE DATA|.
    CREATE OBJECT t369.
    t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t369->sval = t370.
    t368 = t369.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA(t373) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t373 IS BOUND.
      CREATE OBJECT t372.
      t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t372->cval = t373.
    ENDIF.
    t371 = t372.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t375.
    t374 = t375.
    DATA(t376) = CAST zlnt_runtime_arra_c22708faf2e3( t374 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA(t383) = CAST zif_lnt_statement_runnable( t15 ).
    IF t383 IS BOUND.
      CREATE OBJECT t382.
      t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t384 TYPE REF TO object.
      t384 = t383.
      t382->oval = t384.
    ENDIF.
    t381 = t382.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = CAST zif_lnt_statement_runnable( t1 ).
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t393 TYPE REF TO object.
      t393 = t392.
      t391->oval = t393.
    ENDIF.
    t390 = zcl_lnt_st_combi_module=>opt( i_first = t391 ).
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t394 TYPE REF TO object.
      t394 = t390.
      t389->oval = t394.
    ENDIF.
    t388 = t389.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA(t397) = CAST zif_lnt_statement_runnable( t312 ).
    IF t397 IS BOUND.
      CREATE OBJECT t396.
      t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t398 TYPE REF TO object.
      t398 = t397.
      t396->oval = t398.
    ENDIF.
    t395 = t396.
    DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t400.
    t399 = t400.
    DATA t401 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t402) = CAST zlnt_runtime_dyna_a429568d5be8( t388 ).
    DATA(t403) = CAST zlnt_runtime_dyna_a429568d5be8( t395 ).
    DATA(t404) = CAST zlnt_runtime_arra_c22708faf2e3( t399 ).
    t401 = zcl_lnt_st_combi_module=>seq( i_first = t402 i_second = t403 i_rest = t404 ).
    t387 = t401.
    IF t387 IS BOUND.
      CREATE OBJECT t386.
      t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t405 TYPE REF TO object.
      t405 = t387.
      t386->oval = t405.
    ENDIF.
    t385 = t386.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t407.
    t406 = t407.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t409) = CAST zlnt_runtime_dyna_a429568d5be8( t381 ).
    DATA(t410) = CAST zlnt_runtime_dyna_a429568d5be8( t385 ).
    DATA(t411) = CAST zlnt_runtime_arra_c22708faf2e3( t406 ).
    t408 = zcl_lnt_st_combi_module=>alt( i_first = t409 i_second = t410 i_rest = t411 ).
    t380 = t408.
    IF t380 IS BOUND.
      CREATE OBJECT t379.
      t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t412 TYPE REF TO object.
      t412 = t380.
      t379->oval = t412.
    ENDIF.
    t378 = zcl_lnt_st_combi_module=>opt( i_first = t379 ).
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t413 TYPE REF TO object.
      t413 = t378.
      t377->oval = t413.
    ENDIF.
    APPEND t377 TO t376->items.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t415) = CAST zlnt_runtime_dyna_a429568d5be8( t368 ).
    DATA(t416) = CAST zlnt_runtime_dyna_a429568d5be8( t371 ).
    DATA(t417) = CAST zlnt_runtime_arra_c22708faf2e3( t374 ).
    t414 = zcl_lnt_st_combi_module=>seq( i_first = t415 i_second = t416 i_rest = t417 ).
    t367 = t414.
    t366 = t367.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t418.
    DATA(t419) = |KeyUser|.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA(t421) = CAST zif_lnt_statement_runnable( t366 ).
    IF t421 IS BOUND.
      CREATE OBJECT t420.
      t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t422 TYPE REF TO object.
      t422 = t421.
      t420->oval = t422.
    ENDIF.
    t418 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t419 i_first = t420 ).
    result = t418.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d417_b1c6fbadfa99.
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
