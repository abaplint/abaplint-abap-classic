* TS: src/abap/2_statements/expressions/cond_sub.ts:6:1 CondSub
CLASS zcl_lnt_cond_sub DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cond_sub IMPLEMENTATION.
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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |NOT|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = zcl_lnt_st_combi_module=>opt_prio( i_first = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      t4->oval = t8.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t16 TYPE REF TO object.
      t16 = t14.
      t13->oval = t16.
    ENDIF.
    t12 = t13.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t21 TYPE REF TO object.
      t21 = t19.
      t18->oval = t21.
    ENDIF.
    t17 = t18.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t24 = zcl_lnt_st_combi_module=>alt_prio( i_first = t25 i_second = t26 i_rest = t27 ).
    t11 = t24.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t11.
      t10->oval = t28.
    ENDIF.
    t9 = t10.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    APPEND t32 TO t31->items.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t39 = zcl_lnt_st_combi_module=>tok( i_t = t40 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t39.
      t38->oval = t41.
    ENDIF.
    t37 = t38.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t44 = zcl_lnt_st_combi_module=>tok( i_t = t45 ).
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t44.
      t43->oval = t46.
    ENDIF.
    t42 = t43.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    t47 = t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t42 ).
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t47 ).
    t49 = zcl_lnt_st_combi_module=>alt_prio( i_first = t50 i_second = t51 i_rest = t52 ).
    t36 = t49.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t36.
      t35->oval = t53.
    ENDIF.
    APPEND t35 TO t34->items.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t56) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t29 ).
    t54 = zcl_lnt_st_combi_module=>seq( i_first = t55 i_second = t56 i_rest = t57 ).
    t2 = t54.
    t1 = t2.
    DATA(t58) = CAST zif_lnt_statement_runnable( t1 ).
    result = t58.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
  ENDMETHOD.
ENDCLASS.
