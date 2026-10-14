* TS: src/abap/2_statements/statements/export.ts:9:1 Export
CLASS zcl_lnt_st_export DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_export IMPLEMENTATION.
  METHOD get_matcher.
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
    DATA(t8) = |FROM|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |=|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = t6.
    DATA(t16) = t9.
    DATA(t17) = t12.
    t14 = zcl_lnt_st_combi_module=>alt_prio( i_first = t15 i_second = t16 i_rest = t17 ).
    t5 = t14.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t5.
      t4->oval = t18.
    ENDIF.
    t3 = t4.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = t3.
    DATA(t26) = t19.
    DATA(t27) = t22.
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t26 i_rest = t27 ).
    t2 = t24.
    t1 = t2.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = |CLIENT|.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = t32.
    t30 = t31.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t39) = t30.
    DATA(t40) = t33.
    DATA(t41) = t36.
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t40 i_rest = t41 ).
    t29 = t38.
    t28 = t29.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = |ID|.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    t50 = t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t53) = t44.
    DATA(t54) = t47.
    DATA(t55) = t50.
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t54 i_rest = t55 ).
    t43 = t52.
    t42 = t43.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = |USING|.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t64 = t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t67) = t58.
    DATA(t68) = t61.
    DATA(t69) = t64.
    t66 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t68 i_rest = t69 ).
    t57 = t66.
    t56 = t57.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
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
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736.
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
    DATA(t82) = t80.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t85.
    DATA(t86) = `^[\w$%\^~]{2}$`.
    DATA(t87) = `^[A-Za-z0-9_$%\^~]{2}$`.
    DATA(t88) = ||.
    CREATE OBJECT t85 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t87 flags = t88.
    t85->source = t86.
    t84 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t85 ).
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t89 TYPE REF TO object.
      t89 = t84.
      t83->oval = t89.
    ENDIF.
    APPEND t83 TO t82->items.
    DATA(t90) = t80.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t92 = zcl_lnt_st_combi_module=>tok( i_t = t93 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t94 TYPE REF TO object.
      t94 = t92.
      t91->oval = t94.
    ENDIF.
    APPEND t91 TO t90->items.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t96) = t72.
    DATA(t97) = t75.
    DATA(t98) = t80.
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t97 i_rest = t98 ).
    t71 = t95.
    t70 = t71.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = |DATA BUFFER|.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    t107 = t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t110) = t101.
    DATA(t111) = t104.
    DATA(t112) = t107.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t100 = t109.
    t99 = t100.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA(t115) = |KeyUser|.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = |MEMORY|.
    CREATE OBJECT t119.
    t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t119->sval = t120.
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t128) = |ID|.
    CREATE OBJECT t127.
    t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t127->sval = t128.
    t126 = t127.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t130->cval = t131.
    ENDIF.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t133.
    t132 = t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t135) = t126.
    DATA(t136) = t129.
    DATA(t137) = t132.
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t136 i_rest = t137 ).
    t125 = t134.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t138 TYPE REF TO object.
      t138 = t125.
      t124->oval = t138.
    ENDIF.
    t123 = zcl_lnt_st_combi_module=>opt( i_first = t124 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t139 TYPE REF TO object.
      t139 = t123.
      t122->oval = t139.
    ENDIF.
    t121 = t122.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t140 = t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t143) = t118.
    DATA(t144) = t121.
    DATA(t145) = t140.
    t142 = zcl_lnt_st_combi_module=>seq( i_first = t143 i_second = t144 i_rest = t145 ).
    t117 = t142.
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t117.
      t116->oval = t146.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t115 i_first = t116 ).
    t113 = t114.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t151) = |INTERNAL TABLE|.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
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
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t158) = t149.
    DATA(t159) = t152.
    DATA(t160) = t155.
    t157 = zcl_lnt_st_combi_module=>seq( i_first = t158 i_second = t159 i_rest = t160 ).
    t148 = t157.
    t147 = t148.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA(t163) = |KeyUser|.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = |SHARED MEMORY|.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = t171.
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t174) = |SHARED BUFFER|.
    CREATE OBJECT t173.
    t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t173->sval = t174.
    t172 = t173.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t176.
    t175 = t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t178) = t169.
    DATA(t179) = t172.
    DATA(t180) = t175.
    t177 = zcl_lnt_st_combi_module=>alt( i_first = t178 i_second = t179 i_rest = t180 ).
    t168 = t177.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t181 TYPE REF TO object.
      t181 = t168.
      t167->oval = t181.
    ENDIF.
    t166 = t167.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = t70.
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t185 TYPE REF TO object.
      t185 = t184.
      t183->oval = t185.
    ENDIF.
    t182 = t183.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t186 = t187.
    DATA(t188) = t186.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = t1.
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t194 TYPE REF TO object.
      t194 = t193.
      t192->oval = t194.
    ENDIF.
    t191 = t192.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA(t197) = t28.
    IF t197 IS BOUND.
      CREATE OBJECT t196.
      t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t198 TYPE REF TO object.
      t198 = t197.
      t196->oval = t198.
    ENDIF.
    t195 = t196.
    DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t200.
    t199 = t200.
    DATA(t201) = t199.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = t42.
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t204 TYPE REF TO object.
      t204 = t203.
      t202->oval = t204.
    ENDIF.
    APPEND t202 TO t201->items.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t206) = t191.
    DATA(t207) = t195.
    DATA(t208) = t199.
    t205 = zcl_lnt_st_combi_module=>per( i_first = t206 i_second = t207 i_rest = t208 ).
    t190 = t205.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t190.
      t189->oval = t209.
    ENDIF.
    APPEND t189 TO t188->items.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t211) = t166.
    DATA(t212) = t182.
    DATA(t213) = t186.
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t211 i_second = t212 i_rest = t213 ).
    t165 = t210.
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t214 TYPE REF TO object.
      t214 = t165.
      t164->oval = t214.
    ENDIF.
    t162 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t163 i_first = t164 ).
    t161 = t162.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA(t217) = |KeyUser|.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = |DATABASE|.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = t222.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = t70.
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t226 TYPE REF TO object.
      t226 = t225.
      t224->oval = t226.
    ENDIF.
    t223 = t224.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t227 = t228.
    DATA(t229) = t227.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = t1.
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t235 TYPE REF TO object.
      t235 = t234.
      t233->oval = t235.
    ENDIF.
    t232 = t233.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = t28.
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t238.
      t237->oval = t239.
    ENDIF.
    t236 = t237.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    t240 = t241.
    DATA(t242) = t240.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA(t244) = t42.
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t245 TYPE REF TO object.
      t245 = t244.
      t243->oval = t245.
    ENDIF.
    APPEND t243 TO t242->items.
    DATA(t246) = t240.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA(t248) = t56.
    IF t248 IS BOUND.
      CREATE OBJECT t247.
      t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t249 TYPE REF TO object.
      t249 = t248.
      t247->oval = t249.
    ENDIF.
    APPEND t247 TO t246->items.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t251) = t232.
    DATA(t252) = t236.
    DATA(t253) = t240.
    t250 = zcl_lnt_st_combi_module=>per( i_first = t251 i_second = t252 i_rest = t253 ).
    t231 = t250.
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t254 TYPE REF TO object.
      t254 = t231.
      t230->oval = t254.
    ENDIF.
    APPEND t230 TO t229->items.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t256) = t220.
    DATA(t257) = t223.
    DATA(t258) = t227.
    t255 = zcl_lnt_st_combi_module=>seq( i_first = t256 i_second = t257 i_rest = t258 ).
    t219 = t255.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t219.
      t218->oval = t259.
    ENDIF.
    t216 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t217 i_first = t218 ).
    t215 = t216.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t260.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA(t264) = t99.
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t265 TYPE REF TO object.
      t265 = t264.
      t263->oval = t265.
    ENDIF.
    t262 = t263.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA(t268) = t113.
    IF t268 IS BOUND.
      CREATE OBJECT t267.
      t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t269 TYPE REF TO object.
      t269 = t268.
      t267->oval = t269.
    ENDIF.
    t266 = t267.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t271.
    t270 = t271.
    DATA(t272) = t270.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = t215.
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t275 TYPE REF TO object.
      t275 = t274.
      t273->oval = t275.
    ENDIF.
    APPEND t273 TO t272->items.
    DATA(t276) = t270.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = t147.
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t279 TYPE REF TO object.
      t279 = t278.
      t277->oval = t279.
    ENDIF.
    APPEND t277 TO t276->items.
    DATA(t280) = t270.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA(t282) = t161.
    IF t282 IS BOUND.
      CREATE OBJECT t281.
      t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t283 TYPE REF TO object.
      t283 = t282.
      t281->oval = t283.
    ENDIF.
    APPEND t281 TO t280->items.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t285) = t262.
    DATA(t286) = t266.
    DATA(t287) = t270.
    t284 = zcl_lnt_st_combi_module=>alt( i_first = t285 i_second = t286 i_rest = t287 ).
    t261 = t284.
    t260 = t261.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t288.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA(t292) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    IF t292 IS BOUND.
      CREATE OBJECT t291.
      t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t291->cval = t292.
    ENDIF.
    t290 = t291.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t294->cval = t295.
    ENDIF.
    t293 = t294.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t297.
    t296 = t297.
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t299) = t290.
    DATA(t300) = t293.
    DATA(t301) = t296.
    t298 = zcl_lnt_st_combi_module=>alt( i_first = t299 i_second = t300 i_rest = t301 ).
    t289 = t298.
    t288 = t289.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t302.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = t288.
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t315 TYPE REF TO object.
      t315 = t314.
      t313->oval = t315.
    ENDIF.
    t312 = t313.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    DATA(t318) = t1.
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t319 TYPE REF TO object.
      t319 = t318.
      t317->oval = t319.
    ENDIF.
    t316 = t317.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t321.
    t320 = t321.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t323) = t312.
    DATA(t324) = t316.
    DATA(t325) = t320.
    t322 = zcl_lnt_st_combi_module=>seq( i_first = t323 i_second = t324 i_rest = t325 ).
    t311 = t322.
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t326 TYPE REF TO object.
      t326 = t311.
      t310->oval = t326.
    ENDIF.
    t309 = t310.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA(t329) = t288.
    IF t329 IS BOUND.
      CREATE OBJECT t328.
      t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t330 TYPE REF TO object.
      t330 = t329.
      t328->oval = t330.
    ENDIF.
    t327 = t328.
    DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t332.
    t331 = t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t334) = t309.
    DATA(t335) = t327.
    DATA(t336) = t331.
    t333 = zcl_lnt_st_combi_module=>alt_prio( i_first = t334 i_second = t335 i_rest = t336 ).
    t308 = t333.
    IF t308 IS BOUND.
      CREATE OBJECT t307.
      t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t337 TYPE REF TO object.
      t337 = t308.
      t307->oval = t337.
    ENDIF.
    t306 = zcl_lnt_st_combi_module=>plus( i_first = t307 ).
    IF t306 IS BOUND.
      CREATE OBJECT t305.
      t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t338 TYPE REF TO object.
      t338 = t306.
      t305->oval = t338.
    ENDIF.
    t304 = t305.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t341 IS BOUND.
      CREATE OBJECT t340.
      t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t340->cval = t341.
    ENDIF.
    t339 = t340.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t343.
    t342 = t343.
    DATA(t344) = t342.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
    IF t346 IS BOUND.
      CREATE OBJECT t345.
      t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t345->cval = t346.
    ENDIF.
    APPEND t345 TO t344->items.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t348) = t304.
    DATA(t349) = t339.
    DATA(t350) = t342.
    t347 = zcl_lnt_st_combi_module=>alt( i_first = t348 i_second = t349 i_rest = t350 ).
    t303 = t347.
    t302 = t303.
    DATA t351 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t351.
    DATA t352 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t352.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t355) = |COMPRESSION|.
    CREATE OBJECT t354.
    t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t354->sval = t355.
    t353 = t354.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA t358 TYPE REF TO zif_lnt_statement_runnable.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t361) = |ON|.
    CREATE OBJECT t360.
    t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t360->sval = t361.
    t359 = t360.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t364) = |OFF|.
    CREATE OBJECT t363.
    t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t363->sval = t364.
    t362 = t363.
    DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t366.
    t365 = t366.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t368) = t359.
    DATA(t369) = t362.
    DATA(t370) = t365.
    t367 = zcl_lnt_st_combi_module=>alt( i_first = t368 i_second = t369 i_rest = t370 ).
    t358 = t367.
    IF t358 IS BOUND.
      CREATE OBJECT t357.
      t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t371 TYPE REF TO object.
      t371 = t358.
      t357->oval = t371.
    ENDIF.
    t356 = t357.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t373.
    t372 = t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t375) = t353.
    DATA(t376) = t356.
    DATA(t377) = t372.
    t374 = zcl_lnt_st_combi_module=>seq( i_first = t375 i_second = t376 i_rest = t377 ).
    t352 = t374.
    t351 = t352.
    DATA t378 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t378.
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t379.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t382) = |CODE PAGE HINT|.
    CREATE OBJECT t381.
    t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t381->sval = t382.
    t380 = t381.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA(t385) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t385 IS BOUND.
      CREATE OBJECT t384.
      t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t384->cval = t385.
    ENDIF.
    t383 = t384.
    DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t387.
    t386 = t387.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t389) = t380.
    DATA(t390) = t383.
    DATA(t391) = t386.
    t388 = zcl_lnt_st_combi_module=>seq( i_first = t389 i_second = t390 i_rest = t391 ).
    t379 = t388.
    t378 = t379.
    DATA t392 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t392.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t395) = |EXPORT|.
    CREATE OBJECT t394.
    t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t394->sval = t395.
    t393 = t394.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA(t398) = t302.
    IF t398 IS BOUND.
      CREATE OBJECT t397.
      t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t399 TYPE REF TO object.
      t399 = t398.
      t397->oval = t399.
    ENDIF.
    t396 = t397.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t401.
    t400 = t401.
    DATA(t402) = t400.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t404) = |TO|.
    CREATE OBJECT t403.
    t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t403->sval = t404.
    APPEND t403 TO t402->items.
    DATA(t405) = t400.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t406.
    DATA(t407) = t260.
    IF t407 IS BOUND.
      CREATE OBJECT t406.
      t406->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t408 TYPE REF TO object.
      t408 = t407.
      t406->oval = t408.
    ENDIF.
    APPEND t406 TO t405->items.
    DATA(t409) = t400.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t411.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA(t413) = t351.
    IF t413 IS BOUND.
      CREATE OBJECT t412.
      t412->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t414 TYPE REF TO object.
      t414 = t413.
      t412->oval = t414.
    ENDIF.
    t411 = zcl_lnt_st_combi_module=>opt( i_first = t412 ).
    IF t411 IS BOUND.
      CREATE OBJECT t410.
      t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t415 TYPE REF TO object.
      t415 = t411.
      t410->oval = t415.
    ENDIF.
    APPEND t410 TO t409->items.
    DATA(t416) = t400.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    DATA(t420) = t378.
    IF t420 IS BOUND.
      CREATE OBJECT t419.
      t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t421 TYPE REF TO object.
      t421 = t420.
      t419->oval = t421.
    ENDIF.
    t418 = zcl_lnt_st_combi_module=>opt( i_first = t419 ).
    IF t418 IS BOUND.
      CREATE OBJECT t417.
      t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t422 TYPE REF TO object.
      t422 = t418.
      t417->oval = t422.
    ENDIF.
    APPEND t417 TO t416->items.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t424) = t393.
    DATA(t425) = t396.
    DATA(t426) = t400.
    t423 = zcl_lnt_st_combi_module=>seq( i_first = t424 i_second = t425 i_rest = t426 ).
    t392 = t423.
    result = t392.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d474_51fcc2a31b27.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
