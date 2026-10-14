* TS: src/abap/2_statements/expressions/sql_from_source.ts:12:1 SQLFromSource
CLASS zcl_lnt_sql_from_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_from_source IMPLEMENTATION.
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
    DATA(t7) = |v752|.
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
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t13 = zcl_lnt_st_combi_module=>tok( i_t = t14 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t13.
      t12->oval = t15.
    ENDIF.
    t11 = t12.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
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
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t21 = zcl_lnt_st_combi_module=>seq( i_first = t22 i_second = t23 i_rest = t24 ).
    t10 = t21.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t10.
      t9->oval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA(t31) = |OpenABAP|.
        DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t32->has = abap_true.
        t32->value = t31.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t29 = t33.
      ENDIF.
      t28 = NEW zcl_lnt_iver_options( i_also = t29 ).
      t26 = t28.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t34.
      t26 = t34.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t26 ).
    t1 = t2.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = |AS|.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t47) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t47 i_rest = t48 ).
    t36 = t45.
    t35 = t36.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t54.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t54 = zcl_lnt_version_module=>release_b8cd.
    DATA(t55) = |v752|.
    t53 = t54->get( p0 = t55 ).
    t52 = t53.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t52.
      t51->oval = t56.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = |WITH|.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t58 = t67.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t71 TYPE REF TO object.
      t71 = t58.
      t57->oval = t71.
    ENDIF.
    DATA t72 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t72.
    t50 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t51 i_first = t57 i_opts = t72 ).
    t49 = t50.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t78.
    DATA t79 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t80.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t80 = zcl_lnt_version_module=>release_b8cd.
    DATA(t81) = |v796|.
    t79 = t80->get( p0 = t81 ).
    t78 = t79.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t78.
      t77->oval = t82.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781 ).
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    DATA t85 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t85.
    t76 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t77 i_first = t83 i_opts = t85 ).
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t76.
      t75->oval = t86.
    ENDIF.
    t74 = zcl_lnt_st_combi_module=>opt_prio( i_first = t75 ).
    t73 = t74.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t92.
    DATA t93 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t94.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t94 = zcl_lnt_version_module=>release_b8cd.
    DATA(t95) = |v913|.
    t93 = t94->get( p0 = t95 ).
    t92 = t93.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t92.
      t91->oval = t96.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d288_09589b7663ff ).
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t97->cval = t98.
    ENDIF.
    DATA t99 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t99.
    t90 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t91 i_first = t97 i_opts = t99 ).
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t90.
      t89->oval = t100.
    ENDIF.
    t88 = zcl_lnt_st_combi_module=>opt_prio( i_first = t89 ).
    t87 = t88.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA(t105) = |KeyUser|.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = NEW zcl_lnt_sql_path_for_entity(  ).
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t108 TYPE REF TO object.
      t108 = t107.
      t106->oval = t108.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t105 i_first = t106 ).
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t104.
      t103->oval = t109.
    ENDIF.
    t102 = zcl_lnt_st_combi_module=>opt_prio( i_first = t103 ).
    t101 = t102.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = NEW zcl_lnt_sql_hrrchy_aggrgt(  ).
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t117 TYPE REF TO object.
      t117 = t116.
      t115->oval = t117.
    ENDIF.
    t114 = t115.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = NEW zcl_lnt_sql_hierarchy_accessor(  ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t121 TYPE REF TO object.
      t121 = t120.
      t119->oval = t121.
    ENDIF.
    t118 = t119.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    t122 = t123.
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = NEW zcl_lnt_sql_hierarchy_source(  ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t127 TYPE REF TO object.
      t127 = t126.
      t125->oval = t127.
    ENDIF.
    APPEND t125 TO t124->items.
    DATA(t128) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d302_ef2b4b46983a ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = CAST zif_lnt_statement_runnable( t101 ).
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t136.
      t135->oval = t137.
    ENDIF.
    t134 = t135.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t138 = t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t131 ).
    DATA(t142) = CAST zlnt_runtime_dyna_a429568d5be8( t134 ).
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    t140 = zcl_lnt_st_combi_module=>seq( i_first = t141 i_second = t142 i_rest = t143 ).
    t130 = t140.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t130.
      t129->oval = t144.
    ENDIF.
    APPEND t129 TO t128->items.
    DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zcl_lnt_st_database_table.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t151.
    DATA(t152) = abap_true.
    IF t152 = abap_true.
      DATA(t153) = abap_true.
      DATA(t154) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t154->has = abap_true.
      t154->value = t153.
      t151 = t154.
    ELSE.
      DATA t155 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t155.
      t151 = t155.
    ENDIF.
    t150 = NEW zcl_lnt_st_database_table( i_no_dynamic = t151 ).
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t156 TYPE REF TO object.
      t156 = t150.
      t149->oval = t156.
    ENDIF.
    t148 = t149.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f ).
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    t159 = zcl_lnt_st_combi_module=>opt_prio( i_first = t160 ).
    IF t159 IS BOUND.
      CREATE OBJECT t158.
      t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t162 TYPE REF TO object.
      t162 = t159.
      t158->oval = t162.
    ENDIF.
    t157 = t158.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t163 = t164.
    DATA(t165) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = CAST zif_lnt_statement_runnable( t101 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t168 TYPE REF TO object.
      t168 = t167.
      t166->oval = t168.
    ENDIF.
    APPEND t166 TO t165->items.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t148 ).
    DATA(t171) = CAST zlnt_runtime_dyna_a429568d5be8( t157 ).
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    t169 = zcl_lnt_st_combi_module=>seq( i_first = t170 i_second = t171 i_rest = t172 ).
    t147 = t169.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t173 TYPE REF TO object.
      t173 = t147.
      t146->oval = t173.
    ENDIF.
    APPEND t146 TO t145->items.
    DATA(t174) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = CAST zif_lnt_statement_runnable( t1 ).
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t177 TYPE REF TO object.
      t177 = t176.
      t175->oval = t177.
    ENDIF.
    APPEND t175 TO t174->items.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    t178 = zcl_lnt_st_combi_module=>alt_prio( i_first = t179 i_second = t180 i_rest = t181 ).
    t113 = t178.
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t182 TYPE REF TO object.
      t182 = t113.
      t112->oval = t182.
    ENDIF.
    t111 = t112.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = CAST zif_lnt_statement_runnable( t73 ).
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t186 TYPE REF TO object.
      t186 = t185.
      t184->oval = t186.
    ENDIF.
    t183 = t184.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t188.
    t187 = t188.
    DATA(t189) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = CAST zif_lnt_statement_runnable( t49 ).
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t194 TYPE REF TO object.
      t194 = t193.
      t192->oval = t194.
    ENDIF.
    t191 = zcl_lnt_st_combi_module=>opt_prio( i_first = t192 ).
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t195 TYPE REF TO object.
      t195 = t191.
      t190->oval = t195.
    ENDIF.
    APPEND t190 TO t189->items.
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = CAST zif_lnt_statement_runnable( t35 ).
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
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA(t205) = CAST zif_lnt_statement_runnable( t87 ).
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t206 TYPE REF TO object.
      t206 = t205.
      t204->oval = t206.
    ENDIF.
    APPEND t204 TO t203->items.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t111 ).
    DATA(t209) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t209 i_rest = t210 ).
    t110 = t207.
    result = t110.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d.
  ENDMETHOD.
ENDCLASS.
