* TS: src/cds/expressions/cds_relation.ts:9:1 CDSRelation
CLASS zcl_lnt_cds_relation DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_relation IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9__]+$| flags = ||.
    t3->source = `^[\w_]+$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = |/|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t15 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t15->source = `^[\w]+$`.
    t14 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t15 ).
    IF t14 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t13 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t19 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t19 IS BOUND.
          t13 = t19->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |/|.
    t21->load( ).
    APPEND t24 TO t21->items.
    t21->save( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t29.
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF zcl_lnt_cds_relation_module=>zlnt_builtin_init_326606c05847 = abap_false.
      zcl_lnt_cds_relation_module=>zlnt_builtin_init_04cfbb433cc2( ).
    ENDIF.
    t31 = zcl_lnt_cds_relation_module=>keywords_36a7.
    DATA(t32) = VALUE string( ).
    t31->dense( ).
    DATA(t33) = VALUE i( ).
    DO.
      t31->load( ).
      IF t33 >= lines( t31->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t31->items INDEX t33 + 1 INTO t32.
      IF t31->has( t33 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t33 = t33 + 1.
      t29->load( ).
      APPEND t32 TO t29->items.
      t29->save( ).
    ENDDO.
    t28 = zcl_lnt_st_combi_module=>stop_before1( i_words = t29 ).
    IF t28 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t27 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t38 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t27 = t38->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t21->load( ).
    APPEND t27 TO t21->items.
    t21->save( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t43 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9__]+$| flags = ||.
    t43->source = `^[\w_]+$`.
    t42 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t43 ).
    IF t42 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t41 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t47 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t41 = t47->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t21->load( ).
    APPEND t41 TO t21->items.
    t21->save( ).
    t7 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t13 i_rest = t21 ).
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t56 ?= t7.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t58 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t56 = t58->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t61 ?= t1.
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
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t53 = zcl_lnt_st_combi_module=>alt_prio( i_first = t56 i_second = t61 i_rest = t66 ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t73 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    t79 = zcl_lnt_st_combi_module=>opt( i_first = t80 ).
    IF t79 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t78 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t82 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t78 = t82->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t89->cval = t90.
    ENDIF.
    t88 = zcl_lnt_st_combi_module=>opt( i_first = t89 ).
    IF t88 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t87 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t91 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t87 = t91->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    t84->load( ).
    APPEND t87 TO t84->items.
    t84->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t78 i_rest = t84 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
  ENDMETHOD.
ENDCLASS.
