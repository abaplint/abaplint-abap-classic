* TS: src/abap/2_statements/expressions/sql_client.ts:8:1 SQLClient
CLASS zcl_lnt_sql_client DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_client IMPLEMENTATION.
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
    DATA(t7) = |v740sp05|.
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
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = |,|.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = t27.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t31 = t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t34 i_second = t35 i_rest = t36 ).
    t24 = t33.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t24.
      t23->oval = t37.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>star_prio( i_first = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t22.
      t21->oval = t38.
    ENDIF.
    t20 = t21.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t43 i_rest = t44 ).
    t16 = t41.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t45 TYPE REF TO object.
      t45 = t16.
      t15->oval = t45.
    ENDIF.
    t14 = t15.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    t48 = zcl_lnt_st_combi_module=>alt( i_first = t49 i_second = t50 i_rest = t51 ).
    t10 = t48.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t10.
      t9->oval = t52.
    ENDIF.
    DATA t53 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t53.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t53 ).
    t1 = t2.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = |KeyUser|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA(t62) = |Cloud|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |CLIENT SPECIFIED|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = CAST zif_lnt_statement_runnable( t1 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t72.
      t71->oval = t73.
    ENDIF.
    t70 = zcl_lnt_st_combi_module=>opt_prio( i_first = t71 ).
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t74 TYPE REF TO object.
      t74 = t70.
      t69->oval = t74.
    ENDIF.
    t68 = t69.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t75 = t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t68 ).
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t79 i_rest = t80 ).
    t64 = t77.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t64.
      t63->oval = t81.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t62 i_first = t63 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t61.
      t60->oval = t82.
    ENDIF.
    t59 = t60.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = |USING|.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t98.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t98 = zcl_lnt_version_module=>release_b8cd.
    DATA(t99) = |v740sp05|.
    t97 = t98->get( p0 = t99 ).
    t96 = t97.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t96.
      t95->oval = t100.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = |CLIENT|.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    t106 = t107.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t109 = t110.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t114) = CAST zlnt_runtime_arra_c22708faf2e3( t109 ).
    t111 = zcl_lnt_st_combi_module=>seq( i_first = t112 i_second = t113 i_rest = t114 ).
    t102 = t111.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t115 TYPE REF TO object.
      t115 = t102.
      t101->oval = t115.
    ENDIF.
    DATA t116 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t116.
    t94 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t95 i_first = t101 i_opts = t116 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t117 TYPE REF TO object.
      t117 = t94.
      t93->oval = t117.
    ENDIF.
    t92 = t93.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t122.
    DATA t123 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t124.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t124 = zcl_lnt_version_module=>release_b8cd.
    DATA(t125) = |v754|.
    t123 = t124->get( p0 = t125 ).
    t122 = t123.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t122.
      t121->oval = t126.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = |CLIENTS IN|.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3 ).
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t136->cval = t137.
    ENDIF.
    t135 = t136.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = |T000|.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = t140.
    t138 = t139.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t142.
    t141 = t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t135 ).
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t138 ).
    DATA(t146) = CAST zlnt_runtime_arra_c22708faf2e3( t141 ).
    t143 = zcl_lnt_st_combi_module=>alt( i_first = t144 i_second = t145 i_rest = t146 ).
    t134 = t143.
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t134.
      t133->oval = t147.
    ENDIF.
    t132 = t133.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t132 ).
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t148 ).
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t128 = t150.
    IF t128 IS BOUND.
      CREATE OBJECT t127.
      t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t154 TYPE REF TO object.
      t154 = t128.
      t127->oval = t154.
    ENDIF.
    DATA t155 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t155.
    t120 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t121 i_first = t127 i_opts = t155 ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t156 TYPE REF TO object.
      t156 = t120.
      t119->oval = t156.
    ENDIF.
    t118 = t119.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    t157 = t158.
    DATA(t159) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t163.
    DATA t164 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t165.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t165 = zcl_lnt_version_module=>release_b8cd.
    DATA(t166) = |v754|.
    t164 = t165->get( p0 = t166 ).
    t163 = t164.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t163.
      t162->oval = t167.
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t169) = |ALL CLIENTS|.
    CREATE OBJECT t168.
    t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t168->sval = t169.
    DATA t170 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t170.
    t161 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t162 i_first = t168 i_opts = t170 ).
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t171 TYPE REF TO object.
      t171 = t161.
      t160->oval = t171.
    ENDIF.
    APPEND t160 TO t159->items.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t157 ).
    t172 = zcl_lnt_st_combi_module=>alt( i_first = t173 i_second = t174 i_rest = t175 ).
    t91 = t172.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t91.
      t90->oval = t176.
    ENDIF.
    t89 = t90.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t178.
    t177 = t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t181) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t182) = CAST zlnt_runtime_arra_c22708faf2e3( t177 ).
    t179 = zcl_lnt_st_combi_module=>seq( i_first = t180 i_second = t181 i_rest = t182 ).
    t85 = t179.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t183 TYPE REF TO object.
      t183 = t85.
      t84->oval = t183.
    ENDIF.
    t83 = t84.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t185.
    t184 = t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t188) = CAST zlnt_runtime_dyna_a429568d5be8( t83 ).
    DATA(t189) = CAST zlnt_runtime_arra_c22708faf2e3( t184 ).
    t186 = zcl_lnt_st_combi_module=>alt( i_first = t187 i_second = t188 i_rest = t189 ).
    t58 = t186.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t190 TYPE REF TO object.
      t190 = t58.
      t57->oval = t190.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t56 i_first = t57 ).
    t54 = t55.
    DATA(t191) = CAST zif_lnt_statement_runnable( t54 ).
    result = t191.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
  ENDMETHOD.
ENDCLASS.
