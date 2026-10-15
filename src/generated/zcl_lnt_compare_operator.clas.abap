* TS: src/abap/2_statements/expressions/compare_operator.ts:4:1 CompareOperator
CLASS zcl_lnt_compare_operator DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_compare_operator IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |=|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |<>|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |><|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t9.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = |<|.
    CLEAR t15.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t9.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = |>|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t20) = t9.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |<=|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t23) = t9.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = |>=|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t26) = t9.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = |=>|.
    CLEAR t27.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t29) = t9.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = |=<|.
    CLEAR t30.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA(t32) = t9.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = |CA|.
    CLEAR t33.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t35) = t9.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = |CO|.
    CLEAR t36.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35->load( ).
    APPEND t36 TO t35->items.
    t35->save( ).
    DATA(t38) = t9.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |CP|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA(t41) = t9.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = |EQ|.
    CLEAR t42.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA(t44) = t9.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = |NE|.
    CLEAR t45.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t47) = t9.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = |CN|.
    CLEAR t48.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = t49.
    t47->load( ).
    APPEND t48 TO t47->items.
    t47->save( ).
    DATA(t50) = t9.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = |GE|.
    CLEAR t51.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50->load( ).
    APPEND t51 TO t50->items.
    t50->save( ).
    DATA(t53) = t9.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = |GT|.
    CLEAR t54.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t56) = t9.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = |LT|.
    CLEAR t57.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    t56->load( ).
    APPEND t57 TO t56->items.
    t56->save( ).
    DATA(t59) = t9.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = |LE|.
    CLEAR t60.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t62) = t9.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = |CS|.
    CLEAR t63.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62->load( ).
    APPEND t63 TO t62->items.
    t62->save( ).
    DATA(t65) = t9.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = |NS|.
    CLEAR t66.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65->load( ).
    APPEND t66 TO t65->items.
    t65->save( ).
    DATA(t68) = t9.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = |NA|.
    CLEAR t69.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68->load( ).
    APPEND t69 TO t68->items.
    t68->save( ).
    DATA(t71) = t9.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = |NP|.
    CLEAR t72.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = t73.
    t71->load( ).
    APPEND t72 TO t71->items.
    t71->save( ).
    DATA(t74) = t9.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = |BYTE-CO|.
    CLEAR t75.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = t76.
    t74->load( ).
    APPEND t75 TO t74->items.
    t74->save( ).
    DATA(t77) = t9.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = |BYTE-CA|.
    CLEAR t78.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77->load( ).
    APPEND t78 TO t77->items.
    t77->save( ).
    DATA(t80) = t9.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = |BYTE-CS|.
    CLEAR t81.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    t80->load( ).
    APPEND t81 TO t80->items.
    t80->save( ).
    DATA(t83) = t9.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = |BYTE-CN|.
    CLEAR t84.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    t83->load( ).
    APPEND t84 TO t83->items.
    t83->save( ).
    DATA(t86) = t9.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = |BYTE-NA|.
    CLEAR t87.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86->load( ).
    APPEND t87 TO t86->items.
    t86->save( ).
    DATA(t89) = t9.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = |BYTE-NS|.
    CLEAR t90.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = t91.
    t89->load( ).
    APPEND t90 TO t89->items.
    t89->save( ).
    DATA(t92) = t9.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = |O|.
    CLEAR t93.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92->load( ).
    APPEND t93 TO t92->items.
    t92->save( ).
    DATA(t95) = t9.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = |Z|.
    CLEAR t96.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95->load( ).
    APPEND t96 TO t95->items.
    t95->save( ).
    DATA(t98) = t9.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = |M|.
    CLEAR t99.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = t100.
    t98->load( ).
    APPEND t99 TO t98->items.
    t98->save( ).
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t102) = t3.
    DATA(t103) = t6.
    DATA(t104) = t9.
    t101 = zcl_lnt_st_combi_module=>alt_prio( i_first = t102 i_second = t103 i_rest = t104 ).
    t2 = t101.
    t1 = t2.
    DATA(t105) = t1.
    result = t105.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
  ENDMETHOD.
ENDCLASS.
