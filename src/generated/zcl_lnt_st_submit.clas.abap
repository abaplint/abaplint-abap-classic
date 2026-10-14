* TS: src/abap/2_statements/statements/submit.ts:7:1 Submit
CLASS zcl_lnt_st_submit DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_submit IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |SIGN|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = t3.
    DATA(t13) = t6.
    DATA(t14) = t9.
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |=|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |EQ|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA(t25) = t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = |IN|.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = t27.
    APPEND t26 TO t25->items.
    DATA(t28) = t23.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |NE|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    APPEND t29 TO t28->items.
    DATA(t31) = t23.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |CP|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    APPEND t32 TO t31->items.
    DATA(t34) = t23.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = |GE|.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    APPEND t35 TO t34->items.
    DATA(t37) = t23.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = |LE|.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    APPEND t38 TO t37->items.
    DATA(t40) = t23.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = |INCL|.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    APPEND t41 TO t40->items.
    DATA(t43) = t23.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = |GT|.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = t45.
    APPEND t44 TO t43->items.
    DATA(t46) = t23.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |LT|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    APPEND t47 TO t46->items.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t50) = t17.
    DATA(t51) = t20.
    DATA(t52) = t23.
    t49 = zcl_lnt_st_combi_module=>alt( i_first = t50 i_second = t51 i_rest = t52 ).
    t16 = t49.
    t15 = t16.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = t15.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t57.
      t56->oval = t58.
    ENDIF.
    t55 = t56.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t62 = t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = t55.
    DATA(t66) = t59.
    DATA(t67) = t62.
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t65 i_second = t66 i_rest = t67 ).
    t54 = t64.
    t53 = t54.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = |BETWEEN|.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = t72.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    t76 = t77.
    DATA(t78) = t76.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = |AND|.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = t80.
    APPEND t79 TO t78->items.
    DATA(t81) = t76.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t82->cval = t83.
    ENDIF.
    APPEND t82 TO t81->items.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t85) = t70.
    DATA(t86) = t73.
    DATA(t87) = t76.
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t86 i_rest = t87 ).
    t69 = t84.
    t68 = t69.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = |WITH SELECTION-TABLE|.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    t96 = t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t99) = t90.
    DATA(t100) = t93.
    DATA(t101) = t96.
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t99 i_second = t100 i_rest = t101 ).
    t89 = t98.
    t88 = t89.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = |WITH|.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = t106.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t108->cval = t109.
    ENDIF.
    t107 = t108.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA(t112) = t110.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = t53.
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t117.
      t116->oval = t118.
    ENDIF.
    t115 = t116.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = t68.
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t122 TYPE REF TO object.
      t122 = t121.
      t120->oval = t122.
    ENDIF.
    t119 = t120.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t123 = t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t126) = t115.
    DATA(t127) = t119.
    DATA(t128) = t123.
    t125 = zcl_lnt_st_combi_module=>alt( i_first = t126 i_second = t127 i_rest = t128 ).
    t114 = t125.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t129 TYPE REF TO object.
      t129 = t114.
      t113->oval = t129.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA(t130) = t110.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = t1.
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t135 TYPE REF TO object.
      t135 = t134.
      t133->oval = t135.
    ENDIF.
    t132 = zcl_lnt_st_combi_module=>opt_prio( i_first = t133 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t136 TYPE REF TO object.
      t136 = t132.
      t131->oval = t136.
    ENDIF.
    APPEND t131 TO t130->items.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t138) = t104.
    DATA(t139) = t107.
    DATA(t140) = t110.
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t139 i_rest = t140 ).
    t103 = t137.
    t102 = t103.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = zlnt_runtime_desc_78196487750d=>zlnt_member_d83_c58d804fe3d16b.
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t144->cval = t145.
    ENDIF.
    t143 = t144.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t147->cval = t148.
    ENDIF.
    t146 = t147.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    t149 = t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t152) = t143.
    DATA(t153) = t146.
    DATA(t154) = t149.
    t151 = zcl_lnt_st_combi_module=>alt_prio( i_first = t152 i_second = t153 i_rest = t154 ).
    t142 = t151.
    t141 = t142.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = |VIA JOB|.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t163 = t164.
    DATA(t165) = t163.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t167) = |NUMBER|.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = t167.
    APPEND t166 TO t165->items.
    DATA(t168) = t163.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t170 IS BOUND.
      CREATE OBJECT t169.
      t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t169->cval = t170.
    ENDIF.
    APPEND t169 TO t168->items.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t172) = t157.
    DATA(t173) = t160.
    DATA(t174) = t163.
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t172 i_second = t173 i_rest = t174 ).
    t156 = t171.
    t155 = t156.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t177) = |EXPORTING LIST TO MEMORY|.
    t176 = zcl_lnt_st_combi_module=>str( i_s = t177 ).
    t175 = t176.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |SPOOL PARAMETERS|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t186 = t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t189) = t180.
    DATA(t190) = t183.
    DATA(t191) = t186.
    t188 = zcl_lnt_st_combi_module=>seq( i_first = t189 i_second = t190 i_rest = t191 ).
    t179 = t188.
    t178 = t179.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = |ARCHIVE PARAMETERS|.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t198->cval = t199.
    ENDIF.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t201.
    t200 = t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t203) = t194.
    DATA(t204) = t197.
    DATA(t205) = t200.
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t204 i_rest = t205 ).
    t193 = t202.
    t192 = t193.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = |ARCHIVE MODE|.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = t210.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t215.
    t214 = t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t217) = t208.
    DATA(t218) = t211.
    DATA(t219) = t214.
    t216 = zcl_lnt_st_combi_module=>seq( i_first = t217 i_second = t218 i_rest = t219 ).
    t207 = t216.
    t206 = t207.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = |RECEIVER|.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    t222 = t223.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t226->cval = t227.
    ENDIF.
    t225 = t226.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t229.
    t228 = t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t231) = t222.
    DATA(t232) = t225.
    DATA(t233) = t228.
    t230 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t232 i_rest = t233 ).
    t221 = t230.
    t220 = t221.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = |LINE-SIZE|.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    t236 = t237.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t241 IS BOUND.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t240->cval = t241.
    ENDIF.
    t239 = t240.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t243.
    t242 = t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t245) = t236.
    DATA(t246) = t239.
    DATA(t247) = t242.
    t244 = zcl_lnt_st_combi_module=>seq( i_first = t245 i_second = t246 i_rest = t247 ).
    t235 = t244.
    t234 = t235.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = |LINE-COUNT|.
    CREATE OBJECT t251.
    t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t251->sval = t252.
    t250 = t251.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    t253 = t254.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t257.
    t256 = t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t259) = t250.
    DATA(t260) = t253.
    DATA(t261) = t256.
    t258 = zcl_lnt_st_combi_module=>seq( i_first = t259 i_second = t260 i_rest = t261 ).
    t249 = t258.
    t248 = t249.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t262.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t266) = |USER|.
    CREATE OBJECT t265.
    t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t265->sval = t266.
    t264 = t265.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t268->cval = t269.
    ENDIF.
    t267 = t268.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t271.
    t270 = t271.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t273) = t264.
    DATA(t274) = t267.
    DATA(t275) = t270.
    t272 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t274 i_rest = t275 ).
    t263 = t272.
    t262 = t263.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t276.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t280) = |USING SELECTION-SET|.
    CREATE OBJECT t279.
    t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t279->sval = t280.
    t278 = t279.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t282->cval = t283.
    ENDIF.
    t281 = t282.
    DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t285.
    t284 = t285.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t287) = t278.
    DATA(t288) = t281.
    DATA(t289) = t284.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t287 i_second = t288 i_rest = t289 ).
    t277 = t286.
    t276 = t277.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = |USING SELECTION-SETS OF PROGRAM|.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    t292 = t293.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t296->cval = t297.
    ENDIF.
    t295 = t296.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t299.
    t298 = t299.
    DATA t300 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t301) = t292.
    DATA(t302) = t295.
    DATA(t303) = t298.
    t300 = zcl_lnt_st_combi_module=>seq( i_first = t301 i_second = t302 i_rest = t303 ).
    t291 = t300.
    t290 = t291.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t308) = |USING SELECTION-SCREEN|.
    CREATE OBJECT t307.
    t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t307->sval = t308.
    t306 = t307.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t310->cval = t311.
    ENDIF.
    t309 = t310.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t313.
    t312 = t313.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t315) = t306.
    DATA(t316) = t309.
    DATA(t317) = t312.
    t314 = zcl_lnt_st_combi_module=>seq( i_first = t315 i_second = t316 i_rest = t317 ).
    t305 = t314.
    t304 = t305.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t322) = |WITH FREE SELECTIONS|.
    CREATE OBJECT t321.
    t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t321->sval = t322.
    t320 = t321.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t325 IS BOUND.
      CREATE OBJECT t324.
      t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t324->cval = t325.
    ENDIF.
    t323 = t324.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t327.
    t326 = t327.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t329) = t320.
    DATA(t330) = t323.
    DATA(t331) = t326.
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t330 i_rest = t331 ).
    t319 = t328.
    t318 = t319.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t336) = |NEW LIST IDENTIFICATION|.
    CREATE OBJECT t335.
    t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t335->sval = t336.
    t334 = t335.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA(t339) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t338->cval = t339.
    ENDIF.
    t337 = t338.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t341.
    t340 = t341.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t343) = t334.
    DATA(t344) = t337.
    DATA(t345) = t340.
    t342 = zcl_lnt_st_combi_module=>seq( i_first = t343 i_second = t344 i_rest = t345 ).
    t333 = t342.
    t332 = t333.
    DATA t346 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t350) = |LAYOUT|.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = t350.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA(t353) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t352->cval = t353.
    ENDIF.
    t351 = t352.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t355.
    t354 = t355.
    DATA t356 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t357) = t348.
    DATA(t358) = t351.
    DATA(t359) = t354.
    t356 = zcl_lnt_st_combi_module=>seq( i_first = t357 i_second = t358 i_rest = t359 ).
    t347 = t356.
    t346 = t347.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t364) = |SAP COVER PAGE|.
    CREATE OBJECT t363.
    t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t363->sval = t364.
    t362 = t363.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA(t367) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t367 IS BOUND.
      CREATE OBJECT t366.
      t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t366->cval = t367.
    ENDIF.
    t365 = t366.
    DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t369.
    t368 = t369.
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t371) = t362.
    DATA(t372) = t365.
    DATA(t373) = t368.
    t370 = zcl_lnt_st_combi_module=>seq( i_first = t371 i_second = t372 i_rest = t373 ).
    t361 = t370.
    t360 = t361.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t374.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t375.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t378) = |COPIES|.
    CREATE OBJECT t377.
    t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t377->sval = t378.
    t376 = t377.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA(t381) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t381 IS BOUND.
      CREATE OBJECT t380.
      t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t380->cval = t381.
    ENDIF.
    t379 = t380.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t383.
    t382 = t383.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t385) = t376.
    DATA(t386) = t379.
    DATA(t387) = t382.
    t384 = zcl_lnt_st_combi_module=>seq( i_first = t385 i_second = t386 i_rest = t387 ).
    t375 = t384.
    t374 = t375.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t392) = |DATASET EXPIRATION|.
    CREATE OBJECT t391.
    t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t391->sval = t392.
    t390 = t391.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA(t395) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t395 IS BOUND.
      CREATE OBJECT t394.
      t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t394->cval = t395.
    ENDIF.
    t393 = t394.
    DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t397.
    t396 = t397.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t399) = t390.
    DATA(t400) = t393.
    DATA(t401) = t396.
    t398 = zcl_lnt_st_combi_module=>seq( i_first = t399 i_second = t400 i_rest = t401 ).
    t389 = t398.
    t388 = t389.
    DATA t402 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t402.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t406) = |COVER TEXT|.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = t406.
    t404 = t405.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA(t409) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t409 IS BOUND.
      CREATE OBJECT t408.
      t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t408->cval = t409.
    ENDIF.
    t407 = t408.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t411.
    t410 = t411.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t413) = t404.
    DATA(t414) = t407.
    DATA(t415) = t410.
    t412 = zcl_lnt_st_combi_module=>seq( i_first = t413 i_second = t414 i_rest = t415 ).
    t403 = t412.
    t402 = t403.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t420) = |LIST NAME|.
    CREATE OBJECT t419.
    t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t419->sval = t420.
    t418 = t419.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA(t423) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t423 IS BOUND.
      CREATE OBJECT t422.
      t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t422->cval = t423.
    ENDIF.
    t421 = t422.
    DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t425.
    t424 = t425.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t427) = t418.
    DATA(t428) = t421.
    DATA(t429) = t424.
    t426 = zcl_lnt_st_combi_module=>seq( i_first = t427 i_second = t428 i_rest = t429 ).
    t417 = t426.
    t416 = t417.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t434) = |KEEP IN SPOOL|.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = t434.
    t432 = t433.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA(t437) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t437 IS BOUND.
      CREATE OBJECT t436.
      t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t436->cval = t437.
    ENDIF.
    t435 = t436.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t439.
    t438 = t439.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t441) = t432.
    DATA(t442) = t435.
    DATA(t443) = t438.
    t440 = zcl_lnt_st_combi_module=>seq( i_first = t441 i_second = t442 i_rest = t443 ).
    t431 = t440.
    t430 = t431.
    DATA t444 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t444.
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t445.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t448) = |IMMEDIATELY|.
    CREATE OBJECT t447.
    t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t447->sval = t448.
    t446 = t447.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t450.
    DATA(t451) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t451 IS BOUND.
      CREATE OBJECT t450.
      t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t450->cval = t451.
    ENDIF.
    t449 = t450.
    DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t453.
    t452 = t453.
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t455) = t446.
    DATA(t456) = t449.
    DATA(t457) = t452.
    t454 = zcl_lnt_st_combi_module=>seq( i_first = t455 i_second = t456 i_rest = t457 ).
    t445 = t454.
    t444 = t445.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t458.
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t462) = |DESTINATION|.
    CREATE OBJECT t461.
    t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t461->sval = t462.
    t460 = t461.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA(t465) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t465 IS BOUND.
      CREATE OBJECT t464.
      t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t464->cval = t465.
    ENDIF.
    t463 = t464.
    DATA t466 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t467.
    t466 = t467.
    DATA t468 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t469) = t460.
    DATA(t470) = t463.
    DATA(t471) = t466.
    t468 = zcl_lnt_st_combi_module=>seq( i_first = t469 i_second = t470 i_rest = t471 ).
    t459 = t468.
    t458 = t459.
    DATA t472 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t472.
    DATA t473 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t473.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t476) = |LANGUAGE|.
    CREATE OBJECT t475.
    t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t475->sval = t476.
    t474 = t475.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA(t479) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t479 IS BOUND.
      CREATE OBJECT t478.
      t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t478->cval = t479.
    ENDIF.
    t477 = t478.
    DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t481 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t481.
    t480 = t481.
    DATA t482 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t483) = t474.
    DATA(t484) = t477.
    DATA(t485) = t480.
    t482 = zcl_lnt_st_combi_module=>seq( i_first = t483 i_second = t484 i_rest = t485 ).
    t473 = t482.
    t472 = t473.
    DATA t486 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t486.
    DATA t487 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t487.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t489.
    DATA t490 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t490.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t491.
    DATA(t492) = t102.
    IF t492 IS BOUND.
      CREATE OBJECT t491.
      t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t493 TYPE REF TO object.
      t493 = t492.
      t491->oval = t493.
    ENDIF.
    t490 = zcl_lnt_st_combi_module=>plus_prio( i_first = t491 ).
    IF t490 IS BOUND.
      CREATE OBJECT t489.
      t489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t494 TYPE REF TO object.
      t494 = t490.
      t489->oval = t494.
    ENDIF.
    t488 = t489.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t495.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t496.
    DATA(t497) = t88.
    IF t497 IS BOUND.
      CREATE OBJECT t496.
      t496->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t498 TYPE REF TO object.
      t498 = t497.
      t496->oval = t498.
    ENDIF.
    t495 = t496.
    DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t500 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t500.
    t499 = t500.
    DATA(t501) = t499.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA(t505) = t102.
    IF t505 IS BOUND.
      CREATE OBJECT t504.
      t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t506 TYPE REF TO object.
      t506 = t505.
      t504->oval = t506.
    ENDIF.
    t503 = zcl_lnt_st_combi_module=>plus_prio( i_first = t504 ).
    IF t503 IS BOUND.
      CREATE OBJECT t502.
      t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t507 TYPE REF TO object.
      t507 = t503.
      t502->oval = t507.
    ENDIF.
    APPEND t502 TO t501->items.
    DATA(t508) = t499.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA t510 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA(t512) = t102.
    IF t512 IS BOUND.
      CREATE OBJECT t511.
      t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t513 TYPE REF TO object.
      t513 = t512.
      t511->oval = t513.
    ENDIF.
    t510 = zcl_lnt_st_combi_module=>plus_prio( i_first = t511 ).
    IF t510 IS BOUND.
      CREATE OBJECT t509.
      t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t514 TYPE REF TO object.
      t514 = t510.
      t509->oval = t514.
    ENDIF.
    APPEND t509 TO t508->items.
    DATA(t515) = t499.
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t516.
    DATA(t517) = t178.
    IF t517 IS BOUND.
      CREATE OBJECT t516.
      t516->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t518 TYPE REF TO object.
      t518 = t517.
      t516->oval = t518.
    ENDIF.
    APPEND t516 TO t515->items.
    DATA(t519) = t499.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t520.
    DATA(t521) = t234.
    IF t521 IS BOUND.
      CREATE OBJECT t520.
      t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t522 TYPE REF TO object.
      t522 = t521.
      t520->oval = t522.
    ENDIF.
    APPEND t520 TO t519->items.
    DATA(t523) = t499.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t524.
    DATA(t525) = t248.
    IF t525 IS BOUND.
      CREATE OBJECT t524.
      t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t526 TYPE REF TO object.
      t526 = t525.
      t524->oval = t526.
    ENDIF.
    APPEND t524 TO t523->items.
    DATA(t527) = t499.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t528.
    DATA(t529) = t192.
    IF t529 IS BOUND.
      CREATE OBJECT t528.
      t528->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t530 TYPE REF TO object.
      t530 = t529.
      t528->oval = t530.
    ENDIF.
    APPEND t528 TO t527->items.
    DATA(t531) = t499.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA(t533) = t206.
    IF t533 IS BOUND.
      CREATE OBJECT t532.
      t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t534 TYPE REF TO object.
      t534 = t533.
      t532->oval = t534.
    ENDIF.
    APPEND t532 TO t531->items.
    DATA(t535) = t499.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA(t537) = t220.
    IF t537 IS BOUND.
      CREATE OBJECT t536.
      t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t538 TYPE REF TO object.
      t538 = t537.
      t536->oval = t538.
    ENDIF.
    APPEND t536 TO t535->items.
    DATA(t539) = t499.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA(t541) = t262.
    IF t541 IS BOUND.
      CREATE OBJECT t540.
      t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t542 TYPE REF TO object.
      t542 = t541.
      t540->oval = t542.
    ENDIF.
    APPEND t540 TO t539->items.
    DATA(t543) = t499.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    DATA(t545) = t276.
    IF t545 IS BOUND.
      CREATE OBJECT t544.
      t544->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t546 TYPE REF TO object.
      t546 = t545.
      t544->oval = t546.
    ENDIF.
    APPEND t544 TO t543->items.
    DATA(t547) = t499.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t548.
    DATA(t549) = t290.
    IF t549 IS BOUND.
      CREATE OBJECT t548.
      t548->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t550 TYPE REF TO object.
      t550 = t549.
      t548->oval = t550.
    ENDIF.
    APPEND t548 TO t547->items.
    DATA(t551) = t499.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA(t553) = t430.
    IF t553 IS BOUND.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t554 TYPE REF TO object.
      t554 = t553.
      t552->oval = t554.
    ENDIF.
    APPEND t552 TO t551->items.
    DATA(t555) = t499.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t556.
    DATA(t557) = t360.
    IF t557 IS BOUND.
      CREATE OBJECT t556.
      t556->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t558 TYPE REF TO object.
      t558 = t557.
      t556->oval = t558.
    ENDIF.
    APPEND t556 TO t555->items.
    DATA(t559) = t499.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t560.
    DATA(t561) = t444.
    IF t561 IS BOUND.
      CREATE OBJECT t560.
      t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t562 TYPE REF TO object.
      t562 = t561.
      t560->oval = t562.
    ENDIF.
    APPEND t560 TO t559->items.
    DATA(t563) = t499.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t564.
    DATA(t565) = t346.
    IF t565 IS BOUND.
      CREATE OBJECT t564.
      t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t566 TYPE REF TO object.
      t566 = t565.
      t564->oval = t566.
    ENDIF.
    APPEND t564 TO t563->items.
    DATA(t567) = t499.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA(t569) = t458.
    IF t569 IS BOUND.
      CREATE OBJECT t568.
      t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t570 TYPE REF TO object.
      t570 = t569.
      t568->oval = t570.
    ENDIF.
    APPEND t568 TO t567->items.
    DATA(t571) = t499.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t572.
    DATA(t573) = t402.
    IF t573 IS BOUND.
      CREATE OBJECT t572.
      t572->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t574 TYPE REF TO object.
      t574 = t573.
      t572->oval = t574.
    ENDIF.
    APPEND t572 TO t571->items.
    DATA(t575) = t499.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA(t577) = t416.
    IF t577 IS BOUND.
      CREATE OBJECT t576.
      t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t578 TYPE REF TO object.
      t578 = t577.
      t576->oval = t578.
    ENDIF.
    APPEND t576 TO t575->items.
    DATA(t579) = t499.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t580.
    DATA(t581) = t472.
    IF t581 IS BOUND.
      CREATE OBJECT t580.
      t580->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t582 TYPE REF TO object.
      t582 = t581.
      t580->oval = t582.
    ENDIF.
    APPEND t580 TO t579->items.
    DATA(t583) = t499.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA(t585) = t318.
    IF t585 IS BOUND.
      CREATE OBJECT t584.
      t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t586 TYPE REF TO object.
      t586 = t585.
      t584->oval = t586.
    ENDIF.
    APPEND t584 TO t583->items.
    DATA(t587) = t499.
    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t588.
    DATA(t589) = t332.
    IF t589 IS BOUND.
      CREATE OBJECT t588.
      t588->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t590 TYPE REF TO object.
      t590 = t589.
      t588->oval = t590.
    ENDIF.
    APPEND t588 TO t587->items.
    DATA(t591) = t499.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA(t593) = t304.
    IF t593 IS BOUND.
      CREATE OBJECT t592.
      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t594 TYPE REF TO object.
      t594 = t593.
      t592->oval = t594.
    ENDIF.
    APPEND t592 TO t591->items.
    DATA(t595) = t499.
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t596.
    DATA(t597) = t374.
    IF t597 IS BOUND.
      CREATE OBJECT t596.
      t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t598 TYPE REF TO object.
      t598 = t597.
      t596->oval = t598.
    ENDIF.
    APPEND t596 TO t595->items.
    DATA(t599) = t499.
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t600.
    DATA(t601) = t388.
    IF t601 IS BOUND.
      CREATE OBJECT t600.
      t600->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t602 TYPE REF TO object.
      t602 = t601.
      t600->oval = t602.
    ENDIF.
    APPEND t600 TO t599->items.
    DATA(t603) = t499.
    DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t605) = |TO SAP-SPOOL|.
    CREATE OBJECT t604.
    t604->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t604->sval = t605.
    APPEND t604 TO t603->items.
    DATA(t606) = t499.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t608) = |WITHOUT SPOOL DYNPRO|.
    CREATE OBJECT t607.
    t607->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t607->sval = t608.
    APPEND t607 TO t606->items.
    DATA(t609) = t499.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t611) = |VIA SELECTION-SCREEN|.
    CREATE OBJECT t610.
    t610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t610->sval = t611.
    APPEND t610 TO t609->items.
    DATA(t612) = t499.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    DATA(t614) = t175.
    IF t614 IS BOUND.
      CREATE OBJECT t613.
      t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t615 TYPE REF TO object.
      t615 = t614.
      t613->oval = t615.
    ENDIF.
    APPEND t613 TO t612->items.
    DATA(t616) = t499.
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t617.
    DATA(t618) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    IF t618 IS BOUND.
      CREATE OBJECT t617.
      t617->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t617->cval = t618.
    ENDIF.
    APPEND t617 TO t616->items.
    DATA(t619) = t499.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t620.
    DATA(t621) = t155.
    IF t621 IS BOUND.
      CREATE OBJECT t620.
      t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t622 TYPE REF TO object.
      t622 = t621.
      t620->oval = t622.
    ENDIF.
    APPEND t620 TO t619->items.
    DATA t623 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t624) = t488.
    DATA(t625) = t495.
    DATA(t626) = t499.
    t623 = zcl_lnt_st_combi_module=>per( i_first = t624 i_second = t625 i_rest = t626 ).
    t487 = t623.
    t486 = t487.
    DATA t627 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t627.
    DATA t628 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t631) = |SUBMIT|.
    CREATE OBJECT t630.
    t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t630->sval = t631.
    t629 = t630.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    DATA(t634) = t141.
    IF t634 IS BOUND.
      CREATE OBJECT t633.
      t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t635 TYPE REF TO object.
      t635 = t634.
      t633->oval = t635.
    ENDIF.
    t632 = t633.
    DATA t636 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t637 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t637.
    t636 = t637.
    DATA(t638) = t636.
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t639.
    DATA t640 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t640.
    DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t641.
    DATA(t642) = t486.
    IF t642 IS BOUND.
      CREATE OBJECT t641.
      t641->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t643 TYPE REF TO object.
      t643 = t642.
      t641->oval = t643.
    ENDIF.
    t640 = zcl_lnt_st_combi_module=>opt( i_first = t641 ).
    IF t640 IS BOUND.
      CREATE OBJECT t639.
      t639->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t644 TYPE REF TO object.
      t644 = t640.
      t639->oval = t644.
    ENDIF.
    APPEND t639 TO t638->items.
    DATA t645 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t646) = t629.
    DATA(t647) = t632.
    DATA(t648) = t636.
    t645 = zcl_lnt_st_combi_module=>seq( i_first = t646 i_second = t647 i_rest = t648 ).
    t628 = t645.
    t627 = t628.
    DATA t649 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t649.
    DATA(t650) = |Cloud|.
    DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t651.
    DATA(t652) = t627.
    IF t652 IS BOUND.
      CREATE OBJECT t651.
      t651->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t653 TYPE REF TO object.
      t653 = t652.
      t651->oval = t653.
    ENDIF.
    t649 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t650 i_first = t651 ).
    result = t649.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d628_cfdd2fb07e82.
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
