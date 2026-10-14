* TS: src/abap/2_statements/statements/open_dataset.ts:7:1 OpenDataset
CLASS zcl_lnt_st_open_dataset DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_open_dataset IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |IN|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = |LEGACY|.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t8.
      t7->oval = t11.
    ENDIF.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |BINARY MODE|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |TEXT MODE|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t25 = zcl_lnt_st_combi_module=>alt_prio( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t16.
      t15->oval = t29.
    ENDIF.
    APPEND t15 TO t14->items.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t30 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t32 i_rest = t33 ).
    t2 = t30.
    t1 = t2.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |CODE PAGE|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    t39 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    t42 = t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t35 = t44.
    t34 = t35.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = |FOR|.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = |OUTPUT|.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = |INPUT|.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t62 = t63.
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = |UPDATE|.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    APPEND t65 TO t64->items.
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |APPENDING|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    APPEND t68 TO t67->items.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t70 = zcl_lnt_st_combi_module=>alt_prio( i_first = t71 i_second = t72 i_rest = t73 ).
    t55 = t70.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t74 TYPE REF TO object.
      t74 = t55.
      t54->oval = t74.
    ENDIF.
    t53 = t54.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t75 = t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t79 i_rest = t80 ).
    t49 = t77.
    t48 = t49.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = |ENCODING|.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    t83 = t84.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = |DEFAULT|.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = t91.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |UTF-8|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t95 = t96.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = |NON-UNICODE|.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    APPEND t98 TO t97->items.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t102) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    t100 = zcl_lnt_st_combi_module=>alt_prio( i_first = t101 i_second = t102 i_rest = t103 ).
    t88 = t100.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t88.
      t87->oval = t104.
    ENDIF.
    t86 = t87.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    t105 = t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t83 ).
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t110) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t108 i_second = t109 i_rest = t110 ).
    t82 = t107.
    t81 = t82.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t115) = |AT POSITION|.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = t115.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116 = t117.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    t119 = t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t113 ).
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t122 i_second = t123 i_rest = t124 ).
    t112 = t121.
    t111 = t112.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |MESSAGE|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t131->cval = t132.
    ENDIF.
    t130 = t131.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    t133 = t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    t135 = zcl_lnt_st_combi_module=>seq( i_first = t136 i_second = t137 i_rest = t138 ).
    t126 = t135.
    t125 = t126.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t141) = |IGNORING CONVERSION ERRORS|.
    t140 = zcl_lnt_st_combi_module=>str( i_s = t141 ).
    t139 = t140.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t146) = |REPLACEMENT CHARACTER|.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = t146.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
    DATA(t154) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    t152 = zcl_lnt_st_combi_module=>seq( i_first = t153 i_second = t154 i_rest = t155 ).
    t143 = t152.
    t142 = t143.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t158) = |SKIPPING BYTE-ORDER MARK|.
    t157 = zcl_lnt_st_combi_module=>str( i_s = t158 ).
    t156 = t157.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t161) = |WITH BYTE-ORDER MARK|.
    t160 = zcl_lnt_st_combi_module=>str( i_s = t161 ).
    t159 = t160.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = |TYPE|.
    CREATE OBJECT t165.
    t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t165->sval = t166.
    t164 = t165.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t168->cval = t169.
    ENDIF.
    t167 = t168.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t171.
    t170 = t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t164 ).
    DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t167 ).
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t170 ).
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t173 i_second = t174 i_rest = t175 ).
    t163 = t172.
    t162 = t163.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t180) = |FILTER|.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = t180.
    t178 = t179.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t182->cval = t183.
    ENDIF.
    t181 = t182.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t185.
    t184 = t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t178 ).
    DATA(t188) = CAST zlnt_runtime_dyna_a429568d5be8( t181 ).
    DATA(t189) = CAST zlnt_runtime_arra_c22708faf2e3( t184 ).
    t186 = zcl_lnt_st_combi_module=>seq( i_first = t187 i_second = t188 i_rest = t189 ).
    t177 = t186.
    t176 = t177.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t194) = |SMART|.
    CREATE OBJECT t193.
    t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t193->sval = t194.
    t192 = t193.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t197) = |NATIVE|.
    CREATE OBJECT t196.
    t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t196->sval = t197.
    t195 = t196.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t199.
    t198 = t199.
    DATA(t200) = CAST zlnt_runtime_arra_c22708faf2e3( t198 ).
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t202) = |UNIX|.
    CREATE OBJECT t201.
    t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t201->sval = t202.
    APPEND t201 TO t200->items.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t204) = CAST zlnt_runtime_dyna_a429568d5be8( t192 ).
    DATA(t205) = CAST zlnt_runtime_dyna_a429568d5be8( t195 ).
    DATA(t206) = CAST zlnt_runtime_arra_c22708faf2e3( t198 ).
    t203 = zcl_lnt_st_combi_module=>alt_prio( i_first = t204 i_second = t205 i_rest = t206 ).
    t191 = t203.
    t190 = t191.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t211) = |WITH|.
    CREATE OBJECT t210.
    t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t210->sval = t211.
    t209 = t210.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = CAST zif_lnt_statement_runnable( t190 ).
    IF t214 IS BOUND.
      CREATE OBJECT t213.
      t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t215 TYPE REF TO object.
      t215 = t214.
      t213->oval = t215.
    ENDIF.
    t212 = t213.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t217.
    t216 = t217.
    DATA(t218) = CAST zlnt_runtime_arra_c22708faf2e3( t216 ).
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t220) = |LINEFEED|.
    CREATE OBJECT t219.
    t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t219->sval = t220.
    APPEND t219 TO t218->items.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t222) = CAST zlnt_runtime_dyna_a429568d5be8( t209 ).
    DATA(t223) = CAST zlnt_runtime_dyna_a429568d5be8( t212 ).
    DATA(t224) = CAST zlnt_runtime_arra_c22708faf2e3( t216 ).
    t221 = zcl_lnt_st_combi_module=>seq( i_first = t222 i_second = t223 i_rest = t224 ).
    t208 = t221.
    t207 = t208.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t227) = |WITH WINDOWS LINEFEED|.
    t226 = zcl_lnt_st_combi_module=>str( i_s = t227 ).
    t225 = t226.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = |OPEN DATASET|.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t234->cval = t235.
    ENDIF.
    t233 = t234.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t237.
    t236 = t237.
    DATA(t238) = CAST zlnt_runtime_arra_c22708faf2e3( t236 ).
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = CAST zif_lnt_statement_runnable( t48 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t245.
      t244->oval = t246.
    ENDIF.
    t243 = t244.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = CAST zif_lnt_statement_runnable( t162 ).
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t250 TYPE REF TO object.
      t250 = t249.
      t248->oval = t250.
    ENDIF.
    t247 = t248.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t252.
    t251 = t252.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zif_lnt_statement_runnable( t1 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t255.
      t254->oval = t256.
    ENDIF.
    APPEND t254 TO t253->items.
    DATA(t257) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = CAST zif_lnt_statement_runnable( t159 ).
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t260 TYPE REF TO object.
      t260 = t259.
      t258->oval = t260.
    ENDIF.
    APPEND t258 TO t257->items.
    DATA(t261) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = CAST zif_lnt_statement_runnable( t142 ).
    IF t263 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t264 TYPE REF TO object.
      t264 = t263.
      t262->oval = t264.
    ENDIF.
    APPEND t262 TO t261->items.
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA(t267) = CAST zif_lnt_statement_runnable( t176 ).
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t268 TYPE REF TO object.
      t268 = t267.
      t266->oval = t268.
    ENDIF.
    APPEND t266 TO t265->items.
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = CAST zif_lnt_statement_runnable( t81 ).
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t272 TYPE REF TO object.
      t272 = t271.
      t270->oval = t272.
    ENDIF.
    APPEND t270 TO t269->items.
    DATA(t273) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = CAST zif_lnt_statement_runnable( t111 ).
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t276 TYPE REF TO object.
      t276 = t275.
      t274->oval = t276.
    ENDIF.
    APPEND t274 TO t273->items.
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA(t279) = CAST zif_lnt_statement_runnable( t125 ).
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t280 TYPE REF TO object.
      t280 = t279.
      t278->oval = t280.
    ENDIF.
    APPEND t278 TO t277->items.
    DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = CAST zif_lnt_statement_runnable( t139 ).
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t284 TYPE REF TO object.
      t284 = t283.
      t282->oval = t284.
    ENDIF.
    APPEND t282 TO t281->items.
    DATA(t285) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = CAST zif_lnt_statement_runnable( t156 ).
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t288 TYPE REF TO object.
      t288 = t287.
      t286->oval = t288.
    ENDIF.
    APPEND t286 TO t285->items.
    DATA(t289) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA(t291) = CAST zif_lnt_statement_runnable( t34 ).
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t292 TYPE REF TO object.
      t292 = t291.
      t290->oval = t292.
    ENDIF.
    APPEND t290 TO t289->items.
    DATA(t293) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = CAST zif_lnt_statement_runnable( t207 ).
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t296 TYPE REF TO object.
      t296 = t295.
      t294->oval = t296.
    ENDIF.
    APPEND t294 TO t293->items.
    DATA(t297) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA(t299) = CAST zif_lnt_statement_runnable( t225 ).
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t300 TYPE REF TO object.
      t300 = t299.
      t298->oval = t300.
    ENDIF.
    APPEND t298 TO t297->items.
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t302) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t303) = CAST zlnt_runtime_dyna_a429568d5be8( t247 ).
    DATA(t304) = CAST zlnt_runtime_arra_c22708faf2e3( t251 ).
    t301 = zcl_lnt_st_combi_module=>per( i_first = t302 i_second = t303 i_rest = t304 ).
    t242 = t301.
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t305 TYPE REF TO object.
      t305 = t242.
      t241->oval = t305.
    ENDIF.
    t240 = zcl_lnt_st_combi_module=>opt( i_first = t241 ).
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t306 TYPE REF TO object.
      t306 = t240.
      t239->oval = t306.
    ENDIF.
    APPEND t239 TO t238->items.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t308) = CAST zlnt_runtime_dyna_a429568d5be8( t230 ).
    DATA(t309) = CAST zlnt_runtime_dyna_a429568d5be8( t233 ).
    DATA(t310) = CAST zlnt_runtime_arra_c22708faf2e3( t236 ).
    t307 = zcl_lnt_st_combi_module=>seq( i_first = t308 i_second = t309 i_rest = t310 ).
    t229 = t307.
    t228 = t229.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t311.
    DATA(t312) = |Cloud|.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = CAST zif_lnt_statement_runnable( t228 ).
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t315 TYPE REF TO object.
      t315 = t314.
      t313->oval = t315.
    ENDIF.
    t311 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t312 i_first = t313 ).
    result = t311.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d552_70cb477baddf.
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
