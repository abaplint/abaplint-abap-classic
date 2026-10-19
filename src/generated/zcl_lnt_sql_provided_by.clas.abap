* TS: src/abap/2_statements/expressions/sql_provided_by.ts:5:1 SQLProvidedBy
CLASS zcl_lnt_sql_provided_by DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_provided_by IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = |PROVIDED BY|.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zcl_lnt_st_database_table.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t14) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t14->has = abap_true.
    t14->value = abap_true.
    t11 = t14.
    t10 = NEW zcl_lnt_st_database_table( i_no_dynamic = t11 ).
    DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t17 TYPE REF TO object.
    t17 = t10.
    TRY.
        t9 ?= t17.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t9 IS NOT BOUND.
      TRY.
          t16 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS BOUND.
        t9 = t16->source( ).
      ENDIF.
      IF t9 IS NOT BOUND.
        CREATE OBJECT t9.
        t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t9->oval = t10.
      ENDIF.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t22) = `^[\w\/]+$`.
    DATA(t23) = `^[A-Za-z0-9_\/]+$`.
    DATA(t24) = ||.
    CREATE OBJECT t21 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t23 flags = t24.
    t21->source = t22.
    t20 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t21 ).
    IF t20 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t20.
      TRY.
          t19 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t25 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t19 = t25->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    t29 = zcl_lnt_st_combi_module=>alt_prio( i_first = t9 i_second = t19 i_rest = t28 ).
    t7 = t29.
    IF t7 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t7.
      TRY.
          t6 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t33 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t6 = t33->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t36 ).
    result = t37.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d323_2cd6e0020229.
  ENDMETHOD.
ENDCLASS.
