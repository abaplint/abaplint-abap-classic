* TS: src/abap/2_statements/expressions/sql_alias_field.ts:5:1 SQLAliasField
CLASS zcl_lnt_sql_alias_field DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_alias_field IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^(\/\w+\/)?\w+~(\/\w+\/)?\w+$`.
    DATA(t5) = `^(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+~(\/[A-Za-z0-9_]+\/)?[A-Za`.
    t5 = t5 && |-z0-9_]+$|.
    DATA(t6) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3->source = t4.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97 ).
    t11 = zcl_lnt_st_combi_module=>tok( i_t = t12 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t13 TYPE REF TO object.
      t13 = t11.
      t10->oval = t13.
    ENDIF.
    t9 = t10.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zif_lnt_statement_runnable( t1 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t17 TYPE REF TO object.
      t17 = t16.
      t15->oval = t17.
    ENDIF.
    t14 = t15.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t22 i_rest = t23 ).
    t8 = t20.
    t7 = t8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = CAST zif_lnt_statement_runnable( t7 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t30.
      t29->oval = t31.
    ENDIF.
    t28 = t29.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = CAST zif_lnt_statement_runnable( t1 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t34.
      t33->oval = t35.
    ENDIF.
    t32 = t33.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    t38 = zcl_lnt_st_combi_module=>alt_prio( i_first = t39 i_second = t40 i_rest = t41 ).
    t27 = t38.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t42 TYPE REF TO object.
      t42 = t27.
      t26->oval = t42.
    ENDIF.
    t25 = t26.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t50 = zcl_lnt_st_combi_module=>tok( i_t = t51 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t50.
      t49->oval = t52.
    ENDIF.
    t48 = t49.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t56.
    DATA(t57) = `^\w+$`.
    DATA(t58) = |^[A-Za-z0-9_]+$|.
    DATA(t59) = ||.
    CREATE OBJECT t56 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t58 flags = t59.
    t56->source = t57.
    t55 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t56 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t60 TYPE REF TO object.
      t60 = t55.
      t54->oval = t60.
    ENDIF.
    t53 = t54.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    t61 = t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t61 ).
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t64 i_second = t65 i_rest = t66 ).
    t47 = t63.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t67 TYPE REF TO object.
      t67 = t47.
      t46->oval = t67.
    ENDIF.
    t45 = zcl_lnt_st_combi_module=>star_prio( i_first = t46 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t45.
      t44->oval = t68.
    ENDIF.
    t43 = t44.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t24 = t71.
    result = t24.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
  ENDMETHOD.
ENDCLASS.
