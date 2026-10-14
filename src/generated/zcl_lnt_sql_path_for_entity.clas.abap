* TS: src/abap/2_statements/expressions/sql_path_for_entity.ts:8:1 SQLPathForEntity
CLASS zcl_lnt_sql_path_for_entity DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_for_entity IMPLEMENTATION.
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
    DATA(t5) = NEW zcl_lnt_sqlcte_path_prefix(  ).
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
    DATA t9 TYPE REF TO zcl_lnt_st_database_table.
    DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t10.
    t9 = NEW zcl_lnt_st_database_table( i_no_dynamic = t10 ).
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t9.
      t8->oval = t11.
    ENDIF.
    t7 = t8.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t7 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t14 = zcl_lnt_st_combi_module=>alt_prio( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t22.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t22 = zcl_lnt_version_module=>release_b8cd.
    DATA(t23) = |v740sp05|.
    t21 = t22->get( p0 = t23 ).
    t20 = t21.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t20.
      t19->oval = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = CAST zif_lnt_statement_runnable( t1 ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t31.
      t30->oval = t32.
    ENDIF.
    t29 = zcl_lnt_st_combi_module=>opt_prio( i_first = t30 ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t29.
      t28->oval = t33.
    ENDIF.
    t27 = t28.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_sql_path_segment.
    DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t39.
    t38 = NEW zcl_lnt_sql_path_segment( i_nws = t39 ).
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t38.
      t37->oval = t40.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>plus( i_first = t37 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t36.
      t35->oval = t41.
    ENDIF.
    t34 = t35.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    t42 = t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t26 = t44.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t26.
      t25->oval = t48.
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t49.
    t18 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t19 i_first = t25 i_opts = t49 ).
    result = t18.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d325_95314ae809d0.
  ENDMETHOD.
ENDCLASS.
