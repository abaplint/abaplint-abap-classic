* TS: src/abap/2_statements/expressions/message_class.ts:5:1 MessageClass
CLASS zcl_lnt_st_message_class DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_message_class IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t5.
    DATA(t6) = `^>?[\w\/]+#?@?\/?!?&?>?\$?\??<?§?~?$`.
    DATA(t7) = `^>?[A-Za-z0-9_\/]+#?@?\/?!?&?>?\$?\??<?§?~?$`.
    DATA(t8) = ||.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t7 flags = t8.
    t5->source = t6.
    t4 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t5 ).
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t9 TYPE REF TO object.
      t9 = t4.
      t3->oval = t9.
    ENDIF.
    t2 = t3.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e ).
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t16 TYPE REF TO object.
      t16 = t14.
      t13->oval = t16.
    ENDIF.
    t12 = zcl_lnt_st_combi_module=>star_prio( i_first = t13 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t17 TYPE REF TO object.
      t17 = t12.
      t11->oval = t17.
    ENDIF.
    t10 = t11.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d31_5d276172db4584 ).
    t24 = zcl_lnt_st_combi_module=>tok( i_t = t25 ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t26 TYPE REF TO object.
      t26 = t24.
      t23->oval = t26.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>star_prio( i_first = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t22.
      t21->oval = t27.
    ENDIF.
    APPEND t21 TO t20->items.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t35 = zcl_lnt_st_combi_module=>tok( i_t = t36 ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t35.
      t34->oval = t37.
    ENDIF.
    t33 = t34.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t43.
    DATA(t44) = `^\w+$`.
    DATA(t45) = |^[A-Za-z0-9_]+$|.
    DATA(t46) = ||.
    CREATE OBJECT t43 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t45 flags = t46.
    t43->source = t44.
    t42 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t43 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t47 TYPE REF TO object.
      t47 = t42.
      t41->oval = t47.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>opt_prio( i_first = t41 ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t40.
      t39->oval = t48.
    ENDIF.
    t38 = t39.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t49 = t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t38 ).
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t53 i_rest = t54 ).
    t32 = t51.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t55 TYPE REF TO object.
      t55 = t32.
      t31->oval = t55.
    ENDIF.
    t30 = zcl_lnt_st_combi_module=>star_prio( i_first = t31 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t56 TYPE REF TO object.
      t56 = t30.
      t29->oval = t56.
    ENDIF.
    APPEND t29 TO t28->items.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817 ).
    t61 = zcl_lnt_st_combi_module=>tok( i_t = t62 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t63 TYPE REF TO object.
      t63 = t61.
      t60->oval = t63.
    ENDIF.
    t59 = zcl_lnt_st_combi_module=>opt_prio( i_first = t60 ).
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t59.
      t58->oval = t64.
    ENDIF.
    APPEND t58 TO t57->items.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t65 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t67 i_rest = t68 ).
    t1 = t65.
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d209_c21e0d8a3b4e.
  ENDMETHOD.
ENDCLASS.
