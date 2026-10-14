* TS: src/abap/2_statements/expressions/concatenated_constant.ts:4:1 ConcatenatedConstant
CLASS zcl_lnt_concatenated_constant DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_concatenated_constant IMPLEMENTATION.
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t6.
    DATA(t7) = |^`.*`$|.
    DATA(t8) = ||.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t7 flags = t8.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t9 TYPE REF TO object.
      t9 = t5.
      t4->oval = t9.
    ENDIF.
    t3 = t4.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = |&|.
    CREATE OBJECT t16.
    t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t16->sval = t17.
    t15 = t16.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t21.
    DATA(t22) = |^`.*`$|.
    DATA(t23) = ||.
    CREATE OBJECT t21 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t22 flags = t23.
    t20 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t21 ).
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t20.
      t19->oval = t24.
    ENDIF.
    t18 = t19.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t18 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t14 = t27.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t14.
      t13->oval = t31.
    ENDIF.
    t12 = zcl_lnt_st_combi_module=>plus_prio( i_first = t13 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t12.
      t11->oval = t32.
    ENDIF.
    t10 = t11.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    t33 = t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t37 i_rest = t38 ).
    t2 = t35.
    t1 = t2.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t44.
    DATA(t45) = |^'.*'$|.
    DATA(t46) = ||.
    CREATE OBJECT t44 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t45 flags = t46.
    t43 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t44 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t47 TYPE REF TO object.
      t47 = t43.
      t42->oval = t47.
    ENDIF.
    t41 = t42.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |&|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t59.
    DATA(t60) = |^'.*'$|.
    DATA(t61) = ||.
    CREATE OBJECT t59 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t60 flags = t61.
    t58 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t59 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t62 TYPE REF TO object.
      t62 = t58.
      t57->oval = t62.
    ENDIF.
    t56 = t57.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t63 = t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t63 ).
    t65 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t67 i_rest = t68 ).
    t52 = t65.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t52.
      t51->oval = t69.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>plus_prio( i_first = t51 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t70 TYPE REF TO object.
      t70 = t50.
      t49->oval = t70.
    ENDIF.
    t48 = t49.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    t71 = t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t75) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t71 ).
    t73 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t75 i_rest = t76 ).
    t40 = t73.
    t39 = t40.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( t1 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    t78 = t79.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = CAST zif_lnt_statement_runnable( t39 ).
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t85 TYPE REF TO object.
      t85 = t84.
      t83->oval = t85.
    ENDIF.
    t82 = t83.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    t86 = t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t82 ).
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t86 ).
    t88 = zcl_lnt_st_combi_module=>alt_prio( i_first = t89 i_second = t90 i_rest = t91 ).
    t77 = t88.
    result = t77.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b.
  ENDMETHOD.
ENDCLASS.
