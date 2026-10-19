* TS: src/abap/2_statements/expressions/macro_name.ts:5:1 MacroName
CLASS zcl_lnt_macro_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macro_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t2 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t2 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_\*%\?$&]+>?$` flags = ||.
    t2->source = `^(\/\w+\/)?[\w\*%\?$&]+>?$`.
    t1 = t2.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    t9 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t1 ).
    IF t9 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t9.
      TRY.
          t8 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8 IS NOT BOUND.
        TRY.
            t11 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t8 = t11->source( ).
        ENDIF.
        IF t8 IS NOT BOUND.
          CREATE OBJECT t8.
          t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t20 = zcl_lnt_st_combi_module=>tok( i_t = t21 ).
    IF t20 IS BOUND.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t20.
      TRY.
          t19 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t22 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t19 = t22->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    t26 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t1 ).
    IF t26 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t26.
      TRY.
          t25 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t28 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t25 = t28->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t17 = zcl_lnt_st_combi_module=>seq( i_first = t19 i_second = t25 i_rest = t31 ).
    IF t17 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t17.
      TRY.
          t16 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t36 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t16 = t36->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t15 = zcl_lnt_st_combi_module=>star_prio( i_first = t16 ).
    IF t15 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t15.
      TRY.
          t14 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t38 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t14 = t38->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    result = zcl_lnt_st_combi_module=>seq( i_first = t8 i_second = t14 i_rest = t41 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d214_4a4b8612d221.
  ENDMETHOD.
ENDCLASS.
