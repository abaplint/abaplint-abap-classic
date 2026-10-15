* TS: src/abap/2_statements/expressions/arrow_or_dash.ts:5:1 ArrowOrDash
CLASS zcl_lnt_arrow_or_dash DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_arrow_or_dash IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t4 = zcl_lnt_st_combi_module=>tok( i_t = t5 ).
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t6 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t6.
      DATA t7 TYPE REF TO object.
      CLEAR t7.
      CLEAR t6.
      t7 = t4.
      TRY.
          t3 ?= t7.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t6 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t6 IS BOUND.
          t3 = t6->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t2 = t3.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d35_f5313aa9b79ded.
    t10 = zcl_lnt_st_combi_module=>tok( i_t = t11 ).
    CLEAR t9.
    IF t10 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      CLEAR t12.
      t13 = t10.
      TRY.
          t9 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t12 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t9 = t12->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    CREATE OBJECT t15.
    t14 = t15.
    DATA(t16) = t14.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t18 = zcl_lnt_st_combi_module=>tok( i_t = t19 ).
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
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
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA(t23) = t2.
    DATA(t24) = t8.
    DATA(t25) = t14.
    t22 = zcl_lnt_st_combi_module=>alt_prio( i_first = t23 i_second = t24 i_rest = t25 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
  ENDMETHOD.
ENDCLASS.
