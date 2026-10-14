* TS: src/abap/2_statements/expressions/simple_field_chain2.ts:7:1 SimpleFieldChain2
CLASS zcl_lnt_simple_field_chain2 DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_simple_field_chain2 IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947 ).
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
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t13 = zcl_lnt_st_combi_module=>seq( i_first = t14 i_second = t15 i_rest = t16 ).
    t2 = t13.
    t1 = t2.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t21 = zcl_lnt_st_combi_module=>tok( i_t = t22 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t21.
      t20->oval = t23.
    ENDIF.
    t19 = t20.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
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
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t18 = t29.
    t17 = t18.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zif_lnt_statement_runnable( t1 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t39.
      t38->oval = t40.
    ENDIF.
    t37 = t38.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = CAST zif_lnt_statement_runnable( t17 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t44 TYPE REF TO object.
      t44 = t43.
      t42->oval = t44.
    ENDIF.
    t41 = t42.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t45 = t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t45 ).
    t47 = zcl_lnt_st_combi_module=>alt_prio( i_first = t48 i_second = t49 i_rest = t50 ).
    t36 = t47.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t51 TYPE REF TO object.
      t51 = t36.
      t35->oval = t51.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>star( i_first = t35 ).
    t33 = t34.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d34_abe50883ec07f8 ).
    t59 = zcl_lnt_st_combi_module=>tok( i_t = t60 ).
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t59.
      t58->oval = t61.
    ENDIF.
    t57 = t58.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t62 = t63.
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    APPEND t65 TO t64->items.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t53 = t67.
    t52 = t53.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zif_lnt_statement_runnable( t52 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t75.
      t74->oval = t76.
    ENDIF.
    t73 = t74.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133 ).
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
    CLEAR t83.
    DATA(t84) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d166_95d94e882be8 ).
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    APPEND t83 TO t82->items.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t73 ).
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    t85 = zcl_lnt_st_combi_module=>alt_prio( i_first = t86 i_second = t87 i_rest = t88 ).
    t72 = t85.
    t71 = t72.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = CAST zif_lnt_statement_runnable( t71 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t94 TYPE REF TO object.
      t94 = t93.
      t92->oval = t94.
    ENDIF.
    t91 = t92.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = CAST zif_lnt_statement_runnable( t33 ).
    IF t97 IS BOUND.
      CREATE OBJECT t96.
      t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t98 TYPE REF TO object.
      t98 = t97.
      t96->oval = t98.
    ENDIF.
    t95 = t96.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    t99 = t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t102) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t103) = CAST zlnt_runtime_dyna_a429568d5be8( t95 ).
    DATA(t104) = CAST zlnt_runtime_arra_c22708faf2e3( t99 ).
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t103 i_rest = t104 ).
    t90 = t101.
    t89 = t90.
    DATA(t105) = CAST zif_lnt_statement_runnable( t89 ).
    result = t105.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18.
  ENDMETHOD.
ENDCLASS.
