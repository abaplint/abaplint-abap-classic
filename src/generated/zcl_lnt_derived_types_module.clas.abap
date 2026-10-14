* TS: src/abap/2_statements/expressions/_derived_types.ts.module module
CLASS zcl_lnt_derived_types_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS common_derived_types RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS derived_types_alt IMPORTING i_extra TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_97883fd3a7a5 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7b8174c20e26.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_derived_types_module IMPLEMENTATION.
  METHOD common_derived_types.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
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
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
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
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t23.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t23 = zcl_lnt_version_module=>release_b8cd.
    DATA(t24) = |v774|.
    t22 = t23->get( p0 = t24 ).
    t21 = t22.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t21.
      t20->oval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |FAILED LATE|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zif_lnt_statement_runnable( t1 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t34 TYPE REF TO object.
      t34 = t33.
      t32->oval = t34.
    ENDIF.
    t31 = t32.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t35 = t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t39 i_rest = t40 ).
    t27 = t37.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t27.
      t26->oval = t41.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t42.
    DATA(t43) = abap_true.
    IF t43 = abap_true.
      DATA t44 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA(t47) = |OpenABAP|.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t47.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t45 = t49.
      ENDIF.
      t44 = NEW zcl_lnt_iver_options( i_also = t45 ).
      t42 = t44.
    ELSE.
      DATA t50 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t50.
      t42 = t50.
    ENDIF.
    t19 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t26 i_opts = t42 ).
    APPEND t19 TO t18->items.
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t56.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t56 = zcl_lnt_version_module=>release_b8cd.
    DATA(t57) = |v774|.
    t55 = t56->get( p0 = t57 ).
    t54 = t55.
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t54.
      t53->oval = t58.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = |MAPPED LATE|.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = t63.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = CAST zif_lnt_statement_runnable( t1 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t67 TYPE REF TO object.
      t67 = t66.
      t65->oval = t67.
    ENDIF.
    t64 = t65.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t61 ).
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t72 i_rest = t73 ).
    t60 = t70.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t74 TYPE REF TO object.
      t74 = t60.
      t59->oval = t74.
    ENDIF.
    DATA t75 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t75.
    DATA(t76) = abap_true.
    IF t76 = abap_true.
      DATA t77 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      DATA(t79) = abap_true.
      IF t79 = abap_true.
        DATA(t80) = |OpenABAP|.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t80.
        t78 = t81.
      ELSE.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t78 = t82.
      ENDIF.
      t77 = NEW zcl_lnt_iver_options( i_also = t78 ).
      t75 = t77.
    ELSE.
      DATA t83 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t83.
      t75 = t83.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t53 i_first = t59 i_opts = t75 ).
    APPEND t52 TO t51->items.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t89.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t89 = zcl_lnt_version_module=>release_b8cd.
    DATA(t90) = |v774|.
    t88 = t89->get( p0 = t90 ).
    t87 = t88.
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t87.
      t86->oval = t91.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = |REPORTED LATE|.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = t96.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zif_lnt_statement_runnable( t1 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t99.
      t98->oval = t100.
    ENDIF.
    t97 = t98.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    t101 = t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t101 ).
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t105 i_rest = t106 ).
    t93 = t103.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t107 TYPE REF TO object.
      t107 = t93.
      t92->oval = t107.
    ENDIF.
    DATA t108 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t108.
    DATA(t109) = abap_true.
    IF t109 = abap_true.
      DATA t110 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA(t113) = |OpenABAP|.
        DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t114->has = abap_true.
        t114->value = t113.
        t111 = t114.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t111 = t115.
      ENDIF.
      t110 = NEW zcl_lnt_iver_options( i_also = t111 ).
      t108 = t110.
    ELSE.
      DATA t116 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t116.
      t108 = t116.
    ENDIF.
    t85 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t86 i_first = t92 i_opts = t108 ).
    APPEND t85 TO t84->items.
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t120.
    DATA t121 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t122.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t122 = zcl_lnt_version_module=>release_b8cd.
    DATA(t123) = |v777|.
    t121 = t122->get( p0 = t123 ).
    t120 = t121.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t124 TYPE REF TO object.
      t124 = t120.
      t119->oval = t124.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |FAILED EARLY|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
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
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t135.
    t134 = t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t138) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t134 ).
    t136 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t138 i_rest = t139 ).
    t126 = t136.
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t140 TYPE REF TO object.
      t140 = t126.
      t125->oval = t140.
    ENDIF.
    DATA t141 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t141.
    DATA(t142) = abap_true.
    IF t142 = abap_true.
      DATA t143 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t144.
      DATA(t145) = abap_true.
      IF t145 = abap_true.
        DATA(t146) = |OpenABAP|.
        DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t147->has = abap_true.
        t147->value = t146.
        t144 = t147.
      ELSE.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t144 = t148.
      ENDIF.
      t143 = NEW zcl_lnt_iver_options( i_also = t144 ).
      t141 = t143.
    ELSE.
      DATA t149 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t149.
      t141 = t149.
    ENDIF.
    t118 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t119 i_first = t125 i_opts = t141 ).
    APPEND t118 TO t117->items.
    DATA(t150) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t153.
    DATA t154 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t155.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t155 = zcl_lnt_version_module=>release_b8cd.
    DATA(t156) = |v777|.
    t154 = t155->get( p0 = t156 ).
    t153 = t154.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t153.
      t152->oval = t157.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = |MAPPED EARLY|.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = t162.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = CAST zif_lnt_statement_runnable( t1 ).
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t165.
      t164->oval = t166.
    ENDIF.
    t163 = t164.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t168.
    t167 = t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t171) = CAST zlnt_runtime_dyna_a429568d5be8( t163 ).
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t167 ).
    t169 = zcl_lnt_st_combi_module=>seq( i_first = t170 i_second = t171 i_rest = t172 ).
    t159 = t169.
    IF t159 IS BOUND.
      CREATE OBJECT t158.
      t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t173 TYPE REF TO object.
      t173 = t159.
      t158->oval = t173.
    ENDIF.
    DATA t174 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t174.
    DATA(t175) = abap_true.
    IF t175 = abap_true.
      DATA t176 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t176.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA(t178) = abap_true.
      IF t178 = abap_true.
        DATA(t179) = |OpenABAP|.
        DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t180->has = abap_true.
        t180->value = t179.
        t177 = t180.
      ELSE.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        t177 = t181.
      ENDIF.
      t176 = NEW zcl_lnt_iver_options( i_also = t177 ).
      t174 = t176.
    ELSE.
      DATA t182 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t182.
      t174 = t182.
    ENDIF.
    t151 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t152 i_first = t158 i_opts = t174 ).
    APPEND t151 TO t150->items.
    DATA(t183) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t186.
    DATA t187 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t188.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t188 = zcl_lnt_version_module=>release_b8cd.
    DATA(t189) = |v777|.
    t187 = t188->get( p0 = t189 ).
    t186 = t187.
    IF t186 IS BOUND.
      CREATE OBJECT t185.
      t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t190 TYPE REF TO object.
      t190 = t186.
      t185->oval = t190.
    ENDIF.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |REPORTED EARLY|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = CAST zif_lnt_statement_runnable( t1 ).
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
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t203) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t204) = CAST zlnt_runtime_dyna_a429568d5be8( t196 ).
    DATA(t205) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t204 i_rest = t205 ).
    t192 = t202.
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t206 TYPE REF TO object.
      t206 = t192.
      t191->oval = t206.
    ENDIF.
    DATA t207 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t207.
    DATA(t208) = abap_true.
    IF t208 = abap_true.
      DATA t209 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t209.
      DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t210.
      DATA(t211) = abap_true.
      IF t211 = abap_true.
        DATA(t212) = |OpenABAP|.
        DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t213->has = abap_true.
        t213->value = t212.
        t210 = t213.
      ELSE.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t214.
        t210 = t214.
      ENDIF.
      t209 = NEW zcl_lnt_iver_options( i_also = t210 ).
      t207 = t209.
    ELSE.
      DATA t215 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t215.
      t207 = t215.
    ENDIF.
    t184 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t185 i_first = t191 i_opts = t207 ).
    APPEND t184 TO t183->items.
    DATA(t216) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t219.
    DATA t220 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t221.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t221 = zcl_lnt_version_module=>release_b8cd.
    DATA(t222) = |v776|.
    t220 = t221->get( p0 = t222 ).
    t219 = t220.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t223 TYPE REF TO object.
      t223 = t219.
      t218->oval = t223.
    ENDIF.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t228) = |FAILED|.
    CREATE OBJECT t227.
    t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t227->sval = t228.
    t226 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = CAST zif_lnt_statement_runnable( t1 ).
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
    t235 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t237 i_rest = t238 ).
    t225 = t235.
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t225.
      t224->oval = t239.
    ENDIF.
    DATA t240 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t240.
    DATA(t241) = abap_true.
    IF t241 = abap_true.
      DATA t242 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t242.
      DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t243.
      DATA(t244) = abap_true.
      IF t244 = abap_true.
        DATA(t245) = |OpenABAP|.
        DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t246->has = abap_true.
        t246->value = t245.
        t243 = t246.
      ELSE.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t247.
        t243 = t247.
      ENDIF.
      t242 = NEW zcl_lnt_iver_options( i_also = t243 ).
      t240 = t242.
    ELSE.
      DATA t248 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t248.
      t240 = t248.
    ENDIF.
    t217 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t218 i_first = t224 i_opts = t240 ).
    APPEND t217 TO t216->items.
    DATA(t249) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA t252 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t252.
    DATA t253 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t254.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t254 = zcl_lnt_version_module=>release_b8cd.
    DATA(t255) = |v776|.
    t253 = t254->get( p0 = t255 ).
    t252 = t253.
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t252.
      t251->oval = t256.
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t261) = |MAPPED|.
    CREATE OBJECT t260.
    t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t260->sval = t261.
    t259 = t260.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA(t264) = CAST zif_lnt_statement_runnable( t1 ).
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t265 TYPE REF TO object.
      t265 = t264.
      t263->oval = t265.
    ENDIF.
    t262 = t263.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t267.
    t266 = t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t269) = CAST zlnt_runtime_dyna_a429568d5be8( t259 ).
    DATA(t270) = CAST zlnt_runtime_dyna_a429568d5be8( t262 ).
    DATA(t271) = CAST zlnt_runtime_arra_c22708faf2e3( t266 ).
    t268 = zcl_lnt_st_combi_module=>seq( i_first = t269 i_second = t270 i_rest = t271 ).
    t258 = t268.
    IF t258 IS BOUND.
      CREATE OBJECT t257.
      t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t272 TYPE REF TO object.
      t272 = t258.
      t257->oval = t272.
    ENDIF.
    DATA t273 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t273.
    DATA(t274) = abap_true.
    IF t274 = abap_true.
      DATA t275 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t275.
      DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t276.
      DATA(t277) = abap_true.
      IF t277 = abap_true.
        DATA(t278) = |OpenABAP|.
        DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t279->has = abap_true.
        t279->value = t278.
        t276 = t279.
      ELSE.
        DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t280.
        t276 = t280.
      ENDIF.
      t275 = NEW zcl_lnt_iver_options( i_also = t276 ).
      t273 = t275.
    ELSE.
      DATA t281 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t281.
      t273 = t281.
    ENDIF.
    t250 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t251 i_first = t257 i_opts = t273 ).
    APPEND t250 TO t249->items.
    DATA(t282) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t285.
    DATA t286 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t287.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t287 = zcl_lnt_version_module=>release_b8cd.
    DATA(t288) = |v776|.
    t286 = t287->get( p0 = t288 ).
    t285 = t286.
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t289 TYPE REF TO object.
      t289 = t285.
      t284->oval = t289.
    ENDIF.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = |REPORTED|.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    t292 = t293.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = CAST zif_lnt_statement_runnable( t1 ).
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
    DATA(t302) = CAST zlnt_runtime_dyna_a429568d5be8( t292 ).
    DATA(t303) = CAST zlnt_runtime_dyna_a429568d5be8( t295 ).
    DATA(t304) = CAST zlnt_runtime_arra_c22708faf2e3( t299 ).
    t301 = zcl_lnt_st_combi_module=>seq( i_first = t302 i_second = t303 i_rest = t304 ).
    t291 = t301.
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t305 TYPE REF TO object.
      t305 = t291.
      t290->oval = t305.
    ENDIF.
    DATA t306 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t306.
    DATA(t307) = abap_true.
    IF t307 = abap_true.
      DATA t308 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t308.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t309.
      DATA(t310) = abap_true.
      IF t310 = abap_true.
        DATA(t311) = |OpenABAP|.
        DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t312->has = abap_true.
        t312->value = t311.
        t309 = t312.
      ELSE.
        DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t313.
        t309 = t313.
      ENDIF.
      t308 = NEW zcl_lnt_iver_options( i_also = t309 ).
      t306 = t308.
    ELSE.
      DATA t314 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t314.
      t306 = t314.
    ENDIF.
    t283 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t284 i_first = t290 i_opts = t306 ).
    APPEND t283 TO t282->items.
    DATA(t315) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t316 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    DATA t318 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t318.
    DATA t319 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t320.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t320 = zcl_lnt_version_module=>release_b8cd.
    DATA(t321) = |v773|.
    t319 = t320->get( p0 = t321 ).
    t318 = t319.
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t322 TYPE REF TO object.
      t322 = t318.
      t317->oval = t322.
    ENDIF.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t327) = |FUNCTION IMPORT|.
    CREATE OBJECT t326.
    t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t326->sval = t327.
    t325 = t326.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA(t330) = CAST zif_lnt_statement_runnable( t1 ).
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t331 TYPE REF TO object.
      t331 = t330.
      t329->oval = t331.
    ENDIF.
    t328 = t329.
    DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t333.
    t332 = t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t335) = CAST zlnt_runtime_dyna_a429568d5be8( t325 ).
    DATA(t336) = CAST zlnt_runtime_dyna_a429568d5be8( t328 ).
    DATA(t337) = CAST zlnt_runtime_arra_c22708faf2e3( t332 ).
    t334 = zcl_lnt_st_combi_module=>seq( i_first = t335 i_second = t336 i_rest = t337 ).
    t324 = t334.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t338 TYPE REF TO object.
      t338 = t324.
      t323->oval = t338.
    ENDIF.
    DATA t339 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t339.
    DATA(t340) = abap_true.
    IF t340 = abap_true.
      DATA t341 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t341.
      DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t342.
      DATA(t343) = abap_true.
      IF t343 = abap_true.
        DATA(t344) = |OpenABAP|.
        DATA(t345) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t345->has = abap_true.
        t345->value = t344.
        t342 = t345.
      ELSE.
        DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t346.
        t342 = t346.
      ENDIF.
      t341 = NEW zcl_lnt_iver_options( i_also = t342 ).
      t339 = t341.
    ELSE.
      DATA t347 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t347.
      t339 = t347.
    ENDIF.
    t316 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t317 i_first = t323 i_opts = t339 ).
    APPEND t316 TO t315->items.
    DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA t351 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t351.
    DATA t352 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t352.
    DATA t353 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t353.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t353 = zcl_lnt_version_module=>release_b8cd.
    DATA(t354) = |v773|.
    t352 = t353->get( p0 = t354 ).
    t351 = t352.
    IF t351 IS BOUND.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t355 TYPE REF TO object.
      t355 = t351.
      t350->oval = t355.
    ENDIF.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t357.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t360) = |FUNCTION RESULT|.
    CREATE OBJECT t359.
    t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t359->sval = t360.
    t358 = t359.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA(t363) = CAST zif_lnt_statement_runnable( t1 ).
    IF t363 IS BOUND.
      CREATE OBJECT t362.
      t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t364 TYPE REF TO object.
      t364 = t363.
      t362->oval = t364.
    ENDIF.
    t361 = t362.
    DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t366.
    t365 = t366.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t368) = CAST zlnt_runtime_dyna_a429568d5be8( t358 ).
    DATA(t369) = CAST zlnt_runtime_dyna_a429568d5be8( t361 ).
    DATA(t370) = CAST zlnt_runtime_arra_c22708faf2e3( t365 ).
    t367 = zcl_lnt_st_combi_module=>seq( i_first = t368 i_second = t369 i_rest = t370 ).
    t357 = t367.
    IF t357 IS BOUND.
      CREATE OBJECT t356.
      t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t371 TYPE REF TO object.
      t371 = t357.
      t356->oval = t371.
    ENDIF.
    DATA t372 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t372.
    DATA(t373) = abap_true.
    IF t373 = abap_true.
      DATA t374 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t374.
      DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t375.
      DATA(t376) = abap_true.
      IF t376 = abap_true.
        DATA(t377) = |OpenABAP|.
        DATA(t378) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t378->has = abap_true.
        t378->value = t377.
        t375 = t378.
      ELSE.
        DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t379.
        t375 = t379.
      ENDIF.
      t374 = NEW zcl_lnt_iver_options( i_also = t375 ).
      t372 = t374.
    ELSE.
      DATA t380 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t380.
      t372 = t380.
    ENDIF.
    t349 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t350 i_first = t356 i_opts = t372 ).
    APPEND t349 TO t348->items.
    DATA(t381) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t382 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA t384 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t384.
    DATA t385 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t385.
    DATA t386 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t386.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t386 = zcl_lnt_version_module=>release_b8cd.
    DATA(t387) = |v773|.
    t385 = t386->get( p0 = t387 ).
    t384 = t385.
    IF t384 IS BOUND.
      CREATE OBJECT t383.
      t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t388 TYPE REF TO object.
      t388 = t384.
      t383->oval = t388.
    ENDIF.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t393) = |ACTION RESULT|.
    CREATE OBJECT t392.
    t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t392->sval = t393.
    t391 = t392.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA(t396) = CAST zif_lnt_statement_runnable( t1 ).
    IF t396 IS BOUND.
      CREATE OBJECT t395.
      t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t397 TYPE REF TO object.
      t397 = t396.
      t395->oval = t397.
    ENDIF.
    t394 = t395.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t399.
    t398 = t399.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t401) = CAST zlnt_runtime_dyna_a429568d5be8( t391 ).
    DATA(t402) = CAST zlnt_runtime_dyna_a429568d5be8( t394 ).
    DATA(t403) = CAST zlnt_runtime_arra_c22708faf2e3( t398 ).
    t400 = zcl_lnt_st_combi_module=>seq( i_first = t401 i_second = t402 i_rest = t403 ).
    t390 = t400.
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t404 TYPE REF TO object.
      t404 = t390.
      t389->oval = t404.
    ENDIF.
    DATA t405 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t405.
    DATA(t406) = abap_true.
    IF t406 = abap_true.
      DATA t407 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t407.
      DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t408.
      DATA(t409) = abap_true.
      IF t409 = abap_true.
        DATA(t410) = |OpenABAP|.
        DATA(t411) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t411->has = abap_true.
        t411->value = t410.
        t408 = t411.
      ELSE.
        DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t412.
        t408 = t412.
      ENDIF.
      t407 = NEW zcl_lnt_iver_options( i_also = t408 ).
      t405 = t407.
    ELSE.
      DATA t413 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t413.
      t405 = t413.
    ENDIF.
    t382 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t383 i_first = t389 i_opts = t405 ).
    APPEND t382 TO t381->items.
    DATA(t414) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t415 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t415.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    DATA t417 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t417.
    DATA t418 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t419.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t419 = zcl_lnt_version_module=>release_b8cd.
    DATA(t420) = |v781|.
    t418 = t419->get( p0 = t420 ).
    t417 = t418.
    IF t417 IS BOUND.
      CREATE OBJECT t416.
      t416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t421 TYPE REF TO object.
      t421 = t417.
      t416->oval = t421.
    ENDIF.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t426) = |INSTANCE AUTHORIZATION KEY|.
    CREATE OBJECT t425.
    t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t425->sval = t426.
    t424 = t425.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA(t429) = CAST zif_lnt_statement_runnable( t1 ).
    IF t429 IS BOUND.
      CREATE OBJECT t428.
      t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t430 TYPE REF TO object.
      t430 = t429.
      t428->oval = t430.
    ENDIF.
    t427 = t428.
    DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t432.
    t431 = t432.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t434) = CAST zlnt_runtime_dyna_a429568d5be8( t424 ).
    DATA(t435) = CAST zlnt_runtime_dyna_a429568d5be8( t427 ).
    DATA(t436) = CAST zlnt_runtime_arra_c22708faf2e3( t431 ).
    t433 = zcl_lnt_st_combi_module=>seq( i_first = t434 i_second = t435 i_rest = t436 ).
    t423 = t433.
    IF t423 IS BOUND.
      CREATE OBJECT t422.
      t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t437 TYPE REF TO object.
      t437 = t423.
      t422->oval = t437.
    ENDIF.
    DATA t438 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t438.
    DATA(t439) = abap_true.
    IF t439 = abap_true.
      DATA t440 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t440.
      DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t441.
      DATA(t442) = abap_true.
      IF t442 = abap_true.
        DATA(t443) = |OpenABAP|.
        DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t444->has = abap_true.
        t444->value = t443.
        t441 = t444.
      ELSE.
        DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t445.
        t441 = t445.
      ENDIF.
      t440 = NEW zcl_lnt_iver_options( i_also = t441 ).
      t438 = t440.
    ELSE.
      DATA t446 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t446.
      t438 = t446.
    ENDIF.
    t415 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t416 i_first = t422 i_opts = t438 ).
    APPEND t415 TO t414->items.
    DATA(t447) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t448 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t448.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    DATA t450 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t450.
    DATA t451 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t451.
    DATA t452 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t452.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t452 = zcl_lnt_version_module=>release_b8cd.
    DATA(t453) = |v781|.
    t451 = t452->get( p0 = t453 ).
    t450 = t451.
    IF t450 IS BOUND.
      CREATE OBJECT t449.
      t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t454 TYPE REF TO object.
      t454 = t450.
      t449->oval = t454.
    ENDIF.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA t456 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t456.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t459) = |INSTANCE AUTHORIZATION REQUEST|.
    CREATE OBJECT t458.
    t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t458->sval = t459.
    t457 = t458.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA(t462) = CAST zif_lnt_statement_runnable( t1 ).
    IF t462 IS BOUND.
      CREATE OBJECT t461.
      t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t463 TYPE REF TO object.
      t463 = t462.
      t461->oval = t463.
    ENDIF.
    t460 = t461.
    DATA t464 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t465 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t465.
    t464 = t465.
    DATA t466 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t467) = CAST zlnt_runtime_dyna_a429568d5be8( t457 ).
    DATA(t468) = CAST zlnt_runtime_dyna_a429568d5be8( t460 ).
    DATA(t469) = CAST zlnt_runtime_arra_c22708faf2e3( t464 ).
    t466 = zcl_lnt_st_combi_module=>seq( i_first = t467 i_second = t468 i_rest = t469 ).
    t456 = t466.
    IF t456 IS BOUND.
      CREATE OBJECT t455.
      t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t470 TYPE REF TO object.
      t470 = t456.
      t455->oval = t470.
    ENDIF.
    DATA t471 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t471.
    DATA(t472) = abap_true.
    IF t472 = abap_true.
      DATA t473 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t473.
      DATA t474 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t474.
      DATA(t475) = abap_true.
      IF t475 = abap_true.
        DATA(t476) = |OpenABAP|.
        DATA(t477) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t477->has = abap_true.
        t477->value = t476.
        t474 = t477.
      ELSE.
        DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t478.
        t474 = t478.
      ENDIF.
      t473 = NEW zcl_lnt_iver_options( i_also = t474 ).
      t471 = t473.
    ELSE.
      DATA t479 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t479.
      t471 = t479.
    ENDIF.
    t448 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t449 i_first = t455 i_opts = t471 ).
    APPEND t448 TO t447->items.
    DATA(t480) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t481 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t481.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA t483 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t483.
    DATA t484 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t484.
    DATA t485 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t485.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t485 = zcl_lnt_version_module=>release_b8cd.
    DATA(t486) = |v781|.
    t484 = t485->get( p0 = t486 ).
    t483 = t484.
    IF t483 IS BOUND.
      CREATE OBJECT t482.
      t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t487 TYPE REF TO object.
      t487 = t483.
      t482->oval = t487.
    ENDIF.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    DATA t489 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t489.
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t492) = |INSTANCE AUTHORIZATION RESULT|.
    CREATE OBJECT t491.
    t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t491->sval = t492.
    t490 = t491.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t494.
    DATA(t495) = CAST zif_lnt_statement_runnable( t1 ).
    IF t495 IS BOUND.
      CREATE OBJECT t494.
      t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t496 TYPE REF TO object.
      t496 = t495.
      t494->oval = t496.
    ENDIF.
    t493 = t494.
    DATA t497 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t498 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t498.
    t497 = t498.
    DATA t499 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t500) = CAST zlnt_runtime_dyna_a429568d5be8( t490 ).
    DATA(t501) = CAST zlnt_runtime_dyna_a429568d5be8( t493 ).
    DATA(t502) = CAST zlnt_runtime_arra_c22708faf2e3( t497 ).
    t499 = zcl_lnt_st_combi_module=>seq( i_first = t500 i_second = t501 i_rest = t502 ).
    t489 = t499.
    IF t489 IS BOUND.
      CREATE OBJECT t488.
      t488->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t503 TYPE REF TO object.
      t503 = t489.
      t488->oval = t503.
    ENDIF.
    DATA t504 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t504.
    DATA(t505) = abap_true.
    IF t505 = abap_true.
      DATA t506 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t506.
      DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t507.
      DATA(t508) = abap_true.
      IF t508 = abap_true.
        DATA(t509) = |OpenABAP|.
        DATA(t510) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t510->has = abap_true.
        t510->value = t509.
        t507 = t510.
      ELSE.
        DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t511.
        t507 = t511.
      ENDIF.
      t506 = NEW zcl_lnt_iver_options( i_also = t507 ).
      t504 = t506.
    ELSE.
      DATA t512 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t512.
      t504 = t512.
    ENDIF.
    t481 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t482 i_first = t488 i_opts = t504 ).
    APPEND t481 TO t480->items.
    DATA(t513) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t514 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t514.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t515.
    DATA t516 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t516.
    DATA t517 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t517.
    DATA t518 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t518.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t518 = zcl_lnt_version_module=>release_b8cd.
    DATA(t519) = |v781|.
    t517 = t518->get( p0 = t519 ).
    t516 = t517.
    IF t516 IS BOUND.
      CREATE OBJECT t515.
      t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t520 TYPE REF TO object.
      t520 = t516.
      t515->oval = t520.
    ENDIF.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t521.
    DATA t522 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t522.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t525) = |INSTANCE FEATURES KEY|.
    CREATE OBJECT t524.
    t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t524->sval = t525.
    t523 = t524.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t527.
    DATA(t528) = CAST zif_lnt_statement_runnable( t1 ).
    IF t528 IS BOUND.
      CREATE OBJECT t527.
      t527->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t529 TYPE REF TO object.
      t529 = t528.
      t527->oval = t529.
    ENDIF.
    t526 = t527.
    DATA t530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t531 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t531.
    t530 = t531.
    DATA t532 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t533) = CAST zlnt_runtime_dyna_a429568d5be8( t523 ).
    DATA(t534) = CAST zlnt_runtime_dyna_a429568d5be8( t526 ).
    DATA(t535) = CAST zlnt_runtime_arra_c22708faf2e3( t530 ).
    t532 = zcl_lnt_st_combi_module=>seq( i_first = t533 i_second = t534 i_rest = t535 ).
    t522 = t532.
    IF t522 IS BOUND.
      CREATE OBJECT t521.
      t521->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t536 TYPE REF TO object.
      t536 = t522.
      t521->oval = t536.
    ENDIF.
    DATA t537 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t537.
    DATA(t538) = abap_true.
    IF t538 = abap_true.
      DATA t539 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t539.
      DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t540.
      DATA(t541) = abap_true.
      IF t541 = abap_true.
        DATA(t542) = |OpenABAP|.
        DATA(t543) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t543->has = abap_true.
        t543->value = t542.
        t540 = t543.
      ELSE.
        DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t544.
        t540 = t544.
      ENDIF.
      t539 = NEW zcl_lnt_iver_options( i_also = t540 ).
      t537 = t539.
    ELSE.
      DATA t545 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t545.
      t537 = t545.
    ENDIF.
    t514 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t515 i_first = t521 i_opts = t537 ).
    APPEND t514 TO t513->items.
    DATA(t546) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
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
    DATA(t552) = |v781|.
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
    DATA(t558) = |INSTANCE FEATURES REQUEST|.
    CREATE OBJECT t557.
    t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t557->sval = t558.
    t556 = t557.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t560.
    DATA(t561) = CAST zif_lnt_statement_runnable( t1 ).
    IF t561 IS BOUND.
      CREATE OBJECT t560.
      t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t562 TYPE REF TO object.
      t562 = t561.
      t560->oval = t562.
    ENDIF.
    t559 = t560.
    DATA t563 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t564 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t564.
    t563 = t564.
    DATA t565 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t566) = CAST zlnt_runtime_dyna_a429568d5be8( t556 ).
    DATA(t567) = CAST zlnt_runtime_dyna_a429568d5be8( t559 ).
    DATA(t568) = CAST zlnt_runtime_arra_c22708faf2e3( t563 ).
    t565 = zcl_lnt_st_combi_module=>seq( i_first = t566 i_second = t567 i_rest = t568 ).
    t555 = t565.
    IF t555 IS BOUND.
      CREATE OBJECT t554.
      t554->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t569 TYPE REF TO object.
      t569 = t555.
      t554->oval = t569.
    ENDIF.
    DATA t570 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t570.
    DATA(t571) = abap_true.
    IF t571 = abap_true.
      DATA t572 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t572.
      DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t573.
      DATA(t574) = abap_true.
      IF t574 = abap_true.
        DATA(t575) = |OpenABAP|.
        DATA(t576) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t576->has = abap_true.
        t576->value = t575.
        t573 = t576.
      ELSE.
        DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t577.
        t573 = t577.
      ENDIF.
      t572 = NEW zcl_lnt_iver_options( i_also = t573 ).
      t570 = t572.
    ELSE.
      DATA t578 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t578.
      t570 = t578.
    ENDIF.
    t547 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t548 i_first = t554 i_opts = t570 ).
    APPEND t547 TO t546->items.
    DATA(t579) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t582.
    DATA t583 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t583.
    DATA t584 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t584.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t584 = zcl_lnt_version_module=>release_b8cd.
    DATA(t585) = |v781|.
    t583 = t584->get( p0 = t585 ).
    t582 = t583.
    IF t582 IS BOUND.
      CREATE OBJECT t581.
      t581->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t586 TYPE REF TO object.
      t586 = t582.
      t581->oval = t586.
    ENDIF.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    DATA t588 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t588.
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t591) = |INSTANCE FEATURES RESULT|.
    CREATE OBJECT t590.
    t590->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t590->sval = t591.
    t589 = t590.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA(t594) = CAST zif_lnt_statement_runnable( t1 ).
    IF t594 IS BOUND.
      CREATE OBJECT t593.
      t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t595 TYPE REF TO object.
      t595 = t594.
      t593->oval = t595.
    ENDIF.
    t592 = t593.
    DATA t596 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t597 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t597.
    t596 = t597.
    DATA t598 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t599) = CAST zlnt_runtime_dyna_a429568d5be8( t589 ).
    DATA(t600) = CAST zlnt_runtime_dyna_a429568d5be8( t592 ).
    DATA(t601) = CAST zlnt_runtime_arra_c22708faf2e3( t596 ).
    t598 = zcl_lnt_st_combi_module=>seq( i_first = t599 i_second = t600 i_rest = t601 ).
    t588 = t598.
    IF t588 IS BOUND.
      CREATE OBJECT t587.
      t587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t602 TYPE REF TO object.
      t602 = t588.
      t587->oval = t602.
    ENDIF.
    DATA t603 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t603.
    DATA(t604) = abap_true.
    IF t604 = abap_true.
      DATA t605 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t605.
      DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t606.
      DATA(t607) = abap_true.
      IF t607 = abap_true.
        DATA(t608) = |OpenABAP|.
        DATA(t609) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t609->has = abap_true.
        t609->value = t608.
        t606 = t609.
      ELSE.
        DATA t610 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t610.
        t606 = t610.
      ENDIF.
      t605 = NEW zcl_lnt_iver_options( i_also = t606 ).
      t603 = t605.
    ELSE.
      DATA t611 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t611.
      t603 = t611.
    ENDIF.
    t580 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t581 i_first = t587 i_opts = t603 ).
    APPEND t580 TO t579->items.
    DATA(t612) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t613 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t613.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t614.
    DATA t615 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t615.
    DATA t616 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t616.
    DATA t617 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t617.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t617 = zcl_lnt_version_module=>release_b8cd.
    DATA(t618) = |v780|.
    t616 = t617->get( p0 = t618 ).
    t615 = t616.
    IF t615 IS BOUND.
      CREATE OBJECT t614.
      t614->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t619 TYPE REF TO object.
      t619 = t615.
      t614->oval = t619.
    ENDIF.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t620.
    DATA t621 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t621.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t624) = |AUTHORIZATION RESULT|.
    CREATE OBJECT t623.
    t623->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t623->sval = t624.
    t622 = t623.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t625.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t626.
    DATA(t627) = CAST zif_lnt_statement_runnable( t1 ).
    IF t627 IS BOUND.
      CREATE OBJECT t626.
      t626->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t628 TYPE REF TO object.
      t628 = t627.
      t626->oval = t628.
    ENDIF.
    t625 = t626.
    DATA t629 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t630 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t630.
    t629 = t630.
    DATA t631 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t632) = CAST zlnt_runtime_dyna_a429568d5be8( t622 ).
    DATA(t633) = CAST zlnt_runtime_dyna_a429568d5be8( t625 ).
    DATA(t634) = CAST zlnt_runtime_arra_c22708faf2e3( t629 ).
    t631 = zcl_lnt_st_combi_module=>seq( i_first = t632 i_second = t633 i_rest = t634 ).
    t621 = t631.
    IF t621 IS BOUND.
      CREATE OBJECT t620.
      t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t635 TYPE REF TO object.
      t635 = t621.
      t620->oval = t635.
    ENDIF.
    DATA t636 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t636.
    DATA(t637) = abap_true.
    IF t637 = abap_true.
      DATA t638 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t638.
      DATA t639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t639.
      DATA(t640) = abap_true.
      IF t640 = abap_true.
        DATA(t641) = |OpenABAP|.
        DATA(t642) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t642->has = abap_true.
        t642->value = t641.
        t639 = t642.
      ELSE.
        DATA t643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t643.
        t639 = t643.
      ENDIF.
      t638 = NEW zcl_lnt_iver_options( i_also = t639 ).
      t636 = t638.
    ELSE.
      DATA t644 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t644.
      t636 = t644.
    ENDIF.
    t613 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t614 i_first = t620 i_opts = t636 ).
    APPEND t613 TO t612->items.
    DATA(t645) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t646 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t646.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t647.
    DATA t648 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t648.
    DATA t649 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t649.
    DATA t650 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t650.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t650 = zcl_lnt_version_module=>release_b8cd.
    DATA(t651) = |v781|.
    t649 = t650->get( p0 = t651 ).
    t648 = t649.
    IF t648 IS BOUND.
      CREATE OBJECT t647.
      t647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t652 TYPE REF TO object.
      t652 = t648.
      t647->oval = t652.
    ENDIF.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t653.
    DATA t654 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t654.
    DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t657) = |AUTHORIZATION KEY|.
    CREATE OBJECT t656.
    t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t656->sval = t657.
    t655 = t656.
    DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t658.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    DATA(t660) = CAST zif_lnt_statement_runnable( t1 ).
    IF t660 IS BOUND.
      CREATE OBJECT t659.
      t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t661 TYPE REF TO object.
      t661 = t660.
      t659->oval = t661.
    ENDIF.
    t658 = t659.
    DATA t662 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t663 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t663.
    t662 = t663.
    DATA t664 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t665) = CAST zlnt_runtime_dyna_a429568d5be8( t655 ).
    DATA(t666) = CAST zlnt_runtime_dyna_a429568d5be8( t658 ).
    DATA(t667) = CAST zlnt_runtime_arra_c22708faf2e3( t662 ).
    t664 = zcl_lnt_st_combi_module=>seq( i_first = t665 i_second = t666 i_rest = t667 ).
    t654 = t664.
    IF t654 IS BOUND.
      CREATE OBJECT t653.
      t653->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t668 TYPE REF TO object.
      t668 = t654.
      t653->oval = t668.
    ENDIF.
    DATA t669 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t669.
    DATA(t670) = abap_true.
    IF t670 = abap_true.
      DATA t671 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t671.
      DATA t672 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t672.
      DATA(t673) = abap_true.
      IF t673 = abap_true.
        DATA(t674) = |OpenABAP|.
        DATA(t675) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t675->has = abap_true.
        t675->value = t674.
        t672 = t675.
      ELSE.
        DATA t676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t676.
        t672 = t676.
      ENDIF.
      t671 = NEW zcl_lnt_iver_options( i_also = t672 ).
      t669 = t671.
    ELSE.
      DATA t677 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t677.
      t669 = t677.
    ENDIF.
    t646 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t647 i_first = t653 i_opts = t669 ).
    APPEND t646 TO t645->items.
    DATA(t678) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t679 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t679.
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t680.
    DATA t681 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t681.
    DATA t682 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t682.
    DATA t683 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t683.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t683 = zcl_lnt_version_module=>release_b8cd.
    DATA(t684) = |v776|.
    t682 = t683->get( p0 = t684 ).
    t681 = t682.
    IF t681 IS BOUND.
      CREATE OBJECT t680.
      t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t685 TYPE REF TO object.
      t685 = t681.
      t680->oval = t685.
    ENDIF.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t686.
    DATA t687 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t687.
    DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t690) = |FEATURES RESULT|.
    CREATE OBJECT t689.
    t689->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t689->sval = t690.
    t688 = t689.
    DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t691.
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t692.
    DATA(t693) = CAST zif_lnt_statement_runnable( t1 ).
    IF t693 IS BOUND.
      CREATE OBJECT t692.
      t692->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t694 TYPE REF TO object.
      t694 = t693.
      t692->oval = t694.
    ENDIF.
    t691 = t692.
    DATA t695 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t696 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t696.
    t695 = t696.
    DATA t697 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t698) = CAST zlnt_runtime_dyna_a429568d5be8( t688 ).
    DATA(t699) = CAST zlnt_runtime_dyna_a429568d5be8( t691 ).
    DATA(t700) = CAST zlnt_runtime_arra_c22708faf2e3( t695 ).
    t697 = zcl_lnt_st_combi_module=>seq( i_first = t698 i_second = t699 i_rest = t700 ).
    t687 = t697.
    IF t687 IS BOUND.
      CREATE OBJECT t686.
      t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t701 TYPE REF TO object.
      t701 = t687.
      t686->oval = t701.
    ENDIF.
    DATA t702 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t702.
    DATA(t703) = abap_true.
    IF t703 = abap_true.
      DATA t704 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t704.
      DATA t705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t705.
      DATA(t706) = abap_true.
      IF t706 = abap_true.
        DATA(t707) = |OpenABAP|.
        DATA(t708) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t708->has = abap_true.
        t708->value = t707.
        t705 = t708.
      ELSE.
        DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t709.
        t705 = t709.
      ENDIF.
      t704 = NEW zcl_lnt_iver_options( i_also = t705 ).
      t702 = t704.
    ELSE.
      DATA t710 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t710.
      t702 = t710.
    ENDIF.
    t679 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t680 i_first = t686 i_opts = t702 ).
    APPEND t679 TO t678->items.
    DATA(t711) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t712 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t712.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    DATA t714 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t714.
    DATA t715 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t715.
    DATA t716 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t716.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t716 = zcl_lnt_version_module=>release_b8cd.
    DATA(t717) = |v776|.
    t715 = t716->get( p0 = t717 ).
    t714 = t715.
    IF t714 IS BOUND.
      CREATE OBJECT t713.
      t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t718 TYPE REF TO object.
      t718 = t714.
      t713->oval = t718.
    ENDIF.
    DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t719.
    DATA t720 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t720.
    DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t723) = |FEATURES KEY|.
    CREATE OBJECT t722.
    t722->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t722->sval = t723.
    t721 = t722.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t724.
    DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t725.
    DATA(t726) = CAST zif_lnt_statement_runnable( t1 ).
    IF t726 IS BOUND.
      CREATE OBJECT t725.
      t725->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t727 TYPE REF TO object.
      t727 = t726.
      t725->oval = t727.
    ENDIF.
    t724 = t725.
    DATA t728 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t729 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t729.
    t728 = t729.
    DATA t730 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t731) = CAST zlnt_runtime_dyna_a429568d5be8( t721 ).
    DATA(t732) = CAST zlnt_runtime_dyna_a429568d5be8( t724 ).
    DATA(t733) = CAST zlnt_runtime_arra_c22708faf2e3( t728 ).
    t730 = zcl_lnt_st_combi_module=>seq( i_first = t731 i_second = t732 i_rest = t733 ).
    t720 = t730.
    IF t720 IS BOUND.
      CREATE OBJECT t719.
      t719->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t734 TYPE REF TO object.
      t734 = t720.
      t719->oval = t734.
    ENDIF.
    DATA t735 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t735.
    DATA(t736) = abap_true.
    IF t736 = abap_true.
      DATA t737 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t737.
      DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t738.
      DATA(t739) = abap_true.
      IF t739 = abap_true.
        DATA(t740) = |OpenABAP|.
        DATA(t741) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t741->has = abap_true.
        t741->value = t740.
        t738 = t741.
      ELSE.
        DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t742.
        t738 = t742.
      ENDIF.
      t737 = NEW zcl_lnt_iver_options( i_also = t738 ).
      t735 = t737.
    ELSE.
      DATA t743 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t743.
      t735 = t743.
    ENDIF.
    t712 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t713 i_first = t719 i_opts = t735 ).
    APPEND t712 TO t711->items.
    DATA(t744) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t745 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t745.
    DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t746.
    DATA t747 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t747.
    DATA t748 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t748.
    DATA t749 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t749.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t749 = zcl_lnt_version_module=>release_b8cd.
    DATA(t750) = |v780|.
    t748 = t749->get( p0 = t750 ).
    t747 = t748.
    IF t747 IS BOUND.
      CREATE OBJECT t746.
      t746->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t751 TYPE REF TO object.
      t751 = t747.
      t746->oval = t751.
    ENDIF.
    DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t752.
    DATA t753 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t753.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t756) = |PERMISSIONS KEY|.
    CREATE OBJECT t755.
    t755->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t755->sval = t756.
    t754 = t755.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t758.
    DATA(t759) = CAST zif_lnt_statement_runnable( t1 ).
    IF t759 IS BOUND.
      CREATE OBJECT t758.
      t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t760 TYPE REF TO object.
      t760 = t759.
      t758->oval = t760.
    ENDIF.
    t757 = t758.
    DATA t761 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t762 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t762.
    t761 = t762.
    DATA t763 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t764) = CAST zlnt_runtime_dyna_a429568d5be8( t754 ).
    DATA(t765) = CAST zlnt_runtime_dyna_a429568d5be8( t757 ).
    DATA(t766) = CAST zlnt_runtime_arra_c22708faf2e3( t761 ).
    t763 = zcl_lnt_st_combi_module=>seq( i_first = t764 i_second = t765 i_rest = t766 ).
    t753 = t763.
    IF t753 IS BOUND.
      CREATE OBJECT t752.
      t752->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t767 TYPE REF TO object.
      t767 = t753.
      t752->oval = t767.
    ENDIF.
    DATA t768 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t768.
    DATA(t769) = abap_true.
    IF t769 = abap_true.
      DATA t770 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t770.
      DATA t771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t771.
      DATA(t772) = abap_true.
      IF t772 = abap_true.
        DATA(t773) = |OpenABAP|.
        DATA(t774) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t774->has = abap_true.
        t774->value = t773.
        t771 = t774.
      ELSE.
        DATA t775 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t775.
        t771 = t775.
      ENDIF.
      t770 = NEW zcl_lnt_iver_options( i_also = t771 ).
      t768 = t770.
    ELSE.
      DATA t776 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t776.
      t768 = t776.
    ENDIF.
    t745 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t746 i_first = t752 i_opts = t768 ).
    APPEND t745 TO t744->items.
    DATA(t777) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t778 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t778.
    DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t781) = |READ IMPORT|.
    CREATE OBJECT t780.
    t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t780->sval = t781.
    t779 = t780.
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t782.
    DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t783.
    DATA(t784) = CAST zif_lnt_statement_runnable( t1 ).
    IF t784 IS BOUND.
      CREATE OBJECT t783.
      t783->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t785 TYPE REF TO object.
      t785 = t784.
      t783->oval = t785.
    ENDIF.
    t782 = t783.
    DATA t786 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t787 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t787.
    t786 = t787.
    DATA t788 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t789) = CAST zlnt_runtime_dyna_a429568d5be8( t779 ).
    DATA(t790) = CAST zlnt_runtime_dyna_a429568d5be8( t782 ).
    DATA(t791) = CAST zlnt_runtime_arra_c22708faf2e3( t786 ).
    t788 = zcl_lnt_st_combi_module=>seq( i_first = t789 i_second = t790 i_rest = t791 ).
    t778 = t788.
    APPEND t778 TO t777->items.
    DATA(t792) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t793 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t793.
    DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t796) = |READ RESULT|.
    CREATE OBJECT t795.
    t795->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t795->sval = t796.
    t794 = t795.
    DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t797.
    DATA t798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t798.
    DATA(t799) = CAST zif_lnt_statement_runnable( t1 ).
    IF t799 IS BOUND.
      CREATE OBJECT t798.
      t798->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t800 TYPE REF TO object.
      t800 = t799.
      t798->oval = t800.
    ENDIF.
    t797 = t798.
    DATA t801 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t802 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t802.
    t801 = t802.
    DATA t803 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t804) = CAST zlnt_runtime_dyna_a429568d5be8( t794 ).
    DATA(t805) = CAST zlnt_runtime_dyna_a429568d5be8( t797 ).
    DATA(t806) = CAST zlnt_runtime_arra_c22708faf2e3( t801 ).
    t803 = zcl_lnt_st_combi_module=>seq( i_first = t804 i_second = t805 i_rest = t806 ).
    t793 = t803.
    APPEND t793 TO t792->items.
    DATA(t807) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t808 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t808.
    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t809.
    DATA t810 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t810.
    DATA t811 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t811.
    DATA t812 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t812.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t812 = zcl_lnt_version_module=>release_b8cd.
    DATA(t813) = |v915|.
    t811 = t812->get( p0 = t813 ).
    t810 = t811.
    IF t810 IS BOUND.
      CREATE OBJECT t809.
      t809->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t814 TYPE REF TO object.
      t814 = t810.
      t809->oval = t814.
    ENDIF.
    DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t815.
    DATA t816 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t816.
    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t819) = |READ CHANGES|.
    CREATE OBJECT t818.
    t818->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t818->sval = t819.
    t817 = t818.
    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t820.
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t821.
    DATA(t822) = CAST zif_lnt_statement_runnable( t1 ).
    IF t822 IS BOUND.
      CREATE OBJECT t821.
      t821->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t823 TYPE REF TO object.
      t823 = t822.
      t821->oval = t823.
    ENDIF.
    t820 = t821.
    DATA t824 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t825 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t825.
    t824 = t825.
    DATA t826 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t827) = CAST zlnt_runtime_dyna_a429568d5be8( t817 ).
    DATA(t828) = CAST zlnt_runtime_dyna_a429568d5be8( t820 ).
    DATA(t829) = CAST zlnt_runtime_arra_c22708faf2e3( t824 ).
    t826 = zcl_lnt_st_combi_module=>seq( i_first = t827 i_second = t828 i_rest = t829 ).
    t816 = t826.
    IF t816 IS BOUND.
      CREATE OBJECT t815.
      t815->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t830 TYPE REF TO object.
      t830 = t816.
      t815->oval = t830.
    ENDIF.
    DATA t831 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t831.
    DATA(t832) = abap_true.
    IF t832 = abap_true.
      DATA t833 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t833.
      DATA t834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t834.
      DATA(t835) = abap_true.
      IF t835 = abap_true.
        DATA(t836) = |OpenABAP|.
        DATA(t837) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t837->has = abap_true.
        t837->value = t836.
        t834 = t837.
      ELSE.
        DATA t838 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t838.
        t834 = t838.
      ENDIF.
      t833 = NEW zcl_lnt_iver_options( i_also = t834 ).
      t831 = t833.
    ELSE.
      DATA t839 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t839.
      t831 = t839.
    ENDIF.
    t808 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t809 i_first = t815 i_opts = t831 ).
    APPEND t808 TO t807->items.
    DATA(t840) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t841 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t841.
    DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t844) = |CREATE|.
    CREATE OBJECT t843.
    t843->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t843->sval = t844.
    t842 = t843.
    DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t845.
    DATA t846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t846.
    DATA(t847) = CAST zif_lnt_statement_runnable( t1 ).
    IF t847 IS BOUND.
      CREATE OBJECT t846.
      t846->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t848 TYPE REF TO object.
      t848 = t847.
      t846->oval = t848.
    ENDIF.
    t845 = t846.
    DATA t849 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t850 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t850.
    t849 = t850.
    DATA t851 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t852) = CAST zlnt_runtime_dyna_a429568d5be8( t842 ).
    DATA(t853) = CAST zlnt_runtime_dyna_a429568d5be8( t845 ).
    DATA(t854) = CAST zlnt_runtime_arra_c22708faf2e3( t849 ).
    t851 = zcl_lnt_st_combi_module=>seq( i_first = t852 i_second = t853 i_rest = t854 ).
    t841 = t851.
    APPEND t841 TO t840->items.
    DATA(t855) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t856 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t856.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t859) = |DELETE|.
    CREATE OBJECT t858.
    t858->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t858->sval = t859.
    t857 = t858.
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t860.
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t861.
    DATA(t862) = CAST zif_lnt_statement_runnable( t1 ).
    IF t862 IS BOUND.
      CREATE OBJECT t861.
      t861->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t863 TYPE REF TO object.
      t863 = t862.
      t861->oval = t863.
    ENDIF.
    t860 = t861.
    DATA t864 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t865 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t865.
    t864 = t865.
    DATA t866 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t867) = CAST zlnt_runtime_dyna_a429568d5be8( t857 ).
    DATA(t868) = CAST zlnt_runtime_dyna_a429568d5be8( t860 ).
    DATA(t869) = CAST zlnt_runtime_arra_c22708faf2e3( t864 ).
    t866 = zcl_lnt_st_combi_module=>seq( i_first = t867 i_second = t868 i_rest = t869 ).
    t856 = t866.
    APPEND t856 TO t855->items.
    DATA(t870) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t871 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t871.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t874) = |UPDATE|.
    CREATE OBJECT t873.
    t873->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t873->sval = t874.
    t872 = t873.
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t875.
    DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t876.
    DATA(t877) = CAST zif_lnt_statement_runnable( t1 ).
    IF t877 IS BOUND.
      CREATE OBJECT t876.
      t876->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t878 TYPE REF TO object.
      t878 = t877.
      t876->oval = t878.
    ENDIF.
    t875 = t876.
    DATA t879 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t880 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t880.
    t879 = t880.
    DATA t881 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t882) = CAST zlnt_runtime_dyna_a429568d5be8( t872 ).
    DATA(t883) = CAST zlnt_runtime_dyna_a429568d5be8( t875 ).
    DATA(t884) = CAST zlnt_runtime_arra_c22708faf2e3( t879 ).
    t881 = zcl_lnt_st_combi_module=>seq( i_first = t882 i_second = t883 i_rest = t884 ).
    t871 = t881.
    APPEND t871 TO t870->items.
    DATA(t885) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t886 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t886.
    DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t887.
    DATA t888 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t888.
    DATA t889 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t889.
    DATA t890 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t890.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t890 = zcl_lnt_version_module=>release_b8cd.
    DATA(t891) = |v777|.
    t889 = t890->get( p0 = t891 ).
    t888 = t889.
    IF t888 IS BOUND.
      CREATE OBJECT t887.
      t887->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t892 TYPE REF TO object.
      t892 = t888.
      t887->oval = t892.
    ENDIF.
    DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t893.
    DATA t894 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t894.
    DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t897) = |LOCK|.
    CREATE OBJECT t896.
    t896->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t896->sval = t897.
    t895 = t896.
    DATA t898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t898.
    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t899.
    DATA(t900) = CAST zif_lnt_statement_runnable( t1 ).
    IF t900 IS BOUND.
      CREATE OBJECT t899.
      t899->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t901 TYPE REF TO object.
      t901 = t900.
      t899->oval = t901.
    ENDIF.
    t898 = t899.
    DATA t902 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t903 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t903.
    t902 = t903.
    DATA t904 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t905) = CAST zlnt_runtime_dyna_a429568d5be8( t895 ).
    DATA(t906) = CAST zlnt_runtime_dyna_a429568d5be8( t898 ).
    DATA(t907) = CAST zlnt_runtime_arra_c22708faf2e3( t902 ).
    t904 = zcl_lnt_st_combi_module=>seq( i_first = t905 i_second = t906 i_rest = t907 ).
    t894 = t904.
    IF t894 IS BOUND.
      CREATE OBJECT t893.
      t893->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t908 TYPE REF TO object.
      t908 = t894.
      t893->oval = t908.
    ENDIF.
    DATA t909 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t909.
    DATA(t910) = abap_true.
    IF t910 = abap_true.
      DATA t911 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t911.
      DATA t912 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t912.
      DATA(t913) = abap_true.
      IF t913 = abap_true.
        DATA(t914) = |OpenABAP|.
        DATA(t915) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t915->has = abap_true.
        t915->value = t914.
        t912 = t915.
      ELSE.
        DATA t916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t916.
        t912 = t916.
      ENDIF.
      t911 = NEW zcl_lnt_iver_options( i_also = t912 ).
      t909 = t911.
    ELSE.
      DATA t917 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t917.
      t909 = t917.
    ENDIF.
    t886 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t887 i_first = t893 i_opts = t909 ).
    APPEND t886 TO t885->items.
    DATA(t918) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t919 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t919.
    DATA t920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t920.
    DATA t921 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t921.
    DATA t922 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t922.
    DATA t923 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t923.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t923 = zcl_lnt_version_module=>release_b8cd.
    DATA(t924) = |v775|.
    t922 = t923->get( p0 = t924 ).
    t921 = t922.
    IF t921 IS BOUND.
      CREATE OBJECT t920.
      t920->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t925 TYPE REF TO object.
      t925 = t921.
      t920->oval = t925.
    ENDIF.
    DATA t926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t926.
    DATA t927 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t927.
    DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t930) = |KEY OF|.
    CREATE OBJECT t929.
    t929->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t929->sval = t930.
    t928 = t929.
    DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t931.
    DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t932.
    DATA(t933) = CAST zif_lnt_statement_runnable( t1 ).
    IF t933 IS BOUND.
      CREATE OBJECT t932.
      t932->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t934 TYPE REF TO object.
      t934 = t933.
      t932->oval = t934.
    ENDIF.
    t931 = t932.
    DATA t935 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t936 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t936.
    t935 = t936.
    DATA t937 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t938) = CAST zlnt_runtime_dyna_a429568d5be8( t928 ).
    DATA(t939) = CAST zlnt_runtime_dyna_a429568d5be8( t931 ).
    DATA(t940) = CAST zlnt_runtime_arra_c22708faf2e3( t935 ).
    t937 = zcl_lnt_st_combi_module=>seq( i_first = t938 i_second = t939 i_rest = t940 ).
    t927 = t937.
    IF t927 IS BOUND.
      CREATE OBJECT t926.
      t926->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t941 TYPE REF TO object.
      t941 = t927.
      t926->oval = t941.
    ENDIF.
    DATA t942 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t942.
    DATA(t943) = abap_true.
    IF t943 = abap_true.
      DATA t944 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t944.
      DATA t945 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t945.
      DATA(t946) = abap_true.
      IF t946 = abap_true.
        DATA(t947) = |OpenABAP|.
        DATA(t948) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t948->has = abap_true.
        t948->value = t947.
        t945 = t948.
      ELSE.
        DATA t949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t949.
        t945 = t949.
      ENDIF.
      t944 = NEW zcl_lnt_iver_options( i_also = t945 ).
      t942 = t944.
    ELSE.
      DATA t950 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t950.
      t942 = t950.
    ENDIF.
    t919 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t920 i_first = t926 i_opts = t942 ).
    APPEND t919 TO t918->items.
    DATA(t951) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t952 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t952.
    DATA t953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t953.
    DATA t954 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t954.
    DATA t955 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t955.
    DATA t956 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t956.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t956 = zcl_lnt_version_module=>release_b8cd.
    DATA(t957) = |v776|.
    t955 = t956->get( p0 = t957 ).
    t954 = t955.
    IF t954 IS BOUND.
      CREATE OBJECT t953.
      t953->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t958 TYPE REF TO object.
      t958 = t954.
      t953->oval = t958.
    ENDIF.
    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t959.
    DATA t960 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t960.
    DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t963) = |DETERMINATION|.
    CREATE OBJECT t962.
    t962->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t962->sval = t963.
    t961 = t962.
    DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t964.
    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t965.
    DATA(t966) = CAST zif_lnt_statement_runnable( t1 ).
    IF t966 IS BOUND.
      CREATE OBJECT t965.
      t965->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t967 TYPE REF TO object.
      t967 = t966.
      t965->oval = t967.
    ENDIF.
    t964 = t965.
    DATA t968 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t969 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t969.
    t968 = t969.
    DATA t970 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t971) = CAST zlnt_runtime_dyna_a429568d5be8( t961 ).
    DATA(t972) = CAST zlnt_runtime_dyna_a429568d5be8( t964 ).
    DATA(t973) = CAST zlnt_runtime_arra_c22708faf2e3( t968 ).
    t970 = zcl_lnt_st_combi_module=>seq( i_first = t971 i_second = t972 i_rest = t973 ).
    t960 = t970.
    IF t960 IS BOUND.
      CREATE OBJECT t959.
      t959->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t974 TYPE REF TO object.
      t974 = t960.
      t959->oval = t974.
    ENDIF.
    DATA t975 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t975.
    DATA(t976) = abap_true.
    IF t976 = abap_true.
      DATA t977 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t977.
      DATA t978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t978.
      DATA(t979) = abap_true.
      IF t979 = abap_true.
        DATA(t980) = |OpenABAP|.
        DATA(t981) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t981->has = abap_true.
        t981->value = t980.
        t978 = t981.
      ELSE.
        DATA t982 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t982.
        t978 = t982.
      ENDIF.
      t977 = NEW zcl_lnt_iver_options( i_also = t978 ).
      t975 = t977.
    ELSE.
      DATA t983 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t983.
      t975 = t983.
    ENDIF.
    t952 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t953 i_first = t959 i_opts = t975 ).
    APPEND t952 TO t951->items.
    DATA(t984) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t985 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t985.
    DATA t986 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t986.
    DATA t987 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t987.
    DATA t988 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t988.
    DATA t989 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t989.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t989 = zcl_lnt_version_module=>release_b8cd.
    DATA(t990) = |v776|.
    t988 = t989->get( p0 = t990 ).
    t987 = t988.
    IF t987 IS BOUND.
      CREATE OBJECT t986.
      t986->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t991 TYPE REF TO object.
      t991 = t987.
      t986->oval = t991.
    ENDIF.
    DATA t992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t992.
    DATA t993 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t993.
    DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t996) = |VALIDATION|.
    CREATE OBJECT t995.
    t995->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t995->sval = t996.
    t994 = t995.
    DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t997.
    DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t998.
    DATA(t999) = CAST zif_lnt_statement_runnable( t1 ).
    IF t999 IS BOUND.
      CREATE OBJECT t998.
      t998->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1000 TYPE REF TO object.
      t1000 = t999.
      t998->oval = t1000.
    ENDIF.
    t997 = t998.
    DATA t1001 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1002 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1002.
    t1001 = t1002.
    DATA t1003 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1004) = CAST zlnt_runtime_dyna_a429568d5be8( t994 ).
    DATA(t1005) = CAST zlnt_runtime_dyna_a429568d5be8( t997 ).
    DATA(t1006) = CAST zlnt_runtime_arra_c22708faf2e3( t1001 ).
    t1003 = zcl_lnt_st_combi_module=>seq( i_first = t1004 i_second = t1005 i_rest = t1006 ).
    t993 = t1003.
    IF t993 IS BOUND.
      CREATE OBJECT t992.
      t992->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1007 TYPE REF TO object.
      t1007 = t993.
      t992->oval = t1007.
    ENDIF.
    DATA t1008 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t1008.
    DATA(t1009) = abap_true.
    IF t1009 = abap_true.
      DATA t1010 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1010.
      DATA t1011 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1011.
      DATA(t1012) = abap_true.
      IF t1012 = abap_true.
        DATA(t1013) = |OpenABAP|.
        DATA(t1014) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1014->has = abap_true.
        t1014->value = t1013.
        t1011 = t1014.
      ELSE.
        DATA t1015 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1015.
        t1011 = t1015.
      ENDIF.
      t1010 = NEW zcl_lnt_iver_options( i_also = t1011 ).
      t1008 = t1010.
    ELSE.
      DATA t1016 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1016.
      t1008 = t1016.
    ENDIF.
    t985 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t986 i_first = t992 i_opts = t1008 ).
    APPEND t985 TO t984->items.
    DATA(t1017) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t1018 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1018.
    DATA t1019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1019.
    DATA t1020 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1020.
    DATA t1021 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1021.
    DATA t1022 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1022.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1022 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1023) = |v778|.
    t1021 = t1022->get( p0 = t1023 ).
    t1020 = t1021.
    IF t1020 IS BOUND.
      CREATE OBJECT t1019.
      t1019->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1024 TYPE REF TO object.
      t1024 = t1020.
      t1019->oval = t1024.
    ENDIF.
    DATA t1025 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1025.
    DATA t1026 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1026.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1029) = |CHANGE|.
    CREATE OBJECT t1028.
    t1028->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1028->sval = t1029.
    t1027 = t1028.
    DATA t1030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1030.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1031.
    DATA(t1032) = CAST zif_lnt_statement_runnable( t1 ).
    IF t1032 IS BOUND.
      CREATE OBJECT t1031.
      t1031->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1033 TYPE REF TO object.
      t1033 = t1032.
      t1031->oval = t1033.
    ENDIF.
    t1030 = t1031.
    DATA t1034 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1035 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1035.
    t1034 = t1035.
    DATA t1036 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1037) = CAST zlnt_runtime_dyna_a429568d5be8( t1027 ).
    DATA(t1038) = CAST zlnt_runtime_dyna_a429568d5be8( t1030 ).
    DATA(t1039) = CAST zlnt_runtime_arra_c22708faf2e3( t1034 ).
    t1036 = zcl_lnt_st_combi_module=>seq( i_first = t1037 i_second = t1038 i_rest = t1039 ).
    t1026 = t1036.
    IF t1026 IS BOUND.
      CREATE OBJECT t1025.
      t1025->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1040 TYPE REF TO object.
      t1040 = t1026.
      t1025->oval = t1040.
    ENDIF.
    DATA t1041 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t1041.
    DATA(t1042) = abap_true.
    IF t1042 = abap_true.
      DATA t1043 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1043.
      DATA t1044 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1044.
      DATA(t1045) = abap_true.
      IF t1045 = abap_true.
        DATA(t1046) = |OpenABAP|.
        DATA(t1047) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1047->has = abap_true.
        t1047->value = t1046.
        t1044 = t1047.
      ELSE.
        DATA t1048 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1048.
        t1044 = t1048.
      ENDIF.
      t1043 = NEW zcl_lnt_iver_options( i_also = t1044 ).
      t1041 = t1043.
    ELSE.
      DATA t1049 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1049.
      t1041 = t1049.
    ENDIF.
    t1018 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1019 i_first = t1025 i_opts = t1041 ).
    APPEND t1018 TO t1017->items.
    DATA(t1050) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    t15 = t1050.
    result = t15.

  ENDMETHOD.

  METHOD derived_types_alt.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_extra ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t7 = t8->concat( p0 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_derived_types_module=>common_derived_types( ) ).
    t11 = t12->concat( p0 = t13 ).
    t10 = t11.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t3 = t14.
    t2 = t3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    READ TABLE t19->items INDEX 1 INTO t20.
    t18 ?= t20.
    t17 = t18.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    READ TABLE t23->items INDEX 2 INTO t24.
    t22 ?= t24.
    t21 = t22.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    DATA(t28) = 2.
    t26 = t27->slice1( p0 = t28 ).
    t25 = t26.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = CAST zif_lnt_statement_runnable( t17 ).
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t32.
      t31->oval = t33.
    ENDIF.
    t30 = t31.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zif_lnt_statement_runnable( t21 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t36.
      t35->oval = t37.
    ENDIF.
    t34 = t35.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    t38 = t39.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    LOOP AT t40->items INTO t42.
      t41 ?= t42.
      DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t38 ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      DATA(t45) = CAST zif_lnt_statement_runnable( t41 ).
      IF t45 IS BOUND.
        CREATE OBJECT t44.
        t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t46 TYPE REF TO object.
        t46 = t45.
        t44->oval = t46.
      ENDIF.
      APPEND t44 TO t43->items.
    ENDLOOP.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t30 ).
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t38 ).
    t47 = zcl_lnt_st_combi_module=>alt_prio( i_first = t48 i_second = t49 i_rest = t50 ).
    t29 = t47.
    result = t29.

  ENDMETHOD.

  METHOD zlnt_builtin_init_7b8174c20e26.
    IF zlnt_builtin_init_97883fd3a7a5 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_97883fd3a7a5 = abap_true.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1829_3901961715c4.
  ENDMETHOD.
ENDCLASS.
