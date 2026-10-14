* TS: src/abap/2_statements/statements/at_selection_screen.ts:7:1 AtSelectionScreen
CLASS zcl_lnt_st_at_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_at_selection_screen IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE string.
    DATA(t2) = |OUTPUT|.
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |ON VALUE-REQUEST FOR|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
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
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t13 = zcl_lnt_st_combi_module=>seq( i_first = t14 i_second = t15 i_rest = t16 ).
    t4 = t13.
    t3 = t4.
    DATA t17 TYPE string.
    DATA(t18) = |ON EXIT-COMMAND|.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = |ON|.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
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
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t20 = t29.
    t19 = t20.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = |ON END OF|.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t41 = t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t35 ).
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t38 ).
    DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t45 i_rest = t46 ).
    t34 = t43.
    t33 = t34.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = |ON RADIOBUTTON GROUP|.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    t52 = t53.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    t55 = t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t59) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t59 i_rest = t60 ).
    t48 = t57.
    t47 = t48.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |ON BLOCK|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d105_86aa91718a3c ).
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
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t66 ).
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t62 = t71.
    t61 = t62.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = |ON HELP-REQUEST FOR|.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t83 = t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t80 ).
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t83 ).
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t87 i_rest = t88 ).
    t76 = t85.
    t75 = t76.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t93) = |AT SELECTION-SCREEN|.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = t93.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = t1.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = CAST zif_lnt_statement_runnable( t3 ).
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t105 TYPE REF TO object.
      t105 = t104.
      t103->oval = t105.
    ENDIF.
    t102 = t103.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    t106 = t107.
    DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = CAST zif_lnt_statement_runnable( t47 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t110.
      t109->oval = t111.
    ENDIF.
    APPEND t109 TO t108->items.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = t17.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = t114.
    APPEND t113 TO t112->items.
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = CAST zif_lnt_statement_runnable( t19 ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t117.
      t116->oval = t118.
    ENDIF.
    APPEND t116 TO t115->items.
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = CAST zif_lnt_statement_runnable( t33 ).
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t122 TYPE REF TO object.
      t122 = t121.
      t120->oval = t122.
    ENDIF.
    APPEND t120 TO t119->items.
    DATA(t123) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = CAST zif_lnt_statement_runnable( t75 ).
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t125.
      t124->oval = t126.
    ENDIF.
    APPEND t124 TO t123->items.
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = CAST zif_lnt_statement_runnable( t61 ).
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t129.
      t128->oval = t130.
    ENDIF.
    APPEND t128 TO t127->items.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t134) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    t131 = zcl_lnt_st_combi_module=>alt( i_first = t132 i_second = t133 i_rest = t134 ).
    t98 = t131.
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t135 TYPE REF TO object.
      t135 = t98.
      t97->oval = t135.
    ENDIF.
    t96 = zcl_lnt_st_combi_module=>opt( i_first = t97 ).
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t136 TYPE REF TO object.
      t136 = t96.
      t95->oval = t136.
    ENDIF.
    t94 = t95.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t137 = t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t140) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t141 i_rest = t142 ).
    t90 = t139.
    t89 = t90.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA(t144) = |Cloud|.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA(t146) = CAST zif_lnt_statement_runnable( t89 ).
    IF t146 IS BOUND.
      CREATE OBJECT t145.
      t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t147 TYPE REF TO object.
      t147 = t146.
      t145->oval = t147.
    ENDIF.
    t143 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t144 i_first = t145 ).
    result = t143.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d365_8e701edd48fd.
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
