* TS: src/abap/2_statements/expressions/_lob_handle_type.ts.module module
CLASS zcl_lnt_lob_handle_type_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS lob_columns RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS lob_kind RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS lob_handle_type RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_ab4c41240bc6 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_db1fb6927434.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lob_handle_type_module IMPLEMENTATION.
  METHOD lob_columns.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |FOR|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = |OTHER|.
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = t12.
    t10 = zcl_lnt_st_combi_module=>opt( i_first = t11 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t13 TYPE REF TO object.
      t13 = t10.
      t9->oval = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |BLOB|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = |CLOB|.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>alt_prio( i_first = t28 i_second = t29 i_rest = t30 ).
    t18 = t27.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t18.
      t17->oval = t31.
    ENDIF.
    APPEND t17 TO t16->items.
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |COLUMNS|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    APPEND t33 TO t32->items.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t37 i_rest = t38 ).
    t4 = t35.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t4.
      t3->oval = t39.
    ENDIF.
    t2 = t3.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = |FOR|.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = t45.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |ALL|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t49 = t50.
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |OTHER|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = zcl_lnt_st_combi_module=>opt( i_first = t54 ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t53.
      t52->oval = t56.
    ENDIF.
    APPEND t52 TO t51->items.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = |BLOB|.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |CLOB|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t67.
    t66 = t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t66 ).
    t68 = zcl_lnt_st_combi_module=>alt_prio( i_first = t69 i_second = t70 i_rest = t71 ).
    t59 = t68.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t72 TYPE REF TO object.
      t72 = t59.
      t58->oval = t72.
    ENDIF.
    APPEND t58 TO t57->items.
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t75) = |COLUMNS|.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = t75.
    APPEND t74 TO t73->items.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t78 i_rest = t79 ).
    t42 = t76.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t80 TYPE REF TO object.
      t80 = t42.
      t41->oval = t80.
    ENDIF.
    t40 = t41.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t81 = t82.
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = |FOR|.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = |ALL|.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = t91.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t92 = t93.
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t92 ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = |COLUMNS|.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = t96.
    APPEND t95 TO t94->items.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t98) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t99) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t92 ).
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t99 i_rest = t100 ).
    t85 = t97.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t101 TYPE REF TO object.
      t101 = t85.
      t84->oval = t101.
    ENDIF.
    APPEND t84 TO t83->items.
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |FOR|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = |COLUMNS|.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = t110.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t111 = t112.
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t116->cval = t117.
    ENDIF.
    t115 = zcl_lnt_st_combi_module=>plus( i_first = t116 ).
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t115.
      t114->oval = t118.
    ENDIF.
    APPEND t114 TO t113->items.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t104 = t119.
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t123 TYPE REF TO object.
      t123 = t104.
      t103->oval = t123.
    ENDIF.
    APPEND t103 TO t102->items.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t125) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    t124 = zcl_lnt_st_combi_module=>alt_prio( i_first = t125 i_second = t126 i_rest = t127 ).
    t1 = t124.
    result = t1.

  ENDMETHOD.
  METHOD lob_kind.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = |LOCATOR|.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = t4.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |READER|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = |WRITER|.
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = t12.
    APPEND t11 TO t10->items.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = |LOB|.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = t18.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |HANDLE|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t26 i_rest = t27 ).
    t15 = t24.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t15.
      t14->oval = t28.
    ENDIF.
    APPEND t14 TO t13->items.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t29 = zcl_lnt_st_combi_module=>alt_prio( i_first = t30 i_second = t31 i_rest = t32 ).
    t1 = t29.
    result = t1.

  ENDMETHOD.
  METHOD lob_handle_type.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = |TYPE|.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = t4.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = |READ-ONLY|.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = t14.
    t12 = zcl_lnt_st_combi_module=>opt( i_first = t13 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t12.
      t11->oval = t15.
    ENDIF.
    APPEND t11 TO t10->items.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_kind(  ) ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t23.
      t22->oval = t24.
    ENDIF.
    t21 = t22.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_columns(  ) ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t27.
      t26->oval = t28.
    ENDIF.
    t25 = t26.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    t31 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t33 i_rest = t34 ).
    t20 = t31.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t20.
      t19->oval = t35.
    ENDIF.
    t18 = zcl_lnt_st_combi_module=>plus( i_first = t19 ).
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t18.
      t17->oval = t36.
    ENDIF.
    APPEND t17 TO t16->items.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t39 i_rest = t40 ).
    t1 = t37.
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_init_db1fb6927434.
    IF zlnt_builtin_init_ab4c41240bc6 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_ab4c41240bc6 = abap_true.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1831_a405da41653b.
  ENDMETHOD.
ENDCLASS.
