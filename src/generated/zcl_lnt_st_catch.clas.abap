* TS: src/abap/2_statements/statements/catch.ts:6:1 Catch
CLASS zcl_lnt_st_catch DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_catch IMPLEMENTATION.
  METHOD get_matcher.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = |CATCH|.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t8.
    t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t8->sval = |BEFORE UNWIND|.
    t7 = zcl_lnt_st_combi_module=>opt_prio( i_first = t8 ).
    IF t7 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t11 TYPE REF TO object.
      t11 = t7.
      TRY.
          t6 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t10 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t6 = t10->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    t16 = zcl_lnt_st_combi_module=>plus( i_first = t17 ).
    IF t16 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t20 TYPE REF TO object.
      t20 = t16.
      TRY.
          t15 ?= t20.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t19 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t19 IS BOUND.
          t15 = t19->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = |INTO|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t27 i_second = t30 i_rest = t33 ).
    IF t25 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t25.
      TRY.
          t24 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t38 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t24 = t38->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    t23 = zcl_lnt_st_combi_module=>opt( i_first = t24 ).
    IF t23 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t41 TYPE REF TO object.
      t41 = t23.
      TRY.
          t22 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t40 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t22 = t40->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    t12->load( ).
    APPEND t22 TO t12->items.
    t12->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t12 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d402_a27e9c5370ec.
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
