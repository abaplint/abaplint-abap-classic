* TS: src/abap/2_statements/expressions/compare.ts:7:1 Compare
CLASS zcl_lnt_st_compare DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_compare IMPLEMENTATION.
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
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
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
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t21 TYPE REF TO object.
      t21 = t19.
      t18->oval = t21.
    ENDIF.
    t17 = t18.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = CAST zif_lnt_statement_runnable( t1 ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t24.
      t23->oval = t25.
    ENDIF.
    t22 = t23.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = |,|.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = CAST zif_lnt_statement_runnable( t1 ).
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t38.
      t37->oval = t39.
    ENDIF.
    t36 = t37.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t40 = t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t32 = t42.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t32.
      t31->oval = t46.
    ENDIF.
    t30 = zcl_lnt_st_combi_module=>plus( i_first = t31 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t47 TYPE REF TO object.
      t47 = t30.
      t29->oval = t47.
    ENDIF.
    APPEND t29 TO t28->items.
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t50 = zcl_lnt_st_combi_module=>tok( i_t = t51 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t50.
      t49->oval = t52.
    ENDIF.
    APPEND t49 TO t48->items.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t16 = t53.
    t15 = t16.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = |NOT|.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = t63.
    t61 = zcl_lnt_st_combi_module=>opt_prio( i_first = t62 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t61.
      t60->oval = t64.
    ENDIF.
    t59 = t60.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |IN|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA(t78) = CAST zif_lnt_statement_runnable( t15 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t79 TYPE REF TO object.
      t79 = t78.
      t77->oval = t79.
    ENDIF.
    t76 = t77.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t80 = t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t73 ).
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    t82 = zcl_lnt_st_combi_module=>alt_prio( i_first = t83 i_second = t84 i_rest = t85 ).
    t72 = t82.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t72.
      t71->oval = t86.
    ENDIF.
    APPEND t71 TO t70->items.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t89 i_rest = t90 ).
    t58 = t87.
    t57 = t58.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = |IS|.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = |NOT|.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = t100.
    t98 = zcl_lnt_st_combi_module=>opt_prio( i_first = t99 ).
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t101 TYPE REF TO object.
      t101 = t98.
      t97->oval = t101.
    ENDIF.
    t96 = t97.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t102 = t103.
    DATA(t104) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = |SUPPLIED|.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    t107 = t108.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = |BOUND|.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = t112.
    t110 = t111.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t114.
    t113 = t114.
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t113 ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t119.
    DATA t120 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t121.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t121 = zcl_lnt_version_module=>release_b8cd.
    DATA(t122) = |v750|.
    t120 = t121->get( p0 = t122 ).
    t119 = t120.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t123 TYPE REF TO object.
      t123 = t119.
      t118->oval = t123.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t128) = |INSTANCE OF|.
    CREATE OBJECT t127.
    t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t127->sval = t128.
    t126 = t127.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t130->cval = t131.
    ENDIF.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t133.
    t132 = t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t126 ).
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
    DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t136 i_rest = t137 ).
    t125 = t134.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t138 TYPE REF TO object.
      t138 = t125.
      t124->oval = t138.
    ENDIF.
    DATA t139 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t139.
    DATA(t140) = abap_true.
    IF t140 = abap_true.
      DATA t141 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      DATA(t143) = abap_true.
      IF t143 = abap_true.
        DATA(t144) = |OpenABAP|.
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = t144.
        t142 = t145.
      ELSE.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        t142 = t146.
      ENDIF.
      t141 = NEW zcl_lnt_iver_options( i_also = t142 ).
      t139 = t141.
    ELSE.
      DATA t147 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t147.
      t139 = t147.
    ENDIF.
    t117 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t118 i_first = t124 i_opts = t139 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t148 TYPE REF TO object.
      t148 = t117.
      t116->oval = t148.
    ENDIF.
    APPEND t116 TO t115->items.
    DATA(t149) = CAST zlnt_runtime_arra_c22708faf2e3( t113 ).
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t151) = |REQUESTED|.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    APPEND t150 TO t149->items.
    DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t113 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = |INITIAL|.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = t154.
    APPEND t153 TO t152->items.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t107 ).
    DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t110 ).
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t113 ).
    t155 = zcl_lnt_st_combi_module=>alt_prio( i_first = t156 i_second = t157 i_rest = t158 ).
    t106 = t155.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t106.
      t105->oval = t159.
    ENDIF.
    APPEND t105 TO t104->items.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t161) = CAST zlnt_runtime_dyna_a429568d5be8( t93 ).
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t96 ).
    DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t161 i_second = t162 i_rest = t163 ).
    t92 = t160.
    t91 = t92.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t170) = |NOT|.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = t170.
    t168 = zcl_lnt_st_combi_module=>opt_prio( i_first = t169 ).
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t171 TYPE REF TO object.
      t171 = t168.
      t167->oval = t171.
    ENDIF.
    t166 = t167.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t174) = |BETWEEN|.
    CREATE OBJECT t173.
    t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t173->sval = t174.
    t172 = t173.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t176.
    t175 = t176.
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t175 ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t178->cval = t179.
    ENDIF.
    APPEND t178 TO t177->items.
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t175 ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |AND|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    APPEND t181 TO t180->items.
    DATA(t183) = CAST zlnt_runtime_arra_c22708faf2e3( t175 ).
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    APPEND t184 TO t183->items.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t166 ).
    DATA(t188) = CAST zlnt_runtime_dyna_a429568d5be8( t172 ).
    DATA(t189) = CAST zlnt_runtime_arra_c22708faf2e3( t175 ).
    t186 = zcl_lnt_st_combi_module=>seq( i_first = t187 i_second = t188 i_rest = t189 ).
    t165 = t186.
    t164 = t165.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t193.
    DATA t194 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t195.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t195 = zcl_lnt_version_module=>release_b8cd.
    DATA(t196) = |v740sp08|.
    t194 = t195->get( p0 = t196 ).
    t193 = t194.
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t197 TYPE REF TO object.
      t197 = t193.
      t192->oval = t197.
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3 ).
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t198->cval = t199.
    ENDIF.
    DATA t200 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t200.
    DATA(t201) = abap_true.
    IF t201 = abap_true.
      DATA t202 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t202.
      DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t203.
      DATA(t204) = abap_true.
      IF t204 = abap_true.
        DATA(t205) = |OpenABAP|.
        DATA(t206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t206->has = abap_true.
        t206->value = t205.
        t203 = t206.
      ELSE.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        t203 = t207.
      ENDIF.
      t202 = NEW zcl_lnt_iver_options( i_also = t203 ).
      t200 = t202.
    ELSE.
      DATA t208 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t208.
      t200 = t208.
    ENDIF.
    t191 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t192 i_first = t198 i_opts = t200 ).
    t190 = t191.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d ).
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t221->cval = t222.
    ENDIF.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t224->cval = t225.
    ENDIF.
    t223 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t227.
    t226 = t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t229) = CAST zlnt_runtime_dyna_a429568d5be8( t220 ).
    DATA(t230) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t231) = CAST zlnt_runtime_arra_c22708faf2e3( t226 ).
    t228 = zcl_lnt_st_combi_module=>seq( i_first = t229 i_second = t230 i_rest = t231 ).
    t219 = t228.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t232 TYPE REF TO object.
      t232 = t219.
      t218->oval = t232.
    ENDIF.
    t217 = t218.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = CAST zif_lnt_statement_runnable( t57 ).
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t235.
      t234->oval = t236.
    ENDIF.
    t233 = t234.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t238.
    t237 = t238.
    DATA(t239) = CAST zlnt_runtime_arra_c22708faf2e3( t237 ).
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = CAST zif_lnt_statement_runnable( t164 ).
    IF t241 IS BOUND.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t242 TYPE REF TO object.
      t242 = t241.
      t240->oval = t242.
    ENDIF.
    APPEND t240 TO t239->items.
    DATA(t243) = CAST zlnt_runtime_arra_c22708faf2e3( t237 ).
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = CAST zif_lnt_statement_runnable( t91 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t245.
      t244->oval = t246.
    ENDIF.
    APPEND t244 TO t243->items.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t248) = CAST zlnt_runtime_dyna_a429568d5be8( t217 ).
    DATA(t249) = CAST zlnt_runtime_dyna_a429568d5be8( t233 ).
    DATA(t250) = CAST zlnt_runtime_arra_c22708faf2e3( t237 ).
    t247 = zcl_lnt_st_combi_module=>alt_prio( i_first = t248 i_second = t249 i_rest = t250 ).
    t216 = t247.
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t251 TYPE REF TO object.
      t251 = t216.
      t215->oval = t251.
    ENDIF.
    t214 = t215.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t253.
    t252 = t253.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t255) = CAST zlnt_runtime_dyna_a429568d5be8( t211 ).
    DATA(t256) = CAST zlnt_runtime_dyna_a429568d5be8( t214 ).
    DATA(t257) = CAST zlnt_runtime_arra_c22708faf2e3( t252 ).
    t254 = zcl_lnt_st_combi_module=>seq( i_first = t255 i_second = t256 i_rest = t257 ).
    t210 = t254.
    t209 = t210.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA(t262) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e ).
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t261->cval = t262.
    ENDIF.
    t260 = t261.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t265) = |IS|.
    CREATE OBJECT t264.
    t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t264->sval = t265.
    t263 = t264.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t267.
    t266 = t267.
    DATA(t268) = CAST zlnt_runtime_arra_c22708faf2e3( t266 ).
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t272) = |NOT|.
    CREATE OBJECT t271.
    t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t271->sval = t272.
    t270 = zcl_lnt_st_combi_module=>opt_prio( i_first = t271 ).
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t273 TYPE REF TO object.
      t273 = t270.
      t269->oval = t273.
    ENDIF.
    APPEND t269 TO t268->items.
    DATA(t274) = CAST zlnt_runtime_arra_c22708faf2e3( t266 ).
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t276) = |ASSIGNED|.
    CREATE OBJECT t275.
    t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t275->sval = t276.
    APPEND t275 TO t274->items.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t278) = CAST zlnt_runtime_dyna_a429568d5be8( t260 ).
    DATA(t279) = CAST zlnt_runtime_dyna_a429568d5be8( t263 ).
    DATA(t280) = CAST zlnt_runtime_arra_c22708faf2e3( t266 ).
    t277 = zcl_lnt_st_combi_module=>seq( i_first = t278 i_second = t279 i_rest = t280 ).
    t259 = t277.
    t258 = t259.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t287) = |NOT|.
    CREATE OBJECT t286.
    t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t286->sval = t287.
    t285 = zcl_lnt_st_combi_module=>opt( i_first = t286 ).
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t288 TYPE REF TO object.
      t288 = t285.
      t284->oval = t288.
    ENDIF.
    t283 = t284.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA(t294) = CAST zif_lnt_statement_runnable( t209 ).
    IF t294 IS BOUND.
      CREATE OBJECT t293.
      t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t295 TYPE REF TO object.
      t295 = t294.
      t293->oval = t295.
    ENDIF.
    t292 = t293.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA(t298) = CAST zif_lnt_statement_runnable( t190 ).
    IF t298 IS BOUND.
      CREATE OBJECT t297.
      t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t299 TYPE REF TO object.
      t299 = t298.
      t297->oval = t299.
    ENDIF.
    t296 = t297.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t301.
    t300 = t301.
    DATA(t302) = CAST zlnt_runtime_arra_c22708faf2e3( t300 ).
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA(t304) = CAST zif_lnt_statement_runnable( t258 ).
    IF t304 IS BOUND.
      CREATE OBJECT t303.
      t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t305 TYPE REF TO object.
      t305 = t304.
      t303->oval = t305.
    ENDIF.
    APPEND t303 TO t302->items.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t307) = CAST zlnt_runtime_dyna_a429568d5be8( t292 ).
    DATA(t308) = CAST zlnt_runtime_dyna_a429568d5be8( t296 ).
    DATA(t309) = CAST zlnt_runtime_arra_c22708faf2e3( t300 ).
    t306 = zcl_lnt_st_combi_module=>alt_prio( i_first = t307 i_second = t308 i_rest = t309 ).
    t291 = t306.
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t310 TYPE REF TO object.
      t310 = t291.
      t290->oval = t310.
    ENDIF.
    t289 = t290.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t312.
    t311 = t312.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t314) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t315) = CAST zlnt_runtime_dyna_a429568d5be8( t289 ).
    DATA(t316) = CAST zlnt_runtime_arra_c22708faf2e3( t311 ).
    t313 = zcl_lnt_st_combi_module=>seq( i_first = t314 i_second = t315 i_rest = t316 ).
    t282 = t313.
    t281 = t282.
    DATA(t317) = CAST zif_lnt_statement_runnable( t281 ).
    result = t317.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
  ENDMETHOD.
ENDCLASS.
