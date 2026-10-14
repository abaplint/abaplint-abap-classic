* TS: src/abap/2_statements/expressions/source.ts:16:1 Source
CLASS zcl_lnt_st_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_source IMPLEMENTATION.
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d124_1ce9c8f13c80.
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
    DATA(t14) = t3.
    DATA(t15) = t8.
    DATA(t16) = t11.
    t13 = zcl_lnt_st_combi_module=>seq( i_first = t14 i_second = t15 i_rest = t16 ).
    t2 = t13.
    t1 = t2.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d90_ea4359cbebf3c6.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = t19.
    DATA(t29) = t22.
    DATA(t30) = t25.
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t18 = t27.
    t17 = t18.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t38.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t38 = zcl_lnt_version_module=>release_b8cd.
    DATA(t39) = |v756|.
    t37 = t38->get( p0 = t39 ).
    t36 = t37.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t36.
      t35->oval = t40.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    DATA t43 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t43.
    t34 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t35 i_first = t41 i_opts = t43 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t44 TYPE REF TO object.
      t44 = t34.
      t33->oval = t44.
    ENDIF.
    t32 = zcl_lnt_st_combi_module=>opt_prio( i_first = t33 ).
    t31 = t32.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zif_lnt_statement_runnable( zcl_lnt_dynamic_access_module=>dyn_attr( ) ).
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
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t56 = t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t59) = t56.
    t58 = zcl_lnt_dynamic_access_module=>dyn_comp( i_inside = t59 ).
    t55 = t58.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t60 TYPE REF TO object.
      t60 = t55.
      t54->oval = t60.
    ENDIF.
    t53 = t54.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    t61 = t62.
    DATA(t63) = t61.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    APPEND t64 TO t63->items.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t67) = t49.
    DATA(t68) = t53.
    DATA(t69) = t61.
    t66 = zcl_lnt_st_combi_module=>alt_prio( i_first = t67 i_second = t68 i_rest = t69 ).
    t48 = t66.
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t70 TYPE REF TO object.
      t70 = t48.
      t47->oval = t70.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>star( i_first = t47 ).
    t45 = t46.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = t17.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t83.
      t82->oval = t84.
    ENDIF.
    t81 = t82.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = t1.
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t88 TYPE REF TO object.
      t88 = t87.
      t86->oval = t88.
    ENDIF.
    t85 = t86.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t89 = t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t92) = t81.
    DATA(t93) = t85.
    DATA(t94) = t89.
    t91 = zcl_lnt_st_combi_module=>alt_prio( i_first = t92 i_second = t93 i_rest = t94 ).
    t80 = t91.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t95 TYPE REF TO object.
      t95 = t80.
      t79->oval = t95.
    ENDIF.
    t78 = zcl_lnt_st_combi_module=>opt_prio( i_first = t79 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t78.
      t77->oval = t96.
    ENDIF.
    t76 = t77.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    t97 = t98.
    DATA(t99) = t97.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = t31.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t102 TYPE REF TO object.
      t102 = t101.
      t100->oval = t102.
    ENDIF.
    APPEND t100 TO t99->items.
    DATA(t103) = t97.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = t45.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t106 TYPE REF TO object.
      t106 = t105.
      t104->oval = t106.
    ENDIF.
    APPEND t104 TO t103->items.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = t73.
    DATA(t109) = t76.
    DATA(t110) = t97.
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t108 i_second = t109 i_rest = t110 ).
    t72 = t107.
    t71 = t72.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t112 = zcl_lnt_st_combi_module=>tok( i_t = t113 ).
    t111 = t112.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t118 = zcl_lnt_st_combi_module=>tok( i_t = t119 ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t118.
      t117->oval = t120.
    ENDIF.
    t116 = t117.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t123 = zcl_lnt_st_combi_module=>tok( i_t = t124 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t125 TYPE REF TO object.
      t125 = t123.
      t122->oval = t125.
    ENDIF.
    t121 = t122.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    t126 = t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t129) = t116.
    DATA(t130) = t121.
    DATA(t131) = t126.
    t128 = zcl_lnt_st_combi_module=>alt_prio( i_first = t129 i_second = t130 i_rest = t131 ).
    t115 = t128.
    t114 = t115.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736.
    t136 = zcl_lnt_st_combi_module=>tok( i_t = t137 ).
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t138 TYPE REF TO object.
      t138 = t136.
      t135->oval = t138.
    ENDIF.
    t134 = t135.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t141 = zcl_lnt_st_combi_module=>tok( i_t = t142 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t143 TYPE REF TO object.
      t143 = t141.
      t140->oval = t143.
    ENDIF.
    t139 = t140.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t145.
    t144 = t145.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t147) = t134.
    DATA(t148) = t139.
    DATA(t149) = t144.
    t146 = zcl_lnt_st_combi_module=>alt_prio( i_first = t147 i_second = t148 i_rest = t149 ).
    t133 = t146.
    t132 = t133.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t154 = zcl_lnt_st_combi_module=>tok( i_t = t155 ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t156 TYPE REF TO object.
      t156 = t154.
      t153->oval = t156.
    ENDIF.
    t152 = t153.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t159 IS BOUND.
      CREATE OBJECT t158.
      t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t158->cval = t159.
    ENDIF.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t161.
    t160 = t161.
    DATA(t162) = t160.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = t111.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t164.
      t163->oval = t165.
    ENDIF.
    APPEND t163 TO t162->items.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t167) = t152.
    DATA(t168) = t157.
    DATA(t169) = t160.
    t166 = zcl_lnt_st_combi_module=>seq( i_first = t167 i_second = t168 i_rest = t169 ).
    t151 = t166.
    t150 = t151.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = |&|.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    t175 = t176.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t180) = |&&|.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = t180.
    t178 = t179.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    t181 = t182.
    DATA(t183) = t181.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    APPEND t184 TO t183->items.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t187) = t175.
    DATA(t188) = t178.
    DATA(t189) = t181.
    t186 = zcl_lnt_st_combi_module=>alt_prio( i_first = t187 i_second = t188 i_rest = t189 ).
    t174 = t186.
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t190 TYPE REF TO object.
      t190 = t174.
      t173->oval = t190.
    ENDIF.
    t172 = t173.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
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
    DATA(t197) = t172.
    DATA(t198) = t191.
    DATA(t199) = t194.
    t196 = zcl_lnt_st_combi_module=>seq( i_first = t197 i_second = t198 i_rest = t199 ).
    t171 = t196.
    t170 = t171.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t209.
    DATA t210 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t211.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t211 = zcl_lnt_version_module=>release_b8cd.
    DATA(t212) = |v702|.
    t210 = t211->get( p0 = t212 ).
    t209 = t210.
    IF t209 IS BOUND.
      CREATE OBJECT t208.
      t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t213 TYPE REF TO object.
      t213 = t209.
      t208->oval = t213.
    ENDIF.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA t216 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t216.
    DATA(t217) = |^BOOLC$|.
    DATA(t218) = |i|.
    CREATE OBJECT t216 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t217 flags = t218.
    t215 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t216 ).
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t215.
      t214->oval = t219.
    ENDIF.
    DATA t220 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t220.
    DATA(t221) = abap_true.
    IF t221 = abap_true.
      DATA t222 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t223.
      DATA(t224) = abap_true.
      IF t224 = abap_true.
        DATA(t225) = |OpenABAP|.
        DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t226->has = abap_true.
        t226->value = t225.
        t223 = t226.
      ELSE.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        t223 = t227.
      ENDIF.
      t222 = NEW zcl_lnt_iver_options( i_also = t223 ).
      t220 = t222.
    ELSE.
      DATA t228 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t228.
      t220 = t228.
    ENDIF.
    t207 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t208 i_first = t214 i_opts = t220 ).
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t229 TYPE REF TO object.
      t229 = t207.
      t206->oval = t229.
    ENDIF.
    t205 = t206.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t234.
    DATA t235 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t236.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t236 = zcl_lnt_version_module=>release_b8cd.
    DATA(t237) = |v740sp08|.
    t235 = t236->get( p0 = t237 ).
    t234 = t235.
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t238 TYPE REF TO object.
      t238 = t234.
      t233->oval = t238.
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA t241 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t241.
    DATA(t242) = |^XSDBOOL$|.
    DATA(t243) = |i|.
    CREATE OBJECT t241 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t242 flags = t243.
    t240 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t241 ).
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t244 TYPE REF TO object.
      t244 = t240.
      t239->oval = t244.
    ENDIF.
    DATA t245 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t245.
    DATA(t246) = abap_true.
    IF t246 = abap_true.
      DATA t247 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t247.
      DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t248.
      DATA(t249) = abap_true.
      IF t249 = abap_true.
        DATA(t250) = |OpenABAP|.
        DATA(t251) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t251->has = abap_true.
        t251->value = t250.
        t248 = t251.
      ELSE.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        t248 = t252.
      ENDIF.
      t247 = NEW zcl_lnt_iver_options( i_also = t248 ).
      t245 = t247.
    ELSE.
      DATA t253 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t253.
      t245 = t253.
    ENDIF.
    t232 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t233 i_first = t239 i_opts = t245 ).
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t254 TYPE REF TO object.
      t254 = t232.
      t231->oval = t254.
    ENDIF.
    t230 = t231.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t256.
    t255 = t256.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t258) = t205.
    DATA(t259) = t230.
    DATA(t260) = t255.
    t257 = zcl_lnt_st_combi_module=>alt_prio( i_first = t258 i_second = t259 i_rest = t260 ).
    t204 = t257.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t261 TYPE REF TO object.
      t261 = t204.
      t203->oval = t261.
    ENDIF.
    t202 = t203.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t265) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t264 = zcl_lnt_st_combi_module=>tok( i_t = t265 ).
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t266 TYPE REF TO object.
      t266 = t264.
      t263->oval = t266.
    ENDIF.
    t262 = t263.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t268.
    t267 = t268.
    DATA(t269) = t267.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421.
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t270->cval = t271.
    ENDIF.
    APPEND t270 TO t269->items.
    DATA(t272) = t267.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t274) = |)|.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    APPEND t273 TO t272->items.
    DATA t275 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t276) = t202.
    DATA(t277) = t262.
    DATA(t278) = t267.
    t275 = zcl_lnt_st_combi_module=>seq( i_first = t276 i_second = t277 i_rest = t278 ).
    t201 = t275.
    t200 = t201.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t284) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t283 = zcl_lnt_st_combi_module=>tok( i_t = t284 ).
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t285 TYPE REF TO object.
      t285 = t283.
      t282->oval = t285.
    ENDIF.
    t281 = t282.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t288) = |BIT-NOT|.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = t288.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t290.
    t289 = t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t292) = t281.
    DATA(t293) = t286.
    DATA(t294) = t289.
    t291 = zcl_lnt_st_combi_module=>alt_prio( i_first = t292 i_second = t293 i_rest = t294 ).
    t280 = t291.
    t279 = t280.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = t279.
    IF t301 IS BOUND.
      CREATE OBJECT t300.
      t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t302 TYPE REF TO object.
      t302 = t301.
      t300->oval = t302.
    ENDIF.
    t299 = zcl_lnt_st_combi_module=>opt_prio( i_first = t300 ).
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t303 TYPE REF TO object.
      t303 = t299.
      t298->oval = t303.
    ENDIF.
    t297 = t298.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
    IF t309 IS BOUND.
      CREATE OBJECT t308.
      t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t308->cval = t309.
    ENDIF.
    t307 = t308.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA(t312) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    IF t312 IS BOUND.
      CREATE OBJECT t311.
      t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t311->cval = t312.
    ENDIF.
    t310 = t311.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t314.
    t313 = t314.
    DATA(t315) = t313.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t316->cval = t317.
    ENDIF.
    APPEND t316 TO t315->items.
    DATA(t318) = t313.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA(t320) = t200.
    IF t320 IS BOUND.
      CREATE OBJECT t319.
      t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t321 TYPE REF TO object.
      t321 = t320.
      t319->oval = t321.
    ENDIF.
    APPEND t319 TO t318->items.
    DATA(t322) = t313.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA(t324) = t71.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t325 TYPE REF TO object.
      t325 = t324.
      t323->oval = t325.
    ENDIF.
    APPEND t323 TO t322->items.
    DATA(t326) = t313.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA(t331) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t330->cval = t331.
    ENDIF.
    t329 = t330.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = t31.
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t335 TYPE REF TO object.
      t335 = t334.
      t333->oval = t335.
    ENDIF.
    t332 = t333.
    DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t337.
    t336 = t337.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t339) = t329.
    DATA(t340) = t332.
    DATA(t341) = t336.
    t338 = zcl_lnt_st_combi_module=>seq( i_first = t339 i_second = t340 i_rest = t341 ).
    t328 = t338.
    IF t328 IS BOUND.
      CREATE OBJECT t327.
      t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t342 TYPE REF TO object.
      t342 = t328.
      t327->oval = t342.
    ENDIF.
    APPEND t327 TO t326->items.
    DATA(t343) = t313.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = t150.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t346 TYPE REF TO object.
      t346 = t345.
      t344->oval = t346.
    ENDIF.
    APPEND t344 TO t343->items.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t348) = t307.
    DATA(t349) = t310.
    DATA(t350) = t313.
    t347 = zcl_lnt_st_combi_module=>alt_prio( i_first = t348 i_second = t349 i_rest = t350 ).
    t306 = t347.
    IF t306 IS BOUND.
      CREATE OBJECT t305.
      t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t351 TYPE REF TO object.
      t351 = t306.
      t305->oval = t351.
    ENDIF.
    t304 = t305.
    DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t353.
    t352 = t353.
    DATA(t354) = t352.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA t356 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = t170.
    IF t358 IS BOUND.
      CREATE OBJECT t357.
      t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t359 TYPE REF TO object.
      t359 = t358.
      t357->oval = t359.
    ENDIF.
    t356 = zcl_lnt_st_combi_module=>opt_prio( i_first = t357 ).
    IF t356 IS BOUND.
      CREATE OBJECT t355.
      t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t360 TYPE REF TO object.
      t360 = t356.
      t355->oval = t360.
    ENDIF.
    APPEND t355 TO t354->items.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t362) = t297.
    DATA(t363) = t304.
    DATA(t364) = t352.
    t361 = zcl_lnt_st_combi_module=>seq( i_first = t362 i_second = t363 i_rest = t364 ).
    t296 = t361.
    t295 = t296.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t365.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t368.
    DATA t369 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t370.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t370 = zcl_lnt_version_module=>release_b8cd.
    DATA(t371) = |v740sp05|.
    t369 = t370->get( p0 = t371 ).
    t368 = t369.
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t372 TYPE REF TO object.
      t372 = t368.
      t367->oval = t372.
    ENDIF.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t377) = |CORRESPONDING|.
    CREATE OBJECT t376.
    t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t376->sval = t377.
    t375 = t376.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA(t380) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t380 IS BOUND.
      CREATE OBJECT t379.
      t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t379->cval = t380.
    ENDIF.
    t378 = t379.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t382.
    t381 = t382.
    DATA(t383) = t381.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t386) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t385 = zcl_lnt_st_combi_module=>tok( i_t = t386 ).
    IF t385 IS BOUND.
      CREATE OBJECT t384.
      t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t387 TYPE REF TO object.
      t387 = t385.
      t384->oval = t387.
    ENDIF.
    APPEND t384 TO t383->items.
    DATA(t388) = t381.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA(t390) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t389->cval = t390.
    ENDIF.
    APPEND t389 TO t388->items.
    DATA(t391) = t381.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA(t393) = t111.
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t394 TYPE REF TO object.
      t394 = t393.
      t392->oval = t394.
    ENDIF.
    APPEND t392 TO t391->items.
    DATA(t395) = t381.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA(t399) = t170.
    IF t399 IS BOUND.
      CREATE OBJECT t398.
      t398->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t400 TYPE REF TO object.
      t400 = t399.
      t398->oval = t400.
    ENDIF.
    t397 = zcl_lnt_st_combi_module=>opt_prio( i_first = t398 ).
    IF t397 IS BOUND.
      CREATE OBJECT t396.
      t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t401 TYPE REF TO object.
      t401 = t397.
      t396->oval = t401.
    ENDIF.
    APPEND t396 TO t395->items.
    DATA t402 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t403) = t375.
    DATA(t404) = t378.
    DATA(t405) = t381.
    t402 = zcl_lnt_st_combi_module=>seq( i_first = t403 i_second = t404 i_rest = t405 ).
    t374 = t402.
    IF t374 IS BOUND.
      CREATE OBJECT t373.
      t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t406 TYPE REF TO object.
      t406 = t374.
      t373->oval = t406.
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
    t366 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t367 i_first = t373 i_opts = t407 ).
    t365 = t366.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
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
    DATA(t422) = |v740sp02|.
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
    DATA(t428) = |CONV|.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = t428.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA(t431) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t431 IS BOUND.
      CREATE OBJECT t430.
      t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t430->cval = t431.
    ENDIF.
    t429 = t430.
    DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t433.
    t432 = t433.
    DATA(t434) = t432.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA(t436) = t132.
    IF t436 IS BOUND.
      CREATE OBJECT t435.
      t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t437 TYPE REF TO object.
      t437 = t436.
      t435->oval = t437.
    ENDIF.
    APPEND t435 TO t434->items.
    DATA(t438) = t432.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t439.
    DATA(t440) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    IF t440 IS BOUND.
      CREATE OBJECT t439.
      t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t439->cval = t440.
    ENDIF.
    APPEND t439 TO t438->items.
    DATA(t441) = t432.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t442.
    DATA(t443) = t114.
    IF t443 IS BOUND.
      CREATE OBJECT t442.
      t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t444 TYPE REF TO object.
      t444 = t443.
      t442->oval = t444.
    ENDIF.
    APPEND t442 TO t441->items.
    DATA(t445) = t432.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    DATA t447 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t447.
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t448.
    DATA(t449) = t170.
    IF t449 IS BOUND.
      CREATE OBJECT t448.
      t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t450 TYPE REF TO object.
      t450 = t449.
      t448->oval = t450.
    ENDIF.
    t447 = zcl_lnt_st_combi_module=>opt_prio( i_first = t448 ).
    IF t447 IS BOUND.
      CREATE OBJECT t446.
      t446->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t451 TYPE REF TO object.
      t451 = t447.
      t446->oval = t451.
    ENDIF.
    APPEND t446 TO t445->items.
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t453) = t426.
    DATA(t454) = t429.
    DATA(t455) = t432.
    t452 = zcl_lnt_st_combi_module=>seq( i_first = t453 i_second = t454 i_rest = t455 ).
    t425 = t452.
    IF t425 IS BOUND.
      CREATE OBJECT t424.
      t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t456 TYPE REF TO object.
      t456 = t425.
      t424->oval = t456.
    ENDIF.
    DATA t457 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t457.
    DATA(t458) = abap_true.
    IF t458 = abap_true.
      DATA t459 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t459.
      DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t460.
      DATA(t461) = abap_true.
      IF t461 = abap_true.
        DATA(t462) = |OpenABAP|.
        DATA(t463) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t463->has = abap_true.
        t463->value = t462.
        t460 = t463.
      ELSE.
        DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t464.
        t460 = t464.
      ENDIF.
      t459 = NEW zcl_lnt_iver_options( i_also = t460 ).
      t457 = t459.
    ELSE.
      DATA t465 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t465.
      t457 = t465.
    ENDIF.
    t417 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t418 i_first = t424 i_opts = t457 ).
    t416 = t417.
    DATA t466 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t466.
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    DATA t469 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t469.
    DATA t470 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t471.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t471 = zcl_lnt_version_module=>release_b8cd.
    DATA(t472) = |v740sp02|.
    t470 = t471->get( p0 = t472 ).
    t469 = t470.
    IF t469 IS BOUND.
      CREATE OBJECT t468.
      t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t473 TYPE REF TO object.
      t473 = t469.
      t468->oval = t473.
    ENDIF.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    DATA t475 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t475.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t478) = |SWITCH|.
    CREATE OBJECT t477.
    t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t477->sval = t478.
    t476 = t477.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t479.
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t480.
    DATA(t481) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t481 IS BOUND.
      CREATE OBJECT t480.
      t480->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t480->cval = t481.
    ENDIF.
    t479 = t480.
    DATA t482 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t483.
    t482 = t483.
    DATA(t484) = t482.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t485.
    DATA t486 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t487) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t486 = zcl_lnt_st_combi_module=>tok( i_t = t487 ).
    IF t486 IS BOUND.
      CREATE OBJECT t485.
      t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t488 TYPE REF TO object.
      t488 = t486.
      t485->oval = t488.
    ENDIF.
    APPEND t485 TO t484->items.
    DATA(t489) = t482.
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t490.
    DATA(t491) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    IF t491 IS BOUND.
      CREATE OBJECT t490.
      t490->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t490->cval = t491.
    ENDIF.
    APPEND t490 TO t489->items.
    DATA(t492) = t482.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t493.
    DATA(t494) = t114.
    IF t494 IS BOUND.
      CREATE OBJECT t493.
      t493->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t495 TYPE REF TO object.
      t495 = t494.
      t493->oval = t495.
    ENDIF.
    APPEND t493 TO t492->items.
    DATA(t496) = t482.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t497.
    DATA t498 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t498.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    DATA(t500) = t170.
    IF t500 IS BOUND.
      CREATE OBJECT t499.
      t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t501 TYPE REF TO object.
      t501 = t500.
      t499->oval = t501.
    ENDIF.
    t498 = zcl_lnt_st_combi_module=>opt_prio( i_first = t499 ).
    IF t498 IS BOUND.
      CREATE OBJECT t497.
      t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t502 TYPE REF TO object.
      t502 = t498.
      t497->oval = t502.
    ENDIF.
    APPEND t497 TO t496->items.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t504) = t476.
    DATA(t505) = t479.
    DATA(t506) = t482.
    t503 = zcl_lnt_st_combi_module=>seq( i_first = t504 i_second = t505 i_rest = t506 ).
    t475 = t503.
    IF t475 IS BOUND.
      CREATE OBJECT t474.
      t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t507 TYPE REF TO object.
      t507 = t475.
      t474->oval = t507.
    ENDIF.
    DATA t508 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t508.
    DATA(t509) = abap_true.
    IF t509 = abap_true.
      DATA t510 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t510.
      DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t511.
      DATA(t512) = abap_true.
      IF t512 = abap_true.
        DATA(t513) = |OpenABAP|.
        DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t514->has = abap_true.
        t514->value = t513.
        t511 = t514.
      ELSE.
        DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t515.
        t511 = t515.
      ENDIF.
      t510 = NEW zcl_lnt_iver_options( i_also = t511 ).
      t508 = t510.
    ELSE.
      DATA t516 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t516.
      t508 = t516.
    ENDIF.
    t467 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t468 i_first = t474 i_opts = t508 ).
    t466 = t467.
    DATA t517 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t517.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t518.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t519.
    DATA t520 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t520.
    DATA t521 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t521.
    DATA t522 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t522.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t522 = zcl_lnt_version_module=>release_b8cd.
    DATA(t523) = |v740sp02|.
    t521 = t522->get( p0 = t523 ).
    t520 = t521.
    IF t520 IS BOUND.
      CREATE OBJECT t519.
      t519->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t524 TYPE REF TO object.
      t524 = t520.
      t519->oval = t524.
    ENDIF.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA t526 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t526.
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t529) = |VALUE|.
    CREATE OBJECT t528.
    t528->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t528->sval = t529.
    t527 = t528.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t530.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA(t532) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t532 IS BOUND.
      CREATE OBJECT t531.
      t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t531->cval = t532.
    ENDIF.
    t530 = t531.
    DATA t533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t534 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t534.
    t533 = t534.
    DATA(t535) = t533.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t538) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t537 = zcl_lnt_st_combi_module=>tok( i_t = t538 ).
    IF t537 IS BOUND.
      CREATE OBJECT t536.
      t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t539 TYPE REF TO object.
      t539 = t537.
      t536->oval = t539.
    ENDIF.
    APPEND t536 TO t535->items.
    DATA(t540) = t533.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA(t542) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    IF t542 IS BOUND.
      CREATE OBJECT t541.
      t541->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t541->cval = t542.
    ENDIF.
    APPEND t541 TO t540->items.
    DATA(t543) = t533.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    DATA(t545) = t114.
    IF t545 IS BOUND.
      CREATE OBJECT t544.
      t544->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t546 TYPE REF TO object.
      t546 = t545.
      t544->oval = t546.
    ENDIF.
    APPEND t544 TO t543->items.
    DATA(t547) = t533.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t548.
    DATA t549 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = t170.
    IF t551 IS BOUND.
      CREATE OBJECT t550.
      t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t552 TYPE REF TO object.
      t552 = t551.
      t550->oval = t552.
    ENDIF.
    t549 = zcl_lnt_st_combi_module=>opt_prio( i_first = t550 ).
    IF t549 IS BOUND.
      CREATE OBJECT t548.
      t548->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t553 TYPE REF TO object.
      t553 = t549.
      t548->oval = t553.
    ENDIF.
    APPEND t548 TO t547->items.
    DATA t554 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t555) = t527.
    DATA(t556) = t530.
    DATA(t557) = t533.
    t554 = zcl_lnt_st_combi_module=>seq( i_first = t555 i_second = t556 i_rest = t557 ).
    t526 = t554.
    IF t526 IS BOUND.
      CREATE OBJECT t525.
      t525->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t558 TYPE REF TO object.
      t558 = t526.
      t525->oval = t558.
    ENDIF.
    DATA t559 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t559.
    DATA(t560) = abap_true.
    IF t560 = abap_true.
      DATA t561 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t561.
      DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t562.
      DATA(t563) = abap_true.
      IF t563 = abap_true.
        DATA(t564) = |OpenABAP|.
        DATA(t565) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t565->has = abap_true.
        t565->value = t564.
        t562 = t565.
      ELSE.
        DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t566.
        t562 = t566.
      ENDIF.
      t561 = NEW zcl_lnt_iver_options( i_also = t562 ).
      t559 = t561.
    ELSE.
      DATA t567 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t567.
      t559 = t567.
    ENDIF.
    t518 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t519 i_first = t525 i_opts = t559 ).
    t517 = t518.
    DATA t568 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t568.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t569.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t570.
    DATA t571 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t571.
    DATA t572 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t572.
    DATA t573 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t573.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t573 = zcl_lnt_version_module=>release_b8cd.
    DATA(t574) = |v740sp02|.
    t572 = t573->get( p0 = t574 ).
    t571 = t572.
    IF t571 IS BOUND.
      CREATE OBJECT t570.
      t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t575 TYPE REF TO object.
      t575 = t571.
      t570->oval = t575.
    ENDIF.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA t577 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t577.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t580) = |COND|.
    CREATE OBJECT t579.
    t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t579->sval = t580.
    t578 = t579.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
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
    DATA(t586) = t584.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    DATA t588 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t589) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t588 = zcl_lnt_st_combi_module=>tok( i_t = t589 ).
    IF t588 IS BOUND.
      CREATE OBJECT t587.
      t587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t590 TYPE REF TO object.
      t590 = t588.
      t587->oval = t590.
    ENDIF.
    APPEND t587 TO t586->items.
    DATA(t591) = t584.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA(t593) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
    IF t593 IS BOUND.
      CREATE OBJECT t592.
      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t592->cval = t593.
    ENDIF.
    APPEND t592 TO t591->items.
    DATA(t594) = t584.
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t595.
    DATA(t596) = t114.
    IF t596 IS BOUND.
      CREATE OBJECT t595.
      t595->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t597 TYPE REF TO object.
      t597 = t596.
      t595->oval = t597.
    ENDIF.
    APPEND t595 TO t594->items.
    DATA(t598) = t584.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA t600 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t600.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t601.
    DATA(t602) = t170.
    IF t602 IS BOUND.
      CREATE OBJECT t601.
      t601->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t603 TYPE REF TO object.
      t603 = t602.
      t601->oval = t603.
    ENDIF.
    t600 = zcl_lnt_st_combi_module=>opt_prio( i_first = t601 ).
    IF t600 IS BOUND.
      CREATE OBJECT t599.
      t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t604 TYPE REF TO object.
      t604 = t600.
      t599->oval = t604.
    ENDIF.
    APPEND t599 TO t598->items.
    DATA t605 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t606) = t578.
    DATA(t607) = t581.
    DATA(t608) = t584.
    t605 = zcl_lnt_st_combi_module=>seq( i_first = t606 i_second = t607 i_rest = t608 ).
    t577 = t605.
    IF t577 IS BOUND.
      CREATE OBJECT t576.
      t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t609 TYPE REF TO object.
      t609 = t577.
      t576->oval = t609.
    ENDIF.
    DATA t610 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t610.
    DATA(t611) = abap_true.
    IF t611 = abap_true.
      DATA t612 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t612.
      DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t613.
      DATA(t614) = abap_true.
      IF t614 = abap_true.
        DATA(t615) = |OpenABAP|.
        DATA(t616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t616->has = abap_true.
        t616->value = t615.
        t613 = t616.
      ELSE.
        DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t617.
        t613 = t617.
      ENDIF.
      t612 = NEW zcl_lnt_iver_options( i_also = t613 ).
      t610 = t612.
    ELSE.
      DATA t618 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t618.
      t610 = t618.
    ENDIF.
    t569 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t570 i_first = t576 i_opts = t610 ).
    t568 = t569.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t619.
    DATA t620 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t620.
    DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t621.
    DATA t622 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t622.
    DATA t623 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t623.
    DATA t624 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t624.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t624 = zcl_lnt_version_module=>release_b8cd.
    DATA(t625) = |v740sp02|.
    t623 = t624->get( p0 = t625 ).
    t622 = t623.
    IF t622 IS BOUND.
      CREATE OBJECT t621.
      t621->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t626 TYPE REF TO object.
      t626 = t622.
      t621->oval = t626.
    ENDIF.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    DATA t628 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t631) = |REF|.
    CREATE OBJECT t630.
    t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t630->sval = t631.
    t629 = t630.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    DATA(t634) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t634 IS BOUND.
      CREATE OBJECT t633.
      t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t633->cval = t634.
    ENDIF.
    t632 = t633.
    DATA t635 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t636 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t636.
    t635 = t636.
    DATA(t637) = t635.
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t638.
    DATA t639 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t640) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t639 = zcl_lnt_st_combi_module=>tok( i_t = t640 ).
    IF t639 IS BOUND.
      CREATE OBJECT t638.
      t638->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t641 TYPE REF TO object.
      t641 = t639.
      t638->oval = t641.
    ENDIF.
    APPEND t638 TO t637->items.
    DATA(t642) = t635.
    DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t643.
    DATA(t644) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t644 IS BOUND.
      CREATE OBJECT t643.
      t643->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t643->cval = t644.
    ENDIF.
    APPEND t643 TO t642->items.
    DATA(t645) = t635.
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t646.
    DATA t647 TYPE REF TO zif_lnt_statement_runnable.
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t649) = |OPTIONAL|.
    CREATE OBJECT t648.
    t648->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t648->sval = t649.
    t647 = zcl_lnt_st_combi_module=>opt_prio( i_first = t648 ).
    IF t647 IS BOUND.
      CREATE OBJECT t646.
      t646->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t650 TYPE REF TO object.
      t650 = t647.
      t646->oval = t650.
    ENDIF.
    APPEND t646 TO t645->items.
    DATA(t651) = t635.
    DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t652.
    DATA(t653) = t111.
    IF t653 IS BOUND.
      CREATE OBJECT t652.
      t652->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t654 TYPE REF TO object.
      t654 = t653.
      t652->oval = t654.
    ENDIF.
    APPEND t652 TO t651->items.
    DATA t655 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t656) = t629.
    DATA(t657) = t632.
    DATA(t658) = t635.
    t655 = zcl_lnt_st_combi_module=>seq( i_first = t656 i_second = t657 i_rest = t658 ).
    t628 = t655.
    IF t628 IS BOUND.
      CREATE OBJECT t627.
      t627->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t659 TYPE REF TO object.
      t659 = t628.
      t627->oval = t659.
    ENDIF.
    DATA t660 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t660.
    DATA(t661) = abap_true.
    IF t661 = abap_true.
      DATA t662 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t662.
      DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t663.
      DATA(t664) = abap_true.
      IF t664 = abap_true.
        DATA(t665) = |OpenABAP|.
        DATA(t666) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t666->has = abap_true.
        t666->value = t665.
        t663 = t666.
      ELSE.
        DATA t667 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t667.
        t663 = t667.
      ENDIF.
      t662 = NEW zcl_lnt_iver_options( i_also = t663 ).
      t660 = t662.
    ELSE.
      DATA t668 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t668.
      t660 = t668.
    ENDIF.
    t620 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t621 i_first = t627 i_opts = t660 ).
    t619 = t620.
    DATA t669 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t669.
    DATA t670 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t670.
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t671.
    DATA t672 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t672.
    DATA t673 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t673.
    DATA t674 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t674.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t674 = zcl_lnt_version_module=>release_b8cd.
    DATA(t675) = |v740sp02|.
    t673 = t674->get( p0 = t675 ).
    t672 = t673.
    IF t672 IS BOUND.
      CREATE OBJECT t671.
      t671->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t676 TYPE REF TO object.
      t676 = t672.
      t671->oval = t676.
    ENDIF.
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t677.
    DATA t678 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t678.
    DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t681) = |EXACT|.
    CREATE OBJECT t680.
    t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t680->sval = t681.
    t679 = t680.
    DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t682.
    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t683.
    DATA(t684) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t684 IS BOUND.
      CREATE OBJECT t683.
      t683->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t683->cval = t684.
    ENDIF.
    t682 = t683.
    DATA t685 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t686 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t686.
    t685 = t686.
    DATA(t687) = t685.
    DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t688.
    DATA t689 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t690) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t689 = zcl_lnt_st_combi_module=>tok( i_t = t690 ).
    IF t689 IS BOUND.
      CREATE OBJECT t688.
      t688->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t691 TYPE REF TO object.
      t691 = t689.
      t688->oval = t691.
    ENDIF.
    APPEND t688 TO t687->items.
    DATA(t692) = t685.
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t693.
    DATA(t694) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t694 IS BOUND.
      CREATE OBJECT t693.
      t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t693->cval = t694.
    ENDIF.
    APPEND t693 TO t692->items.
    DATA(t695) = t685.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t696.
    DATA(t697) = t111.
    IF t697 IS BOUND.
      CREATE OBJECT t696.
      t696->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t698 TYPE REF TO object.
      t698 = t697.
      t696->oval = t698.
    ENDIF.
    APPEND t696 TO t695->items.
    DATA(t699) = t685.
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t700.
    DATA t701 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t701.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t702.
    DATA(t703) = t170.
    IF t703 IS BOUND.
      CREATE OBJECT t702.
      t702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t704 TYPE REF TO object.
      t704 = t703.
      t702->oval = t704.
    ENDIF.
    t701 = zcl_lnt_st_combi_module=>opt_prio( i_first = t702 ).
    IF t701 IS BOUND.
      CREATE OBJECT t700.
      t700->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t705 TYPE REF TO object.
      t705 = t701.
      t700->oval = t705.
    ENDIF.
    APPEND t700 TO t699->items.
    DATA t706 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t707) = t679.
    DATA(t708) = t682.
    DATA(t709) = t685.
    t706 = zcl_lnt_st_combi_module=>seq( i_first = t707 i_second = t708 i_rest = t709 ).
    t678 = t706.
    IF t678 IS BOUND.
      CREATE OBJECT t677.
      t677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t710 TYPE REF TO object.
      t710 = t678.
      t677->oval = t710.
    ENDIF.
    DATA t711 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t711.
    DATA(t712) = abap_true.
    IF t712 = abap_true.
      DATA t713 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t713.
      DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t714.
      DATA(t715) = abap_true.
      IF t715 = abap_true.
        DATA(t716) = |OpenABAP|.
        DATA(t717) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t717->has = abap_true.
        t717->value = t716.
        t714 = t717.
      ELSE.
        DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t718.
        t714 = t718.
      ENDIF.
      t713 = NEW zcl_lnt_iver_options( i_also = t714 ).
      t711 = t713.
    ELSE.
      DATA t719 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t719.
      t711 = t719.
    ENDIF.
    t670 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t671 i_first = t677 i_opts = t711 ).
    t669 = t670.
    DATA t720 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t720.
    DATA t721 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t721.
    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t722.
    DATA t723 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t723.
    DATA t724 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t724.
    DATA t725 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t725.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t725 = zcl_lnt_version_module=>release_b8cd.
    DATA(t726) = |v740sp08|.
    t724 = t725->get( p0 = t726 ).
    t723 = t724.
    IF t723 IS BOUND.
      CREATE OBJECT t722.
      t722->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t727 TYPE REF TO object.
      t727 = t723.
      t722->oval = t727.
    ENDIF.
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t728.
    DATA t729 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t729.
    DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t732) = |FILTER|.
    CREATE OBJECT t731.
    t731->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t731->sval = t732.
    t730 = t731.
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t733.
    DATA t734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t734.
    DATA(t735) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t735 IS BOUND.
      CREATE OBJECT t734.
      t734->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t734->cval = t735.
    ENDIF.
    t733 = t734.
    DATA t736 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t737 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t737.
    t736 = t737.
    DATA(t738) = t736.
    DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t739.
    DATA t740 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t741) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t740 = zcl_lnt_st_combi_module=>tok( i_t = t741 ).
    IF t740 IS BOUND.
      CREATE OBJECT t739.
      t739->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t742 TYPE REF TO object.
      t742 = t740.
      t739->oval = t742.
    ENDIF.
    APPEND t739 TO t738->items.
    DATA(t743) = t736.
    DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t744.
    DATA(t745) = zlnt_runtime_desc_78196487750d=>zlnt_member_d169_f7493de77386.
    IF t745 IS BOUND.
      CREATE OBJECT t744.
      t744->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t744->cval = t745.
    ENDIF.
    APPEND t744 TO t743->items.
    DATA(t746) = t736.
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t747.
    DATA(t748) = t111.
    IF t748 IS BOUND.
      CREATE OBJECT t747.
      t747->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t749 TYPE REF TO object.
      t749 = t748.
      t747->oval = t749.
    ENDIF.
    APPEND t747 TO t746->items.
    DATA t750 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t751) = t730.
    DATA(t752) = t733.
    DATA(t753) = t736.
    t750 = zcl_lnt_st_combi_module=>seq( i_first = t751 i_second = t752 i_rest = t753 ).
    t729 = t750.
    IF t729 IS BOUND.
      CREATE OBJECT t728.
      t728->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t754 TYPE REF TO object.
      t754 = t729.
      t728->oval = t754.
    ENDIF.
    DATA t755 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t755.
    DATA(t756) = abap_true.
    IF t756 = abap_true.
      DATA t757 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t757.
      DATA t758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t758.
      DATA(t759) = abap_true.
      IF t759 = abap_true.
        DATA(t760) = |OpenABAP|.
        DATA(t761) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t761->has = abap_true.
        t761->value = t760.
        t758 = t761.
      ELSE.
        DATA t762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t762.
        t758 = t762.
      ENDIF.
      t757 = NEW zcl_lnt_iver_options( i_also = t758 ).
      t755 = t757.
    ELSE.
      DATA t763 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t763.
      t755 = t763.
    ENDIF.
    t721 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t722 i_first = t728 i_opts = t755 ).
    t720 = t721.
    DATA t764 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t764.
    DATA t765 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t765.
    DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t766.
    DATA t767 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t767.
    DATA t768 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t768.
    DATA t769 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t769.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t769 = zcl_lnt_version_module=>release_b8cd.
    DATA(t770) = |v740sp08|.
    t768 = t769->get( p0 = t770 ).
    t767 = t768.
    IF t767 IS BOUND.
      CREATE OBJECT t766.
      t766->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t771 TYPE REF TO object.
      t771 = t767.
      t766->oval = t771.
    ENDIF.
    DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t772.
    DATA t773 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t773.
    DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t776) = |REDUCE|.
    CREATE OBJECT t775.
    t775->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t775->sval = t776.
    t774 = t775.
    DATA t777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t777.
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t778.
    DATA(t779) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
    IF t779 IS BOUND.
      CREATE OBJECT t778.
      t778->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t778->cval = t779.
    ENDIF.
    t777 = t778.
    DATA t780 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t781 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t781.
    t780 = t781.
    DATA(t782) = t780.
    DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t783.
    DATA t784 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t785) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t784 = zcl_lnt_st_combi_module=>tok( i_t = t785 ).
    IF t784 IS BOUND.
      CREATE OBJECT t783.
      t783->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t786 TYPE REF TO object.
      t786 = t784.
      t783->oval = t786.
    ENDIF.
    APPEND t783 TO t782->items.
    DATA(t787) = t780.
    DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t788.
    DATA(t789) = zlnt_runtime_desc_78196487750d=>zlnt_member_d246_f8272c765b13.
    IF t789 IS BOUND.
      CREATE OBJECT t788.
      t788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t788->cval = t789.
    ENDIF.
    APPEND t788 TO t787->items.
    DATA(t790) = t780.
    DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t791.
    DATA(t792) = t111.
    IF t792 IS BOUND.
      CREATE OBJECT t791.
      t791->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t793 TYPE REF TO object.
      t793 = t792.
      t791->oval = t793.
    ENDIF.
    APPEND t791 TO t790->items.
    DATA(t794) = t780.
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t795.
    DATA t796 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t796.
    DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t797.
    DATA(t798) = t170.
    IF t798 IS BOUND.
      CREATE OBJECT t797.
      t797->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t799 TYPE REF TO object.
      t799 = t798.
      t797->oval = t799.
    ENDIF.
    t796 = zcl_lnt_st_combi_module=>opt_prio( i_first = t797 ).
    IF t796 IS BOUND.
      CREATE OBJECT t795.
      t795->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t800 TYPE REF TO object.
      t800 = t796.
      t795->oval = t800.
    ENDIF.
    APPEND t795 TO t794->items.
    DATA t801 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t802) = t774.
    DATA(t803) = t777.
    DATA(t804) = t780.
    t801 = zcl_lnt_st_combi_module=>seq( i_first = t802 i_second = t803 i_rest = t804 ).
    t773 = t801.
    IF t773 IS BOUND.
      CREATE OBJECT t772.
      t772->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t805 TYPE REF TO object.
      t805 = t773.
      t772->oval = t805.
    ENDIF.
    DATA t806 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t806.
    DATA(t807) = abap_true.
    IF t807 = abap_true.
      DATA t808 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t808.
      DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t809.
      DATA(t810) = abap_true.
      IF t810 = abap_true.
        DATA(t811) = |OpenABAP|.
        DATA(t812) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t812->has = abap_true.
        t812->value = t811.
        t809 = t812.
      ELSE.
        DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t813.
        t809 = t813.
      ENDIF.
      t808 = NEW zcl_lnt_iver_options( i_also = t809 ).
      t806 = t808.
    ELSE.
      DATA t814 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t814.
      t806 = t814.
    ENDIF.
    t765 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t766 i_first = t772 i_opts = t806 ).
    t764 = t765.
    DATA t815 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t815.
    DATA t816 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t816.
    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t817.
    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t818.
    DATA t819 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t820) = zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b.
    t819 = zcl_lnt_st_combi_module=>tok( i_t = t820 ).
    IF t819 IS BOUND.
      CREATE OBJECT t818.
      t818->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t821 TYPE REF TO object.
      t821 = t819.
      t818->oval = t821.
    ENDIF.
    t817 = t818.
    DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t822.
    DATA t823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t823.
    DATA t824 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t825) = zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac.
    t824 = zcl_lnt_st_combi_module=>tok( i_t = t825 ).
    IF t824 IS BOUND.
      CREATE OBJECT t823.
      t823->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t826 TYPE REF TO object.
      t826 = t824.
      t823->oval = t826.
    ENDIF.
    t822 = t823.
    DATA t827 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t828 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t828.
    t827 = t828.
    DATA t829 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t830) = t817.
    DATA(t831) = t822.
    DATA(t832) = t827.
    t829 = zcl_lnt_st_combi_module=>alt_prio( i_first = t830 i_second = t831 i_rest = t832 ).
    t816 = t829.
    t815 = t816.
    DATA t833 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t833.
    DATA t834 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t834.
    DATA t835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t835.
    DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t836.
    DATA t837 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t837.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t838.
    DATA(t839) = t815.
    IF t839 IS BOUND.
      CREATE OBJECT t838.
      t838->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t840 TYPE REF TO object.
      t840 = t839.
      t838->oval = t840.
    ENDIF.
    t837 = zcl_lnt_st_combi_module=>star_prio( i_first = t838 ).
    IF t837 IS BOUND.
      CREATE OBJECT t836.
      t836->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t841 TYPE REF TO object.
      t841 = t837.
      t836->oval = t841.
    ENDIF.
    t835 = t836.
    DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t842.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t843.
    DATA t844 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t844.
    DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t845.
    DATA t846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t846.
    DATA(t847) = t720.
    IF t847 IS BOUND.
      CREATE OBJECT t846.
      t846->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t848 TYPE REF TO object.
      t848 = t847.
      t846->oval = t848.
    ENDIF.
    t845 = t846.
    DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t849.
    DATA t850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t850.
    DATA(t851) = t619.
    IF t851 IS BOUND.
      CREATE OBJECT t850.
      t850->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t852 TYPE REF TO object.
      t852 = t851.
      t850->oval = t852.
    ENDIF.
    t849 = t850.
    DATA t853 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t854 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t854.
    t853 = t854.
    DATA(t855) = t853.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t856.
    DATA(t857) = t365.
    IF t857 IS BOUND.
      CREATE OBJECT t856.
      t856->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t858 TYPE REF TO object.
      t858 = t857.
      t856->oval = t858.
    ENDIF.
    APPEND t856 TO t855->items.
    DATA(t859) = t853.
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t860.
    DATA(t861) = t416.
    IF t861 IS BOUND.
      CREATE OBJECT t860.
      t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t862 TYPE REF TO object.
      t862 = t861.
      t860->oval = t862.
    ENDIF.
    APPEND t860 TO t859->items.
    DATA(t863) = t853.
    DATA t864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t864.
    DATA(t865) = t517.
    IF t865 IS BOUND.
      CREATE OBJECT t864.
      t864->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t866 TYPE REF TO object.
      t866 = t865.
      t864->oval = t866.
    ENDIF.
    APPEND t864 TO t863->items.
    DATA(t867) = t853.
    DATA t868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t868.
    DATA(t869) = t568.
    IF t869 IS BOUND.
      CREATE OBJECT t868.
      t868->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t870 TYPE REF TO object.
      t870 = t869.
      t868->oval = t870.
    ENDIF.
    APPEND t868 TO t867->items.
    DATA(t871) = t853.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t872.
    DATA(t873) = t669.
    IF t873 IS BOUND.
      CREATE OBJECT t872.
      t872->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t874 TYPE REF TO object.
      t874 = t873.
      t872->oval = t874.
    ENDIF.
    APPEND t872 TO t871->items.
    DATA(t875) = t853.
    DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t876.
    DATA(t877) = t466.
    IF t877 IS BOUND.
      CREATE OBJECT t876.
      t876->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t878 TYPE REF TO object.
      t878 = t877.
      t876->oval = t878.
    ENDIF.
    APPEND t876 TO t875->items.
    DATA(t879) = t853.
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t880.
    DATA(t881) = t764.
    IF t881 IS BOUND.
      CREATE OBJECT t880.
      t880->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t882 TYPE REF TO object.
      t882 = t881.
      t880->oval = t882.
    ENDIF.
    APPEND t880 TO t879->items.
    DATA(t883) = t853.
    DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t884.
    DATA(t885) = t295.
    IF t885 IS BOUND.
      CREATE OBJECT t884.
      t884->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t886 TYPE REF TO object.
      t886 = t885.
      t884->oval = t886.
    ENDIF.
    APPEND t884 TO t883->items.
    DATA t887 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t888) = t845.
    DATA(t889) = t849.
    DATA(t890) = t853.
    t887 = zcl_lnt_st_combi_module=>alt_prio( i_first = t888 i_second = t889 i_rest = t890 ).
    t844 = t887.
    IF t844 IS BOUND.
      CREATE OBJECT t843.
      t843->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t891 TYPE REF TO object.
      t891 = t844.
      t843->oval = t891.
    ENDIF.
    t842 = t843.
    DATA t892 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t893 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t893.
    t892 = t893.
    DATA t894 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t895) = t835.
    DATA(t896) = t842.
    DATA(t897) = t892.
    t894 = zcl_lnt_st_combi_module=>seq( i_first = t895 i_second = t896 i_rest = t897 ).
    t834 = t894.
    t833 = t834.
    DATA(t898) = t833.
    result = t898.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
  ENDMETHOD.
ENDCLASS.
