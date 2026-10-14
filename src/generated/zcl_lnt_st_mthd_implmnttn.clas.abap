* TS: src/abap/2_statements/statements/method_implementation.ts:7:1 MethodImplementation
CLASS zcl_lnt_st_mthd_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_mthd_implmnttn IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `[\w~]+`.
    DATA(t5) = |[A-Za-z0-9_~]+|.
    DATA(t6) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3->source = t4.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |KERNEL MODULE|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zif_lnt_statement_runnable( t1 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t17 TYPE REF TO object.
      t17 = t16.
      t15->oval = t17.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>plus( i_first = t15 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t14.
      t13->oval = t18.
    ENDIF.
    t12 = t13.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |FAIL|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = |IGNORE|.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    t34 = zcl_lnt_st_combi_module=>alt_prio( i_first = t35 i_second = t36 i_rest = t37 ).
    t25 = t34.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t25.
      t24->oval = t38.
    ENDIF.
    t23 = zcl_lnt_st_combi_module=>opt_prio( i_first = t24 ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t23.
      t22->oval = t39.
    ENDIF.
    APPEND t22 TO t21->items.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t42 i_rest = t43 ).
    t8 = t40.
    t7 = t8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |USING|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4 ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t51 = zcl_lnt_st_combi_module=>plus( i_first = t52 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t51.
      t50->oval = t54.
    ENDIF.
    t49 = t50.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    t55 = t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t59) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t59 i_rest = t60 ).
    t45 = t57.
    t44 = t45.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |DATABASE|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = |PROCEDURE|.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |FUNCTION|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t75 = t76.
    DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = |GRAPH WORKSPACE|.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    APPEND t78 TO t77->items.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
    t80 = zcl_lnt_st_combi_module=>alt( i_first = t81 i_second = t82 i_rest = t83 ).
    t68 = t80.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t68.
      t67->oval = t84.
    ENDIF.
    t66 = t67.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |FOR HDB|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    APPEND t88 TO t87->items.
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    APPEND t91 TO t90->items.
    DATA(t93) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = |OPTIONS READ-ONLY|.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = zcl_lnt_st_combi_module=>opt( i_first = t96 ).
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t98 TYPE REF TO object.
      t98 = t95.
      t94->oval = t98.
    ENDIF.
    APPEND t94 TO t93->items.
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = CAST zif_lnt_statement_runnable( t44 ).
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t103.
      t102->oval = t104.
    ENDIF.
    t101 = zcl_lnt_st_combi_module=>opt( i_first = t102 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t105 TYPE REF TO object.
      t105 = t101.
      t100->oval = t105.
    ENDIF.
    APPEND t100 TO t99->items.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t107) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t66 ).
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t106 = zcl_lnt_st_combi_module=>seq( i_first = t107 i_second = t108 i_rest = t109 ).
    t62 = t106.
    t61 = t62.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA(t112) = |KeyUser|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = |BY|.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    t115 = t116.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = CAST zif_lnt_statement_runnable( t7 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t124 TYPE REF TO object.
      t124 = t123.
      t122->oval = t124.
    ENDIF.
    t121 = t122.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = CAST zif_lnt_statement_runnable( t61 ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t128 TYPE REF TO object.
      t128 = t127.
      t126->oval = t128.
    ENDIF.
    t125 = t126.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t129 = t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t134) = CAST zlnt_runtime_arra_c22708faf2e3( t129 ).
    t131 = zcl_lnt_st_combi_module=>alt( i_first = t132 i_second = t133 i_rest = t134 ).
    t120 = t131.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t135 TYPE REF TO object.
      t135 = t120.
      t119->oval = t135.
    ENDIF.
    t118 = t119.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    t136 = t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t139) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t140) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t136 ).
    t138 = zcl_lnt_st_combi_module=>seq( i_first = t139 i_second = t140 i_rest = t141 ).
    t114 = t138.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t142 TYPE REF TO object.
      t142 = t114.
      t113->oval = t142.
    ENDIF.
    t111 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t112 i_first = t113 ).
    t110 = t111.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t146) = |METHOD|.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = t146.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    t147 = t148.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    t150 = t151.
    DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = CAST zif_lnt_statement_runnable( t110 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t156.
      t155->oval = t157.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>opt_prio( i_first = t155 ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t154.
      t153->oval = t158.
    ENDIF.
    APPEND t153 TO t152->items.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t160) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
    DATA(t161) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t162) = CAST zlnt_runtime_arra_c22708faf2e3( t150 ).
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t161 i_rest = t162 ).
    t143 = t159.
    result = t143.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d537_ef985c59f92c.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
