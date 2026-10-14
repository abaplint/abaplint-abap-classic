* TS: src/abap/2_statements/expressions/sql_over.ts.module module
CLASS zcl_lnt_sql_over_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA lparen TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA rparen TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_7e5747627b9e TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_8db5e9302d91.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_over_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_8db5e9302d91.
    IF zlnt_builtin_init_7e5747627b9e = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_7e5747627b9e = abap_true.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t2) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t1 = zcl_lnt_st_combi_module=>tok( i_t = t2 ).
    zcl_lnt_sql_over_module=>lparen = t1.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t6 = zcl_lnt_st_combi_module=>tok( i_t = t7 ).
    IF t6 IS BOUND.
      CREATE OBJECT t5.
      t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t8 TYPE REF TO object.
      t8 = t6.
      t5->oval = t8.
    ENDIF.
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77 ).
    t11 = zcl_lnt_st_combi_module=>tok( i_t = t12 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t13 TYPE REF TO object.
      t13 = t11.
      t10->oval = t13.
    ENDIF.
    t9 = t10.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t16 = zcl_lnt_st_combi_module=>alt_prio( i_first = t17 i_second = t18 i_rest = t19 ).
    t3 = t16.
    zcl_lnt_sql_over_module=>rparen = t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1847_3c59e24d05f9.
  ENDMETHOD.
ENDCLASS.
