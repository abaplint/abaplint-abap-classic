* TS: src/cds/expressions/cds_name.ts:8:1 CDSName
CLASS zcl_lnt_cds_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^\$?#?[\w_]+$`.
    DATA(t5) = `^\$?#?[A-Za-z0-9__]+$`.
    DATA(t6) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3->source = t4.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = |/|.
    CLEAR t10.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t15.
    DATA(t16) = `^[\w]+$`.
    DATA(t17) = |^[A-Za-z0-9_]+$|.
    DATA(t18) = ||.
    CREATE OBJECT t15 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t17 flags = t18.
    t15->source = t16.
    t14 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t15 ).
    CLEAR t13.
    IF t14 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      CLEAR t19.
      t20 = t14.
      TRY.
          t13 ?= t20.
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
    t12 = t13.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    CREATE OBJECT t22.
    t21 = t22.
    DATA(t23) = t21.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = |/|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t26) = t21.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t30.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t31.
    IF zcl_lnt_cds_name_module=>zlnt_builtin_init_2f4438a19ed8 = abap_false.
      zcl_lnt_cds_name_module=>zlnt_builtin_init_dfb42c40df8c( ).
    ENDIF.
    t31 = zcl_lnt_cds_name_module=>keywords_36a7.
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
      DATA(t34) = t29.
      DATA(t35) = t32.
      t34->load( ).
      APPEND t35 TO t34->items.
      t34->save( ).
    ENDDO.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA(t37) = t29.
    t36 = zcl_lnt_st_combi_module=>stop_before1( i_words = t37 ).
    t28 = t36.
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t28.
      TRY.
          t27 ?= t39.
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
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t40) = t21.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t43.
    DATA(t44) = `^[\w_]+$`.
    DATA(t45) = |^[A-Za-z0-9__]+$|.
    DATA(t46) = ||.
    CREATE OBJECT t43 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t45 flags = t46.
    t43->source = t44.
    t42 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t43 ).
    CLEAR t41.
    IF t42 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t47.
      DATA t48 TYPE REF TO object.
      CLEAR t48.
      CLEAR t47.
      t48 = t42.
      TRY.
          t41 ?= t48.
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
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA(t50) = t9.
    DATA(t51) = t12.
    DATA(t52) = t21.
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t51 i_rest = t52 ).
    t8 = t49.
    t7 = t8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t57.
    DATA(t58) = |^"(?:[^"]\|"")*"$|.
    DATA(t59) = ||.
    CREATE OBJECT t57 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t58 flags = t59.
    t56 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t57 ).
    CLEAR t55.
    IF t56 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t60.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      CLEAR t60.
      t61 = t56.
      TRY.
          t55 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t60 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t55 = t60->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = t55.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = |:|.
    CLEAR t68.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      CLEAR t70.
      t71 = t67.
      TRY.
          t66 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t70 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t66 = t70->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = t66.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = t7.
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t74.
      TRY.
          t73 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = t73.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    CREATE OBJECT t78.
    t77 = t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA(t80) = t65.
    DATA(t81) = t72.
    DATA(t82) = t77.
    t79 = zcl_lnt_st_combi_module=>seq( i_first = t80 i_second = t81 i_rest = t82 ).
    t64 = t79.
    CLEAR t63.
    IF t64 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t83.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      CLEAR t83.
      t84 = t64.
      TRY.
          t63 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t83 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t63 = t83->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t62 = t63.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    CREATE OBJECT t86.
    t85 = t86.
    DATA(t87) = t85.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = |:|.
    CLEAR t93.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = zcl_lnt_st_combi_module=>opt_prio( i_first = t93 ).
    CLEAR t91.
    IF t92 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t95.
      DATA t96 TYPE REF TO object.
      CLEAR t96.
      CLEAR t95.
      t96 = t92.
      TRY.
          t91 ?= t96.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t95 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t91 = t95->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t90 = t91.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = t1.
    CLEAR t98.
    IF t99 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t100.
      DATA t101 TYPE REF TO object.
      CLEAR t101.
      CLEAR t100.
      t101 = t99.
      TRY.
          t98 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t98 IS NOT BOUND.
        TRY.
            t100 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t98 = t100->source( ).
        ENDIF.
        IF t98 IS NOT BOUND.
          CREATE OBJECT t98.
          t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t98->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    t97 = t98.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA(t105) = t90.
    DATA(t106) = t97.
    DATA(t107) = t102.
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t106 i_rest = t107 ).
    t89 = t104.
    CLEAR t88.
    IF t89 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t108.
      DATA t109 TYPE REF TO object.
      CLEAR t109.
      CLEAR t108.
      t109 = t89.
      TRY.
          t88 ?= t109.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t108 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t88 = t108->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t87->load( ).
    APPEND t88 TO t87->items.
    t87->save( ).
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA(t111) = t54.
    DATA(t112) = t62.
    DATA(t113) = t85.
    t110 = zcl_lnt_st_combi_module=>alt_prio( i_first = t111 i_second = t112 i_rest = t113 ).
    t53 = t110.
    result = t53.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
  ENDMETHOD.
ENDCLASS.
