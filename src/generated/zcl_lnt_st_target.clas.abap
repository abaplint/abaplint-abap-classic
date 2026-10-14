* TS: src/abap/2_statements/expressions/target.ts:9:1 Target
CLASS zcl_lnt_st_target DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_target IMPLEMENTATION.
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
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t13 = zcl_lnt_st_combi_module=>seq( i_first = t14 i_second = t15 i_rest = t16 ).
    t2 = t13.
    t1 = t2.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t21 = zcl_lnt_st_combi_module=>tok( i_t = t22 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t21.
      t20->oval = t23.
    ENDIF.
    t19 = t20.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t27 = t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t18 = t29.
    t17 = t18.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zif_lnt_statement_runnable( zcl_lnt_dynamic_access_module=>dyn_attr( ) ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t43 TYPE REF TO object.
      t43 = t42.
      t41->oval = t43.
    ENDIF.
    t40 = t41.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t44 = t45.
    DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zif_lnt_statement_runnable( t1 ).
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t48.
      t47->oval = t49.
    ENDIF.
    APPEND t47 TO t46->items.
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t53 = t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    t55 = zcl_lnt_dynamic_access_module=>dyn_comp( i_inside = t56 ).
    t52 = t55.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t57 TYPE REF TO object.
      t57 = t52.
      t51->oval = t57.
    ENDIF.
    APPEND t51 TO t50->items.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zif_lnt_statement_runnable( t17 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t60.
      t59->oval = t61.
    ENDIF.
    APPEND t59 TO t58->items.
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d99_35801e5718dec9 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    APPEND t63 TO t62->items.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    t65 = zcl_lnt_st_combi_module=>alt_prio( i_first = t66 i_second = t67 i_rest = t68 ).
    t36 = t65.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t36.
      t35->oval = t69.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>star_prio( i_first = t35 ).
    t33 = t34.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t78) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d34_abe50883ec07f8 ).
    t77 = zcl_lnt_st_combi_module=>tok( i_t = t78 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t79 TYPE REF TO object.
      t79 = t77.
      t76->oval = t79.
    ENDIF.
    t75 = t76.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t80 = t81.
    DATA(t82) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947 ).
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    APPEND t83 TO t82->items.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t87 i_rest = t88 ).
    t71 = t85.
    t70 = t71.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t92->cval = t93.
    ENDIF.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d218_79f2a1395386 ).
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    t97 = t98.
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zif_lnt_statement_runnable( t70 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t102 TYPE REF TO object.
      t102 = t101.
      t100->oval = t102.
    ENDIF.
    APPEND t100 TO t99->items.
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d196_75035ca40b78 ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    APPEND t104 TO t103->items.
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d184_78321de353a4 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    APPEND t107 TO t106->items.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    t109 = zcl_lnt_st_combi_module=>alt_prio( i_first = t110 i_second = t111 i_rest = t112 ).
    t90 = t109.
    t89 = t90.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    t117 = zcl_lnt_st_combi_module=>opt_prio( i_first = t118 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t117.
      t116->oval = t120.
    ENDIF.
    t115 = t116.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba ).
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    t123 = zcl_lnt_st_combi_module=>opt_prio( i_first = t124 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t123.
      t122->oval = t126.
    ENDIF.
    t121 = t122.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t128.
    t127 = t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t130) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t132) = CAST zlnt_runtime_arra_c22708faf2e3( t127 ).
    t129 = zcl_lnt_st_combi_module=>seq( i_first = t130 i_second = t131 i_rest = t132 ).
    t114 = t129.
    t113 = t114.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64 ).
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
    DATA(t140) = CAST zif_lnt_statement_runnable( t113 ).
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t141 TYPE REF TO object.
      t141 = t140.
      t139->oval = t141.
    ENDIF.
    t138 = t139.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t143.
    t142 = t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t135 ).
    DATA(t146) = CAST zlnt_runtime_dyna_a429568d5be8( t138 ).
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
    t144 = zcl_lnt_st_combi_module=>alt_prio( i_first = t145 i_second = t146 i_rest = t147 ).
    t134 = t144.
    t133 = t134.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    t152 = t153.
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
    DATA(t162) = CAST zif_lnt_statement_runnable( t89 ).
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
    DATA(t166) = CAST zif_lnt_statement_runnable( t33 ).
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t166.
      t165->oval = t167.
    ENDIF.
    t164 = t165.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    t168 = t169.
    DATA(t170) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = CAST zif_lnt_statement_runnable( t133 ).
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t173 TYPE REF TO object.
      t173 = t172.
      t171->oval = t173.
    ENDIF.
    APPEND t171 TO t170->items.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t175) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
    DATA(t176) = CAST zlnt_runtime_dyna_a429568d5be8( t164 ).
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    t174 = zcl_lnt_st_combi_module=>seq( i_first = t175 i_second = t176 i_rest = t177 ).
    t159 = t174.
    IF t159 IS BOUND.
      CREATE OBJECT t158.
      t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t178 TYPE REF TO object.
      t178 = t159.
      t158->oval = t178.
    ENDIF.
    APPEND t158 TO t157->items.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t149 ).
    DATA(t181) = CAST zlnt_runtime_dyna_a429568d5be8( t152 ).
    DATA(t182) = CAST zlnt_runtime_arra_c22708faf2e3( t155 ).
    t179 = zcl_lnt_st_combi_module=>alt_prio( i_first = t180 i_second = t181 i_rest = t182 ).
    t148 = t179.
    result = t148.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
  ENDMETHOD.
ENDCLASS.
