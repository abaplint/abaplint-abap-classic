* TS: src/abap/2_statements/expressions/sql_client.ts:8:1 SQLClient
CLASS zcl_lnt_sql_client DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_client IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t6.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd.
    DATA(t7) = |v740sp05|.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t4.
      TRY.
          t3 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t8 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t3 = t8->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t13.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d285_443a2a1b82f8.
    CLEAR t19.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = |,|.
    CLEAR t27.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d285_443a2a1b82f8.
    CLEAR t30.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = t26.
    DATA(t36) = t29.
    DATA(t37) = t32.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t25 = t34.
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t25.
      TRY.
          t24 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t38 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t24 = t38->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    t23 = zcl_lnt_st_combi_module=>star_prio( i_first = t24 ).
    CLEAR t22.
    IF t23 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      CLEAR t40.
      t41 = t23.
      TRY.
          t22 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t40 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t22 = t40->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    t21 = t22.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    CREATE OBJECT t43.
    t42 = t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA(t45) = t18.
    DATA(t46) = t21.
    DATA(t47) = t42.
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t17 = t44.
    CLEAR t16.
    IF t17 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      CLEAR t48.
      t49 = t17.
      TRY.
          t16 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t48 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t16 = t48->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t15 = t16.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    CREATE OBJECT t51.
    t50 = t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA(t53) = t12.
    DATA(t54) = t15.
    DATA(t55) = t50.
    t52 = zcl_lnt_st_combi_module=>alt( i_first = t53 i_second = t54 i_rest = t55 ).
    t11 = t52.
    CLEAR t10.
    IF t11 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t11.
      TRY.
          t10 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t56 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t10 = t56->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t58.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t58 ).
    t1 = t2.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA(t61) = |KeyUser|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA(t67) = |Cloud|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = |CLIENT SPECIFIED|.
    CLEAR t71.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = t72.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = t1.
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
    t75 = zcl_lnt_st_combi_module=>opt_prio( i_first = t76 ).
    CLEAR t74.
    IF t75 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t75.
      TRY.
          t74 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t80 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t74 = t80->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t73 = t74.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    CREATE OBJECT t83.
    t82 = t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA(t85) = t70.
    DATA(t86) = t73.
    DATA(t87) = t82.
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t86 i_rest = t87 ).
    t69 = t84.
    CLEAR t68.
    IF t69 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t88.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      CLEAR t88.
      t89 = t69.
      TRY.
          t68 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t88 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t68 = t88->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t66 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t67 i_first = t68 ).
    CLEAR t65.
    IF t66 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t90.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      CLEAR t90.
      t91 = t66.
      TRY.
          t65 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t90 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t65 = t90->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    t64 = t65.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = |USING|.
    CLEAR t96.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t105.
    DATA t106 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t107.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t107 = zcl_lnt_version_module=>release_b8cd.
    DATA(t108) = |v740sp05|.
    t106 = t107->get( p0 = t108 ).
    t105 = t106.
    CLEAR t104.
    IF t105 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t109.
      DATA t110 TYPE REF TO object.
      CLEAR t110.
      CLEAR t109.
      t110 = t105.
      TRY.
          t104 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t109 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t104 = t109->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = |CLIENT|.
    CLEAR t114.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = t115.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10.
    CLEAR t117.
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116 = t117.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t120.
    CREATE OBJECT t120.
    t119 = t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA(t122) = t113.
    DATA(t123) = t116.
    DATA(t124) = t119.
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t122 i_second = t123 i_rest = t124 ).
    t112 = t121.
    CLEAR t111.
    IF t112 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t125.
      DATA t126 TYPE REF TO object.
      CLEAR t126.
      CLEAR t125.
      t126 = t112.
      TRY.
          t111 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t125 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t111 = t125->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t127.
    t103 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t104 i_first = t111 i_opts = t127 ).
    CLEAR t102.
    IF t103 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t128.
      DATA t129 TYPE REF TO object.
      CLEAR t129.
      CLEAR t128.
      t129 = t103.
      TRY.
          t102 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t128 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t102 = t128->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t101 = t102.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t134.
    DATA t135 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t136.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t136 = zcl_lnt_version_module=>release_b8cd.
    DATA(t137) = |v754|.
    t135 = t136->get( p0 = t137 ).
    t134 = t135.
    CLEAR t133.
    IF t134 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t138.
      DATA t139 TYPE REF TO object.
      CLEAR t139.
      CLEAR t138.
      t139 = t134.
      TRY.
          t133 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t138 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t133 = t138->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = |CLIENTS IN|.
    CLEAR t143.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10.
    CLEAR t149.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = |T000|.
    CLEAR t152.
    CREATE OBJECT t152.
    t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t152->sval = t153.
    t151 = t152.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t155.
    CREATE OBJECT t155.
    t154 = t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA(t157) = t148.
    DATA(t158) = t151.
    DATA(t159) = t154.
    t156 = zcl_lnt_st_combi_module=>alt( i_first = t157 i_second = t158 i_rest = t159 ).
    t147 = t156.
    CLEAR t146.
    IF t147 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t160.
      DATA t161 TYPE REF TO object.
      CLEAR t161.
      CLEAR t160.
      t161 = t147.
      TRY.
          t146 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t160 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t146 = t160->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    t145 = t146.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = t142.
    DATA(t166) = t145.
    DATA(t167) = t162.
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t166 i_rest = t167 ).
    t141 = t164.
    CLEAR t140.
    IF t141 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t168.
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      CLEAR t168.
      t169 = t141.
      TRY.
          t140 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t168 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t140 = t168->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t170 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t170.
    t132 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t133 i_first = t140 i_opts = t170 ).
    CLEAR t131.
    IF t132 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t171.
      DATA t172 TYPE REF TO object.
      CLEAR t172.
      CLEAR t171.
      t172 = t132.
      TRY.
          t131 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t171 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t131 = t171->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t130 = t131.
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
    DATA t179 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t179.
    DATA t180 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t181.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t181 = zcl_lnt_version_module=>release_b8cd.
    DATA(t182) = |v754|.
    t180 = t181->get( p0 = t182 ).
    t179 = t180.
    CLEAR t178.
    IF t179 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t183.
      DATA t184 TYPE REF TO object.
      CLEAR t184.
      CLEAR t183.
      t184 = t179.
      TRY.
          t178 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t183 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t178 = t183->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = |ALL CLIENTS|.
    CLEAR t185.
    CREATE OBJECT t185.
    t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t185->sval = t186.
    DATA t187 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t187.
    t177 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t178 i_first = t185 i_opts = t187 ).
    CLEAR t176.
    IF t177 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t188.
      DATA t189 TYPE REF TO object.
      CLEAR t189.
      CLEAR t188.
      t189 = t177.
      TRY.
          t176 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t188 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t176 = t188->source( ).
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
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA(t191) = t101.
    DATA(t192) = t130.
    DATA(t193) = t173.
    t190 = zcl_lnt_st_combi_module=>alt( i_first = t191 i_second = t192 i_rest = t193 ).
    t100 = t190.
    CLEAR t99.
    IF t100 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t194.
      DATA t195 TYPE REF TO object.
      CLEAR t195.
      CLEAR t194.
      t195 = t100.
      TRY.
          t99 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t194 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t99 = t194->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t98 = t99.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA(t199) = t95.
    DATA(t200) = t98.
    DATA(t201) = t196.
    t198 = zcl_lnt_st_combi_module=>seq( i_first = t199 i_second = t200 i_rest = t201 ).
    t94 = t198.
    CLEAR t93.
    IF t94 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t202.
      DATA t203 TYPE REF TO object.
      CLEAR t203.
      CLEAR t202.
      t203 = t94.
      TRY.
          t93 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t202 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t93 = t202->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t92 = t93.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t205.
    CREATE OBJECT t205.
    t204 = t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA(t207) = t64.
    DATA(t208) = t92.
    DATA(t209) = t204.
    t206 = zcl_lnt_st_combi_module=>alt( i_first = t207 i_second = t208 i_rest = t209 ).
    t63 = t206.
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t210.
      DATA t211 TYPE REF TO object.
      CLEAR t211.
      CLEAR t210.
      t211 = t63.
      TRY.
          t62 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t210 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t62 = t210->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t61 i_first = t62 ).
    t59 = t60.
    DATA(t212) = t59.
    result = t212.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
  ENDMETHOD.
ENDCLASS.
