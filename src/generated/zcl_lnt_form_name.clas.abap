* TS: src/abap/2_statements/expressions/form_name.ts:5:1 FormName
CLASS zcl_lnt_form_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_form_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^!?[A-Za-z0-9_%$\*\/\?<>]+$` flags = ||.
    t5->source = `^!?[\w%$\*\/\?<>]+$`.
    t4 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t5 ).
    IF t4 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t10 TYPE REF TO object.
      t10 = t4.
      TRY.
          t3 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t9 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t3 = t9->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t18 = zcl_lnt_st_combi_module=>tok( i_t = t19 ).
    IF t18 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
      t21 = t18.
      TRY.
          t17 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t20 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t17 = t20->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA t27 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t27 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t27->source = `^\w+$`.
    t26 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t27 ).
    IF t26 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t32 TYPE REF TO object.
      t32 = t26.
      TRY.
          t25 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t31 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t25 = t31->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    t24 = zcl_lnt_st_combi_module=>opt_prio( i_first = t25 ).
    IF t24 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t24.
      TRY.
          t23 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t33 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t23 = t33->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t17 i_second = t23 i_rest = t36 ).
    IF t15 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t15.
      TRY.
          t14 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t41 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t14 = t41->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>star_prio( i_first = t14 ).
    IF t13 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t13.
      TRY.
          t12 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t43 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t12 = t43->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d23_6b4b88957b2c9e.
    t51 = zcl_lnt_st_combi_module=>tok( i_t = t52 ).
    IF t51 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t51.
      TRY.
          t50 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t53 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t50 = t53->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt_prio( i_first = t50 ).
    IF t49 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t56 TYPE REF TO object.
      t56 = t49.
      TRY.
          t48 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t55 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t48 = t55->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t45->load( ).
    APPEND t48 TO t45->items.
    t45->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t12 i_rest = t45 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
  ENDMETHOD.
ENDCLASS.
