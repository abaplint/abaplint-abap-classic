* TS: src/abap/2_statements/statements/read_entities.ts:8:1 ReadEntities
CLASS zcl_lnt_st_read_entities DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_read_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |FROM|.
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
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |FIELDS|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t22 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t22.
      t21->oval = t24.
    ENDIF.
    t20 = t21.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA(t27) = t25.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t29 = zcl_lnt_st_combi_module=>plus( i_first = t30 ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t29.
      t28->oval = t32.
    ENDIF.
    APPEND t28 TO t27->items.
    DATA(t33) = t25.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t35 = zcl_lnt_st_combi_module=>tok( i_t = t36 ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t35.
      t34->oval = t37.
    ENDIF.
    APPEND t34 TO t33->items.
    DATA(t38) = t25.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = |WITH|.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    APPEND t39 TO t38->items.
    DATA(t41) = t25.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    APPEND t42 TO t41->items.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = t17.
    DATA(t46) = t20.
    DATA(t47) = t25.
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t16 = t44.
    t15 = t16.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = |ALL FIELDS WITH|.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t54->cval = t55.
    ENDIF.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t56 = t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t59) = t50.
    DATA(t60) = t53.
    DATA(t61) = t56.
    t58 = zcl_lnt_st_combi_module=>seq( i_first = t59 i_second = t60 i_rest = t61 ).
    t49 = t58.
    t48 = t49.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = |RESULT|.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    t67 = t68.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    t70 = t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = t64.
    DATA(t74) = t67.
    DATA(t75) = t70.
    t72 = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t74 i_rest = t75 ).
    t63 = t72.
    t62 = t63.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = |FAILED|.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = t80.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t82->cval = t83.
    ENDIF.
    t81 = t82.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t85.
    t84 = t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t87) = t78.
    DATA(t88) = t81.
    DATA(t89) = t84.
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t88 i_rest = t89 ).
    t77 = t86.
    t76 = t77.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |REPORTED|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
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
    DATA(t101) = t92.
    DATA(t102) = t95.
    DATA(t103) = t98.
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t102 i_rest = t103 ).
    t91 = t100.
    t90 = t91.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = |EXECUTE|.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106 = t107.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    t112 = t113.
    DATA(t114) = t112.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = t1.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t117 TYPE REF TO object.
      t117 = t116.
      t115->oval = t117.
    ENDIF.
    APPEND t115 TO t114->items.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t119) = t106.
    DATA(t120) = t109.
    DATA(t121) = t112.
    t118 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t120 i_rest = t121 ).
    t105 = t118.
    t104 = t105.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = |BY|.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5.
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t133->cval = t134.
    ENDIF.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    t135 = t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t138) = t129.
    DATA(t139) = t132.
    DATA(t140) = t135.
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t139 i_rest = t140 ).
    t128 = t137.
    IF t128 IS BOUND.
      CREATE OBJECT t127.
      t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t141 TYPE REF TO object.
      t141 = t128.
      t127->oval = t141.
    ENDIF.
    t126 = zcl_lnt_st_combi_module=>opt( i_first = t127 ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t142 TYPE REF TO object.
      t142 = t126.
      t125->oval = t142.
    ENDIF.
    t124 = t125.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = t15.
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t149 TYPE REF TO object.
      t149 = t148.
      t147->oval = t149.
    ENDIF.
    t146 = t147.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = t1.
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t153 TYPE REF TO object.
      t153 = t152.
      t151->oval = t153.
    ENDIF.
    t150 = t151.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t155.
    t154 = t155.
    DATA(t156) = t154.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = t48.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t158.
      t157->oval = t159.
    ENDIF.
    APPEND t157 TO t156->items.
    DATA(t160) = t154.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = t104.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t163 TYPE REF TO object.
      t163 = t162.
      t161->oval = t163.
    ENDIF.
    APPEND t161 TO t160->items.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t165) = t146.
    DATA(t166) = t150.
    DATA(t167) = t154.
    t164 = zcl_lnt_st_combi_module=>alt( i_first = t165 i_second = t166 i_rest = t167 ).
    t145 = t164.
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t168 TYPE REF TO object.
      t168 = t145.
      t144->oval = t168.
    ENDIF.
    t143 = t144.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    t169 = t170.
    DATA(t171) = t169.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = t62.
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t175.
      t174->oval = t176.
    ENDIF.
    t173 = zcl_lnt_st_combi_module=>opt_prio( i_first = t174 ).
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t177 TYPE REF TO object.
      t177 = t173.
      t172->oval = t177.
    ENDIF.
    APPEND t172 TO t171->items.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t179) = t124.
    DATA(t180) = t143.
    DATA(t181) = t169.
    t178 = zcl_lnt_st_combi_module=>seq( i_first = t179 i_second = t180 i_rest = t181 ).
    t123 = t178.
    t122 = t123.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t186) = |ENTITY|.
    CREATE OBJECT t185.
    t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t185->sval = t186.
    t184 = t185.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t188->cval = t189.
    ENDIF.
    t187 = t188.
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t191.
    t190 = t191.
    DATA(t192) = t190.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = t122.
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t197 TYPE REF TO object.
      t197 = t196.
      t195->oval = t197.
    ENDIF.
    t194 = zcl_lnt_st_combi_module=>plus( i_first = t195 ).
    IF t194 IS BOUND.
      CREATE OBJECT t193.
      t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t198 TYPE REF TO object.
      t198 = t194.
      t193->oval = t198.
    ENDIF.
    APPEND t193 TO t192->items.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t200) = t184.
    DATA(t201) = t187.
    DATA(t202) = t190.
    t199 = zcl_lnt_st_combi_module=>seq( i_first = t200 i_second = t201 i_rest = t202 ).
    t183 = t199.
    t182 = t183.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t207) = |ENTITIES OF|.
    CREATE OBJECT t206.
    t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t206->sval = t207.
    t205 = t206.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t209->cval = t210.
    ENDIF.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    t211 = t212.
    DATA(t213) = t211.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t217) = |IN LOCAL MODE|.
    CREATE OBJECT t216.
    t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t216->sval = t217.
    t215 = zcl_lnt_st_combi_module=>opt( i_first = t216 ).
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t218 TYPE REF TO object.
      t218 = t215.
      t214->oval = t218.
    ENDIF.
    APPEND t214 TO t213->items.
    DATA(t219) = t211.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = t182.
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t224 TYPE REF TO object.
      t224 = t223.
      t222->oval = t224.
    ENDIF.
    t221 = zcl_lnt_st_combi_module=>plus( i_first = t222 ).
    IF t221 IS BOUND.
      CREATE OBJECT t220.
      t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t225 TYPE REF TO object.
      t225 = t221.
      t220->oval = t225.
    ENDIF.
    APPEND t220 TO t219->items.
    DATA(t226) = t211.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = |LINK|.
    CREATE OBJECT t232.
    t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t232->sval = t233.
    t231 = t232.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    IF t236 IS BOUND.
      CREATE OBJECT t235.
      t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t235->cval = t236.
    ENDIF.
    t234 = t235.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t238.
    t237 = t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t240) = t231.
    DATA(t241) = t234.
    DATA(t242) = t237.
    t239 = zcl_lnt_st_combi_module=>seq( i_first = t240 i_second = t241 i_rest = t242 ).
    t230 = t239.
    IF t230 IS BOUND.
      CREATE OBJECT t229.
      t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t230.
      t229->oval = t243.
    ENDIF.
    t228 = zcl_lnt_st_combi_module=>opt_prio( i_first = t229 ).
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t244 TYPE REF TO object.
      t244 = t228.
      t227->oval = t244.
    ENDIF.
    APPEND t227 TO t226->items.
    DATA(t245) = t211.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = t76.
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
    DATA(t256) = t90.
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
    DATA(t261) = t250.
    DATA(t262) = t254.
    DATA(t263) = t258.
    t260 = zcl_lnt_st_combi_module=>per( i_first = t261 i_second = t262 i_rest = t263 ).
    t249 = t260.
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t264 TYPE REF TO object.
      t264 = t249.
      t248->oval = t264.
    ENDIF.
    t247 = zcl_lnt_st_combi_module=>opt_prio( i_first = t248 ).
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t265 TYPE REF TO object.
      t265 = t247.
      t246->oval = t265.
    ENDIF.
    APPEND t246 TO t245->items.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t267) = t205.
    DATA(t268) = t208.
    DATA(t269) = t211.
    t266 = zcl_lnt_st_combi_module=>seq( i_first = t267 i_second = t268 i_rest = t269 ).
    t204 = t266.
    t203 = t204.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t274) = |BY|.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5.
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t276->cval = t277.
    ENDIF.
    t275 = t276.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t279.
    t278 = t279.
    DATA(t280) = t278.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA(t282) = t48.
    IF t282 IS BOUND.
      CREATE OBJECT t281.
      t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t283 TYPE REF TO object.
      t283 = t282.
      t281->oval = t283.
    ENDIF.
    APPEND t281 TO t280->items.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t285) = t272.
    DATA(t286) = t275.
    DATA(t287) = t278.
    t284 = zcl_lnt_st_combi_module=>seq( i_first = t285 i_second = t286 i_rest = t287 ).
    t271 = t284.
    t270 = t271.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t288.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t292) = |BY|.
    CREATE OBJECT t291.
    t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t291->sval = t292.
    t290 = t291.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5.
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
    DATA(t298) = t296.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA(t300) = t15.
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t301 TYPE REF TO object.
      t301 = t300.
      t299->oval = t301.
    ENDIF.
    APPEND t299 TO t298->items.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t303) = t290.
    DATA(t304) = t293.
    DATA(t305) = t296.
    t302 = zcl_lnt_st_combi_module=>seq( i_first = t303 i_second = t304 i_rest = t305 ).
    t289 = t302.
    t288 = t289.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
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
    DATA(t313) = t48.
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
    DATA(t317) = t15.
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
    DATA(t321) = t319.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = t1.
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t324 TYPE REF TO object.
      t324 = t323.
      t322->oval = t324.
    ENDIF.
    APPEND t322 TO t321->items.
    DATA(t325) = t319.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA(t327) = t288.
    IF t327 IS BOUND.
      CREATE OBJECT t326.
      t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t328 TYPE REF TO object.
      t328 = t327.
      t326->oval = t328.
    ENDIF.
    APPEND t326 TO t325->items.
    DATA(t329) = t319.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA(t331) = t270.
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t332 TYPE REF TO object.
      t332 = t331.
      t330->oval = t332.
    ENDIF.
    APPEND t330 TO t329->items.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t334) = t311.
    DATA(t335) = t315.
    DATA(t336) = t319.
    t333 = zcl_lnt_st_combi_module=>alt( i_first = t334 i_second = t335 i_rest = t336 ).
    t310 = t333.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t337 TYPE REF TO object.
      t337 = t310.
      t309->oval = t337.
    ENDIF.
    t308 = t309.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA(t340) = t62.
    IF t340 IS BOUND.
      CREATE OBJECT t339.
      t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t341 TYPE REF TO object.
      t341 = t340.
      t339->oval = t341.
    ENDIF.
    t338 = t339.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t343.
    t342 = t343.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t345) = t308.
    DATA(t346) = t338.
    DATA(t347) = t342.
    t344 = zcl_lnt_st_combi_module=>seq( i_first = t345 i_second = t346 i_rest = t347 ).
    t307 = t344.
    t306 = t307.
    DATA t348 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t348.
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t352) = |ENTITY|.
    CREATE OBJECT t351.
    t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t351->sval = t352.
    t350 = t351.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA t355 TYPE REF TO zif_lnt_statement_runnable.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t357) = |IN LOCAL MODE|.
    CREATE OBJECT t356.
    t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t356->sval = t357.
    t355 = zcl_lnt_st_combi_module=>opt( i_first = t356 ).
    IF t355 IS BOUND.
      CREATE OBJECT t354.
      t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t358 TYPE REF TO object.
      t358 = t355.
      t354->oval = t358.
    ENDIF.
    t353 = t354.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t360.
    t359 = t360.
    DATA(t361) = t359.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA(t366) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    IF t366 IS BOUND.
      CREATE OBJECT t365.
      t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t365->cval = t366.
    ENDIF.
    t364 = t365.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    DATA(t369) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t369 IS BOUND.
      CREATE OBJECT t368.
      t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t368->cval = t369.
    ENDIF.
    t367 = t368.
    DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t371.
    t370 = t371.
    DATA t372 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t373) = t364.
    DATA(t374) = t367.
    DATA(t375) = t370.
    t372 = zcl_lnt_st_combi_module=>alt( i_first = t373 i_second = t374 i_rest = t375 ).
    t363 = t372.
    IF t363 IS BOUND.
      CREATE OBJECT t362.
      t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t376 TYPE REF TO object.
      t376 = t363.
      t362->oval = t376.
    ENDIF.
    APPEND t362 TO t361->items.
    DATA(t377) = t359.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t379.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA(t381) = t306.
    IF t381 IS BOUND.
      CREATE OBJECT t380.
      t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t382 TYPE REF TO object.
      t382 = t381.
      t380->oval = t382.
    ENDIF.
    t379 = zcl_lnt_st_combi_module=>plus( i_first = t380 ).
    IF t379 IS BOUND.
      CREATE OBJECT t378.
      t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t383 TYPE REF TO object.
      t383 = t379.
      t378->oval = t383.
    ENDIF.
    APPEND t378 TO t377->items.
    DATA(t384) = t359.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA(t388) = t76.
    IF t388 IS BOUND.
      CREATE OBJECT t387.
      t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t389 TYPE REF TO object.
      t389 = t388.
      t387->oval = t389.
    ENDIF.
    t386 = zcl_lnt_st_combi_module=>opt_prio( i_first = t387 ).
    IF t386 IS BOUND.
      CREATE OBJECT t385.
      t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t390 TYPE REF TO object.
      t390 = t386.
      t385->oval = t390.
    ENDIF.
    APPEND t385 TO t384->items.
    DATA(t391) = t359.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA t393 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA(t395) = t90.
    IF t395 IS BOUND.
      CREATE OBJECT t394.
      t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t396 TYPE REF TO object.
      t396 = t395.
      t394->oval = t396.
    ENDIF.
    t393 = zcl_lnt_st_combi_module=>opt_prio( i_first = t394 ).
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t397 TYPE REF TO object.
      t397 = t393.
      t392->oval = t397.
    ENDIF.
    APPEND t392 TO t391->items.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t399) = t350.
    DATA(t400) = t353.
    DATA(t401) = t359.
    t398 = zcl_lnt_st_combi_module=>seq( i_first = t399 i_second = t400 i_rest = t401 ).
    t349 = t398.
    t348 = t349.
    DATA t402 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t402.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA t404 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t404.
    DATA t405 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t405.
    DATA t406 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t406.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t406 = zcl_lnt_version_module=>release_b8cd.
    DATA(t407) = |v754|.
    t405 = t406->get( p0 = t407 ).
    t404 = t405.
    IF t404 IS BOUND.
      CREATE OBJECT t403.
      t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t408 TYPE REF TO object.
      t408 = t404.
      t403->oval = t408.
    ENDIF.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t413) = |READ|.
    CREATE OBJECT t412.
    t412->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t412->sval = t413.
    t411 = t412.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA(t419) = t203.
    IF t419 IS BOUND.
      CREATE OBJECT t418.
      t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t420 TYPE REF TO object.
      t420 = t419.
      t418->oval = t420.
    ENDIF.
    t417 = t418.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA(t423) = t348.
    IF t423 IS BOUND.
      CREATE OBJECT t422.
      t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t424 TYPE REF TO object.
      t424 = t423.
      t422->oval = t424.
    ENDIF.
    t421 = t422.
    DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t426.
    t425 = t426.
    DATA t427 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t428) = t417.
    DATA(t429) = t421.
    DATA(t430) = t425.
    t427 = zcl_lnt_st_combi_module=>alt( i_first = t428 i_second = t429 i_rest = t430 ).
    t416 = t427.
    IF t416 IS BOUND.
      CREATE OBJECT t415.
      t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t431 TYPE REF TO object.
      t431 = t416.
      t415->oval = t431.
    ENDIF.
    t414 = t415.
    DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t433.
    t432 = t433.
    DATA t434 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t435) = t411.
    DATA(t436) = t414.
    DATA(t437) = t432.
    t434 = zcl_lnt_st_combi_module=>seq( i_first = t435 i_second = t436 i_rest = t437 ).
    t410 = t434.
    IF t410 IS BOUND.
      CREATE OBJECT t409.
      t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t438 TYPE REF TO object.
      t438 = t410.
      t409->oval = t438.
    ENDIF.
    DATA t439 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t439.
    DATA(t440) = abap_true.
    IF t440 = abap_true.
      DATA t441 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t441.
      DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t442.
      DATA(t443) = abap_true.
      IF t443 = abap_true.
        DATA(t444) = |OpenABAP|.
        DATA(t445) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t445->has = abap_true.
        t445->value = t444.
        t442 = t445.
      ELSE.
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t446.
        t442 = t446.
      ENDIF.
      t441 = NEW zcl_lnt_iver_options( i_also = t442 ).
      t439 = t441.
    ELSE.
      DATA t447 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t447.
      t439 = t447.
    ENDIF.
    t402 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t403 i_first = t409 i_opts = t439 ).
    result = t402.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d574_df9f712900c5.
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
