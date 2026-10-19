* TS: src/abap/2_statements/expressions/sql_path_join_type.ts:4:1 SQLPathJoinType
CLASS zcl_lnt_sql_path_join_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_join_type IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |INNER|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |LEFT OUTER|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |RIGHT OUTER|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |EXACT ONE|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |MANY|.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = |ONE|.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t24 i_rest = t26 ).
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t41 TYPE REF TO object.
      t41 = t18.
      TRY.
          t38 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t40 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t38 = t40->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |TO|.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
      t51 = t18.
      TRY.
          t48 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t50 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t48 = t50->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t45->load( ).
    APPEND t48 TO t45->items.
    t45->save( ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t43 i_rest = t45 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t1.
      TRY.
          t61 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t63 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t61 = t63->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
      t71 = t35.
      TRY.
          t68 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t70 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t68 = t70->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    IF t67 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t67.
      TRY.
          t66 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t72 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t66 = t72->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t66 i_rest = t75 ).
    IF t59 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t59.
      TRY.
          t58 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t80 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t58 = t80->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t86 TYPE REF TO object.
      t86 = t35.
      TRY.
          t83 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t85 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t83 = t85->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t58 i_second = t83 i_rest = t88 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e.
  ENDMETHOD.
ENDCLASS.
