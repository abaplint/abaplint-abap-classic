* TS: src/abap/2_statements/expressions/simple_source4.ts:6:1 SimpleSource4
CLASS zcl_lnt_simple_source4 DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_simple_source4 IMPLEMENTATION.
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
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t3->cval = t4.
    ENDIF.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c ).
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t11->cval = t12.
    ENDIF.
    APPEND t11 TO t10->items.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3 ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    APPEND t14 TO t13->items.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t16 = zcl_lnt_st_combi_module=>alt( i_first = t17 i_second = t18 i_rest = t19 ).
    t1 = t16.
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
  ENDMETHOD.
ENDCLASS.
