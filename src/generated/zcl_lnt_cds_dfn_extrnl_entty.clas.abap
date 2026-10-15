* TS: src/cds/expressions/cds_define_external_entity.ts:5:1 CDSDefineExternalEntity
CLASS zcl_lnt_cds_dfn_extrnl_entty DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_dfn_extrnl_entty IMPLEMENTATION.
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
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t9.
    DATA(t10) = |^"(?:[^"]\|"")*"$|.
    DATA(t11) = ||.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = t11.
    t8 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t9 ).
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      CLEAR t12.
      t13 = t8.
      TRY.
          t7 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t12 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t7 = t12->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    t6 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA(t17) = t3.
    DATA(t18) = t6.
    DATA(t19) = t14.
    t16 = zcl_lnt_st_combi_module=>alt( i_first = t17 i_second = t18 i_rest = t19 ).
    t2 = t16.
    t1 = t2.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = |EXTERNAL|.
    CLEAR t23.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = |NAME|.
    CLEAR t26.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = t27.
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
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t37 i_rest = t38 ).
    t21 = t35.
    t20 = t21.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = |NOT NULL|.
    CLEAR t44.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = t45.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = |NULL|.
    CLEAR t47.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    CREATE OBJECT t50.
    t49 = t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA(t52) = t43.
    DATA(t53) = t46.
    DATA(t54) = t49.
    t51 = zcl_lnt_st_combi_module=>alt( i_first = t52 i_second = t53 i_rest = t54 ).
    t42 = t51.
    CLEAR t41.
    IF t42 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t55.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      CLEAR t55.
      t56 = t42.
      TRY.
          t41 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t55 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t41 = t55->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>opt_prio( i_first = t41 ).
    t39 = t40.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    CLEAR t62.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>star( i_first = t62 ).
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t64.
      DATA t65 TYPE REF TO object.
      CLEAR t65.
      CLEAR t64.
      t65 = t61.
      TRY.
          t60 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t64 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t60 = t64->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t59 = t60.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA(t71) = |KEY|.
    t70 = zcl_lnt_st_combi_module=>str( i_s = t71 ).
    CLEAR t69.
    IF t70 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      CLEAR t72.
      t73 = t70.
      TRY.
          t69 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t72 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t69 = t72->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t68 = zcl_lnt_st_combi_module=>opt_prio( i_first = t69 ).
    CLEAR t67.
    IF t68 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t74.
      DATA t75 TYPE REF TO object.
      CLEAR t75.
      CLEAR t74.
      t75 = t68.
      TRY.
          t67 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t74 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t67 = t74->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    t66 = t67.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    CREATE OBJECT t77.
    t76 = t77.
    DATA(t78) = t76.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t79.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    t78->load( ).
    APPEND t79 TO t78->items.
    t78->save( ).
    DATA(t81) = t76.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = |:|.
    CLEAR t82.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = t83.
    t81->load( ).
    APPEND t82 TO t81->items.
    t81->save( ).
    DATA(t84) = t76.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    CLEAR t85.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    t84->load( ).
    APPEND t85 TO t84->items.
    t84->save( ).
    DATA(t87) = t76.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = t39.
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
    t87->load( ).
    APPEND t88 TO t87->items.
    t87->save( ).
    DATA(t92) = t76.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = t20.
    CLEAR t95.
    IF t96 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t96.
      TRY.
          t95 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t97 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t95 = t97->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>opt_prio( i_first = t95 ).
    CLEAR t93.
    IF t94 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t99.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      CLEAR t99.
      t100 = t94.
      TRY.
          t93 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t99 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t93 = t99->source( ).
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
    DATA(t101) = t76.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = |;|.
    CLEAR t102.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101->load( ).
    APPEND t102 TO t101->items.
    t101->save( ).
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA(t105) = t59.
    DATA(t106) = t66.
    DATA(t107) = t76.
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t106 i_rest = t107 ).
    t58 = t104.
    t57 = t58.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    CLEAR t113.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    t112 = zcl_lnt_st_combi_module=>star( i_first = t113 ).
    CLEAR t111.
    IF t112 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t115.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      CLEAR t115.
      t116 = t112.
      TRY.
          t111 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t115 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t111 = t115->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t110 = t111.
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
    DATA(t124) = |:|.
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
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    CLEAR t129.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    CLEAR t132.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t135.
    CREATE OBJECT t135.
    t134 = t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA(t137) = t128.
    DATA(t138) = t131.
    DATA(t139) = t134.
    t136 = zcl_lnt_st_combi_module=>alt( i_first = t137 i_second = t138 i_rest = t139 ).
    t127 = t136.
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t140.
      DATA t141 TYPE REF TO object.
      CLEAR t141.
      CLEAR t140.
      t141 = t127.
      TRY.
          t126 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t140 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t126 = t140->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125->load( ).
    APPEND t126 TO t125->items.
    t125->save( ).
    DATA(t142) = t120.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = |;|.
    CLEAR t143.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142->load( ).
    APPEND t143 TO t142->items.
    t142->save( ).
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA(t146) = t110.
    DATA(t147) = t117.
    DATA(t148) = t120.
    t145 = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t147 i_rest = t148 ).
    t109 = t145.
    t108 = t109.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA(t155) = t57.
    CLEAR t154.
    IF t155 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t156.
      DATA t157 TYPE REF TO object.
      CLEAR t157.
      CLEAR t156.
      t157 = t155.
      TRY.
          t154 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t156 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t154 = t156->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t153 = t154.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = t108.
    CLEAR t159.
    IF t160 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t161.
      DATA t162 TYPE REF TO object.
      CLEAR t162.
      CLEAR t161.
      t162 = t160.
      TRY.
          t159 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t161 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t159 = t161->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    t158 = t159.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t164.
    CREATE OBJECT t164.
    t163 = t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA(t166) = t153.
    DATA(t167) = t158.
    DATA(t168) = t163.
    t165 = zcl_lnt_st_combi_module=>alt( i_first = t166 i_second = t167 i_rest = t168 ).
    t152 = t165.
    CLEAR t151.
    IF t152 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t169.
      DATA t170 TYPE REF TO object.
      CLEAR t170.
      CLEAR t169.
      t170 = t152.
      TRY.
          t151 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t169 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t151 = t169->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    t150 = zcl_lnt_st_combi_module=>plus( i_first = t151 ).
    t149 = t150.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = |WRITABLE|.
    CLEAR t176.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    t175 = zcl_lnt_st_combi_module=>opt( i_first = t176 ).
    CLEAR t174.
    IF t175 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t178.
      DATA t179 TYPE REF TO object.
      CLEAR t179.
      CLEAR t178.
      t179 = t175.
      TRY.
          t174 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t178 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t174 = t178->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = t174.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = |EXTERNAL|.
    CLEAR t181.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t184.
    CREATE OBJECT t184.
    t183 = t184.
    DATA(t185) = t183.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = |ENTITY|.
    CLEAR t186.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185->load( ).
    APPEND t186 TO t185->items.
    t185->save( ).
    DATA(t188) = t183.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t189.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    t188->load( ).
    APPEND t189 TO t188->items.
    t188->save( ).
    DATA(t191) = t183.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = t20.
    CLEAR t194.
    IF t195 IS BOUND.
      DATA t196 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t196.
      DATA t197 TYPE REF TO object.
      CLEAR t197.
      CLEAR t196.
      t197 = t195.
      TRY.
          t194 ?= t197.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t196 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t196 IS BOUND.
          t194 = t196->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    t193 = zcl_lnt_st_combi_module=>opt( i_first = t194 ).
    CLEAR t192.
    IF t193 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t198.
      DATA t199 TYPE REF TO object.
      CLEAR t199.
      CLEAR t198.
      t199 = t193.
      TRY.
          t192 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t198 ?= t193.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t192 = t198->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t193.
        ENDIF.
      ENDIF.
    ENDIF.
    t191->load( ).
    APPEND t192 TO t191->items.
    t191->save( ).
    DATA(t200) = t183.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    CLEAR t203.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    t202 = zcl_lnt_st_combi_module=>opt( i_first = t203 ).
    CLEAR t201.
    IF t202 IS BOUND.
      DATA t205 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t205.
      DATA t206 TYPE REF TO object.
      CLEAR t206.
      CLEAR t205.
      t206 = t202.
      TRY.
          t201 ?= t206.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t205 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t205 IS BOUND.
          t201 = t205->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    t200->load( ).
    APPEND t201 TO t200->items.
    t200->save( ).
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA(t208) = t173.
    DATA(t209) = t180.
    DATA(t210) = t183.
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t209 i_rest = t210 ).
    t172 = t207.
    t171 = t172.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = |STATIC|.
    CLEAR t214.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = |ENTITY|.
    CLEAR t217.
    CREATE OBJECT t217.
    t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t217->sval = t218.
    t216 = t217.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    CREATE OBJECT t220.
    t219 = t220.
    DATA(t221) = t219.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t222.
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    t221->load( ).
    APPEND t222 TO t221->items.
    t221->save( ).
    DATA(t224) = t219.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = t20.
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
    t226 = zcl_lnt_st_combi_module=>opt( i_first = t227 ).
    CLEAR t225.
    IF t226 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t231.
      DATA t232 TYPE REF TO object.
      CLEAR t232.
      CLEAR t231.
      t232 = t226.
      TRY.
          t225 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t225 IS NOT BOUND.
        TRY.
            t231 ?= t226.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t225 = t231->source( ).
        ENDIF.
        IF t225 IS NOT BOUND.
          CREATE OBJECT t225.
          t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t225->oval = t226.
        ENDIF.
      ENDIF.
    ENDIF.
    t224->load( ).
    APPEND t225 TO t224->items.
    t224->save( ).
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    DATA(t234) = t213.
    DATA(t235) = t216.
    DATA(t236) = t219.
    t233 = zcl_lnt_st_combi_module=>seq( i_first = t234 i_second = t235 i_rest = t236 ).
    t212 = t233.
    t211 = t212.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    CLEAR t241.
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t241->cval = t242.
    ENDIF.
    t240 = zcl_lnt_st_combi_module=>star( i_first = t241 ).
    CLEAR t239.
    IF t240 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t243.
      DATA t244 TYPE REF TO object.
      CLEAR t244.
      CLEAR t243.
      t244 = t240.
      TRY.
          t239 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t243 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t239 = t243->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    t238 = t239.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = |DEFINE|.
    CLEAR t248.
    CREATE OBJECT t248.
    t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t248->sval = t249.
    t247 = zcl_lnt_st_combi_module=>opt( i_first = t248 ).
    CLEAR t246.
    IF t247 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t250.
      DATA t251 TYPE REF TO object.
      CLEAR t251.
      CLEAR t250.
      t251 = t247.
      TRY.
          t246 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t250 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t246 = t250->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = t246.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t253.
    CREATE OBJECT t253.
    t252 = t253.
    DATA(t254) = t252.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = |ROOT|.
    CLEAR t257.
    CREATE OBJECT t257.
    t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t257->sval = t258.
    t256 = zcl_lnt_st_combi_module=>opt( i_first = t257 ).
    CLEAR t255.
    IF t256 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t259.
      DATA t260 TYPE REF TO object.
      CLEAR t260.
      CLEAR t259.
      t260 = t256.
      TRY.
          t255 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t255 IS NOT BOUND.
        TRY.
            t259 ?= t256.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t255 = t259->source( ).
        ENDIF.
        IF t255 IS NOT BOUND.
          CREATE OBJECT t255.
          t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t255->oval = t256.
        ENDIF.
      ENDIF.
    ENDIF.
    t254->load( ).
    APPEND t255 TO t254->items.
    t254->save( ).
    DATA(t261) = t252.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA(t266) = t171.
    CLEAR t265.
    IF t266 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t267.
      DATA t268 TYPE REF TO object.
      CLEAR t268.
      CLEAR t267.
      t268 = t266.
      TRY.
          t265 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t265 IS NOT BOUND.
        TRY.
            t267 ?= t266.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t265 = t267->source( ).
        ENDIF.
        IF t265 IS NOT BOUND.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t265->oval = t266.
        ENDIF.
      ENDIF.
    ENDIF.
    t264 = t265.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = t211.
    CLEAR t270.
    IF t271 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t272.
      DATA t273 TYPE REF TO object.
      CLEAR t273.
      CLEAR t272.
      t273 = t271.
      TRY.
          t270 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t272 ?= t271.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t270 = t272->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t271.
        ENDIF.
      ENDIF.
    ENDIF.
    t269 = t270.
    DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t275.
    CREATE OBJECT t275.
    t274 = t275.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t276.
    DATA(t277) = t264.
    DATA(t278) = t269.
    DATA(t279) = t274.
    t276 = zcl_lnt_st_combi_module=>alt( i_first = t277 i_second = t278 i_rest = t279 ).
    t263 = t276.
    CLEAR t262.
    IF t263 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t280.
      DATA t281 TYPE REF TO object.
      CLEAR t281.
      CLEAR t280.
      t281 = t263.
      TRY.
          t262 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t280 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t262 = t280->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    t261->load( ).
    APPEND t262 TO t261->items.
    t261->save( ).
    DATA(t282) = t252.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA(t285) = |\{|.
    t284 = zcl_lnt_st_combi_module=>str( i_s = t285 ).
    CLEAR t283.
    IF t284 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t286.
      DATA t287 TYPE REF TO object.
      CLEAR t287.
      CLEAR t286.
      t287 = t284.
      TRY.
          t283 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t286 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t283 = t286->source( ).
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
    DATA(t288) = t252.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA(t290) = t149.
    CLEAR t289.
    IF t290 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t291.
      DATA t292 TYPE REF TO object.
      CLEAR t292.
      CLEAR t291.
      t292 = t290.
      TRY.
          t289 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t291 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t289 = t291->source( ).
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
    DATA(t293) = t252.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA(t296) = |\}|.
    t295 = zcl_lnt_st_combi_module=>str( i_s = t296 ).
    CLEAR t294.
    IF t295 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t297.
      DATA t298 TYPE REF TO object.
      CLEAR t298.
      CLEAR t297.
      t298 = t295.
      TRY.
          t294 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t297 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t294 = t297->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    t293->load( ).
    APPEND t294 TO t293->items.
    t293->save( ).
    DATA(t299) = t252.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t301.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA(t306) = |WITH|.
    CLEAR t305.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = t306.
    t304 = t305.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = |FEDERATED|.
    CLEAR t308.
    CREATE OBJECT t308.
    t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t308->sval = t309.
    t307 = t308.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t311.
    CREATE OBJECT t311.
    t310 = t311.
    DATA(t312) = t310.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = |DATA|.
    CLEAR t313.
    CREATE OBJECT t313.
    t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t313->sval = t314.
    t312->load( ).
    APPEND t313 TO t312->items.
    t312->save( ).
    DATA(t315) = t310.
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
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = |PROVIDED|.
    CLEAR t324.
    CREATE OBJECT t324.
    t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t324->sval = t325.
    t323 = t324.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA(t328) = |AT|.
    CLEAR t327.
    CREATE OBJECT t327.
    t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t327->sval = t328.
    t326 = t327.
    DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t329.
    DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t330.
    CREATE OBJECT t330.
    t329 = t330.
    DATA(t331) = t329.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA(t333) = |RUNTIME|.
    CLEAR t332.
    CREATE OBJECT t332.
    t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t332->sval = t333.
    t331->load( ).
    APPEND t332 TO t331->items.
    t331->save( ).
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA(t335) = t323.
    DATA(t336) = t326.
    DATA(t337) = t329.
    t334 = zcl_lnt_st_combi_module=>seq( i_first = t335 i_second = t336 i_rest = t337 ).
    t322 = t334.
    CLEAR t321.
    IF t322 IS BOUND.
      DATA t338 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t338.
      DATA t339 TYPE REF TO object.
      CLEAR t339.
      CLEAR t338.
      t339 = t322.
      TRY.
          t321 ?= t339.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t321 IS NOT BOUND.
        TRY.
            t338 ?= t322.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t338 IS BOUND.
          t321 = t338->source( ).
        ENDIF.
        IF t321 IS NOT BOUND.
          CREATE OBJECT t321.
          t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t321->oval = t322.
        ENDIF.
      ENDIF.
    ENDIF.
    t320 = t321.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = |PROVIDED|.
    CLEAR t344.
    CREATE OBJECT t344.
    t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t344->sval = t345.
    t343 = t344.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA(t348) = |BY|.
    CLEAR t347.
    CREATE OBJECT t347.
    t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t347->sval = t348.
    t346 = t347.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t350.
    CREATE OBJECT t350.
    t349 = t350.
    DATA(t351) = t349.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA(t353) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t352.
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t352->cval = t353.
    ENDIF.
    t351->load( ).
    APPEND t352 TO t351->items.
    t351->save( ).
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t354.
    DATA(t355) = t343.
    DATA(t356) = t346.
    DATA(t357) = t349.
    t354 = zcl_lnt_st_combi_module=>seq( i_first = t355 i_second = t356 i_rest = t357 ).
    t342 = t354.
    CLEAR t341.
    IF t342 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t358.
      DATA t359 TYPE REF TO object.
      CLEAR t359.
      CLEAR t358.
      t359 = t342.
      TRY.
          t341 ?= t359.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t341 IS NOT BOUND.
        TRY.
            t358 ?= t342.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t341 = t358->source( ).
        ENDIF.
        IF t341 IS NOT BOUND.
          CREATE OBJECT t341.
          t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t341->oval = t342.
        ENDIF.
      ENDIF.
    ENDIF.
    t340 = t341.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t360.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t361.
    CREATE OBJECT t361.
    t360 = t361.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA(t363) = t320.
    DATA(t364) = t340.
    DATA(t365) = t360.
    t362 = zcl_lnt_st_combi_module=>alt( i_first = t363 i_second = t364 i_rest = t365 ).
    t319 = t362.
    CLEAR t318.
    IF t319 IS BOUND.
      DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t366.
      DATA t367 TYPE REF TO object.
      CLEAR t367.
      CLEAR t366.
      t367 = t319.
      TRY.
          t318 ?= t367.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t318 IS NOT BOUND.
        TRY.
            t366 ?= t319.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t366 IS BOUND.
          t318 = t366->source( ).
        ENDIF.
        IF t318 IS NOT BOUND.
          CREATE OBJECT t318.
          t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t318->oval = t319.
        ENDIF.
      ENDIF.
    ENDIF.
    t317 = zcl_lnt_st_combi_module=>opt_prio( i_first = t318 ).
    CLEAR t316.
    IF t317 IS BOUND.
      DATA t368 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t368.
      DATA t369 TYPE REF TO object.
      CLEAR t369.
      CLEAR t368.
      t369 = t317.
      TRY.
          t316 ?= t369.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t368 ?= t317.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t368 IS BOUND.
          t316 = t368->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t317.
        ENDIF.
      ENDIF.
    ENDIF.
    t315->load( ).
    APPEND t316 TO t315->items.
    t315->save( ).
    DATA(t370) = t310.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t372.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA(t377) = |ON|.
    CLEAR t376.
    CREATE OBJECT t376.
    t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t376->sval = t377.
    t375 = t376.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA(t380) = |UNLINKED|.
    CLEAR t379.
    CREATE OBJECT t379.
    t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t379->sval = t380.
    t378 = t379.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t382.
    CREATE OBJECT t382.
    t381 = t382.
    DATA(t383) = t381.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t385.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA(t388) = |FAIL|.
    CLEAR t387.
    CREATE OBJECT t387.
    t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t387->sval = t388.
    t386 = t387.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA(t391) = |IGNORE|.
    CLEAR t390.
    CREATE OBJECT t390.
    t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t390->sval = t391.
    t389 = t390.
    DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t392.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t393.
    CREATE OBJECT t393.
    t392 = t393.
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t394.
    DATA(t395) = t386.
    DATA(t396) = t389.
    DATA(t397) = t392.
    t394 = zcl_lnt_st_combi_module=>alt_prio( i_first = t395 i_second = t396 i_rest = t397 ).
    t385 = t394.
    CLEAR t384.
    IF t385 IS BOUND.
      DATA t398 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t398.
      DATA t399 TYPE REF TO object.
      CLEAR t399.
      CLEAR t398.
      t399 = t385.
      TRY.
          t384 ?= t399.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t398 ?= t385.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t398 IS BOUND.
          t384 = t398->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t385.
        ENDIF.
      ENDIF.
    ENDIF.
    t383->load( ).
    APPEND t384 TO t383->items.
    t383->save( ).
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t400.
    DATA(t401) = t375.
    DATA(t402) = t378.
    DATA(t403) = t381.
    t400 = zcl_lnt_st_combi_module=>seq( i_first = t401 i_second = t402 i_rest = t403 ).
    t374 = t400.
    CLEAR t373.
    IF t374 IS BOUND.
      DATA t404 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t404.
      DATA t405 TYPE REF TO object.
      CLEAR t405.
      CLEAR t404.
      t405 = t374.
      TRY.
          t373 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t373 IS NOT BOUND.
        TRY.
            t404 ?= t374.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t404 IS BOUND.
          t373 = t404->source( ).
        ENDIF.
        IF t373 IS NOT BOUND.
          CREATE OBJECT t373.
          t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t373->oval = t374.
        ENDIF.
      ENDIF.
    ENDIF.
    t372 = zcl_lnt_st_combi_module=>opt_prio( i_first = t373 ).
    CLEAR t371.
    IF t372 IS BOUND.
      DATA t406 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t406.
      DATA t407 TYPE REF TO object.
      CLEAR t407.
      CLEAR t406.
      t407 = t372.
      TRY.
          t371 ?= t407.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t371 IS NOT BOUND.
        TRY.
            t406 ?= t372.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t406 IS BOUND.
          t371 = t406->source( ).
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
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t408.
    DATA(t409) = t304.
    DATA(t410) = t307.
    DATA(t411) = t310.
    t408 = zcl_lnt_st_combi_module=>seq( i_first = t409 i_second = t410 i_rest = t411 ).
    t303 = t408.
    CLEAR t302.
    IF t303 IS BOUND.
      DATA t412 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t412.
      DATA t413 TYPE REF TO object.
      CLEAR t413.
      CLEAR t412.
      t413 = t303.
      TRY.
          t302 ?= t413.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t302 IS NOT BOUND.
        TRY.
            t412 ?= t303.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t412 IS BOUND.
          t302 = t412->source( ).
        ENDIF.
        IF t302 IS NOT BOUND.
          CREATE OBJECT t302.
          t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t302->oval = t303.
        ENDIF.
      ENDIF.
    ENDIF.
    t301 = zcl_lnt_st_combi_module=>opt( i_first = t302 ).
    CLEAR t300.
    IF t301 IS BOUND.
      DATA t414 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t414.
      DATA t415 TYPE REF TO object.
      CLEAR t415.
      CLEAR t414.
      t415 = t301.
      TRY.
          t300 ?= t415.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t414 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t414 IS BOUND.
          t300 = t414->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    t299->load( ).
    APPEND t300 TO t299->items.
    t299->save( ).
    DATA(t416) = t252.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    DATA(t420) = |;|.
    CLEAR t419.
    CREATE OBJECT t419.
    t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t419->sval = t420.
    t418 = zcl_lnt_st_combi_module=>opt( i_first = t419 ).
    CLEAR t417.
    IF t418 IS BOUND.
      DATA t421 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t421.
      DATA t422 TYPE REF TO object.
      CLEAR t422.
      CLEAR t421.
      t422 = t418.
      TRY.
          t417 ?= t422.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t417 IS NOT BOUND.
        TRY.
            t421 ?= t418.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t421 IS BOUND.
          t417 = t421->source( ).
        ENDIF.
        IF t417 IS NOT BOUND.
          CREATE OBJECT t417.
          t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t417->oval = t418.
        ENDIF.
      ENDIF.
    ENDIF.
    t416->load( ).
    APPEND t417 TO t416->items.
    t416->save( ).
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t423.
    DATA(t424) = t238.
    DATA(t425) = t245.
    DATA(t426) = t252.
    t423 = zcl_lnt_st_combi_module=>seq( i_first = t424 i_second = t425 i_rest = t426 ).
    t237 = t423.
    result = t237.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1100_58347daca360.
  ENDMETHOD.
ENDCLASS.
