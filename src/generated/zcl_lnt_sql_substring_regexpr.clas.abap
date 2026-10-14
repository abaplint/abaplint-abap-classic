* TS: src/abap/2_statements/expressions/sql_substring_regexpr.ts:10:1 SQLSubstringRegexpr
CLASS zcl_lnt_sql_substring_regexpr DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_substring_regexpr IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |SUBSTRING_REGEXPR|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |SUBSTR_REGEXPR|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t19.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t19 = zcl_lnt_version_module=>release_b8cd.
    DATA(t20) = |v758|.
    t18 = t19->get( p0 = t20 ).
    t17 = t18.
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t21 TYPE REF TO object.
      t21 = t17.
      t16->oval = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zif_lnt_statement_runnable( t1 ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t26.
      t25->oval = t27.
    ENDIF.
    t24 = t25.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t30 = zcl_lnt_st_combi_module=>tok( i_t = t31 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t30.
      t29->oval = t32.
    ENDIF.
    t28 = t29.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    t33 = t34.
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    APPEND t36 TO t35->items.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d318_e4aedf15dc12 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>opt_prio( i_first = t41 ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t43 TYPE REF TO object.
      t43 = t40.
      t39->oval = t43.
    ENDIF.
    APPEND t39 TO t38->items.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d319_3b9487add007 ).
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt_prio( i_first = t47 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t46.
      t45->oval = t49.
    ENDIF.
    APPEND t45 TO t44->items.
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d320_7be18f722ddf ).
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>opt_prio( i_first = t53 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t55 TYPE REF TO object.
      t55 = t52.
      t51->oval = t55.
    ENDIF.
    APPEND t51 TO t50->items.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t59) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t58 = zcl_lnt_st_combi_module=>tok( i_t = t59 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t60 TYPE REF TO object.
      t60 = t58.
      t57->oval = t60.
    ENDIF.
    APPEND t57 TO t56->items.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t62 i_second = t63 i_rest = t64 ).
    t23 = t61.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t65 TYPE REF TO object.
      t65 = t23.
      t22->oval = t65.
    ENDIF.
    DATA t66 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t66.
    t15 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t16 i_first = t22 i_opts = t66 ).
    result = t15.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d305_1d893c9cc0cb.
  ENDMETHOD.
ENDCLASS.
