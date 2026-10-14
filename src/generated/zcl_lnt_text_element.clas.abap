* TS: src/abap/2_statements/expressions/text_element.ts:6:1 TextElement
CLASS zcl_lnt_text_element DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_text_element IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = |TEXT|.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = t4.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t7 = zcl_lnt_st_combi_module=>tok( i_t = t8 ).
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t9 TYPE REF TO object.
      t9 = t7.
      t6->oval = t9.
    ENDIF.
    t5 = t6.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d333_b60636864266 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    APPEND t13 TO t12->items.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t16 i_second = t17 i_rest = t18 ).
    t1 = t15.
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
  ENDMETHOD.
ENDCLASS.
