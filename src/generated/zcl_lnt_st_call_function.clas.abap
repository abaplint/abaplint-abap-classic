* TS: src/abap/2_statements/statements/call_function.ts:7:1 CallFunction
CLASS zcl_lnt_st_call_function DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_call_function IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA(t3) = |Cloud|.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |STARTING NEW TASK|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t5 = t14.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t5.
      t4->oval = t18.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t3 i_first = t4 ).
    t1 = t2.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA(t21) = |Cloud|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t24) = |IN UPDATE TASK|.
    t23 = zcl_lnt_st_combi_module=>str( i_s = t24 ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t23.
      t22->oval = t25.
    ENDIF.
    t20 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t21 i_first = t22 ).
    t19 = t20.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |UNIT|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    t34 = t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t37 i_second = t38 i_rest = t39 ).
    t27 = t36.
    t26 = t27.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA(t42) = |Cloud|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |IN BACKGROUND|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = |TASK|.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = t53.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = CAST zif_lnt_statement_runnable( t26 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t57 TYPE REF TO object.
      t57 = t56.
      t55->oval = t57.
    ENDIF.
    t54 = t55.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t60 = zcl_lnt_st_combi_module=>alt_prio( i_first = t61 i_second = t62 i_rest = t63 ).
    t50 = t60.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t50.
      t49->oval = t64.
    ENDIF.
    t48 = t49.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t44 = t67.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t71 TYPE REF TO object.
      t71 = t44.
      t43->oval = t71.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t42 i_first = t43 ).
    t40 = t41.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = |CALLING|.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = t76.
    t74 = t75.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0 ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t80 = t81.
    DATA(t82) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = |ON END OF TASK|.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = t84.
    APPEND t83 TO t82->items.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t87 i_rest = t88 ).
    t73 = t85.
    t72 = t73.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t93) = |PERFORMING|.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = t93.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82 ).
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
    DATA(t101) = |ON END OF TASK|.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    APPEND t100 TO t99->items.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t103) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t97 ).
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t104 i_rest = t105 ).
    t90 = t102.
    t89 = t90.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = |AS SEPARATE UNIT|.
    t107 = zcl_lnt_st_combi_module=>str( i_s = t108 ).
    t106 = t107.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t111) = |KEEPING LOGICAL UNIT OF WORK|.
    t110 = zcl_lnt_st_combi_module=>str( i_s = t111 ).
    t109 = t110.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = CAST zif_lnt_statement_runnable( t1 ).
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
    DATA(t120) = CAST zif_lnt_statement_runnable( t19 ).
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
    DATA(t126) = CAST zif_lnt_statement_runnable( t40 ).
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
    DATA(t130) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff ).
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    APPEND t129 TO t128->items.
    DATA(t131) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = CAST zif_lnt_statement_runnable( t72 ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t133.
      t132->oval = t134.
    ENDIF.
    APPEND t132 TO t131->items.
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = CAST zif_lnt_statement_runnable( t89 ).
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t138 TYPE REF TO object.
      t138 = t137.
      t136->oval = t138.
    ENDIF.
    APPEND t136 TO t135->items.
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = CAST zif_lnt_statement_runnable( t106 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t142 TYPE REF TO object.
      t142 = t141.
      t140->oval = t142.
    ENDIF.
    APPEND t140 TO t139->items.
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = CAST zif_lnt_statement_runnable( t109 ).
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t145.
      t144->oval = t146.
    ENDIF.
    APPEND t144 TO t143->items.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t148) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t149) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t150) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    t147 = zcl_lnt_st_combi_module=>per( i_first = t148 i_second = t149 i_rest = t150 ).
    t113 = t147.
    t112 = t113.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = |EXCEPTION-TABLE|.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = t155.
    t153 = t154.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t153 ).
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t159 ).
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t163 i_rest = t164 ).
    t152 = t161.
    t151 = t152.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = |PARAMETER-TABLE|.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    t176 = t177.
    DATA(t178) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = CAST zif_lnt_statement_runnable( t151 ).
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t183 TYPE REF TO object.
      t183 = t182.
      t181->oval = t183.
    ENDIF.
    t180 = zcl_lnt_st_combi_module=>opt( i_first = t181 ).
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t184 TYPE REF TO object.
      t184 = t180.
      t179->oval = t184.
    ENDIF.
    APPEND t179 TO t178->items.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t170 ).
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t188) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t187 i_rest = t188 ).
    t169 = t185.
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t189 TYPE REF TO object.
      t189 = t169.
      t168->oval = t189.
    ENDIF.
    t167 = t168.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = CAST zif_lnt_statement_runnable( t151 ).
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t193 TYPE REF TO object.
      t193 = t192.
      t191->oval = t193.
    ENDIF.
    t190 = t191.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t195.
    t194 = t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t197) = CAST zlnt_runtime_dyna_a429568d5be8( t167 ).
    DATA(t198) = CAST zlnt_runtime_dyna_a429568d5be8( t190 ).
    DATA(t199) = CAST zlnt_runtime_arra_c22708faf2e3( t194 ).
    t196 = zcl_lnt_st_combi_module=>alt( i_first = t197 i_second = t198 i_rest = t199 ).
    t166 = t196.
    t165 = t166.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = |CALL|.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t203->sval = t204.
    t202 = t203.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = |FUNCTION|.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = t210.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t214) = |Cloud|.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t216) = |CUSTOMER-FUNCTION|.
    CREATE OBJECT t215.
    t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t215->sval = t216.
    t213 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t214 i_first = t215 ).
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t217 TYPE REF TO object.
      t217 = t213.
      t212->oval = t217.
    ENDIF.
    t211 = t212.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t219.
    t218 = t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t221) = CAST zlnt_runtime_dyna_a429568d5be8( t208 ).
    DATA(t222) = CAST zlnt_runtime_dyna_a429568d5be8( t211 ).
    DATA(t223) = CAST zlnt_runtime_arra_c22708faf2e3( t218 ).
    t220 = zcl_lnt_st_combi_module=>alt_prio( i_first = t221 i_second = t222 i_rest = t223 ).
    t207 = t220.
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t224 TYPE REF TO object.
      t224 = t207.
      t206->oval = t224.
    ENDIF.
    t205 = t206.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t226.
    t225 = t226.
    DATA(t227) = CAST zlnt_runtime_arra_c22708faf2e3( t225 ).
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519 ).
    IF t229 IS BOUND.
      CREATE OBJECT t228.
      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t228->cval = t229.
    ENDIF.
    APPEND t228 TO t227->items.
    DATA(t230) = CAST zlnt_runtime_arra_c22708faf2e3( t225 ).
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = CAST zif_lnt_statement_runnable( t112 ).
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t235 TYPE REF TO object.
      t235 = t234.
      t233->oval = t235.
    ENDIF.
    t232 = zcl_lnt_st_combi_module=>opt( i_first = t233 ).
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t236 TYPE REF TO object.
      t236 = t232.
      t231->oval = t236.
    ENDIF.
    APPEND t231 TO t230->items.
    DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t225 ).
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d192_2948974be5fb ).
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t241->cval = t242.
    ENDIF.
    t240 = t241.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = CAST zif_lnt_statement_runnable( t165 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t245.
      t244->oval = t246.
    ENDIF.
    t243 = t244.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t248.
    t247 = t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t250) = CAST zlnt_runtime_dyna_a429568d5be8( t240 ).
    DATA(t251) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t252) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    t249 = zcl_lnt_st_combi_module=>alt( i_first = t250 i_second = t251 i_rest = t252 ).
    t239 = t249.
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t253 TYPE REF TO object.
      t253 = t239.
      t238->oval = t253.
    ENDIF.
    APPEND t238 TO t237->items.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t255) = CAST zlnt_runtime_dyna_a429568d5be8( t202 ).
    DATA(t256) = CAST zlnt_runtime_dyna_a429568d5be8( t205 ).
    DATA(t257) = CAST zlnt_runtime_arra_c22708faf2e3( t225 ).
    t254 = zcl_lnt_st_combi_module=>seq( i_first = t255 i_second = t256 i_rest = t257 ).
    t201 = t254.
    t200 = t201.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA(t259) = |KeyUser|.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA(t261) = CAST zif_lnt_statement_runnable( t200 ).
    IF t261 IS BOUND.
      CREATE OBJECT t260.
      t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t262 TYPE REF TO object.
      t262 = t261.
      t260->oval = t262.
    ENDIF.
    t258 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t259 i_first = t260 ).
    result = t258.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d375_ab389f7000ba.
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
