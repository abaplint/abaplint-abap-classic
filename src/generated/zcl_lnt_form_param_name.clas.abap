* TS: src/abap/2_statements/expressions/form_param_name.ts:5:1 FormParamName
CLASS zcl_lnt_form_param_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_form_param_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^[\w$&\*%\/]+$`.
    DATA(t5) = `^[A-Za-z0-9_$&\*%\/]+$`.
    DATA(t6) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3->source = t4.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zif_lnt_statement_runnable( t1 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t10.
      t9->oval = t11.
    ENDIF.
    t8 = t9.
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
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
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
    DATA(t24) = CAST zif_lnt_statement_runnable( t1 ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t24.
      t23->oval = t25.
    ENDIF.
    t22 = t23.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t30 i_rest = t31 ).
    t16 = t28.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t16.
      t15->oval = t32.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>star_prio( i_first = t15 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t14.
      t13->oval = t33.
    ENDIF.
    t12 = t13.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    t34 = t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t37 i_second = t38 i_rest = t39 ).
    t7 = t36.
    result = t7.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d177_c99f21007fa4.
  ENDMETHOD.
ENDCLASS.
