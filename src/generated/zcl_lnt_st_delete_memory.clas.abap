* TS: src/abap/2_statements/statements/delete_memory.ts:7:1 DeleteMemory
CLASS zcl_lnt_st_delete_memory DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_delete_memory IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |MEMORY ID|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |ID|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |CLIENT|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t41 i_rest = t42 ).
    t30 = t39.
    t29 = t30.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |SHARED|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = |MEMORY|.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = t53.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = |BUFFER|.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t57 = t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    t59 = zcl_lnt_st_combi_module=>alt_prio( i_first = t60 i_second = t61 i_rest = t62 ).
    t50 = t59.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t63 TYPE REF TO object.
      t63 = t50.
      t49->oval = t63.
    ENDIF.
    t48 = t49.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t64 = t65.
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    APPEND t67 TO t66->items.
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = |(|.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    APPEND t70 TO t69->items.
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t75.
    DATA(t76) = `^[\w%]+$`.
    DATA(t77) = |^[A-Za-z0-9_%]+$|.
    DATA(t78) = ||.
    CREATE OBJECT t75 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t77 flags = t78.
    t75->source = t76.
    t74 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t75 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t79 TYPE REF TO object.
      t79 = t74.
      t73->oval = t79.
    ENDIF.
    APPEND t73 TO t72->items.
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = |)|.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    APPEND t81 TO t80->items.
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = CAST zif_lnt_statement_runnable( t29 ).
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t88 TYPE REF TO object.
      t88 = t87.
      t86->oval = t88.
    ENDIF.
    t85 = zcl_lnt_st_combi_module=>opt_prio( i_first = t86 ).
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t89 TYPE REF TO object.
      t89 = t85.
      t84->oval = t89.
    ENDIF.
    APPEND t84 TO t83->items.
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = CAST zif_lnt_statement_runnable( t15 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t92.
      t91->oval = t93.
    ENDIF.
    APPEND t91 TO t90->items.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t95) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t64 ).
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t95 i_second = t96 i_rest = t97 ).
    t44 = t94.
    t43 = t44.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = |DELETE FROM|.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zif_lnt_statement_runnable( t1 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t108.
      t107->oval = t109.
    ENDIF.
    t106 = t107.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = CAST zif_lnt_statement_runnable( t43 ).
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t113 TYPE REF TO object.
      t113 = t112.
      t111->oval = t113.
    ENDIF.
    t110 = t111.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    t114 = t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t110 ).
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t114 ).
    t116 = zcl_lnt_st_combi_module=>alt( i_first = t117 i_second = t118 i_rest = t119 ).
    t105 = t116.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t105.
      t104->oval = t120.
    ENDIF.
    t103 = t104.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t121 = t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t125) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t126) = CAST zlnt_runtime_arra_c22708faf2e3( t121 ).
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t124 i_second = t125 i_rest = t126 ).
    t99 = t123.
    t98 = t99.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA(t128) = |Cloud|.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = CAST zif_lnt_statement_runnable( t98 ).
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t131 TYPE REF TO object.
      t131 = t130.
      t129->oval = t131.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t128 i_first = t129 ).
    result = t127.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d429_03a2ce6eaa8f.
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
