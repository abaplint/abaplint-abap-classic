* TS: src/abap/2_statements/statements/delete_database.ts:8:1 DeleteDatabase
CLASS zcl_lnt_st_delete_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_delete_database IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |WHERE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t19 i_rest = t20 ).
    t8 = t17.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t21 TYPE REF TO object.
      t21 = t8.
      t7->oval = t21.
    ENDIF.
    t6 = t7.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t26 i_rest = t27 ).
    t2 = t24.
    t1 = t2.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t33.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t33 = zcl_lnt_version_module=>release_b8cd.
    DATA(t34) = |v764|.
    t32 = t33->get( p0 = t34 ).
    t31 = t32.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t31.
      t30->oval = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc ).
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt_prio( i_first = t47 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t46.
      t45->oval = t49.
    ENDIF.
    t44 = t45.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    t50 = t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t44 ).
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t54 i_rest = t55 ).
    t40 = t52.
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t40.
      t39->oval = t56.
    ENDIF.
    t38 = t39.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t65 = zcl_lnt_st_combi_module=>opt_prio( i_first = t66 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t65.
      t64->oval = t68.
    ENDIF.
    t63 = t64.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t59 = t71.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t75 TYPE REF TO object.
      t75 = t59.
      t58->oval = t75.
    ENDIF.
    t57 = t58.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    t76 = t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t38 ).
    DATA(t80) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t76 ).
    t78 = zcl_lnt_st_combi_module=>alt_prio( i_first = t79 i_second = t80 i_rest = t81 ).
    t37 = t78.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t37.
      t36->oval = t82.
    ENDIF.
    DATA t83 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t83.
    t29 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t30 i_first = t36 i_opts = t83 ).
    t28 = t29.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
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
    DATA(t90) = |v764|.
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
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814 ).
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zif_lnt_statement_runnable( t28 ).
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
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t104 = t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t107) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    t106 = zcl_lnt_st_combi_module=>seq( i_first = t107 i_second = t108 i_rest = t109 ).
    t93 = t106.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t110 TYPE REF TO object.
      t110 = t93.
      t92->oval = t110.
    ENDIF.
    DATA t111 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t111.
    t85 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t86 i_first = t92 i_opts = t111 ).
    t84 = t85.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = CAST zif_lnt_statement_runnable( t84 ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t119 TYPE REF TO object.
      t119 = t118.
      t117->oval = t119.
    ENDIF.
    t116 = t117.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = CAST zif_lnt_statement_runnable( t28 ).
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t123 TYPE REF TO object.
      t123 = t122.
      t121->oval = t123.
    ENDIF.
    t120 = t121.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t125.
    t124 = t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
    DATA(t128) = CAST zlnt_runtime_dyna_a429568d5be8( t120 ).
    DATA(t129) = CAST zlnt_runtime_arra_c22708faf2e3( t124 ).
    t126 = zcl_lnt_st_combi_module=>alt_prio( i_first = t127 i_second = t128 i_rest = t129 ).
    t115 = t126.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t115.
      t114->oval = t130.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt_prio( i_first = t114 ).
    t112 = t113.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = |FROM|.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = t135.
    t133 = t134.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t137->cval = t138.
    ENDIF.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    t139 = t140.
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t144->cval = t145.
    ENDIF.
    t143 = zcl_lnt_st_combi_module=>opt_prio( i_first = t144 ).
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t143.
      t142->oval = t146.
    ENDIF.
    APPEND t142 TO t141->items.
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>opt_prio( i_first = t150 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t152 TYPE REF TO object.
      t152 = t149.
      t148->oval = t152.
    ENDIF.
    APPEND t148 TO t147->items.
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = CAST zif_lnt_statement_runnable( t1 ).
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t157.
      t156->oval = t158.
    ENDIF.
    t155 = zcl_lnt_st_combi_module=>opt( i_first = t156 ).
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t155.
      t154->oval = t159.
    ENDIF.
    APPEND t154 TO t153->items.
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = CAST zif_lnt_statement_runnable( t112 ).
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t163 TYPE REF TO object.
      t163 = t162.
      t161->oval = t163.
    ENDIF.
    APPEND t161 TO t160->items.
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a ).
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    t166 = zcl_lnt_st_combi_module=>opt_prio( i_first = t167 ).
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t169 TYPE REF TO object.
      t169 = t166.
      t165->oval = t169.
    ENDIF.
    APPEND t165 TO t164->items.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t171) = CAST zlnt_runtime_dyna_a429568d5be8( t133 ).
    DATA(t172) = CAST zlnt_runtime_dyna_a429568d5be8( t136 ).
    DATA(t173) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    t170 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t172 i_rest = t173 ).
    t132 = t170.
    t131 = t132.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = |FROM|.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = t178.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t183) = |TABLE|.
    CREATE OBJECT t182.
    t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t182->sval = t183.
    t181 = zcl_lnt_st_combi_module=>opt( i_first = t182 ).
    IF t181 IS BOUND.
      CREATE OBJECT t180.
      t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t184 TYPE REF TO object.
      t184 = t181.
      t180->oval = t184.
    ENDIF.
    t179 = t180.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t186.
    t185 = t186.
    DATA(t187) = CAST zlnt_runtime_arra_c22708faf2e3( t185 ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3 ).
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t188->cval = t189.
    ENDIF.
    APPEND t188 TO t187->items.
    DATA(t190) = CAST zlnt_runtime_arra_c22708faf2e3( t185 ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA(t194) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d314_757c7fdfaec1 ).
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
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t185 ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795 ).
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t199->cval = t200.
    ENDIF.
    t198 = zcl_lnt_st_combi_module=>opt_prio( i_first = t199 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t201 TYPE REF TO object.
      t201 = t198.
      t197->oval = t201.
    ENDIF.
    APPEND t197 TO t196->items.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t203) = CAST zlnt_runtime_dyna_a429568d5be8( t176 ).
    DATA(t204) = CAST zlnt_runtime_dyna_a429568d5be8( t179 ).
    DATA(t205) = CAST zlnt_runtime_arra_c22708faf2e3( t185 ).
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t204 i_rest = t205 ).
    t175 = t202.
    t174 = t175.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t209->cval = t210.
    ENDIF.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    t213 = zcl_lnt_st_combi_module=>opt_prio( i_first = t214 ).
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t216 TYPE REF TO object.
      t216 = t213.
      t212->oval = t216.
    ENDIF.
    t211 = t212.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t218.
    t217 = t218.
    DATA(t219) = CAST zlnt_runtime_arra_c22708faf2e3( t217 ).
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    t221 = zcl_lnt_st_combi_module=>opt_prio( i_first = t222 ).
    IF t221 IS BOUND.
      CREATE OBJECT t220.
      t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t224 TYPE REF TO object.
      t224 = t221.
      t220->oval = t224.
    ENDIF.
    APPEND t220 TO t219->items.
    DATA(t225) = CAST zlnt_runtime_arra_c22708faf2e3( t217 ).
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = CAST zif_lnt_statement_runnable( t174 ).
    IF t229 IS BOUND.
      CREATE OBJECT t228.
      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t230 TYPE REF TO object.
      t230 = t229.
      t228->oval = t230.
    ENDIF.
    t227 = zcl_lnt_st_combi_module=>opt_prio( i_first = t228 ).
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t231 TYPE REF TO object.
      t231 = t227.
      t226->oval = t231.
    ENDIF.
    APPEND t226 TO t225->items.
    DATA(t232) = CAST zlnt_runtime_arra_c22708faf2e3( t217 ).
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a ).
    IF t236 IS BOUND.
      CREATE OBJECT t235.
      t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t235->cval = t236.
    ENDIF.
    t234 = zcl_lnt_st_combi_module=>opt_prio( i_first = t235 ).
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t237 TYPE REF TO object.
      t237 = t234.
      t233->oval = t237.
    ENDIF.
    APPEND t233 TO t232->items.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t239) = CAST zlnt_runtime_dyna_a429568d5be8( t208 ).
    DATA(t240) = CAST zlnt_runtime_dyna_a429568d5be8( t211 ).
    DATA(t241) = CAST zlnt_runtime_arra_c22708faf2e3( t217 ).
    t238 = zcl_lnt_st_combi_module=>seq( i_first = t239 i_second = t240 i_rest = t241 ).
    t207 = t238.
    t206 = t207.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t246) = |DELETE|.
    CREATE OBJECT t245.
    t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t245->sval = t246.
    t244 = t245.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = CAST zif_lnt_statement_runnable( t131 ).
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t253 TYPE REF TO object.
      t253 = t252.
      t251->oval = t253.
    ENDIF.
    t250 = t251.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA(t256) = CAST zif_lnt_statement_runnable( t206 ).
    IF t256 IS BOUND.
      CREATE OBJECT t255.
      t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t257 TYPE REF TO object.
      t257 = t256.
      t255->oval = t257.
    ENDIF.
    t254 = t255.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    t258 = t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t261) = CAST zlnt_runtime_dyna_a429568d5be8( t250 ).
    DATA(t262) = CAST zlnt_runtime_dyna_a429568d5be8( t254 ).
    DATA(t263) = CAST zlnt_runtime_arra_c22708faf2e3( t258 ).
    t260 = zcl_lnt_st_combi_module=>alt_prio( i_first = t261 i_second = t262 i_rest = t263 ).
    t249 = t260.
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t264 TYPE REF TO object.
      t264 = t249.
      t248->oval = t264.
    ENDIF.
    t247 = t248.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t266.
    t265 = t266.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t268) = CAST zlnt_runtime_dyna_a429568d5be8( t244 ).
    DATA(t269) = CAST zlnt_runtime_dyna_a429568d5be8( t247 ).
    DATA(t270) = CAST zlnt_runtime_arra_c22708faf2e3( t265 ).
    t267 = zcl_lnt_st_combi_module=>seq( i_first = t268 i_second = t269 i_rest = t270 ).
    t243 = t267.
    t242 = t243.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA(t272) = |KeyUser|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = CAST zif_lnt_statement_runnable( t242 ).
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t275 TYPE REF TO object.
      t275 = t274.
      t273->oval = t275.
    ENDIF.
    t271 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t272 i_first = t273 ).
    result = t271.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d425_e1044626682e.
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
