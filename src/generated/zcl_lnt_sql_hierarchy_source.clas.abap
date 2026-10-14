* TS: src/abap/2_statements/expressions/sql_hierarchy_source.ts:7:1 SQLHierarchySource
CLASS zcl_lnt_sql_hierarchy_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_hierarchy_source IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |ASCENDING|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = |DESCENDING|.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t13 = zcl_lnt_st_combi_module=>alt_prio( i_first = t14 i_second = t15 i_rest = t16 ).
    t4 = t13.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t17 TYPE REF TO object.
      t17 = t4.
      t3->oval = t17.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t20.
    DATA(t21) = |^(?!(?:DEPTH\|MULTIPLE\|ORPHAN\|CACHE\|CYCLE\|LOAD\|GENERATE\|RETAI|.
    t21 = t21 && `N|DEPTH)$)(\/\w+\/)?(\*?\w+~(\/\w+\/)?(\w+|\*)|\w+)$`.
    DATA(t22) = `^(\/[A-Za-z0-9_]+\/)?(\*?[A-Za-z0-9_]+~(\/[A-Za-z0-9_]+\/)?(`.
    t22 = t22 && `[A-Za-z0-9_]+|\*)|[A-Za-z0-9_]+)$`.
    DATA(t23) = |^(?:DEPTH\|MULTIPLE\|ORPHAN\|CACHE\|CYCLE\|LOAD\|GENERATE\|RETAIN\|D|.
    t23 = t23 && |EPTH)$|.
    DATA(t24) = |i|.
    CREATE OBJECT t20 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t22 flags = t24 excluded_pattern = t23.
    t20->source = t21.
    t19 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t20 ).
    t18 = t19.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA(t29) = CAST zif_lnt_statement_runnable( t18 ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t29.
      t28->oval = t30.
    ENDIF.
    t27 = t28.
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
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = |,|.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t40->sval = t41.
    t39 = zcl_lnt_st_combi_module=>opt_prio( i_first = t40 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t42 TYPE REF TO object.
      t42 = t39.
      t38->oval = t42.
    ENDIF.
    APPEND t38 TO t37->items.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t45 i_rest = t46 ).
    t26 = t43.
    t25 = t26.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = |SIBLINGS|.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = |ORDER|.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = t54.
    t52 = t53.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    t55 = t56.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = |BY|.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    APPEND t58 TO t57->items.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |PRIMARY KEY|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    t66 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = CAST zif_lnt_statement_runnable( t25 ).
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t76.
      t75->oval = t77.
    ENDIF.
    t74 = t75.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zif_lnt_statement_runnable( t25 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t83 TYPE REF TO object.
      t83 = t82.
      t81->oval = t83.
    ENDIF.
    t80 = zcl_lnt_st_combi_module=>star_prio( i_first = t81 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t80.
      t79->oval = t84.
    ENDIF.
    t78 = t79.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t89 i_rest = t90 ).
    t73 = t87.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t73.
      t72->oval = t91.
    ENDIF.
    APPEND t72 TO t71->items.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t66 ).
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t92 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t94 i_rest = t95 ).
    t62 = t92.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t62.
      t61->oval = t96.
    ENDIF.
    APPEND t61 TO t60->items.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t98) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t99) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
    DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t99 i_rest = t100 ).
    t48 = t97.
    t47 = t48.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = |CACHE|.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = |FORCE|.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = |OFF|.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = t114.
    t112 = t113.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t115 = t116.
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t115 ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = |ON|.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    APPEND t118 TO t117->items.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t109 ).
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t123) = CAST zlnt_runtime_arra_c22708faf2e3( t115 ).
    t120 = zcl_lnt_st_combi_module=>alt_prio( i_first = t121 i_second = t122 i_rest = t123 ).
    t108 = t120.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t124 TYPE REF TO object.
      t124 = t108.
      t107->oval = t124.
    ENDIF.
    t106 = t107.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    t125 = t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t128) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t129) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t125 ).
    t127 = zcl_lnt_st_combi_module=>seq( i_first = t128 i_second = t129 i_rest = t130 ).
    t102 = t127.
    t101 = t102.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = |RETAIN|.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = t135.
    t133 = t134.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = |NULLS|.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    t139 = t140.
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA(t143) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t142->cval = t143.
    ENDIF.
    APPEND t142 TO t141->items.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t145) = CAST zlnt_runtime_dyna_a429568d5be8( t133 ).
    DATA(t146) = CAST zlnt_runtime_dyna_a429568d5be8( t136 ).
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t139 ).
    t144 = zcl_lnt_st_combi_module=>seq( i_first = t145 i_second = t146 i_rest = t147 ).
    t132 = t144.
    t131 = t132.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t152) = |CYCLE|.
    CREATE OBJECT t151.
    t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t151->sval = t152.
    t150 = t151.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = |BREAKUP|.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = |ERROR|.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = t161.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t165) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t167) = CAST zlnt_runtime_arra_c22708faf2e3( t162 ).
    t164 = zcl_lnt_st_combi_module=>alt_prio( i_first = t165 i_second = t166 i_rest = t167 ).
    t155 = t164.
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t168 TYPE REF TO object.
      t168 = t155.
      t154->oval = t168.
    ENDIF.
    t153 = t154.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    t169 = t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t172) = CAST zlnt_runtime_dyna_a429568d5be8( t150 ).
    DATA(t173) = CAST zlnt_runtime_dyna_a429568d5be8( t153 ).
    DATA(t174) = CAST zlnt_runtime_arra_c22708faf2e3( t169 ).
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t172 i_second = t173 i_rest = t174 ).
    t149 = t171.
    t148 = t149.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t179) = |MULTIPLE|.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t179.
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |PARENTS|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t184.
    t183 = t184.
    DATA(t185) = CAST zlnt_runtime_arra_c22708faf2e3( t183 ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t193) = |NOT|.
    CREATE OBJECT t192.
    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t192->sval = t193.
    t191 = t192.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = |ALLOWED|.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t198.
    t197 = t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t201) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t197 ).
    t199 = zcl_lnt_st_combi_module=>seq( i_first = t200 i_second = t201 i_rest = t202 ).
    t190 = t199.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t203 TYPE REF TO object.
      t203 = t190.
      t189->oval = t203.
    ENDIF.
    t188 = t189.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t209) = |LEAVES|.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |ONLY|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t214.
    t213 = t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t216) = CAST zlnt_runtime_dyna_a429568d5be8( t207 ).
    DATA(t217) = CAST zlnt_runtime_dyna_a429568d5be8( t210 ).
    DATA(t218) = CAST zlnt_runtime_arra_c22708faf2e3( t213 ).
    t215 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t217 i_rest = t218 ).
    t206 = t215.
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t206.
      t205->oval = t219.
    ENDIF.
    t204 = t205.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    t220 = t221.
    DATA(t222) = CAST zlnt_runtime_arra_c22708faf2e3( t220 ).
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = |ALLOWED|.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    APPEND t223 TO t222->items.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t226) = CAST zlnt_runtime_dyna_a429568d5be8( t188 ).
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t204 ).
    DATA(t228) = CAST zlnt_runtime_arra_c22708faf2e3( t220 ).
    t225 = zcl_lnt_st_combi_module=>alt_prio( i_first = t226 i_second = t227 i_rest = t228 ).
    t187 = t225.
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t229 TYPE REF TO object.
      t229 = t187.
      t186->oval = t229.
    ENDIF.
    APPEND t186 TO t185->items.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t231) = CAST zlnt_runtime_dyna_a429568d5be8( t177 ).
    DATA(t232) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t233) = CAST zlnt_runtime_arra_c22708faf2e3( t183 ).
    t230 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t232 i_rest = t233 ).
    t176 = t230.
    t175 = t176.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = |ORPHAN|.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    t236 = t237.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t244) = |IGNORE|.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = t244.
    t242 = t243.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t247) = |ERROR|.
    CREATE OBJECT t246.
    t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t246->sval = t247.
    t245 = t246.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t249.
    t248 = t249.
    DATA(t250) = CAST zlnt_runtime_arra_c22708faf2e3( t248 ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = |ROOT|.
    CREATE OBJECT t251.
    t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t251->sval = t252.
    APPEND t251 TO t250->items.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t254) = CAST zlnt_runtime_dyna_a429568d5be8( t242 ).
    DATA(t255) = CAST zlnt_runtime_dyna_a429568d5be8( t245 ).
    DATA(t256) = CAST zlnt_runtime_arra_c22708faf2e3( t248 ).
    t253 = zcl_lnt_st_combi_module=>alt_prio( i_first = t254 i_second = t255 i_rest = t256 ).
    t241 = t253.
    IF t241 IS BOUND.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t257 TYPE REF TO object.
      t257 = t241.
      t240->oval = t257.
    ENDIF.
    t239 = t240.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    t258 = t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t261) = CAST zlnt_runtime_dyna_a429568d5be8( t236 ).
    DATA(t262) = CAST zlnt_runtime_dyna_a429568d5be8( t239 ).
    DATA(t263) = CAST zlnt_runtime_arra_c22708faf2e3( t258 ).
    t260 = zcl_lnt_st_combi_module=>seq( i_first = t261 i_second = t262 i_rest = t263 ).
    t235 = t260.
    t234 = t235.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t268) = |DEPTH|.
    CREATE OBJECT t267.
    t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t267->sval = t268.
    t266 = t267.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t271 IS BOUND.
      CREATE OBJECT t270.
      t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t270->cval = t271.
    ENDIF.
    t269 = t270.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t273.
    t272 = t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t275) = CAST zlnt_runtime_dyna_a429568d5be8( t266 ).
    DATA(t276) = CAST zlnt_runtime_dyna_a429568d5be8( t269 ).
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t272 ).
    t274 = zcl_lnt_st_combi_module=>seq( i_first = t275 i_second = t276 i_rest = t277 ).
    t265 = t274.
    t264 = t265.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t282) = |LOAD|.
    CREATE OBJECT t281.
    t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t281->sval = t282.
    t280 = t281.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t288) = |INCREMENTAL|.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = t288.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t291) = |BULK|.
    CREATE OBJECT t290.
    t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t290->sval = t291.
    t289 = t290.
    DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t293.
    t292 = t293.
    DATA(t294) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA(t296) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t296 IS BOUND.
      CREATE OBJECT t295.
      t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t295->cval = t296.
    ENDIF.
    APPEND t295 TO t294->items.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t298) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t299) = CAST zlnt_runtime_dyna_a429568d5be8( t289 ).
    DATA(t300) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
    t297 = zcl_lnt_st_combi_module=>alt_prio( i_first = t298 i_second = t299 i_rest = t300 ).
    t285 = t297.
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t301 TYPE REF TO object.
      t301 = t285.
      t284->oval = t301.
    ENDIF.
    t283 = t284.
    DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t303.
    t302 = t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t305) = CAST zlnt_runtime_dyna_a429568d5be8( t280 ).
    DATA(t306) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t307) = CAST zlnt_runtime_arra_c22708faf2e3( t302 ).
    t304 = zcl_lnt_st_combi_module=>seq( i_first = t305 i_second = t306 i_rest = t307 ).
    t279 = t304.
    t278 = t279.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t312) = |GENERATE|.
    CREATE OBJECT t311.
    t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t311->sval = t312.
    t310 = t311.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t315) = |SPANTREE|.
    CREATE OBJECT t314.
    t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t314->sval = t315.
    t313 = t314.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t317.
    t316 = t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t319) = CAST zlnt_runtime_dyna_a429568d5be8( t310 ).
    DATA(t320) = CAST zlnt_runtime_dyna_a429568d5be8( t313 ).
    DATA(t321) = CAST zlnt_runtime_arra_c22708faf2e3( t316 ).
    t318 = zcl_lnt_st_combi_module=>seq( i_first = t319 i_second = t320 i_rest = t321 ).
    t309 = t318.
    t308 = t309.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t326) = |START|.
    CREATE OBJECT t325.
    t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t325->sval = t326.
    t324 = t325.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t329) = |WHERE|.
    CREATE OBJECT t328.
    t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t328->sval = t329.
    t327 = t328.
    DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t331.
    t330 = t331.
    DATA(t332) = CAST zlnt_runtime_arra_c22708faf2e3( t330 ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t333->cval = t334.
    ENDIF.
    APPEND t333 TO t332->items.
    DATA t335 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t336) = CAST zlnt_runtime_dyna_a429568d5be8( t324 ).
    DATA(t337) = CAST zlnt_runtime_dyna_a429568d5be8( t327 ).
    DATA(t338) = CAST zlnt_runtime_arra_c22708faf2e3( t330 ).
    t335 = zcl_lnt_st_combi_module=>seq( i_first = t336 i_second = t337 i_rest = t338 ).
    t323 = t335.
    t322 = t323.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t343) = |PERIOD|.
    CREATE OBJECT t342.
    t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t342->sval = t343.
    t341 = t342.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t346) = |FROM|.
    CREATE OBJECT t345.
    t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t345->sval = t346.
    t344 = t345.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t348.
    t347 = t348.
    DATA(t349) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t351 IS BOUND.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t350->cval = t351.
    ENDIF.
    APPEND t350 TO t349->items.
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t354) = |TO|.
    CREATE OBJECT t353.
    t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t353->sval = t354.
    APPEND t353 TO t352->items.
    DATA(t355) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA(t357) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t357 IS BOUND.
      CREATE OBJECT t356.
      t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t356->cval = t357.
    ENDIF.
    APPEND t356 TO t355->items.
    DATA t358 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t359) = CAST zlnt_runtime_dyna_a429568d5be8( t341 ).
    DATA(t360) = CAST zlnt_runtime_dyna_a429568d5be8( t344 ).
    DATA(t361) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
    t358 = zcl_lnt_st_combi_module=>seq( i_first = t359 i_second = t360 i_rest = t361 ).
    t340 = t358.
    t339 = t340.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t366) = |VALID|.
    CREATE OBJECT t365.
    t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t365->sval = t366.
    t364 = t365.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t369) = |FROM|.
    CREATE OBJECT t368.
    t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t368->sval = t369.
    t367 = t368.
    DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t371.
    t370 = t371.
    DATA(t372) = CAST zlnt_runtime_arra_c22708faf2e3( t370 ).
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA(t374) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t374 IS BOUND.
      CREATE OBJECT t373.
      t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t373->cval = t374.
    ENDIF.
    APPEND t373 TO t372->items.
    DATA(t375) = CAST zlnt_runtime_arra_c22708faf2e3( t370 ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t377) = |TO|.
    CREATE OBJECT t376.
    t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t376->sval = t377.
    APPEND t376 TO t375->items.
    DATA(t378) = CAST zlnt_runtime_arra_c22708faf2e3( t370 ).
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA(t380) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t380 IS BOUND.
      CREATE OBJECT t379.
      t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t379->cval = t380.
    ENDIF.
    APPEND t379 TO t378->items.
    DATA t381 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t382) = CAST zlnt_runtime_dyna_a429568d5be8( t364 ).
    DATA(t383) = CAST zlnt_runtime_dyna_a429568d5be8( t367 ).
    DATA(t384) = CAST zlnt_runtime_arra_c22708faf2e3( t370 ).
    t381 = zcl_lnt_st_combi_module=>seq( i_first = t382 i_second = t383 i_rest = t384 ).
    t363 = t381.
    t362 = t363.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t385.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t389) = |CHILD|.
    CREATE OBJECT t388.
    t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t388->sval = t389.
    t387 = t388.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t392) = |TO|.
    CREATE OBJECT t391.
    t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t391->sval = t392.
    t390 = t391.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t394.
    t393 = t394.
    DATA(t395) = CAST zlnt_runtime_arra_c22708faf2e3( t393 ).
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t397) = |PARENT|.
    CREATE OBJECT t396.
    t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t396->sval = t397.
    APPEND t396 TO t395->items.
    DATA(t398) = CAST zlnt_runtime_arra_c22708faf2e3( t393 ).
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t400) = |ASSOCIATION|.
    CREATE OBJECT t399.
    t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t399->sval = t400.
    APPEND t399 TO t398->items.
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t393 ).
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t402->cval = t403.
    ENDIF.
    APPEND t402 TO t401->items.
    DATA t404 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t405) = CAST zlnt_runtime_dyna_a429568d5be8( t387 ).
    DATA(t406) = CAST zlnt_runtime_dyna_a429568d5be8( t390 ).
    DATA(t407) = CAST zlnt_runtime_arra_c22708faf2e3( t393 ).
    t404 = zcl_lnt_st_combi_module=>seq( i_first = t405 i_second = t406 i_rest = t407 ).
    t386 = t404.
    t385 = t386.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t408.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t412.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA(t415) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d302_ef2b4b46983a ).
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t414->cval = t415.
    ENDIF.
    t413 = t414.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA(t418) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    IF t418 IS BOUND.
      CREATE OBJECT t417.
      t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t417->cval = t418.
    ENDIF.
    t416 = t417.
    DATA t419 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t420 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t420.
    t419 = t420.
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t422) = CAST zlnt_runtime_dyna_a429568d5be8( t413 ).
    DATA(t423) = CAST zlnt_runtime_dyna_a429568d5be8( t416 ).
    DATA(t424) = CAST zlnt_runtime_arra_c22708faf2e3( t419 ).
    t421 = zcl_lnt_st_combi_module=>alt_prio( i_first = t422 i_second = t423 i_rest = t424 ).
    t412 = t421.
    IF t412 IS BOUND.
      CREATE OBJECT t411.
      t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t425 TYPE REF TO object.
      t425 = t412.
      t411->oval = t425.
    ENDIF.
    t410 = t411.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t428.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t433) = |AS|.
    CREATE OBJECT t432.
    t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t432->sval = t433.
    t431 = t432.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA(t436) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
    IF t436 IS BOUND.
      CREATE OBJECT t435.
      t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t435->cval = t436.
    ENDIF.
    t434 = t435.
    DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t438.
    t437 = t438.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t440) = CAST zlnt_runtime_dyna_a429568d5be8( t431 ).
    DATA(t441) = CAST zlnt_runtime_dyna_a429568d5be8( t434 ).
    DATA(t442) = CAST zlnt_runtime_arra_c22708faf2e3( t437 ).
    t439 = zcl_lnt_st_combi_module=>seq( i_first = t440 i_second = t441 i_rest = t442 ).
    t430 = t439.
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t443 TYPE REF TO object.
      t443 = t430.
      t429->oval = t443.
    ENDIF.
    t428 = zcl_lnt_st_combi_module=>opt_prio( i_first = t429 ).
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t444 TYPE REF TO object.
      t444 = t428.
      t427->oval = t444.
    ENDIF.
    t426 = t427.
    DATA t445 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t446.
    t445 = t446.
    DATA t447 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t448) = CAST zlnt_runtime_dyna_a429568d5be8( t410 ).
    DATA(t449) = CAST zlnt_runtime_dyna_a429568d5be8( t426 ).
    DATA(t450) = CAST zlnt_runtime_arra_c22708faf2e3( t445 ).
    t447 = zcl_lnt_st_combi_module=>seq( i_first = t448 i_second = t449 i_rest = t450 ).
    t409 = t447.
    t408 = t409.
    DATA t451 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t452) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    t451 = t452.
    DATA t453 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t453.
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t457) = |LEVELS|.
    CREATE OBJECT t456.
    t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t456->sval = t457.
    t455 = t456.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t459.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t461) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t460 = zcl_lnt_st_combi_module=>tok( i_t = t461 ).
    IF t460 IS BOUND.
      CREATE OBJECT t459.
      t459->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t462 TYPE REF TO object.
      t462 = t460.
      t459->oval = t462.
    ENDIF.
    t458 = t459.
    DATA t463 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t464 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t464.
    t463 = t464.
    DATA(t465) = CAST zlnt_runtime_arra_c22708faf2e3( t463 ).
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t466.
    DATA(t467) = CAST zlnt_runtime_clas_a39833db3295( t451 ).
    IF t467 IS BOUND.
      CREATE OBJECT t466.
      t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t466->cval = t467.
    ENDIF.
    APPEND t466 TO t465->items.
    DATA(t468) = CAST zlnt_runtime_arra_c22708faf2e3( t463 ).
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t469.
    DATA t470 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    DATA t472 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t475) = |,|.
    CREATE OBJECT t474.
    t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t474->sval = t475.
    t473 = t474.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA(t478) = CAST zlnt_runtime_clas_a39833db3295( t451 ).
    IF t478 IS BOUND.
      CREATE OBJECT t477.
      t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t477->cval = t478.
    ENDIF.
    t476 = t477.
    DATA t479 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t480.
    t479 = t480.
    DATA t481 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t482) = CAST zlnt_runtime_dyna_a429568d5be8( t473 ).
    DATA(t483) = CAST zlnt_runtime_dyna_a429568d5be8( t476 ).
    DATA(t484) = CAST zlnt_runtime_arra_c22708faf2e3( t479 ).
    t481 = zcl_lnt_st_combi_module=>seq( i_first = t482 i_second = t483 i_rest = t484 ).
    t472 = t481.
    IF t472 IS BOUND.
      CREATE OBJECT t471.
      t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t485 TYPE REF TO object.
      t485 = t472.
      t471->oval = t485.
    ENDIF.
    t470 = zcl_lnt_st_combi_module=>star( i_first = t471 ).
    IF t470 IS BOUND.
      CREATE OBJECT t469.
      t469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t486 TYPE REF TO object.
      t486 = t470.
      t469->oval = t486.
    ENDIF.
    APPEND t469 TO t468->items.
    DATA(t487) = CAST zlnt_runtime_arra_c22708faf2e3( t463 ).
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    DATA t489 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t490) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t489 = zcl_lnt_st_combi_module=>tok( i_t = t490 ).
    IF t489 IS BOUND.
      CREATE OBJECT t488.
      t488->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t491 TYPE REF TO object.
      t491 = t489.
      t488->oval = t491.
    ENDIF.
    APPEND t488 TO t487->items.
    DATA t492 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t493) = CAST zlnt_runtime_dyna_a429568d5be8( t455 ).
    DATA(t494) = CAST zlnt_runtime_dyna_a429568d5be8( t458 ).
    DATA(t495) = CAST zlnt_runtime_arra_c22708faf2e3( t463 ).
    t492 = zcl_lnt_st_combi_module=>seq( i_first = t493 i_second = t494 i_rest = t495 ).
    t454 = t492.
    t453 = t454.
    DATA t496 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t496.
    DATA t497 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t497.
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    DATA(t500) = CAST zif_lnt_statement_runnable( t453 ).
    IF t500 IS BOUND.
      CREATE OBJECT t499.
      t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t501 TYPE REF TO object.
      t501 = t500.
      t499->oval = t501.
    ENDIF.
    t498 = t499.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t503.
    DATA t504 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t504.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    DATA(t506) = CAST zif_lnt_statement_runnable( t47 ).
    IF t506 IS BOUND.
      CREATE OBJECT t505.
      t505->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t507 TYPE REF TO object.
      t507 = t506.
      t505->oval = t507.
    ENDIF.
    t504 = zcl_lnt_st_combi_module=>opt_prio( i_first = t505 ).
    IF t504 IS BOUND.
      CREATE OBJECT t503.
      t503->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t508 TYPE REF TO object.
      t508 = t504.
      t503->oval = t508.
    ENDIF.
    t502 = t503.
    DATA t509 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t510 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t510.
    t509 = t510.
    DATA(t511) = CAST zlnt_runtime_arra_c22708faf2e3( t509 ).
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    DATA t513 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t513.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA(t515) = CAST zif_lnt_statement_runnable( t101 ).
    IF t515 IS BOUND.
      CREATE OBJECT t514.
      t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t516 TYPE REF TO object.
      t516 = t515.
      t514->oval = t516.
    ENDIF.
    t513 = zcl_lnt_st_combi_module=>opt_prio( i_first = t514 ).
    IF t513 IS BOUND.
      CREATE OBJECT t512.
      t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t517 TYPE REF TO object.
      t517 = t513.
      t512->oval = t517.
    ENDIF.
    APPEND t512 TO t511->items.
    DATA(t518) = CAST zlnt_runtime_arra_c22708faf2e3( t509 ).
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t519.
    DATA t520 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t520.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t521.
    DATA(t522) = CAST zif_lnt_statement_runnable( t131 ).
    IF t522 IS BOUND.
      CREATE OBJECT t521.
      t521->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t523 TYPE REF TO object.
      t523 = t522.
      t521->oval = t523.
    ENDIF.
    t520 = zcl_lnt_st_combi_module=>opt_prio( i_first = t521 ).
    IF t520 IS BOUND.
      CREATE OBJECT t519.
      t519->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t524 TYPE REF TO object.
      t524 = t520.
      t519->oval = t524.
    ENDIF.
    APPEND t519 TO t518->items.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t526) = CAST zlnt_runtime_dyna_a429568d5be8( t498 ).
    DATA(t527) = CAST zlnt_runtime_dyna_a429568d5be8( t502 ).
    DATA(t528) = CAST zlnt_runtime_arra_c22708faf2e3( t509 ).
    t525 = zcl_lnt_st_combi_module=>seq( i_first = t526 i_second = t527 i_rest = t528 ).
    t497 = t525.
    t496 = t497.
    DATA t529 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t529.
    DATA t530 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t530.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA(t533) = CAST zif_lnt_statement_runnable( t385 ).
    IF t533 IS BOUND.
      CREATE OBJECT t532.
      t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t534 TYPE REF TO object.
      t534 = t533.
      t532->oval = t534.
    ENDIF.
    t531 = t532.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t535.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t537.
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t538.
    DATA t539 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t539.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA(t542) = CAST zif_lnt_statement_runnable( t339 ).
    IF t542 IS BOUND.
      CREATE OBJECT t541.
      t541->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t543 TYPE REF TO object.
      t543 = t542.
      t541->oval = t543.
    ENDIF.
    t540 = t541.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t545.
    DATA(t546) = CAST zif_lnt_statement_runnable( t362 ).
    IF t546 IS BOUND.
      CREATE OBJECT t545.
      t545->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t547 TYPE REF TO object.
      t547 = t546.
      t545->oval = t547.
    ENDIF.
    t544 = t545.
    DATA t548 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t549 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t549.
    t548 = t549.
    DATA t550 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t551) = CAST zlnt_runtime_dyna_a429568d5be8( t540 ).
    DATA(t552) = CAST zlnt_runtime_dyna_a429568d5be8( t544 ).
    DATA(t553) = CAST zlnt_runtime_arra_c22708faf2e3( t548 ).
    t550 = zcl_lnt_st_combi_module=>seq( i_first = t551 i_second = t552 i_rest = t553 ).
    t539 = t550.
    IF t539 IS BOUND.
      CREATE OBJECT t538.
      t538->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t554 TYPE REF TO object.
      t554 = t539.
      t538->oval = t554.
    ENDIF.
    t537 = zcl_lnt_st_combi_module=>opt_prio( i_first = t538 ).
    IF t537 IS BOUND.
      CREATE OBJECT t536.
      t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t555 TYPE REF TO object.
      t555 = t537.
      t536->oval = t555.
    ENDIF.
    t535 = t536.
    DATA t556 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t557.
    t556 = t557.
    DATA(t558) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    DATA(t560) = CAST zif_lnt_statement_runnable( t322 ).
    IF t560 IS BOUND.
      CREATE OBJECT t559.
      t559->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t561 TYPE REF TO object.
      t561 = t560.
      t559->oval = t561.
    ENDIF.
    APPEND t559 TO t558->items.
    DATA(t562) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t563.
    DATA t564 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t564.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t565.
    DATA(t566) = CAST zif_lnt_statement_runnable( t47 ).
    IF t566 IS BOUND.
      CREATE OBJECT t565.
      t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t567 TYPE REF TO object.
      t567 = t566.
      t565->oval = t567.
    ENDIF.
    t564 = zcl_lnt_st_combi_module=>opt_prio( i_first = t565 ).
    IF t564 IS BOUND.
      CREATE OBJECT t563.
      t563->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t568 TYPE REF TO object.
      t568 = t564.
      t563->oval = t568.
    ENDIF.
    APPEND t563 TO t562->items.
    DATA(t569) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t570.
    DATA t571 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t571.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t572.
    DATA(t573) = CAST zif_lnt_statement_runnable( t264 ).
    IF t573 IS BOUND.
      CREATE OBJECT t572.
      t572->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t574 TYPE REF TO object.
      t574 = t573.
      t572->oval = t574.
    ENDIF.
    t571 = zcl_lnt_st_combi_module=>opt_prio( i_first = t572 ).
    IF t571 IS BOUND.
      CREATE OBJECT t570.
      t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t575 TYPE REF TO object.
      t575 = t571.
      t570->oval = t575.
    ENDIF.
    APPEND t570 TO t569->items.
    DATA(t576) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    DATA t578 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA(t580) = CAST zif_lnt_statement_runnable( t175 ).
    IF t580 IS BOUND.
      CREATE OBJECT t579.
      t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t581 TYPE REF TO object.
      t581 = t580.
      t579->oval = t581.
    ENDIF.
    t578 = zcl_lnt_st_combi_module=>opt_prio( i_first = t579 ).
    IF t578 IS BOUND.
      CREATE OBJECT t577.
      t577->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t582 TYPE REF TO object.
      t582 = t578.
      t577->oval = t582.
    ENDIF.
    APPEND t577 TO t576->items.
    DATA(t583) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA t585 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t585.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t586.
    DATA(t587) = CAST zif_lnt_statement_runnable( t234 ).
    IF t587 IS BOUND.
      CREATE OBJECT t586.
      t586->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t588 TYPE REF TO object.
      t588 = t587.
      t586->oval = t588.
    ENDIF.
    t585 = zcl_lnt_st_combi_module=>opt_prio( i_first = t586 ).
    IF t585 IS BOUND.
      CREATE OBJECT t584.
      t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t589 TYPE REF TO object.
      t589 = t585.
      t584->oval = t589.
    ENDIF.
    APPEND t584 TO t583->items.
    DATA(t590) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t591.
    DATA t592 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t592.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA(t594) = CAST zif_lnt_statement_runnable( t101 ).
    IF t594 IS BOUND.
      CREATE OBJECT t593.
      t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t595 TYPE REF TO object.
      t595 = t594.
      t593->oval = t595.
    ENDIF.
    t592 = zcl_lnt_st_combi_module=>opt_prio( i_first = t593 ).
    IF t592 IS BOUND.
      CREATE OBJECT t591.
      t591->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t596 TYPE REF TO object.
      t596 = t592.
      t591->oval = t596.
    ENDIF.
    APPEND t591 TO t590->items.
    DATA(t597) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t598.
    DATA t599 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t599.
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t600.
    DATA(t601) = CAST zif_lnt_statement_runnable( t148 ).
    IF t601 IS BOUND.
      CREATE OBJECT t600.
      t600->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t602 TYPE REF TO object.
      t602 = t601.
      t600->oval = t602.
    ENDIF.
    t599 = zcl_lnt_st_combi_module=>opt_prio( i_first = t600 ).
    IF t599 IS BOUND.
      CREATE OBJECT t598.
      t598->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t603 TYPE REF TO object.
      t603 = t599.
      t598->oval = t603.
    ENDIF.
    APPEND t598 TO t597->items.
    DATA(t604) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA t606 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t606.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t607.
    DATA(t608) = CAST zif_lnt_statement_runnable( t278 ).
    IF t608 IS BOUND.
      CREATE OBJECT t607.
      t607->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t609 TYPE REF TO object.
      t609 = t608.
      t607->oval = t609.
    ENDIF.
    t606 = zcl_lnt_st_combi_module=>opt_prio( i_first = t607 ).
    IF t606 IS BOUND.
      CREATE OBJECT t605.
      t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t610 TYPE REF TO object.
      t610 = t606.
      t605->oval = t610.
    ENDIF.
    APPEND t605 TO t604->items.
    DATA(t611) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t613.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t614.
    DATA(t615) = CAST zif_lnt_statement_runnable( t308 ).
    IF t615 IS BOUND.
      CREATE OBJECT t614.
      t614->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t616 TYPE REF TO object.
      t616 = t615.
      t614->oval = t616.
    ENDIF.
    t613 = zcl_lnt_st_combi_module=>opt_prio( i_first = t614 ).
    IF t613 IS BOUND.
      CREATE OBJECT t612.
      t612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t617 TYPE REF TO object.
      t617 = t613.
      t612->oval = t617.
    ENDIF.
    APPEND t612 TO t611->items.
    DATA t618 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t619) = CAST zlnt_runtime_dyna_a429568d5be8( t531 ).
    DATA(t620) = CAST zlnt_runtime_dyna_a429568d5be8( t535 ).
    DATA(t621) = CAST zlnt_runtime_arra_c22708faf2e3( t556 ).
    t618 = zcl_lnt_st_combi_module=>seq( i_first = t619 i_second = t620 i_rest = t621 ).
    t530 = t618.
    t529 = t530.
    DATA t622 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t622.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t623.
    DATA t624 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t624.
    DATA t625 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t625.
    DATA t626 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t626.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t626 = zcl_lnt_version_module=>release_b8cd.
    DATA(t627) = |v750|.
    t625 = t626->get( p0 = t627 ).
    t624 = t625.
    IF t624 IS BOUND.
      CREATE OBJECT t623.
      t623->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t628 TYPE REF TO object.
      t628 = t624.
      t623->oval = t628.
    ENDIF.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    DATA t630 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t630.
    DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t633) = |HIERARCHY|.
    CREATE OBJECT t632.
    t632->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t632->sval = t633.
    t631 = t632.
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t634.
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t635.
    DATA t636 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t637) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t636 = zcl_lnt_st_combi_module=>tok( i_t = t637 ).
    IF t636 IS BOUND.
      CREATE OBJECT t635.
      t635->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t638 TYPE REF TO object.
      t638 = t636.
      t635->oval = t638.
    ENDIF.
    t634 = t635.
    DATA t639 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t640 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t640.
    t639 = t640.
    DATA(t641) = CAST zlnt_runtime_arra_c22708faf2e3( t639 ).
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t643) = |SOURCE|.
    CREATE OBJECT t642.
    t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t642->sval = t643.
    APPEND t642 TO t641->items.
    DATA(t644) = CAST zlnt_runtime_arra_c22708faf2e3( t639 ).
    DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t645.
    DATA(t646) = CAST zif_lnt_statement_runnable( t408 ).
    IF t646 IS BOUND.
      CREATE OBJECT t645.
      t645->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t647 TYPE REF TO object.
      t647 = t646.
      t645->oval = t647.
    ENDIF.
    APPEND t645 TO t644->items.
    DATA(t648) = CAST zlnt_runtime_arra_c22708faf2e3( t639 ).
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t649.
    DATA t650 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t650.
    DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t651.
    DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t652.
    DATA(t653) = CAST zif_lnt_statement_runnable( t496 ).
    IF t653 IS BOUND.
      CREATE OBJECT t652.
      t652->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t654 TYPE REF TO object.
      t654 = t653.
      t652->oval = t654.
    ENDIF.
    t651 = t652.
    DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t655.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    DATA(t657) = CAST zif_lnt_statement_runnable( t529 ).
    IF t657 IS BOUND.
      CREATE OBJECT t656.
      t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t658 TYPE REF TO object.
      t658 = t657.
      t656->oval = t658.
    ENDIF.
    t655 = t656.
    DATA t659 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t660 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t660.
    t659 = t660.
    DATA t661 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t662) = CAST zlnt_runtime_dyna_a429568d5be8( t651 ).
    DATA(t663) = CAST zlnt_runtime_dyna_a429568d5be8( t655 ).
    DATA(t664) = CAST zlnt_runtime_arra_c22708faf2e3( t659 ).
    t661 = zcl_lnt_st_combi_module=>alt_prio( i_first = t662 i_second = t663 i_rest = t664 ).
    t650 = t661.
    IF t650 IS BOUND.
      CREATE OBJECT t649.
      t649->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t665 TYPE REF TO object.
      t665 = t650.
      t649->oval = t665.
    ENDIF.
    APPEND t649 TO t648->items.
    DATA(t666) = CAST zlnt_runtime_arra_c22708faf2e3( t639 ).
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    DATA t668 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t669) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t668 = zcl_lnt_st_combi_module=>tok( i_t = t669 ).
    IF t668 IS BOUND.
      CREATE OBJECT t667.
      t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t670 TYPE REF TO object.
      t670 = t668.
      t667->oval = t670.
    ENDIF.
    APPEND t667 TO t666->items.
    DATA t671 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t672) = CAST zlnt_runtime_dyna_a429568d5be8( t631 ).
    DATA(t673) = CAST zlnt_runtime_dyna_a429568d5be8( t634 ).
    DATA(t674) = CAST zlnt_runtime_arra_c22708faf2e3( t639 ).
    t671 = zcl_lnt_st_combi_module=>seq( i_first = t672 i_second = t673 i_rest = t674 ).
    t630 = t671.
    IF t630 IS BOUND.
      CREATE OBJECT t629.
      t629->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t675 TYPE REF TO object.
      t675 = t630.
      t629->oval = t675.
    ENDIF.
    DATA t676 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t676.
    t622 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t623 i_first = t629 i_opts = t676 ).
    result = t622.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d312_76c7dcb129d0.
  ENDMETHOD.
ENDCLASS.
