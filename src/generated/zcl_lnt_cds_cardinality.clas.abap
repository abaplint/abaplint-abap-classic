* TS: src/cds/expressions/cds_cardinality.ts:4:1 CDSCardinality
CLASS zcl_lnt_cds_cardinality DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_cardinality IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t6.
    DATA(t7) = `^\d+$`.
    DATA(t8) = |^[0-9]+$|.
    DATA(t9) = ||.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t9.
    t6->source = t7.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t10.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      CLEAR t10.
      t11 = t5.
      TRY.
          t4 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t10 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t4 = t10->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = |*|.
    CLEAR t13.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = t14.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA(t18) = t3.
    DATA(t19) = t12.
    DATA(t20) = t15.
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t19 i_rest = t20 ).
    t2 = t17.
    t1 = t2.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = |[|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = t1.
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      CLEAR t29.
      t30 = t28.
      TRY.
          t27 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t29 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t27 = t29->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26 = t27.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    CREATE OBJECT t32.
    t31 = t32.
    DATA(t33) = t31.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |.|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = |.|.
    CLEAR t42.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    CREATE OBJECT t45.
    t44 = t45.
    DATA(t46) = t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = t1.
    CLEAR t47.
    IF t48 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      CLEAR t49.
      t50 = t48.
      TRY.
          t47 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46->load( ).
    APPEND t47 TO t46->items.
    t46->save( ).
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA(t52) = t38.
    DATA(t53) = t41.
    DATA(t54) = t44.
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t53 i_rest = t54 ).
    t37 = t51.
    CLEAR t36.
    IF t37 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t55.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      CLEAR t55.
      t56 = t37.
      TRY.
          t36 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t55 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t36 = t55->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    t35 = zcl_lnt_st_combi_module=>opt_prio( i_first = t36 ).
    CLEAR t34.
    IF t35 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t57.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      CLEAR t57.
      t58 = t35.
      TRY.
          t34 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t57 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t34 = t57->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t33->load( ).
    APPEND t34 TO t33->items.
    t33->save( ).
    DATA(t59) = t31.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = |]|.
    CLEAR t60.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA(t63) = t23.
    DATA(t64) = t26.
    DATA(t65) = t31.
    t62 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t64 i_rest = t65 ).
    t22 = t62.
    t21 = t22.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = |ONE|.
    CLEAR t69.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = |MANY|.
    CLEAR t72.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = t73.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA(t77) = t68.
    DATA(t78) = t71.
    DATA(t79) = t74.
    t76 = zcl_lnt_st_combi_module=>alt_prio( i_first = t77 i_second = t78 i_rest = t79 ).
    t67 = t76.
    t66 = t67.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = t66.
    CLEAR t83.
    IF t84 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t85.
      DATA t86 TYPE REF TO object.
      CLEAR t86.
      CLEAR t85.
      t86 = t84.
      TRY.
          t83 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t85 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t83 = t85->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t82 = t83.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = |TO|.
    CLEAR t88.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    CREATE OBJECT t91.
    t90 = t91.
    DATA(t92) = t90.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = t66.
    CLEAR t93.
    IF t94 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t95.
      DATA t96 TYPE REF TO object.
      CLEAR t96.
      CLEAR t95.
      t96 = t94.
      TRY.
          t93 ?= t96.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t95 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t93 = t95->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t92->load( ).
    APPEND t93 TO t92->items.
    t92->save( ).
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA(t98) = t82.
    DATA(t99) = t87.
    DATA(t100) = t90.
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t99 i_rest = t100 ).
    t81 = t97.
    t80 = t81.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = t21.
    CLEAR t103.
    IF t104 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      CLEAR t105.
      t106 = t104.
      TRY.
          t103 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t105 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t103 = t105->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = t103.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = t80.
    CLEAR t108.
    IF t109 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t110.
      DATA t111 TYPE REF TO object.
      CLEAR t111.
      CLEAR t110.
      t111 = t109.
      TRY.
          t108 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t110 ?= t109.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t108 = t110->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t109.
        ENDIF.
      ENDIF.
    ENDIF.
    t107 = t108.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    CREATE OBJECT t113.
    t112 = t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA(t115) = t102.
    DATA(t116) = t107.
    DATA(t117) = t112.
    t114 = zcl_lnt_st_combi_module=>alt_prio( i_first = t115 i_second = t116 i_rest = t117 ).
    t101 = t114.
    result = t101.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1094_471f5e803ae2.
  ENDMETHOD.
ENDCLASS.
