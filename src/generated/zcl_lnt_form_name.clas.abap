* TS: src/abap/2_statements/expressions/form_name.ts:5:1 FormName
CLASS zcl_lnt_form_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_form_name IMPLEMENTATION.
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
    DATA(t6) = `^!?[\w%$\*\/\?<>]+$`.
    DATA(t7) = `^!?[A-Za-z0-9_%$\*\/\?<>]+$`.
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
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t17 = zcl_lnt_st_combi_module=>tok( i_t = t18 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t19 TYPE REF TO object.
      t19 = t17.
      t16->oval = t19.
    ENDIF.
    t15 = t16.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t25.
    DATA(t26) = `^\w+$`.
    DATA(t27) = |^[A-Za-z0-9_]+$|.
    DATA(t28) = ||.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t28.
    t25->source = t26.
    t24 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t25 ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t24.
      t23->oval = t29.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>opt_prio( i_first = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t22.
      t21->oval = t30.
    ENDIF.
    t20 = t21.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t31 = t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t34 i_second = t35 i_rest = t36 ).
    t14 = t33.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t14.
      t13->oval = t37.
    ENDIF.
    t12 = zcl_lnt_st_combi_module=>star_prio( i_first = t13 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t12.
      t11->oval = t38.
    ENDIF.
    t10 = t11.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817 ).
    t45 = zcl_lnt_st_combi_module=>tok( i_t = t46 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t47 TYPE REF TO object.
      t47 = t45.
      t44->oval = t47.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>opt_prio( i_first = t44 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t43.
      t42->oval = t48.
    ENDIF.
    APPEND t42 TO t41->items.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t51 i_rest = t52 ).
    t1 = t49.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82.
  ENDMETHOD.
ENDCLASS.
