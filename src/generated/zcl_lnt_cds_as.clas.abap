* TS: src/cds/expressions/cds_as.ts:5:1 CDSAs
CLASS zcl_lnt_cds_as DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_as IMPLEMENTATION.
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
    DATA(t5) = |: REDIRECTED TO|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |PARENT|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = |COMPOSITION CHILD|.
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
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA(t20) = t11.
    DATA(t21) = t14.
    DATA(t22) = t17.
    t19 = zcl_lnt_st_combi_module=>alt_prio( i_first = t20 i_second = t21 i_rest = t22 ).
    t10 = t19.
    CLEAR t9.
    IF t10 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      CLEAR t23.
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
    t8 = zcl_lnt_st_combi_module=>opt_prio( i_first = t9 ).
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      CLEAR t25.
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
    t6 = t7.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    CREATE OBJECT t28.
    t27 = t28.
    DATA(t29) = t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t30.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA(t33) = t3.
    DATA(t34) = t6.
    DATA(t35) = t27.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t34 i_rest = t35 ).
    t2 = t32.
    t1 = t2.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |:|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    CLEAR t45.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t48.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    CREATE OBJECT t51.
    t50 = t51.
    DATA(t52) = t50.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = |LOCALIZED|.
    CLEAR t53.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = t54.
    t52->load( ).
    APPEND t53 TO t52->items.
    t52->save( ).
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = t44.
    DATA(t57) = t47.
    DATA(t58) = t50.
    t55 = zcl_lnt_st_combi_module=>alt_prio( i_first = t56 i_second = t57 i_rest = t58 ).
    t43 = t55.
    CLEAR t42.
    IF t43 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      CLEAR t59.
      t60 = t43.
      TRY.
          t42 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t59 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t42 = t59->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t41 = t42.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    CREATE OBJECT t62.
    t61 = t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA(t64) = t38.
    DATA(t65) = t41.
    DATA(t66) = t61.
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t64 i_second = t65 i_rest = t66 ).
    t37 = t63.
    t36 = t37.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t69.
    DATA(t70) = `^\w+$`.
    DATA(t71) = |^[A-Za-z0-9_]+$|.
    DATA(t72) = ||.
    CREATE OBJECT t69 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t71 flags = t72.
    t69->source = t70.
    t68 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t69 ).
    t67 = t68.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = t67.
    CLEAR t76.
    IF t77 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t78.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      CLEAR t78.
      t79 = t77.
      TRY.
          t76 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t78 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t76 = t78->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t75 = t76.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = |/|.
    CLEAR t81.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    CREATE OBJECT t84.
    t83 = t84.
    DATA(t85) = t83.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = t67.
    CLEAR t86.
    IF t87 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t88.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      CLEAR t88.
      t89 = t87.
      TRY.
          t86 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t88 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t86 = t88->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85->load( ).
    APPEND t86 TO t85->items.
    t85->save( ).
    DATA(t90) = t83.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = |/|.
    CLEAR t91.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90->load( ).
    APPEND t91 TO t90->items.
    t90->save( ).
    DATA(t93) = t83.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = t67.
    CLEAR t94.
    IF t95 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      CLEAR t96.
      t97 = t95.
      TRY.
          t94 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t96 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t94 = t96->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t93->load( ).
    APPEND t94 TO t93->items.
    t93->save( ).
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA(t99) = t75.
    DATA(t100) = t80.
    DATA(t101) = t83.
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t99 i_second = t100 i_rest = t101 ).
    t74 = t98.
    t73 = t74.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = |AS|.
    CLEAR t104.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = t73.
    CLEAR t110.
    IF t111 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t112.
      DATA t113 TYPE REF TO object.
      CLEAR t113.
      CLEAR t112.
      t113 = t111.
      TRY.
          t110 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t110 IS NOT BOUND.
        TRY.
            t112 ?= t111.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t110 = t112->source( ).
        ENDIF.
        IF t110 IS NOT BOUND.
          CREATE OBJECT t110.
          t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t110->oval = t111.
        ENDIF.
      ENDIF.
    ENDIF.
    t109 = t110.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t115.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA(t120) = t109.
    DATA(t121) = t114.
    DATA(t122) = t117.
    t119 = zcl_lnt_st_combi_module=>alt_prio( i_first = t120 i_second = t121 i_rest = t122 ).
    t108 = t119.
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t108.
      TRY.
          t107 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t123 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t107 = t123->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = t107.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    CREATE OBJECT t126.
    t125 = t126.
    DATA(t127) = t125.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = t1.
    CLEAR t133.
    IF t134 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t135.
      DATA t136 TYPE REF TO object.
      CLEAR t136.
      CLEAR t135.
      t136 = t134.
      TRY.
          t133 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t135 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t133 = t135->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t132 = t133.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = t36.
    CLEAR t138.
    IF t139 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t140.
      DATA t141 TYPE REF TO object.
      CLEAR t141.
      CLEAR t140.
      t141 = t139.
      TRY.
          t138 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t140 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t138 = t140->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    t137 = t138.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t143.
    CREATE OBJECT t143.
    t142 = t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA(t145) = t132.
    DATA(t146) = t137.
    DATA(t147) = t142.
    t144 = zcl_lnt_st_combi_module=>alt_prio( i_first = t145 i_second = t146 i_rest = t147 ).
    t131 = t144.
    CLEAR t130.
    IF t131 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t148.
      DATA t149 TYPE REF TO object.
      CLEAR t149.
      CLEAR t148.
      t149 = t131.
      TRY.
          t130 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t148 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t130 = t148->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    t129 = zcl_lnt_st_combi_module=>opt_prio( i_first = t130 ).
    CLEAR t128.
    IF t129 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t150.
      DATA t151 TYPE REF TO object.
      CLEAR t151.
      CLEAR t150.
      t151 = t129.
      TRY.
          t128 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t150 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t128 = t150->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t127->load( ).
    APPEND t128 TO t127->items.
    t127->save( ).
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA(t153) = t103.
    DATA(t154) = t106.
    DATA(t155) = t125.
    t152 = zcl_lnt_st_combi_module=>seq( i_first = t153 i_second = t154 i_rest = t155 ).
    t102 = t152.
    result = t102.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
  ENDMETHOD.
ENDCLASS.
