* TS: src/abap/2_statements/expressions/sql_order_by.ts:8:1 SQLOrderBy
CLASS zcl_lnt_st_sql_order_by DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_order_by IMPLEMENTATION.
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
    DATA(t5) = |ASCENDING|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |DESCENDING|.
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
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA(t12) = t3.
    DATA(t13) = t6.
    DATA(t14) = t9.
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t20.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t20 = zcl_lnt_version_module=>release_b8cd.
    DATA(t21) = |v778|.
    t19 = t20->get( p0 = t21 ).
    t18 = t19.
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      CLEAR t22.
      t23 = t18.
      TRY.
          t17 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t22 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t17 = t22->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = |NULLS|.
    CLEAR t27.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = |FIRST|.
    CLEAR t33.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = |LAST|.
    CLEAR t36.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    CREATE OBJECT t39.
    t38 = t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA(t41) = t32.
    DATA(t42) = t35.
    DATA(t43) = t38.
    t40 = zcl_lnt_st_combi_module=>alt( i_first = t41 i_second = t42 i_rest = t43 ).
    t31 = t40.
    CLEAR t30.
    IF t31 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t44.
      DATA t45 TYPE REF TO object.
      CLEAR t45.
      CLEAR t44.
      t45 = t31.
      TRY.
          t30 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t44 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t30 = t44->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    t29 = t30.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    CREATE OBJECT t47.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA(t49) = t26.
    DATA(t50) = t29.
    DATA(t51) = t46.
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t50 i_rest = t51 ).
    t25 = t48.
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      CLEAR t52.
      t53 = t25.
      TRY.
          t24 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t52 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t24 = t52->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t54.
    t16 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t17 i_first = t24 i_opts = t54 ).
    t15 = t16.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t63.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t63 = zcl_lnt_version_module=>release_b8cd.
    DATA(t64) = |v789|.
    t62 = t63->get( p0 = t64 ).
    t61 = t62.
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      CLEAR t65.
      t66 = t61.
      TRY.
          t60 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t65 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t60 = t65->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t67.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t69 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t69.
    t59 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t60 i_first = t67 i_opts = t69 ).
    CLEAR t58.
    IF t59 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      CLEAR t70.
      t71 = t59.
      TRY.
          t58 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t70 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t58 = t70->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    t57 = t58.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t73.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    CREATE OBJECT t76.
    t75 = t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA(t78) = t57.
    DATA(t79) = t72.
    DATA(t80) = t75.
    t77 = zcl_lnt_st_combi_module=>alt_prio( i_first = t78 i_second = t79 i_rest = t80 ).
    t56 = t77.
    t55 = t56.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = t55.
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
    t85 = t86.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = t1.
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
    t92 = zcl_lnt_st_combi_module=>opt( i_first = t93 ).
    CLEAR t91.
    IF t92 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t92.
      TRY.
          t91 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t97 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t91 = t97->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t90 = t91.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    CREATE OBJECT t100.
    t99 = t100.
    DATA(t101) = t99.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = t15.
    CLEAR t104.
    IF t105 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t106.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      CLEAR t106.
      t107 = t105.
      TRY.
          t104 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t106 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t104 = t106->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    t103 = zcl_lnt_st_combi_module=>opt( i_first = t104 ).
    CLEAR t102.
    IF t103 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t108.
      DATA t109 TYPE REF TO object.
      CLEAR t109.
      CLEAR t108.
      t109 = t103.
      TRY.
          t102 ?= t109.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t108 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t102 = t108->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t101->load( ).
    APPEND t102 TO t101->items.
    t101->save( ).
    DATA(t110) = t99.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = |,|.
    CLEAR t113.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = t114.
    t112 = zcl_lnt_st_combi_module=>opt( i_first = t113 ).
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
    t110->load( ).
    APPEND t111 TO t110->items.
    t110->save( ).
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA(t118) = t85.
    DATA(t119) = t90.
    DATA(t120) = t99.
    t117 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t119 i_rest = t120 ).
    t84 = t117.
    CLEAR t83.
    IF t84 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t121.
      DATA t122 TYPE REF TO object.
      CLEAR t122.
      CLEAR t121.
      t122 = t84.
      TRY.
          t83 ?= t122.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t121 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t83 = t121->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t82 = zcl_lnt_st_combi_module=>plus( i_first = t83 ).
    t81 = t82.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = |ORDER BY|.
    CLEAR t126.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = t127.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = |PRIMARY KEY|.
    CLEAR t132.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = t133.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t135.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t138.
    CREATE OBJECT t138.
    t137 = t138.
    DATA(t139) = t137.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = t81.
    CLEAR t140.
    IF t141 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t142.
      DATA t143 TYPE REF TO object.
      CLEAR t143.
      CLEAR t142.
      t143 = t141.
      TRY.
          t140 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t142 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t140 = t142->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t140 TO t139->items.
    t139->save( ).
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA(t145) = t131.
    DATA(t146) = t134.
    DATA(t147) = t137.
    t144 = zcl_lnt_st_combi_module=>alt_prio( i_first = t145 i_second = t146 i_rest = t147 ).
    t130 = t144.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t148.
      DATA t149 TYPE REF TO object.
      CLEAR t149.
      CLEAR t148.
      t149 = t130.
      TRY.
          t129 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t148 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t129 = t148->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t128 = t129.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t151.
    CREATE OBJECT t151.
    t150 = t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA(t153) = t125.
    DATA(t154) = t128.
    DATA(t155) = t150.
    t152 = zcl_lnt_st_combi_module=>seq( i_first = t153 i_second = t154 i_rest = t155 ).
    t124 = t152.
    t123 = t124.
    DATA(t156) = t123.
    result = t156.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
  ENDMETHOD.
ENDCLASS.
