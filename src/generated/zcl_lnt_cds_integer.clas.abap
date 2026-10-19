* TS: src/cds/expressions/cds_integer.ts:4:1 CDSInteger
CLASS zcl_lnt_cds_integer DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_integer IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t3->source = `^\d+$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t13 TYPE REF TO object.
      t13 = t1.
      TRY.
          t10 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t12 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t10 = t12->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |.|.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t1.
      TRY.
          t20 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t22 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t20 = t22->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t17->load( ).
    APPEND t20 TO t17->items.
    t17->save( ).
    t7 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t15 i_rest = t17 ).
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t30 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+E$| flags = |i|.
    t30->source = `^\d+E$`.
    t28 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t30 ).
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t40 TYPE REF TO object.
      t40 = t1.
      TRY.
          t37 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t39 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t37 = t39->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |.|.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t28 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t28.
      TRY.
          t47 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t47 TO t44->items.
    t44->save( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |+|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |-|.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t53 = zcl_lnt_st_combi_module=>alt_prio( i_first = t55 i_second = t58 i_rest = t61 ).
    IF t53 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t53.
      TRY.
          t52 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t66 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t52 = t66->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t52 TO t44->items.
    t44->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t1.
      TRY.
          t69 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t71 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t69 = t71->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t69 TO t44->items.
    t44->save( ).
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t37 i_second = t42 i_rest = t44 ).
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = |-|.
    t80 = zcl_lnt_st_combi_module=>opt( i_first = t81 ).
    IF t80 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
      t84 = t80.
      TRY.
          t79 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t83 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t79 = t83->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t34 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t34.
      TRY.
          t89 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t97 TYPE REF TO object.
      t97 = t7.
      TRY.
          t94 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t96 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t94 = t96->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t104 TYPE REF TO object.
      t104 = t1.
      TRY.
          t101 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t103 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t101 = t103->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t98->load( ).
    APPEND t101 TO t98->items.
    t98->save( ).
    t87 = zcl_lnt_st_combi_module=>alt_prio( i_first = t89 i_second = t94 i_rest = t98 ).
    IF t87 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t87.
      TRY.
          t86 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t109 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t86 = t109->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    result = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t86 i_rest = t112 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
  ENDMETHOD.
ENDCLASS.
