* TS: src/abap/2_statements/expressions/table_expression.ts:7:1 TableExpression
CLASS zcl_lnt_st_table_expression DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_table_expression IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t16 = zcl_lnt_st_combi_module=>alt_prio( i_first = t17 i_second = t18 i_rest = t19 ).
    t7 = t16.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t20 TYPE REF TO object.
      t20 = t7.
      t6->oval = t20.
    ENDIF.
    t5 = t6.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = |=|.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t24 = t25.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    APPEND t27 TO t26->items.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t4 = t29.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t4.
      t3->oval = t33.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>plus( i_first = t3 ).
    t1 = t2.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |KEY|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39 ).
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
    DATA(t52) = |INDEX|.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t54->cval = t55.
    ENDIF.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t56 = t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t59) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t60) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
    t58 = zcl_lnt_st_combi_module=>seq( i_first = t59 i_second = t60 i_rest = t61 ).
    t49 = t58.
    t48 = t49.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d17_c487d20bb05c7b ).
    t66 = zcl_lnt_st_combi_module=>tok( i_t = t67 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t66.
      t65->oval = t68.
    ENDIF.
    t64 = t65.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( t1 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    t78 = t79.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t82 = t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t86 i_rest = t87 ).
    t74 = t84.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t88 TYPE REF TO object.
      t88 = t74.
      t73->oval = t88.
    ENDIF.
    t72 = t73.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t92 = t93.
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t92 ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zif_lnt_statement_runnable( t34 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t102 TYPE REF TO object.
      t102 = t101.
      t100->oval = t102.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt_prio( i_first = t100 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t99.
      t98->oval = t103.
    ENDIF.
    t97 = t98.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = |COMPONENTS|.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106 = zcl_lnt_st_combi_module=>opt( i_first = t107 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t106.
      t105->oval = t109.
    ENDIF.
    t104 = t105.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = CAST zif_lnt_statement_runnable( t1 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t117.
      t116->oval = t118.
    ENDIF.
    t115 = t116.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = CAST zif_lnt_statement_runnable( t48 ).
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t122 TYPE REF TO object.
      t122 = t121.
      t120->oval = t122.
    ENDIF.
    t119 = t120.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t123 = t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t119 ).
    DATA(t128) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    t125 = zcl_lnt_st_combi_module=>alt_prio( i_first = t126 i_second = t127 i_rest = t128 ).
    t114 = t125.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t129 TYPE REF TO object.
      t129 = t114.
      t113->oval = t129.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t104 ).
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t130 = zcl_lnt_st_combi_module=>seq( i_first = t131 i_second = t132 i_rest = t133 ).
    t96 = t130.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t96.
      t95->oval = t134.
    ENDIF.
    APPEND t95 TO t94->items.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t92 ).
    t135 = zcl_lnt_st_combi_module=>alt( i_first = t136 i_second = t137 i_rest = t138 ).
    t71 = t135.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t139 TYPE REF TO object.
      t139 = t71.
      t70->oval = t139.
    ENDIF.
    t69 = t70.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t140 = t141.
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t140 ).
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t148) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d45_b3a64dc568c306 ).
    t147 = zcl_lnt_st_combi_module=>tok( i_t = t148 ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t149 TYPE REF TO object.
      t149 = t147.
      t146->oval = t149.
    ENDIF.
    t145 = t146.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t153) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d46_b4d7f76ec970d6 ).
    t152 = zcl_lnt_st_combi_module=>tok( i_t = t153 ).
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t154 TYPE REF TO object.
      t154 = t152.
      t151->oval = t154.
    ENDIF.
    t150 = t151.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t156.
    t155 = t156.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t158) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t159) = CAST zlnt_runtime_dyna_a429568d5be8( t150 ).
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t155 ).
    t157 = zcl_lnt_st_combi_module=>alt_prio( i_first = t158 i_second = t159 i_rest = t160 ).
    t144 = t157.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t161 TYPE REF TO object.
      t161 = t144.
      t143->oval = t161.
    ENDIF.
    APPEND t143 TO t142->items.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t164) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
    DATA(t165) = CAST zlnt_runtime_arra_c22708faf2e3( t140 ).
    t162 = zcl_lnt_st_combi_module=>seq( i_first = t163 i_second = t164 i_rest = t165 ).
    t63 = t162.
    t62 = t63.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t168.
    DATA t169 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t170.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t170 = zcl_lnt_version_module=>release_b8cd.
    DATA(t171) = |v740sp02|.
    t169 = t170->get( p0 = t171 ).
    t168 = t169.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t172 TYPE REF TO object.
      t172 = t168.
      t167->oval = t172.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = CAST zif_lnt_statement_runnable( t62 ).
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t175 TYPE REF TO object.
      t175 = t174.
      t173->oval = t175.
    ENDIF.
    DATA t176 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t176.
    DATA(t177) = abap_true.
    IF t177 = abap_true.
      DATA t178 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t178.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA(t180) = abap_true.
      IF t180 = abap_true.
        DATA(t181) = |OpenABAP|.
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t181.
        t179 = t182.
      ELSE.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        t179 = t183.
      ENDIF.
      t178 = NEW zcl_lnt_iver_options( i_also = t179 ).
      t176 = t178.
    ELSE.
      DATA t184 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t184.
      t176 = t184.
    ENDIF.
    t166 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t167 i_first = t173 i_opts = t176 ).
    result = t166.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d99_35801e5718dec9.
  ENDMETHOD.
ENDCLASS.
