* TS: src/abap/2_statements/expressions/sql_cds_parameters.ts:7:1 SQLCDSParameters
CLASS zcl_lnt_sqlcds_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sqlcds_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
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
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |=|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t21 TYPE REF TO object.
      t21 = t19.
      t18->oval = t21.
    ENDIF.
    t17 = t18.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t16 = t27.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t16.
      t15->oval = t31.
    ENDIF.
    t14 = t15.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t35 = t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t37 = zcl_lnt_st_combi_module=>alt( i_first = t38 i_second = t39 i_rest = t40 ).
    t13 = t37.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t13.
      t12->oval = t41.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t2 = t42.
    t1 = t2.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t52 = zcl_lnt_st_combi_module=>tok( i_t = t53 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t52.
      t51->oval = t54.
    ENDIF.
    t50 = t51.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t57 = zcl_lnt_st_combi_module=>tok( i_t = t58 ).
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t57.
      t56->oval = t59.
    ENDIF.
    t55 = t56.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t60 = t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    t62 = zcl_lnt_st_combi_module=>alt( i_first = t63 i_second = t64 i_rest = t65 ).
    t49 = t62.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t49.
      t48->oval = t66.
    ENDIF.
    t47 = t48.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    t67 = t68.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    t71 = t72.
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t71 ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = |,|.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = t80.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = CAST zif_lnt_statement_runnable( t1 ).
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t83.
      t82->oval = t84.
    ENDIF.
    t81 = t82.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t81 ).
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t89 i_rest = t90 ).
    t77 = t87.
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t77.
      t76->oval = t91.
    ENDIF.
    t75 = zcl_lnt_st_combi_module=>star_prio( i_first = t76 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t92 TYPE REF TO object.
      t92 = t75.
      t74->oval = t92.
    ENDIF.
    APPEND t74 TO t73->items.
    DATA(t93) = CAST zlnt_runtime_arra_c22708faf2e3( t71 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t98 = zcl_lnt_st_combi_module=>tok( i_t = t99 ).
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t98.
      t97->oval = t100.
    ENDIF.
    t96 = t97.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t104) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77 ).
    t103 = zcl_lnt_st_combi_module=>tok( i_t = t104 ).
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t105 TYPE REF TO object.
      t105 = t103.
      t102->oval = t105.
    ENDIF.
    t101 = t102.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    t106 = t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t96 ).
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
    DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t106 ).
    t108 = zcl_lnt_st_combi_module=>alt( i_first = t109 i_second = t110 i_rest = t111 ).
    t95 = t108.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t112 TYPE REF TO object.
      t112 = t95.
      t94->oval = t112.
    ENDIF.
    APPEND t94 TO t93->items.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t47 ).
    DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    DATA(t116) = CAST zlnt_runtime_arra_c22708faf2e3( t71 ).
    t113 = zcl_lnt_st_combi_module=>seq( i_first = t114 i_second = t115 i_rest = t116 ).
    t46 = t113.
    result = t46.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
  ENDMETHOD.
ENDCLASS.
