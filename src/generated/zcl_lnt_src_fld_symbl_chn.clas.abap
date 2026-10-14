* TS: src/abap/2_statements/expressions/source_field_symbol_chain.ts:5:1 SourceFieldSymbolChain
CLASS zcl_lnt_src_fld_symbl_chn DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_src_fld_symbl_chn IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
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
    DATA(t5) = NEW zcl_lnt_arrow_or_dash(  ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t6 TYPE REF TO object.
      t6 = t5.
      t4->oval = t6.
    ENDIF.
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t8->cval = t9.
    ENDIF.
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t7 ).
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t12 = zcl_lnt_st_combi_module=>seq( i_first = t13 i_second = t14 i_rest = t15 ).
    t2 = t12.
    t1 = t2.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
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
    t22 = zcl_lnt_st_combi_module=>star_prio( i_first = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t26 TYPE REF TO object.
      t26 = t22.
      t21->oval = t26.
    ENDIF.
    t20 = t21.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t27 = t28.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t31 = zcl_lnt_st_combi_module=>opt_prio( i_first = t32 ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t34 TYPE REF TO object.
      t34 = t31.
      t30->oval = t34.
    ENDIF.
    APPEND t30 TO t29->items.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t37 i_rest = t38 ).
    t16 = t35.
    result = t16.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e.
  ENDMETHOD.
ENDCLASS.
