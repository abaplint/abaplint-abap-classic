* TS: src/abap/2_statements/expressions/sql_compare.ts:10:1 SQLCompare
CLASS zcl_lnt_st_sql_compare DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_compare IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t6.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd.
    DATA(t7) = |v750|.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t8 TYPE REF TO object.
      t8 = t4.
      t3->oval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = |OpenABAP|.
        DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t17->has = abap_true.
        t17->value = t16.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        t14 = t18.
      ENDIF.
      t13 = NEW zcl_lnt_iver_options( i_also = t14 ).
      t11 = t13.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t19.
      t11 = t19.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t11 ).
    t1 = t2.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = |(|.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = |SELECT|.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = t27.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA(t36) = abap_false.
      DATA(t37) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t37->has = abap_true.
      t37->value = t36.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    t32 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t33 i_allow_order_by = t34 ).
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t32.
      t31->oval = t39.
    ENDIF.
    APPEND t31 TO t30->items.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = |)|.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    APPEND t41 TO t40->items.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t45 i_rest = t46 ).
    t21 = t43.
    t20 = t21.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t52.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t52 = zcl_lnt_version_module=>release_b8cd.
    DATA(t53) = |v740sp08|.
    t51 = t52->get( p0 = t53 ).
    t50 = t51.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t50.
      t49->oval = t54.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = CAST zif_lnt_statement_runnable( t20 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t57 TYPE REF TO object.
      t57 = t56.
      t55->oval = t57.
    ENDIF.
    DATA t58 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t58.
    DATA(t59) = abap_true.
    IF t59 = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA(t62) = abap_true.
      IF t62 = abap_true.
        DATA(t63) = |OpenABAP|.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t63.
        t61 = t64.
      ELSE.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        t61 = t65.
      ENDIF.
      t60 = NEW zcl_lnt_iver_options( i_also = t61 ).
      t58 = t60.
    ELSE.
      DATA t66 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t66.
      t58 = t66.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t49 i_first = t55 i_opts = t58 ).
    t47 = t48.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = |BETWEEN|.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
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
    DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = |AND|.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    APPEND t78 TO t77->items.
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    APPEND t81 TO t80->items.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t85 i_rest = t86 ).
    t68 = t83.
    t67 = t68.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = |LIKE|.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = t91.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t93->cval = t94.
    ENDIF.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t95 = t96.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = |ESCAPE|.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = t104.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    t108 = t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t108 ).
    t110 = zcl_lnt_st_combi_module=>seq( i_first = t111 i_second = t112 i_rest = t113 ).
    t101 = t110.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t114 TYPE REF TO object.
      t114 = t101.
      t100->oval = t114.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt_prio( i_first = t100 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t115 TYPE REF TO object.
      t115 = t99.
      t98->oval = t115.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t118 i_rest = t119 ).
    t88 = t116.
    t87 = t88.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = |IS|.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = t124.
    t122 = t123.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |NOT|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = zcl_lnt_st_combi_module=>opt_prio( i_first = t128 ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t127.
      t126->oval = t130.
    ENDIF.
    t125 = t126.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t131 = t132.
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t131 ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = |NULL|.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t143.
    DATA t144 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t145.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t145 = zcl_lnt_version_module=>release_b8cd.
    DATA(t146) = |v753|.
    t144 = t145->get( p0 = t146 ).
    t143 = t144.
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t143.
      t142->oval = t147.
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = |INITIAL|.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = t149.
    DATA t150 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t150.
    t141 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t142 i_first = t148 i_opts = t150 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t141.
      t140->oval = t151.
    ENDIF.
    t139 = t140.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t136 ).
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t139 ).
    DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    t154 = zcl_lnt_st_combi_module=>alt_prio( i_first = t155 i_second = t156 i_rest = t157 ).
    t135 = t154.
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t135.
      t134->oval = t158.
    ENDIF.
    APPEND t134 TO t133->items.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t160) = CAST zlnt_runtime_dyna_a429568d5be8( t122 ).
    DATA(t161) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t162) = CAST zlnt_runtime_arra_c22708faf2e3( t131 ).
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t161 i_rest = t162 ).
    t121 = t159.
    t120 = t121.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = |ALL|.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = |ANY|.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    t176 = t177.
    DATA(t178) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t180) = |SOME|.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = t180.
    APPEND t179 TO t178->items.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t182) = CAST zlnt_runtime_dyna_a429568d5be8( t170 ).
    DATA(t183) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t184) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    t181 = zcl_lnt_st_combi_module=>alt_prio( i_first = t182 i_second = t183 i_rest = t184 ).
    t169 = t181.
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t185 TYPE REF TO object.
      t185 = t169.
      t168->oval = t185.
    ENDIF.
    t167 = zcl_lnt_st_combi_module=>opt_prio( i_first = t168 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t186 TYPE REF TO object.
      t186 = t167.
      t166->oval = t186.
    ENDIF.
    t165 = t166.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = CAST zif_lnt_statement_runnable( t1 ).
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t193 TYPE REF TO object.
      t193 = t192.
      t191->oval = t193.
    ENDIF.
    t190 = t191.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = CAST zif_lnt_statement_runnable( t47 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t197 TYPE REF TO object.
      t197 = t196.
      t195->oval = t197.
    ENDIF.
    t194 = t195.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t199.
    t198 = t199.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t201) = CAST zlnt_runtime_dyna_a429568d5be8( t190 ).
    DATA(t202) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t198 ).
    t200 = zcl_lnt_st_combi_module=>alt_prio( i_first = t201 i_second = t202 i_rest = t203 ).
    t189 = t200.
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t204 TYPE REF TO object.
      t204 = t189.
      t188->oval = t204.
    ENDIF.
    t187 = t188.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t206.
    t205 = t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t165 ).
    DATA(t209) = CAST zlnt_runtime_dyna_a429568d5be8( t187 ).
    DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t205 ).
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t209 i_rest = t210 ).
    t164 = t207.
    t163 = t164.
    DATA t211 TYPE REF TO zcl_lnt_st_sql_source.
    DATA(t212) = NEW zcl_lnt_st_sql_source(  ).
    t211 = t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t216.
    DATA t217 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t218.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t218 = zcl_lnt_version_module=>release_b8cd.
    DATA(t219) = |v750|.
    t217 = t218->get( p0 = t219 ).
    t216 = t217.
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t220 TYPE REF TO object.
      t220 = t216.
      t215->oval = t220.
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t230) = |+|.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = t230.
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = |-|.
    CREATE OBJECT t232.
    t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t232->sval = t233.
    t231 = t232.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t235.
    t234 = t235.
    DATA(t236) = CAST zlnt_runtime_arra_c22708faf2e3( t234 ).
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = |*|.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    APPEND t237 TO t236->items.
    DATA(t239) = CAST zlnt_runtime_arra_c22708faf2e3( t234 ).
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = |/|.
    CREATE OBJECT t240.
    t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t240->sval = t241.
    APPEND t240 TO t239->items.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t243) = CAST zlnt_runtime_dyna_a429568d5be8( t228 ).
    DATA(t244) = CAST zlnt_runtime_dyna_a429568d5be8( t231 ).
    DATA(t245) = CAST zlnt_runtime_arra_c22708faf2e3( t234 ).
    t242 = zcl_lnt_st_combi_module=>alt_prio( i_first = t243 i_second = t244 i_rest = t245 ).
    t227 = t242.
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t227.
      t226->oval = t246.
    ENDIF.
    t225 = t226.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t248->cval = t249.
    ENDIF.
    t247 = t248.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t251.
    t250 = t251.
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t253) = CAST zlnt_runtime_dyna_a429568d5be8( t225 ).
    DATA(t254) = CAST zlnt_runtime_dyna_a429568d5be8( t247 ).
    DATA(t255) = CAST zlnt_runtime_arra_c22708faf2e3( t250 ).
    t252 = zcl_lnt_st_combi_module=>seq( i_first = t253 i_second = t254 i_rest = t255 ).
    t224 = t252.
    IF t224 IS BOUND.
      CREATE OBJECT t223.
      t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t224.
      t223->oval = t256.
    ENDIF.
    t222 = zcl_lnt_st_combi_module=>plus_prio( i_first = t223 ).
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t257 TYPE REF TO object.
      t257 = t222.
      t221->oval = t257.
    ENDIF.
    DATA t258 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t258.
    DATA(t259) = abap_true.
    IF t259 = abap_true.
      DATA t260 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t260.
      DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t261.
      DATA(t262) = abap_true.
      IF t262 = abap_true.
        DATA(t263) = |OpenABAP|.
        DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t264->has = abap_true.
        t264->value = t263.
        t261 = t264.
      ELSE.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        t261 = t265.
      ENDIF.
      t260 = NEW zcl_lnt_iver_options( i_also = t261 ).
      t258 = t260.
    ELSE.
      DATA t266 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t266.
      t258 = t266.
    ENDIF.
    t214 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t215 i_first = t221 i_opts = t258 ).
    t213 = t214.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t272) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t271 = zcl_lnt_st_combi_module=>tok( i_t = t272 ).
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t273 TYPE REF TO object.
      t273 = t271.
      t270->oval = t273.
    ENDIF.
    t269 = t270.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA(t276) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t276 IS BOUND.
      CREATE OBJECT t275.
      t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t275->cval = t276.
    ENDIF.
    t274 = t275.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t278.
    t277 = t278.
    DATA(t279) = CAST zlnt_runtime_arra_c22708faf2e3( t277 ).
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t282) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t281 = zcl_lnt_st_combi_module=>tok( i_t = t282 ).
    IF t281 IS BOUND.
      CREATE OBJECT t280.
      t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t283 TYPE REF TO object.
      t283 = t281.
      t280->oval = t283.
    ENDIF.
    APPEND t280 TO t279->items.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t285) = CAST zlnt_runtime_dyna_a429568d5be8( t269 ).
    DATA(t286) = CAST zlnt_runtime_dyna_a429568d5be8( t274 ).
    DATA(t287) = CAST zlnt_runtime_arra_c22708faf2e3( t277 ).
    t284 = zcl_lnt_st_combi_module=>seq( i_first = t285 i_second = t286 i_rest = t287 ).
    t268 = t284.
    t267 = t268.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t288.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t291.
    DATA t292 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t293.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t293 = zcl_lnt_version_module=>release_b8cd.
    DATA(t294) = |v740sp05|.
    t292 = t293->get( p0 = t294 ).
    t291 = t292.
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t295 TYPE REF TO object.
      t295 = t291.
      t290->oval = t295.
    ENDIF.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t301) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t300 = zcl_lnt_st_combi_module=>tok( i_t = t301 ).
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t302 TYPE REF TO object.
      t302 = t300.
      t299->oval = t302.
    ENDIF.
    t298 = t299.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA(t308) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    IF t308 IS BOUND.
      CREATE OBJECT t307.
      t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t307->cval = t308.
    ENDIF.
    t306 = t307.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = CAST zif_lnt_statement_runnable( t267 ).
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t312 TYPE REF TO object.
      t312 = t311.
      t310->oval = t312.
    ENDIF.
    t309 = t310.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t314.
    t313 = t314.
    DATA t315 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t316) = CAST zlnt_runtime_dyna_a429568d5be8( t306 ).
    DATA(t317) = CAST zlnt_runtime_dyna_a429568d5be8( t309 ).
    DATA(t318) = CAST zlnt_runtime_arra_c22708faf2e3( t313 ).
    t315 = zcl_lnt_st_combi_module=>alt_prio( i_first = t316 i_second = t317 i_rest = t318 ).
    t305 = t315.
    IF t305 IS BOUND.
      CREATE OBJECT t304.
      t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t319 TYPE REF TO object.
      t319 = t305.
      t304->oval = t319.
    ENDIF.
    t303 = t304.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t321.
    t320 = t321.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t323) = CAST zlnt_runtime_dyna_a429568d5be8( t298 ).
    DATA(t324) = CAST zlnt_runtime_dyna_a429568d5be8( t303 ).
    DATA(t325) = CAST zlnt_runtime_arra_c22708faf2e3( t320 ).
    t322 = zcl_lnt_st_combi_module=>seq( i_first = t323 i_second = t324 i_rest = t325 ).
    t297 = t322.
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t326 TYPE REF TO object.
      t326 = t297.
      t296->oval = t326.
    ENDIF.
    DATA t327 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t327.
    DATA(t328) = abap_true.
    IF t328 = abap_true.
      DATA t329 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t329.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t330.
      DATA(t331) = abap_true.
      IF t331 = abap_true.
        DATA(t332) = |OpenABAP|.
        DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t333->has = abap_true.
        t333->value = t332.
        t330 = t333.
      ELSE.
        DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t334.
        t330 = t334.
      ENDIF.
      t329 = NEW zcl_lnt_iver_options( i_also = t330 ).
      t327 = t329.
    ELSE.
      DATA t335 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t335.
      t327 = t335.
    ENDIF.
    t289 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t290 i_first = t296 i_opts = t327 ).
    t288 = t289.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t336.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA(t340) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed ).
    IF t340 IS BOUND.
      CREATE OBJECT t339.
      t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t339->cval = t340.
    ENDIF.
    t338 = t339.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA(t343) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
    IF t343 IS BOUND.
      CREATE OBJECT t342.
      t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t342->cval = t343.
    ENDIF.
    t341 = t342.
    DATA t344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t345 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t345.
    t344 = t345.
    DATA(t346) = CAST zlnt_runtime_arra_c22708faf2e3( t344 ).
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA(t348) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da ).
    IF t348 IS BOUND.
      CREATE OBJECT t347.
      t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t347->cval = t348.
    ENDIF.
    APPEND t347 TO t346->items.
    DATA(t349) = CAST zlnt_runtime_arra_c22708faf2e3( t344 ).
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d137_6fd956b9c58a ).
    IF t351 IS BOUND.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t350->cval = t351.
    ENDIF.
    APPEND t350 TO t349->items.
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t344 ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t357.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA(t360) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079 ).
    IF t360 IS BOUND.
      CREATE OBJECT t359.
      t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t359->cval = t360.
    ENDIF.
    t358 = t359.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA(t363) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60 ).
    IF t363 IS BOUND.
      CREATE OBJECT t362.
      t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t362->cval = t363.
    ENDIF.
    t361 = t362.
    DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t365.
    t364 = t365.
    DATA(t366) = CAST zlnt_runtime_arra_c22708faf2e3( t364 ).
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA(t368) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t367->cval = t368.
    ENDIF.
    APPEND t367 TO t366->items.
    DATA t369 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t370) = CAST zlnt_runtime_dyna_a429568d5be8( t358 ).
    DATA(t371) = CAST zlnt_runtime_dyna_a429568d5be8( t361 ).
    DATA(t372) = CAST zlnt_runtime_arra_c22708faf2e3( t364 ).
    t369 = zcl_lnt_st_combi_module=>alt_prio( i_first = t370 i_second = t371 i_rest = t372 ).
    t357 = t369.
    IF t357 IS BOUND.
      CREATE OBJECT t356.
      t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t373 TYPE REF TO object.
      t373 = t357.
      t356->oval = t373.
    ENDIF.
    t355 = t356.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t376.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA(t378) = CAST zif_lnt_statement_runnable( t213 ).
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t379 TYPE REF TO object.
      t379 = t378.
      t377->oval = t379.
    ENDIF.
    t376 = zcl_lnt_st_combi_module=>opt_prio( i_first = t377 ).
    IF t376 IS BOUND.
      CREATE OBJECT t375.
      t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t380 TYPE REF TO object.
      t380 = t376.
      t375->oval = t380.
    ENDIF.
    t374 = t375.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t382.
    t381 = t382.
    DATA t383 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t384) = CAST zlnt_runtime_dyna_a429568d5be8( t355 ).
    DATA(t385) = CAST zlnt_runtime_dyna_a429568d5be8( t374 ).
    DATA(t386) = CAST zlnt_runtime_arra_c22708faf2e3( t381 ).
    t383 = zcl_lnt_st_combi_module=>seq( i_first = t384 i_second = t385 i_rest = t386 ).
    t354 = t383.
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t387 TYPE REF TO object.
      t387 = t354.
      t353->oval = t387.
    ENDIF.
    APPEND t353 TO t352->items.
    DATA(t388) = CAST zlnt_runtime_arra_c22708faf2e3( t344 ).
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA(t390) = CAST zif_lnt_statement_runnable( t288 ).
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t391 TYPE REF TO object.
      t391 = t390.
      t389->oval = t391.
    ENDIF.
    APPEND t389 TO t388->items.
    DATA t392 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t393) = CAST zlnt_runtime_dyna_a429568d5be8( t338 ).
    DATA(t394) = CAST zlnt_runtime_dyna_a429568d5be8( t341 ).
    DATA(t395) = CAST zlnt_runtime_arra_c22708faf2e3( t344 ).
    t392 = zcl_lnt_st_combi_module=>alt_prio( i_first = t393 i_second = t394 i_rest = t395 ).
    t337 = t392.
    t336 = t337.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t396.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t400.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t401.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917 ).
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t402->cval = t403.
    ENDIF.
    t401 = t402.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t404.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t405.
    DATA t406 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t406.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA(t409) = CAST zif_lnt_statement_runnable( t163 ).
    IF t409 IS BOUND.
      CREATE OBJECT t408.
      t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t410 TYPE REF TO object.
      t410 = t409.
      t408->oval = t410.
    ENDIF.
    t407 = t408.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA(t413) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed ).
    IF t413 IS BOUND.
      CREATE OBJECT t412.
      t412->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t412->cval = t413.
    ENDIF.
    t411 = t412.
    DATA t414 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t415 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t415.
    t414 = t415.
    DATA(t416) = CAST zlnt_runtime_arra_c22708faf2e3( t414 ).
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA(t418) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
    IF t418 IS BOUND.
      CREATE OBJECT t417.
      t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t417->cval = t418.
    ENDIF.
    APPEND t417 TO t416->items.
    DATA(t419) = CAST zlnt_runtime_arra_c22708faf2e3( t414 ).
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA(t421) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da ).
    IF t421 IS BOUND.
      CREATE OBJECT t420.
      t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t420->cval = t421.
    ENDIF.
    APPEND t420 TO t419->items.
    DATA(t422) = CAST zlnt_runtime_arra_c22708faf2e3( t414 ).
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t424.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA(t427) = CAST zcl_lnt_st_sql_source( t211 ).
    IF t427 IS BOUND.
      CREATE OBJECT t426.
      t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t428 TYPE REF TO object.
      t428 = t427.
      t426->oval = t428.
    ENDIF.
    t425 = t426.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA(t433) = CAST zif_lnt_statement_runnable( t213 ).
    IF t433 IS BOUND.
      CREATE OBJECT t432.
      t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t434 TYPE REF TO object.
      t434 = t433.
      t432->oval = t434.
    ENDIF.
    t431 = zcl_lnt_st_combi_module=>opt_prio( i_first = t432 ).
    IF t431 IS BOUND.
      CREATE OBJECT t430.
      t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t435 TYPE REF TO object.
      t435 = t431.
      t430->oval = t435.
    ENDIF.
    t429 = t430.
    DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t437.
    t436 = t437.
    DATA t438 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t439) = CAST zlnt_runtime_dyna_a429568d5be8( t425 ).
    DATA(t440) = CAST zlnt_runtime_dyna_a429568d5be8( t429 ).
    DATA(t441) = CAST zlnt_runtime_arra_c22708faf2e3( t436 ).
    t438 = zcl_lnt_st_combi_module=>seq( i_first = t439 i_second = t440 i_rest = t441 ).
    t424 = t438.
    IF t424 IS BOUND.
      CREATE OBJECT t423.
      t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t442 TYPE REF TO object.
      t442 = t424.
      t423->oval = t442.
    ENDIF.
    APPEND t423 TO t422->items.
    DATA t443 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t444) = CAST zlnt_runtime_dyna_a429568d5be8( t407 ).
    DATA(t445) = CAST zlnt_runtime_dyna_a429568d5be8( t411 ).
    DATA(t446) = CAST zlnt_runtime_arra_c22708faf2e3( t414 ).
    t443 = zcl_lnt_st_combi_module=>alt_prio( i_first = t444 i_second = t445 i_rest = t446 ).
    t406 = t443.
    IF t406 IS BOUND.
      CREATE OBJECT t405.
      t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t447 TYPE REF TO object.
      t447 = t406.
      t405->oval = t447.
    ENDIF.
    t404 = t405.
    DATA t448 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t449 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t449.
    t448 = t449.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t451) = CAST zlnt_runtime_dyna_a429568d5be8( t401 ).
    DATA(t452) = CAST zlnt_runtime_dyna_a429568d5be8( t404 ).
    DATA(t453) = CAST zlnt_runtime_arra_c22708faf2e3( t448 ).
    t450 = zcl_lnt_st_combi_module=>seq( i_first = t451 i_second = t452 i_rest = t453 ).
    t400 = t450.
    IF t400 IS BOUND.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t454 TYPE REF TO object.
      t454 = t400.
      t399->oval = t454.
    ENDIF.
    t398 = t399.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t456.
    DATA t457 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t457.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t459.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t462) = |NOT|.
    CREATE OBJECT t461.
    t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t461->sval = t462.
    t460 = zcl_lnt_st_combi_module=>opt_prio( i_first = t461 ).
    IF t460 IS BOUND.
      CREATE OBJECT t459.
      t459->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t463 TYPE REF TO object.
      t463 = t460.
      t459->oval = t463.
    ENDIF.
    t458 = t459.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA t466 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t466.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    DATA(t469) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d279_5e96219eaf2c ).
    IF t469 IS BOUND.
      CREATE OBJECT t468.
      t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t468->cval = t469.
    ENDIF.
    t467 = t468.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    DATA(t472) = CAST zif_lnt_statement_runnable( t87 ).
    IF t472 IS BOUND.
      CREATE OBJECT t471.
      t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t473 TYPE REF TO object.
      t473 = t472.
      t471->oval = t473.
    ENDIF.
    t470 = t471.
    DATA t474 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t475.
    t474 = t475.
    DATA(t476) = CAST zlnt_runtime_arra_c22708faf2e3( t474 ).
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA(t478) = CAST zif_lnt_statement_runnable( t67 ).
    IF t478 IS BOUND.
      CREATE OBJECT t477.
      t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t479 TYPE REF TO object.
      t479 = t478.
      t477->oval = t479.
    ENDIF.
    APPEND t477 TO t476->items.
    DATA t480 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t481) = CAST zlnt_runtime_dyna_a429568d5be8( t467 ).
    DATA(t482) = CAST zlnt_runtime_dyna_a429568d5be8( t470 ).
    DATA(t483) = CAST zlnt_runtime_arra_c22708faf2e3( t474 ).
    t480 = zcl_lnt_st_combi_module=>alt_prio( i_first = t481 i_second = t482 i_rest = t483 ).
    t466 = t480.
    IF t466 IS BOUND.
      CREATE OBJECT t465.
      t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t484 TYPE REF TO object.
      t484 = t466.
      t465->oval = t484.
    ENDIF.
    t464 = t465.
    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t486.
    t485 = t486.
    DATA t487 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t488) = CAST zlnt_runtime_dyna_a429568d5be8( t458 ).
    DATA(t489) = CAST zlnt_runtime_dyna_a429568d5be8( t464 ).
    DATA(t490) = CAST zlnt_runtime_arra_c22708faf2e3( t485 ).
    t487 = zcl_lnt_st_combi_module=>seq( i_first = t488 i_second = t489 i_rest = t490 ).
    t457 = t487.
    IF t457 IS BOUND.
      CREATE OBJECT t456.
      t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t491 TYPE REF TO object.
      t491 = t457.
      t456->oval = t491.
    ENDIF.
    t455 = t456.
    DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t493.
    t492 = t493.
    DATA(t494) = CAST zlnt_runtime_arra_c22708faf2e3( t492 ).
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t495.
    DATA(t496) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf ).
    IF t496 IS BOUND.
      CREATE OBJECT t495.
      t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t495->cval = t496.
    ENDIF.
    APPEND t495 TO t494->items.
    DATA(t497) = CAST zlnt_runtime_arra_c22708faf2e3( t492 ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA(t499) = CAST zif_lnt_statement_runnable( t120 ).
    IF t499 IS BOUND.
      CREATE OBJECT t498.
      t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t500 TYPE REF TO object.
      t500 = t499.
      t498->oval = t500.
    ENDIF.
    APPEND t498 TO t497->items.
    DATA t501 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t502) = CAST zlnt_runtime_dyna_a429568d5be8( t398 ).
    DATA(t503) = CAST zlnt_runtime_dyna_a429568d5be8( t455 ).
    DATA(t504) = CAST zlnt_runtime_arra_c22708faf2e3( t492 ).
    t501 = zcl_lnt_st_combi_module=>alt_prio( i_first = t502 i_second = t503 i_rest = t504 ).
    t397 = t501.
    t396 = t397.
    DATA t505 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t505.
    DATA t506 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA(t509) = CAST zif_lnt_statement_runnable( t336 ).
    IF t509 IS BOUND.
      CREATE OBJECT t508.
      t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t510 TYPE REF TO object.
      t510 = t509.
      t508->oval = t510.
    ENDIF.
    t507 = t508.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    DATA(t513) = CAST zif_lnt_statement_runnable( t396 ).
    IF t513 IS BOUND.
      CREATE OBJECT t512.
      t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t514 TYPE REF TO object.
      t514 = t513.
      t512->oval = t514.
    ENDIF.
    t511 = t512.
    DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t516.
    t515 = t516.
    DATA t517 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t518) = CAST zlnt_runtime_dyna_a429568d5be8( t507 ).
    DATA(t519) = CAST zlnt_runtime_dyna_a429568d5be8( t511 ).
    DATA(t520) = CAST zlnt_runtime_arra_c22708faf2e3( t515 ).
    t517 = zcl_lnt_st_combi_module=>seq( i_first = t518 i_second = t519 i_rest = t520 ).
    t506 = t517.
    t505 = t506.
    DATA t521 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t521.
    DATA t522 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t522.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t525) = |EXISTS|.
    CREATE OBJECT t524.
    t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t524->sval = t525.
    t523 = t524.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t527.
    DATA t528 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t529.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t530.
    DATA(t531) = CAST zif_lnt_statement_runnable( t1 ).
    IF t531 IS BOUND.
      CREATE OBJECT t530.
      t530->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t532 TYPE REF TO object.
      t532 = t531.
      t530->oval = t532.
    ENDIF.
    t529 = t530.
    DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t533.
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t534.
    DATA(t535) = CAST zif_lnt_statement_runnable( t20 ).
    IF t535 IS BOUND.
      CREATE OBJECT t534.
      t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t536 TYPE REF TO object.
      t536 = t535.
      t534->oval = t536.
    ENDIF.
    t533 = t534.
    DATA t537 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t538 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t538.
    t537 = t538.
    DATA t539 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t540) = CAST zlnt_runtime_dyna_a429568d5be8( t529 ).
    DATA(t541) = CAST zlnt_runtime_dyna_a429568d5be8( t533 ).
    DATA(t542) = CAST zlnt_runtime_arra_c22708faf2e3( t537 ).
    t539 = zcl_lnt_st_combi_module=>alt_prio( i_first = t540 i_second = t541 i_rest = t542 ).
    t528 = t539.
    IF t528 IS BOUND.
      CREATE OBJECT t527.
      t527->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t543 TYPE REF TO object.
      t543 = t528.
      t527->oval = t543.
    ENDIF.
    t526 = t527.
    DATA t544 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t545 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t545.
    t544 = t545.
    DATA t546 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t547) = CAST zlnt_runtime_dyna_a429568d5be8( t523 ).
    DATA(t548) = CAST zlnt_runtime_dyna_a429568d5be8( t526 ).
    DATA(t549) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    t546 = zcl_lnt_st_combi_module=>seq( i_first = t547 i_second = t548 i_rest = t549 ).
    t522 = t546.
    t521 = t522.
    DATA t550 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t550.
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t551.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA(t553) = CAST zif_lnt_statement_runnable( t521 ).
    IF t553 IS BOUND.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t554 TYPE REF TO object.
      t554 = t553.
      t552->oval = t554.
    ENDIF.
    t551 = t552.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t555.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t556.
    DATA(t557) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t557 IS BOUND.
      CREATE OBJECT t556.
      t556->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t556->cval = t557.
    ENDIF.
    t555 = t556.
    DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t559 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t559.
    t558 = t559.
    DATA(t560) = CAST zlnt_runtime_arra_c22708faf2e3( t558 ).
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    DATA(t562) = CAST zif_lnt_statement_runnable( t505 ).
    IF t562 IS BOUND.
      CREATE OBJECT t561.
      t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t563 TYPE REF TO object.
      t563 = t562.
      t561->oval = t563.
    ENDIF.
    APPEND t561 TO t560->items.
    DATA t564 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t565) = CAST zlnt_runtime_dyna_a429568d5be8( t551 ).
    DATA(t566) = CAST zlnt_runtime_dyna_a429568d5be8( t555 ).
    DATA(t567) = CAST zlnt_runtime_arra_c22708faf2e3( t558 ).
    t564 = zcl_lnt_st_combi_module=>alt_prio( i_first = t565 i_second = t566 i_rest = t567 ).
    t550 = t564.
    result = t550.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
  ENDMETHOD.
ENDCLASS.
