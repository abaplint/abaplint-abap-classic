* TS: src/abap/2_statements/statements/cleanup.ts:6:1 Cleanup
CLASS zcl_lnt_st_cleanup DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_cleanup IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |INTO|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = |CLEANUP|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t1.
      TRY.
          t22 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t24 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t22 = t24->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t21 = zcl_lnt_st_combi_module=>opt( i_first = t22 ).
    IF t21 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t21.
      TRY.
          t20 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t26 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t20 = t26->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    result = zcl_lnt_st_combi_module=>seq( i_first = t17 i_second = t20 i_rest = t29 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d415_90544e90c161.
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
