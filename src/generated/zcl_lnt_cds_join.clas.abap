* TS: src/cds/expressions/cds_join.ts:6:1 CDSJoin
CLASS zcl_lnt_cds_join DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_join IMPLEMENTATION.
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
    DATA(t5) = |EXACT ONE|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |ONE|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |MANY|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = t3.
    DATA(t16) = t6.
    DATA(t17) = t9.
    t14 = zcl_lnt_st_combi_module=>alt_prio( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |LEFT OUTER|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = t1.
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      CLEAR t26.
      t27 = t25.
      TRY.
          t24 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t26 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t24 = t26->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    t23 = t24.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    CREATE OBJECT t29.
    t28 = t29.
    DATA(t30) = t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = |TO|.
    CLEAR t31.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = t32.
    t30->load( ).
    APPEND t31 TO t30->items.
    t30->save( ).
    DATA(t33) = t28.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = t1.
    CLEAR t34.
    IF t35 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      CLEAR t36.
      t37 = t35.
      TRY.
          t34 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t36 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t34 = t36->source( ).
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
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA(t39) = t20.
    DATA(t40) = t23.
    DATA(t41) = t28.
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t40 i_rest = t41 ).
    t19 = t38.
    t18 = t19.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = |LEFT OUTER TO|.
    CLEAR t45.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = |EXACT ONE|.
    CLEAR t51.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = |ONE|.
    CLEAR t54.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    CREATE OBJECT t57.
    t56 = t57.
    DATA(t58) = t56.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = |MANY|.
    CLEAR t59.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    t58->load( ).
    APPEND t59 TO t58->items.
    t58->save( ).
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA(t62) = t50.
    DATA(t63) = t53.
    DATA(t64) = t56.
    t61 = zcl_lnt_st_combi_module=>alt_prio( i_first = t62 i_second = t63 i_rest = t64 ).
    t49 = t61.
    CLEAR t48.
    IF t49 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      CLEAR t65.
      t66 = t49.
      TRY.
          t48 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t65 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t48 = t65->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t47 = t48.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    CREATE OBJECT t68.
    t67 = t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA(t70) = t44.
    DATA(t71) = t47.
    DATA(t72) = t67.
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t71 i_rest = t72 ).
    t43 = t69.
    t42 = t43.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = |INNER|.
    CLEAR t76.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = t1.
    CLEAR t79.
    IF t80 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      CLEAR t81.
      t82 = t80.
      TRY.
          t79 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t81 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t79 = t81->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    t78 = t79.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    CREATE OBJECT t84.
    t83 = t84.
    DATA(t85) = t83.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = |TO|.
    CLEAR t86.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = t87.
    t85->load( ).
    APPEND t86 TO t85->items.
    t85->save( ).
    DATA(t88) = t83.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = t1.
    CLEAR t89.
    IF t90 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t91.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      CLEAR t91.
      t92 = t90.
      TRY.
          t89 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t90.
        ENDIF.
      ENDIF.
    ENDIF.
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA(t94) = t75.
    DATA(t95) = t78.
    DATA(t96) = t83.
    t93 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t95 i_rest = t96 ).
    t74 = t93.
    t73 = t74.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = |INNER TO|.
    CLEAR t100.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = |EXACT ONE|.
    CLEAR t106.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = |ONE|.
    CLEAR t109.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = t110.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    CREATE OBJECT t112.
    t111 = t112.
    DATA(t113) = t111.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = |MANY|.
    CLEAR t114.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = t115.
    t113->load( ).
    APPEND t114 TO t113->items.
    t113->save( ).
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA(t117) = t105.
    DATA(t118) = t108.
    DATA(t119) = t111.
    t116 = zcl_lnt_st_combi_module=>alt_prio( i_first = t117 i_second = t118 i_rest = t119 ).
    t104 = t116.
    CLEAR t103.
    IF t104 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      CLEAR t120.
      t121 = t104.
      TRY.
          t103 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t120 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t103 = t120->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = t103.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    CREATE OBJECT t123.
    t122 = t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA(t125) = t99.
    DATA(t126) = t102.
    DATA(t127) = t122.
    t124 = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t126 i_rest = t127 ).
    t98 = t124.
    t97 = t98.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
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
    DATA(t134) = t18.
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
    DATA(t139) = t42.
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
    DATA(t144) = t142.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA(t146) = |LEFT OUTER|.
    CLEAR t145.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = t146.
    t144->load( ).
    APPEND t145 TO t144->items.
    t144->save( ).
    DATA(t147) = t142.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = t73.
    CLEAR t148.
    IF t149 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t150.
      DATA t151 TYPE REF TO object.
      CLEAR t151.
      CLEAR t150.
      t151 = t149.
      TRY.
          t148 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t150 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t148 = t150->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t147->load( ).
    APPEND t148 TO t147->items.
    t147->save( ).
    DATA(t152) = t142.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = t97.
    CLEAR t153.
    IF t154 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t155.
      DATA t156 TYPE REF TO object.
      CLEAR t156.
      CLEAR t155.
      t156 = t154.
      TRY.
          t153 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t152->load( ).
    APPEND t153 TO t152->items.
    t152->save( ).
    DATA(t157) = t142.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = |INNER|.
    CLEAR t158.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157->load( ).
    APPEND t158 TO t157->items.
    t157->save( ).
    DATA(t160) = t142.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = |CROSS|.
    CLEAR t161.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = t162.
    t160->load( ).
    APPEND t161 TO t160->items.
    t160->save( ).
    DATA(t163) = t142.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = |RIGHT OUTER|.
    CLEAR t164.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = t165.
    t163->load( ).
    APPEND t164 TO t163->items.
    t163->save( ).
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA(t167) = t132.
    DATA(t168) = t137.
    DATA(t169) = t142.
    t166 = zcl_lnt_st_combi_module=>alt_prio( i_first = t167 i_second = t168 i_rest = t169 ).
    t131 = t166.
    CLEAR t130.
    IF t131 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t170.
      DATA t171 TYPE REF TO object.
      CLEAR t171.
      CLEAR t170.
      t171 = t131.
      TRY.
          t130 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t170 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t130 = t170->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    t129 = zcl_lnt_st_combi_module=>opt_prio( i_first = t130 ).
    t128 = t129.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    CLEAR t175.
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t175->cval = t176.
    ENDIF.
    t174 = t175.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = |ON|.
    CLEAR t178.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t179.
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t181.
    CREATE OBJECT t181.
    t180 = t181.
    DATA(t182) = t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    CLEAR t183.
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t183->cval = t184.
    ENDIF.
    t182->load( ).
    APPEND t183 TO t182->items.
    t182->save( ).
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA(t186) = t174.
    DATA(t187) = t177.
    DATA(t188) = t180.
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t187 i_rest = t188 ).
    t173 = t185.
    t172 = t173.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = |(|.
    CLEAR t195.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = t172.
    CLEAR t198.
    IF t199 IS BOUND.
      DATA t200 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t200.
      DATA t201 TYPE REF TO object.
      CLEAR t201.
      CLEAR t200.
      t201 = t199.
      TRY.
          t198 ?= t201.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t200 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t200 IS BOUND.
          t198 = t200->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t197 = t198.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t203.
    CREATE OBJECT t203.
    t202 = t203.
    DATA(t204) = t202.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = |)|.
    CLEAR t205.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t204->load( ).
    APPEND t205 TO t204->items.
    t204->save( ).
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA(t208) = t194.
    DATA(t209) = t197.
    DATA(t210) = t202.
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t209 i_rest = t210 ).
    t193 = t207.
    CLEAR t192.
    IF t193 IS BOUND.
      DATA t211 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t211.
      DATA t212 TYPE REF TO object.
      CLEAR t212.
      CLEAR t211.
      t212 = t193.
      TRY.
          t192 ?= t212.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t211 ?= t193.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t211 IS BOUND.
          t192 = t211->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t193.
        ENDIF.
      ENDIF.
    ENDIF.
    t191 = t192.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = t172.
    CLEAR t214.
    IF t215 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t216.
      DATA t217 TYPE REF TO object.
      CLEAR t217.
      CLEAR t216.
      t217 = t215.
      TRY.
          t214 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t216 ?= t215.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t214 = t216->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t215.
        ENDIF.
      ENDIF.
    ENDIF.
    t213 = t214.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    CREATE OBJECT t219.
    t218 = t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA(t221) = t191.
    DATA(t222) = t213.
    DATA(t223) = t218.
    t220 = zcl_lnt_st_combi_module=>alt_prio( i_first = t221 i_second = t222 i_rest = t223 ).
    t190 = t220.
    t189 = t190.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = t128.
    CLEAR t227.
    IF t228 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t229.
      DATA t230 TYPE REF TO object.
      CLEAR t230.
      CLEAR t229.
      t230 = t228.
      TRY.
          t227 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t229 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t227 = t229->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t228.
        ENDIF.
      ENDIF.
    ENDIF.
    t226 = t227.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA(t233) = |JOIN|.
    CLEAR t232.
    CREATE OBJECT t232.
    t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t232->sval = t233.
    t231 = t232.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t235.
    CREATE OBJECT t235.
    t234 = t235.
    DATA(t236) = t234.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA(t244) = |(|.
    CLEAR t243.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = t244.
    t242 = t243.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = t172.
    CLEAR t246.
    IF t247 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t248.
      DATA t249 TYPE REF TO object.
      CLEAR t249.
      CLEAR t248.
      t249 = t247.
      TRY.
          t246 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t248 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t246 = t248->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = t246.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t251.
    CREATE OBJECT t251.
    t250 = t251.
    DATA(t252) = t250.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = |)|.
    CLEAR t253.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = t254.
    t252->load( ).
    APPEND t253 TO t252->items.
    t252->save( ).
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA(t256) = t242.
    DATA(t257) = t245.
    DATA(t258) = t250.
    t255 = zcl_lnt_st_combi_module=>seq( i_first = t256 i_second = t257 i_rest = t258 ).
    t241 = t255.
    CLEAR t240.
    IF t241 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t259.
      DATA t260 TYPE REF TO object.
      CLEAR t260.
      CLEAR t259.
      t260 = t241.
      TRY.
          t240 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t259 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t240 = t259->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t239 = t240.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = t172.
    CLEAR t262.
    IF t263 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t264.
      DATA t265 TYPE REF TO object.
      CLEAR t265.
      CLEAR t264.
      t265 = t263.
      TRY.
          t262 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t264 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t262 = t264->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    t261 = t262.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t267.
    CREATE OBJECT t267.
    t266 = t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA(t269) = t239.
    DATA(t270) = t261.
    DATA(t271) = t266.
    t268 = zcl_lnt_st_combi_module=>alt_prio( i_first = t269 i_second = t270 i_rest = t271 ).
    t238 = t268.
    CLEAR t237.
    IF t238 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t272.
      DATA t273 TYPE REF TO object.
      CLEAR t273.
      CLEAR t272.
      t273 = t238.
      TRY.
          t237 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t272 ?= t238.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t237 = t272->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t238.
        ENDIF.
      ENDIF.
    ENDIF.
    t236->load( ).
    APPEND t237 TO t236->items.
    t236->save( ).
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA(t275) = t226.
    DATA(t276) = t231.
    DATA(t277) = t234.
    t274 = zcl_lnt_st_combi_module=>seq( i_first = t275 i_second = t276 i_rest = t277 ).
    t225 = t274.
    t224 = t225.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA(t282) = |(|.
    CLEAR t281.
    CREATE OBJECT t281.
    t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t281->sval = t282.
    t280 = t281.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA(t285) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    CLEAR t284.
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t284->cval = t285.
    ENDIF.
    t283 = t284.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t287.
    CREATE OBJECT t287.
    t286 = t287.
    DATA(t288) = t286.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA(t292) = t224.
    CLEAR t291.
    IF t292 IS BOUND.
      DATA t293 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t293.
      DATA t294 TYPE REF TO object.
      CLEAR t294.
      CLEAR t293.
      t294 = t292.
      TRY.
          t291 ?= t294.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t293 ?= t292.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t293 IS BOUND.
          t291 = t293->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t292.
        ENDIF.
      ENDIF.
    ENDIF.
    t290 = zcl_lnt_st_combi_module=>star( i_first = t291 ).
    CLEAR t289.
    IF t290 IS BOUND.
      DATA t295 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t295.
      DATA t296 TYPE REF TO object.
      CLEAR t296.
      CLEAR t295.
      t296 = t290.
      TRY.
          t289 ?= t296.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t295 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t295 IS BOUND.
          t289 = t295->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t290.
        ENDIF.
      ENDIF.
    ENDIF.
    t288->load( ).
    APPEND t289 TO t288->items.
    t288->save( ).
    DATA(t297) = t286.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA(t299) = |)|.
    CLEAR t298.
    CREATE OBJECT t298.
    t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t298->sval = t299.
    t297->load( ).
    APPEND t298 TO t297->items.
    t297->save( ).
    DATA(t300) = t286.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = |ON|.
    CLEAR t301.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    t300->load( ).
    APPEND t301 TO t300->items.
    t300->save( ).
    DATA(t303) = t286.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    CLEAR t304.
    IF t305 IS BOUND.
      CREATE OBJECT t304.
      t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t304->cval = t305.
    ENDIF.
    t303->load( ).
    APPEND t304 TO t303->items.
    t303->save( ).
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA(t307) = t280.
    DATA(t308) = t283.
    DATA(t309) = t286.
    t306 = zcl_lnt_st_combi_module=>seq( i_first = t307 i_second = t308 i_rest = t309 ).
    t279 = t306.
    t278 = t279.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    CLEAR t313.
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t313->cval = t314.
    ENDIF.
    t312 = t313.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA t317 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t317.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA(t322) = t128.
    CLEAR t321.
    IF t322 IS BOUND.
      DATA t323 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t323.
      DATA t324 TYPE REF TO object.
      CLEAR t324.
      CLEAR t323.
      t324 = t322.
      TRY.
          t321 ?= t324.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t321 IS NOT BOUND.
        TRY.
            t323 ?= t322.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t323 IS BOUND.
          t321 = t323->source( ).
        ENDIF.
        IF t321 IS NOT BOUND.
          CREATE OBJECT t321.
          t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t321->oval = t322.
        ENDIF.
      ENDIF.
    ENDIF.
    t320 = t321.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA(t327) = |JOIN|.
    CLEAR t326.
    CREATE OBJECT t326.
    t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t326->sval = t327.
    t325 = t326.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t329.
    CREATE OBJECT t329.
    t328 = t329.
    DATA(t330) = t328.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA(t332) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    CLEAR t331.
    IF t332 IS BOUND.
      CREATE OBJECT t331.
      t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t331->cval = t332.
    ENDIF.
    t330->load( ).
    APPEND t331 TO t330->items.
    t330->save( ).
    DATA(t333) = t328.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA(t335) = |ON|.
    CLEAR t334.
    CREATE OBJECT t334.
    t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t334->sval = t335.
    t333->load( ).
    APPEND t334 TO t333->items.
    t333->save( ).
    DATA(t336) = t328.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA(t338) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    CLEAR t337.
    IF t338 IS BOUND.
      CREATE OBJECT t337.
      t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t337->cval = t338.
    ENDIF.
    t336->load( ).
    APPEND t337 TO t336->items.
    t336->save( ).
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA(t340) = t320.
    DATA(t341) = t325.
    DATA(t342) = t328.
    t339 = zcl_lnt_st_combi_module=>seq( i_first = t340 i_second = t341 i_rest = t342 ).
    t319 = t339.
    CLEAR t318.
    IF t319 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t343.
      DATA t344 TYPE REF TO object.
      CLEAR t344.
      CLEAR t343.
      t344 = t319.
      TRY.
          t318 ?= t344.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t318 IS NOT BOUND.
        TRY.
            t343 ?= t319.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t318 = t343->source( ).
        ENDIF.
        IF t318 IS NOT BOUND.
          CREATE OBJECT t318.
          t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t318->oval = t319.
        ENDIF.
      ENDIF.
    ENDIF.
    t317 = zcl_lnt_st_combi_module=>star( i_first = t318 ).
    CLEAR t316.
    IF t317 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t345.
      DATA t346 TYPE REF TO object.
      CLEAR t346.
      CLEAR t345.
      t346 = t317.
      TRY.
          t316 ?= t346.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t345 ?= t317.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t316 = t345->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t317.
        ENDIF.
      ENDIF.
    ENDIF.
    t315 = t316.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t348.
    CREATE OBJECT t348.
    t347 = t348.
    DATA(t349) = t347.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = |ON|.
    CLEAR t350.
    CREATE OBJECT t350.
    t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t350->sval = t351.
    t349->load( ).
    APPEND t350 TO t349->items.
    t349->save( ).
    DATA(t352) = t347.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA(t354) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    CLEAR t353.
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t353->cval = t354.
    ENDIF.
    t352->load( ).
    APPEND t353 TO t352->items.
    t352->save( ).
    DATA t355 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t355.
    DATA(t356) = t312.
    DATA(t357) = t315.
    DATA(t358) = t347.
    t355 = zcl_lnt_st_combi_module=>seq( i_first = t356 i_second = t357 i_rest = t358 ).
    t311 = t355.
    t310 = t311.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA(t362) = t128.
    CLEAR t361.
    IF t362 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t363.
      DATA t364 TYPE REF TO object.
      CLEAR t364.
      CLEAR t363.
      t364 = t362.
      TRY.
          t361 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t363 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t361 = t363->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    t360 = t361.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA(t367) = |JOIN|.
    CLEAR t366.
    CREATE OBJECT t366.
    t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t366->sval = t367.
    t365 = t366.
    DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t368.
    DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t369.
    CREATE OBJECT t369.
    t368 = t369.
    DATA(t370) = t368.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t372.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA(t375) = t278.
    CLEAR t374.
    IF t375 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t376.
      DATA t377 TYPE REF TO object.
      CLEAR t377.
      CLEAR t376.
      t377 = t375.
      TRY.
          t374 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t374 IS NOT BOUND.
        TRY.
            t376 ?= t375.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t374 = t376->source( ).
        ENDIF.
        IF t374 IS NOT BOUND.
          CREATE OBJECT t374.
          t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t374->oval = t375.
        ENDIF.
      ENDIF.
    ENDIF.
    t373 = t374.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA(t380) = t310.
    CLEAR t379.
    IF t380 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t381.
      DATA t382 TYPE REF TO object.
      CLEAR t382.
      CLEAR t381.
      t382 = t380.
      TRY.
          t379 ?= t382.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t381 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t379 = t381->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t380.
        ENDIF.
      ENDIF.
    ENDIF.
    t378 = t379.
    DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t383.
    DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t384.
    CREATE OBJECT t384.
    t383 = t384.
    DATA(t385) = t383.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA(t387) = t189.
    CLEAR t386.
    IF t387 IS BOUND.
      DATA t388 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t388.
      DATA t389 TYPE REF TO object.
      CLEAR t389.
      CLEAR t388.
      t389 = t387.
      TRY.
          t386 ?= t389.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t388 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t388 IS BOUND.
          t386 = t388->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t387.
        ENDIF.
      ENDIF.
    ENDIF.
    t385->load( ).
    APPEND t386 TO t385->items.
    t385->save( ).
    DATA(t390) = t383.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    CLEAR t391.
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t391->cval = t392.
    ENDIF.
    t390->load( ).
    APPEND t391 TO t390->items.
    t390->save( ).
    DATA t393 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t393.
    DATA(t394) = t373.
    DATA(t395) = t378.
    DATA(t396) = t383.
    t393 = zcl_lnt_st_combi_module=>alt_prio( i_first = t394 i_second = t395 i_rest = t396 ).
    t372 = t393.
    CLEAR t371.
    IF t372 IS BOUND.
      DATA t397 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t397.
      DATA t398 TYPE REF TO object.
      CLEAR t398.
      CLEAR t397.
      t398 = t372.
      TRY.
          t371 ?= t398.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t371 IS NOT BOUND.
        TRY.
            t397 ?= t372.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t397 IS BOUND.
          t371 = t397->source( ).
        ENDIF.
        IF t371 IS NOT BOUND.
          CREATE OBJECT t371.
          t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t371->oval = t372.
        ENDIF.
      ENDIF.
    ENDIF.
    t370->load( ).
    APPEND t371 TO t370->items.
    t370->save( ).
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t399.
    DATA(t400) = t360.
    DATA(t401) = t365.
    DATA(t402) = t368.
    t399 = zcl_lnt_st_combi_module=>seq( i_first = t400 i_second = t401 i_rest = t402 ).
    t359 = t399.
    result = t359.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1108_9ad6b30e9664.
  ENDMETHOD.
ENDCLASS.
