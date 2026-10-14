* TS: src/abap/2_statements/expressions/type.ts:6:1 Type
CLASS zcl_lnt_st_expres_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_expres_type IMPLEMENTATION.
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t9.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t9 = zcl_lnt_version_module=>release_b8cd.
    DATA(t10) = |v784|.
    t8 = t9->get( p0 = t10 ).
    t7 = t8.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t7.
      t6->oval = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |AS BITFIELD|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    DATA t14 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t14.
    t5 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t6 i_first = t12 i_opts = t14 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t5.
      t4->oval = t15.
    ENDIF.
    t3 = t4.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |TYPE|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
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
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t18 = t27.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t18.
      t17->oval = t31.
    ENDIF.
    t16 = t17.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    t34 = zcl_lnt_st_combi_module=>alt_prio( i_first = t35 i_second = t36 i_rest = t37 ).
    t2 = t34.
    t1 = t2.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = |WITH INDICATORS|.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = CAST zif_lnt_statement_runnable( t1 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t52.
      t51->oval = t53.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>opt_prio( i_first = t51 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t50.
      t49->oval = t54.
    ENDIF.
    APPEND t49 TO t48->items.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t57 i_rest = t58 ).
    t39 = t55.
    t38 = t39.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    t66 = zcl_lnt_st_combi_module=>opt_prio( i_first = t67 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t66.
      t65->oval = t69.
    ENDIF.
    t64 = t65.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    t70 = t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t61 ).
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
    t72 = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t74 i_rest = t75 ).
    t60 = t72.
    t59 = t60.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = |LINE OF|.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = t83.
    t81 = t82.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    t84 = t85.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t81 ).
    DATA(t91) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t92) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t91 i_rest = t92 ).
    t80 = t89.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t80.
      t79->oval = t93.
    ENDIF.
    t78 = t79.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = |REF TO|.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
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
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t107) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    t105 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t107 i_rest = t108 ).
    t96 = t105.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t96.
      t95->oval = t109.
    ENDIF.
    t94 = t95.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t115 = zcl_lnt_st_combi_module=>alt_prio( i_first = t116 i_second = t117 i_rest = t118 ).
    t77 = t115.
    t76 = t77.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = |LINE OF|.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = CAST zif_lnt_statement_runnable( t59 ).
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t129.
      t128->oval = t130.
    ENDIF.
    t127 = t128.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t131 = t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t124 ).
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t131 ).
    t133 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t135 i_rest = t136 ).
    t123 = t133.
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t123.
      t122->oval = t137.
    ENDIF.
    t121 = t122.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t143) = |REF TO|.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = t143.
    t141 = t142.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA(t146) = CAST zif_lnt_statement_runnable( t59 ).
    IF t146 IS BOUND.
      CREATE OBJECT t145.
      t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t146.
      t145->oval = t147.
    ENDIF.
    t144 = t145.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t141 ).
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t148 ).
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t140 = t150.
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t154 TYPE REF TO object.
      t154 = t140.
      t139->oval = t154.
    ENDIF.
    t138 = t139.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t156.
    t155 = t156.
    DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t155 ).
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = CAST zif_lnt_statement_runnable( t59 ).
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t163 TYPE REF TO object.
      t163 = t162.
      t161->oval = t163.
    ENDIF.
    t160 = t161.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d201_586873752c2d ).
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
    t164 = t165.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t171.
    t170 = t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t164 ).
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t170 ).
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t173 i_second = t174 i_rest = t175 ).
    t159 = t172.
    IF t159 IS BOUND.
      CREATE OBJECT t158.
      t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t159.
      t158->oval = t176.
    ENDIF.
    APPEND t158 TO t157->items.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t138 ).
    DATA(t180) = CAST zlnt_runtime_arra_c22708faf2e3( t155 ).
    t177 = zcl_lnt_st_combi_module=>alt_prio( i_first = t178 i_second = t179 i_rest = t180 ).
    t120 = t177.
    t119 = t120.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t191) = |LIKE|.
    CREATE OBJECT t190.
    t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t190->sval = t191.
    t189 = t190.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA(t194) = CAST zif_lnt_statement_runnable( t76 ).
    IF t194 IS BOUND.
      CREATE OBJECT t193.
      t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t195 TYPE REF TO object.
      t195 = t194.
      t193->oval = t195.
    ENDIF.
    t192 = t193.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t199) = CAST zlnt_runtime_dyna_a429568d5be8( t189 ).
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t192 ).
    DATA(t201) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    t198 = zcl_lnt_st_combi_module=>seq( i_first = t199 i_second = t200 i_rest = t201 ).
    t188 = t198.
    IF t188 IS BOUND.
      CREATE OBJECT t187.
      t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t188.
      t187->oval = t202.
    ENDIF.
    t186 = t187.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t208) = |TYPE|.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = t208.
    t206 = t207.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA(t211) = CAST zif_lnt_statement_runnable( t119 ).
    IF t211 IS BOUND.
      CREATE OBJECT t210.
      t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t212 TYPE REF TO object.
      t212 = t211.
      t210->oval = t212.
    ENDIF.
    t209 = t210.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t214.
    t213 = t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t216) = CAST zlnt_runtime_dyna_a429568d5be8( t206 ).
    DATA(t217) = CAST zlnt_runtime_dyna_a429568d5be8( t209 ).
    DATA(t218) = CAST zlnt_runtime_arra_c22708faf2e3( t213 ).
    t215 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t217 i_rest = t218 ).
    t205 = t215.
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t205.
      t204->oval = t219.
    ENDIF.
    t203 = t204.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    t220 = t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t223) = CAST zlnt_runtime_dyna_a429568d5be8( t186 ).
    DATA(t224) = CAST zlnt_runtime_dyna_a429568d5be8( t203 ).
    DATA(t225) = CAST zlnt_runtime_arra_c22708faf2e3( t220 ).
    t222 = zcl_lnt_st_combi_module=>alt_prio( i_first = t223 i_second = t224 i_rest = t225 ).
    t185 = t222.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t226 TYPE REF TO object.
      t226 = t185.
      t184->oval = t226.
    ENDIF.
    t183 = t184.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t233.
    DATA t234 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t235.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t235 = zcl_lnt_version_module=>release_b8cd.
    DATA(t236) = |v781|.
    t234 = t235->get( p0 = t236 ).
    t233 = t234.
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t237 TYPE REF TO object.
      t237 = t233.
      t232->oval = t237.
    ENDIF.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = CAST zif_lnt_statement_runnable( t38 ).
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t240 TYPE REF TO object.
      t240 = t239.
      t238->oval = t240.
    ENDIF.
    DATA t241 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t241.
    t231 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t232 i_first = t238 i_opts = t241 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t242 TYPE REF TO object.
      t242 = t231.
      t230->oval = t242.
    ENDIF.
    t229 = zcl_lnt_st_combi_module=>opt_prio( i_first = t230 ).
    IF t229 IS BOUND.
      CREATE OBJECT t228.
      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t229.
      t228->oval = t243.
    ENDIF.
    t227 = t228.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t245.
    t244 = t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t247) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t248) = CAST zlnt_runtime_dyna_a429568d5be8( t227 ).
    DATA(t249) = CAST zlnt_runtime_arra_c22708faf2e3( t244 ).
    t246 = zcl_lnt_st_combi_module=>seq( i_first = t247 i_second = t248 i_rest = t249 ).
    t182 = t246.
    t181 = t182.
    DATA(t250) = CAST zif_lnt_statement_runnable( t181 ).
    result = t250.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924.
  ENDMETHOD.
ENDCLASS.
