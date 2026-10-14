* TS: src/abap/2_statements/expressions/arith_operator.ts:5:1 ArithOperator
CLASS zcl_lnt_arith_operator DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_arith_operator IMPLEMENTATION.
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
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac ).
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
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b ).
    t10 = zcl_lnt_st_combi_module=>tok( i_t = t11 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t12 TYPE REF TO object.
      t12 = t10.
      t9->oval = t12.
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = |*|.
    CREATE OBJECT t16.
    t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t16->sval = t17.
    APPEND t16 TO t15->items.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = |**|.
    CREATE OBJECT t19.
    t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t19->sval = t20.
    APPEND t19 TO t18->items.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = |/|.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    APPEND t22 TO t21->items.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = |BIT-XOR|.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
    APPEND t25 TO t24->items.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = |BIT-AND|.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = t29.
    APPEND t28 TO t27->items.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = |BIT-OR|.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = t32.
    APPEND t31 TO t30->items.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = |DIV|.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    APPEND t34 TO t33->items.
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |MOD|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    APPEND t37 TO t36->items.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    t39 = zcl_lnt_st_combi_module=>alt_prio( i_first = t40 i_second = t41 i_rest = t42 ).
    t2 = t39.
    t1 = t2.
    DATA(t43) = CAST zif_lnt_statement_runnable( t1 ).
    result = t43.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3.
  ENDMETHOD.
ENDCLASS.
