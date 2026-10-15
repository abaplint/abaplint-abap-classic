* TS: src/cds/expressions/cds_parameters_select.ts:5:1 CDSParametersSelect
CLASS zcl_lnt_cds_parameters_select DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_parameters_select IMPLEMENTATION.
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
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t4.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
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
    DATA(t13) = |.|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t15.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
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
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t21 i_rest = t22 ).
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
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
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
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA(t30) = t3.
    DATA(t31) = t6.
    DATA(t32) = t27.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t2 = t29.
    t1 = t2.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    CLEAR t36.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t39.
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    CREATE OBJECT t42.
    t41 = t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA(t44) = t35.
    DATA(t45) = t38.
    DATA(t46) = t41.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t45 i_rest = t46 ).
    t34 = t43.
    t33 = t34.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = t33.
    CLEAR t50.
    IF t51 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      CLEAR t52.
      t53 = t51.
      TRY.
          t50 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = t50.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    CLEAR t55.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    CREATE OBJECT t58.
    t57 = t58.
    DATA(t59) = t57.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = t1.
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t62.
      DATA t63 TYPE REF TO object.
      CLEAR t63.
      CLEAR t62.
      t63 = t61.
      TRY.
          t60 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t62 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t60 = t62->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t64) = t57.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t65.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64->load( ).
    APPEND t65 TO t64->items.
    t64->save( ).
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA(t68) = t49.
    DATA(t69) = t54.
    DATA(t70) = t57.
    t67 = zcl_lnt_st_combi_module=>alt_prio( i_first = t68 i_second = t69 i_rest = t70 ).
    t48 = t67.
    t47 = t48.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = t1.
    CLEAR t74.
    IF t75 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      CLEAR t76.
      t77 = t75.
      TRY.
          t74 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t76 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t74 = t76->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t73 = t74.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = |:|.
    CLEAR t79.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = t80.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    CREATE OBJECT t82.
    t81 = t82.
    DATA(t83) = t81.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = t47.
    CLEAR t84.
    IF t85 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t86.
      DATA t87 TYPE REF TO object.
      CLEAR t87.
      CLEAR t86.
      t87 = t85.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t83->load( ).
    APPEND t84 TO t83->items.
    t83->save( ).
    DATA(t88) = t81.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = |DEFAULT|.
    CLEAR t91.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = zcl_lnt_st_combi_module=>opt_prio( i_first = t91 ).
    CLEAR t89.
    IF t90 IS BOUND.
      DATA t93 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t93.
      DATA t94 TYPE REF TO object.
      CLEAR t94.
      CLEAR t93.
      t94 = t90.
      TRY.
          t89 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t93 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t93 IS BOUND.
          t89 = t93->source( ).
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
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA(t96) = t73.
    DATA(t97) = t78.
    DATA(t98) = t81.
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t97 i_rest = t98 ).
    t72 = t95.
    t71 = t72.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = t1.
    CLEAR t102.
    IF t103 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t104.
      DATA t105 TYPE REF TO object.
      CLEAR t105.
      CLEAR t104.
      t105 = t103.
      TRY.
          t102 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t104 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t102 = t104->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t101 = t102.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = |=|.
    CLEAR t107.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106 = t107.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t110.
    CREATE OBJECT t110.
    t109 = t110.
    DATA(t111) = t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = |>|.
    CLEAR t112.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111->load( ).
    APPEND t112 TO t111->items.
    t111->save( ).
    DATA(t114) = t109.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = t47.
    CLEAR t115.
    IF t116 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      CLEAR t117.
      t118 = t116.
      TRY.
          t115 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t117 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t115 = t117->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    t114->load( ).
    APPEND t115 TO t114->items.
    t114->save( ).
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA(t120) = t101.
    DATA(t121) = t106.
    DATA(t122) = t109.
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t100 = t119.
    t99 = t100.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = t71.
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t128.
      DATA t129 TYPE REF TO object.
      CLEAR t129.
      CLEAR t128.
      t129 = t127.
      TRY.
          t126 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t128 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t126 = t128->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125 = t126.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = t99.
    CLEAR t131.
    IF t132 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t133.
      DATA t134 TYPE REF TO object.
      CLEAR t134.
      CLEAR t133.
      t134 = t132.
      TRY.
          t131 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t133 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t131 = t133->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t130 = t131.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    CREATE OBJECT t136.
    t135 = t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA(t138) = t125.
    DATA(t139) = t130.
    DATA(t140) = t135.
    t137 = zcl_lnt_st_combi_module=>alt_prio( i_first = t138 i_second = t139 i_rest = t140 ).
    t124 = t137.
    t123 = t124.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = |(|.
    CLEAR t143.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = t123.
    CLEAR t146.
    IF t147 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t148.
      DATA t149 TYPE REF TO object.
      CLEAR t149.
      CLEAR t148.
      t149 = t147.
      TRY.
          t146 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t148 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t146 = t148->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    t145 = t146.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t151.
    CREATE OBJECT t151.
    t150 = t151.
    DATA(t152) = t150.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = |,|.
    CLEAR t158.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = t123.
    CLEAR t161.
    IF t162 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t163.
      DATA t164 TYPE REF TO object.
      CLEAR t164.
      CLEAR t163.
      t164 = t162.
      TRY.
          t161 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t163 ?= t162.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t161 = t163->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t162.
        ENDIF.
      ENDIF.
    ENDIF.
    t160 = t161.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    CREATE OBJECT t166.
    t165 = t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA(t168) = t157.
    DATA(t169) = t160.
    DATA(t170) = t165.
    t167 = zcl_lnt_st_combi_module=>seq( i_first = t168 i_second = t169 i_rest = t170 ).
    t156 = t167.
    CLEAR t155.
    IF t156 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t171.
      DATA t172 TYPE REF TO object.
      CLEAR t172.
      CLEAR t171.
      t172 = t156.
      TRY.
          t155 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t171 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t155 = t171->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>star( i_first = t155 ).
    CLEAR t153.
    IF t154 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t173.
      DATA t174 TYPE REF TO object.
      CLEAR t174.
      CLEAR t173.
      t174 = t154.
      TRY.
          t153 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t173 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t153 = t173->source( ).
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
    DATA(t175) = t150.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = |)|.
    CLEAR t176.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    t175->load( ).
    APPEND t176 TO t175->items.
    t175->save( ).
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA(t179) = t142.
    DATA(t180) = t145.
    DATA(t181) = t150.
    t178 = zcl_lnt_st_combi_module=>seq( i_first = t179 i_second = t180 i_rest = t181 ).
    t141 = t178.
    result = t141.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
  ENDMETHOD.
ENDCLASS.
