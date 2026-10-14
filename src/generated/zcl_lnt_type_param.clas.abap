* TS: src/abap/2_statements/expressions/type_param.ts:7:1 TypeParam
CLASS zcl_lnt_type_param DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_param IMPLEMENTATION.
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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |STANDARD|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |HASHED|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |INDEX|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    APPEND t15 TO t14->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |SORTED|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    APPEND t18 TO t17->items.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |ANY|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    APPEND t21 TO t20->items.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t23 = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t25 i_rest = t26 ).
    t5 = t23.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t5.
      t4->oval = t27.
    ENDIF.
    t3 = t4.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |TABLE|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t31 = t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t34 i_second = t35 i_rest = t36 ).
    t2 = t33.
    t1 = t2.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = CAST zif_lnt_statement_runnable( t1 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t47 TYPE REF TO object.
      t47 = t46.
      t45->oval = t47.
    ENDIF.
    t44 = t45.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = |OF|.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t44 ).
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t51 ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t43 = t53.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t57 TYPE REF TO object.
      t57 = t43.
      t42->oval = t57.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>opt_prio( i_first = t42 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t41.
      t40->oval = t58.
    ENDIF.
    t39 = t40.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = |REF TO|.
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
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t38 = t67.
    t37 = t38.
    DATA t71 TYPE string.
    DATA(t72) = |LINE OF|.
    t71 = t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( t37 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    t78 = t79.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = t71.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = t84.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t82 ).
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t87 = zcl_lnt_st_combi_module=>alt( i_first = t88 i_second = t89 i_rest = t90 ).
    t77 = t87.
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t77.
      t76->oval = t91.
    ENDIF.
    t75 = t76.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
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
    DATA(t101) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt( i_first = t100 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t102 TYPE REF TO object.
      t102 = t99.
      t98->oval = t102.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t105 i_rest = t106 ).
    t74 = t103.
    t73 = t74.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = |LIKE|.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = |LINE OF|.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = t116.
    t114 = zcl_lnt_st_combi_module=>opt( i_first = t115 ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t117 TYPE REF TO object.
      t117 = t114.
      t113->oval = t117.
    ENDIF.
    t112 = t113.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t119.
    t118 = t119.
    DATA(t120) = CAST zlnt_runtime_arra_c22708faf2e3( t118 ).
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    APPEND t121 TO t120->items.
    DATA(t123) = CAST zlnt_runtime_arra_c22708faf2e3( t118 ).
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401 ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    t125 = zcl_lnt_st_combi_module=>opt_prio( i_first = t126 ).
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t128 TYPE REF TO object.
      t128 = t125.
      t124->oval = t128.
    ENDIF.
    APPEND t124 TO t123->items.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t130) = CAST zlnt_runtime_dyna_a429568d5be8( t109 ).
    DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t132) = CAST zlnt_runtime_arra_c22708faf2e3( t118 ).
    t129 = zcl_lnt_st_combi_module=>seq( i_first = t130 i_second = t131 i_rest = t132 ).
    t108 = t129.
    t107 = t108.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t136->cval = t137.
    ENDIF.
    t135 = t136.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t139->cval = t140.
    ENDIF.
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
    t133 = t134.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t150.
    DATA t151 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t152.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t152 = zcl_lnt_version_module=>release_b8cd.
    DATA(t153) = |v770|.
    t151 = t152->get( p0 = t153 ).
    t150 = t151.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t154 TYPE REF TO object.
      t154 = t150.
      t149->oval = t154.
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = |TYPE|.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = |TABLE FOR|.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = t162.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t163 = t164.
    DATA(t165) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    t168 = t169.
    DATA(t170) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t173.
    DATA t174 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t175.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t175 = zcl_lnt_version_module=>release_b8cd.
    DATA(t176) = |v773|.
    t174 = t175->get( p0 = t176 ).
    t173 = t174.
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t177 TYPE REF TO object.
      t177 = t173.
      t172->oval = t177.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |ACTION IMPORT|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = CAST zif_lnt_statement_runnable( t133 ).
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
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t190) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t191) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t192) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    t189 = zcl_lnt_st_combi_module=>seq( i_first = t190 i_second = t191 i_rest = t192 ).
    t179 = t189.
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t193 TYPE REF TO object.
      t193 = t179.
      t178->oval = t193.
    ENDIF.
    DATA t194 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t194.
    DATA(t195) = abap_true.
    IF t195 = abap_true.
      DATA t196 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t196.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t197.
      DATA(t198) = abap_true.
      IF t198 = abap_true.
        DATA(t199) = |OpenABAP|.
        DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t200->has = abap_true.
        t200->value = t199.
        t197 = t200.
      ELSE.
        DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t201.
        t197 = t201.
      ENDIF.
      t196 = NEW zcl_lnt_iver_options( i_also = t197 ).
      t194 = t196.
    ELSE.
      DATA t202 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t202.
      t194 = t202.
    ENDIF.
    t171 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t172 i_first = t178 i_opts = t194 ).
    APPEND t171 TO t170->items.
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t206.
    DATA t207 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t208.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t208 = zcl_lnt_version_module=>release_b8cd.
    DATA(t209) = |v774|.
    t207 = t208->get( p0 = t209 ).
    t206 = t207.
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t210 TYPE REF TO object.
      t210 = t206.
      t205->oval = t210.
    ENDIF.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t215) = |READ LINK|.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = CAST zif_lnt_statement_runnable( t133 ).
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
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t223) = CAST zlnt_runtime_dyna_a429568d5be8( t213 ).
    DATA(t224) = CAST zlnt_runtime_dyna_a429568d5be8( t216 ).
    DATA(t225) = CAST zlnt_runtime_arra_c22708faf2e3( t220 ).
    t222 = zcl_lnt_st_combi_module=>seq( i_first = t223 i_second = t224 i_rest = t225 ).
    t212 = t222.
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t226 TYPE REF TO object.
      t226 = t212.
      t211->oval = t226.
    ENDIF.
    DATA t227 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t227.
    DATA(t228) = abap_true.
    IF t228 = abap_true.
      DATA t229 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t229.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t230.
      DATA(t231) = abap_true.
      IF t231 = abap_true.
        DATA(t232) = |OpenABAP|.
        DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t233->has = abap_true.
        t233->value = t232.
        t230 = t233.
      ELSE.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        t230 = t234.
      ENDIF.
      t229 = NEW zcl_lnt_iver_options( i_also = t230 ).
      t227 = t229.
    ELSE.
      DATA t235 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t235.
      t227 = t235.
    ENDIF.
    t204 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t205 i_first = t211 i_opts = t227 ).
    APPEND t204 TO t203->items.
    DATA(t236) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t239.
    DATA t240 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t241.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t241 = zcl_lnt_version_module=>release_b8cd.
    DATA(t242) = |v787|.
    t240 = t241->get( p0 = t242 ).
    t239 = t240.
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t239.
      t238->oval = t243.
    ENDIF.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t248) = |EVENT|.
    CREATE OBJECT t247.
    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t247->sval = t248.
    t246 = t247.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = CAST zif_lnt_statement_runnable( t133 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t251.
      t250->oval = t252.
    ENDIF.
    t249 = t250.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    t253 = t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t256) = CAST zlnt_runtime_dyna_a429568d5be8( t246 ).
    DATA(t257) = CAST zlnt_runtime_dyna_a429568d5be8( t249 ).
    DATA(t258) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
    t255 = zcl_lnt_st_combi_module=>seq( i_first = t256 i_second = t257 i_rest = t258 ).
    t245 = t255.
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t245.
      t244->oval = t259.
    ENDIF.
    DATA t260 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t260.
    DATA(t261) = abap_true.
    IF t261 = abap_true.
      DATA t262 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t262.
      DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t263.
      DATA(t264) = abap_true.
      IF t264 = abap_true.
        DATA(t265) = |OpenABAP|.
        DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t266->has = abap_true.
        t266->value = t265.
        t263 = t266.
      ELSE.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t267.
        t263 = t267.
      ENDIF.
      t262 = NEW zcl_lnt_iver_options( i_also = t263 ).
      t260 = t262.
    ELSE.
      DATA t268 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t268.
      t260 = t268.
    ENDIF.
    t237 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t238 i_first = t244 i_opts = t260 ).
    APPEND t237 TO t236->items.
    DATA t269 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t270) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    t269 = zcl_lnt_derived_types_module=>derived_types_alt( i_extra = t270 ).
    t167 = t269.
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t271 TYPE REF TO object.
      t271 = t167.
      t166->oval = t271.
    ENDIF.
    APPEND t166 TO t165->items.
    DATA(t272) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t276) = |VALUE IS INITIAL|.
    CREATE OBJECT t275.
    t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t275->sval = t276.
    t274 = zcl_lnt_st_combi_module=>opt_prio( i_first = t275 ).
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t277 TYPE REF TO object.
      t277 = t274.
      t273->oval = t277.
    ENDIF.
    APPEND t273 TO t272->items.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t279) = CAST zlnt_runtime_dyna_a429568d5be8( t157 ).
    DATA(t280) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    t278 = zcl_lnt_st_combi_module=>seq( i_first = t279 i_second = t280 i_rest = t281 ).
    t156 = t278.
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t282 TYPE REF TO object.
      t282 = t156.
      t155->oval = t282.
    ENDIF.
    DATA t283 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t283.
    DATA(t284) = abap_true.
    IF t284 = abap_true.
      DATA t285 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t285.
      DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t286.
      DATA(t287) = abap_true.
      IF t287 = abap_true.
        DATA(t288) = |OpenABAP|.
        DATA(t289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t289->has = abap_true.
        t289->value = t288.
        t286 = t289.
      ELSE.
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t290.
        t286 = t290.
      ENDIF.
      t285 = NEW zcl_lnt_iver_options( i_also = t286 ).
      t283 = t285.
    ELSE.
      DATA t291 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t291.
      t283 = t291.
    ENDIF.
    t148 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t149 i_first = t155 i_opts = t283 ).
    t147 = t148.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = CAST zif_lnt_statement_runnable( t147 ).
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t296 TYPE REF TO object.
      t296 = t295.
      t294->oval = t296.
    ENDIF.
    t293 = t294.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA(t299) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03 ).
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t298->cval = t299.
    ENDIF.
    t297 = t298.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t301.
    t300 = t301.
    DATA(t302) = CAST zlnt_runtime_arra_c22708faf2e3( t300 ).
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t307) = |TYPE|.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = t307.
    t305 = t306.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = CAST zif_lnt_statement_runnable( t1 ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t314 TYPE REF TO object.
      t314 = t313.
      t312->oval = t314.
    ENDIF.
    t311 = t312.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = CAST zif_lnt_statement_runnable( t73 ).
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t317.
      t316->oval = t318.
    ENDIF.
    t315 = t316.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t320.
    t319 = t320.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t322) = CAST zlnt_runtime_dyna_a429568d5be8( t311 ).
    DATA(t323) = CAST zlnt_runtime_dyna_a429568d5be8( t315 ).
    DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    t321 = zcl_lnt_st_combi_module=>alt( i_first = t322 i_second = t323 i_rest = t324 ).
    t310 = t321.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t325 TYPE REF TO object.
      t325 = t310.
      t309->oval = t325.
    ENDIF.
    t308 = t309.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t327.
    t326 = t327.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t329) = CAST zlnt_runtime_dyna_a429568d5be8( t305 ).
    DATA(t330) = CAST zlnt_runtime_dyna_a429568d5be8( t308 ).
    DATA(t331) = CAST zlnt_runtime_arra_c22708faf2e3( t326 ).
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t330 i_rest = t331 ).
    t304 = t328.
    IF t304 IS BOUND.
      CREATE OBJECT t303.
      t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t332 TYPE REF TO object.
      t332 = t304.
      t303->oval = t332.
    ENDIF.
    APPEND t303 TO t302->items.
    DATA(t333) = CAST zlnt_runtime_arra_c22708faf2e3( t300 ).
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA(t335) = CAST zif_lnt_statement_runnable( t107 ).
    IF t335 IS BOUND.
      CREATE OBJECT t334.
      t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t336 TYPE REF TO object.
      t336 = t335.
      t334->oval = t336.
    ENDIF.
    APPEND t334 TO t333->items.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t338) = CAST zlnt_runtime_dyna_a429568d5be8( t293 ).
    DATA(t339) = CAST zlnt_runtime_dyna_a429568d5be8( t297 ).
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t300 ).
    t337 = zcl_lnt_st_combi_module=>alt_prio( i_first = t338 i_second = t339 i_rest = t340 ).
    t292 = t337.
    result = t292.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
  ENDMETHOD.
ENDCLASS.
