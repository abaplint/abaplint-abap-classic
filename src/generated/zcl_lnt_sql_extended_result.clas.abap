* TS: src/abap/2_statements/expressions/sql_extended_result.ts:5:1 SQLExtendedResult
CLASS zcl_lnt_sql_extended_result DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_extended_result IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA(t4) = |EXTENDED RESULT|.
    CLEAR t3.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = t4.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t7 = zcl_lnt_st_combi_module=>tok( i_t = t8 ).
    CLEAR t6.
    IF t7 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
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
    t5 = t6.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    CREATE OBJECT t12.
    t11 = t12.
    DATA(t13) = t11.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t16.
    DATA(t17) = `^\w+$`.
    DATA(t18) = |^[A-Za-z0-9_]+$|.
    DATA(t19) = ||.
    CREATE OBJECT t16 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t18 flags = t19.
    t16->source = t17.
    t15 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t16 ).
    CLEAR t14.
    IF t15 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
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
    t13->load( ).
    APPEND t14 TO t13->items.
    t13->save( ).
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA(t23) = t2.
    DATA(t24) = t5.
    DATA(t25) = t11.
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t24 i_rest = t25 ).
    t1 = t22.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d313_63087fa9e019.
  ENDMETHOD.
ENDCLASS.
