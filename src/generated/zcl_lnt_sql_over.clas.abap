* TS: src/abap/2_statements/expressions/sql_over.ts:12:1 SQLOver
CLASS zcl_lnt_sql_over DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_over IMPLEMENTATION.
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
    DATA(t5) = |PARTITION|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |BY|.
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
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = |,|.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    t21 = zcl_lnt_st_combi_module=>opt( i_first = t22 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t21.
      t20->oval = t24.
    ENDIF.
    t19 = t20.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t15 = t27.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t15.
      t14->oval = t31.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>plus( i_first = t14 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t13.
      t12->oval = t32.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t34 i_second = t35 i_rest = t36 ).
    t2 = t33.
    t1 = t2.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = |UNBOUNDED|.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t40->sval = t41.
    t39 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = |PRECEDING|.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t45 = t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t42 ).
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t45 ).
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t49 i_rest = t50 ).
    t38 = t47.
    t37 = t38.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |UNBOUNDED|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = |FOLLOWING|.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    t59 = t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t62 i_second = t63 i_rest = t64 ).
    t52 = t61.
    t51 = t52.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |CURRENT|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = t68.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = |ROW|.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = t72.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t73 = t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t76) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t66 = t75.
    t65 = t66.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t82->cval = t83.
    ENDIF.
    t81 = t82.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |PRECEDING|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = |FOLLOWING|.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t93 = t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t90 ).
    DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    t95 = zcl_lnt_st_combi_module=>alt_prio( i_first = t96 i_second = t97 i_rest = t98 ).
    t86 = t95.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t99 TYPE REF TO object.
      t99 = t86.
      t85->oval = t99.
    ENDIF.
    t84 = t85.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t101.
    t100 = t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t103) = CAST zlnt_runtime_dyna_a429568d5be8( t81 ).
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t100 ).
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t104 i_rest = t105 ).
    t80 = t102.
    t79 = t80.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = CAST zif_lnt_statement_runnable( t37 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t110.
      t109->oval = t111.
    ENDIF.
    t108 = t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = CAST zif_lnt_statement_runnable( t51 ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t115 TYPE REF TO object.
      t115 = t114.
      t113->oval = t115.
    ENDIF.
    t112 = t113.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    t116 = t117.
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t116 ).
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = CAST zif_lnt_statement_runnable( t65 ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t121 TYPE REF TO object.
      t121 = t120.
      t119->oval = t121.
    ENDIF.
    APPEND t119 TO t118->items.
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t116 ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = CAST zif_lnt_statement_runnable( t79 ).
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t125 TYPE REF TO object.
      t125 = t124.
      t123->oval = t125.
    ENDIF.
    APPEND t123 TO t122->items.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t128) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t129) = CAST zlnt_runtime_arra_c22708faf2e3( t116 ).
    t126 = zcl_lnt_st_combi_module=>alt_prio( i_first = t127 i_second = t128 i_rest = t129 ).
    t107 = t126.
    t106 = t107.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t133.
    DATA t134 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t135.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t135 = zcl_lnt_version_module=>release_b8cd.
    DATA(t136) = |v757|.
    t134 = t135->get( p0 = t136 ).
    t133 = t134.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t133.
      t132->oval = t137.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t142) = |ROWS|.
    CREATE OBJECT t141.
    t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t141->sval = t142.
    t140 = t141.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t145) = |BETWEEN|.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = t145.
    t143 = t144.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    t146 = t147.
    DATA(t148) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = CAST zif_lnt_statement_runnable( t106 ).
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t150.
      t149->oval = t151.
    ENDIF.
    APPEND t149 TO t148->items.
    DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = |AND|.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = t154.
    APPEND t153 TO t152->items.
    DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = CAST zif_lnt_statement_runnable( t106 ).
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t157.
      t156->oval = t158.
    ENDIF.
    APPEND t156 TO t155->items.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t160) = CAST zlnt_runtime_dyna_a429568d5be8( t140 ).
    DATA(t161) = CAST zlnt_runtime_dyna_a429568d5be8( t143 ).
    DATA(t162) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t161 i_rest = t162 ).
    t139 = t159.
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t163 TYPE REF TO object.
      t163 = t139.
      t138->oval = t163.
    ENDIF.
    DATA t164 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t164.
    t131 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t132 i_first = t138 i_opts = t164 ).
    t130 = t131.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t167.
    DATA t168 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t169.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t169 = zcl_lnt_version_module=>release_b8cd.
    DATA(t170) = |v757|.
    t168 = t169->get( p0 = t170 ).
    t167 = t168.
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t171 TYPE REF TO object.
      t171 = t167.
      t166->oval = t171.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = |OVER|.
    CREATE OBJECT t175.
    t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t175->sval = t176.
    t174 = t175.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    t179 = zcl_lnt_sql_over_module=>lparen.
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t180 TYPE REF TO object.
      t180 = t179.
      t178->oval = t180.
    ENDIF.
    t177 = t178.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    t181 = t182.
    DATA(t183) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = CAST zif_lnt_statement_runnable( t1 ).
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t188 TYPE REF TO object.
      t188 = t187.
      t186->oval = t188.
    ENDIF.
    t185 = zcl_lnt_st_combi_module=>opt_prio( i_first = t186 ).
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t189 TYPE REF TO object.
      t189 = t185.
      t184->oval = t189.
    ENDIF.
    APPEND t184 TO t183->items.
    DATA(t190) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA(t194) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814 ).
    IF t194 IS BOUND.
      CREATE OBJECT t193.
      t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t193->cval = t194.
    ENDIF.
    t192 = zcl_lnt_st_combi_module=>opt_prio( i_first = t193 ).
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t195 TYPE REF TO object.
      t195 = t192.
      t191->oval = t195.
    ENDIF.
    APPEND t191 TO t190->items.
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = CAST zif_lnt_statement_runnable( t130 ).
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t201 TYPE REF TO object.
      t201 = t200.
      t199->oval = t201.
    ENDIF.
    t198 = zcl_lnt_st_combi_module=>opt_prio( i_first = t199 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t198.
      t197->oval = t202.
    ENDIF.
    APPEND t197 TO t196->items.
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    t205 = zcl_lnt_sql_over_module=>rparen.
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t206 TYPE REF TO object.
      t206 = t205.
      t204->oval = t206.
    ENDIF.
    APPEND t204 TO t203->items.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t174 ).
    DATA(t209) = CAST zlnt_runtime_dyna_a429568d5be8( t177 ).
    DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t209 i_rest = t210 ).
    t173 = t207.
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t211 TYPE REF TO object.
      t211 = t173.
      t172->oval = t211.
    ENDIF.
    DATA t212 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t212.
    t165 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t166 i_first = t172 i_opts = t212 ).
    result = t165.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
  ENDMETHOD.
ENDCLASS.
