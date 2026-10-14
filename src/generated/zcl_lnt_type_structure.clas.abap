* TS: src/abap/2_statements/expressions/type_structure.ts:7:1 TypeStructure
CLASS zcl_lnt_type_structure DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_structure IMPLEMENTATION.
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
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t24.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd.
    DATA(t25) = |v779|.
    t23 = t24->get( p0 = t25 ).
    t22 = t23.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t26 TYPE REF TO object.
      t26 = t22.
      t21->oval = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = |FUNCTION REQUEST|.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = CAST zif_lnt_statement_runnable( t1 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t34.
      t33->oval = t35.
    ENDIF.
    t32 = t33.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t40 i_rest = t41 ).
    t28 = t38.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t42 TYPE REF TO object.
      t42 = t28.
      t27->oval = t42.
    ENDIF.
    DATA t43 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t43.
    DATA(t44) = abap_true.
    IF t44 = abap_true.
      DATA t45 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = |OpenABAP|.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      t45 = NEW zcl_lnt_iver_options( i_also = t46 ).
      t43 = t45.
    ELSE.
      DATA t51 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t51.
      t43 = t51.
    ENDIF.
    t20 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t21 i_first = t27 i_opts = t43 ).
    APPEND t20 TO t19->items.
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t55.
    DATA t56 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t57.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t57 = zcl_lnt_version_module=>release_b8cd.
    DATA(t58) = |v779|.
    t56 = t57->get( p0 = t58 ).
    t55 = t56.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t55.
      t54->oval = t59.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = |ACTION REQUEST|.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = CAST zif_lnt_statement_runnable( t1 ).
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t67.
      t66->oval = t68.
    ENDIF.
    t65 = t66.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t61 = t71.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t75 TYPE REF TO object.
      t75 = t61.
      t60->oval = t75.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t76.
    DATA(t77) = abap_true.
    IF t77 = abap_true.
      DATA t78 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      DATA(t80) = abap_true.
      IF t80 = abap_true.
        DATA(t81) = |OpenABAP|.
        DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t82->has = abap_true.
        t82->value = t81.
        t79 = t82.
      ELSE.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t79 = t83.
      ENDIF.
      t78 = NEW zcl_lnt_iver_options( i_also = t79 ).
      t76 = t78.
    ELSE.
      DATA t84 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t84.
      t76 = t84.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t54 i_first = t60 i_opts = t76 ).
    APPEND t53 TO t52->items.
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |ACTION IMPORT|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t93 = t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t90 ).
    DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t97 i_rest = t98 ).
    t86 = t95.
    APPEND t86 TO t85->items.
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t104.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t104 = zcl_lnt_version_module=>release_b8cd.
    DATA(t105) = |v781|.
    t103 = t104->get( p0 = t105 ).
    t102 = t103.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t106 TYPE REF TO object.
      t106 = t102.
      t101->oval = t106.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = |GLOBAL AUTHORIZATION REQUEST|.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = CAST zif_lnt_statement_runnable( t1 ).
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
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t119) = CAST zlnt_runtime_dyna_a429568d5be8( t109 ).
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t116 ).
    t118 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t120 i_rest = t121 ).
    t108 = t118.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t122 TYPE REF TO object.
      t122 = t108.
      t107->oval = t122.
    ENDIF.
    DATA t123 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t123.
    DATA(t124) = abap_true.
    IF t124 = abap_true.
      DATA t125 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t125.
      DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t126.
      DATA(t127) = abap_true.
      IF t127 = abap_true.
        DATA(t128) = |OpenABAP|.
        DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t129->has = abap_true.
        t129->value = t128.
        t126 = t129.
      ELSE.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        t126 = t130.
      ENDIF.
      t125 = NEW zcl_lnt_iver_options( i_also = t126 ).
      t123 = t125.
    ELSE.
      DATA t131 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t131.
      t123 = t131.
    ENDIF.
    t100 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t101 i_first = t107 i_opts = t123 ).
    APPEND t100 TO t99->items.
    DATA(t132) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t135.
    DATA t136 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t137.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t137 = zcl_lnt_version_module=>release_b8cd.
    DATA(t138) = |v781|.
    t136 = t137->get( p0 = t138 ).
    t135 = t136.
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t139 TYPE REF TO object.
      t139 = t135.
      t134->oval = t139.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = |GLOBAL AUTHORIZATION RESULT|.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142 = t143.
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
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t153 i_rest = t154 ).
    t141 = t151.
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t155 TYPE REF TO object.
      t155 = t141.
      t140->oval = t155.
    ENDIF.
    DATA t156 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t156.
    DATA(t157) = abap_true.
    IF t157 = abap_true.
      DATA t158 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t158.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t159.
      DATA(t160) = abap_true.
      IF t160 = abap_true.
        DATA(t161) = |OpenABAP|.
        DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t162->has = abap_true.
        t162->value = t161.
        t159 = t162.
      ELSE.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t163.
        t159 = t163.
      ENDIF.
      t158 = NEW zcl_lnt_iver_options( i_also = t159 ).
      t156 = t158.
    ELSE.
      DATA t164 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t164.
      t156 = t164.
    ENDIF.
    t133 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t134 i_first = t140 i_opts = t156 ).
    APPEND t133 TO t132->items.
    DATA(t165) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
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
    DATA(t171) = |v781|.
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
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = |GLOBAL FEATURES REQUEST|.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    t175 = t176.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = CAST zif_lnt_statement_runnable( t1 ).
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t181 TYPE REF TO object.
      t181 = t180.
      t179->oval = t181.
    ENDIF.
    t178 = t179.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    t182 = t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t185) = CAST zlnt_runtime_dyna_a429568d5be8( t175 ).
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t178 ).
    DATA(t187) = CAST zlnt_runtime_arra_c22708faf2e3( t182 ).
    t184 = zcl_lnt_st_combi_module=>seq( i_first = t185 i_second = t186 i_rest = t187 ).
    t174 = t184.
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t188 TYPE REF TO object.
      t188 = t174.
      t173->oval = t188.
    ENDIF.
    DATA t189 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t189.
    DATA(t190) = abap_true.
    IF t190 = abap_true.
      DATA t191 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      DATA(t193) = abap_true.
      IF t193 = abap_true.
        DATA(t194) = |OpenABAP|.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t194.
        t192 = t195.
      ELSE.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t196.
        t192 = t196.
      ENDIF.
      t191 = NEW zcl_lnt_iver_options( i_also = t192 ).
      t189 = t191.
    ELSE.
      DATA t197 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t197.
      t189 = t197.
    ENDIF.
    t166 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t167 i_first = t173 i_opts = t189 ).
    APPEND t166 TO t165->items.
    DATA(t198) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t201.
    DATA t202 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t203.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t203 = zcl_lnt_version_module=>release_b8cd.
    DATA(t204) = |v781|.
    t202 = t203->get( p0 = t204 ).
    t201 = t202.
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t205 TYPE REF TO object.
      t205 = t201.
      t200->oval = t205.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = |GLOBAL FEATURES RESULT|.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = t210.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = CAST zif_lnt_statement_runnable( t1 ).
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t214 TYPE REF TO object.
      t214 = t213.
      t212->oval = t214.
    ENDIF.
    t211 = t212.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t216.
    t215 = t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t218) = CAST zlnt_runtime_dyna_a429568d5be8( t208 ).
    DATA(t219) = CAST zlnt_runtime_dyna_a429568d5be8( t211 ).
    DATA(t220) = CAST zlnt_runtime_arra_c22708faf2e3( t215 ).
    t217 = zcl_lnt_st_combi_module=>seq( i_first = t218 i_second = t219 i_rest = t220 ).
    t207 = t217.
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t221 TYPE REF TO object.
      t221 = t207.
      t206->oval = t221.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t222.
    DATA(t223) = abap_true.
    IF t223 = abap_true.
      DATA t224 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA(t226) = abap_true.
      IF t226 = abap_true.
        DATA(t227) = |OpenABAP|.
        DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t228->has = abap_true.
        t228->value = t227.
        t225 = t228.
      ELSE.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        t225 = t229.
      ENDIF.
      t224 = NEW zcl_lnt_iver_options( i_also = t225 ).
      t222 = t224.
    ELSE.
      DATA t230 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t230.
      t222 = t230.
    ENDIF.
    t199 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t200 i_first = t206 i_opts = t222 ).
    APPEND t199 TO t198->items.
    DATA(t231) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
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
    DATA(t237) = |v780|.
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
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t243) = |AUTHORIZATION REQUEST|.
    CREATE OBJECT t242.
    t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t242->sval = t243.
    t241 = t242.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = CAST zif_lnt_statement_runnable( t1 ).
    IF t246 IS BOUND.
      CREATE OBJECT t245.
      t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t247 TYPE REF TO object.
      t247 = t246.
      t245->oval = t247.
    ENDIF.
    t244 = t245.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t249.
    t248 = t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t251) = CAST zlnt_runtime_dyna_a429568d5be8( t241 ).
    DATA(t252) = CAST zlnt_runtime_dyna_a429568d5be8( t244 ).
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t248 ).
    t250 = zcl_lnt_st_combi_module=>seq( i_first = t251 i_second = t252 i_rest = t253 ).
    t240 = t250.
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t254 TYPE REF TO object.
      t254 = t240.
      t239->oval = t254.
    ENDIF.
    DATA t255 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t255.
    DATA(t256) = abap_true.
    IF t256 = abap_true.
      DATA t257 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t257.
      DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t258.
      DATA(t259) = abap_true.
      IF t259 = abap_true.
        DATA(t260) = |OpenABAP|.
        DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t261->has = abap_true.
        t261->value = t260.
        t258 = t261.
      ELSE.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        t258 = t262.
      ENDIF.
      t257 = NEW zcl_lnt_iver_options( i_also = t258 ).
      t255 = t257.
    ELSE.
      DATA t263 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t263.
      t255 = t263.
    ENDIF.
    t232 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t233 i_first = t239 i_opts = t255 ).
    APPEND t232 TO t231->items.
    DATA(t264) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t267.
    DATA t268 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t269.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t269 = zcl_lnt_version_module=>release_b8cd.
    DATA(t270) = |v776|.
    t268 = t269->get( p0 = t270 ).
    t267 = t268.
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t271 TYPE REF TO object.
      t271 = t267.
      t266->oval = t271.
    ENDIF.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t276) = |FEATURES REQUEST|.
    CREATE OBJECT t275.
    t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t275->sval = t276.
    t274 = t275.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA(t279) = CAST zif_lnt_statement_runnable( t1 ).
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t280 TYPE REF TO object.
      t280 = t279.
      t278->oval = t280.
    ENDIF.
    t277 = t278.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t282.
    t281 = t282.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t284) = CAST zlnt_runtime_dyna_a429568d5be8( t274 ).
    DATA(t285) = CAST zlnt_runtime_dyna_a429568d5be8( t277 ).
    DATA(t286) = CAST zlnt_runtime_arra_c22708faf2e3( t281 ).
    t283 = zcl_lnt_st_combi_module=>seq( i_first = t284 i_second = t285 i_rest = t286 ).
    t273 = t283.
    IF t273 IS BOUND.
      CREATE OBJECT t272.
      t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t287 TYPE REF TO object.
      t287 = t273.
      t272->oval = t287.
    ENDIF.
    DATA t288 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t288.
    DATA(t289) = abap_true.
    IF t289 = abap_true.
      DATA t290 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t290.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t291.
      DATA(t292) = abap_true.
      IF t292 = abap_true.
        DATA(t293) = |OpenABAP|.
        DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t294->has = abap_true.
        t294->value = t293.
        t291 = t294.
      ELSE.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        t291 = t295.
      ENDIF.
      t290 = NEW zcl_lnt_iver_options( i_also = t291 ).
      t288 = t290.
    ELSE.
      DATA t296 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t296.
      t288 = t296.
    ENDIF.
    t265 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t266 i_first = t272 i_opts = t288 ).
    APPEND t265 TO t264->items.
    DATA(t297) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t301) = |PERMISSIONS REQUEST|.
    CREATE OBJECT t300.
    t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t300->sval = t301.
    t299 = t300.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA(t304) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t304 IS BOUND.
      CREATE OBJECT t303.
      t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t303->cval = t304.
    ENDIF.
    t302 = t303.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t306.
    t305 = t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t308) = CAST zlnt_runtime_dyna_a429568d5be8( t299 ).
    DATA(t309) = CAST zlnt_runtime_dyna_a429568d5be8( t302 ).
    DATA(t310) = CAST zlnt_runtime_arra_c22708faf2e3( t305 ).
    t307 = zcl_lnt_st_combi_module=>seq( i_first = t308 i_second = t309 i_rest = t310 ).
    t298 = t307.
    APPEND t298 TO t297->items.
    DATA(t311) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t312 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA t314 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t314.
    DATA t315 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t316.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t316 = zcl_lnt_version_module=>release_b8cd.
    DATA(t317) = |v780|.
    t315 = t316->get( p0 = t317 ).
    t314 = t315.
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t314.
      t313->oval = t318.
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t323) = |PERMISSIONS RESULT|.
    CREATE OBJECT t322.
    t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t322->sval = t323.
    t321 = t322.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = CAST zif_lnt_statement_runnable( t1 ).
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t327 TYPE REF TO object.
      t327 = t326.
      t325->oval = t327.
    ENDIF.
    t324 = t325.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t329.
    t328 = t329.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t331) = CAST zlnt_runtime_dyna_a429568d5be8( t321 ).
    DATA(t332) = CAST zlnt_runtime_dyna_a429568d5be8( t324 ).
    DATA(t333) = CAST zlnt_runtime_arra_c22708faf2e3( t328 ).
    t330 = zcl_lnt_st_combi_module=>seq( i_first = t331 i_second = t332 i_rest = t333 ).
    t320 = t330.
    IF t320 IS BOUND.
      CREATE OBJECT t319.
      t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t334 TYPE REF TO object.
      t334 = t320.
      t319->oval = t334.
    ENDIF.
    DATA t335 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t335.
    DATA(t336) = abap_true.
    IF t336 = abap_true.
      DATA t337 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t337.
      DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t338.
      DATA(t339) = abap_true.
      IF t339 = abap_true.
        DATA(t340) = |OpenABAP|.
        DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t341->has = abap_true.
        t341->value = t340.
        t338 = t341.
      ELSE.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t342.
        t338 = t342.
      ENDIF.
      t337 = NEW zcl_lnt_iver_options( i_also = t338 ).
      t335 = t337.
    ELSE.
      DATA t343 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t343.
      t335 = t343.
    ENDIF.
    t312 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t313 i_first = t319 i_opts = t335 ).
    APPEND t312 TO t311->items.
    DATA(t344) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t348) = |READ LINK|.
    CREATE OBJECT t347.
    t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t347->sval = t348.
    t346 = t347.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
    IF t351 IS BOUND.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t350->cval = t351.
    ENDIF.
    t349 = t350.
    DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t353.
    t352 = t353.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t355) = CAST zlnt_runtime_dyna_a429568d5be8( t346 ).
    DATA(t356) = CAST zlnt_runtime_dyna_a429568d5be8( t349 ).
    DATA(t357) = CAST zlnt_runtime_arra_c22708faf2e3( t352 ).
    t354 = zcl_lnt_st_combi_module=>seq( i_first = t355 i_second = t356 i_rest = t357 ).
    t345 = t354.
    APPEND t345 TO t344->items.
    DATA(t358) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t362) = |HIERARCHY|.
    CREATE OBJECT t361.
    t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t361->sval = t362.
    t360 = t361.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA(t365) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t365 IS BOUND.
      CREATE OBJECT t364.
      t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t364->cval = t365.
    ENDIF.
    t363 = t364.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t367.
    t366 = t367.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t369) = CAST zlnt_runtime_dyna_a429568d5be8( t360 ).
    DATA(t370) = CAST zlnt_runtime_dyna_a429568d5be8( t363 ).
    DATA(t371) = CAST zlnt_runtime_arra_c22708faf2e3( t366 ).
    t368 = zcl_lnt_st_combi_module=>seq( i_first = t369 i_second = t370 i_rest = t371 ).
    t359 = t368.
    APPEND t359 TO t358->items.
    DATA(t372) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t373 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t376) = |EVENT|.
    CREATE OBJECT t375.
    t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t375->sval = t376.
    t374 = t375.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA(t379) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0 ).
    IF t379 IS BOUND.
      CREATE OBJECT t378.
      t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t378->cval = t379.
    ENDIF.
    t377 = t378.
    DATA t380 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t381.
    t380 = t381.
    DATA t382 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t383) = CAST zlnt_runtime_dyna_a429568d5be8( t374 ).
    DATA(t384) = CAST zlnt_runtime_dyna_a429568d5be8( t377 ).
    DATA(t385) = CAST zlnt_runtime_arra_c22708faf2e3( t380 ).
    t382 = zcl_lnt_st_combi_module=>seq( i_first = t383 i_second = t384 i_rest = t385 ).
    t373 = t382.
    APPEND t373 TO t372->items.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t387) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t386 = zcl_lnt_derived_types_module=>derived_types_alt( i_extra = t387 ).
    t16 = t386.
    t15 = t16.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA t391 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t391.
    DATA t392 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t392.
    DATA t393 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t393.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t393 = zcl_lnt_version_module=>release_b8cd.
    DATA(t394) = |v774|.
    t392 = t393->get( p0 = t394 ).
    t391 = t392.
    IF t391 IS BOUND.
      CREATE OBJECT t390.
      t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t395 TYPE REF TO object.
      t395 = t391.
      t390->oval = t395.
    ENDIF.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t400) = |STRUCTURE FOR|.
    CREATE OBJECT t399.
    t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t399->sval = t400.
    t398 = t399.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t401.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = CAST zif_lnt_statement_runnable( t15 ).
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t404 TYPE REF TO object.
      t404 = t403.
      t402->oval = t404.
    ENDIF.
    t401 = t402.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t406.
    t405 = t406.
    DATA t407 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t408) = CAST zlnt_runtime_dyna_a429568d5be8( t398 ).
    DATA(t409) = CAST zlnt_runtime_dyna_a429568d5be8( t401 ).
    DATA(t410) = CAST zlnt_runtime_arra_c22708faf2e3( t405 ).
    t407 = zcl_lnt_st_combi_module=>seq( i_first = t408 i_second = t409 i_rest = t410 ).
    t397 = t407.
    IF t397 IS BOUND.
      CREATE OBJECT t396.
      t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t411 TYPE REF TO object.
      t411 = t397.
      t396->oval = t411.
    ENDIF.
    DATA t412 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t412.
    DATA(t413) = abap_true.
    IF t413 = abap_true.
      DATA t414 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t414.
      DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t415.
      DATA(t416) = abap_true.
      IF t416 = abap_true.
        DATA(t417) = |OpenABAP|.
        DATA(t418) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t418->has = abap_true.
        t418->value = t417.
        t415 = t418.
      ELSE.
        DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t419.
        t415 = t419.
      ENDIF.
      t414 = NEW zcl_lnt_iver_options( i_also = t415 ).
      t412 = t414.
    ELSE.
      DATA t420 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t420.
      t412 = t420.
    ENDIF.
    t389 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t390 i_first = t396 i_opts = t412 ).
    t388 = t389.
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t421.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t424.
    DATA t425 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t426.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t426 = zcl_lnt_version_module=>release_b8cd.
    DATA(t427) = |v776|.
    t425 = t426->get( p0 = t427 ).
    t424 = t425.
    IF t424 IS BOUND.
      CREATE OBJECT t423.
      t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t428 TYPE REF TO object.
      t428 = t424.
      t423->oval = t428.
    ENDIF.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t433) = |RESPONSE FOR|.
    CREATE OBJECT t432.
    t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t432->sval = t433.
    t431 = t432.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA t436 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t436.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t439.
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t442) = |FAILED EARLY|.
    CREATE OBJECT t441.
    t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t441->sval = t442.
    t440 = t441.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA(t445) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t445 IS BOUND.
      CREATE OBJECT t444.
      t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t444->cval = t445.
    ENDIF.
    t443 = t444.
    DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t447.
    t446 = t447.
    DATA t448 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t449) = CAST zlnt_runtime_dyna_a429568d5be8( t440 ).
    DATA(t450) = CAST zlnt_runtime_dyna_a429568d5be8( t443 ).
    DATA(t451) = CAST zlnt_runtime_arra_c22708faf2e3( t446 ).
    t448 = zcl_lnt_st_combi_module=>seq( i_first = t449 i_second = t450 i_rest = t451 ).
    t439 = t448.
    IF t439 IS BOUND.
      CREATE OBJECT t438.
      t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t452 TYPE REF TO object.
      t452 = t439.
      t438->oval = t452.
    ENDIF.
    t437 = t438.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA t455 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t455.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t458) = |FAILED LATE|.
    CREATE OBJECT t457.
    t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t457->sval = t458.
    t456 = t457.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA(t461) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t461 IS BOUND.
      CREATE OBJECT t460.
      t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t460->cval = t461.
    ENDIF.
    t459 = t460.
    DATA t462 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t463 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t463.
    t462 = t463.
    DATA t464 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t465) = CAST zlnt_runtime_dyna_a429568d5be8( t456 ).
    DATA(t466) = CAST zlnt_runtime_dyna_a429568d5be8( t459 ).
    DATA(t467) = CAST zlnt_runtime_arra_c22708faf2e3( t462 ).
    t464 = zcl_lnt_st_combi_module=>seq( i_first = t465 i_second = t466 i_rest = t467 ).
    t455 = t464.
    IF t455 IS BOUND.
      CREATE OBJECT t454.
      t454->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t468 TYPE REF TO object.
      t468 = t455.
      t454->oval = t468.
    ENDIF.
    t453 = t454.
    DATA t469 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t470.
    t469 = t470.
    DATA(t471) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    DATA t473 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t473.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t476) = |FAILED|.
    CREATE OBJECT t475.
    t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t475->sval = t476.
    t474 = t475.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA(t479) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t479 IS BOUND.
      CREATE OBJECT t478.
      t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t478->cval = t479.
    ENDIF.
    t477 = t478.
    DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t481 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t481.
    t480 = t481.
    DATA t482 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t483) = CAST zlnt_runtime_dyna_a429568d5be8( t474 ).
    DATA(t484) = CAST zlnt_runtime_dyna_a429568d5be8( t477 ).
    DATA(t485) = CAST zlnt_runtime_arra_c22708faf2e3( t480 ).
    t482 = zcl_lnt_st_combi_module=>seq( i_first = t483 i_second = t484 i_rest = t485 ).
    t473 = t482.
    IF t473 IS BOUND.
      CREATE OBJECT t472.
      t472->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t486 TYPE REF TO object.
      t486 = t473.
      t472->oval = t486.
    ENDIF.
    APPEND t472 TO t471->items.
    DATA(t487) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    DATA t489 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t489.
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t492) = |MAPPED EARLY|.
    CREATE OBJECT t491.
    t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t491->sval = t492.
    t490 = t491.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t494.
    DATA(t495) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t495 IS BOUND.
      CREATE OBJECT t494.
      t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t494->cval = t495.
    ENDIF.
    t493 = t494.
    DATA t496 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t497 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t497.
    t496 = t497.
    DATA t498 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t499) = CAST zlnt_runtime_dyna_a429568d5be8( t490 ).
    DATA(t500) = CAST zlnt_runtime_dyna_a429568d5be8( t493 ).
    DATA(t501) = CAST zlnt_runtime_arra_c22708faf2e3( t496 ).
    t498 = zcl_lnt_st_combi_module=>seq( i_first = t499 i_second = t500 i_rest = t501 ).
    t489 = t498.
    IF t489 IS BOUND.
      CREATE OBJECT t488.
      t488->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t502 TYPE REF TO object.
      t502 = t489.
      t488->oval = t502.
    ENDIF.
    APPEND t488 TO t487->items.
    DATA(t503) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA t505 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t505.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t508) = |MAPPED LATE|.
    CREATE OBJECT t507.
    t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t507->sval = t508.
    t506 = t507.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA(t511) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t511 IS BOUND.
      CREATE OBJECT t510.
      t510->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t510->cval = t511.
    ENDIF.
    t509 = t510.
    DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t513 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t513.
    t512 = t513.
    DATA t514 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t515) = CAST zlnt_runtime_dyna_a429568d5be8( t506 ).
    DATA(t516) = CAST zlnt_runtime_dyna_a429568d5be8( t509 ).
    DATA(t517) = CAST zlnt_runtime_arra_c22708faf2e3( t512 ).
    t514 = zcl_lnt_st_combi_module=>seq( i_first = t515 i_second = t516 i_rest = t517 ).
    t505 = t514.
    IF t505 IS BOUND.
      CREATE OBJECT t504.
      t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t518 TYPE REF TO object.
      t518 = t505.
      t504->oval = t518.
    ENDIF.
    APPEND t504 TO t503->items.
    DATA(t519) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t520.
    DATA t521 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t521.
    DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t524) = |MAPPED|.
    CREATE OBJECT t523.
    t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t523->sval = t524.
    t522 = t523.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA(t527) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t527 IS BOUND.
      CREATE OBJECT t526.
      t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t526->cval = t527.
    ENDIF.
    t525 = t526.
    DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t529.
    t528 = t529.
    DATA t530 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t531) = CAST zlnt_runtime_dyna_a429568d5be8( t522 ).
    DATA(t532) = CAST zlnt_runtime_dyna_a429568d5be8( t525 ).
    DATA(t533) = CAST zlnt_runtime_arra_c22708faf2e3( t528 ).
    t530 = zcl_lnt_st_combi_module=>seq( i_first = t531 i_second = t532 i_rest = t533 ).
    t521 = t530.
    IF t521 IS BOUND.
      CREATE OBJECT t520.
      t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t534 TYPE REF TO object.
      t534 = t521.
      t520->oval = t534.
    ENDIF.
    APPEND t520 TO t519->items.
    DATA(t535) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t537.
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t540) = |REPORTED EARLY|.
    CREATE OBJECT t539.
    t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t539->sval = t540.
    t538 = t539.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    DATA(t543) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t543 IS BOUND.
      CREATE OBJECT t542.
      t542->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t542->cval = t543.
    ENDIF.
    t541 = t542.
    DATA t544 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t545 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t545.
    t544 = t545.
    DATA t546 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t547) = CAST zlnt_runtime_dyna_a429568d5be8( t538 ).
    DATA(t548) = CAST zlnt_runtime_dyna_a429568d5be8( t541 ).
    DATA(t549) = CAST zlnt_runtime_arra_c22708faf2e3( t544 ).
    t546 = zcl_lnt_st_combi_module=>seq( i_first = t547 i_second = t548 i_rest = t549 ).
    t537 = t546.
    IF t537 IS BOUND.
      CREATE OBJECT t536.
      t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t550 TYPE REF TO object.
      t550 = t537.
      t536->oval = t550.
    ENDIF.
    APPEND t536 TO t535->items.
    DATA(t551) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA t553 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t553.
    DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t556) = |REPORTED LATE|.
    CREATE OBJECT t555.
    t555->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t555->sval = t556.
    t554 = t555.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA(t559) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t559 IS BOUND.
      CREATE OBJECT t558.
      t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t558->cval = t559.
    ENDIF.
    t557 = t558.
    DATA t560 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t561 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t561.
    t560 = t561.
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t563) = CAST zlnt_runtime_dyna_a429568d5be8( t554 ).
    DATA(t564) = CAST zlnt_runtime_dyna_a429568d5be8( t557 ).
    DATA(t565) = CAST zlnt_runtime_arra_c22708faf2e3( t560 ).
    t562 = zcl_lnt_st_combi_module=>seq( i_first = t563 i_second = t564 i_rest = t565 ).
    t553 = t562.
    IF t553 IS BOUND.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t566 TYPE REF TO object.
      t566 = t553.
      t552->oval = t566.
    ENDIF.
    APPEND t552 TO t551->items.
    DATA(t567) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t569.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t572) = |REPORTED|.
    CREATE OBJECT t571.
    t571->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t571->sval = t572.
    t570 = t571.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t574.
    DATA(t575) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t575 IS BOUND.
      CREATE OBJECT t574.
      t574->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t574->cval = t575.
    ENDIF.
    t573 = t574.
    DATA t576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t577 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t577.
    t576 = t577.
    DATA t578 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t579) = CAST zlnt_runtime_dyna_a429568d5be8( t570 ).
    DATA(t580) = CAST zlnt_runtime_dyna_a429568d5be8( t573 ).
    DATA(t581) = CAST zlnt_runtime_arra_c22708faf2e3( t576 ).
    t578 = zcl_lnt_st_combi_module=>seq( i_first = t579 i_second = t580 i_rest = t581 ).
    t569 = t578.
    IF t569 IS BOUND.
      CREATE OBJECT t568.
      t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t582 TYPE REF TO object.
      t582 = t569.
      t568->oval = t582.
    ENDIF.
    APPEND t568 TO t567->items.
    DATA t583 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t584) = CAST zlnt_runtime_dyna_a429568d5be8( t437 ).
    DATA(t585) = CAST zlnt_runtime_dyna_a429568d5be8( t453 ).
    DATA(t586) = CAST zlnt_runtime_arra_c22708faf2e3( t469 ).
    t583 = zcl_lnt_st_combi_module=>alt_prio( i_first = t584 i_second = t585 i_rest = t586 ).
    t436 = t583.
    IF t436 IS BOUND.
      CREATE OBJECT t435.
      t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t587 TYPE REF TO object.
      t587 = t436.
      t435->oval = t587.
    ENDIF.
    t434 = t435.
    DATA t588 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t589.
    t588 = t589.
    DATA t590 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t591) = CAST zlnt_runtime_dyna_a429568d5be8( t431 ).
    DATA(t592) = CAST zlnt_runtime_dyna_a429568d5be8( t434 ).
    DATA(t593) = CAST zlnt_runtime_arra_c22708faf2e3( t588 ).
    t590 = zcl_lnt_st_combi_module=>seq( i_first = t591 i_second = t592 i_rest = t593 ).
    t430 = t590.
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t594 TYPE REF TO object.
      t594 = t430.
      t429->oval = t594.
    ENDIF.
    DATA t595 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t595.
    DATA(t596) = abap_true.
    IF t596 = abap_true.
      DATA t597 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t597.
      DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t598.
      DATA(t599) = abap_true.
      IF t599 = abap_true.
        DATA(t600) = |OpenABAP|.
        DATA(t601) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t601->has = abap_true.
        t601->value = t600.
        t598 = t601.
      ELSE.
        DATA t602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t602.
        t598 = t602.
      ENDIF.
      t597 = NEW zcl_lnt_iver_options( i_also = t598 ).
      t595 = t597.
    ELSE.
      DATA t603 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t603.
      t595 = t603.
    ENDIF.
    t422 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t423 i_first = t429 i_opts = t595 ).
    t421 = t422.
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
    DATA(t610) = |v778|.
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
    DATA(t616) = |REQUEST FOR|.
    CREATE OBJECT t615.
    t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t615->sval = t616.
    t614 = t615.
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t617.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t618.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t622) = |CHANGE|.
    CREATE OBJECT t621.
    t621->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t621->sval = t622.
    t620 = t621.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t625) = |DELETE|.
    CREATE OBJECT t624.
    t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t624->sval = t625.
    t623 = t624.
    DATA t626 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t627 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t627.
    t626 = t627.
    DATA t628 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t629) = CAST zlnt_runtime_dyna_a429568d5be8( t620 ).
    DATA(t630) = CAST zlnt_runtime_dyna_a429568d5be8( t623 ).
    DATA(t631) = CAST zlnt_runtime_arra_c22708faf2e3( t626 ).
    t628 = zcl_lnt_st_combi_module=>alt( i_first = t629 i_second = t630 i_rest = t631 ).
    t619 = t628.
    IF t619 IS BOUND.
      CREATE OBJECT t618.
      t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t632 TYPE REF TO object.
      t632 = t619.
      t618->oval = t632.
    ENDIF.
    t617 = t618.
    DATA t633 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t634.
    t633 = t634.
    DATA(t635) = CAST zlnt_runtime_arra_c22708faf2e3( t633 ).
    DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t636.
    DATA(t637) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t637 IS BOUND.
      CREATE OBJECT t636.
      t636->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t636->cval = t637.
    ENDIF.
    APPEND t636 TO t635->items.
    DATA t638 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t639) = CAST zlnt_runtime_dyna_a429568d5be8( t614 ).
    DATA(t640) = CAST zlnt_runtime_dyna_a429568d5be8( t617 ).
    DATA(t641) = CAST zlnt_runtime_arra_c22708faf2e3( t633 ).
    t638 = zcl_lnt_st_combi_module=>seq( i_first = t639 i_second = t640 i_rest = t641 ).
    t613 = t638.
    IF t613 IS BOUND.
      CREATE OBJECT t612.
      t612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t642 TYPE REF TO object.
      t642 = t613.
      t612->oval = t642.
    ENDIF.
    DATA t643 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t643.
    DATA(t644) = abap_true.
    IF t644 = abap_true.
      DATA t645 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t645.
      DATA t646 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t646.
      DATA(t647) = abap_true.
      IF t647 = abap_true.
        DATA(t648) = |OpenABAP|.
        DATA(t649) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t649->has = abap_true.
        t649->value = t648.
        t646 = t649.
      ELSE.
        DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t650.
        t646 = t650.
      ENDIF.
      t645 = NEW zcl_lnt_iver_options( i_also = t646 ).
      t643 = t645.
    ELSE.
      DATA t651 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t651.
      t643 = t651.
    ENDIF.
    t605 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t606 i_first = t612 i_opts = t643 ).
    t604 = t605.
    DATA t652 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t652.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t655) = |TYPE|.
    CREATE OBJECT t654.
    t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t654->sval = t655.
    t653 = t654.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t657.
    DATA t658 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t658.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t660.
    DATA(t661) = CAST zif_lnt_statement_runnable( t388 ).
    IF t661 IS BOUND.
      CREATE OBJECT t660.
      t660->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t662 TYPE REF TO object.
      t662 = t661.
      t660->oval = t662.
    ENDIF.
    t659 = t660.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t663.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t664.
    DATA(t665) = CAST zif_lnt_statement_runnable( t421 ).
    IF t665 IS BOUND.
      CREATE OBJECT t664.
      t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t666 TYPE REF TO object.
      t666 = t665.
      t664->oval = t666.
    ENDIF.
    t663 = t664.
    DATA t667 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t668 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t668.
    t667 = t668.
    DATA(t669) = CAST zlnt_runtime_arra_c22708faf2e3( t667 ).
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t670.
    DATA(t671) = CAST zif_lnt_statement_runnable( t604 ).
    IF t671 IS BOUND.
      CREATE OBJECT t670.
      t670->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t672 TYPE REF TO object.
      t672 = t671.
      t670->oval = t672.
    ENDIF.
    APPEND t670 TO t669->items.
    DATA t673 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t674) = CAST zlnt_runtime_dyna_a429568d5be8( t659 ).
    DATA(t675) = CAST zlnt_runtime_dyna_a429568d5be8( t663 ).
    DATA(t676) = CAST zlnt_runtime_arra_c22708faf2e3( t667 ).
    t673 = zcl_lnt_st_combi_module=>alt_prio( i_first = t674 i_second = t675 i_rest = t676 ).
    t658 = t673.
    IF t658 IS BOUND.
      CREATE OBJECT t657.
      t657->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t677 TYPE REF TO object.
      t677 = t658.
      t657->oval = t677.
    ENDIF.
    t656 = t657.
    DATA t678 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t679 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t679.
    t678 = t679.
    DATA(t680) = CAST zlnt_runtime_arra_c22708faf2e3( t678 ).
    DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t681.
    DATA t682 TYPE REF TO zif_lnt_statement_runnable.
    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t684) = |VALUE IS INITIAL|.
    CREATE OBJECT t683.
    t683->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t683->sval = t684.
    t682 = zcl_lnt_st_combi_module=>opt_prio( i_first = t683 ).
    IF t682 IS BOUND.
      CREATE OBJECT t681.
      t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t685 TYPE REF TO object.
      t685 = t682.
      t681->oval = t685.
    ENDIF.
    APPEND t681 TO t680->items.
    DATA t686 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t687) = CAST zlnt_runtime_dyna_a429568d5be8( t653 ).
    DATA(t688) = CAST zlnt_runtime_dyna_a429568d5be8( t656 ).
    DATA(t689) = CAST zlnt_runtime_arra_c22708faf2e3( t678 ).
    t686 = zcl_lnt_st_combi_module=>seq( i_first = t687 i_second = t688 i_rest = t689 ).
    t652 = t686.
    result = t652.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
  ENDMETHOD.
ENDCLASS.
