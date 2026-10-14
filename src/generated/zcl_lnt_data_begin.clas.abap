* TS: src/abap/2_statements/statements/data_begin.ts:6:1 DataBegin
CLASS zcl_lnt_data_begin DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_data_begin IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |OCCURS|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t19 i_rest = t20 ).
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
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t26 i_rest = t27 ).
    t2 = t24.
    t1 = t2.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = |COMMON PART|.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = t32.
    t30 = t31.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    t35 = zcl_lnt_st_combi_module=>opt_prio( i_first = t36 ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t35.
      t34->oval = t38.
    ENDIF.
    t33 = t34.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t30 ).
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t43 i_rest = t44 ).
    t29 = t41.
    t28 = t29.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = |BEGIN OF|.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = t49.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = CAST zif_lnt_statement_runnable( t28 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t55.
      t54->oval = t56.
    ENDIF.
    t53 = t54.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |READ-ONLY|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = zcl_lnt_st_combi_module=>opt_prio( i_first = t66 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t65.
      t64->oval = t68.
    ENDIF.
    t63 = t64.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zif_lnt_statement_runnable( t1 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t75.
      t74->oval = t76.
    ENDIF.
    t73 = zcl_lnt_st_combi_module=>opt_prio( i_first = t74 ).
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t73.
      t72->oval = t77.
    ENDIF.
    APPEND t72 TO t71->items.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t80) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t80 i_rest = t81 ).
    t59 = t78.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t59.
      t58->oval = t82.
    ENDIF.
    t57 = t58.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t83 = t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t83 ).
    t85 = zcl_lnt_st_combi_module=>alt_prio( i_first = t86 i_second = t87 i_rest = t88 ).
    t52 = t85.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t89 TYPE REF TO object.
      t89 = t52.
      t51->oval = t89.
    ENDIF.
    t50 = t51.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    t90 = t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t47 ).
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
    t92 = zcl_lnt_st_combi_module=>seq( i_first = t93 i_second = t94 i_rest = t95 ).
    t46 = t92.
    t45 = t46.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = |DATA|.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zif_lnt_statement_runnable( t45 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t102.
      t101->oval = t103.
    ENDIF.
    t100 = t101.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t104 = t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t107) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    t106 = zcl_lnt_st_combi_module=>seq( i_first = t107 i_second = t108 i_rest = t109 ).
    t96 = t106.
    result = t96.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d421_ab7bd290a35d.
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
