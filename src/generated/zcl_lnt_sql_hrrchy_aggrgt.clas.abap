* TS: src/abap/2_statements/expressions/sql_hierarchy_aggregate.ts:7:1 SQLHierarchyAggregate
CLASS zcl_lnt_sql_hrrchy_aggrgt DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_hrrchy_aggrgt IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |START|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |WHERE|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |JOIN|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |ON|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    APPEND t29 TO t28->items.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    APPEND t32 TO t31->items.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t19 = t34.
    t18 = t19.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = |AS|.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = t45.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    APPEND t49 TO t48->items.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t53 i_rest = t54 ).
    t39 = t51.
    t38 = t39.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = |MEASURES|.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = CAST zif_lnt_statement_runnable( t38 ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t63 TYPE REF TO object.
      t63 = t62.
      t61->oval = t63.
    ENDIF.
    t60 = t61.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t64 = t65.
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t73) = |,|.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = t73.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = CAST zif_lnt_statement_runnable( t38 ).
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t76.
      t75->oval = t77.
    ENDIF.
    t74 = t75.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t71 ).
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t70 = t80.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t70.
      t69->oval = t84.
    ENDIF.
    t68 = zcl_lnt_st_combi_module=>star( i_first = t69 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t85 TYPE REF TO object.
      t85 = t68.
      t67->oval = t85.
    ENDIF.
    APPEND t67 TO t66->items.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t89) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t88 i_rest = t89 ).
    t56 = t86.
    t55 = t56.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |WHERE|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t97 IS BOUND.
      CREATE OBJECT t96.
      t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t96->cval = t97.
    ENDIF.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t98 = t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t102) = CAST zlnt_runtime_dyna_a429568d5be8( t95 ).
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t98 ).
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t102 i_rest = t103 ).
    t91 = t100.
    t90 = t91.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = |SUBTOTAL|.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106 = t107.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = |BALANCE|.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    t112 = t113.
    DATA(t114) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = |NOT|.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = |MATCHED|.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t123 = t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t117 ).
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t120 ).
    DATA(t128) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t127 i_rest = t128 ).
    t116 = t125.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t129 TYPE REF TO object.
      t129 = t116.
      t115->oval = t129.
    ENDIF.
    APPEND t115 TO t114->items.
    DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t132) = |TOTAL|.
    CREATE OBJECT t131.
    t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t131->sval = t132.
    APPEND t131 TO t130->items.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t109 ).
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    t133 = zcl_lnt_st_combi_module=>alt_prio( i_first = t134 i_second = t135 i_rest = t136 ).
    t105 = t133.
    t104 = t105.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t141) = |SOURCE|.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = t141.
    t139 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t146.
    t145 = t146.
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = CAST zif_lnt_statement_runnable( t1 ).
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t152 TYPE REF TO object.
      t152 = t151.
      t150->oval = t152.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>opt_prio( i_first = t150 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t153 TYPE REF TO object.
      t153 = t149.
      t148->oval = t153.
    ENDIF.
    APPEND t148 TO t147->items.
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = CAST zif_lnt_statement_runnable( t18 ).
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t158.
      t157->oval = t159.
    ENDIF.
    t156 = zcl_lnt_st_combi_module=>opt_prio( i_first = t157 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t160 TYPE REF TO object.
      t160 = t156.
      t155->oval = t160.
    ENDIF.
    APPEND t155 TO t154->items.
    DATA(t161) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA(t163) = CAST zif_lnt_statement_runnable( t55 ).
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t164 TYPE REF TO object.
      t164 = t163.
      t162->oval = t164.
    ENDIF.
    APPEND t162 TO t161->items.
    DATA(t165) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = CAST zif_lnt_statement_runnable( t90 ).
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t170 TYPE REF TO object.
      t170 = t169.
      t168->oval = t170.
    ENDIF.
    t167 = zcl_lnt_st_combi_module=>opt_prio( i_first = t168 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t171 TYPE REF TO object.
      t171 = t167.
      t166->oval = t171.
    ENDIF.
    APPEND t166 TO t165->items.
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t179) = |WITH|.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t179.
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = CAST zif_lnt_statement_runnable( t104 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t183 TYPE REF TO object.
      t183 = t182.
      t181->oval = t183.
    ENDIF.
    t180 = t181.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t185.
    t184 = t185.
    DATA(t186) = CAST zlnt_runtime_arra_c22708faf2e3( t184 ).
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t193) = |WITH|.
    CREATE OBJECT t192.
    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t192->sval = t193.
    t191 = t192.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = CAST zif_lnt_statement_runnable( t104 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t197 TYPE REF TO object.
      t197 = t196.
      t195->oval = t197.
    ENDIF.
    t194 = t195.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t199.
    t198 = t199.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t201) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t202) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t198 ).
    t200 = zcl_lnt_st_combi_module=>seq( i_first = t201 i_second = t202 i_rest = t203 ).
    t190 = t200.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t204 TYPE REF TO object.
      t204 = t190.
      t189->oval = t204.
    ENDIF.
    t188 = zcl_lnt_st_combi_module=>star( i_first = t189 ).
    IF t188 IS BOUND.
      CREATE OBJECT t187.
      t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t205 TYPE REF TO object.
      t205 = t188.
      t187->oval = t205.
    ENDIF.
    APPEND t187 TO t186->items.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t177 ).
    DATA(t208) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t209) = CAST zlnt_runtime_arra_c22708faf2e3( t184 ).
    t206 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t208 i_rest = t209 ).
    t176 = t206.
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t210 TYPE REF TO object.
      t210 = t176.
      t175->oval = t210.
    ENDIF.
    t174 = zcl_lnt_st_combi_module=>opt_prio( i_first = t175 ).
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t211 TYPE REF TO object.
      t211 = t174.
      t173->oval = t211.
    ENDIF.
    APPEND t173 TO t172->items.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t213) = CAST zlnt_runtime_dyna_a429568d5be8( t139 ).
    DATA(t214) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t215) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    t212 = zcl_lnt_st_combi_module=>seq( i_first = t213 i_second = t214 i_rest = t215 ).
    t138 = t212.
    t137 = t138.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t220) = |HIERARCHY_DESCENDANTS_AGGREGATE|.
    CREATE OBJECT t219.
    t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t219->sval = t220.
    t218 = t219.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t223) = |HIERARCHY_ANCESTORS_AGGREGATE|.
    CREATE OBJECT t222.
    t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t222->sval = t223.
    t221 = t222.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t225.
    t224 = t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t218 ).
    DATA(t228) = CAST zlnt_runtime_dyna_a429568d5be8( t221 ).
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t224 ).
    t226 = zcl_lnt_st_combi_module=>alt_prio( i_first = t227 i_second = t228 i_rest = t229 ).
    t217 = t226.
    t216 = t217.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t232.
    DATA t233 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t234.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t234 = zcl_lnt_version_module=>release_b8cd.
    DATA(t235) = |v750|.
    t233 = t234->get( p0 = t235 ).
    t232 = t233.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t232.
      t231->oval = t236.
    ENDIF.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = CAST zif_lnt_statement_runnable( t216 ).
    IF t241 IS BOUND.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t242 TYPE REF TO object.
      t242 = t241.
      t240->oval = t242.
    ENDIF.
    t239 = t240.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t246) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t245 = zcl_lnt_st_combi_module=>tok( i_t = t246 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t247 TYPE REF TO object.
      t247 = t245.
      t244->oval = t247.
    ENDIF.
    t243 = t244.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t249.
    t248 = t249.
    DATA(t250) = CAST zlnt_runtime_arra_c22708faf2e3( t248 ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = CAST zif_lnt_statement_runnable( t137 ).
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t253 TYPE REF TO object.
      t253 = t252.
      t251->oval = t253.
    ENDIF.
    APPEND t251 TO t250->items.
    DATA(t254) = CAST zlnt_runtime_arra_c22708faf2e3( t248 ).
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t257) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t256 = zcl_lnt_st_combi_module=>tok( i_t = t257 ).
    IF t256 IS BOUND.
      CREATE OBJECT t255.
      t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t258 TYPE REF TO object.
      t258 = t256.
      t255->oval = t258.
    ENDIF.
    APPEND t255 TO t254->items.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t260) = CAST zlnt_runtime_dyna_a429568d5be8( t239 ).
    DATA(t261) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t248 ).
    t259 = zcl_lnt_st_combi_module=>seq( i_first = t260 i_second = t261 i_rest = t262 ).
    t238 = t259.
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t263 TYPE REF TO object.
      t263 = t238.
      t237->oval = t263.
    ENDIF.
    DATA t264 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t264.
    t230 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t231 i_first = t237 i_opts = t264 ).
    result = t230.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d311_e91cc88fe129.
  ENDMETHOD.
ENDCLASS.
