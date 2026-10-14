* TS: src/abap/2_statements/expressions/sql_aggregation.ts:12:1 SQLAggregation
CLASS zcl_lnt_sql_aggregation DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_aggregation IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t9.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t9 = zcl_lnt_version_module=>release_b8cd.
    DATA(t10) = |v740sp08|.
    t8 = t9->get( p0 = t10 ).
    t7 = t8.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t7.
      t6->oval = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t14.
    t5 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t6 i_first = t12 i_opts = t14 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t5.
      t4->oval = t15.
    ENDIF.
    t3 = t4.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t21 = zcl_lnt_st_combi_module=>alt_prio( i_first = t22 i_second = t23 i_rest = t24 ).
    t2 = t21.
    t1 = t2.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t29 = zcl_lnt_st_combi_module=>tok( i_t = t30 ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t29.
      t28->oval = t31.
    ENDIF.
    t27 = t28.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77 ).
    t34 = zcl_lnt_st_combi_module=>tok( i_t = t35 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t34.
      t33->oval = t36.
    ENDIF.
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t37 = t38.
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t41 = zcl_lnt_st_combi_module=>tok( i_t = t42 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t43 TYPE REF TO object.
      t43 = t41.
      t40->oval = t43.
    ENDIF.
    APPEND t40 TO t39->items.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
    t44 = zcl_lnt_st_combi_module=>alt_prio( i_first = t45 i_second = t46 i_rest = t47 ).
    t26 = t44.
    t25 = t26.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t52 = zcl_lnt_st_combi_module=>tok( i_t = t53 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t52.
      t51->oval = t54.
    ENDIF.
    t50 = t51.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = |,|.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    APPEND t61 TO t60->items.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    APPEND t64 TO t63->items.
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t68 = zcl_lnt_st_combi_module=>tok( i_t = t69 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t70 TYPE REF TO object.
      t70 = t68.
      t67->oval = t70.
    ENDIF.
    APPEND t67 TO t66->items.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t49 = t71.
    t48 = t49.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = |DEC|.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = CAST zif_lnt_statement_runnable( t48 ).
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t85.
      t84->oval = t86.
    ENDIF.
    t83 = t84.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t80 ).
    DATA(t91) = CAST zlnt_runtime_dyna_a429568d5be8( t83 ).
    DATA(t92) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t91 i_rest = t92 ).
    t79 = t89.
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t79.
      t78->oval = t93.
    ENDIF.
    t77 = t78.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = |CURR|.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zif_lnt_statement_runnable( t48 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t102.
      t101->oval = t103.
    ENDIF.
    t100 = t101.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t104 = t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t107) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    t106 = zcl_lnt_st_combi_module=>seq( i_first = t107 i_second = t108 i_rest = t109 ).
    t96 = t106.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t110 TYPE REF TO object.
      t110 = t96.
      t95->oval = t110.
    ENDIF.
    t94 = t95.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t111 = t112.
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = |QUAN|.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = t118.
    t116 = t117.
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
    DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t119 ).
    DATA(t128) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t127 i_rest = t128 ).
    t115 = t125.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t129 TYPE REF TO object.
      t129 = t115.
      t114->oval = t129.
    ENDIF.
    APPEND t114 TO t113->items.
    DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t132) = |D16N|.
    CREATE OBJECT t131.
    t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t131->sval = t132.
    APPEND t131 TO t130->items.
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = |D34N|.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = t135.
    APPEND t134 TO t133->items.
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = |FLTP|.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    APPEND t137 TO t136->items.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t140) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    t139 = zcl_lnt_st_combi_module=>alt_prio( i_first = t140 i_second = t141 i_rest = t142 ).
    t76 = t139.
    t75 = t76.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = |COUNT|.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t150 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t150.
      t149->oval = t151.
    ENDIF.
    t148 = t149.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = |DISTINCT|.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = zcl_lnt_st_combi_module=>opt_prio( i_first = t157 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t156.
      t155->oval = t159.
    ENDIF.
    APPEND t155 TO t154->items.
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = |*|.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = t165.
    t163 = t164.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = CAST zif_lnt_statement_runnable( t1 ).
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t169 TYPE REF TO object.
      t169 = t168.
      t167->oval = t169.
    ENDIF.
    t166 = t167.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t171.
    t170 = t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t163 ).
    DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t166 ).
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t170 ).
    t172 = zcl_lnt_st_combi_module=>alt_prio( i_first = t173 i_second = t174 i_rest = t175 ).
    t162 = t172.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t162.
      t161->oval = t176.
    ENDIF.
    APPEND t161 TO t160->items.
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t179 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t180 TYPE REF TO object.
      t180 = t179.
      t178->oval = t180.
    ENDIF.
    APPEND t178 TO t177->items.
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    t183 = zcl_lnt_st_combi_module=>opt_prio( i_first = t184 ).
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t186 TYPE REF TO object.
      t186 = t183.
      t182->oval = t186.
    ENDIF.
    APPEND t182 TO t181->items.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t188) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t189) = CAST zlnt_runtime_dyna_a429568d5be8( t148 ).
    DATA(t190) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    t187 = zcl_lnt_st_combi_module=>seq( i_first = t188 i_second = t189 i_rest = t190 ).
    t144 = t187.
    t143 = t144.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |MAX|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t198 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t199 TYPE REF TO object.
      t199 = t198.
      t197->oval = t199.
    ENDIF.
    t196 = t197.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t201.
    t200 = t201.
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = |DISTINCT|.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t204 = zcl_lnt_st_combi_module=>opt_prio( i_first = t205 ).
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t207 TYPE REF TO object.
      t207 = t204.
      t203->oval = t207.
    ENDIF.
    APPEND t203 TO t202->items.
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = CAST zif_lnt_statement_runnable( t1 ).
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t211 TYPE REF TO object.
      t211 = t210.
      t209->oval = t211.
    ENDIF.
    APPEND t209 TO t208->items.
    DATA(t212) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t214 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t214 IS BOUND.
      CREATE OBJECT t213.
      t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t215 TYPE REF TO object.
      t215 = t214.
      t213->oval = t215.
    ENDIF.
    APPEND t213 TO t212->items.
    DATA(t216) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA(t220) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t219->cval = t220.
    ENDIF.
    t218 = zcl_lnt_st_combi_module=>opt_prio( i_first = t219 ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t221 TYPE REF TO object.
      t221 = t218.
      t217->oval = t221.
    ENDIF.
    APPEND t217 TO t216->items.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t223) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t224) = CAST zlnt_runtime_dyna_a429568d5be8( t196 ).
    DATA(t225) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    t222 = zcl_lnt_st_combi_module=>seq( i_first = t223 i_second = t224 i_rest = t225 ).
    t192 = t222.
    t191 = t192.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t230) = |MIN|.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = t230.
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t233 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t234 TYPE REF TO object.
      t234 = t233.
      t232->oval = t234.
    ENDIF.
    t231 = t232.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t236.
    t235 = t236.
    DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t235 ).
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = |DISTINCT|.
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
    DATA(t243) = CAST zlnt_runtime_arra_c22708faf2e3( t235 ).
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = CAST zif_lnt_statement_runnable( t1 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t245.
      t244->oval = t246.
    ENDIF.
    APPEND t244 TO t243->items.
    DATA(t247) = CAST zlnt_runtime_arra_c22708faf2e3( t235 ).
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t249 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t250 TYPE REF TO object.
      t250 = t249.
      t248->oval = t250.
    ENDIF.
    APPEND t248 TO t247->items.
    DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t235 ).
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    t253 = zcl_lnt_st_combi_module=>opt_prio( i_first = t254 ).
    IF t253 IS BOUND.
      CREATE OBJECT t252.
      t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t253.
      t252->oval = t256.
    ENDIF.
    APPEND t252 TO t251->items.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t258) = CAST zlnt_runtime_dyna_a429568d5be8( t228 ).
    DATA(t259) = CAST zlnt_runtime_dyna_a429568d5be8( t231 ).
    DATA(t260) = CAST zlnt_runtime_arra_c22708faf2e3( t235 ).
    t257 = zcl_lnt_st_combi_module=>seq( i_first = t258 i_second = t259 i_rest = t260 ).
    t227 = t257.
    t226 = t227.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t261.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t265) = |SUM|.
    CREATE OBJECT t264.
    t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t264->sval = t265.
    t263 = t264.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t268 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t268 IS BOUND.
      CREATE OBJECT t267.
      t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t269 TYPE REF TO object.
      t269 = t268.
      t267->oval = t269.
    ENDIF.
    t266 = t267.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t271.
    t270 = t271.
    DATA(t272) = CAST zlnt_runtime_arra_c22708faf2e3( t270 ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t276) = |DISTINCT|.
    CREATE OBJECT t275.
    t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t275->sval = t276.
    t274 = zcl_lnt_st_combi_module=>opt_prio( i_first = t275 ).
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t277 TYPE REF TO object.
      t277 = t274.
      t273->oval = t277.
    ENDIF.
    APPEND t273 TO t272->items.
    DATA(t278) = CAST zlnt_runtime_arra_c22708faf2e3( t270 ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA(t280) = CAST zif_lnt_statement_runnable( t1 ).
    IF t280 IS BOUND.
      CREATE OBJECT t279.
      t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t281 TYPE REF TO object.
      t281 = t280.
      t279->oval = t281.
    ENDIF.
    APPEND t279 TO t278->items.
    DATA(t282) = CAST zlnt_runtime_arra_c22708faf2e3( t270 ).
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t284 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t284 IS BOUND.
      CREATE OBJECT t283.
      t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t285 TYPE REF TO object.
      t285 = t284.
      t283->oval = t285.
    ENDIF.
    APPEND t283 TO t282->items.
    DATA(t286) = CAST zlnt_runtime_arra_c22708faf2e3( t270 ).
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA(t290) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t290 IS BOUND.
      CREATE OBJECT t289.
      t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t289->cval = t290.
    ENDIF.
    t288 = zcl_lnt_st_combi_module=>opt_prio( i_first = t289 ).
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t291 TYPE REF TO object.
      t291 = t288.
      t287->oval = t291.
    ENDIF.
    APPEND t287 TO t286->items.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t293) = CAST zlnt_runtime_dyna_a429568d5be8( t263 ).
    DATA(t294) = CAST zlnt_runtime_dyna_a429568d5be8( t266 ).
    DATA(t295) = CAST zlnt_runtime_arra_c22708faf2e3( t270 ).
    t292 = zcl_lnt_st_combi_module=>seq( i_first = t293 i_second = t294 i_rest = t295 ).
    t262 = t292.
    t261 = t262.
    DATA t296 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t296.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t300) = |AVG|.
    CREATE OBJECT t299.
    t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t299->sval = t300.
    t298 = t299.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t304) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t303 = zcl_lnt_st_combi_module=>tok( i_t = t304 ).
    IF t303 IS BOUND.
      CREATE OBJECT t302.
      t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t305 TYPE REF TO object.
      t305 = t303.
      t302->oval = t305.
    ENDIF.
    t301 = t302.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t307.
    t306 = t307.
    DATA(t308) = CAST zlnt_runtime_arra_c22708faf2e3( t306 ).
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t312) = |DISTINCT|.
    CREATE OBJECT t311.
    t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t311->sval = t312.
    t310 = zcl_lnt_st_combi_module=>opt_prio( i_first = t311 ).
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t313 TYPE REF TO object.
      t313 = t310.
      t309->oval = t313.
    ENDIF.
    APPEND t309 TO t308->items.
    DATA(t314) = CAST zlnt_runtime_arra_c22708faf2e3( t306 ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = CAST zif_lnt_statement_runnable( t1 ).
    IF t316 IS BOUND.
      CREATE OBJECT t315.
      t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t317 TYPE REF TO object.
      t317 = t316.
      t315->oval = t317.
    ENDIF.
    APPEND t315 TO t314->items.
    DATA(t318) = CAST zlnt_runtime_arra_c22708faf2e3( t306 ).
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t324.
    DATA t325 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t326.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t326 = zcl_lnt_version_module=>release_b8cd.
    DATA(t327) = |v751|.
    t325 = t326->get( p0 = t327 ).
    t324 = t325.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t328 TYPE REF TO object.
      t328 = t324.
      t323->oval = t328.
    ENDIF.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t333) = |AS|.
    CREATE OBJECT t332.
    t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t332->sval = t333.
    t331 = t332.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = CAST zif_lnt_statement_runnable( t75 ).
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t337 TYPE REF TO object.
      t337 = t336.
      t335->oval = t337.
    ENDIF.
    t334 = t335.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t339 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t339.
    t338 = t339.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t341) = CAST zlnt_runtime_dyna_a429568d5be8( t331 ).
    DATA(t342) = CAST zlnt_runtime_dyna_a429568d5be8( t334 ).
    DATA(t343) = CAST zlnt_runtime_arra_c22708faf2e3( t338 ).
    t340 = zcl_lnt_st_combi_module=>seq( i_first = t341 i_second = t342 i_rest = t343 ).
    t330 = t340.
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t344 TYPE REF TO object.
      t344 = t330.
      t329->oval = t344.
    ENDIF.
    DATA t345 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t345.
    t322 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t323 i_first = t329 i_opts = t345 ).
    IF t322 IS BOUND.
      CREATE OBJECT t321.
      t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t346 TYPE REF TO object.
      t346 = t322.
      t321->oval = t346.
    ENDIF.
    t320 = zcl_lnt_st_combi_module=>opt_prio( i_first = t321 ).
    IF t320 IS BOUND.
      CREATE OBJECT t319.
      t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t347 TYPE REF TO object.
      t347 = t320.
      t319->oval = t347.
    ENDIF.
    APPEND t319 TO t318->items.
    DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t306 ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = CAST zif_lnt_statement_runnable( t25 ).
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t351 TYPE REF TO object.
      t351 = t350.
      t349->oval = t351.
    ENDIF.
    APPEND t349 TO t348->items.
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t306 ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA(t356) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t356 IS BOUND.
      CREATE OBJECT t355.
      t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t355->cval = t356.
    ENDIF.
    t354 = zcl_lnt_st_combi_module=>opt_prio( i_first = t355 ).
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t357 TYPE REF TO object.
      t357 = t354.
      t353->oval = t357.
    ENDIF.
    APPEND t353 TO t352->items.
    DATA t358 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t359) = CAST zlnt_runtime_dyna_a429568d5be8( t298 ).
    DATA(t360) = CAST zlnt_runtime_dyna_a429568d5be8( t301 ).
    DATA(t361) = CAST zlnt_runtime_arra_c22708faf2e3( t306 ).
    t358 = zcl_lnt_st_combi_module=>seq( i_first = t359 i_second = t360 i_rest = t361 ).
    t297 = t358.
    t296 = t297.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA t365 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t365.
    DATA t366 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t367.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t367 = zcl_lnt_version_module=>release_b8cd.
    DATA(t368) = |v757|.
    t366 = t367->get( p0 = t368 ).
    t365 = t366.
    IF t365 IS BOUND.
      CREATE OBJECT t364.
      t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t369 TYPE REF TO object.
      t369 = t365.
      t364->oval = t369.
    ENDIF.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t377) = |ROW_NUMBER|.
    CREATE OBJECT t376.
    t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t376->sval = t377.
    t375 = t376.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t380) = |RANK|.
    CREATE OBJECT t379.
    t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t379->sval = t380.
    t378 = t379.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t382.
    t381 = t382.
    DATA(t383) = CAST zlnt_runtime_arra_c22708faf2e3( t381 ).
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t385) = |DENSE_RANK|.
    CREATE OBJECT t384.
    t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t384->sval = t385.
    APPEND t384 TO t383->items.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t387) = CAST zlnt_runtime_dyna_a429568d5be8( t375 ).
    DATA(t388) = CAST zlnt_runtime_dyna_a429568d5be8( t378 ).
    DATA(t389) = CAST zlnt_runtime_arra_c22708faf2e3( t381 ).
    t386 = zcl_lnt_st_combi_module=>alt_prio( i_first = t387 i_second = t388 i_rest = t389 ).
    t374 = t386.
    IF t374 IS BOUND.
      CREATE OBJECT t373.
      t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t390 TYPE REF TO object.
      t390 = t374.
      t373->oval = t390.
    ENDIF.
    t372 = t373.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA t393 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t393.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t393 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t394 TYPE REF TO object.
      t394 = t393.
      t392->oval = t394.
    ENDIF.
    t391 = t392.
    DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t396.
    t395 = t396.
    DATA(t397) = CAST zlnt_runtime_arra_c22708faf2e3( t395 ).
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t399.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t399 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t399 IS BOUND.
      CREATE OBJECT t398.
      t398->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t400 TYPE REF TO object.
      t400 = t399.
      t398->oval = t400.
    ENDIF.
    APPEND t398 TO t397->items.
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t395 ).
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t402->cval = t403.
    ENDIF.
    APPEND t402 TO t401->items.
    DATA t404 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t405) = CAST zlnt_runtime_dyna_a429568d5be8( t372 ).
    DATA(t406) = CAST zlnt_runtime_dyna_a429568d5be8( t391 ).
    DATA(t407) = CAST zlnt_runtime_arra_c22708faf2e3( t395 ).
    t404 = zcl_lnt_st_combi_module=>seq( i_first = t405 i_second = t406 i_rest = t407 ).
    t371 = t404.
    IF t371 IS BOUND.
      CREATE OBJECT t370.
      t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t408 TYPE REF TO object.
      t408 = t371.
      t370->oval = t408.
    ENDIF.
    DATA t409 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t409.
    t363 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t364 i_first = t370 i_opts = t409 ).
    t362 = t363.
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t410.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t411.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA t413 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t413.
    DATA t414 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t415.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t415 = zcl_lnt_version_module=>release_b8cd.
    DATA(t416) = |v757|.
    t414 = t415->get( p0 = t416 ).
    t413 = t414.
    IF t413 IS BOUND.
      CREATE OBJECT t412.
      t412->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t417 TYPE REF TO object.
      t417 = t413.
      t412->oval = t417.
    ENDIF.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t419.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t425) = |LEAD|.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = t425.
    t423 = t424.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t428) = |LAG|.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = t428.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t430.
    t429 = t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t432) = CAST zlnt_runtime_dyna_a429568d5be8( t423 ).
    DATA(t433) = CAST zlnt_runtime_dyna_a429568d5be8( t426 ).
    DATA(t434) = CAST zlnt_runtime_arra_c22708faf2e3( t429 ).
    t431 = zcl_lnt_st_combi_module=>alt_prio( i_first = t432 i_second = t433 i_rest = t434 ).
    t422 = t431.
    IF t422 IS BOUND.
      CREATE OBJECT t421.
      t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t435 TYPE REF TO object.
      t435 = t422.
      t421->oval = t435.
    ENDIF.
    t420 = t421.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t439) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t438 = zcl_lnt_st_combi_module=>tok( i_t = t439 ).
    IF t438 IS BOUND.
      CREATE OBJECT t437.
      t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t440 TYPE REF TO object.
      t440 = t438.
      t437->oval = t440.
    ENDIF.
    t436 = t437.
    DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t442.
    t441 = t442.
    DATA(t443) = CAST zlnt_runtime_arra_c22708faf2e3( t441 ).
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA(t445) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t445 IS BOUND.
      CREATE OBJECT t444.
      t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t444->cval = t445.
    ENDIF.
    APPEND t444 TO t443->items.
    DATA(t446) = CAST zlnt_runtime_arra_c22708faf2e3( t441 ).
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA t448 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t448.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t453) = |,|.
    CREATE OBJECT t452.
    t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t452->sval = t453.
    t451 = t452.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA(t456) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t456 IS BOUND.
      CREATE OBJECT t455.
      t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t455->cval = t456.
    ENDIF.
    t454 = t455.
    DATA t457 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t458 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t458.
    t457 = t458.
    DATA(t459) = CAST zlnt_runtime_arra_c22708faf2e3( t457 ).
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA t461 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t461.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    DATA t463 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t463.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t466) = |,|.
    CREATE OBJECT t465.
    t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t465->sval = t466.
    t464 = t465.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    DATA(t469) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t469 IS BOUND.
      CREATE OBJECT t468.
      t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t468->cval = t469.
    ENDIF.
    t467 = t468.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t471.
    t470 = t471.
    DATA t472 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t473) = CAST zlnt_runtime_dyna_a429568d5be8( t464 ).
    DATA(t474) = CAST zlnt_runtime_dyna_a429568d5be8( t467 ).
    DATA(t475) = CAST zlnt_runtime_arra_c22708faf2e3( t470 ).
    t472 = zcl_lnt_st_combi_module=>seq( i_first = t473 i_second = t474 i_rest = t475 ).
    t463 = t472.
    IF t463 IS BOUND.
      CREATE OBJECT t462.
      t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t476 TYPE REF TO object.
      t476 = t463.
      t462->oval = t476.
    ENDIF.
    t461 = zcl_lnt_st_combi_module=>opt_prio( i_first = t462 ).
    IF t461 IS BOUND.
      CREATE OBJECT t460.
      t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t477 TYPE REF TO object.
      t477 = t461.
      t460->oval = t477.
    ENDIF.
    APPEND t460 TO t459->items.
    DATA t478 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t479) = CAST zlnt_runtime_dyna_a429568d5be8( t451 ).
    DATA(t480) = CAST zlnt_runtime_dyna_a429568d5be8( t454 ).
    DATA(t481) = CAST zlnt_runtime_arra_c22708faf2e3( t457 ).
    t478 = zcl_lnt_st_combi_module=>seq( i_first = t479 i_second = t480 i_rest = t481 ).
    t450 = t478.
    IF t450 IS BOUND.
      CREATE OBJECT t449.
      t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t482 TYPE REF TO object.
      t482 = t450.
      t449->oval = t482.
    ENDIF.
    t448 = zcl_lnt_st_combi_module=>opt_prio( i_first = t449 ).
    IF t448 IS BOUND.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t483 TYPE REF TO object.
      t483 = t448.
      t447->oval = t483.
    ENDIF.
    APPEND t447 TO t446->items.
    DATA(t484) = CAST zlnt_runtime_arra_c22708faf2e3( t441 ).
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t485.
    DATA t486 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t486.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t486 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t486 IS BOUND.
      CREATE OBJECT t485.
      t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t487 TYPE REF TO object.
      t487 = t486.
      t485->oval = t487.
    ENDIF.
    APPEND t485 TO t484->items.
    DATA(t488) = CAST zlnt_runtime_arra_c22708faf2e3( t441 ).
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t489.
    DATA(t490) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t490 IS BOUND.
      CREATE OBJECT t489.
      t489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t489->cval = t490.
    ENDIF.
    APPEND t489 TO t488->items.
    DATA t491 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t492) = CAST zlnt_runtime_dyna_a429568d5be8( t420 ).
    DATA(t493) = CAST zlnt_runtime_dyna_a429568d5be8( t436 ).
    DATA(t494) = CAST zlnt_runtime_arra_c22708faf2e3( t441 ).
    t491 = zcl_lnt_st_combi_module=>seq( i_first = t492 i_second = t493 i_rest = t494 ).
    t419 = t491.
    IF t419 IS BOUND.
      CREATE OBJECT t418.
      t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t495 TYPE REF TO object.
      t495 = t419.
      t418->oval = t495.
    ENDIF.
    DATA t496 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t496.
    t411 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t412 i_first = t418 i_opts = t496 ).
    t410 = t411.
    DATA t497 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t497.
    DATA t498 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t498.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    DATA t500 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t500.
    DATA t501 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t501.
    DATA t502 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t502.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t502 = zcl_lnt_version_module=>release_b8cd.
    DATA(t503) = |v757|.
    t501 = t502->get( p0 = t503 ).
    t500 = t501.
    IF t500 IS BOUND.
      CREATE OBJECT t499.
      t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t504 TYPE REF TO object.
      t504 = t500.
      t499->oval = t504.
    ENDIF.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    DATA t506 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA t509 TYPE REF TO zif_lnt_statement_runnable.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t512) = |FIRST_VALUE|.
    CREATE OBJECT t511.
    t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t511->sval = t512.
    t510 = t511.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t515) = |LAST_VALUE|.
    CREATE OBJECT t514.
    t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t514->sval = t515.
    t513 = t514.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t517.
    t516 = t517.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t519) = CAST zlnt_runtime_dyna_a429568d5be8( t510 ).
    DATA(t520) = CAST zlnt_runtime_dyna_a429568d5be8( t513 ).
    DATA(t521) = CAST zlnt_runtime_arra_c22708faf2e3( t516 ).
    t518 = zcl_lnt_st_combi_module=>alt_prio( i_first = t519 i_second = t520 i_rest = t521 ).
    t509 = t518.
    IF t509 IS BOUND.
      CREATE OBJECT t508.
      t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t522 TYPE REF TO object.
      t522 = t509.
      t508->oval = t522.
    ENDIF.
    t507 = t508.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t523.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t524.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t526) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t525 = zcl_lnt_st_combi_module=>tok( i_t = t526 ).
    IF t525 IS BOUND.
      CREATE OBJECT t524.
      t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t527 TYPE REF TO object.
      t527 = t525.
      t524->oval = t527.
    ENDIF.
    t523 = t524.
    DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t529.
    t528 = t529.
    DATA(t530) = CAST zlnt_runtime_arra_c22708faf2e3( t528 ).
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA(t532) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t532 IS BOUND.
      CREATE OBJECT t531.
      t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t531->cval = t532.
    ENDIF.
    APPEND t531 TO t530->items.
    DATA(t533) = CAST zlnt_runtime_arra_c22708faf2e3( t528 ).
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t534.
    DATA t535 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t535.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t535 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t535 IS BOUND.
      CREATE OBJECT t534.
      t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t536 TYPE REF TO object.
      t536 = t535.
      t534->oval = t536.
    ENDIF.
    APPEND t534 TO t533->items.
    DATA(t537) = CAST zlnt_runtime_arra_c22708faf2e3( t528 ).
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t538.
    DATA(t539) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t539 IS BOUND.
      CREATE OBJECT t538.
      t538->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t538->cval = t539.
    ENDIF.
    APPEND t538 TO t537->items.
    DATA t540 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t541) = CAST zlnt_runtime_dyna_a429568d5be8( t507 ).
    DATA(t542) = CAST zlnt_runtime_dyna_a429568d5be8( t523 ).
    DATA(t543) = CAST zlnt_runtime_arra_c22708faf2e3( t528 ).
    t540 = zcl_lnt_st_combi_module=>seq( i_first = t541 i_second = t542 i_rest = t543 ).
    t506 = t540.
    IF t506 IS BOUND.
      CREATE OBJECT t505.
      t505->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t544 TYPE REF TO object.
      t544 = t506.
      t505->oval = t544.
    ENDIF.
    DATA t545 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t545.
    t498 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t499 i_first = t505 i_opts = t545 ).
    t497 = t498.
    DATA t546 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t546.
    DATA t547 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t547.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t548.
    DATA t549 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t549.
    DATA t550 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t550.
    DATA t551 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t551.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t551 = zcl_lnt_version_module=>release_b8cd.
    DATA(t552) = |v757|.
    t550 = t551->get( p0 = t552 ).
    t549 = t550.
    IF t549 IS BOUND.
      CREATE OBJECT t548.
      t548->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t553 TYPE REF TO object.
      t553 = t549.
      t548->oval = t553.
    ENDIF.
    DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t554.
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t555.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t558) = |STRING_AGG|.
    CREATE OBJECT t557.
    t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t557->sval = t558.
    t556 = t557.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t560.
    DATA t561 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t562) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t561 = zcl_lnt_st_combi_module=>tok( i_t = t562 ).
    IF t561 IS BOUND.
      CREATE OBJECT t560.
      t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t563 TYPE REF TO object.
      t563 = t561.
      t560->oval = t563.
    ENDIF.
    t559 = t560.
    DATA t564 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t565 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t565.
    t564 = t565.
    DATA(t566) = CAST zlnt_runtime_arra_c22708faf2e3( t564 ).
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t567.
    DATA(t568) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t568 IS BOUND.
      CREATE OBJECT t567.
      t567->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t567->cval = t568.
    ENDIF.
    APPEND t567 TO t566->items.
    DATA(t569) = CAST zlnt_runtime_arra_c22708faf2e3( t564 ).
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t570.
    DATA t571 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t571.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t572.
    DATA t573 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t573.
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t576) = |,|.
    CREATE OBJECT t575.
    t575->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t575->sval = t576.
    t574 = t575.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA(t579) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t579 IS BOUND.
      CREATE OBJECT t578.
      t578->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t578->cval = t579.
    ENDIF.
    t577 = t578.
    DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t581 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t581.
    t580 = t581.
    DATA t582 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t583) = CAST zlnt_runtime_dyna_a429568d5be8( t574 ).
    DATA(t584) = CAST zlnt_runtime_dyna_a429568d5be8( t577 ).
    DATA(t585) = CAST zlnt_runtime_arra_c22708faf2e3( t580 ).
    t582 = zcl_lnt_st_combi_module=>seq( i_first = t583 i_second = t584 i_rest = t585 ).
    t573 = t582.
    IF t573 IS BOUND.
      CREATE OBJECT t572.
      t572->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t586 TYPE REF TO object.
      t586 = t573.
      t572->oval = t586.
    ENDIF.
    t571 = zcl_lnt_st_combi_module=>opt_prio( i_first = t572 ).
    IF t571 IS BOUND.
      CREATE OBJECT t570.
      t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t587 TYPE REF TO object.
      t587 = t571.
      t570->oval = t587.
    ENDIF.
    APPEND t570 TO t569->items.
    DATA(t588) = CAST zlnt_runtime_arra_c22708faf2e3( t564 ).
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t589.
    DATA t590 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t590.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t590 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t590 IS BOUND.
      CREATE OBJECT t589.
      t589->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t591 TYPE REF TO object.
      t591 = t590.
      t589->oval = t591.
    ENDIF.
    APPEND t589 TO t588->items.
    DATA(t592) = CAST zlnt_runtime_arra_c22708faf2e3( t564 ).
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA t594 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t594.
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t595.
    DATA(t596) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t596 IS BOUND.
      CREATE OBJECT t595.
      t595->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t595->cval = t596.
    ENDIF.
    t594 = zcl_lnt_st_combi_module=>opt_prio( i_first = t595 ).
    IF t594 IS BOUND.
      CREATE OBJECT t593.
      t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t597 TYPE REF TO object.
      t597 = t594.
      t593->oval = t597.
    ENDIF.
    APPEND t593 TO t592->items.
    DATA t598 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t599) = CAST zlnt_runtime_dyna_a429568d5be8( t556 ).
    DATA(t600) = CAST zlnt_runtime_dyna_a429568d5be8( t559 ).
    DATA(t601) = CAST zlnt_runtime_arra_c22708faf2e3( t564 ).
    t598 = zcl_lnt_st_combi_module=>seq( i_first = t599 i_second = t600 i_rest = t601 ).
    t555 = t598.
    IF t555 IS BOUND.
      CREATE OBJECT t554.
      t554->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t602 TYPE REF TO object.
      t602 = t555.
      t554->oval = t602.
    ENDIF.
    DATA t603 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t603.
    t547 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t548 i_first = t554 i_opts = t603 ).
    t546 = t547.
    DATA t604 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t604.
    DATA t605 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t605.
    DATA t606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t606.
    DATA t607 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t607.
    DATA t608 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t608.
    DATA t609 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t609.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t609 = zcl_lnt_version_module=>release_b8cd.
    DATA(t610) = |v757|.
    t608 = t609->get( p0 = t610 ).
    t607 = t608.
    IF t607 IS BOUND.
      CREATE OBJECT t606.
      t606->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t611 TYPE REF TO object.
      t611 = t607.
      t606->oval = t611.
    ENDIF.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t613.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t616) = |NTILE|.
    CREATE OBJECT t615.
    t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t615->sval = t616.
    t614 = t615.
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t617.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t618.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t620) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t619 = zcl_lnt_st_combi_module=>tok( i_t = t620 ).
    IF t619 IS BOUND.
      CREATE OBJECT t618.
      t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t621 TYPE REF TO object.
      t621 = t619.
      t618->oval = t621.
    ENDIF.
    t617 = t618.
    DATA t622 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t623 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t623.
    t622 = t623.
    DATA(t624) = CAST zlnt_runtime_arra_c22708faf2e3( t622 ).
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t625.
    DATA(t626) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t626 IS BOUND.
      CREATE OBJECT t625.
      t625->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t625->cval = t626.
    ENDIF.
    APPEND t625 TO t624->items.
    DATA(t627) = CAST zlnt_runtime_arra_c22708faf2e3( t622 ).
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    DATA t629 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t629.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t629 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t629 IS BOUND.
      CREATE OBJECT t628.
      t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t630 TYPE REF TO object.
      t630 = t629.
      t628->oval = t630.
    ENDIF.
    APPEND t628 TO t627->items.
    DATA(t631) = CAST zlnt_runtime_arra_c22708faf2e3( t622 ).
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    DATA(t633) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t633 IS BOUND.
      CREATE OBJECT t632.
      t632->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t632->cval = t633.
    ENDIF.
    APPEND t632 TO t631->items.
    DATA t634 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t635) = CAST zlnt_runtime_dyna_a429568d5be8( t614 ).
    DATA(t636) = CAST zlnt_runtime_dyna_a429568d5be8( t617 ).
    DATA(t637) = CAST zlnt_runtime_arra_c22708faf2e3( t622 ).
    t634 = zcl_lnt_st_combi_module=>seq( i_first = t635 i_second = t636 i_rest = t637 ).
    t613 = t634.
    IF t613 IS BOUND.
      CREATE OBJECT t612.
      t612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t638 TYPE REF TO object.
      t638 = t613.
      t612->oval = t638.
    ENDIF.
    DATA t639 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t639.
    t605 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t606 i_first = t612 i_opts = t639 ).
    t604 = t605.
    DATA t640 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t640.
    DATA t641 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t641.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    DATA t643 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t643.
    DATA t644 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t644.
    DATA t645 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t645.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t645 = zcl_lnt_version_module=>release_b8cd.
    DATA(t646) = |v757|.
    t644 = t645->get( p0 = t646 ).
    t643 = t644.
    IF t643 IS BOUND.
      CREATE OBJECT t642.
      t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t647 TYPE REF TO object.
      t647 = t643.
      t642->oval = t647.
    ENDIF.
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t648.
    DATA t649 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t649.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t650.
    DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t651.
    DATA t652 TYPE REF TO zif_lnt_statement_runnable.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t655) = |CORR_SPEARMAN|.
    CREATE OBJECT t654.
    t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t654->sval = t655.
    t653 = t654.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t658) = |CORR|.
    CREATE OBJECT t657.
    t657->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t657->sval = t658.
    t656 = t657.
    DATA t659 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t660 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t660.
    t659 = t660.
    DATA t661 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t662) = CAST zlnt_runtime_dyna_a429568d5be8( t653 ).
    DATA(t663) = CAST zlnt_runtime_dyna_a429568d5be8( t656 ).
    DATA(t664) = CAST zlnt_runtime_arra_c22708faf2e3( t659 ).
    t661 = zcl_lnt_st_combi_module=>alt_prio( i_first = t662 i_second = t663 i_rest = t664 ).
    t652 = t661.
    IF t652 IS BOUND.
      CREATE OBJECT t651.
      t651->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t665 TYPE REF TO object.
      t665 = t652.
      t651->oval = t665.
    ENDIF.
    t650 = t651.
    DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t666.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    DATA t668 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t669) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t668 = zcl_lnt_st_combi_module=>tok( i_t = t669 ).
    IF t668 IS BOUND.
      CREATE OBJECT t667.
      t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t670 TYPE REF TO object.
      t670 = t668.
      t667->oval = t670.
    ENDIF.
    t666 = t667.
    DATA t671 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t672 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t672.
    t671 = t672.
    DATA(t673) = CAST zlnt_runtime_arra_c22708faf2e3( t671 ).
    DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t674.
    DATA(t675) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t675 IS BOUND.
      CREATE OBJECT t674.
      t674->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t674->cval = t675.
    ENDIF.
    APPEND t674 TO t673->items.
    DATA(t676) = CAST zlnt_runtime_arra_c22708faf2e3( t671 ).
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t678) = |,|.
    CREATE OBJECT t677.
    t677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t677->sval = t678.
    APPEND t677 TO t676->items.
    DATA(t679) = CAST zlnt_runtime_arra_c22708faf2e3( t671 ).
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t680.
    DATA(t681) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t681 IS BOUND.
      CREATE OBJECT t680.
      t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t680->cval = t681.
    ENDIF.
    APPEND t680 TO t679->items.
    DATA(t682) = CAST zlnt_runtime_arra_c22708faf2e3( t671 ).
    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t683.
    DATA t684 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t684.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t684 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t684 IS BOUND.
      CREATE OBJECT t683.
      t683->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t685 TYPE REF TO object.
      t685 = t684.
      t683->oval = t685.
    ENDIF.
    APPEND t683 TO t682->items.
    DATA(t686) = CAST zlnt_runtime_arra_c22708faf2e3( t671 ).
    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t687.
    DATA t688 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t688.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t689.
    DATA(t690) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t690 IS BOUND.
      CREATE OBJECT t689.
      t689->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t689->cval = t690.
    ENDIF.
    t688 = zcl_lnt_st_combi_module=>opt_prio( i_first = t689 ).
    IF t688 IS BOUND.
      CREATE OBJECT t687.
      t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t691 TYPE REF TO object.
      t691 = t688.
      t687->oval = t691.
    ENDIF.
    APPEND t687 TO t686->items.
    DATA t692 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t693) = CAST zlnt_runtime_dyna_a429568d5be8( t650 ).
    DATA(t694) = CAST zlnt_runtime_dyna_a429568d5be8( t666 ).
    DATA(t695) = CAST zlnt_runtime_arra_c22708faf2e3( t671 ).
    t692 = zcl_lnt_st_combi_module=>seq( i_first = t693 i_second = t694 i_rest = t695 ).
    t649 = t692.
    IF t649 IS BOUND.
      CREATE OBJECT t648.
      t648->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t696 TYPE REF TO object.
      t696 = t649.
      t648->oval = t696.
    ENDIF.
    DATA t697 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t697.
    t641 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t642 i_first = t648 i_opts = t697 ).
    t640 = t641.
    DATA t698 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t698.
    DATA t699 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t699.
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t700.
    DATA t701 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t701.
    DATA t702 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t702.
    DATA t703 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t703.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t703 = zcl_lnt_version_module=>release_b8cd.
    DATA(t704) = |v757|.
    t702 = t703->get( p0 = t704 ).
    t701 = t702.
    IF t701 IS BOUND.
      CREATE OBJECT t700.
      t700->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t705 TYPE REF TO object.
      t705 = t701.
      t700->oval = t705.
    ENDIF.
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t706.
    DATA t707 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t707.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t708.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t709.
    DATA t710 TYPE REF TO zif_lnt_statement_runnable.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t713) = |PRODUCT|.
    CREATE OBJECT t712.
    t712->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t712->sval = t713.
    t711 = t712.
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t716) = |MEDIAN|.
    CREATE OBJECT t715.
    t715->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t715->sval = t716.
    t714 = t715.
    DATA t717 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t718 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t718.
    t717 = t718.
    DATA(t719) = CAST zlnt_runtime_arra_c22708faf2e3( t717 ).
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t721) = |VAR|.
    CREATE OBJECT t720.
    t720->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t720->sval = t721.
    APPEND t720 TO t719->items.
    DATA(t722) = CAST zlnt_runtime_arra_c22708faf2e3( t717 ).
    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t724) = |STDDEV|.
    CREATE OBJECT t723.
    t723->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t723->sval = t724.
    APPEND t723 TO t722->items.
    DATA t725 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t726) = CAST zlnt_runtime_dyna_a429568d5be8( t711 ).
    DATA(t727) = CAST zlnt_runtime_dyna_a429568d5be8( t714 ).
    DATA(t728) = CAST zlnt_runtime_arra_c22708faf2e3( t717 ).
    t725 = zcl_lnt_st_combi_module=>alt_prio( i_first = t726 i_second = t727 i_rest = t728 ).
    t710 = t725.
    IF t710 IS BOUND.
      CREATE OBJECT t709.
      t709->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t729 TYPE REF TO object.
      t729 = t710.
      t709->oval = t729.
    ENDIF.
    t708 = t709.
    DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t730.
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t731.
    DATA t732 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t733) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t732 = zcl_lnt_st_combi_module=>tok( i_t = t733 ).
    IF t732 IS BOUND.
      CREATE OBJECT t731.
      t731->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t734 TYPE REF TO object.
      t734 = t732.
      t731->oval = t734.
    ENDIF.
    t730 = t731.
    DATA t735 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t736 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t736.
    t735 = t736.
    DATA(t737) = CAST zlnt_runtime_arra_c22708faf2e3( t735 ).
    DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t738.
    DATA(t739) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t739 IS BOUND.
      CREATE OBJECT t738.
      t738->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t738->cval = t739.
    ENDIF.
    APPEND t738 TO t737->items.
    DATA(t740) = CAST zlnt_runtime_arra_c22708faf2e3( t735 ).
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t741.
    DATA t742 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t742.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t742 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t742 IS BOUND.
      CREATE OBJECT t741.
      t741->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t743 TYPE REF TO object.
      t743 = t742.
      t741->oval = t743.
    ENDIF.
    APPEND t741 TO t740->items.
    DATA(t744) = CAST zlnt_runtime_arra_c22708faf2e3( t735 ).
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t745.
    DATA t746 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t746.
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t747.
    DATA(t748) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
    IF t748 IS BOUND.
      CREATE OBJECT t747.
      t747->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t747->cval = t748.
    ENDIF.
    t746 = zcl_lnt_st_combi_module=>opt_prio( i_first = t747 ).
    IF t746 IS BOUND.
      CREATE OBJECT t745.
      t745->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t749 TYPE REF TO object.
      t749 = t746.
      t745->oval = t749.
    ENDIF.
    APPEND t745 TO t744->items.
    DATA t750 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t751) = CAST zlnt_runtime_dyna_a429568d5be8( t708 ).
    DATA(t752) = CAST zlnt_runtime_dyna_a429568d5be8( t730 ).
    DATA(t753) = CAST zlnt_runtime_arra_c22708faf2e3( t735 ).
    t750 = zcl_lnt_st_combi_module=>seq( i_first = t751 i_second = t752 i_rest = t753 ).
    t707 = t750.
    IF t707 IS BOUND.
      CREATE OBJECT t706.
      t706->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t754 TYPE REF TO object.
      t754 = t707.
      t706->oval = t754.
    ENDIF.
    DATA t755 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t755.
    t699 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t700 i_first = t706 i_opts = t755 ).
    t698 = t699.
    DATA t756 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t756.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t758.
    DATA(t759) = CAST zif_lnt_statement_runnable( t362 ).
    IF t759 IS BOUND.
      CREATE OBJECT t758.
      t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t760 TYPE REF TO object.
      t760 = t759.
      t758->oval = t760.
    ENDIF.
    t757 = t758.
    DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t761.
    DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t762.
    DATA(t763) = CAST zif_lnt_statement_runnable( t410 ).
    IF t763 IS BOUND.
      CREATE OBJECT t762.
      t762->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t764 TYPE REF TO object.
      t764 = t763.
      t762->oval = t764.
    ENDIF.
    t761 = t762.
    DATA t765 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t766 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t766.
    t765 = t766.
    DATA(t767) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t768.
    DATA(t769) = CAST zif_lnt_statement_runnable( t497 ).
    IF t769 IS BOUND.
      CREATE OBJECT t768.
      t768->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t770 TYPE REF TO object.
      t770 = t769.
      t768->oval = t770.
    ENDIF.
    APPEND t768 TO t767->items.
    DATA(t771) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t772.
    DATA(t773) = CAST zif_lnt_statement_runnable( t546 ).
    IF t773 IS BOUND.
      CREATE OBJECT t772.
      t772->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t774 TYPE REF TO object.
      t774 = t773.
      t772->oval = t774.
    ENDIF.
    APPEND t772 TO t771->items.
    DATA(t775) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t776.
    DATA(t777) = CAST zif_lnt_statement_runnable( t604 ).
    IF t777 IS BOUND.
      CREATE OBJECT t776.
      t776->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t778 TYPE REF TO object.
      t778 = t777.
      t776->oval = t778.
    ENDIF.
    APPEND t776 TO t775->items.
    DATA(t779) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t780.
    DATA(t781) = CAST zif_lnt_statement_runnable( t640 ).
    IF t781 IS BOUND.
      CREATE OBJECT t780.
      t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t782 TYPE REF TO object.
      t782 = t781.
      t780->oval = t782.
    ENDIF.
    APPEND t780 TO t779->items.
    DATA(t783) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t784.
    DATA(t785) = CAST zif_lnt_statement_runnable( t698 ).
    IF t785 IS BOUND.
      CREATE OBJECT t784.
      t784->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t786 TYPE REF TO object.
      t786 = t785.
      t784->oval = t786.
    ENDIF.
    APPEND t784 TO t783->items.
    DATA(t787) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t788.
    DATA(t789) = CAST zif_lnt_statement_runnable( t143 ).
    IF t789 IS BOUND.
      CREATE OBJECT t788.
      t788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t790 TYPE REF TO object.
      t790 = t789.
      t788->oval = t790.
    ENDIF.
    APPEND t788 TO t787->items.
    DATA(t791) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t792.
    DATA(t793) = CAST zif_lnt_statement_runnable( t191 ).
    IF t793 IS BOUND.
      CREATE OBJECT t792.
      t792->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t794 TYPE REF TO object.
      t794 = t793.
      t792->oval = t794.
    ENDIF.
    APPEND t792 TO t791->items.
    DATA(t795) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t796.
    DATA(t797) = CAST zif_lnt_statement_runnable( t226 ).
    IF t797 IS BOUND.
      CREATE OBJECT t796.
      t796->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t798 TYPE REF TO object.
      t798 = t797.
      t796->oval = t798.
    ENDIF.
    APPEND t796 TO t795->items.
    DATA(t799) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t800.
    DATA(t801) = CAST zif_lnt_statement_runnable( t261 ).
    IF t801 IS BOUND.
      CREATE OBJECT t800.
      t800->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t802 TYPE REF TO object.
      t802 = t801.
      t800->oval = t802.
    ENDIF.
    APPEND t800 TO t799->items.
    DATA(t803) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t804.
    DATA(t805) = CAST zif_lnt_statement_runnable( t296 ).
    IF t805 IS BOUND.
      CREATE OBJECT t804.
      t804->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t806 TYPE REF TO object.
      t806 = t805.
      t804->oval = t806.
    ENDIF.
    APPEND t804 TO t803->items.
    DATA t807 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t808) = CAST zlnt_runtime_dyna_a429568d5be8( t757 ).
    DATA(t809) = CAST zlnt_runtime_dyna_a429568d5be8( t761 ).
    DATA(t810) = CAST zlnt_runtime_arra_c22708faf2e3( t765 ).
    t807 = zcl_lnt_st_combi_module=>alt_prio( i_first = t808 i_second = t809 i_rest = t810 ).
    t756 = t807.
    result = t756.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
  ENDMETHOD.
ENDCLASS.
