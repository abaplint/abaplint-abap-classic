* TS: src/abap/2_statements/expressions/sql_group_by.ts:9:1 SQLGroupBy
CLASS zcl_lnt_sql_group_by DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_group_by IMPLEMENTATION.
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
    DATA(t6) = |ORDER|.
    DATA(t7) = |BY|.
    t5 = zcl_lnt_st_combi_module=>stop_before( i_t1 = t6 i_t2 = t7 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      t4->oval = t8.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t16->cval = t17.
    ENDIF.
    t15 = t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t20 = zcl_lnt_st_combi_module=>alt( i_first = t21 i_second = t22 i_rest = t23 ).
    t11 = t20.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t11.
      t10->oval = t24.
    ENDIF.
    t9 = t10.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t2 = t27.
    t1 = t2.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t36.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t36 = zcl_lnt_version_module=>release_b8cd.
    DATA(t37) = |v740sp02|.
    t35 = t36->get( p0 = t37 ).
    t34 = t35.
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t34.
      t33->oval = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d291_77feaa8efd76 ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    DATA t41 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA(t46) = |OpenABAP|.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t46.
        t44 = t47.
      ELSE.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        t44 = t48.
      ENDIF.
      t43 = NEW zcl_lnt_iver_options( i_also = t44 ).
      t41 = t43.
    ELSE.
      DATA t49 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t49.
      t41 = t49.
    ENDIF.
    t32 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t33 i_first = t39 i_opts = t41 ).
    t31 = t32.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t53.
    DATA t54 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t55.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t55 = zcl_lnt_version_module=>release_b8cd.
    DATA(t56) = |v740sp02|.
    t54 = t55->get( p0 = t56 ).
    t53 = t54.
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t57 TYPE REF TO object.
      t57 = t53.
      t52->oval = t57.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = |GROUP BY|.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zif_lnt_statement_runnable( t31 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t65.
      t64->oval = t66.
    ENDIF.
    t63 = t64.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t67 = t68.
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
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
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = |,|.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zif_lnt_statement_runnable( t31 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t83 TYPE REF TO object.
      t83 = t82.
      t81->oval = t83.
    ENDIF.
    t80 = t81.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t85.
    t84 = t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t80 ).
    DATA(t89) = CAST zlnt_runtime_arra_c22708faf2e3( t84 ).
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t88 i_rest = t89 ).
    t76 = t86.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t90 TYPE REF TO object.
      t90 = t76.
      t75->oval = t90.
    ENDIF.
    t74 = zcl_lnt_st_combi_module=>plus( i_first = t75 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t74.
      t73->oval = t91.
    ENDIF.
    t72 = t73.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = CAST zif_lnt_statement_runnable( t1 ).
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t99 TYPE REF TO object.
      t99 = t98.
      t97->oval = t99.
    ENDIF.
    t96 = zcl_lnt_st_combi_module=>plus( i_first = t97 ).
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t96.
      t95->oval = t100.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>opt_prio( i_first = t95 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t101 TYPE REF TO object.
      t101 = t94.
      t93->oval = t101.
    ENDIF.
    t92 = t93.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t107) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
    t104 = zcl_lnt_st_combi_module=>alt_prio( i_first = t105 i_second = t106 i_rest = t107 ).
    t71 = t104.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t108 TYPE REF TO object.
      t108 = t71.
      t70->oval = t108.
    ENDIF.
    APPEND t70 TO t69->items.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t59 = t109.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t113 TYPE REF TO object.
      t113 = t59.
      t58->oval = t113.
    ENDIF.
    DATA t114 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t114.
    DATA(t115) = abap_true.
    IF t115 = abap_true.
      DATA t116 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      DATA(t118) = abap_true.
      IF t118 = abap_true.
        DATA(t119) = |OpenABAP|.
        DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t120->has = abap_true.
        t120->value = t119.
        t117 = t120.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        t117 = t121.
      ENDIF.
      t116 = NEW zcl_lnt_iver_options( i_also = t117 ).
      t114 = t116.
    ELSE.
      DATA t122 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t122.
      t114 = t122.
    ENDIF.
    t51 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t52 i_first = t58 i_opts = t114 ).
    t50 = t51.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = CAST zif_lnt_statement_runnable( t1 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t133 TYPE REF TO object.
      t133 = t132.
      t131->oval = t133.
    ENDIF.
    t130 = t131.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = |,|.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t137 = t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t140) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t134 ).
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t141 i_rest = t142 ).
    t129 = t139.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t143 TYPE REF TO object.
      t143 = t129.
      t128->oval = t143.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>plus( i_first = t128 ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t127.
      t126->oval = t144.
    ENDIF.
    t125 = t126.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = CAST zif_lnt_statement_runnable( t1 ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t148 TYPE REF TO object.
      t148 = t147.
      t146->oval = t148.
    ENDIF.
    t145 = t146.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    t149 = t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t153 i_rest = t154 ).
    t124 = t151.
    t123 = t124.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = |GROUP BY|.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = CAST zif_lnt_statement_runnable( t123 ).
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t165.
      t164->oval = t166.
    ENDIF.
    t163 = t164.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = CAST zif_lnt_statement_runnable( t1 ).
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t172 TYPE REF TO object.
      t172 = t171.
      t170->oval = t172.
    ENDIF.
    t169 = zcl_lnt_st_combi_module=>plus( i_first = t170 ).
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t173 TYPE REF TO object.
      t173 = t169.
      t168->oval = t173.
    ENDIF.
    t167 = t168.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t175.
    t174 = t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t177) = CAST zlnt_runtime_dyna_a429568d5be8( t163 ).
    DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t167 ).
    DATA(t179) = CAST zlnt_runtime_arra_c22708faf2e3( t174 ).
    t176 = zcl_lnt_st_combi_module=>alt_prio( i_first = t177 i_second = t178 i_rest = t179 ).
    t162 = t176.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t180 TYPE REF TO object.
      t180 = t162.
      t161->oval = t180.
    ENDIF.
    t160 = t161.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    t181 = t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t184) = CAST zlnt_runtime_dyna_a429568d5be8( t157 ).
    DATA(t185) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t186) = CAST zlnt_runtime_arra_c22708faf2e3( t181 ).
    t183 = zcl_lnt_st_combi_module=>seq( i_first = t184 i_second = t185 i_rest = t186 ).
    t156 = t183.
    t155 = t156.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t190.
    DATA t191 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t192.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t192 = zcl_lnt_version_module=>release_b8cd.
    DATA(t193) = |v772|.
    t191 = t192->get( p0 = t193 ).
    t190 = t191.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t194 TYPE REF TO object.
      t194 = t190.
      t189->oval = t194.
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t199) = |GROUP BY|.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = t199.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA(t202) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d307_fbcde215a988 ).
    IF t202 IS BOUND.
      CREATE OBJECT t201.
      t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t201->cval = t202.
    ENDIF.
    t200 = t201.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    t203 = t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t197 ).
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t200 ).
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t203 ).
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t206 i_second = t207 i_rest = t208 ).
    t196 = t205.
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t196.
      t195->oval = t209.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t210.
    t188 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t189 i_first = t195 i_opts = t210 ).
    t187 = t188.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = CAST zif_lnt_statement_runnable( t187 ).
    IF t214 IS BOUND.
      CREATE OBJECT t213.
      t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t215 TYPE REF TO object.
      t215 = t214.
      t213->oval = t215.
    ENDIF.
    t212 = t213.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = CAST zif_lnt_statement_runnable( t50 ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t218.
      t217->oval = t219.
    ENDIF.
    t216 = t217.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    t220 = t221.
    DATA(t222) = CAST zlnt_runtime_arra_c22708faf2e3( t220 ).
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA(t224) = CAST zif_lnt_statement_runnable( t155 ).
    IF t224 IS BOUND.
      CREATE OBJECT t223.
      t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t225 TYPE REF TO object.
      t225 = t224.
      t223->oval = t225.
    ENDIF.
    APPEND t223 TO t222->items.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t212 ).
    DATA(t228) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t220 ).
    t226 = zcl_lnt_st_combi_module=>alt_prio( i_first = t227 i_second = t228 i_rest = t229 ).
    t211 = t226.
    result = t211.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d308_c2d6db3f5bbf.
  ENDMETHOD.
ENDCLASS.
