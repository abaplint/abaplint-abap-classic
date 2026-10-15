* TS: src/abap/2_statements/expressions/select_cte.ts:12:1 SelectCTE
CLASS zcl_lnt_select_cte DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_select_cte IMPLEMENTATION.
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
    DATA(t5) = |WHERE|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t7.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA(t12) = t3.
    DATA(t13) = t6.
    DATA(t14) = t9.
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA(t15) = VALUE string( ).
    DATA(t16) = |BYPASSING BUFFER|.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t22.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t22 = zcl_lnt_version_module=>release_b8cd.
    DATA(t23) = |v758|.
    t21 = t22->get( p0 = t23 ).
    t20 = t21.
    CLEAR t19.
    IF t20 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      CLEAR t24.
      t25 = t20.
      TRY.
          t19 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t24 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t19 = t24->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    CLEAR t26.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t28.
    t18 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t19 i_first = t26 i_opts = t28 ).
    t17 = t18.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t34.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t34 = zcl_lnt_version_module=>release_b8cd.
    DATA(t35) = |v751|.
    t33 = t34->get( p0 = t35 ).
    t32 = t33.
    CLEAR t31.
    IF t32 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      CLEAR t36.
      t37 = t32.
      TRY.
          t31 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t36 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t31 = t36->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = |OFFSET|.
    CLEAR t41.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    CLEAR t44.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    CREATE OBJECT t47.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA(t49) = t40.
    DATA(t50) = t43.
    DATA(t51) = t46.
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t50 i_rest = t51 ).
    t39 = t48.
    CLEAR t38.
    IF t39 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      CLEAR t52.
      t53 = t39.
      TRY.
          t38 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t52 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t38 = t52->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t54.
    t30 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t31 i_first = t38 i_opts = t54 ).
    t29 = t30.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA(t59) = |KeyUser|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401.
    CLEAR t60.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t58 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t59 i_first = t60 ).
    CLEAR t57.
    IF t58 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t62.
      DATA t63 TYPE REF TO object.
      CLEAR t63.
      CLEAR t62.
      t63 = t58.
      TRY.
          t57 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t62 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t57 = t62->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t56 = zcl_lnt_st_combi_module=>opt_prio( i_first = t57 ).
    t55 = t56.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
    CLEAR t69.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    t68 = zcl_lnt_st_combi_module=>opt_prio( i_first = t69 ).
    CLEAR t67.
    IF t68 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      CLEAR t71.
      t72 = t68.
      TRY.
          t67 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t71 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t67 = t71->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    t66 = t67.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0.
    CLEAR t76.
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    t75 = zcl_lnt_st_combi_module=>opt_prio( i_first = t76 ).
    CLEAR t74.
    IF t75 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t78.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      CLEAR t78.
      t79 = t75.
      TRY.
          t74 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t78 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t74 = t78->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t73 = t74.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    CREATE OBJECT t81.
    t80 = t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA(t83) = t66.
    DATA(t84) = t73.
    DATA(t85) = t80.
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t65 = t82.
    t64 = t65.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = t64.
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
    t88 = t89.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    CLEAR t99.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263.
    CLEAR t104.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    t103 = zcl_lnt_st_combi_module=>opt_prio( i_first = t104 ).
    CLEAR t102.
    IF t103 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t106.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      CLEAR t106.
      t107 = t103.
      TRY.
          t102 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t106 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t102 = t106->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t101 = t102.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t109.
    CREATE OBJECT t109.
    t108 = t109.
    DATA(t110) = t108.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = t29.
    CLEAR t113.
    IF t114 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t115.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      CLEAR t115.
      t116 = t114.
      TRY.
          t113 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t112 = zcl_lnt_st_combi_module=>opt_prio( i_first = t113 ).
    CLEAR t111.
    IF t112 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      CLEAR t117.
      t118 = t112.
      TRY.
          t111 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t117 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t111 = t117->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t110->load( ).
    APPEND t111 TO t110->items.
    t110->save( ).
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA(t120) = t98.
    DATA(t121) = t101.
    DATA(t122) = t108.
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t97 = t119.
    CLEAR t96.
    IF t97 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t97.
      TRY.
          t96 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t123 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t96 = t123->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    t95 = zcl_lnt_st_combi_module=>opt_prio( i_first = t96 ).
    CLEAR t94.
    IF t95 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t125.
      DATA t126 TYPE REF TO object.
      CLEAR t126.
      CLEAR t125.
      t126 = t95.
      TRY.
          t94 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t125 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t94 = t125->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t93 = t94.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t128.
    CREATE OBJECT t128.
    t127 = t128.
    DATA(t129) = t127.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed.
    CLEAR t132.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = zcl_lnt_st_combi_module=>opt_prio( i_first = t132 ).
    CLEAR t130.
    IF t131 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t134.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      CLEAR t134.
      t135 = t131.
      TRY.
          t130 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t134 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t130 = t134->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t130 TO t129->items.
    t129->save( ).
    DATA(t136) = t127.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = t17.
    CLEAR t139.
    IF t140 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t141.
      DATA t142 TYPE REF TO object.
      CLEAR t142.
      CLEAR t141.
      t142 = t140.
      TRY.
          t139 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t141 ?= t140.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t139 = t141->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>opt_prio( i_first = t139 ).
    CLEAR t137.
    IF t138 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t143.
      DATA t144 TYPE REF TO object.
      CLEAR t144.
      CLEAR t143.
      t144 = t138.
      TRY.
          t137 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t143 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t137 = t143->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t136->load( ).
    APPEND t137 TO t136->items.
    t136->save( ).
    DATA(t145) = t127.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da.
    CLEAR t148.
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    t147 = zcl_lnt_st_combi_module=>opt_prio( i_first = t148 ).
    CLEAR t146.
    IF t147 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t150.
      DATA t151 TYPE REF TO object.
      CLEAR t151.
      CLEAR t150.
      t151 = t147.
      TRY.
          t146 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t150 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t146 = t150->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    t145->load( ).
    APPEND t146 TO t145->items.
    t145->save( ).
    DATA(t152) = t127.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = t55.
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
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA(t158) = t88.
    DATA(t159) = t93.
    DATA(t160) = t127.
    t157 = zcl_lnt_st_combi_module=>seq( i_first = t158 i_second = t159 i_rest = t160 ).
    t87 = t157.
    t86 = t87.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    CLEAR t164.
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t164->cval = t165.
    ENDIF.
    t163 = t164.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t169.
    IF t170 IS BOUND.
      CREATE OBJECT t169.
      t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t169->cval = t170.
    ENDIF.
    t168 = zcl_lnt_st_combi_module=>opt_prio( i_first = t169 ).
    CLEAR t167.
    IF t168 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t171.
      DATA t172 TYPE REF TO object.
      CLEAR t172.
      CLEAR t171.
      t172 = t168.
      TRY.
          t167 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t167 IS NOT BOUND.
        TRY.
            t171 ?= t168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t167 = t171->source( ).
        ENDIF.
        IF t167 IS NOT BOUND.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t167->oval = t168.
        ENDIF.
      ENDIF.
    ENDIF.
    t166 = t167.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t174.
    CREATE OBJECT t174.
    t173 = t174.
    DATA(t175) = t173.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = t15.
    CLEAR t178.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t179.
    t177 = zcl_lnt_st_combi_module=>opt_prio( i_first = t178 ).
    CLEAR t176.
    IF t177 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t180.
      DATA t181 TYPE REF TO object.
      CLEAR t181.
      CLEAR t180.
      t181 = t177.
      TRY.
          t176 ?= t181.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t180 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t176 = t180->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t177.
        ENDIF.
      ENDIF.
    ENDIF.
    t175->load( ).
    APPEND t176 TO t175->items.
    t175->save( ).
    DATA(t182) = t173.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t186.
    DATA t187 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t188.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t188 = zcl_lnt_version_module=>release_b8cd.
    DATA(t189) = |v750|.
    t187 = t188->get( p0 = t189 ).
    t186 = t187.
    CLEAR t185.
    IF t186 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t190.
      DATA t191 TYPE REF TO object.
      CLEAR t191.
      CLEAR t190.
      t191 = t186.
      TRY.
          t185 ?= t191.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t190 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t185 = t190->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543.
    CLEAR t192.
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t192->cval = t193.
    ENDIF.
    DATA t194 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t194.
    DATA(t195) = abap_true.
    IF t195 = abap_true.
      DATA t196 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t196.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t197.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t198.
      DATA(t199) = abap_true.
      IF t199 = abap_true.
        DATA(t200) = |OpenABAP|.
        DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t201->has = abap_true.
        t201->value = t200.
        t198 = t201.
      ELSE.
        DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t202.
        t198 = t202.
      ENDIF.
      t197 = t198.
      t196 = NEW zcl_lnt_iver_options( i_also = t197 ).
      CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
      t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t203 ).
      ENDIF.
      CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
      t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t204) = |also|.
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t205.
      IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
      ENDIF.
      t194 = t196.
    ELSE.
      DATA t206 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t206.
      t194 = t206.
    ENDIF.
    t184 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t185 i_first = t192 i_opts = t194 ).
    CLEAR t183.
    IF t184 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t207.
      DATA t208 TYPE REF TO object.
      CLEAR t208.
      CLEAR t207.
      t208 = t184.
      TRY.
          t183 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t207 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t183 = t207->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t182->load( ).
    APPEND t183 TO t182->items.
    t182->save( ).
    DATA(t209) = t173.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    CLEAR t212.
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t211 = zcl_lnt_st_combi_module=>opt_prio( i_first = t212 ).
    CLEAR t210.
    IF t211 IS BOUND.
      DATA t214 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t214.
      DATA t215 TYPE REF TO object.
      CLEAR t215.
      CLEAR t214.
      t215 = t211.
      TRY.
          t210 ?= t215.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t214 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t214 IS BOUND.
          t210 = t214->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t209->load( ).
    APPEND t210 TO t209->items.
    t209->save( ).
    DATA(t216) = t173.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA(t220) = t1.
    CLEAR t219.
    IF t220 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t221.
      DATA t222 TYPE REF TO object.
      CLEAR t222.
      CLEAR t221.
      t222 = t220.
      TRY.
          t219 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t221 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t219 = t221->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    t218 = zcl_lnt_st_combi_module=>opt_prio( i_first = t219 ).
    CLEAR t217.
    IF t218 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t223.
      DATA t224 TYPE REF TO object.
      CLEAR t224.
      CLEAR t223.
      t224 = t218.
      TRY.
          t217 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t223 ?= t218.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t217 = t223->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t218.
        ENDIF.
      ENDIF.
    ENDIF.
    t216->load( ).
    APPEND t217 TO t216->items.
    t216->save( ).
    DATA(t225) = t173.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = t86.
    CLEAR t226.
    IF t227 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t228.
      DATA t229 TYPE REF TO object.
      CLEAR t229.
      CLEAR t228.
      t229 = t227.
      TRY.
          t226 ?= t229.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t226 IS NOT BOUND.
        TRY.
            t228 ?= t227.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t226 = t228->source( ).
        ENDIF.
        IF t226 IS NOT BOUND.
          CREATE OBJECT t226.
          t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t226->oval = t227.
        ENDIF.
      ENDIF.
    ENDIF.
    t225->load( ).
    APPEND t226 TO t225->items.
    t225->save( ).
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA(t231) = t163.
    DATA(t232) = t166.
    DATA(t233) = t173.
    t230 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t232 i_rest = t233 ).
    t162 = t230.
    t161 = t162.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = |DISTINCT|.
    CLEAR t239.
    CREATE OBJECT t239.
    t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t239->sval = t240.
    t238 = zcl_lnt_st_combi_module=>opt_prio( i_first = t239 ).
    CLEAR t237.
    IF t238 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t241.
      DATA t242 TYPE REF TO object.
      CLEAR t242.
      CLEAR t241.
      t242 = t238.
      TRY.
          t237 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t241 ?= t238.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t237 = t241->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t238.
        ENDIF.
      ENDIF.
    ENDIF.
    t236 = t237.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3.
    CLEAR t244.
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t244->cval = t245.
    ENDIF.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t247.
    CREATE OBJECT t247.
    t246 = t247.
    DATA(t248) = t246.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    CLEAR t249.
    IF t250 IS BOUND.
      CREATE OBJECT t249.
      t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t249->cval = t250.
    ENDIF.
    t248->load( ).
    APPEND t249 TO t248->items.
    t248->save( ).
    DATA(t251) = t246.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t254.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    t253 = zcl_lnt_st_combi_module=>opt_prio( i_first = t254 ).
    CLEAR t252.
    IF t253 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      CLEAR t256.
      t257 = t253.
      TRY.
          t252 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t256 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t252 = t256->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    t251->load( ).
    APPEND t252 TO t251->items.
    t251->save( ).
    DATA(t258) = t246.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA(t262) = t15.
    CLEAR t261.
    CREATE OBJECT t261.
    t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t261->sval = t262.
    t260 = zcl_lnt_st_combi_module=>opt_prio( i_first = t261 ).
    CLEAR t259.
    IF t260 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t263.
      DATA t264 TYPE REF TO object.
      CLEAR t264.
      CLEAR t263.
      t264 = t260.
      TRY.
          t259 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t263 ?= t260.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t259 = t263->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t260.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t259 TO t258->items.
    t258->save( ).
    DATA(t265) = t246.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    CLEAR t268.
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t268->cval = t269.
    ENDIF.
    t267 = zcl_lnt_st_combi_module=>opt_prio( i_first = t268 ).
    CLEAR t266.
    IF t267 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t270.
      DATA t271 TYPE REF TO object.
      CLEAR t271.
      CLEAR t270.
      t271 = t267.
      TRY.
          t266 ?= t271.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t270 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t266 = t270->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t265->load( ).
    APPEND t266 TO t265->items.
    t265->save( ).
    DATA(t272) = t246.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA(t276) = t1.
    CLEAR t275.
    IF t276 IS BOUND.
      DATA t277 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t277.
      DATA t278 TYPE REF TO object.
      CLEAR t278.
      CLEAR t277.
      t278 = t276.
      TRY.
          t275 ?= t278.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t277 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t277 IS BOUND.
          t275 = t277->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    t274 = zcl_lnt_st_combi_module=>opt_prio( i_first = t275 ).
    CLEAR t273.
    IF t274 IS BOUND.
      DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t279.
      DATA t280 TYPE REF TO object.
      CLEAR t280.
      CLEAR t279.
      t280 = t274.
      TRY.
          t273 ?= t280.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t279 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t279 IS BOUND.
          t273 = t279->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t272->load( ).
    APPEND t273 TO t272->items.
    t272->save( ).
    DATA(t281) = t246.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = t86.
    CLEAR t282.
    IF t283 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t284.
      DATA t285 TYPE REF TO object.
      CLEAR t285.
      CLEAR t284.
      t285 = t283.
      TRY.
          t282 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t282 IS NOT BOUND.
        TRY.
            t284 ?= t283.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t282 = t284->source( ).
        ENDIF.
        IF t282 IS NOT BOUND.
          CREATE OBJECT t282.
          t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t282->oval = t283.
        ENDIF.
      ENDIF.
    ENDIF.
    t281->load( ).
    APPEND t282 TO t281->items.
    t281->save( ).
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA(t287) = t236.
    DATA(t288) = t243.
    DATA(t289) = t246.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t287 i_second = t288 i_rest = t289 ).
    t235 = t286.
    t234 = t235.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA(t294) = |UNION|.
    CLEAR t293.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    t292 = t293.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = |DISTINCT|.
    CLEAR t301.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    t300 = t301.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA(t305) = |ALL|.
    CLEAR t304.
    CREATE OBJECT t304.
    t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t304->sval = t305.
    t303 = t304.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t307.
    CREATE OBJECT t307.
    t306 = t307.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t308.
    DATA(t309) = t300.
    DATA(t310) = t303.
    DATA(t311) = t306.
    t308 = zcl_lnt_st_combi_module=>alt_prio( i_first = t309 i_second = t310 i_rest = t311 ).
    t299 = t308.
    CLEAR t298.
    IF t299 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t312.
      DATA t313 TYPE REF TO object.
      CLEAR t313.
      CLEAR t312.
      t313 = t299.
      TRY.
          t298 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t298 IS NOT BOUND.
        TRY.
            t312 ?= t299.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t298 = t312->source( ).
        ENDIF.
        IF t298 IS NOT BOUND.
          CREATE OBJECT t298.
          t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t298->oval = t299.
        ENDIF.
      ENDIF.
    ENDIF.
    t297 = zcl_lnt_st_combi_module=>opt_prio( i_first = t298 ).
    CLEAR t296.
    IF t297 IS BOUND.
      DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t314.
      DATA t315 TYPE REF TO object.
      CLEAR t315.
      CLEAR t314.
      t315 = t297.
      TRY.
          t296 ?= t315.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t314 ?= t297.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t314 IS BOUND.
          t296 = t314->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t297.
        ENDIF.
      ENDIF.
    ENDIF.
    t295 = t296.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t317.
    CREATE OBJECT t317.
    t316 = t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA(t319) = t292.
    DATA(t320) = t295.
    DATA(t321) = t316.
    t318 = zcl_lnt_st_combi_module=>seq( i_first = t319 i_second = t320 i_rest = t321 ).
    t291 = t318.
    t290 = t291.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t326.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA(t329) = |INTERSECT|.
    CLEAR t328.
    CREATE OBJECT t328.
    t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t328->sval = t329.
    t327 = t328.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = |DISTINCT|.
    CLEAR t333.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = t334.
    t332 = zcl_lnt_st_combi_module=>opt_prio( i_first = t333 ).
    CLEAR t331.
    IF t332 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t335.
      DATA t336 TYPE REF TO object.
      CLEAR t336.
      CLEAR t335.
      t336 = t332.
      TRY.
          t331 ?= t336.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t335 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t331 = t335->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    t330 = t331.
    DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t338.
    CREATE OBJECT t338.
    t337 = t338.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA(t340) = t327.
    DATA(t341) = t330.
    DATA(t342) = t337.
    t339 = zcl_lnt_st_combi_module=>seq( i_first = t340 i_second = t341 i_rest = t342 ).
    t326 = t339.
    CLEAR t325.
    IF t326 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t343.
      DATA t344 TYPE REF TO object.
      CLEAR t344.
      CLEAR t343.
      t344 = t326.
      TRY.
          t325 ?= t344.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t343 ?= t326.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t325 = t343->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t326.
        ENDIF.
      ENDIF.
    ENDIF.
    t324 = t325.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = |EXCEPT|.
    CLEAR t349.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = t350.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA(t355) = |DISTINCT|.
    CLEAR t354.
    CREATE OBJECT t354.
    t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t354->sval = t355.
    t353 = zcl_lnt_st_combi_module=>opt_prio( i_first = t354 ).
    CLEAR t352.
    IF t353 IS BOUND.
      DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t356.
      DATA t357 TYPE REF TO object.
      CLEAR t357.
      CLEAR t356.
      t357 = t353.
      TRY.
          t352 ?= t357.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t356 ?= t353.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t356 IS BOUND.
          t352 = t356->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t353.
        ENDIF.
      ENDIF.
    ENDIF.
    t351 = t352.
    DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t358.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t359.
    CREATE OBJECT t359.
    t358 = t359.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t360.
    DATA(t361) = t348.
    DATA(t362) = t351.
    DATA(t363) = t358.
    t360 = zcl_lnt_st_combi_module=>seq( i_first = t361 i_second = t362 i_rest = t363 ).
    t347 = t360.
    CLEAR t346.
    IF t347 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t364.
      DATA t365 TYPE REF TO object.
      CLEAR t365.
      CLEAR t364.
      t365 = t347.
      TRY.
          t346 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t346 IS NOT BOUND.
        TRY.
            t364 ?= t347.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t346 = t364->source( ).
        ENDIF.
        IF t346 IS NOT BOUND.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t346->oval = t347.
        ENDIF.
      ENDIF.
    ENDIF.
    t345 = t346.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t367.
    CREATE OBJECT t367.
    t366 = t367.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t368.
    DATA(t369) = t324.
    DATA(t370) = t345.
    DATA(t371) = t366.
    t368 = zcl_lnt_st_combi_module=>alt_prio( i_first = t369 i_second = t370 i_rest = t371 ).
    t323 = t368.
    t322 = t323.
    DATA t372 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t372.
    DATA t373 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t376.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t378.
    DATA t379 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t379.
    DATA t380 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t380.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t380 = zcl_lnt_version_module=>release_b8cd.
    DATA(t381) = |v750|.
    t379 = t380->get( p0 = t381 ).
    t378 = t379.
    CLEAR t377.
    IF t378 IS BOUND.
      DATA t382 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t382.
      DATA t383 TYPE REF TO object.
      CLEAR t383.
      CLEAR t382.
      t383 = t378.
      TRY.
          t377 ?= t383.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t377 IS NOT BOUND.
        TRY.
            t382 ?= t378.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t382 IS BOUND.
          t377 = t382->source( ).
        ENDIF.
        IF t377 IS NOT BOUND.
          CREATE OBJECT t377.
          t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t377->oval = t378.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA(t385) = t290.
    CLEAR t384.
    IF t385 IS BOUND.
      DATA t386 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t386.
      DATA t387 TYPE REF TO object.
      CLEAR t387.
      CLEAR t386.
      t387 = t385.
      TRY.
          t384 ?= t387.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t386 ?= t385.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t386 IS BOUND.
          t384 = t386->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t385.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t388 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t388.
    DATA(t389) = abap_true.
    IF t389 = abap_true.
      DATA t390 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t390.
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t391.
      DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t392.
      DATA(t393) = abap_true.
      IF t393 = abap_true.
        DATA(t394) = |OpenABAP|.
        DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t395->has = abap_true.
        t395->value = t394.
        t392 = t395.
      ELSE.
        DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t396.
        t392 = t396.
      ENDIF.
      t391 = t392.
      t390 = NEW zcl_lnt_iver_options( i_also = t391 ).
      CREATE OBJECT t390->zlnt_view_ownkeys_b0e8086400eb.
      t390->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t397.
      IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t397 ).
      ENDIF.
      CREATE OBJECT t390->zlnt_json_ownkeys_70e5fd461788.
      t390->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t398) = |also|.
      DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t399.
      IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t398 p1 = t399 ).
      ENDIF.
      t388 = t390.
    ELSE.
      DATA t400 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t400.
      t388 = t400.
    ENDIF.
    t376 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t377 i_first = t384 i_opts = t388 ).
    CLEAR t375.
    IF t376 IS BOUND.
      DATA t401 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t401.
      DATA t402 TYPE REF TO object.
      CLEAR t402.
      CLEAR t401.
      t402 = t376.
      TRY.
          t375 ?= t402.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t375 IS NOT BOUND.
        TRY.
            t401 ?= t376.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t401 IS BOUND.
          t375 = t401->source( ).
        ENDIF.
        IF t375 IS NOT BOUND.
          CREATE OBJECT t375.
          t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t375->oval = t376.
        ENDIF.
      ENDIF.
    ENDIF.
    t374 = t375.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t404.
    DATA t405 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t405.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t406.
    DATA t407 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t407.
    DATA t408 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t408.
    DATA t409 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t409.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t409 = zcl_lnt_version_module=>release_b8cd.
    DATA(t410) = |v756|.
    t408 = t409->get( p0 = t410 ).
    t407 = t408.
    CLEAR t406.
    IF t407 IS BOUND.
      DATA t411 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t411.
      DATA t412 TYPE REF TO object.
      CLEAR t412.
      CLEAR t411.
      t412 = t407.
      TRY.
          t406 ?= t412.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t406 IS NOT BOUND.
        TRY.
            t411 ?= t407.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t411 IS BOUND.
          t406 = t411->source( ).
        ENDIF.
        IF t406 IS NOT BOUND.
          CREATE OBJECT t406.
          t406->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t406->oval = t407.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA(t414) = t322.
    CLEAR t413.
    IF t414 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t415.
      DATA t416 TYPE REF TO object.
      CLEAR t416.
      CLEAR t415.
      t416 = t414.
      TRY.
          t413 ?= t416.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t415 ?= t414.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t413 = t415->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t414.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t417 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t417.
    t405 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t406 i_first = t413 i_opts = t417 ).
    CLEAR t404.
    IF t405 IS BOUND.
      DATA t418 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t418.
      DATA t419 TYPE REF TO object.
      CLEAR t419.
      CLEAR t418.
      t419 = t405.
      TRY.
          t404 ?= t419.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t404 IS NOT BOUND.
        TRY.
            t418 ?= t405.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t418 IS BOUND.
          t404 = t418->source( ).
        ENDIF.
        IF t404 IS NOT BOUND.
          CREATE OBJECT t404.
          t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t404->oval = t405.
        ENDIF.
      ENDIF.
    ENDIF.
    t403 = t404.
    DATA t420 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t421.
    CREATE OBJECT t421.
    t420 = t421.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA(t423) = t374.
    DATA(t424) = t403.
    DATA(t425) = t420.
    t422 = zcl_lnt_st_combi_module=>alt_prio( i_first = t423 i_second = t424 i_rest = t425 ).
    t373 = t422.
    t372 = t373.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t426.
    DATA t427 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t427.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA(t430) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    CLEAR t429.
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t429->cval = t430.
    ENDIF.
    t428 = t429.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t433.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA(t435) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t434.
    IF t435 IS BOUND.
      CREATE OBJECT t434.
      t434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t434->cval = t435.
    ENDIF.
    t433 = zcl_lnt_st_combi_module=>opt_prio( i_first = t434 ).
    CLEAR t432.
    IF t433 IS BOUND.
      DATA t436 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t436.
      DATA t437 TYPE REF TO object.
      CLEAR t437.
      CLEAR t436.
      t437 = t433.
      TRY.
          t432 ?= t437.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t432 IS NOT BOUND.
        TRY.
            t436 ?= t433.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t436 IS BOUND.
          t432 = t436->source( ).
        ENDIF.
        IF t432 IS NOT BOUND.
          CREATE OBJECT t432.
          t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t432->oval = t433.
        ENDIF.
      ENDIF.
    ENDIF.
    t431 = t432.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t438.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t439.
    CREATE OBJECT t439.
    t438 = t439.
    DATA(t440) = t438.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t441.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t443.
    DATA(t444) = t15.
    CLEAR t443.
    CREATE OBJECT t443.
    t443->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t443->sval = t444.
    t442 = zcl_lnt_st_combi_module=>opt_prio( i_first = t443 ).
    CLEAR t441.
    IF t442 IS BOUND.
      DATA t445 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t445.
      DATA t446 TYPE REF TO object.
      CLEAR t446.
      CLEAR t445.
      t446 = t442.
      TRY.
          t441 ?= t446.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t441 IS NOT BOUND.
        TRY.
            t445 ?= t442.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t445 IS BOUND.
          t441 = t445->source( ).
        ENDIF.
        IF t441 IS NOT BOUND.
          CREATE OBJECT t441.
          t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t441->oval = t442.
        ENDIF.
      ENDIF.
    ENDIF.
    t440->load( ).
    APPEND t441 TO t440->items.
    t440->save( ).
    DATA(t447) = t438.
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t448.
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t449.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t450.
    DATA t451 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t451.
    DATA t452 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t452.
    DATA t453 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t453.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t453 = zcl_lnt_version_module=>release_b8cd.
    DATA(t454) = |v750|.
    t452 = t453->get( p0 = t454 ).
    t451 = t452.
    CLEAR t450.
    IF t451 IS BOUND.
      DATA t455 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t455.
      DATA t456 TYPE REF TO object.
      CLEAR t456.
      CLEAR t455.
      t456 = t451.
      TRY.
          t450 ?= t456.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t450 IS NOT BOUND.
        TRY.
            t455 ?= t451.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t455 IS BOUND.
          t450 = t455->source( ).
        ENDIF.
        IF t450 IS NOT BOUND.
          CREATE OBJECT t450.
          t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t450->oval = t451.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA(t458) = zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543.
    CLEAR t457.
    IF t458 IS BOUND.
      CREATE OBJECT t457.
      t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t457->cval = t458.
    ENDIF.
    DATA t459 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t459.
    DATA(t460) = abap_true.
    IF t460 = abap_true.
      DATA t461 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t461.
      DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t462.
      DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t463.
      DATA(t464) = abap_true.
      IF t464 = abap_true.
        DATA(t465) = |OpenABAP|.
        DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t466->has = abap_true.
        t466->value = t465.
        t463 = t466.
      ELSE.
        DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t467.
        t463 = t467.
      ENDIF.
      t462 = t463.
      t461 = NEW zcl_lnt_iver_options( i_also = t462 ).
      CREATE OBJECT t461->zlnt_view_ownkeys_b0e8086400eb.
      t461->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t468.
      IF t461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t468 ).
      ENDIF.
      CREATE OBJECT t461->zlnt_json_ownkeys_70e5fd461788.
      t461->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t469) = |also|.
      DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t470.
      IF t461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t469 p1 = t470 ).
      ENDIF.
      t459 = t461.
    ELSE.
      DATA t471 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t471.
      t459 = t471.
    ENDIF.
    t449 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t450 i_first = t457 i_opts = t459 ).
    CLEAR t448.
    IF t449 IS BOUND.
      DATA t472 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t472.
      DATA t473 TYPE REF TO object.
      CLEAR t473.
      CLEAR t472.
      t473 = t449.
      TRY.
          t448 ?= t473.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t448 IS NOT BOUND.
        TRY.
            t472 ?= t449.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t472 IS BOUND.
          t448 = t472->source( ).
        ENDIF.
        IF t448 IS NOT BOUND.
          CREATE OBJECT t448.
          t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t448->oval = t449.
        ENDIF.
      ENDIF.
    ENDIF.
    t447->load( ).
    APPEND t448 TO t447->items.
    t447->save( ).
    DATA(t474) = t438.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    DATA t476 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA(t478) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    CLEAR t477.
    IF t478 IS BOUND.
      CREATE OBJECT t477.
      t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t477->cval = t478.
    ENDIF.
    t476 = zcl_lnt_st_combi_module=>opt_prio( i_first = t477 ).
    CLEAR t475.
    IF t476 IS BOUND.
      DATA t479 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t479.
      DATA t480 TYPE REF TO object.
      CLEAR t480.
      CLEAR t479.
      t480 = t476.
      TRY.
          t475 ?= t480.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t475 IS NOT BOUND.
        TRY.
            t479 ?= t476.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t479 IS BOUND.
          t475 = t479->source( ).
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
    DATA(t481) = t438.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA t483 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t483.
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t484.
    DATA(t485) = t1.
    CLEAR t484.
    IF t485 IS BOUND.
      DATA t486 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t486.
      DATA t487 TYPE REF TO object.
      CLEAR t487.
      CLEAR t486.
      t487 = t485.
      TRY.
          t484 ?= t487.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t484 IS NOT BOUND.
        TRY.
            t486 ?= t485.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t486 IS BOUND.
          t484 = t486->source( ).
        ENDIF.
        IF t484 IS NOT BOUND.
          CREATE OBJECT t484.
          t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t484->oval = t485.
        ENDIF.
      ENDIF.
    ENDIF.
    t483 = zcl_lnt_st_combi_module=>opt_prio( i_first = t484 ).
    CLEAR t482.
    IF t483 IS BOUND.
      DATA t488 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t488.
      DATA t489 TYPE REF TO object.
      CLEAR t489.
      CLEAR t488.
      t489 = t483.
      TRY.
          t482 ?= t489.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t482 IS NOT BOUND.
        TRY.
            t488 ?= t483.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t488 IS BOUND.
          t482 = t488->source( ).
        ENDIF.
        IF t482 IS NOT BOUND.
          CREATE OBJECT t482.
          t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t482->oval = t483.
        ENDIF.
      ENDIF.
    ENDIF.
    t481->load( ).
    APPEND t482 TO t481->items.
    t481->save( ).
    DATA(t490) = t438.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t491.
    DATA(t492) = t64.
    CLEAR t491.
    IF t492 IS BOUND.
      DATA t493 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t493.
      DATA t494 TYPE REF TO object.
      CLEAR t494.
      CLEAR t493.
      t494 = t492.
      TRY.
          t491 ?= t494.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t491 IS NOT BOUND.
        TRY.
            t493 ?= t492.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t493 IS BOUND.
          t491 = t493->source( ).
        ENDIF.
        IF t491 IS NOT BOUND.
          CREATE OBJECT t491.
          t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t491->oval = t492.
        ENDIF.
      ENDIF.
    ENDIF.
    t490->load( ).
    APPEND t491 TO t490->items.
    t490->save( ).
    DATA t495 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t495.
    DATA(t496) = t428.
    DATA(t497) = t431.
    DATA(t498) = t438.
    t495 = zcl_lnt_st_combi_module=>seq( i_first = t496 i_second = t497 i_rest = t498 ).
    t427 = t495.
    t426 = t427.
    DATA t499 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t499.
    DATA t500 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t500.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA(t505) = |DISTINCT|.
    CLEAR t504.
    CREATE OBJECT t504.
    t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t504->sval = t505.
    t503 = zcl_lnt_st_combi_module=>opt_prio( i_first = t504 ).
    CLEAR t502.
    IF t503 IS BOUND.
      DATA t506 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t506.
      DATA t507 TYPE REF TO object.
      CLEAR t507.
      CLEAR t506.
      t507 = t503.
      TRY.
          t502 ?= t507.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t502 IS NOT BOUND.
        TRY.
            t506 ?= t503.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t506 IS BOUND.
          t502 = t506->source( ).
        ENDIF.
        IF t502 IS NOT BOUND.
          CREATE OBJECT t502.
          t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t502->oval = t503.
        ENDIF.
      ENDIF.
    ENDIF.
    t501 = t502.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA(t510) = zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3.
    CLEAR t509.
    IF t510 IS BOUND.
      CREATE OBJECT t509.
      t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t509->cval = t510.
    ENDIF.
    t508 = t509.
    DATA t511 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t511.
    DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t512.
    CREATE OBJECT t512.
    t511 = t512.
    DATA(t513) = t511.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA(t515) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    CLEAR t514.
    IF t515 IS BOUND.
      CREATE OBJECT t514.
      t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t514->cval = t515.
    ENDIF.
    t513->load( ).
    APPEND t514 TO t513->items.
    t513->save( ).
    DATA(t516) = t511.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t517.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t518.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t519.
    DATA(t520) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t519.
    IF t520 IS BOUND.
      CREATE OBJECT t519.
      t519->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t519->cval = t520.
    ENDIF.
    t518 = zcl_lnt_st_combi_module=>opt_prio( i_first = t519 ).
    CLEAR t517.
    IF t518 IS BOUND.
      DATA t521 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t521.
      DATA t522 TYPE REF TO object.
      CLEAR t522.
      CLEAR t521.
      t522 = t518.
      TRY.
          t517 ?= t522.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t517 IS NOT BOUND.
        TRY.
            t521 ?= t518.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t521 IS BOUND.
          t517 = t521->source( ).
        ENDIF.
        IF t517 IS NOT BOUND.
          CREATE OBJECT t517.
          t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t517->oval = t518.
        ENDIF.
      ENDIF.
    ENDIF.
    t516->load( ).
    APPEND t517 TO t516->items.
    t516->save( ).
    DATA(t523) = t511.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t524.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t525.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA(t527) = t15.
    CLEAR t526.
    CREATE OBJECT t526.
    t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t526->sval = t527.
    t525 = zcl_lnt_st_combi_module=>opt_prio( i_first = t526 ).
    CLEAR t524.
    IF t525 IS BOUND.
      DATA t528 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t528.
      DATA t529 TYPE REF TO object.
      CLEAR t529.
      CLEAR t528.
      t529 = t525.
      TRY.
          t524 ?= t529.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t524 IS NOT BOUND.
        TRY.
            t528 ?= t525.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t528 IS BOUND.
          t524 = t528->source( ).
        ENDIF.
        IF t524 IS NOT BOUND.
          CREATE OBJECT t524.
          t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t524->oval = t525.
        ENDIF.
      ENDIF.
    ENDIF.
    t523->load( ).
    APPEND t524 TO t523->items.
    t523->save( ).
    DATA(t530) = t511.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA t532 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t532.
    DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t533.
    DATA(t534) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    CLEAR t533.
    IF t534 IS BOUND.
      CREATE OBJECT t533.
      t533->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t533->cval = t534.
    ENDIF.
    t532 = zcl_lnt_st_combi_module=>opt_prio( i_first = t533 ).
    CLEAR t531.
    IF t532 IS BOUND.
      DATA t535 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t535.
      DATA t536 TYPE REF TO object.
      CLEAR t536.
      CLEAR t535.
      t536 = t532.
      TRY.
          t531 ?= t536.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t531 IS NOT BOUND.
        TRY.
            t535 ?= t532.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t535 IS BOUND.
          t531 = t535->source( ).
        ENDIF.
        IF t531 IS NOT BOUND.
          CREATE OBJECT t531.
          t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t531->oval = t532.
        ENDIF.
      ENDIF.
    ENDIF.
    t530->load( ).
    APPEND t531 TO t530->items.
    t530->save( ).
    DATA(t537) = t511.
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t538.
    DATA t539 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t539.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA(t541) = t1.
    CLEAR t540.
    IF t541 IS BOUND.
      DATA t542 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t542.
      DATA t543 TYPE REF TO object.
      CLEAR t543.
      CLEAR t542.
      t543 = t541.
      TRY.
          t540 ?= t543.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t540 IS NOT BOUND.
        TRY.
            t542 ?= t541.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t542 IS BOUND.
          t540 = t542->source( ).
        ENDIF.
        IF t540 IS NOT BOUND.
          CREATE OBJECT t540.
          t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t540->oval = t541.
        ENDIF.
      ENDIF.
    ENDIF.
    t539 = zcl_lnt_st_combi_module=>opt_prio( i_first = t540 ).
    CLEAR t538.
    IF t539 IS BOUND.
      DATA t544 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t544.
      DATA t545 TYPE REF TO object.
      CLEAR t545.
      CLEAR t544.
      t545 = t539.
      TRY.
          t538 ?= t545.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t538 IS NOT BOUND.
        TRY.
            t544 ?= t539.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t544 IS BOUND.
          t538 = t544->source( ).
        ENDIF.
        IF t538 IS NOT BOUND.
          CREATE OBJECT t538.
          t538->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t538->oval = t539.
        ENDIF.
      ENDIF.
    ENDIF.
    t537->load( ).
    APPEND t538 TO t537->items.
    t537->save( ).
    DATA(t546) = t511.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA(t548) = t64.
    CLEAR t547.
    IF t548 IS BOUND.
      DATA t549 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t549.
      DATA t550 TYPE REF TO object.
      CLEAR t550.
      CLEAR t549.
      t550 = t548.
      TRY.
          t547 ?= t550.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t547 IS NOT BOUND.
        TRY.
            t549 ?= t548.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t549 IS BOUND.
          t547 = t549->source( ).
        ENDIF.
        IF t547 IS NOT BOUND.
          CREATE OBJECT t547.
          t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t547->oval = t548.
        ENDIF.
      ENDIF.
    ENDIF.
    t546->load( ).
    APPEND t547 TO t546->items.
    t546->save( ).
    DATA t551 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t551.
    DATA(t552) = t501.
    DATA(t553) = t508.
    DATA(t554) = t511.
    t551 = zcl_lnt_st_combi_module=>seq( i_first = t552 i_second = t553 i_rest = t554 ).
    t500 = t551.
    t499 = t500.
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t555.
    DATA t556 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t556.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA(t559) = t426.
    CLEAR t558.
    IF t559 IS BOUND.
      DATA t560 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t560.
      DATA t561 TYPE REF TO object.
      CLEAR t561.
      CLEAR t560.
      t561 = t559.
      TRY.
          t558 ?= t561.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t558 IS NOT BOUND.
        TRY.
            t560 ?= t559.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t560 IS BOUND.
          t558 = t560->source( ).
        ENDIF.
        IF t558 IS NOT BOUND.
          CREATE OBJECT t558.
          t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t558->oval = t559.
        ENDIF.
      ENDIF.
    ENDIF.
    t557 = t558.
    DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t562.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t563.
    DATA(t564) = t499.
    CLEAR t563.
    IF t564 IS BOUND.
      DATA t565 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t565.
      DATA t566 TYPE REF TO object.
      CLEAR t566.
      CLEAR t565.
      t566 = t564.
      TRY.
          t563 ?= t566.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t563 IS NOT BOUND.
        TRY.
            t565 ?= t564.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t565 IS BOUND.
          t563 = t565->source( ).
        ENDIF.
        IF t563 IS NOT BOUND.
          CREATE OBJECT t563.
          t563->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t563->oval = t564.
        ENDIF.
      ENDIF.
    ENDIF.
    t562 = t563.
    DATA t567 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t567.
    DATA t568 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t568.
    CREATE OBJECT t568.
    t567 = t568.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t569.
    DATA(t570) = t557.
    DATA(t571) = t562.
    DATA(t572) = t567.
    t569 = zcl_lnt_st_combi_module=>alt_prio( i_first = t570 i_second = t571 i_rest = t572 ).
    t556 = t569.
    t555 = t556.
    DATA t573 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t573.
    DATA t574 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t574.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t575.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA(t577) = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    CLEAR t576.
    IF t577 IS BOUND.
      CREATE OBJECT t576.
      t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t576->cval = t577.
    ENDIF.
    t575 = t576.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = |SELECT|.
    CLEAR t582.
    CREATE OBJECT t582.
    t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t582->sval = t583.
    t581 = t582.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t585.
    DATA(t586) = t555.
    CLEAR t585.
    IF t586 IS BOUND.
      DATA t587 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t587.
      DATA t588 TYPE REF TO object.
      CLEAR t588.
      CLEAR t587.
      t588 = t586.
      TRY.
          t585 ?= t588.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t585 IS NOT BOUND.
        TRY.
            t587 ?= t586.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t587 IS BOUND.
          t585 = t587->source( ).
        ENDIF.
        IF t585 IS NOT BOUND.
          CREATE OBJECT t585.
          t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t585->oval = t586.
        ENDIF.
      ENDIF.
    ENDIF.
    t584 = t585.
    DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t589.
    DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t590.
    CREATE OBJECT t590.
    t589 = t590.
    DATA t591 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t591.
    DATA(t592) = t581.
    DATA(t593) = t584.
    DATA(t594) = t589.
    t591 = zcl_lnt_st_combi_module=>seq( i_first = t592 i_second = t593 i_rest = t594 ).
    t580 = t591.
    CLEAR t579.
    IF t580 IS BOUND.
      DATA t595 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t595.
      DATA t596 TYPE REF TO object.
      CLEAR t596.
      CLEAR t595.
      t596 = t580.
      TRY.
          t579 ?= t596.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t579 IS NOT BOUND.
        TRY.
            t595 ?= t580.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t595 IS BOUND.
          t579 = t595->source( ).
        ENDIF.
        IF t579 IS NOT BOUND.
          CREATE OBJECT t579.
          t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t579->oval = t580.
        ENDIF.
      ENDIF.
    ENDIF.
    t578 = t579.
    DATA t597 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t597.
    DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t598.
    CREATE OBJECT t598.
    t597 = t598.
    DATA t599 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t599.
    DATA(t600) = t575.
    DATA(t601) = t578.
    DATA(t602) = t597.
    t599 = zcl_lnt_st_combi_module=>alt_prio( i_first = t600 i_second = t601 i_rest = t602 ).
    t574 = t599.
    t573 = t574.
    DATA t603 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t603.
    DATA t604 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t604.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA t606 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t606.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t607.
    DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t608.
    DATA(t609) = t372.
    CLEAR t608.
    IF t609 IS BOUND.
      DATA t610 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t610.
      DATA t611 TYPE REF TO object.
      CLEAR t611.
      CLEAR t610.
      t611 = t609.
      TRY.
          t608 ?= t611.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t608 IS NOT BOUND.
        TRY.
            t610 ?= t609.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t610 IS BOUND.
          t608 = t610->source( ).
        ENDIF.
        IF t608 IS NOT BOUND.
          CREATE OBJECT t608.
          t608->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t608->oval = t609.
        ENDIF.
      ENDIF.
    ENDIF.
    t607 = t608.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    DATA(t614) = t573.
    CLEAR t613.
    IF t614 IS BOUND.
      DATA t615 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t615.
      DATA t616 TYPE REF TO object.
      CLEAR t616.
      CLEAR t615.
      t616 = t614.
      TRY.
          t613 ?= t616.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t613 IS NOT BOUND.
        TRY.
            t615 ?= t614.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t615 IS BOUND.
          t613 = t615->source( ).
        ENDIF.
        IF t613 IS NOT BOUND.
          CREATE OBJECT t613.
          t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t613->oval = t614.
        ENDIF.
      ENDIF.
    ENDIF.
    t612 = t613.
    DATA t617 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t617.
    DATA t618 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t618.
    CREATE OBJECT t618.
    t617 = t618.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t619.
    DATA(t620) = t607.
    DATA(t621) = t612.
    DATA(t622) = t617.
    t619 = zcl_lnt_st_combi_module=>seq( i_first = t620 i_second = t621 i_rest = t622 ).
    t606 = t619.
    CLEAR t605.
    IF t606 IS BOUND.
      DATA t623 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t623.
      DATA t624 TYPE REF TO object.
      CLEAR t624.
      CLEAR t623.
      t624 = t606.
      TRY.
          t605 ?= t624.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t605 IS NOT BOUND.
        TRY.
            t623 ?= t606.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t623 IS BOUND.
          t605 = t623->source( ).
        ENDIF.
        IF t605 IS NOT BOUND.
          CREATE OBJECT t605.
          t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t605->oval = t606.
        ENDIF.
      ENDIF.
    ENDIF.
    t604 = zcl_lnt_st_combi_module=>star_prio( i_first = t605 ).
    t603 = t604.
    DATA t625 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t625.
    DATA t626 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t626.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    DATA(t629) = |SELECT|.
    CLEAR t628.
    CREATE OBJECT t628.
    t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t628->sval = t629.
    t627 = t628.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t630.
    DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t631.
    DATA t632 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t632.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t634.
    DATA(t635) = t161.
    CLEAR t634.
    IF t635 IS BOUND.
      DATA t636 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t636.
      DATA t637 TYPE REF TO object.
      CLEAR t637.
      CLEAR t636.
      t637 = t635.
      TRY.
          t634 ?= t637.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t634 IS NOT BOUND.
        TRY.
            t636 ?= t635.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t636 IS BOUND.
          t634 = t636->source( ).
        ENDIF.
        IF t634 IS NOT BOUND.
          CREATE OBJECT t634.
          t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t634->oval = t635.
        ENDIF.
      ENDIF.
    ENDIF.
    t633 = t634.
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t638.
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t639.
    DATA(t640) = t234.
    CLEAR t639.
    IF t640 IS BOUND.
      DATA t641 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t641.
      DATA t642 TYPE REF TO object.
      CLEAR t642.
      CLEAR t641.
      t642 = t640.
      TRY.
          t639 ?= t642.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t639 IS NOT BOUND.
        TRY.
            t641 ?= t640.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t641 IS BOUND.
          t639 = t641->source( ).
        ENDIF.
        IF t639 IS NOT BOUND.
          CREATE OBJECT t639.
          t639->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t639->oval = t640.
        ENDIF.
      ENDIF.
    ENDIF.
    t638 = t639.
    DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t643.
    DATA t644 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t644.
    CREATE OBJECT t644.
    t643 = t644.
    DATA t645 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t645.
    DATA(t646) = t633.
    DATA(t647) = t638.
    DATA(t648) = t643.
    t645 = zcl_lnt_st_combi_module=>alt_prio( i_first = t646 i_second = t647 i_rest = t648 ).
    t632 = t645.
    CLEAR t631.
    IF t632 IS BOUND.
      DATA t649 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t649.
      DATA t650 TYPE REF TO object.
      CLEAR t650.
      CLEAR t649.
      t650 = t632.
      TRY.
          t631 ?= t650.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t631 IS NOT BOUND.
        TRY.
            t649 ?= t632.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t649 IS BOUND.
          t631 = t649->source( ).
        ENDIF.
        IF t631 IS NOT BOUND.
          CREATE OBJECT t631.
          t631->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t631->oval = t632.
        ENDIF.
      ENDIF.
    ENDIF.
    t630 = t631.
    DATA t651 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t651.
    DATA t652 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t652.
    CREATE OBJECT t652.
    t651 = t652.
    DATA t653 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t653.
    DATA(t654) = t627.
    DATA(t655) = t630.
    DATA(t656) = t651.
    t653 = zcl_lnt_st_combi_module=>seq( i_first = t654 i_second = t655 i_rest = t656 ).
    t626 = t653.
    t625 = t626.
    DATA t657 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t657.
    DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t658.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    DATA(t660) = t625.
    CLEAR t659.
    IF t660 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t661.
      DATA t662 TYPE REF TO object.
      CLEAR t662.
      CLEAR t661.
      t662 = t660.
      TRY.
          t659 ?= t662.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t659 IS NOT BOUND.
        TRY.
            t661 ?= t660.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t659 = t661->source( ).
        ENDIF.
        IF t659 IS NOT BOUND.
          CREATE OBJECT t659.
          t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t659->oval = t660.
        ENDIF.
      ENDIF.
    ENDIF.
    t658 = t659.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t663.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t664.
    DATA(t665) = t603.
    CLEAR t664.
    IF t665 IS BOUND.
      DATA t666 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t666.
      DATA t667 TYPE REF TO object.
      CLEAR t667.
      CLEAR t666.
      t667 = t665.
      TRY.
          t664 ?= t667.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t664 IS NOT BOUND.
        TRY.
            t666 ?= t665.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t666 IS BOUND.
          t664 = t666->source( ).
        ENDIF.
        IF t664 IS NOT BOUND.
          CREATE OBJECT t664.
          t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t664->oval = t665.
        ENDIF.
      ENDIF.
    ENDIF.
    t663 = t664.
    DATA t668 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t668.
    DATA t669 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t669.
    CREATE OBJECT t669.
    t668 = t669.
    DATA t670 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t670.
    DATA(t671) = t658.
    DATA(t672) = t663.
    DATA(t673) = t668.
    t670 = zcl_lnt_st_combi_module=>seq( i_first = t671 i_second = t672 i_rest = t673 ).
    t657 = t670.
    result = t657.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49.
  ENDMETHOD.
ENDCLASS.
