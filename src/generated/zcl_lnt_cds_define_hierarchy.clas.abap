* TS: src/cds/expressions/cds_define_hierarchy.ts:5:1 CDSDefineHierarchy
CLASS zcl_lnt_cds_define_hierarchy DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_define_hierarchy IMPLEMENTATION.
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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    CLEAR t6.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>star( i_first = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t5.
      TRY.
          t4 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = |KEY|.
    CLEAR t13.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = t14.
    t12 = zcl_lnt_st_combi_module=>opt_prio( i_first = t13 ).
    CLEAR t11.
    IF t12 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      CLEAR t15.
      t16 = t12.
      TRY.
          t11 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t15 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t11 = t15->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    t10 = t11.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t20.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA(t22) = t17.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    CLEAR t25.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = zcl_lnt_st_combi_module=>opt_prio( i_first = t25 ).
    CLEAR t23.
    IF t24 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      CLEAR t27.
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
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA(t30) = t3.
    DATA(t31) = t10.
    DATA(t32) = t17.
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
    DATA(t37) = |ASCENDING|.
    CLEAR t36.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |DESCENDING|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
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
    t43 = zcl_lnt_st_combi_module=>alt_prio( i_first = t44 i_second = t45 i_rest = t46 ).
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
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t50.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = t33.
    CLEAR t55.
    IF t56 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t57.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      CLEAR t57.
      t58 = t56.
      TRY.
          t55 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t57 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t55 = t57->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>opt_prio( i_first = t55 ).
    CLEAR t53.
    IF t54 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      CLEAR t59.
      t60 = t54.
      TRY.
          t53 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t59 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t53 = t59->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t52 = t53.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    CREATE OBJECT t62.
    t61 = t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA(t64) = t49.
    DATA(t65) = t52.
    DATA(t66) = t61.
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t64 i_second = t65 i_rest = t66 ).
    t48 = t63.
    t47 = t48.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = |SIBLINGS|.
    CLEAR t70.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = |ORDER|.
    CLEAR t73.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    CREATE OBJECT t76.
    t75 = t76.
    DATA(t77) = t75.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = |BY|.
    CLEAR t78.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77->load( ).
    APPEND t78 TO t77->items.
    t77->save( ).
    DATA(t80) = t75.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = t47.
    CLEAR t81.
    IF t82 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t83.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      CLEAR t83.
      t84 = t82.
      TRY.
          t81 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t83 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t81 = t83->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t80->load( ).
    APPEND t81 TO t80->items.
    t80->save( ).
    DATA(t85) = t75.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = |,|.
    CLEAR t91.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = t47.
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
    t93 = t94.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    CREATE OBJECT t99.
    t98 = t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA(t101) = t90.
    DATA(t102) = t93.
    DATA(t103) = t98.
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t102 i_rest = t103 ).
    t89 = t100.
    CLEAR t88.
    IF t89 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t104.
      DATA t105 TYPE REF TO object.
      CLEAR t105.
      CLEAR t104.
      t105 = t89.
      TRY.
          t88 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t104 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t88 = t104->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t87 = zcl_lnt_st_combi_module=>star( i_first = t88 ).
    CLEAR t86.
    IF t87 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t106.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      CLEAR t106.
      t107 = t87.
      TRY.
          t86 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t106 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t86 = t106->source( ).
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
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA(t109) = t69.
    DATA(t110) = t72.
    DATA(t111) = t75.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t110 i_rest = t111 ).
    t68 = t108.
    t67 = t68.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = |DIRECTORY|.
    CLEAR t115.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = t116.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t118.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    CREATE OBJECT t121.
    t120 = t121.
    DATA(t122) = t120.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = |FILTER|.
    CLEAR t123.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = t124.
    t122->load( ).
    APPEND t123 TO t122->items.
    t122->save( ).
    DATA(t125) = t120.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = |BY|.
    CLEAR t126.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = t127.
    t125->load( ).
    APPEND t126 TO t125->items.
    t125->save( ).
    DATA(t128) = t120.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    CLEAR t129.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t128->load( ).
    APPEND t129 TO t128->items.
    t128->save( ).
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA(t132) = t114.
    DATA(t133) = t117.
    DATA(t134) = t120.
    t131 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t133 i_rest = t134 ).
    t113 = t131.
    t112 = t113.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = |PERIOD|.
    CLEAR t138.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
    t137 = t138.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA(t142) = |FROM|.
    CLEAR t141.
    CREATE OBJECT t141.
    t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t141->sval = t142.
    t140 = t141.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t144.
    CREATE OBJECT t144.
    t143 = t144.
    DATA(t145) = t143.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t146.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t145->load( ).
    APPEND t146 TO t145->items.
    t145->save( ).
    DATA(t148) = t143.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = |TO|.
    CLEAR t149.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = t150.
    t148->load( ).
    APPEND t149 TO t148->items.
    t148->save( ).
    DATA(t151) = t143.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t152.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    t151->load( ).
    APPEND t152 TO t151->items.
    t151->save( ).
    DATA(t154) = t143.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = |VALID|.
    CLEAR t160.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = t161.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = |FROM|.
    CLEAR t163.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = t164.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    CREATE OBJECT t166.
    t165 = t166.
    DATA(t167) = t165.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t171.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t174.
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t177.
    CREATE OBJECT t177.
    t176 = t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA(t179) = t170.
    DATA(t180) = t173.
    DATA(t181) = t176.
    t178 = zcl_lnt_st_combi_module=>alt_prio( i_first = t179 i_second = t180 i_rest = t181 ).
    t169 = t178.
    CLEAR t168.
    IF t169 IS BOUND.
      DATA t182 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t182.
      DATA t183 TYPE REF TO object.
      CLEAR t183.
      CLEAR t182.
      t183 = t169.
      TRY.
          t168 ?= t183.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t182 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t182 IS BOUND.
          t168 = t182->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t167->load( ).
    APPEND t168 TO t167->items.
    t167->save( ).
    DATA(t184) = t165.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = |TO|.
    CLEAR t185.
    CREATE OBJECT t185.
    t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t185->sval = t186.
    t184->load( ).
    APPEND t185 TO t184->items.
    t184->save( ).
    DATA(t187) = t165.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t191.
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t191->cval = t192.
    ENDIF.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t194.
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t194->cval = t195.
    ENDIF.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA(t199) = t190.
    DATA(t200) = t193.
    DATA(t201) = t196.
    t198 = zcl_lnt_st_combi_module=>alt_prio( i_first = t199 i_second = t200 i_rest = t201 ).
    t189 = t198.
    CLEAR t188.
    IF t189 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t202.
      DATA t203 TYPE REF TO object.
      CLEAR t203.
      CLEAR t202.
      t203 = t189.
      TRY.
          t188 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t202 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t188 = t202->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t187->load( ).
    APPEND t188 TO t187->items.
    t187->save( ).
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA(t205) = t159.
    DATA(t206) = t162.
    DATA(t207) = t165.
    t204 = zcl_lnt_st_combi_module=>seq( i_first = t205 i_second = t206 i_rest = t207 ).
    t158 = t204.
    CLEAR t157.
    IF t158 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      CLEAR t208.
      t209 = t158.
      TRY.
          t157 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t208 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t157 = t208->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t156 = zcl_lnt_st_combi_module=>opt( i_first = t157 ).
    CLEAR t155.
    IF t156 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t210.
      DATA t211 TYPE REF TO object.
      CLEAR t211.
      CLEAR t210.
      t211 = t156.
      TRY.
          t155 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t210 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t155 = t210->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    t154->load( ).
    APPEND t155 TO t154->items.
    t154->save( ).
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA(t213) = t137.
    DATA(t214) = t140.
    DATA(t215) = t143.
    t212 = zcl_lnt_st_combi_module=>seq( i_first = t213 i_second = t214 i_rest = t215 ).
    t136 = t212.
    t135 = t136.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA(t220) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t219.
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t219->cval = t220.
    ENDIF.
    t218 = t219.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    CLEAR t222.
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    t221 = t222.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t225.
    CREATE OBJECT t225.
    t224 = t225.
    DATA(t226) = t224.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t227.
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t227->cval = t228.
    ENDIF.
    t226->load( ).
    APPEND t227 TO t226->items.
    t226->save( ).
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA(t230) = t218.
    DATA(t231) = t221.
    DATA(t232) = t224.
    t229 = zcl_lnt_st_combi_module=>alt_prio( i_first = t230 i_second = t231 i_rest = t232 ).
    t217 = t229.
    t216 = t217.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = |BULK|.
    CLEAR t236.
    CREATE OBJECT t236.
    t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t236->sval = t237.
    t235 = t236.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = |INCREMENTAL|.
    CLEAR t239.
    CREATE OBJECT t239.
    t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t239->sval = t240.
    t238 = t239.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t242.
    CREATE OBJECT t242.
    t241 = t242.
    DATA(t243) = t241.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t244.
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t244->cval = t245.
    ENDIF.
    t243->load( ).
    APPEND t244 TO t243->items.
    t243->save( ).
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA(t247) = t235.
    DATA(t248) = t238.
    DATA(t249) = t241.
    t246 = zcl_lnt_st_combi_module=>alt_prio( i_first = t247 i_second = t248 i_rest = t249 ).
    t234 = t246.
    t233 = t234.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = |SOURCE|.
    CLEAR t253.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = t254.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t256.
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t256->cval = t257.
    ENDIF.
    t255 = t256.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t259.
    CREATE OBJECT t259.
    t258 = t259.
    DATA(t260) = t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA(t264) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    CLEAR t263.
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t263->cval = t264.
    ENDIF.
    t262 = zcl_lnt_st_combi_module=>opt( i_first = t263 ).
    CLEAR t261.
    IF t262 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t265.
      DATA t266 TYPE REF TO object.
      CLEAR t266.
      CLEAR t265.
      t266 = t262.
      TRY.
          t261 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t261 IS NOT BOUND.
        TRY.
            t265 ?= t262.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t261 = t265->source( ).
        ENDIF.
        IF t261 IS NOT BOUND.
          CREATE OBJECT t261.
          t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t261->oval = t262.
        ENDIF.
      ENDIF.
    ENDIF.
    t260->load( ).
    APPEND t261 TO t260->items.
    t260->save( ).
    DATA(t267) = t258.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = |CHILD|.
    CLEAR t268.
    CREATE OBJECT t268.
    t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t268->sval = t269.
    t267->load( ).
    APPEND t268 TO t267->items.
    t267->save( ).
    DATA(t270) = t258.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA(t272) = |TO|.
    CLEAR t271.
    CREATE OBJECT t271.
    t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t271->sval = t272.
    t270->load( ).
    APPEND t271 TO t270->items.
    t270->save( ).
    DATA(t273) = t258.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = |PARENT|.
    CLEAR t274.
    CREATE OBJECT t274.
    t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t274->sval = t275.
    t273->load( ).
    APPEND t274 TO t273->items.
    t273->save( ).
    DATA(t276) = t258.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = |ASSOCIATION|.
    CLEAR t277.
    CREATE OBJECT t277.
    t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t277->sval = t278.
    t276->load( ).
    APPEND t277 TO t276->items.
    t276->save( ).
    DATA(t279) = t258.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t280.
    IF t281 IS BOUND.
      CREATE OBJECT t280.
      t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t280->cval = t281.
    ENDIF.
    t279->load( ).
    APPEND t280 TO t279->items.
    t279->save( ).
    DATA(t282) = t258.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA(t294) = t112.
    CLEAR t293.
    IF t294 IS BOUND.
      DATA t295 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t295.
      DATA t296 TYPE REF TO object.
      CLEAR t296.
      CLEAR t295.
      t296 = t294.
      TRY.
          t293 ?= t296.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t293 IS NOT BOUND.
        TRY.
            t295 ?= t294.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t295 IS BOUND.
          t293 = t295->source( ).
        ENDIF.
        IF t293 IS NOT BOUND.
          CREATE OBJECT t293.
          t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t293->oval = t294.
        ENDIF.
      ENDIF.
    ENDIF.
    t292 = zcl_lnt_st_combi_module=>opt( i_first = t293 ).
    CLEAR t291.
    IF t292 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t297.
      DATA t298 TYPE REF TO object.
      CLEAR t298.
      CLEAR t297.
      t298 = t292.
      TRY.
          t291 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t297 ?= t292.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t291 = t297->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t292.
        ENDIF.
      ENDIF.
    ENDIF.
    t290 = t291.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = t135.
    CLEAR t300.
    IF t301 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t302.
      DATA t303 TYPE REF TO object.
      CLEAR t303.
      CLEAR t302.
      t303 = t301.
      TRY.
          t300 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    t299 = t300.
    DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t305.
    CREATE OBJECT t305.
    t304 = t305.
    DATA(t306) = t304.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA(t310) = t112.
    CLEAR t309.
    IF t310 IS BOUND.
      DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t311.
      DATA t312 TYPE REF TO object.
      CLEAR t312.
      CLEAR t311.
      t312 = t310.
      TRY.
          t309 ?= t312.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t309 IS NOT BOUND.
        TRY.
            t311 ?= t310.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t311 IS BOUND.
          t309 = t311->source( ).
        ENDIF.
        IF t309 IS NOT BOUND.
          CREATE OBJECT t309.
          t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t309->oval = t310.
        ENDIF.
      ENDIF.
    ENDIF.
    t308 = zcl_lnt_st_combi_module=>opt( i_first = t309 ).
    CLEAR t307.
    IF t308 IS BOUND.
      DATA t313 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t313.
      DATA t314 TYPE REF TO object.
      CLEAR t314.
      CLEAR t313.
      t314 = t308.
      TRY.
          t307 ?= t314.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t307 IS NOT BOUND.
        TRY.
            t313 ?= t308.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t313 IS BOUND.
          t307 = t313->source( ).
        ENDIF.
        IF t307 IS NOT BOUND.
          CREATE OBJECT t307.
          t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t307->oval = t308.
        ENDIF.
      ENDIF.
    ENDIF.
    t306->load( ).
    APPEND t307 TO t306->items.
    t306->save( ).
    DATA t315 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t315.
    DATA(t316) = t290.
    DATA(t317) = t299.
    DATA(t318) = t304.
    t315 = zcl_lnt_st_combi_module=>seq( i_first = t316 i_second = t317 i_rest = t318 ).
    t289 = t315.
    CLEAR t288.
    IF t289 IS BOUND.
      DATA t319 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t319.
      DATA t320 TYPE REF TO object.
      CLEAR t320.
      CLEAR t319.
      t320 = t289.
      TRY.
          t288 ?= t320.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t319 ?= t289.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t319 IS BOUND.
          t288 = t319->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t289.
        ENDIF.
      ENDIF.
    ENDIF.
    t287 = t288.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = t135.
    CLEAR t325.
    IF t326 IS BOUND.
      DATA t327 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t327.
      DATA t328 TYPE REF TO object.
      CLEAR t328.
      CLEAR t327.
      t328 = t326.
      TRY.
          t325 ?= t328.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t327 ?= t326.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t327 IS BOUND.
          t325 = t327->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t326.
        ENDIF.
      ENDIF.
    ENDIF.
    t324 = t325.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA(t333) = t112.
    CLEAR t332.
    IF t333 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t334.
      DATA t335 TYPE REF TO object.
      CLEAR t335.
      CLEAR t334.
      t335 = t333.
      TRY.
          t332 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t334 ?= t333.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t332 = t334->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t333.
        ENDIF.
      ENDIF.
    ENDIF.
    t331 = zcl_lnt_st_combi_module=>opt( i_first = t332 ).
    CLEAR t330.
    IF t331 IS BOUND.
      DATA t336 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t336.
      DATA t337 TYPE REF TO object.
      CLEAR t337.
      CLEAR t336.
      t337 = t331.
      TRY.
          t330 ?= t337.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t336 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t336 IS BOUND.
          t330 = t336->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    t329 = t330.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t339.
    CREATE OBJECT t339.
    t338 = t339.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t340.
    DATA(t341) = t324.
    DATA(t342) = t329.
    DATA(t343) = t338.
    t340 = zcl_lnt_st_combi_module=>seq( i_first = t341 i_second = t342 i_rest = t343 ).
    t323 = t340.
    CLEAR t322.
    IF t323 IS BOUND.
      DATA t344 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t344.
      DATA t345 TYPE REF TO object.
      CLEAR t345.
      CLEAR t344.
      t345 = t323.
      TRY.
          t322 ?= t345.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t322 IS NOT BOUND.
        TRY.
            t344 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t344 IS BOUND.
          t322 = t344->source( ).
        ENDIF.
        IF t322 IS NOT BOUND.
          CREATE OBJECT t322.
          t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t322->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    t321 = t322.
    DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t347.
    CREATE OBJECT t347.
    t346 = t347.
    DATA(t348) = t346.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = t112.
    CLEAR t349.
    IF t350 IS BOUND.
      DATA t351 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t351.
      DATA t352 TYPE REF TO object.
      CLEAR t352.
      CLEAR t351.
      t352 = t350.
      TRY.
          t349 ?= t352.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t351 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t351 IS BOUND.
          t349 = t351->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    t348->load( ).
    APPEND t349 TO t348->items.
    t348->save( ).
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t353.
    DATA(t354) = t287.
    DATA(t355) = t321.
    DATA(t356) = t346.
    t353 = zcl_lnt_st_combi_module=>alt_prio( i_first = t354 i_second = t355 i_rest = t356 ).
    t286 = t353.
    CLEAR t285.
    IF t286 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t357.
      DATA t358 TYPE REF TO object.
      CLEAR t358.
      CLEAR t357.
      t358 = t286.
      TRY.
          t285 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t357 ?= t286.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t285 = t357->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t286.
        ENDIF.
      ENDIF.
    ENDIF.
    t284 = zcl_lnt_st_combi_module=>opt( i_first = t285 ).
    CLEAR t283.
    IF t284 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t359.
      DATA t360 TYPE REF TO object.
      CLEAR t360.
      CLEAR t359.
      t360 = t284.
      TRY.
          t283 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t359 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t283 = t359->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t282->load( ).
    APPEND t283 TO t282->items.
    t282->save( ).
    DATA(t361) = t258.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA(t368) = |START|.
    CLEAR t367.
    CREATE OBJECT t367.
    t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t367->sval = t368.
    t366 = t367.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA(t371) = |WHERE|.
    CLEAR t370.
    CREATE OBJECT t370.
    t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t370->sval = t371.
    t369 = t370.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t372.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t373.
    CREATE OBJECT t373.
    t372 = t373.
    DATA(t374) = t372.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA(t376) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    CLEAR t375.
    IF t376 IS BOUND.
      CREATE OBJECT t375.
      t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t375->cval = t376.
    ENDIF.
    t374->load( ).
    APPEND t375 TO t374->items.
    t374->save( ).
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t377.
    DATA(t378) = t366.
    DATA(t379) = t369.
    DATA(t380) = t372.
    t377 = zcl_lnt_st_combi_module=>seq( i_first = t378 i_second = t379 i_rest = t380 ).
    t365 = t377.
    CLEAR t364.
    IF t365 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t381.
      DATA t382 TYPE REF TO object.
      CLEAR t382.
      CLEAR t381.
      t382 = t365.
      TRY.
          t364 ?= t382.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t381 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t364 = t381->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    t363 = zcl_lnt_st_combi_module=>opt( i_first = t364 ).
    CLEAR t362.
    IF t363 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t383.
      DATA t384 TYPE REF TO object.
      CLEAR t384.
      CLEAR t383.
      t384 = t363.
      TRY.
          t362 ?= t384.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t362 IS NOT BOUND.
        TRY.
            t383 ?= t363.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t362 = t383->source( ).
        ENDIF.
        IF t362 IS NOT BOUND.
          CREATE OBJECT t362.
          t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t362->oval = t363.
        ENDIF.
      ENDIF.
    ENDIF.
    t361->load( ).
    APPEND t362 TO t361->items.
    t361->save( ).
    DATA(t385) = t258.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA(t389) = t67.
    CLEAR t388.
    IF t389 IS BOUND.
      DATA t390 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t390.
      DATA t391 TYPE REF TO object.
      CLEAR t391.
      CLEAR t390.
      t391 = t389.
      TRY.
          t388 ?= t391.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t388 IS NOT BOUND.
        TRY.
            t390 ?= t389.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t390 IS BOUND.
          t388 = t390->source( ).
        ENDIF.
        IF t388 IS NOT BOUND.
          CREATE OBJECT t388.
          t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t388->oval = t389.
        ENDIF.
      ENDIF.
    ENDIF.
    t387 = zcl_lnt_st_combi_module=>opt( i_first = t388 ).
    CLEAR t386.
    IF t387 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      CLEAR t392.
      t393 = t387.
      TRY.
          t386 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t392 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t386 = t392->source( ).
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
    DATA(t394) = t258.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t400.
    DATA(t401) = |DEPTH|.
    CLEAR t400.
    CREATE OBJECT t400.
    t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t400->sval = t401.
    t399 = t400.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA(t404) = t216.
    CLEAR t403.
    IF t404 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t405.
      DATA t406 TYPE REF TO object.
      CLEAR t406.
      CLEAR t405.
      t406 = t404.
      TRY.
          t403 ?= t406.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t403 IS NOT BOUND.
        TRY.
            t405 ?= t404.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t403 = t405->source( ).
        ENDIF.
        IF t403 IS NOT BOUND.
          CREATE OBJECT t403.
          t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t403->oval = t404.
        ENDIF.
      ENDIF.
    ENDIF.
    t402 = t403.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t408.
    CREATE OBJECT t408.
    t407 = t408.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t409.
    DATA(t410) = t399.
    DATA(t411) = t402.
    DATA(t412) = t407.
    t409 = zcl_lnt_st_combi_module=>seq( i_first = t410 i_second = t411 i_rest = t412 ).
    t398 = t409.
    CLEAR t397.
    IF t398 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t413.
      DATA t414 TYPE REF TO object.
      CLEAR t414.
      CLEAR t413.
      t414 = t398.
      TRY.
          t397 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t397 IS NOT BOUND.
        TRY.
            t413 ?= t398.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t397 = t413->source( ).
        ENDIF.
        IF t397 IS NOT BOUND.
          CREATE OBJECT t397.
          t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t397->oval = t398.
        ENDIF.
      ENDIF.
    ENDIF.
    t396 = zcl_lnt_st_combi_module=>opt( i_first = t397 ).
    CLEAR t395.
    IF t396 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t415.
      DATA t416 TYPE REF TO object.
      CLEAR t416.
      CLEAR t415.
      t416 = t396.
      TRY.
          t395 ?= t416.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t395 IS NOT BOUND.
        TRY.
            t415 ?= t396.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t395 = t415->source( ).
        ENDIF.
        IF t395 IS NOT BOUND.
          CREATE OBJECT t395.
          t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t395->oval = t396.
        ENDIF.
      ENDIF.
    ENDIF.
    t394->load( ).
    APPEND t395 TO t394->items.
    t394->save( ).
    DATA(t417) = t258.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t419.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t421.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA(t424) = |NODETYPE|.
    CLEAR t423.
    CREATE OBJECT t423.
    t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t423->sval = t424.
    t422 = t423.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA(t427) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t426.
    IF t427 IS BOUND.
      CREATE OBJECT t426.
      t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t426->cval = t427.
    ENDIF.
    t425 = t426.
    DATA t428 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t428.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t429.
    CREATE OBJECT t429.
    t428 = t429.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA(t431) = t422.
    DATA(t432) = t425.
    DATA(t433) = t428.
    t430 = zcl_lnt_st_combi_module=>seq( i_first = t431 i_second = t432 i_rest = t433 ).
    t421 = t430.
    CLEAR t420.
    IF t421 IS BOUND.
      DATA t434 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t434.
      DATA t435 TYPE REF TO object.
      CLEAR t435.
      CLEAR t434.
      t435 = t421.
      TRY.
          t420 ?= t435.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t420 IS NOT BOUND.
        TRY.
            t434 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t434 IS BOUND.
          t420 = t434->source( ).
        ENDIF.
        IF t420 IS NOT BOUND.
          CREATE OBJECT t420.
          t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t420->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    t419 = zcl_lnt_st_combi_module=>opt( i_first = t420 ).
    CLEAR t418.
    IF t419 IS BOUND.
      DATA t436 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t436.
      DATA t437 TYPE REF TO object.
      CLEAR t437.
      CLEAR t436.
      t437 = t419.
      TRY.
          t418 ?= t437.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t436 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t436 IS BOUND.
          t418 = t436->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    t417->load( ).
    APPEND t418 TO t417->items.
    t417->save( ).
    DATA(t438) = t258.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t439.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t440.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t441.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA(t445) = |LOAD|.
    CLEAR t444.
    CREATE OBJECT t444.
    t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t444->sval = t445.
    t443 = t444.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = t233.
    CLEAR t447.
    IF t448 IS BOUND.
      DATA t449 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t449.
      DATA t450 TYPE REF TO object.
      CLEAR t450.
      CLEAR t449.
      t450 = t448.
      TRY.
          t447 ?= t450.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t447 IS NOT BOUND.
        TRY.
            t449 ?= t448.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t449 IS BOUND.
          t447 = t449->source( ).
        ENDIF.
        IF t447 IS NOT BOUND.
          CREATE OBJECT t447.
          t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t447->oval = t448.
        ENDIF.
      ENDIF.
    ENDIF.
    t446 = t447.
    DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t451.
    DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t452.
    CREATE OBJECT t452.
    t451 = t452.
    DATA t453 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t453.
    DATA(t454) = t443.
    DATA(t455) = t446.
    DATA(t456) = t451.
    t453 = zcl_lnt_st_combi_module=>seq( i_first = t454 i_second = t455 i_rest = t456 ).
    t442 = t453.
    CLEAR t441.
    IF t442 IS BOUND.
      DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t457.
      DATA t458 TYPE REF TO object.
      CLEAR t458.
      CLEAR t457.
      t458 = t442.
      TRY.
          t441 ?= t458.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t441 IS NOT BOUND.
        TRY.
            t457 ?= t442.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t457 IS BOUND.
          t441 = t457->source( ).
        ENDIF.
        IF t441 IS NOT BOUND.
          CREATE OBJECT t441.
          t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t441->oval = t442.
        ENDIF.
      ENDIF.
    ENDIF.
    t440 = zcl_lnt_st_combi_module=>opt( i_first = t441 ).
    CLEAR t439.
    IF t440 IS BOUND.
      DATA t459 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t459.
      DATA t460 TYPE REF TO object.
      CLEAR t460.
      CLEAR t459.
      t460 = t440.
      TRY.
          t439 ?= t460.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t439 IS NOT BOUND.
        TRY.
            t459 ?= t440.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t459 IS BOUND.
          t439 = t459->source( ).
        ENDIF.
        IF t439 IS NOT BOUND.
          CREATE OBJECT t439.
          t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t439->oval = t440.
        ENDIF.
      ENDIF.
    ENDIF.
    t438->load( ).
    APPEND t439 TO t438->items.
    t438->save( ).
    DATA(t461) = t258.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    DATA t463 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t463.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA t465 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t465.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t466.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t467.
    DATA(t468) = |MULTIPLE|.
    CLEAR t467.
    CREATE OBJECT t467.
    t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t467->sval = t468.
    t466 = t467.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA(t471) = |PARENTS|.
    CLEAR t470.
    CREATE OBJECT t470.
    t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t470->sval = t471.
    t469 = t470.
    DATA t472 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t473.
    CREATE OBJECT t473.
    t472 = t473.
    DATA(t474) = t472.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    DATA t476 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA(t479) = |NOT ALLOWED|.
    CLEAR t478.
    CREATE OBJECT t478.
    t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t478->sval = t479.
    t477 = t478.
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t480.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t481.
    DATA(t482) = |ALLOWED|.
    CLEAR t481.
    CREATE OBJECT t481.
    t481->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t481->sval = t482.
    t480 = t481.
    DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t483.
    DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t484.
    CREATE OBJECT t484.
    t483 = t484.
    DATA(t485) = t483.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t486.
    DATA t487 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t487.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t489.
    DATA(t490) = |LEAVES|.
    CLEAR t489.
    CREATE OBJECT t489.
    t489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t489->sval = t490.
    t488 = t489.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t491.
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t492.
    DATA t493 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t494.
    DATA(t495) = |ONLY|.
    CLEAR t494.
    CREATE OBJECT t494.
    t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t494->sval = t495.
    t493 = zcl_lnt_st_combi_module=>opt_prio( i_first = t494 ).
    CLEAR t492.
    IF t493 IS BOUND.
      DATA t496 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t496.
      DATA t497 TYPE REF TO object.
      CLEAR t497.
      CLEAR t496.
      t497 = t493.
      TRY.
          t492 ?= t497.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t492 IS NOT BOUND.
        TRY.
            t496 ?= t493.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t496 IS BOUND.
          t492 = t496->source( ).
        ENDIF.
        IF t492 IS NOT BOUND.
          CREATE OBJECT t492.
          t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t492->oval = t493.
        ENDIF.
      ENDIF.
    ENDIF.
    t491 = t492.
    DATA t498 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t498.
    DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t499.
    CREATE OBJECT t499.
    t498 = t499.
    DATA t500 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t500.
    DATA(t501) = t488.
    DATA(t502) = t491.
    DATA(t503) = t498.
    t500 = zcl_lnt_st_combi_module=>seq( i_first = t501 i_second = t502 i_rest = t503 ).
    t487 = t500.
    CLEAR t486.
    IF t487 IS BOUND.
      DATA t504 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t504.
      DATA t505 TYPE REF TO object.
      CLEAR t505.
      CLEAR t504.
      t505 = t487.
      TRY.
          t486 ?= t505.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t486 IS NOT BOUND.
        TRY.
            t504 ?= t487.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t504 IS BOUND.
          t486 = t504->source( ).
        ENDIF.
        IF t486 IS NOT BOUND.
          CREATE OBJECT t486.
          t486->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t486->oval = t487.
        ENDIF.
      ENDIF.
    ENDIF.
    t485->load( ).
    APPEND t486 TO t485->items.
    t485->save( ).
    DATA t506 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t506.
    DATA(t507) = t477.
    DATA(t508) = t480.
    DATA(t509) = t483.
    t506 = zcl_lnt_st_combi_module=>alt_prio( i_first = t507 i_second = t508 i_rest = t509 ).
    t476 = t506.
    CLEAR t475.
    IF t476 IS BOUND.
      DATA t510 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t510.
      DATA t511 TYPE REF TO object.
      CLEAR t511.
      CLEAR t510.
      t511 = t476.
      TRY.
          t475 ?= t511.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t475 IS NOT BOUND.
        TRY.
            t510 ?= t476.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t510 IS BOUND.
          t475 = t510->source( ).
        ENDIF.
        IF t475 IS NOT BOUND.
          CREATE OBJECT t475.
          t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t475->oval = t476.
        ENDIF.
      ENDIF.
    ENDIF.
    t474->load( ).
    APPEND t475 TO t474->items.
    t474->save( ).
    DATA t512 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t512.
    DATA(t513) = t466.
    DATA(t514) = t469.
    DATA(t515) = t472.
    t512 = zcl_lnt_st_combi_module=>seq( i_first = t513 i_second = t514 i_rest = t515 ).
    t465 = t512.
    CLEAR t464.
    IF t465 IS BOUND.
      DATA t516 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t516.
      DATA t517 TYPE REF TO object.
      CLEAR t517.
      CLEAR t516.
      t517 = t465.
      TRY.
          t464 ?= t517.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t464 IS NOT BOUND.
        TRY.
            t516 ?= t465.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t516 IS BOUND.
          t464 = t516->source( ).
        ENDIF.
        IF t464 IS NOT BOUND.
          CREATE OBJECT t464.
          t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t464->oval = t465.
        ENDIF.
      ENDIF.
    ENDIF.
    t463 = zcl_lnt_st_combi_module=>opt( i_first = t464 ).
    CLEAR t462.
    IF t463 IS BOUND.
      DATA t518 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t518.
      DATA t519 TYPE REF TO object.
      CLEAR t519.
      CLEAR t518.
      t519 = t463.
      TRY.
          t462 ?= t519.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t462 IS NOT BOUND.
        TRY.
            t518 ?= t463.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t518 IS BOUND.
          t462 = t518->source( ).
        ENDIF.
        IF t462 IS NOT BOUND.
          CREATE OBJECT t462.
          t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t462->oval = t463.
        ENDIF.
      ENDIF.
    ENDIF.
    t461->load( ).
    APPEND t462 TO t461->items.
    t461->save( ).
    DATA(t520) = t258.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t521.
    DATA t522 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t522.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t523.
    DATA t524 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t524.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA(t527) = |ORPHANS|.
    CLEAR t526.
    CREATE OBJECT t526.
    t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t526->sval = t527.
    t525 = t526.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t529.
    DATA t530 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t530.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA(t533) = |IGNORE|.
    CLEAR t532.
    CREATE OBJECT t532.
    t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t532->sval = t533.
    t531 = t532.
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t535.
    DATA(t536) = |ROOT|.
    CLEAR t535.
    CREATE OBJECT t535.
    t535->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t535->sval = t536.
    t534 = t535.
    DATA t537 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t537.
    DATA t538 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t538.
    CREATE OBJECT t538.
    t537 = t538.
    DATA(t539) = t537.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA(t541) = |ERROR|.
    CLEAR t540.
    CREATE OBJECT t540.
    t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t540->sval = t541.
    t539->load( ).
    APPEND t540 TO t539->items.
    t539->save( ).
    DATA t542 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t542.
    DATA(t543) = t531.
    DATA(t544) = t534.
    DATA(t545) = t537.
    t542 = zcl_lnt_st_combi_module=>alt_prio( i_first = t543 i_second = t544 i_rest = t545 ).
    t530 = t542.
    CLEAR t529.
    IF t530 IS BOUND.
      DATA t546 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t546.
      DATA t547 TYPE REF TO object.
      CLEAR t547.
      CLEAR t546.
      t547 = t530.
      TRY.
          t529 ?= t547.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t529 IS NOT BOUND.
        TRY.
            t546 ?= t530.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t546 IS BOUND.
          t529 = t546->source( ).
        ENDIF.
        IF t529 IS NOT BOUND.
          CREATE OBJECT t529.
          t529->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t529->oval = t530.
        ENDIF.
      ENDIF.
    ENDIF.
    t528 = t529.
    DATA t548 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t549.
    CREATE OBJECT t549.
    t548 = t549.
    DATA t550 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t550.
    DATA(t551) = t525.
    DATA(t552) = t528.
    DATA(t553) = t548.
    t550 = zcl_lnt_st_combi_module=>seq( i_first = t551 i_second = t552 i_rest = t553 ).
    t524 = t550.
    CLEAR t523.
    IF t524 IS BOUND.
      DATA t554 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t554.
      DATA t555 TYPE REF TO object.
      CLEAR t555.
      CLEAR t554.
      t555 = t524.
      TRY.
          t523 ?= t555.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t523 IS NOT BOUND.
        TRY.
            t554 ?= t524.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t554 IS BOUND.
          t523 = t554->source( ).
        ENDIF.
        IF t523 IS NOT BOUND.
          CREATE OBJECT t523.
          t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t523->oval = t524.
        ENDIF.
      ENDIF.
    ENDIF.
    t522 = zcl_lnt_st_combi_module=>opt( i_first = t523 ).
    CLEAR t521.
    IF t522 IS BOUND.
      DATA t556 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t556.
      DATA t557 TYPE REF TO object.
      CLEAR t557.
      CLEAR t556.
      t557 = t522.
      TRY.
          t521 ?= t557.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t521 IS NOT BOUND.
        TRY.
            t556 ?= t522.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t556 IS BOUND.
          t521 = t556->source( ).
        ENDIF.
        IF t521 IS NOT BOUND.
          CREATE OBJECT t521.
          t521->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t521->oval = t522.
        ENDIF.
      ENDIF.
    ENDIF.
    t520->load( ).
    APPEND t521 TO t520->items.
    t520->save( ).
    DATA(t558) = t258.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    DATA t560 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t560.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t562.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t563.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t564.
    DATA(t565) = |CYCLES|.
    CLEAR t564.
    CREATE OBJECT t564.
    t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t564->sval = t565.
    t563 = t564.
    DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t566.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t567.
    DATA t568 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t568.
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t569.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t570.
    DATA(t571) = |BREAKUP|.
    CLEAR t570.
    CREATE OBJECT t570.
    t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t570->sval = t571.
    t569 = t570.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t572.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    DATA(t574) = |ERROR|.
    CLEAR t573.
    CREATE OBJECT t573.
    t573->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t573->sval = t574.
    t572 = t573.
    DATA t575 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t575.
    DATA t576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t576.
    CREATE OBJECT t576.
    t575 = t576.
    DATA t577 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t577.
    DATA(t578) = t569.
    DATA(t579) = t572.
    DATA(t580) = t575.
    t577 = zcl_lnt_st_combi_module=>alt_prio( i_first = t578 i_second = t579 i_rest = t580 ).
    t568 = t577.
    CLEAR t567.
    IF t568 IS BOUND.
      DATA t581 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t581.
      DATA t582 TYPE REF TO object.
      CLEAR t582.
      CLEAR t581.
      t582 = t568.
      TRY.
          t567 ?= t582.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t567 IS NOT BOUND.
        TRY.
            t581 ?= t568.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t581 IS BOUND.
          t567 = t581->source( ).
        ENDIF.
        IF t567 IS NOT BOUND.
          CREATE OBJECT t567.
          t567->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t567->oval = t568.
        ENDIF.
      ENDIF.
    ENDIF.
    t566 = t567.
    DATA t583 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t583.
    DATA t584 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t584.
    CREATE OBJECT t584.
    t583 = t584.
    DATA t585 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t585.
    DATA(t586) = t563.
    DATA(t587) = t566.
    DATA(t588) = t583.
    t585 = zcl_lnt_st_combi_module=>seq( i_first = t586 i_second = t587 i_rest = t588 ).
    t562 = t585.
    CLEAR t561.
    IF t562 IS BOUND.
      DATA t589 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t589.
      DATA t590 TYPE REF TO object.
      CLEAR t590.
      CLEAR t589.
      t590 = t562.
      TRY.
          t561 ?= t590.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t561 IS NOT BOUND.
        TRY.
            t589 ?= t562.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t589 IS BOUND.
          t561 = t589->source( ).
        ENDIF.
        IF t561 IS NOT BOUND.
          CREATE OBJECT t561.
          t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t561->oval = t562.
        ENDIF.
      ENDIF.
    ENDIF.
    t560 = zcl_lnt_st_combi_module=>opt( i_first = t561 ).
    CLEAR t559.
    IF t560 IS BOUND.
      DATA t591 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t591.
      DATA t592 TYPE REF TO object.
      CLEAR t592.
      CLEAR t591.
      t592 = t560.
      TRY.
          t559 ?= t592.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t559 IS NOT BOUND.
        TRY.
            t591 ?= t560.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t591 IS BOUND.
          t559 = t591->source( ).
        ENDIF.
        IF t559 IS NOT BOUND.
          CREATE OBJECT t559.
          t559->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t559->oval = t560.
        ENDIF.
      ENDIF.
    ENDIF.
    t558->load( ).
    APPEND t559 TO t558->items.
    t558->save( ).
    DATA(t593) = t258.
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t594.
    DATA t595 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t595.
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t596.
    DATA t597 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t597.
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA(t600) = |GENERATE|.
    CLEAR t599.
    CREATE OBJECT t599.
    t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t599->sval = t600.
    t598 = t599.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t601.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t602.
    DATA(t603) = |SPANTREE|.
    CLEAR t602.
    CREATE OBJECT t602.
    t602->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t602->sval = t603.
    t601 = t602.
    DATA t604 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t604.
    DATA t605 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t605.
    CREATE OBJECT t605.
    t604 = t605.
    DATA t606 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t606.
    DATA(t607) = t598.
    DATA(t608) = t601.
    DATA(t609) = t604.
    t606 = zcl_lnt_st_combi_module=>seq( i_first = t607 i_second = t608 i_rest = t609 ).
    t597 = t606.
    CLEAR t596.
    IF t597 IS BOUND.
      DATA t610 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t610.
      DATA t611 TYPE REF TO object.
      CLEAR t611.
      CLEAR t610.
      t611 = t597.
      TRY.
          t596 ?= t611.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t596 IS NOT BOUND.
        TRY.
            t610 ?= t597.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t610 IS BOUND.
          t596 = t610->source( ).
        ENDIF.
        IF t596 IS NOT BOUND.
          CREATE OBJECT t596.
          t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t596->oval = t597.
        ENDIF.
      ENDIF.
    ENDIF.
    t595 = zcl_lnt_st_combi_module=>opt( i_first = t596 ).
    CLEAR t594.
    IF t595 IS BOUND.
      DATA t612 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t612.
      DATA t613 TYPE REF TO object.
      CLEAR t613.
      CLEAR t612.
      t613 = t595.
      TRY.
          t594 ?= t613.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t594 IS NOT BOUND.
        TRY.
            t612 ?= t595.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t612 IS BOUND.
          t594 = t612->source( ).
        ENDIF.
        IF t594 IS NOT BOUND.
          CREATE OBJECT t594.
          t594->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t594->oval = t595.
        ENDIF.
      ENDIF.
    ENDIF.
    t593->load( ).
    APPEND t594 TO t593->items.
    t593->save( ).
    DATA(t614) = t258.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t615.
    DATA t616 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t616.
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t617.
    DATA t618 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t618.
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t619.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t620.
    DATA(t621) = |CACHE|.
    CLEAR t620.
    CREATE OBJECT t620.
    t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t620->sval = t621.
    t619 = t620.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t622.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t623.
    DATA t624 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t624.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t625.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t626.
    DATA(t627) = |ON|.
    CLEAR t626.
    CREATE OBJECT t626.
    t626->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t626->sval = t627.
    t625 = t626.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    DATA(t630) = |OFF|.
    CLEAR t629.
    CREATE OBJECT t629.
    t629->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t629->sval = t630.
    t628 = t629.
    DATA t631 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t631.
    DATA t632 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t632.
    CREATE OBJECT t632.
    t631 = t632.
    DATA(t633) = t631.
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t634.
    DATA(t635) = |FORCE|.
    CLEAR t634.
    CREATE OBJECT t634.
    t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t634->sval = t635.
    t633->load( ).
    APPEND t634 TO t633->items.
    t633->save( ).
    DATA t636 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t636.
    DATA(t637) = t625.
    DATA(t638) = t628.
    DATA(t639) = t631.
    t636 = zcl_lnt_st_combi_module=>alt_prio( i_first = t637 i_second = t638 i_rest = t639 ).
    t624 = t636.
    CLEAR t623.
    IF t624 IS BOUND.
      DATA t640 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t640.
      DATA t641 TYPE REF TO object.
      CLEAR t641.
      CLEAR t640.
      t641 = t624.
      TRY.
          t623 ?= t641.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t623 IS NOT BOUND.
        TRY.
            t640 ?= t624.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t640 IS BOUND.
          t623 = t640->source( ).
        ENDIF.
        IF t623 IS NOT BOUND.
          CREATE OBJECT t623.
          t623->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t623->oval = t624.
        ENDIF.
      ENDIF.
    ENDIF.
    t622 = t623.
    DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t642.
    DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t643.
    CREATE OBJECT t643.
    t642 = t643.
    DATA t644 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t644.
    DATA(t645) = t619.
    DATA(t646) = t622.
    DATA(t647) = t642.
    t644 = zcl_lnt_st_combi_module=>seq( i_first = t645 i_second = t646 i_rest = t647 ).
    t618 = t644.
    CLEAR t617.
    IF t618 IS BOUND.
      DATA t648 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t648.
      DATA t649 TYPE REF TO object.
      CLEAR t649.
      CLEAR t648.
      t649 = t618.
      TRY.
          t617 ?= t649.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t617 IS NOT BOUND.
        TRY.
            t648 ?= t618.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t648 IS BOUND.
          t617 = t648->source( ).
        ENDIF.
        IF t617 IS NOT BOUND.
          CREATE OBJECT t617.
          t617->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t617->oval = t618.
        ENDIF.
      ENDIF.
    ENDIF.
    t616 = zcl_lnt_st_combi_module=>opt( i_first = t617 ).
    CLEAR t615.
    IF t616 IS BOUND.
      DATA t650 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t650.
      DATA t651 TYPE REF TO object.
      CLEAR t651.
      CLEAR t650.
      t651 = t616.
      TRY.
          t615 ?= t651.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t615 IS NOT BOUND.
        TRY.
            t650 ?= t616.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t650 IS BOUND.
          t615 = t650->source( ).
        ENDIF.
        IF t615 IS NOT BOUND.
          CREATE OBJECT t615.
          t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t615->oval = t616.
        ENDIF.
      ENDIF.
    ENDIF.
    t614->load( ).
    APPEND t615 TO t614->items.
    t614->save( ).
    DATA t652 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t652.
    DATA(t653) = t252.
    DATA(t654) = t255.
    DATA(t655) = t258.
    t652 = zcl_lnt_st_combi_module=>seq( i_first = t653 i_second = t654 i_rest = t655 ).
    t251 = t652.
    t250 = t251.
    DATA t656 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t656.
    DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t657.
    DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t658.
    DATA t659 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t659.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t660.
    DATA(t661) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    CLEAR t660.
    IF t661 IS BOUND.
      CREATE OBJECT t660.
      t660->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t660->cval = t661.
    ENDIF.
    t659 = zcl_lnt_st_combi_module=>star( i_first = t660 ).
    CLEAR t658.
    IF t659 IS BOUND.
      DATA t662 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t662.
      DATA t663 TYPE REF TO object.
      CLEAR t663.
      CLEAR t662.
      t663 = t659.
      TRY.
          t658 ?= t663.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t658 IS NOT BOUND.
        TRY.
            t662 ?= t659.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t662 IS BOUND.
          t658 = t662->source( ).
        ENDIF.
        IF t658 IS NOT BOUND.
          CREATE OBJECT t658.
          t658->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t658->oval = t659.
        ENDIF.
      ENDIF.
    ENDIF.
    t657 = t658.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t664.
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t665.
    DATA t666 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t666.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    DATA(t668) = |DEFINE|.
    CLEAR t667.
    CREATE OBJECT t667.
    t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t667->sval = t668.
    t666 = zcl_lnt_st_combi_module=>opt( i_first = t667 ).
    CLEAR t665.
    IF t666 IS BOUND.
      DATA t669 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t669.
      DATA t670 TYPE REF TO object.
      CLEAR t670.
      CLEAR t669.
      t670 = t666.
      TRY.
          t665 ?= t670.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t665 IS NOT BOUND.
        TRY.
            t669 ?= t666.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t669 IS BOUND.
          t665 = t669->source( ).
        ENDIF.
        IF t665 IS NOT BOUND.
          CREATE OBJECT t665.
          t665->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t665->oval = t666.
        ENDIF.
      ENDIF.
    ENDIF.
    t664 = t665.
    DATA t671 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t671.
    DATA t672 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t672.
    CREATE OBJECT t672.
    t671 = t672.
    DATA(t673) = t671.
    DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t674.
    DATA(t675) = |HIERARCHY|.
    CLEAR t674.
    CREATE OBJECT t674.
    t674->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t674->sval = t675.
    t673->load( ).
    APPEND t674 TO t673->items.
    t673->save( ).
    DATA(t676) = t671.
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t677.
    DATA(t678) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t677.
    IF t678 IS BOUND.
      CREATE OBJECT t677.
      t677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t677->cval = t678.
    ENDIF.
    t676->load( ).
    APPEND t677 TO t676->items.
    t676->save( ).
    DATA(t679) = t671.
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t680.
    DATA t681 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t681.
    DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t682.
    DATA(t683) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    CLEAR t682.
    IF t683 IS BOUND.
      CREATE OBJECT t682.
      t682->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t682->cval = t683.
    ENDIF.
    t681 = zcl_lnt_st_combi_module=>opt( i_first = t682 ).
    CLEAR t680.
    IF t681 IS BOUND.
      DATA t684 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t684.
      DATA t685 TYPE REF TO object.
      CLEAR t685.
      CLEAR t684.
      t685 = t681.
      TRY.
          t680 ?= t685.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t680 IS NOT BOUND.
        TRY.
            t684 ?= t681.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t684 IS BOUND.
          t680 = t684->source( ).
        ENDIF.
        IF t680 IS NOT BOUND.
          CREATE OBJECT t680.
          t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t680->oval = t681.
        ENDIF.
      ENDIF.
    ENDIF.
    t679->load( ).
    APPEND t680 TO t679->items.
    t679->save( ).
    DATA(t686) = t671.
    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t687.
    DATA(t688) = |AS|.
    CLEAR t687.
    CREATE OBJECT t687.
    t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t687->sval = t688.
    t686->load( ).
    APPEND t687 TO t686->items.
    t686->save( ).
    DATA(t689) = t671.
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t690.
    DATA(t691) = |PARENT|.
    CLEAR t690.
    CREATE OBJECT t690.
    t690->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t690->sval = t691.
    t689->load( ).
    APPEND t690 TO t689->items.
    t689->save( ).
    DATA(t692) = t671.
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t693.
    DATA(t694) = |CHILD|.
    CLEAR t693.
    CREATE OBJECT t693.
    t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t693->sval = t694.
    t692->load( ).
    APPEND t693 TO t692->items.
    t692->save( ).
    DATA(t695) = t671.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t696.
    DATA(t697) = |HIERARCHY|.
    CLEAR t696.
    CREATE OBJECT t696.
    t696->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t696->sval = t697.
    t695->load( ).
    APPEND t696 TO t695->items.
    t695->save( ).
    DATA(t698) = t671.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t699.
    DATA(t700) = |(|.
    CLEAR t699.
    CREATE OBJECT t699.
    t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t699->sval = t700.
    t698->load( ).
    APPEND t699 TO t698->items.
    t698->save( ).
    DATA(t701) = t671.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t702.
    DATA(t703) = t250.
    CLEAR t702.
    IF t703 IS BOUND.
      DATA t704 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t704.
      DATA t705 TYPE REF TO object.
      CLEAR t705.
      CLEAR t704.
      t705 = t703.
      TRY.
          t702 ?= t705.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t702 IS NOT BOUND.
        TRY.
            t704 ?= t703.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t704 IS BOUND.
          t702 = t704->source( ).
        ENDIF.
        IF t702 IS NOT BOUND.
          CREATE OBJECT t702.
          t702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t702->oval = t703.
        ENDIF.
      ENDIF.
    ENDIF.
    t701->load( ).
    APPEND t702 TO t701->items.
    t701->save( ).
    DATA(t706) = t671.
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t707.
    DATA(t708) = |)|.
    CLEAR t707.
    CREATE OBJECT t707.
    t707->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t707->sval = t708.
    t706->load( ).
    APPEND t707 TO t706->items.
    t706->save( ).
    DATA(t709) = t671.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    DATA(t711) = |\{|.
    CLEAR t710.
    CREATE OBJECT t710.
    t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t710->sval = t711.
    t709->load( ).
    APPEND t710 TO t709->items.
    t709->save( ).
    DATA(t712) = t671.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    DATA t714 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t714.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t715.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t716.
    DATA(t717) = t1.
    CLEAR t716.
    IF t717 IS BOUND.
      DATA t718 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t718.
      DATA t719 TYPE REF TO object.
      CLEAR t719.
      CLEAR t718.
      t719 = t717.
      TRY.
          t716 ?= t719.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t716 IS NOT BOUND.
        TRY.
            t718 ?= t717.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t718 IS BOUND.
          t716 = t718->source( ).
        ENDIF.
        IF t716 IS NOT BOUND.
          CREATE OBJECT t716.
          t716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t716->oval = t717.
        ENDIF.
      ENDIF.
    ENDIF.
    t715 = t716.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t720.
    DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t721.
    DATA t722 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t722.
    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t723.
    DATA t724 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t724.
    DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t725.
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t726.
    DATA(t727) = |,|.
    CLEAR t726.
    CREATE OBJECT t726.
    t726->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t726->sval = t727.
    t725 = t726.
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t728.
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t729.
    DATA(t730) = t1.
    CLEAR t729.
    IF t730 IS BOUND.
      DATA t731 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t731.
      DATA t732 TYPE REF TO object.
      CLEAR t732.
      CLEAR t731.
      t732 = t730.
      TRY.
          t729 ?= t732.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t729 IS NOT BOUND.
        TRY.
            t731 ?= t730.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t731 IS BOUND.
          t729 = t731->source( ).
        ENDIF.
        IF t729 IS NOT BOUND.
          CREATE OBJECT t729.
          t729->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t729->oval = t730.
        ENDIF.
      ENDIF.
    ENDIF.
    t728 = t729.
    DATA t733 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t733.
    DATA t734 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t734.
    CREATE OBJECT t734.
    t733 = t734.
    DATA t735 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t735.
    DATA(t736) = t725.
    DATA(t737) = t728.
    DATA(t738) = t733.
    t735 = zcl_lnt_st_combi_module=>seq( i_first = t736 i_second = t737 i_rest = t738 ).
    t724 = t735.
    CLEAR t723.
    IF t724 IS BOUND.
      DATA t739 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t739.
      DATA t740 TYPE REF TO object.
      CLEAR t740.
      CLEAR t739.
      t740 = t724.
      TRY.
          t723 ?= t740.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t723 IS NOT BOUND.
        TRY.
            t739 ?= t724.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t739 IS BOUND.
          t723 = t739->source( ).
        ENDIF.
        IF t723 IS NOT BOUND.
          CREATE OBJECT t723.
          t723->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t723->oval = t724.
        ENDIF.
      ENDIF.
    ENDIF.
    t722 = zcl_lnt_st_combi_module=>star( i_first = t723 ).
    CLEAR t721.
    IF t722 IS BOUND.
      DATA t741 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t741.
      DATA t742 TYPE REF TO object.
      CLEAR t742.
      CLEAR t741.
      t742 = t722.
      TRY.
          t721 ?= t742.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t721 IS NOT BOUND.
        TRY.
            t741 ?= t722.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t741 IS BOUND.
          t721 = t741->source( ).
        ENDIF.
        IF t721 IS NOT BOUND.
          CREATE OBJECT t721.
          t721->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t721->oval = t722.
        ENDIF.
      ENDIF.
    ENDIF.
    t720 = t721.
    DATA t743 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t743.
    DATA t744 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t744.
    CREATE OBJECT t744.
    t743 = t744.
    DATA t745 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t745.
    DATA(t746) = t715.
    DATA(t747) = t720.
    DATA(t748) = t743.
    t745 = zcl_lnt_st_combi_module=>seq( i_first = t746 i_second = t747 i_rest = t748 ).
    t714 = t745.
    CLEAR t713.
    IF t714 IS BOUND.
      DATA t749 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t749.
      DATA t750 TYPE REF TO object.
      CLEAR t750.
      CLEAR t749.
      t750 = t714.
      TRY.
          t713 ?= t750.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t713 IS NOT BOUND.
        TRY.
            t749 ?= t714.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t749 IS BOUND.
          t713 = t749->source( ).
        ENDIF.
        IF t713 IS NOT BOUND.
          CREATE OBJECT t713.
          t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t713->oval = t714.
        ENDIF.
      ENDIF.
    ENDIF.
    t712->load( ).
    APPEND t713 TO t712->items.
    t712->save( ).
    DATA(t751) = t671.
    DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t752.
    DATA(t753) = |\}|.
    CLEAR t752.
    CREATE OBJECT t752.
    t752->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t752->sval = t753.
    t751->load( ).
    APPEND t752 TO t751->items.
    t751->save( ).
    DATA(t754) = t671.
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t755.
    DATA t756 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t756.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    DATA(t758) = |;|.
    CLEAR t757.
    CREATE OBJECT t757.
    t757->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t757->sval = t758.
    t756 = zcl_lnt_st_combi_module=>opt( i_first = t757 ).
    CLEAR t755.
    IF t756 IS BOUND.
      DATA t759 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t759.
      DATA t760 TYPE REF TO object.
      CLEAR t760.
      CLEAR t759.
      t760 = t756.
      TRY.
          t755 ?= t760.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t755 IS NOT BOUND.
        TRY.
            t759 ?= t756.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t759 IS BOUND.
          t755 = t759->source( ).
        ENDIF.
        IF t755 IS NOT BOUND.
          CREATE OBJECT t755.
          t755->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t755->oval = t756.
        ENDIF.
      ENDIF.
    ENDIF.
    t754->load( ).
    APPEND t755 TO t754->items.
    t754->save( ).
    DATA t761 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t761.
    DATA(t762) = t657.
    DATA(t763) = t664.
    DATA(t764) = t671.
    t761 = zcl_lnt_st_combi_module=>seq( i_first = t762 i_second = t763 i_rest = t764 ).
    t656 = t761.
    result = t656.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1102_242781e5a7e9.
  ENDMETHOD.
ENDCLASS.
