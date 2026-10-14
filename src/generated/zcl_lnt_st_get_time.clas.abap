* TS: src/abap/2_statements/statements/get_time.ts:7:1 GetTime
CLASS zcl_lnt_st_get_time DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_get_time IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |STAMP FIELD|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |FIELD|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t14 = zcl_lnt_st_combi_module=>alt( i_first = t15 i_second = t16 i_rest = t17 ).
    t5 = t14.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t5.
      t4->oval = t18.
    ENDIF.
    t3 = t4.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t26 i_rest = t27 ).
    t2 = t24.
    t1 = t2.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA(t29) = |KeyUser|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |GET TIME|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zif_lnt_statement_runnable( t1 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t39.
      t38->oval = t40.
    ENDIF.
    t37 = zcl_lnt_st_combi_module=>opt( i_first = t38 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t37.
      t36->oval = t41.
    ENDIF.
    t35 = t36.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    t42 = t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t35 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t31 = t44.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t31.
      t30->oval = t48.
    ENDIF.
    t28 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t29 i_first = t30 ).
    result = t28.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d506_926db0fe2390.
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
