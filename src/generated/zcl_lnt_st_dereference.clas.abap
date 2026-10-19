* TS: src/abap/2_statements/expressions/dereference.ts:5:1 Dereference
CLASS zcl_lnt_st_dereference DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_dereference IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t4 = zcl_lnt_st_combi_module=>tok( i_t = t5 ).
    IF t4 IS BOUND.
      DATA t6 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t7 TYPE REF TO object.
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
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = |*|.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t9 i_rest = t12 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
  ENDMETHOD.
ENDCLASS.
