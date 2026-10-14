* TS: src/abap/2_statements/statements/subtract.ts:7:1 Subtract
CLASS zcl_lnt_st_subtract DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_subtract IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |SUBTRACT|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |FROM|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    APPEND t15 TO t14->items.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t17 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t19 i_rest = t20 ).
    t2 = t17.
    t1 = t2.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA(t22) = |KeyUser|.
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
    t21 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t22 i_first = t23 ).
    result = t21.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d629_0a8dd0d3dcb1.
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
