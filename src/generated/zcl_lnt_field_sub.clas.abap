* TS: src/abap/2_statements/expressions/field_sub.ts:7:1 FieldSub
CLASS zcl_lnt_field_sub DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_field_sub IMPLEMENTATION.
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
    DATA(t7) = `^\*?!?&?(\/\w+\/)?[a-zA-Z_%$\?][\w%$\$\*]*$`.
    DATA(t8) = `^\*?!?&?(\/[A-Za-z0-9_]+\/)?[a-zA-Z_%$\?][A-Za-z0-9_%$\$\*]*`.
    t8 = t8 && |$|.
    DATA(t9) = ||.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t9.
    t6->source = t7.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t10 TYPE REF TO object.
      t10 = t5.
      t4->oval = t10.
    ENDIF.
    t3 = t4.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t18 = zcl_lnt_st_combi_module=>tok( i_t = t19 ).
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t20 TYPE REF TO object.
      t20 = t18.
      t17->oval = t20.
    ENDIF.
    t16 = t17.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t24.
    DATA(t25) = `^[\w%$\$\*]+$`.
    DATA(t26) = `^[A-Za-z0-9_%$\$\*]+$`.
    DATA(t27) = ||.
    CREATE OBJECT t24 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t26 flags = t27.
    t24->source = t25.
    t23 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t24 ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t23.
      t22->oval = t28.
    ENDIF.
    t21 = t22.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    t31 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t33 i_rest = t34 ).
    t15 = t31.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t15.
      t14->oval = t35.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>star_prio( i_first = t14 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t13.
      t12->oval = t36.
    ENDIF.
    t11 = t12.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t37 = t38.
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>opt( i_first = t42 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t44 TYPE REF TO object.
      t44 = t41.
      t40->oval = t44.
    ENDIF.
    APPEND t40 TO t39->items.
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>opt( i_first = t48 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t50 TYPE REF TO object.
      t50 = t47.
      t46->oval = t50.
    ENDIF.
    APPEND t46 TO t45->items.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t53 i_rest = t54 ).
    t2 = t51.
    t1 = t2.
    DATA(t55) = CAST zif_lnt_statement_runnable( t1 ).
    result = t55.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
  ENDMETHOD.
ENDCLASS.
