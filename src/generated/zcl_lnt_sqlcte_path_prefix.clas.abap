* TS: src/abap/2_statements/expressions/sql_cte_path_prefix.ts:5:1 SQLCTEPathPrefix
CLASS zcl_lnt_sqlcte_path_prefix DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sqlcte_path_prefix IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+~$| flags = ||.
    t3->source = `^\w+~$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac.
    t13 = zcl_lnt_st_combi_module=>tok( i_t = t14 ).
    IF t13 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
      t16 = t13.
      TRY.
          t12 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t15 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t12 = t15->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
      t21 = t1.
      TRY.
          t18 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t20 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t18 = t20->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t10 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t18 i_rest = t23 ).
    IF t10 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t10.
      TRY.
          t9 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t28 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t9 = t28->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t1.
      TRY.
          t31 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t33 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t31 = t33->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t9 i_second = t31 i_rest = t36 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d308_c2d6db3f5bbf.
  ENDMETHOD.
ENDCLASS.
