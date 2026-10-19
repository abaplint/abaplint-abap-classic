* TS: src/abap/2_statements/expressions/sql_path_cardinality.ts:5:1 SQLPathCardinality
CLASS zcl_lnt_sql_path_cardinality DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_cardinality IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t12 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t12->source = `^\d+$`.
    t11 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t12 ).
    IF t11 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t17 TYPE REF TO object.
      t17 = t11.
      TRY.
          t10 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t16 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t10 = t16->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t22 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    IF t22 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t22.
      TRY.
          t21 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t24 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t21 = t24->source( ).
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
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t10 i_rest = t18 ).
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t34 = zcl_lnt_st_combi_module=>tok( i_t = t35 ).
    IF t34 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t34.
      TRY.
          t33 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t36 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t33 = t36->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |*|.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t45 = zcl_lnt_st_combi_module=>tok( i_t = t46 ).
    IF t45 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t45.
      TRY.
          t44 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t47 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t44 = t47->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t41->load( ).
    APPEND t44 TO t41->items.
    t41->save( ).
    t30 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t39 i_rest = t41 ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t58 TYPE REF TO object.
      t58 = t1.
      TRY.
          t55 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t57 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t55 = t57->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t63 TYPE REF TO object.
      t63 = t30.
      TRY.
          t60 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t62 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t60 = t62->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t55 i_second = t60 i_rest = t65 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d342_e6333b069746.
  ENDMETHOD.
ENDCLASS.
