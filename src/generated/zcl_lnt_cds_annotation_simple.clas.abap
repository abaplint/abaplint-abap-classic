* TS: src/cds/expressions/cds_annotation_simple.ts:6:1 CDSAnnotationSimple
CLASS zcl_lnt_cds_annotation_simple DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_annotation_simple IMPLEMENTATION.
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
    DATA(t4) = `^[\w_]+$`.
    DATA(t5) = |^[A-Za-z0-9__]+$|.
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
    DATA(t11) = t1.
    CLEAR t10.
    IF t11 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      CLEAR t12.
      t13 = t11.
      TRY.
          t10 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t12 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t10 = t12->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    t9 = t10.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = |(|.
    CLEAR t15.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t23.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t26.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    CREATE OBJECT t29.
    t28 = t29.
    DATA(t30) = t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = t1.
    CLEAR t31.
    IF t32 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      CLEAR t33.
      t34 = t32.
      TRY.
          t31 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t33 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t31 = t33->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t31 TO t30->items.
    t30->save( ).
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA(t36) = t22.
    DATA(t37) = t25.
    DATA(t38) = t28.
    t35 = zcl_lnt_st_combi_module=>alt_prio( i_first = t36 i_second = t37 i_rest = t38 ).
    t21 = t35.
    CLEAR t20.
    IF t21 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      CLEAR t39.
      t40 = t21.
      TRY.
          t20 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t39 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t20 = t39->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA(t41) = t17.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = |)|.
    CLEAR t42.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA(t45) = t9.
    DATA(t46) = t14.
    DATA(t47) = t17.
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t8 = t44.
    t7 = t8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t51.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = t7.
    CLEAR t54.
    IF t55 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t55.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t53 = t54.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    CREATE OBJECT t59.
    t58 = t59.
    DATA(t60) = t58.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t61.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60->load( ).
    APPEND t61 TO t60->items.
    t60->save( ).
    DATA(t63) = t58.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = t1.
    CLEAR t64.
    IF t65 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      CLEAR t66.
      t67 = t65.
      TRY.
          t64 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t66 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t64 = t66->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    t63->load( ).
    APPEND t64 TO t63->items.
    t63->save( ).
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA(t69) = t50.
    DATA(t70) = t53.
    DATA(t71) = t58.
    t68 = zcl_lnt_st_combi_module=>alt_prio( i_first = t69 i_second = t70 i_rest = t71 ).
    t49 = t68.
    t48 = t49.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = t48.
    CLEAR t75.
    IF t76 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t77.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      CLEAR t77.
      t78 = t76.
      TRY.
          t75 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t77 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t75 = t77->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    t74 = t75.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = |+|.
    CLEAR t85.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = t86.
    t84 = t85.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = t48.
    CLEAR t88.
    IF t89 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t90.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      CLEAR t90.
      t91 = t89.
      TRY.
          t88 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t90 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t88 = t90->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t87 = t88.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    CREATE OBJECT t93.
    t92 = t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA(t95) = t84.
    DATA(t96) = t87.
    DATA(t97) = t92.
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t95 i_second = t96 i_rest = t97 ).
    t83 = t94.
    CLEAR t82.
    IF t83 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t98.
      DATA t99 TYPE REF TO object.
      CLEAR t99.
      CLEAR t98.
      t99 = t83.
      TRY.
          t82 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t98 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t82 = t98->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    t81 = zcl_lnt_st_combi_module=>star_prio( i_first = t82 ).
    CLEAR t80.
    IF t81 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t100.
      DATA t101 TYPE REF TO object.
      CLEAR t101.
      CLEAR t100.
      t101 = t81.
      TRY.
          t80 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS NOT BOUND.
        TRY.
            t100 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t80 = t100->source( ).
        ENDIF.
        IF t80 IS NOT BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t80->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    t79 = t80.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA(t105) = t74.
    DATA(t106) = t79.
    DATA(t107) = t102.
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t106 i_rest = t107 ).
    t73 = t104.
    t72 = t73.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t111.
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t111->cval = t112.
    ENDIF.
    t110 = t111.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = |true|.
    CLEAR t114.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = t115.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    CREATE OBJECT t117.
    t116 = t117.
    DATA(t118) = t116.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = |false|.
    CLEAR t119.
    CREATE OBJECT t119.
    t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t119->sval = t120.
    t118->load( ).
    APPEND t119 TO t118->items.
    t118->save( ).
    DATA(t121) = t116.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = |null|.
    CLEAR t122.
    CREATE OBJECT t122.
    t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t122->sval = t123.
    t121->load( ).
    APPEND t122 TO t121->items.
    t121->save( ).
    DATA(t124) = t116.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = |-|.
    CLEAR t128.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t133.
    DATA(t134) = `^\d+$`.
    DATA(t135) = |^[0-9]+$|.
    DATA(t136) = ||.
    CREATE OBJECT t133 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t135 flags = t136.
    t133->source = t134.
    t132 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t133 ).
    CLEAR t131.
    IF t132 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t137.
      DATA t138 TYPE REF TO object.
      CLEAR t138.
      CLEAR t137.
      t138 = t132.
      TRY.
          t131 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t137 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t131 = t137->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t130 = t131.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t140.
    CREATE OBJECT t140.
    t139 = t140.
    DATA(t141) = t139.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA(t143) = |.|.
    CLEAR t142.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = t143.
    t141->load( ).
    APPEND t142 TO t141->items.
    t141->save( ).
    DATA(t144) = t139.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t147.
    DATA(t148) = `^\d+[eE]$`.
    DATA(t149) = |^[0-9]+[eE]$|.
    DATA(t150) = ||.
    CREATE OBJECT t147 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t149 flags = t150.
    t147->source = t148.
    t146 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t147 ).
    CLEAR t145.
    IF t146 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t151.
      DATA t152 TYPE REF TO object.
      CLEAR t152.
      CLEAR t151.
      t152 = t146.
      TRY.
          t145 ?= t152.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t151 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t145 = t151->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t144->load( ).
    APPEND t145 TO t144->items.
    t144->save( ).
    DATA(t153) = t139.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = |+|.
    CLEAR t157.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = |-|.
    CLEAR t160.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = t161.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = t156.
    DATA(t166) = t159.
    DATA(t167) = t162.
    t164 = zcl_lnt_st_combi_module=>alt_prio( i_first = t165 i_second = t166 i_rest = t167 ).
    t155 = t164.
    CLEAR t154.
    IF t155 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t168.
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      CLEAR t168.
      t169 = t155.
      TRY.
          t154 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t168 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t154 = t168->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t154 TO t153->items.
    t153->save( ).
    DATA(t170) = t139.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t173.
    DATA(t174) = `^\d+$`.
    DATA(t175) = |^[0-9]+$|.
    DATA(t176) = ||.
    CREATE OBJECT t173 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t175 flags = t176.
    t173->source = t174.
    t172 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t173 ).
    CLEAR t171.
    IF t172 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t177.
      DATA t178 TYPE REF TO object.
      CLEAR t178.
      CLEAR t177.
      t178 = t172.
      TRY.
          t171 ?= t178.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t177 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t171 = t177->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t170->load( ).
    APPEND t171 TO t170->items.
    t170->save( ).
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA(t180) = t127.
    DATA(t181) = t130.
    DATA(t182) = t139.
    t179 = zcl_lnt_st_combi_module=>seq( i_first = t180 i_second = t181 i_rest = t182 ).
    t126 = t179.
    CLEAR t125.
    IF t126 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t183.
      DATA t184 TYPE REF TO object.
      CLEAR t184.
      CLEAR t183.
      t184 = t126.
      TRY.
          t125 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t183 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t125 = t183->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t124->load( ).
    APPEND t125 TO t124->items.
    t124->save( ).
    DATA(t185) = t116.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t191.
    DATA(t192) = `^\d+$`.
    DATA(t193) = |^[0-9]+$|.
    DATA(t194) = ||.
    CREATE OBJECT t191 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t193 flags = t194.
    t191->source = t192.
    t190 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t191 ).
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t195.
      DATA t196 TYPE REF TO object.
      CLEAR t196.
      CLEAR t195.
      t196 = t190.
      TRY.
          t189 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t195 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t189 = t195->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    t188 = t189.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = |.|.
    CLEAR t198.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = t199.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t201.
    CREATE OBJECT t201.
    t200 = t201.
    DATA(t202) = t200.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t205.
    DATA(t206) = `^\d+[eE]$`.
    DATA(t207) = |^[0-9]+[eE]$|.
    DATA(t208) = ||.
    CREATE OBJECT t205 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t207 flags = t208.
    t205->source = t206.
    t204 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t205 ).
    CLEAR t203.
    IF t204 IS BOUND.
      DATA t209 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t209.
      DATA t210 TYPE REF TO object.
      CLEAR t210.
      CLEAR t209.
      t210 = t204.
      TRY.
          t203 ?= t210.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t203 IS NOT BOUND.
        TRY.
            t209 ?= t204.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t209 IS BOUND.
          t203 = t209->source( ).
        ENDIF.
        IF t203 IS NOT BOUND.
          CREATE OBJECT t203.
          t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t203->oval = t204.
        ENDIF.
      ENDIF.
    ENDIF.
    t202->load( ).
    APPEND t203 TO t202->items.
    t202->save( ).
    DATA(t211) = t200.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA(t216) = |+|.
    CLEAR t215.
    CREATE OBJECT t215.
    t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t215->sval = t216.
    t214 = t215.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = |-|.
    CLEAR t218.
    CREATE OBJECT t218.
    t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t218->sval = t219.
    t217 = t218.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t221.
    CREATE OBJECT t221.
    t220 = t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA(t223) = t214.
    DATA(t224) = t217.
    DATA(t225) = t220.
    t222 = zcl_lnt_st_combi_module=>alt_prio( i_first = t223 i_second = t224 i_rest = t225 ).
    t213 = t222.
    CLEAR t212.
    IF t213 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t226.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      CLEAR t226.
      t227 = t213.
      TRY.
          t212 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t212 IS NOT BOUND.
        TRY.
            t226 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t212 = t226->source( ).
        ENDIF.
        IF t212 IS NOT BOUND.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t212->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    t211->load( ).
    APPEND t212 TO t211->items.
    t211->save( ).
    DATA(t228) = t200.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t231.
    DATA(t232) = `^\d+$`.
    DATA(t233) = |^[0-9]+$|.
    DATA(t234) = ||.
    CREATE OBJECT t231 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t233 flags = t234.
    t231->source = t232.
    t230 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t231 ).
    CLEAR t229.
    IF t230 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t235.
      DATA t236 TYPE REF TO object.
      CLEAR t236.
      CLEAR t235.
      t236 = t230.
      TRY.
          t229 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t235 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t229 = t235->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t228->load( ).
    APPEND t229 TO t228->items.
    t228->save( ).
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA(t238) = t188.
    DATA(t239) = t197.
    DATA(t240) = t200.
    t237 = zcl_lnt_st_combi_module=>seq( i_first = t238 i_second = t239 i_rest = t240 ).
    t187 = t237.
    CLEAR t186.
    IF t187 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t241.
      DATA t242 TYPE REF TO object.
      CLEAR t242.
      CLEAR t241.
      t242 = t187.
      TRY.
          t186 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t241 ?= t187.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t186 = t241->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t187.
        ENDIF.
      ENDIF.
    ENDIF.
    t185->load( ).
    APPEND t186 TO t185->items.
    t185->save( ).
    DATA(t243) = t116.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA(t248) = |-|.
    CLEAR t247.
    CREATE OBJECT t247.
    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t247->sval = t248.
    t246 = t247.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t252.
    DATA(t253) = `^\d+$`.
    DATA(t254) = |^[0-9]+$|.
    DATA(t255) = ||.
    CREATE OBJECT t252 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t254 flags = t255.
    t252->source = t253.
    t251 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t252 ).
    CLEAR t250.
    IF t251 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      CLEAR t256.
      t257 = t251.
      TRY.
          t250 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t250 IS NOT BOUND.
        TRY.
            t256 ?= t251.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t250 = t256->source( ).
        ENDIF.
        IF t250 IS NOT BOUND.
          CREATE OBJECT t250.
          t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t250->oval = t251.
        ENDIF.
      ENDIF.
    ENDIF.
    t249 = t250.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t259.
    CREATE OBJECT t259.
    t258 = t259.
    DATA(t260) = t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA(t262) = |.|.
    CLEAR t261.
    CREATE OBJECT t261.
    t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t261->sval = t262.
    t260->load( ).
    APPEND t261 TO t260->items.
    t260->save( ).
    DATA(t263) = t258.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t266.
    DATA(t267) = `^\d+$`.
    DATA(t268) = |^[0-9]+$|.
    DATA(t269) = ||.
    CREATE OBJECT t266 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t268 flags = t269.
    t266->source = t267.
    t265 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t266 ).
    CLEAR t264.
    IF t265 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t270.
      DATA t271 TYPE REF TO object.
      CLEAR t271.
      CLEAR t270.
      t271 = t265.
      TRY.
          t264 ?= t271.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t270 ?= t265.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t264 = t270->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t265.
        ENDIF.
      ENDIF.
    ENDIF.
    t263->load( ).
    APPEND t264 TO t263->items.
    t263->save( ).
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t272.
    DATA(t273) = t246.
    DATA(t274) = t249.
    DATA(t275) = t258.
    t272 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t274 i_rest = t275 ).
    t245 = t272.
    CLEAR t244.
    IF t245 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t276.
      DATA t277 TYPE REF TO object.
      CLEAR t277.
      CLEAR t276.
      t277 = t245.
      TRY.
          t244 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t276 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t244 = t276->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    t243->load( ).
    APPEND t244 TO t243->items.
    t243->save( ).
    DATA(t278) = t116.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = |-|.
    CLEAR t282.
    CREATE OBJECT t282.
    t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t282->sval = t283.
    t281 = t282.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t287.
    DATA(t288) = `^\d+$`.
    DATA(t289) = |^[0-9]+$|.
    DATA(t290) = ||.
    CREATE OBJECT t287 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t289 flags = t290.
    t287->source = t288.
    t286 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t287 ).
    CLEAR t285.
    IF t286 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t291.
      DATA t292 TYPE REF TO object.
      CLEAR t292.
      CLEAR t291.
      t292 = t286.
      TRY.
          t285 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t291 ?= t286.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t285 = t291->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t286.
        ENDIF.
      ENDIF.
    ENDIF.
    t284 = t285.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t294.
    CREATE OBJECT t294.
    t293 = t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA(t296) = t281.
    DATA(t297) = t284.
    DATA(t298) = t293.
    t295 = zcl_lnt_st_combi_module=>seq( i_first = t296 i_second = t297 i_rest = t298 ).
    t280 = t295.
    CLEAR t279.
    IF t280 IS BOUND.
      DATA t299 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t299.
      DATA t300 TYPE REF TO object.
      CLEAR t300.
      CLEAR t299.
      t300 = t280.
      TRY.
          t279 ?= t300.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t299 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t299 IS BOUND.
          t279 = t299->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    t278->load( ).
    APPEND t279 TO t278->items.
    t278->save( ).
    DATA(t301) = t116.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t307.
    DATA(t308) = `^\d+$`.
    DATA(t309) = |^[0-9]+$|.
    DATA(t310) = ||.
    CREATE OBJECT t307 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t309 flags = t310.
    t307->source = t308.
    t306 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t307 ).
    CLEAR t305.
    IF t306 IS BOUND.
      DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t311.
      DATA t312 TYPE REF TO object.
      CLEAR t312.
      CLEAR t311.
      t312 = t306.
      TRY.
          t305 ?= t312.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t311 ?= t306.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t311 IS BOUND.
          t305 = t311->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t306.
        ENDIF.
      ENDIF.
    ENDIF.
    t304 = t305.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t314.
    DATA(t315) = |.|.
    CLEAR t314.
    CREATE OBJECT t314.
    t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t314->sval = t315.
    t313 = t314.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t317.
    CREATE OBJECT t317.
    t316 = t317.
    DATA(t318) = t316.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t321.
    DATA(t322) = `^\d+$`.
    DATA(t323) = |^[0-9]+$|.
    DATA(t324) = ||.
    CREATE OBJECT t321 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t323 flags = t324.
    t321->source = t322.
    t320 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t321 ).
    CLEAR t319.
    IF t320 IS BOUND.
      DATA t325 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t325.
      DATA t326 TYPE REF TO object.
      CLEAR t326.
      CLEAR t325.
      t326 = t320.
      TRY.
          t319 ?= t326.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t319 IS NOT BOUND.
        TRY.
            t325 ?= t320.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t325 IS BOUND.
          t319 = t325->source( ).
        ENDIF.
        IF t319 IS NOT BOUND.
          CREATE OBJECT t319.
          t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t319->oval = t320.
        ENDIF.
      ENDIF.
    ENDIF.
    t318->load( ).
    APPEND t319 TO t318->items.
    t318->save( ).
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t327.
    DATA(t328) = t304.
    DATA(t329) = t313.
    DATA(t330) = t316.
    t327 = zcl_lnt_st_combi_module=>seq( i_first = t328 i_second = t329 i_rest = t330 ).
    t303 = t327.
    CLEAR t302.
    IF t303 IS BOUND.
      DATA t331 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t331.
      DATA t332 TYPE REF TO object.
      CLEAR t332.
      CLEAR t331.
      t332 = t303.
      TRY.
          t302 ?= t332.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t302 IS NOT BOUND.
        TRY.
            t331 ?= t303.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t331 IS BOUND.
          t302 = t331->source( ).
        ENDIF.
        IF t302 IS NOT BOUND.
          CREATE OBJECT t302.
          t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t302->oval = t303.
        ENDIF.
      ENDIF.
    ENDIF.
    t301->load( ).
    APPEND t302 TO t301->items.
    t301->save( ).
    DATA(t333) = t116.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA t335 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t336.
    DATA(t337) = `^\d+$`.
    DATA(t338) = |^[0-9]+$|.
    DATA(t339) = ||.
    CREATE OBJECT t336 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t338 flags = t339.
    t336->source = t337.
    t335 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t336 ).
    CLEAR t334.
    IF t335 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t340.
      DATA t341 TYPE REF TO object.
      CLEAR t341.
      CLEAR t340.
      t341 = t335.
      TRY.
          t334 ?= t341.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t334 IS NOT BOUND.
        TRY.
            t340 ?= t335.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t334 = t340->source( ).
        ENDIF.
        IF t334 IS NOT BOUND.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t334->oval = t335.
        ENDIF.
      ENDIF.
    ENDIF.
    t333->load( ).
    APPEND t334 TO t333->items.
    t333->save( ).
    DATA(t342) = t116.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA(t347) = |#|.
    CLEAR t346.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = t347.
    t345 = t346.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = |(|.
    CLEAR t349.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = t350.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t352.
    CREATE OBJECT t352.
    t351 = t352.
    DATA(t353) = t351.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA(t355) = t72.
    CLEAR t354.
    IF t355 IS BOUND.
      DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t356.
      DATA t357 TYPE REF TO object.
      CLEAR t357.
      CLEAR t356.
      t357 = t355.
      TRY.
          t354 ?= t357.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t354 IS NOT BOUND.
        TRY.
            t356 ?= t355.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t356 IS BOUND.
          t354 = t356->source( ).
        ENDIF.
        IF t354 IS NOT BOUND.
          CREATE OBJECT t354.
          t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t354->oval = t355.
        ENDIF.
      ENDIF.
    ENDIF.
    t353->load( ).
    APPEND t354 TO t353->items.
    t353->save( ).
    DATA(t358) = t351.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA(t360) = |)|.
    CLEAR t359.
    CREATE OBJECT t359.
    t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t359->sval = t360.
    t358->load( ).
    APPEND t359 TO t358->items.
    t358->save( ).
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA(t362) = t345.
    DATA(t363) = t348.
    DATA(t364) = t351.
    t361 = zcl_lnt_st_combi_module=>seq( i_first = t362 i_second = t363 i_rest = t364 ).
    t344 = t361.
    CLEAR t343.
    IF t344 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t365.
      DATA t366 TYPE REF TO object.
      CLEAR t366.
      CLEAR t365.
      t366 = t344.
      TRY.
          t343 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t365 ?= t344.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t343 = t365->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t344.
        ENDIF.
      ENDIF.
    ENDIF.
    t342->load( ).
    APPEND t343 TO t342->items.
    t342->save( ).
    DATA(t367) = t116.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    DATA t369 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t370.
    DATA(t371) = `^#[\w_]+$`.
    DATA(t372) = |^#[A-Za-z0-9__]+$|.
    DATA(t373) = ||.
    CREATE OBJECT t370 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t372 flags = t373.
    t370->source = t371.
    t369 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t370 ).
    CLEAR t368.
    IF t369 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t374.
      DATA t375 TYPE REF TO object.
      CLEAR t375.
      CLEAR t374.
      t375 = t369.
      TRY.
          t368 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t368 IS NOT BOUND.
        TRY.
            t374 ?= t369.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t368 = t374->source( ).
        ENDIF.
        IF t368 IS NOT BOUND.
          CREATE OBJECT t368.
          t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t368->oval = t369.
        ENDIF.
      ENDIF.
    ENDIF.
    t367->load( ).
    APPEND t368 TO t367->items.
    t367->save( ).
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t376.
    DATA(t377) = t110.
    DATA(t378) = t113.
    DATA(t379) = t116.
    t376 = zcl_lnt_st_combi_module=>alt_prio( i_first = t377 i_second = t378 i_rest = t379 ).
    t109 = t376.
    t108 = t109.
    DATA(t380) = t108.
    result = t380.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1089_69c439d6ef09.
  ENDMETHOD.
ENDCLASS.
