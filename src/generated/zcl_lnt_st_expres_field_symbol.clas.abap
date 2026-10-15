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
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t6.
    DATA(t7) = `^<[\w\/%$\*]+$`.
    DATA(t8) = `^<[A-Za-z0-9_\/%$\*]+$`.
    DATA(t9) = ||.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t9.
    t6->source = t7.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t10.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      CLEAR t10.
      t11 = t5.
      TRY.
          t4 ?= t11.
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
    t3 = t4.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    CLEAR t13.
    IF t14 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      CLEAR t16.
      t17 = t14.
      TRY.
          t13 ?= t17.
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
    t12 = t13.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t20) = t18.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t23.
    DATA(t24) = `^[\w\/%$\*]+>$`.
    DATA(t25) = `^[A-Za-z0-9_\/%$\*]+>$`.
    DATA(t26) = ||.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t25 flags = t26.
    t23->source = t24.
    t22 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t23 ).
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      CLEAR t27.
      t28 = t22.
      TRY.
          t21 ?= t28.
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
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA(t30) = t3.
    DATA(t31) = t12.
    DATA(t32) = t18.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t2 = t29.
    t1 = t2.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t37.
    DATA(t38) = `^<[\w\/%$\*\?]+>$`.
    DATA(t39) = `^<[A-Za-z0-9_\/%$\*\?]+>$`.
    DATA(t40) = ||.
    CREATE OBJECT t37 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t39 flags = t40.
    t37->source = t38.
    t36 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t37 ).
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t41.
      DATA t42 TYPE REF TO object.
      CLEAR t42.
      CLEAR t41.
      t42 = t36.
      TRY.
          t35 ?= t42.
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
    t34 = t35.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = t1.
    CLEAR t44.
    IF t45 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t46.
      DATA t47 TYPE REF TO object.
      CLEAR t47.
      CLEAR t46.
      t47 = t45.
      TRY.
          t44 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t46 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t44 = t46->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t43 = t44.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA(t51) = t34.
    DATA(t52) = t43.
    DATA(t53) = t48.
    t50 = zcl_lnt_st_combi_module=>alt_prio( i_first = t51 i_second = t52 i_rest = t53 ).
    t33 = t50.
    result = t33.

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
