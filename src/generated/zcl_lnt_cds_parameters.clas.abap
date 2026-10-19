* TS: src/cds/expressions/cds_parameters.ts:5:1 CDSParameters
CLASS zcl_lnt_cds_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |.|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t10 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t15 i_rest = t18 ).
    IF t10 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t10.
      TRY.
          t9 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t23 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t9 = t23->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
    IF t8 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t8.
      TRY.
          t7 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t25 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t7 = t25->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t28 ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t1.
      TRY.
          t36 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t38 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t36 = t38->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t33 = zcl_lnt_st_combi_module=>alt( i_first = t36 i_second = t41 i_rest = t44 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |[|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t56 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |[0-9]+| flags = ||.
    t56->source = `\d+`.
    t55 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t56 ).
    IF t55 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t55.
      TRY.
          t54 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t60 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t54 = t60->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = |:|.
    t62->load( ).
    APPEND t65 TO t62->items.
    t62->save( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
      t71 = t1.
      TRY.
          t68 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t70 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t68 = t70->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t62->load( ).
    APPEND t68 TO t62->items.
    t62->save( ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = |=|.
    t62->load( ).
    APPEND t73 TO t62->items.
    t62->save( ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t79 TYPE REF TO object.
      t79 = t33.
      TRY.
          t76 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t78 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t76 = t78->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t62->load( ).
    APPEND t76 TO t62->items.
    t62->save( ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = |AND|.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t1.
      TRY.
          t89 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |=|.
    t93->load( ).
    APPEND t96 TO t93->items.
    t93->save( ).
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t101 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t102 TYPE REF TO object.
      t102 = t33.
      TRY.
          t99 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t101 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS BOUND.
          t99 = t101->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t93->load( ).
    APPEND t99 TO t93->items.
    t93->save( ).
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t89 i_rest = t93 ).
    IF t84 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t84.
      TRY.
          t83 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t107 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t83 = t107->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t82 = zcl_lnt_st_combi_module=>star( i_first = t83 ).
    IF t82 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t82.
      TRY.
          t81 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t109 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t81 = t109->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t62->load( ).
    APPEND t81 TO t62->items.
    t62->save( ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = |]|.
    t62->load( ).
    APPEND t112 TO t62->items.
    t62->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t54 i_rest = t62 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1114_3b343875274a.
  ENDMETHOD.
ENDCLASS.
