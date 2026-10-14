* TS: src/abap/2_statements/expressions/report_name.ts:5:1 ReportName
CLASS zcl_lnt_report_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_report_name IMPLEMENTATION.
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
    DATA(t6) = `^[\w/$%&=]+$`.
    DATA(t7) = |^[A-Za-z0-9_/$%&=]+$|.
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
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t23.
    DATA(t24) = `^\w+$`.
    DATA(t25) = |^[A-Za-z0-9_]+$|.
    DATA(t26) = ||.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t25 flags = t26.
    t23->source = t24.
    t22 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t22.
      t21->oval = t27.
    ENDIF.
    t20 = t21.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    t30 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t32 i_rest = t33 ).
    t14 = t30.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t34 TYPE REF TO object.
      t34 = t14.
      t13->oval = t34.
    ENDIF.
    t12 = zcl_lnt_st_combi_module=>star( i_first = t13 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t12.
      t11->oval = t35.
    ENDIF.
    t10 = t11.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t40 i_rest = t41 ).
    t1 = t38.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
  ENDMETHOD.
ENDCLASS.
