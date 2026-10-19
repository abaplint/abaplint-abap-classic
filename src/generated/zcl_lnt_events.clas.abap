* TS: src/abap/2_statements/statements/events.ts:6:1 Events
CLASS zcl_lnt_events DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_events IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |EXPORTING|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d226_08d3e6bb8e97.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>plus( i_first = t9 ).
    IF t8 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t8.
      TRY.
          t7 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t11 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t7 = t11->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t14 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |CLASS-EVENTS|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = |EVENTS|.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t22 = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t27 i_rest = t30 ).
    IF t22 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t22.
      TRY.
          t21 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t35 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t21 = t35->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t1.
      TRY.
          t45 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t47 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t45 = t47->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t44 = zcl_lnt_st_combi_module=>opt_prio( i_first = t45 ).
    IF t44 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t44.
      TRY.
          t43 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t49 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t43 = t49->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t40->load( ).
    APPEND t43 TO t40->items.
    t40->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t38 i_rest = t40 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
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
