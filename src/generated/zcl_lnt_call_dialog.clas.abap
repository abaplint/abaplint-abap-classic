* TS: src/abap/2_statements/statements/call_dialog.ts:7:1 CallDialog
CLASS zcl_lnt_call_dialog DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_call_dialog IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |FROM|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t21 i_rest = t22 ).
    t10 = t19.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t10.
      t9->oval = t23.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt_prio( i_first = t9 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t8.
      t7->oval = t24.
    ENDIF.
    t6 = t7.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t2 = t27.
    t1 = t2.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = |EXPORTING|.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = CAST zif_lnt_statement_runnable( t1 ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t40.
      t39->oval = t41.
    ENDIF.
    t38 = zcl_lnt_st_combi_module=>plus( i_first = t39 ).
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t42 TYPE REF TO object.
      t42 = t38.
      t37->oval = t42.
    ENDIF.
    t36 = t37.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t47) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t47 i_rest = t48 ).
    t32 = t45.
    t31 = t32.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = |TO|.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t58 = t67.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t71 TYPE REF TO object.
      t71 = t58.
      t57->oval = t71.
    ENDIF.
    t56 = zcl_lnt_st_combi_module=>opt_prio( i_first = t57 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t72 TYPE REF TO object.
      t72 = t56.
      t55->oval = t72.
    ENDIF.
    t54 = t55.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t73 = t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t76) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t50 = t75.
    t49 = t50.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = |IMPORTING|.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = t83.
    t81 = t82.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zif_lnt_statement_runnable( t49 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t89 TYPE REF TO object.
      t89 = t88.
      t87->oval = t89.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>plus( i_first = t87 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t90 TYPE REF TO object.
      t90 = t86.
      t85->oval = t90.
    ENDIF.
    t84 = t85.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t91 = t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t81 ).
    DATA(t95) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t96) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    t93 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t95 i_rest = t96 ).
    t80 = t93.
    t79 = t80.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = |CALL DIALOG|.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t111 = t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t116) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    t113 = zcl_lnt_st_combi_module=>alt( i_first = t114 i_second = t115 i_rest = t116 ).
    t104 = t113.
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t117 TYPE REF TO object.
      t117 = t104.
      t103->oval = t117.
    ENDIF.
    t102 = t103.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t119.
    t118 = t119.
    DATA(t120) = CAST zlnt_runtime_arra_c22708faf2e3( t118 ).
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = CAST zif_lnt_statement_runnable( t31 ).
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t125 TYPE REF TO object.
      t125 = t124.
      t123->oval = t125.
    ENDIF.
    t122 = zcl_lnt_st_combi_module=>opt( i_first = t123 ).
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t122.
      t121->oval = t126.
    ENDIF.
    APPEND t121 TO t120->items.
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t118 ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = CAST zif_lnt_statement_runnable( t79 ).
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t132 TYPE REF TO object.
      t132 = t131.
      t130->oval = t132.
    ENDIF.
    t129 = zcl_lnt_st_combi_module=>opt( i_first = t130 ).
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t133 TYPE REF TO object.
      t133 = t129.
      t128->oval = t133.
    ENDIF.
    APPEND t128 TO t127->items.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t118 ).
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t136 i_rest = t137 ).
    t98 = t134.
    t97 = t98.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA(t139) = |Cloud|.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = CAST zif_lnt_statement_runnable( t97 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t142 TYPE REF TO object.
      t142 = t141.
      t140->oval = t142.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t139 i_first = t140 ).
    result = t138.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d374_fc0b5bdde21e.
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
