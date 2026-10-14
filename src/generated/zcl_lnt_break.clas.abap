* TS: src/abap/2_statements/statements/break.ts:7:1 Break
CLASS zcl_lnt_break DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_break IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = |AT NEXT APPLICATION STATEMENT|.
    t2 = zcl_lnt_st_combi_module=>str( i_s = t3 ).
    t1 = t2.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |BREAK-POINT|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = CAST zif_lnt_statement_runnable( t1 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t20 TYPE REF TO object.
      t20 = t19.
      t18->oval = t20.
    ENDIF.
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t22->cval = t23.
    ENDIF.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t24 = t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
    t26 = zcl_lnt_st_combi_module=>alt_prio( i_first = t27 i_second = t28 i_rest = t29 ).
    t16 = t26.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t16.
      t15->oval = t30.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>opt_prio( i_first = t15 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t14.
      t13->oval = t31.
    ENDIF.
    t12 = t13.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t8 = t34.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t8.
      t7->oval = t38.
    ENDIF.
    t6 = t7.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = |BREAK|.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t50.
    DATA(t51) = |.*|.
    DATA(t52) = ||.
    CREATE OBJECT t50 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t51 flags = t52.
    t49 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t50 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t49.
      t48->oval = t53.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>star_prio( i_first = t48 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t47.
      t46->oval = t54.
    ENDIF.
    t45 = t46.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    t55 = t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t42 ).
    DATA(t59) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t59 i_rest = t60 ).
    t41 = t57.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t41.
      t40->oval = t61.
    ENDIF.
    t39 = t40.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t62 = t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t64 = zcl_lnt_st_combi_module=>alt_prio( i_first = t65 i_second = t66 i_rest = t67 ).
    t5 = t64.
    t4 = t5.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA(t69) = |Cloud|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = CAST zif_lnt_statement_runnable( t4 ).
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t72 TYPE REF TO object.
      t72 = t71.
      t70->oval = t72.
    ENDIF.
    t68 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t69 i_first = t70 ).
    result = t68.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d369_e12b40f37a38.
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
