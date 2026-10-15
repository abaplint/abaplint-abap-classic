* TS: src/abap/2_statements/expressions/sql_expose_client_as.ts:4:1 SQLExposeClientAs
CLASS zcl_lnt_sql_expose_client_as DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_expose_client_as IMPLEMENTATION.
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
    DATA(t4) = |EXPOSE CLIENT AS|.
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
    DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t8.
    DATA(t9) = `^\w+$`.
    DATA(t10) = |^[A-Za-z0-9_]+$|.
    DATA(t11) = ||.
    CREATE OBJECT t8 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = t11.
    t8->source = t9.
    t7 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t8 ).
    CLEAR t6.
    IF t7 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      CLEAR t12.
      t13 = t7.
      TRY.
          t6 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t12 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t6 = t12->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    t5 = t6.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA(t17) = t2.
    DATA(t18) = t5.
    DATA(t19) = t14.
    t16 = zcl_lnt_st_combi_module=>seq( i_first = t17 i_second = t18 i_rest = t19 ).
    t1 = t16.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d312_76c7dcb129d0.
  ENDMETHOD.
ENDCLASS.
