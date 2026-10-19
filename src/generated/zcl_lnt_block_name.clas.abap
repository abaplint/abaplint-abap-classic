* TS: src/abap/2_statements/expressions/block_name.ts:5:1 BlockName
CLASS zcl_lnt_block_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_block_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b.
    t7 = zcl_lnt_st_combi_module=>tok( i_t = t8 ).
    IF t7 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t10 TYPE REF TO object.
      t10 = t7.
      TRY.
          t6 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t9 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t6 = t9->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>opt_prio( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t5.
      TRY.
          t4 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t11 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t4 = t11->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t16 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^[A-Za-z0-9_%\$\*]+$` flags = ||.
    t16->source = `^[\w%\$\*]+$`.
    t15 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t16 ).
    IF t15 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
      t21 = t15.
      TRY.
          t14 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t20 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t14 = t20->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t31 = zcl_lnt_st_combi_module=>tok( i_t = t32 ).
    IF t31 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t31.
      TRY.
          t30 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t33 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t30 = t33->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^[A-Za-z0-9_%\$\*]+$` flags = ||.
    t38->source = `^[\w%\$\*]+$`.
    t37 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t38 ).
    IF t37 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t37.
      TRY.
          t36 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t42 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t36 = t42->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t36 i_rest = t45 ).
    IF t28 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
      t51 = t28.
      TRY.
          t27 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t50 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t27 = t50->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26 = zcl_lnt_st_combi_module=>star_prio( i_first = t27 ).
    IF t26 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t53 TYPE REF TO object.
      t53 = t26.
      TRY.
          t25 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t52 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t25 = t52->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    t22->load( ).
    APPEND t25 TO t22->items.
    t22->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t14 i_rest = t22 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
  ENDMETHOD.
ENDCLASS.
