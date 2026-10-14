* TS: src/abap/2_statements/statements/catch_system_exceptions.ts:7:1 CatchSystemExceptions
CLASS zcl_lnt_st_ctch_systm_excptns DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_ctch_systm_excptns IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |CATCH SYSTEM-EXCEPTIONS|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |=|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    APPEND t20 TO t19->items.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t24 i_rest = t25 ).
    t10 = t22.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t26 TYPE REF TO object.
      t26 = t10.
      t9->oval = t26.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>plus( i_first = t9 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t8.
      t7->oval = t27.
    ENDIF.
    t6 = t7.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    t30 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t32 i_rest = t33 ).
    t2 = t30.
    t1 = t2.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = |Cloud|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = CAST zif_lnt_statement_runnable( t1 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t37.
      t36->oval = t38.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t35 i_first = t36 ).
    result = t34.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d386_3ffcc7d99584.
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
