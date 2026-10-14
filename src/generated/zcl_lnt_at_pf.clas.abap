* TS: src/abap/2_statements/statements/at_pf.ts:6:1 AtPF
CLASS zcl_lnt_at_pf DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_at_pf IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA(t2) = |Cloud|.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |AT|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t11.
    DATA(t12) = `^PF\d\d?$`.
    DATA(t13) = |^PF[0-9][0-9]?$|.
    DATA(t14) = |i|.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t13 flags = t14.
    t11->source = t12.
    t10 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t11 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t10.
      t9->oval = t15.
    ENDIF.
    t8 = t9.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t19 i_second = t20 i_rest = t21 ).
    t4 = t18.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t22 TYPE REF TO object.
      t22 = t4.
      t3->oval = t22.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t2 i_first = t3 ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d364_7507b5cec011.
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
