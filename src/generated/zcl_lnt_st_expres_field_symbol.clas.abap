* TS: src/abap/2_statements/expressions/field_symbol.ts:5:1 FieldSymbol
CLASS zcl_lnt_st_expres_field_symbol DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_expres_field_symbol IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^<[A-Za-z0-9_\/%$\*]+$` flags = ||.
    t6->source = `^<[\w\/%$\*]+$`.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    IF t5 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t10 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t4 = t10->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    IF t14 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t13 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t16 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t13 = t16->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^[A-Za-z0-9_\/%$\*]+>$` flags = ||.
    t23->source = `^[\w\/%$\*]+>$`.
    t22 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t23 ).
    IF t22 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t21 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t27 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t21 = t27->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t13 i_rest = t18 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t37 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^<[A-Za-z0-9_\/%$\*\?]+>$` flags = ||.
    t37->source = `^<[\w\/%$\*\?]+>$`.
    t36 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t37 ).
    IF t36 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t35 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t41 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t35 = t41->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t44 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t46 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t44 = t46->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t35 i_second = t44 i_rest = t49 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
  ENDMETHOD.
ENDCLASS.
