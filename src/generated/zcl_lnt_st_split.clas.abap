* TS: src/abap/2_statements/statements/split.ts:6:1 Split
CLASS zcl_lnt_st_split DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_split IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |IN|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |CHARACTER|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = |BYTE|.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = t14.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    t17 = zcl_lnt_st_combi_module=>alt( i_first = t18 i_second = t19 i_rest = t20 ).
    t8 = t17.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t21 TYPE REF TO object.
      t21 = t8.
      t7->oval = t21.
    ENDIF.
    t6 = t7.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = |MODE|.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
    APPEND t25 TO t24->items.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t2 = t27.
    t1 = t2.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |TABLE|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    t39 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    t42 = t43.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zif_lnt_statement_runnable( t1 ).
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t48.
      t47->oval = t49.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt( i_first = t47 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t50 TYPE REF TO object.
      t50 = t46.
      t45->oval = t50.
    ENDIF.
    APPEND t45 TO t44->items.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t53 i_rest = t54 ).
    t35 = t51.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t55 TYPE REF TO object.
      t55 = t35.
      t34->oval = t55.
    ENDIF.
    t33 = t34.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>plus( i_first = t62 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t61.
      t60->oval = t64.
    ENDIF.
    t59 = t60.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = CAST zif_lnt_statement_runnable( t1 ).
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t70 TYPE REF TO object.
      t70 = t69.
      t68->oval = t70.
    ENDIF.
    t67 = zcl_lnt_st_combi_module=>opt( i_first = t68 ).
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t71 TYPE REF TO object.
      t71 = t67.
      t66->oval = t71.
    ENDIF.
    t65 = t66.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t73.
    t72 = t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t75) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t76) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t72 ).
    t74 = zcl_lnt_st_combi_module=>seq( i_first = t75 i_second = t76 i_rest = t77 ).
    t58 = t74.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t78 TYPE REF TO object.
      t78 = t58.
      t57->oval = t78.
    ENDIF.
    t56 = t57.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t79 = t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t79 ).
    t81 = zcl_lnt_st_combi_module=>alt_prio( i_first = t82 i_second = t83 i_rest = t84 ).
    t32 = t81.
    t31 = t32.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |SPLIT|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t93 = t94.
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = |AT|.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    APPEND t96 TO t95->items.
    DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    APPEND t99 TO t98->items.
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = |INTO|.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    APPEND t102 TO t101->items.
    DATA(t104) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = CAST zif_lnt_statement_runnable( t31 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t107 TYPE REF TO object.
      t107 = t106.
      t105->oval = t107.
    ENDIF.
    APPEND t105 TO t104->items.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t90 ).
    DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t110 i_rest = t111 ).
    t86 = t108.
    t85 = t86.
    DATA(t112) = CAST zif_lnt_statement_runnable( t85 ).
    result = t112.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d622_22348e0e5a4a.
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
