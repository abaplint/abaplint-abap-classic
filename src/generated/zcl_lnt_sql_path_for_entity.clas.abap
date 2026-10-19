* TS: src/abap/2_statements/expressions/sql_path_for_entity.ts:8:1 SQLPathForEntity
CLASS zcl_lnt_sql_path_for_entity DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_for_entity IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = NEW zcl_lnt_sqlcte_path_prefix( ).
    DATA t6 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t7 TYPE REF TO object.
    t7 = t5.
    TRY.
        t4 ?= t7.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t4 IS NOT BOUND.
      TRY.
          t6 ?= t5.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS BOUND.
        t4 = t6->source( ).
      ENDIF.
      IF t4 IS NOT BOUND.
        CREATE OBJECT t4.
        t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t4->oval = t5.
      ENDIF.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zcl_lnt_st_database_table.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t10 = NEW zcl_lnt_st_database_table( i_no_dynamic = t11 ).
    DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t13 TYPE REF TO object.
    t13 = t10.
    TRY.
        t9 ?= t13.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t9 IS NOT BOUND.
      TRY.
          t12 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS BOUND.
        t9 = t12->source( ).
      ENDIF.
      IF t9 IS NOT BOUND.
        CREATE OBJECT t9.
        t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t9->oval = t10.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    t16 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t9 i_rest = t15 ).
    t1 = t16.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    DATA t24 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd.
    DATA(t25) = |v740sp05|.
    t23 = t24->get( p0 = t25 ).
    t22 = t23.
    IF t22 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t22.
      TRY.
          t21 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t26 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t21 = t26->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t1.
      TRY.
          t33 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t35 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t33 = t35->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t32 = zcl_lnt_st_combi_module=>opt_prio( i_first = t33 ).
    IF t32 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t32.
      TRY.
          t31 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t37 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t31 = t37->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zcl_lnt_sql_path_segment.
    DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t43 = NEW zcl_lnt_sql_path_segment( i_nws = t44 ).
    DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t46 TYPE REF TO object.
    t46 = t43.
    TRY.
        t42 ?= t46.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t42 IS NOT BOUND.
      TRY.
          t45 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS BOUND.
        t42 = t45->source( ).
      ENDIF.
      IF t42 IS NOT BOUND.
        CREATE OBJECT t42.
        t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t42->oval = t43.
      ENDIF.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>plus( i_first = t42 ).
    IF t41 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t41.
      TRY.
          t40 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t47 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t40 = t47->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t40 i_rest = t50 ).
    t29 = t51.
    IF t29 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t56 TYPE REF TO object.
      t56 = t29.
      TRY.
          t28 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t55 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t28 = t55->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zcl_lnt_iver_options.
    t20 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t21 i_first = t28 i_opts = t57 ).
    result = t20.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d343_356b2fce6a0b.
  ENDMETHOD.
ENDCLASS.
