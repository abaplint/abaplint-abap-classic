* TS: src/abap/2_statements/statements/clear.ts:6:1 Clear
CLASS zcl_lnt_st_clear DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_clear IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |WITH|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |IN CHARACTER MODE|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |IN BYTE MODE|.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = |CLEAR|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t1.
      TRY.
          t41 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t43 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t41 = t43->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>opt_prio( i_first = t41 ).
    IF t40 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t46 TYPE REF TO object.
      t46 = t40.
      TRY.
          t39 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t45 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t39 = t45->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t36->load( ).
    APPEND t39 TO t36->items.
    t36->save( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t53 TYPE REF TO object.
      t53 = t15.
      TRY.
          t50 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt_prio( i_first = t50 ).
    IF t49 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t49.
      TRY.
          t48 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t54 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t48 = t54->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t36->load( ).
    APPEND t48 TO t36->items.
    t36->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t34 i_rest = t36 ).

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d416_5284469a6569.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
