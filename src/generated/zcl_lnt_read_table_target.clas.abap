* TS: src/abap/2_statements/expressions/read_table_target.ts:6:1 ReadTableTarget
CLASS zcl_lnt_read_table_target DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_read_table_target IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |ASSIGNING|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t5 = zcl_lnt_st_combi_module=>seq( i_first = t7 i_second = t10 i_rest = t13 ).
    IF t5 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t5.
      TRY.
          t4 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t18 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t4 = t18->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |REFERENCE|.
    t25 = zcl_lnt_st_combi_module=>opt_prio( i_first = t26 ).
    IF t25 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t25.
      TRY.
          t24 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t28 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t24 = t28->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = |INTO|.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    t33->load( ).
    APPEND t36 TO t33->items.
    t33->save( ).
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t24 i_second = t31 i_rest = t33 ).
    IF t22 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t22.
      TRY.
          t21 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t42 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t21 = t42->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |TRANSPORTING NO FIELDS|.
    t44->load( ).
    APPEND t47 TO t44->items.
    t44->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t21 i_rest = t44 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258.
  ENDMETHOD.
ENDCLASS.
