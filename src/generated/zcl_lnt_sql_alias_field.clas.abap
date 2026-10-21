* TS: src/abap/2_statements/expressions/sql_alias_field.ts:5:1 SQLAliasField
CLASS zcl_lnt_sql_alias_field DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_alias_field IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t5) = `^(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+~(\/[A-Za-z0-9_]+\/)?[A-Za`.
    t5 = t5 && |-z0-9_]+$|.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = ||.
    t3->source = `^(\/\w+\/)?\w+~(\/\w+\/)?\w+$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac.
    t11 = zcl_lnt_st_combi_module=>tok( i_t = t12 ).
    IF t11 IS BOUND.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t10 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t13 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t10 = t13->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t16 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t18 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t16 = t18->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    t7 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t16 i_rest = t21 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t31 ?= t7.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t33 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t31 = t33->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t36 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t38 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t36 = t38->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t29 = zcl_lnt_st_combi_module=>alt_prio( i_first = t31 i_second = t36 i_rest = t41 ).
    IF t29 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t28 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t46 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t28 = t46->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t55 = zcl_lnt_st_combi_module=>tok( i_t = t56 ).
    IF t55 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t54 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t57 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t54 = t57->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t62 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t62->source = `^\w+$`.
    t61 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t62 ).
    IF t61 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t60 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t66 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t60 = t66->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t60 i_rest = t69 ).
    IF t52 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t51 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t74 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t51 = t74->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>star_prio( i_first = t51 ).
    IF t50 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t49 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t76 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t49 = t76->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    result = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t49 i_rest = t79 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d285_443a2a1b82f8.
  ENDMETHOD.
ENDCLASS.
