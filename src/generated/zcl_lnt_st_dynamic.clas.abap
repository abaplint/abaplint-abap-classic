* TS: src/abap/2_statements/expressions/dynamic.ts:6:1 Dynamic
CLASS zcl_lnt_st_dynamic DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_dynamic IMPLEMENTATION.
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t8 = zcl_lnt_st_combi_module=>tok( i_t = t9 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t10 TYPE REF TO object.
      t10 = t8.
      t7->oval = t10.
    ENDIF.
    t6 = t7.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t13 = zcl_lnt_st_combi_module=>tok( i_t = t14 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t13.
      t12->oval = t15.
    ENDIF.
    t11 = t12.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t19 i_second = t20 i_rest = t21 ).
    t5 = t18.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t22 TYPE REF TO object.
      t22 = t5.
      t4->oval = t22.
    ENDIF.
    t3 = t4.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    t34 = zcl_lnt_st_combi_module=>alt_prio( i_first = t35 i_second = t36 i_rest = t37 ).
    t25 = t34.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t25.
      t24->oval = t38.
    ENDIF.
    t23 = t24.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t47) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t46 = zcl_lnt_st_combi_module=>tok( i_t = t47 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t46.
      t45->oval = t48.
    ENDIF.
    t44 = t45.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44 ).
    t51 = zcl_lnt_st_combi_module=>tok( i_t = t52 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t51.
      t50->oval = t53.
    ENDIF.
    t49 = t50.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t44 ).
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t56 = zcl_lnt_st_combi_module=>alt_prio( i_first = t57 i_second = t58 i_rest = t59 ).
    t43 = t56.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t60 TYPE REF TO object.
      t60 = t43.
      t42->oval = t60.
    ENDIF.
    APPEND t42 TO t41->items.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t62 i_second = t63 i_rest = t64 ).
    t2 = t61.
    t1 = t2.
    DATA(t65) = CAST zif_lnt_statement_runnable( t1 ).
    result = t65.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
  ENDMETHOD.
ENDCLASS.
