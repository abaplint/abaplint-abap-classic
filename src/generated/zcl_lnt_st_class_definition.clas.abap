* TS: src/abap/2_statements/statements/class_definition.ts:7:1 ClassDefinition
CLASS zcl_lnt_st_class_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_class_definition IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |CREATE|.
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
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |PUBLIC|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = |PROTECTED|.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = t14.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |PRIVATE|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    APPEND t18 TO t17->items.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    t20 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t22 i_rest = t23 ).
    t8 = t20.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t8.
      t7->oval = t24.
    ENDIF.
    t6 = t7.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t2 = t27.
    t1 = t2.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = |CRITICAL|.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |HARMLESS|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = |DANGEROUS|.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    APPEND t42 TO t41->items.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t44 = zcl_lnt_st_combi_module=>alt_prio( i_first = t45 i_second = t46 i_rest = t47 ).
    t32 = t44.
    t31 = t32.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = |RISK LEVEL|.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = CAST zif_lnt_statement_runnable( t31 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t55.
      t54->oval = t56.
    ENDIF.
    t53 = t54.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t57 = t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t61 i_rest = t62 ).
    t49 = t59.
    t48 = t49.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |LONG|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = |MEDIUM|.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    t71 = t72.
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t71 ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t75) = |SHORT|.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = t75.
    APPEND t74 TO t73->items.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t68 ).
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t71 ).
    t76 = zcl_lnt_st_combi_module=>alt_prio( i_first = t77 i_second = t78 i_rest = t79 ).
    t64 = t76.
    t63 = t64.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = |DURATION|.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = t84.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = CAST zif_lnt_statement_runnable( t63 ).
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
    DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t82 ).
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t85 ).
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    t91 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t93 i_rest = t94 ).
    t81 = t91.
    t80 = t81.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    t103 = t104.
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |ABSTRACT|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    APPEND t106 TO t105->items.
    DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = |INHERITING FROM|.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d331_0a1ba381b33b ).
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t111 ).
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t110 = t119.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t123 TYPE REF TO object.
      t123 = t110.
      t109->oval = t123.
    ENDIF.
    APPEND t109 TO t108->items.
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = CAST zif_lnt_statement_runnable( t1 ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t127 TYPE REF TO object.
      t127 = t126.
      t125->oval = t127.
    ENDIF.
    APPEND t125 TO t124->items.
    DATA(t128) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = |FOR TESTING|.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    APPEND t129 TO t128->items.
    DATA(t131) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = CAST zif_lnt_statement_runnable( t48 ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t133.
      t132->oval = t134.
    ENDIF.
    APPEND t132 TO t131->items.
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = |SHARED MEMORY ENABLED|.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = t137.
    APPEND t136 TO t135->items.
    DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = CAST zif_lnt_statement_runnable( t80 ).
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t141 TYPE REF TO object.
      t141 = t140.
      t139->oval = t141.
    ENDIF.
    APPEND t139 TO t138->items.
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t146.
    DATA t147 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t148.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t148 = zcl_lnt_version_module=>release_b8cd.
    DATA(t149) = |v754|.
    t147 = t148->get( p0 = t149 ).
    t146 = t147.
    IF t146 IS BOUND.
      CREATE OBJECT t145.
      t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t150 TYPE REF TO object.
      t150 = t146.
      t145->oval = t150.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = |FOR BEHAVIOR OF|.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = t155.
    t153 = t154.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3 ).
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t153 ).
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t159 ).
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t163 i_rest = t164 ).
    t152 = t161.
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t152.
      t151->oval = t165.
    ENDIF.
    DATA t166 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t166.
    DATA(t167) = abap_true.
    IF t167 = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t168.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t169.
      DATA(t170) = abap_true.
      IF t170 = abap_true.
        DATA(t171) = |OpenABAP|.
        DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t172->has = abap_true.
        t172->value = t171.
        t169 = t172.
      ELSE.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t169 = t173.
      ENDIF.
      t168 = NEW zcl_lnt_iver_options( i_also = t169 ).
      t166 = t168.
    ELSE.
      DATA t174 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t174.
      t166 = t174.
    ENDIF.
    t144 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t145 i_first = t151 i_opts = t166 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t175 TYPE REF TO object.
      t175 = t144.
      t143->oval = t175.
    ENDIF.
    APPEND t143 TO t142->items.
    DATA(t176) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t180.
    DATA t181 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t182.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t182 = zcl_lnt_version_module=>release_b8cd.
    DATA(t183) = |v758|.
    t181 = t182->get( p0 = t183 ).
    t180 = t181.
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t184 TYPE REF TO object.
      t184 = t180.
      t179->oval = t184.
    ENDIF.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t189) = |FOR EVENTS OF|.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = t189.
    t187 = t188.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3 ).
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t191->cval = t192.
    ENDIF.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    t193 = t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t196) = CAST zlnt_runtime_dyna_a429568d5be8( t187 ).
    DATA(t197) = CAST zlnt_runtime_dyna_a429568d5be8( t190 ).
    DATA(t198) = CAST zlnt_runtime_arra_c22708faf2e3( t193 ).
    t195 = zcl_lnt_st_combi_module=>seq( i_first = t196 i_second = t197 i_rest = t198 ).
    t186 = t195.
    IF t186 IS BOUND.
      CREATE OBJECT t185.
      t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t199 TYPE REF TO object.
      t199 = t186.
      t185->oval = t199.
    ENDIF.
    DATA t200 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t200.
    t178 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t179 i_first = t185 i_opts = t200 ).
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t201 TYPE REF TO object.
      t201 = t178.
      t177->oval = t201.
    ENDIF.
    APPEND t177 TO t176->items.
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d115_e681bc20f5c0 ).
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    APPEND t203 TO t202->items.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    t205 = zcl_lnt_st_combi_module=>per( i_first = t206 i_second = t207 i_rest = t208 ).
    t96 = t205.
    t95 = t96.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t213) = |DEFINITION|.
    CREATE OBJECT t212.
    t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t212->sval = t213.
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = CAST zif_lnt_statement_runnable( t95 ).
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t218.
      t217->oval = t219.
    ENDIF.
    t216 = zcl_lnt_st_combi_module=>opt_prio( i_first = t217 ).
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t220 TYPE REF TO object.
      t220 = t216.
      t215->oval = t220.
    ENDIF.
    t214 = t215.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t222.
    t221 = t222.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t224) = CAST zlnt_runtime_dyna_a429568d5be8( t211 ).
    DATA(t225) = CAST zlnt_runtime_dyna_a429568d5be8( t214 ).
    DATA(t226) = CAST zlnt_runtime_arra_c22708faf2e3( t221 ).
    t223 = zcl_lnt_st_combi_module=>seq( i_first = t224 i_second = t225 i_rest = t226 ).
    t210 = t223.
    t209 = t210.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t230) = |CLASS|.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = t230.
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA(t233) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t232->cval = t233.
    ENDIF.
    t231 = t232.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t235.
    t234 = t235.
    DATA(t236) = CAST zlnt_runtime_arra_c22708faf2e3( t234 ).
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = CAST zif_lnt_statement_runnable( t209 ).
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t238.
      t237->oval = t239.
    ENDIF.
    APPEND t237 TO t236->items.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t241) = CAST zlnt_runtime_dyna_a429568d5be8( t228 ).
    DATA(t242) = CAST zlnt_runtime_dyna_a429568d5be8( t231 ).
    DATA(t243) = CAST zlnt_runtime_arra_c22708faf2e3( t234 ).
    t240 = zcl_lnt_st_combi_module=>seq( i_first = t241 i_second = t242 i_rest = t243 ).
    t227 = t240.
    result = t227.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d394_f6e1a10c8513.
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
