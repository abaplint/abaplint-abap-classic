* TS: src/abap/2_statements/expressions/raise_with.ts:5:1 RaiseWith
CLASS zcl_lnt_st_raise_with DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_raise_with IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
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
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t17 = zcl_lnt_st_combi_module=>opt( i_first = t18 ).
    IF t17 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
      t21 = t17.
      TRY.
          t16 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t20 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t16 = t20->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t13->load( ).
    APPEND t16 TO t13->items.
    t13->save( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = zcl_lnt_st_combi_module=>opt( i_first = t25 ).
    IF t24 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t24.
      TRY.
          t23 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t27 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t23 = t27->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    t13->load( ).
    APPEND t23 TO t13->items.
    t13->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t13 ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>opt( i_first = t41 ).
    IF t40 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t40.
      TRY.
          t39 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t43 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t39 = t43->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt( i_first = t50 ).
    IF t49 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t53 TYPE REF TO object.
      t53 = t49.
      TRY.
          t48 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t52 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t48 = t52->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t45->load( ).
    APPEND t48 TO t45->items.
    t45->save( ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t56 = zcl_lnt_st_combi_module=>opt( i_first = t57 ).
    IF t56 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t56.
      TRY.
          t55 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t59 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t55 = t59->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t45->load( ).
    APPEND t55 TO t45->items.
    t45->save( ).
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t39 i_rest = t45 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = |WITH|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t33.
      TRY.
          t73 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t1.
      TRY.
          t78 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t80 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t78 = t80->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t71 = zcl_lnt_st_combi_module=>alt_prio( i_first = t73 i_second = t78 i_rest = t83 ).
    IF t71 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t71.
      TRY.
          t70 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t88 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t70 = t88->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    result = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t70 i_rest = t91 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d.
  ENDMETHOD.
ENDCLASS.
