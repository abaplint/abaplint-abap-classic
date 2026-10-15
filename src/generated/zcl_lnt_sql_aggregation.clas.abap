* TS: src/abap/2_statements/expressions/sql_aggregation.ts:12:1 SQLAggregation
CLASS zcl_lnt_sql_aggregation DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_aggregation IMPLEMENTATION.
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
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t9.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t9 = zcl_lnt_version_module=>release_b8cd.
    DATA(t10) = |v740sp08|.
    t8 = t9->get( p0 = t10 ).
    t7 = t8.
    CLEAR t6.
    IF t7 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t11.
      DATA t12 TYPE REF TO object.
      CLEAR t12.
      CLEAR t11.
      t12 = t7.
      TRY.
          t6 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t11 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t6 = t11->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t13.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t15.
    t5 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t6 i_first = t13 i_opts = t15 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      CLEAR t16.
      t17 = t5.
      TRY.
          t4 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t16 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t4 = t16->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t19.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    CREATE OBJECT t22.
    t21 = t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA(t24) = t3.
    DATA(t25) = t18.
    DATA(t26) = t21.
    t23 = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t25 i_rest = t26 ).
    t2 = t23.
    t1 = t2.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t31 = zcl_lnt_st_combi_module=>tok( i_t = t32 ).
    CLEAR t30.
    IF t31 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      CLEAR t33.
      t34 = t31.
      TRY.
          t30 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t33 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t30 = t33->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    t29 = t30.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t37 = zcl_lnt_st_combi_module=>tok( i_t = t38 ).
    CLEAR t36.
    IF t37 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      CLEAR t39.
      t40 = t37.
      TRY.
          t36 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t39 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t36 = t39->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    t35 = t36.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    CREATE OBJECT t42.
    t41 = t42.
    DATA(t43) = t41.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t45 = zcl_lnt_st_combi_module=>tok( i_t = t46 ).
    CLEAR t44.
    IF t45 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t47.
      DATA t48 TYPE REF TO object.
      CLEAR t48.
      CLEAR t47.
      t48 = t45.
      TRY.
          t44 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t47 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t44 = t47->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t43->load( ).
    APPEND t44 TO t43->items.
    t43->save( ).
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA(t50) = t29.
    DATA(t51) = t35.
    DATA(t52) = t41.
    t49 = zcl_lnt_st_combi_module=>alt_prio( i_first = t50 i_second = t51 i_rest = t52 ).
    t28 = t49.
    t27 = t28.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t57 = zcl_lnt_st_combi_module=>tok( i_t = t58 ).
    CLEAR t56.
    IF t57 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      CLEAR t59.
      t60 = t57.
      TRY.
          t56 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t59 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t56 = t59->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = t56.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t62.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    CREATE OBJECT t65.
    t64 = t65.
    DATA(t66) = t64.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = |,|.
    CLEAR t67.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = t68.
    t66->load( ).
    APPEND t67 TO t66->items.
    t66->save( ).
    DATA(t69) = t64.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t70.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    t69->load( ).
    APPEND t70 TO t69->items.
    t69->save( ).
    DATA(t72) = t64.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t74 = zcl_lnt_st_combi_module=>tok( i_t = t75 ).
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      CLEAR t76.
      t77 = t74.
      TRY.
          t73 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t76 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t73 = t76->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72->load( ).
    APPEND t73 TO t72->items.
    t72->save( ).
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA(t79) = t55.
    DATA(t80) = t61.
    DATA(t81) = t64.
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t80 i_rest = t81 ).
    t54 = t78.
    t53 = t54.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = |DEC|.
    CLEAR t88.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = t53.
    CLEAR t91.
    IF t92 IS BOUND.
      DATA t93 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t93.
      DATA t94 TYPE REF TO object.
      CLEAR t94.
      CLEAR t93.
      t94 = t92.
      TRY.
          t91 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t93 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t93 IS BOUND.
          t91 = t93->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t90 = t91.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    CREATE OBJECT t96.
    t95 = t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA(t98) = t87.
    DATA(t99) = t90.
    DATA(t100) = t95.
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t99 i_rest = t100 ).
    t86 = t97.
    CLEAR t85.
    IF t86 IS BOUND.
      DATA t101 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t101.
      DATA t102 TYPE REF TO object.
      CLEAR t102.
      CLEAR t101.
      t102 = t86.
      TRY.
          t85 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t101 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS BOUND.
          t85 = t101->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t84 = t85.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = |CURR|.
    CLEAR t107.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106 = t107.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = t53.
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
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t115.
    CREATE OBJECT t115.
    t114 = t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA(t117) = t106.
    DATA(t118) = t109.
    DATA(t119) = t114.
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t118 i_rest = t119 ).
    t105 = t116.
    CLEAR t104.
    IF t105 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      CLEAR t120.
      t121 = t105.
      TRY.
          t104 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t120 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t104 = t120->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    t103 = t104.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    CREATE OBJECT t123.
    t122 = t123.
    DATA(t124) = t122.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = |QUAN|.
    CLEAR t128.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = t53.
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
    DATA(t138) = t127.
    DATA(t139) = t130.
    DATA(t140) = t135.
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t139 i_rest = t140 ).
    t126 = t137.
    CLEAR t125.
    IF t126 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t141.
      DATA t142 TYPE REF TO object.
      CLEAR t142.
      CLEAR t141.
      t142 = t126.
      TRY.
          t125 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t141 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t125 = t141->source( ).
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
    DATA(t143) = t122.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = |D16N|.
    CLEAR t144.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = t145.
    t143->load( ).
    APPEND t144 TO t143->items.
    t143->save( ).
    DATA(t146) = t122.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = |D34N|.
    CLEAR t147.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = t148.
    t146->load( ).
    APPEND t147 TO t146->items.
    t146->save( ).
    DATA(t149) = t122.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = |FLTP|.
    CLEAR t150.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    t149->load( ).
    APPEND t150 TO t149->items.
    t149->save( ).
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA(t153) = t84.
    DATA(t154) = t103.
    DATA(t155) = t122.
    t152 = zcl_lnt_st_combi_module=>alt_prio( i_first = t153 i_second = t154 i_rest = t155 ).
    t83 = t152.
    t82 = t83.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = |COUNT|.
    CLEAR t159.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = t160.
    t158 = t159.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t163 = zcl_lnt_sql_aggregation_module=>lparen.
    CLEAR t162.
    IF t163 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t164.
      DATA t165 TYPE REF TO object.
      CLEAR t165.
      CLEAR t164.
      t165 = t163.
      TRY.
          t162 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t161 = t162.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t167.
    CREATE OBJECT t167.
    t166 = t167.
    DATA(t168) = t166.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = |DISTINCT|.
    CLEAR t171.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = zcl_lnt_st_combi_module=>opt_prio( i_first = t171 ).
    CLEAR t169.
    IF t170 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t173.
      DATA t174 TYPE REF TO object.
      CLEAR t174.
      CLEAR t173.
      t174 = t170.
      TRY.
          t169 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t169 IS NOT BOUND.
        TRY.
            t173 ?= t170.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t169 = t173->source( ).
        ENDIF.
        IF t169 IS NOT BOUND.
          CREATE OBJECT t169.
          t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t169->oval = t170.
        ENDIF.
      ENDIF.
    ENDIF.
    t168->load( ).
    APPEND t169 TO t168->items.
    t168->save( ).
    DATA(t175) = t166.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = |*|.
    CLEAR t179.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = t180.
    t178 = t179.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = t1.
    CLEAR t182.
    IF t183 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t184.
      DATA t185 TYPE REF TO object.
      CLEAR t185.
      CLEAR t184.
      t185 = t183.
      TRY.
          t182 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t181 = t182.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t187.
    CREATE OBJECT t187.
    t186 = t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA(t189) = t178.
    DATA(t190) = t181.
    DATA(t191) = t186.
    t188 = zcl_lnt_st_combi_module=>alt_prio( i_first = t189 i_second = t190 i_rest = t191 ).
    t177 = t188.
    CLEAR t176.
    IF t177 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t192.
      DATA t193 TYPE REF TO object.
      CLEAR t193.
      CLEAR t192.
      t193 = t177.
      TRY.
          t176 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t192 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t176 = t192->source( ).
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
    DATA(t194) = t166.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t196 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t195.
    IF t196 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t197.
      DATA t198 TYPE REF TO object.
      CLEAR t198.
      CLEAR t197.
      t198 = t196.
      TRY.
          t195 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t195 IS NOT BOUND.
        TRY.
            t197 ?= t196.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t195 = t197->source( ).
        ENDIF.
        IF t195 IS NOT BOUND.
          CREATE OBJECT t195.
          t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t195->oval = t196.
        ENDIF.
      ENDIF.
    ENDIF.
    t194->load( ).
    APPEND t195 TO t194->items.
    t194->save( ).
    DATA(t199) = t166.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t202.
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t202->cval = t203.
    ENDIF.
    t201 = zcl_lnt_st_combi_module=>opt_prio( i_first = t202 ).
    CLEAR t200.
    IF t201 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t204.
      DATA t205 TYPE REF TO object.
      CLEAR t205.
      CLEAR t204.
      t205 = t201.
      TRY.
          t200 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t204 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t200 = t204->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t199->load( ).
    APPEND t200 TO t199->items.
    t199->save( ).
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA(t207) = t158.
    DATA(t208) = t161.
    DATA(t209) = t166.
    t206 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t208 i_rest = t209 ).
    t157 = t206.
    t156 = t157.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = |MAX|.
    CLEAR t213.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = t214.
    t212 = t213.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t217 = zcl_lnt_sql_aggregation_module=>lparen.
    CLEAR t216.
    IF t217 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t218.
      DATA t219 TYPE REF TO object.
      CLEAR t219.
      CLEAR t218.
      t219 = t217.
      TRY.
          t216 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t218 ?= t217.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t216 = t218->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t217.
        ENDIF.
      ENDIF.
    ENDIF.
    t215 = t216.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t221.
    CREATE OBJECT t221.
    t220 = t221.
    DATA(t222) = t220.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = |DISTINCT|.
    CLEAR t225.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = t226.
    t224 = zcl_lnt_st_combi_module=>opt_prio( i_first = t225 ).
    CLEAR t223.
    IF t224 IS BOUND.
      DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t227.
      DATA t228 TYPE REF TO object.
      CLEAR t228.
      CLEAR t227.
      t228 = t224.
      TRY.
          t223 ?= t228.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t227 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t227 IS BOUND.
          t223 = t227->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    t222->load( ).
    APPEND t223 TO t222->items.
    t222->save( ).
    DATA(t229) = t220.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = t1.
    CLEAR t230.
    IF t231 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t232.
      DATA t233 TYPE REF TO object.
      CLEAR t233.
      CLEAR t232.
      t233 = t231.
      TRY.
          t230 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t232 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t230 = t232->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    t229->load( ).
    APPEND t230 TO t229->items.
    t229->save( ).
    DATA(t234) = t220.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t236.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t236 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t235.
    IF t236 IS BOUND.
      DATA t237 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t237.
      DATA t238 TYPE REF TO object.
      CLEAR t238.
      CLEAR t237.
      t238 = t236.
      TRY.
          t235 ?= t238.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t237 ?= t236.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t237 IS BOUND.
          t235 = t237->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t236.
        ENDIF.
      ENDIF.
    ENDIF.
    t234->load( ).
    APPEND t235 TO t234->items.
    t234->save( ).
    DATA(t239) = t220.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA(t243) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t242.
    IF t243 IS BOUND.
      CREATE OBJECT t242.
      t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t242->cval = t243.
    ENDIF.
    t241 = zcl_lnt_st_combi_module=>opt_prio( i_first = t242 ).
    CLEAR t240.
    IF t241 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t244.
      DATA t245 TYPE REF TO object.
      CLEAR t245.
      CLEAR t244.
      t245 = t241.
      TRY.
          t240 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t244 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t240 = t244->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t239->load( ).
    APPEND t240 TO t239->items.
    t239->save( ).
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA(t247) = t212.
    DATA(t248) = t215.
    DATA(t249) = t220.
    t246 = zcl_lnt_st_combi_module=>seq( i_first = t247 i_second = t248 i_rest = t249 ).
    t211 = t246.
    t210 = t211.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = |MIN|.
    CLEAR t253.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = t254.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t257.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t257 = zcl_lnt_sql_aggregation_module=>lparen.
    CLEAR t256.
    IF t257 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t258.
      DATA t259 TYPE REF TO object.
      CLEAR t259.
      CLEAR t258.
      t259 = t257.
      TRY.
          t256 ?= t259.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t258 ?= t257.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t256 = t258->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t257.
        ENDIF.
      ENDIF.
    ENDIF.
    t255 = t256.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t261.
    CREATE OBJECT t261.
    t260 = t261.
    DATA(t262) = t260.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA(t266) = |DISTINCT|.
    CLEAR t265.
    CREATE OBJECT t265.
    t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t265->sval = t266.
    t264 = zcl_lnt_st_combi_module=>opt_prio( i_first = t265 ).
    CLEAR t263.
    IF t264 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t267.
      DATA t268 TYPE REF TO object.
      CLEAR t268.
      CLEAR t267.
      t268 = t264.
      TRY.
          t263 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t267 ?= t264.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t263 = t267->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t264.
        ENDIF.
      ENDIF.
    ENDIF.
    t262->load( ).
    APPEND t263 TO t262->items.
    t262->save( ).
    DATA(t269) = t260.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = t1.
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
    t269->load( ).
    APPEND t270 TO t269->items.
    t269->save( ).
    DATA(t274) = t260.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t276.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t276 = zcl_lnt_sql_aggregation_module=>rparen.
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
    t274->load( ).
    APPEND t275 TO t274->items.
    t274->save( ).
    DATA(t279) = t260.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t282.
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t282->cval = t283.
    ENDIF.
    t281 = zcl_lnt_st_combi_module=>opt_prio( i_first = t282 ).
    CLEAR t280.
    IF t281 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t284.
      DATA t285 TYPE REF TO object.
      CLEAR t285.
      CLEAR t284.
      t285 = t281.
      TRY.
          t280 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t280 IS NOT BOUND.
        TRY.
            t284 ?= t281.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t280 = t284->source( ).
        ENDIF.
        IF t280 IS NOT BOUND.
          CREATE OBJECT t280.
          t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t280->oval = t281.
        ENDIF.
      ENDIF.
    ENDIF.
    t279->load( ).
    APPEND t280 TO t279->items.
    t279->save( ).
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA(t287) = t252.
    DATA(t288) = t255.
    DATA(t289) = t260.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t287 i_second = t288 i_rest = t289 ).
    t251 = t286.
    t250 = t251.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA(t294) = |SUM|.
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
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t297 = zcl_lnt_sql_aggregation_module=>lparen.
    CLEAR t296.
    IF t297 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t298.
      DATA t299 TYPE REF TO object.
      CLEAR t299.
      CLEAR t298.
      t299 = t297.
      TRY.
          t296 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t298 ?= t297.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t296 = t298->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t297.
        ENDIF.
      ENDIF.
    ENDIF.
    t295 = t296.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t301.
    CREATE OBJECT t301.
    t300 = t301.
    DATA(t302) = t300.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA(t306) = |DISTINCT|.
    CLEAR t305.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = t306.
    t304 = zcl_lnt_st_combi_module=>opt_prio( i_first = t305 ).
    CLEAR t303.
    IF t304 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t307.
      DATA t308 TYPE REF TO object.
      CLEAR t308.
      CLEAR t307.
      t308 = t304.
      TRY.
          t303 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t307 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t303 = t307->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    t302->load( ).
    APPEND t303 TO t302->items.
    t302->save( ).
    DATA(t309) = t300.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = t1.
    CLEAR t310.
    IF t311 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t312.
      DATA t313 TYPE REF TO object.
      CLEAR t313.
      CLEAR t312.
      t313 = t311.
      TRY.
          t310 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t310 IS NOT BOUND.
        TRY.
            t312 ?= t311.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t310 = t312->source( ).
        ENDIF.
        IF t310 IS NOT BOUND.
          CREATE OBJECT t310.
          t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t310->oval = t311.
        ENDIF.
      ENDIF.
    ENDIF.
    t309->load( ).
    APPEND t310 TO t309->items.
    t309->save( ).
    DATA(t314) = t300.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t316.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t316 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t315.
    IF t316 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t317.
      DATA t318 TYPE REF TO object.
      CLEAR t318.
      CLEAR t317.
      t318 = t316.
      TRY.
          t315 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t317 ?= t316.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t315 = t317->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t316.
        ENDIF.
      ENDIF.
    ENDIF.
    t314->load( ).
    APPEND t315 TO t314->items.
    t314->save( ).
    DATA(t319) = t300.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t321.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t322.
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t322->cval = t323.
    ENDIF.
    t321 = zcl_lnt_st_combi_module=>opt_prio( i_first = t322 ).
    CLEAR t320.
    IF t321 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t324.
      DATA t325 TYPE REF TO object.
      CLEAR t325.
      CLEAR t324.
      t325 = t321.
      TRY.
          t320 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t324 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t320 = t324->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t321.
        ENDIF.
      ENDIF.
    ENDIF.
    t319->load( ).
    APPEND t320 TO t319->items.
    t319->save( ).
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t326.
    DATA(t327) = t292.
    DATA(t328) = t295.
    DATA(t329) = t300.
    t326 = zcl_lnt_st_combi_module=>seq( i_first = t327 i_second = t328 i_rest = t329 ).
    t291 = t326.
    t290 = t291.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = |AVG|.
    CLEAR t333.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = t334.
    t332 = t333.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t337.
    DATA(t338) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t337 = zcl_lnt_st_combi_module=>tok( i_t = t338 ).
    CLEAR t336.
    IF t337 IS BOUND.
      DATA t339 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t339.
      DATA t340 TYPE REF TO object.
      CLEAR t340.
      CLEAR t339.
      t340 = t337.
      TRY.
          t336 ?= t340.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t336 IS NOT BOUND.
        TRY.
            t339 ?= t337.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t339 IS BOUND.
          t336 = t339->source( ).
        ENDIF.
        IF t336 IS NOT BOUND.
          CREATE OBJECT t336.
          t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t336->oval = t337.
        ENDIF.
      ENDIF.
    ENDIF.
    t335 = t336.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t342.
    CREATE OBJECT t342.
    t341 = t342.
    DATA(t343) = t341.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA(t347) = |DISTINCT|.
    CLEAR t346.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = t347.
    t345 = zcl_lnt_st_combi_module=>opt_prio( i_first = t346 ).
    CLEAR t344.
    IF t345 IS BOUND.
      DATA t348 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t348.
      DATA t349 TYPE REF TO object.
      CLEAR t349.
      CLEAR t348.
      t349 = t345.
      TRY.
          t344 ?= t349.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t344 IS NOT BOUND.
        TRY.
            t348 ?= t345.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t348 IS BOUND.
          t344 = t348->source( ).
        ENDIF.
        IF t344 IS NOT BOUND.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t344->oval = t345.
        ENDIF.
      ENDIF.
    ENDIF.
    t343->load( ).
    APPEND t344 TO t343->items.
    t343->save( ).
    DATA(t350) = t341.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA(t352) = t1.
    CLEAR t351.
    IF t352 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t353.
      DATA t354 TYPE REF TO object.
      CLEAR t354.
      CLEAR t353.
      t354 = t352.
      TRY.
          t351 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t351 IS NOT BOUND.
        TRY.
            t353 ?= t352.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t351 = t353->source( ).
        ENDIF.
        IF t351 IS NOT BOUND.
          CREATE OBJECT t351.
          t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t351->oval = t352.
        ENDIF.
      ENDIF.
    ENDIF.
    t350->load( ).
    APPEND t351 TO t350->items.
    t350->save( ).
    DATA(t355) = t341.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t357.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA t361 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t361.
    DATA t362 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t363.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t363 = zcl_lnt_version_module=>release_b8cd.
    DATA(t364) = |v751|.
    t362 = t363->get( p0 = t364 ).
    t361 = t362.
    CLEAR t360.
    IF t361 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t365.
      DATA t366 TYPE REF TO object.
      CLEAR t366.
      CLEAR t365.
      t366 = t361.
      TRY.
          t360 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t365 ?= t361.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t360 = t365->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t361.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t368.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA(t371) = |AS|.
    CLEAR t370.
    CREATE OBJECT t370.
    t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t370->sval = t371.
    t369 = t370.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA(t374) = t82.
    CLEAR t373.
    IF t374 IS BOUND.
      DATA t375 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t375.
      DATA t376 TYPE REF TO object.
      CLEAR t376.
      CLEAR t375.
      t376 = t374.
      TRY.
          t373 ?= t376.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t373 IS NOT BOUND.
        TRY.
            t375 ?= t374.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t375 IS BOUND.
          t373 = t375->source( ).
        ENDIF.
        IF t373 IS NOT BOUND.
          CREATE OBJECT t373.
          t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t373->oval = t374.
        ENDIF.
      ENDIF.
    ENDIF.
    t372 = t373.
    DATA t377 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t377.
    DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t378.
    CREATE OBJECT t378.
    t377 = t378.
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t379.
    DATA(t380) = t369.
    DATA(t381) = t372.
    DATA(t382) = t377.
    t379 = zcl_lnt_st_combi_module=>seq( i_first = t380 i_second = t381 i_rest = t382 ).
    t368 = t379.
    CLEAR t367.
    IF t368 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t383.
      DATA t384 TYPE REF TO object.
      CLEAR t384.
      CLEAR t383.
      t384 = t368.
      TRY.
          t367 ?= t384.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t383 ?= t368.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t367 = t383->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t368.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t385 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t385.
    t359 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t360 i_first = t367 i_opts = t385 ).
    CLEAR t358.
    IF t359 IS BOUND.
      DATA t386 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t386.
      DATA t387 TYPE REF TO object.
      CLEAR t387.
      CLEAR t386.
      t387 = t359.
      TRY.
          t358 ?= t387.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t386 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t386 IS BOUND.
          t358 = t386->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    t357 = zcl_lnt_st_combi_module=>opt_prio( i_first = t358 ).
    CLEAR t356.
    IF t357 IS BOUND.
      DATA t388 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t388.
      DATA t389 TYPE REF TO object.
      CLEAR t389.
      CLEAR t388.
      t389 = t357.
      TRY.
          t356 ?= t389.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t388 ?= t357.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t388 IS BOUND.
          t356 = t388->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t357.
        ENDIF.
      ENDIF.
    ENDIF.
    t355->load( ).
    APPEND t356 TO t355->items.
    t355->save( ).
    DATA(t390) = t341.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = t27.
    CLEAR t391.
    IF t392 IS BOUND.
      DATA t393 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t393.
      DATA t394 TYPE REF TO object.
      CLEAR t394.
      CLEAR t393.
      t394 = t392.
      TRY.
          t391 ?= t394.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t391 IS NOT BOUND.
        TRY.
            t393 ?= t392.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t393 IS BOUND.
          t391 = t393->source( ).
        ENDIF.
        IF t391 IS NOT BOUND.
          CREATE OBJECT t391.
          t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t391->oval = t392.
        ENDIF.
      ENDIF.
    ENDIF.
    t390->load( ).
    APPEND t391 TO t390->items.
    t390->save( ).
    DATA(t395) = t341.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA(t399) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t398.
    IF t399 IS BOUND.
      CREATE OBJECT t398.
      t398->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t398->cval = t399.
    ENDIF.
    t397 = zcl_lnt_st_combi_module=>opt_prio( i_first = t398 ).
    CLEAR t396.
    IF t397 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t400.
      DATA t401 TYPE REF TO object.
      CLEAR t401.
      CLEAR t400.
      t401 = t397.
      TRY.
          t396 ?= t401.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t396 IS NOT BOUND.
        TRY.
            t400 ?= t397.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t396 = t400->source( ).
        ENDIF.
        IF t396 IS NOT BOUND.
          CREATE OBJECT t396.
          t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t396->oval = t397.
        ENDIF.
      ENDIF.
    ENDIF.
    t395->load( ).
    APPEND t396 TO t395->items.
    t395->save( ).
    DATA t402 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t402.
    DATA(t403) = t332.
    DATA(t404) = t335.
    DATA(t405) = t341.
    t402 = zcl_lnt_st_combi_module=>seq( i_first = t403 i_second = t404 i_rest = t405 ).
    t331 = t402.
    t330 = t331.
    DATA t406 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t406.
    DATA t407 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA t409 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t409.
    DATA t410 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t411.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t411 = zcl_lnt_version_module=>release_b8cd.
    DATA(t412) = |v757|.
    t410 = t411->get( p0 = t412 ).
    t409 = t410.
    CLEAR t408.
    IF t409 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t413.
      DATA t414 TYPE REF TO object.
      CLEAR t414.
      CLEAR t413.
      t414 = t409.
      TRY.
          t408 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t413 ?= t409.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t408 = t413->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t409.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t419.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA(t422) = |ROW_NUMBER|.
    CLEAR t421.
    CREATE OBJECT t421.
    t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t421->sval = t422.
    t420 = t421.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA(t425) = |RANK|.
    CLEAR t424.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = t425.
    t423 = t424.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t427.
    CREATE OBJECT t427.
    t426 = t427.
    DATA(t428) = t426.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA(t430) = |DENSE_RANK|.
    CLEAR t429.
    CREATE OBJECT t429.
    t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t429->sval = t430.
    t428->load( ).
    APPEND t429 TO t428->items.
    t428->save( ).
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA(t432) = t420.
    DATA(t433) = t423.
    DATA(t434) = t426.
    t431 = zcl_lnt_st_combi_module=>alt_prio( i_first = t432 i_second = t433 i_rest = t434 ).
    t419 = t431.
    CLEAR t418.
    IF t419 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t435.
      DATA t436 TYPE REF TO object.
      CLEAR t436.
      CLEAR t435.
      t436 = t419.
      TRY.
          t418 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t435 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t418 = t435->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    t417 = t418.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t439.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t439 = zcl_lnt_sql_aggregation_module=>lparen.
    CLEAR t438.
    IF t439 IS BOUND.
      DATA t440 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t440.
      DATA t441 TYPE REF TO object.
      CLEAR t441.
      CLEAR t440.
      t441 = t439.
      TRY.
          t438 ?= t441.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t438 IS NOT BOUND.
        TRY.
            t440 ?= t439.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t440 IS BOUND.
          t438 = t440->source( ).
        ENDIF.
        IF t438 IS NOT BOUND.
          CREATE OBJECT t438.
          t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t438->oval = t439.
        ENDIF.
      ENDIF.
    ENDIF.
    t437 = t438.
    DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t443.
    CREATE OBJECT t443.
    t442 = t443.
    DATA(t444) = t442.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA t446 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t446.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t446 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t445.
    IF t446 IS BOUND.
      DATA t447 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t447.
      DATA t448 TYPE REF TO object.
      CLEAR t448.
      CLEAR t447.
      t448 = t446.
      TRY.
          t445 ?= t448.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t445 IS NOT BOUND.
        TRY.
            t447 ?= t446.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t447 IS BOUND.
          t445 = t447->source( ).
        ENDIF.
        IF t445 IS NOT BOUND.
          CREATE OBJECT t445.
          t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t445->oval = t446.
        ENDIF.
      ENDIF.
    ENDIF.
    t444->load( ).
    APPEND t445 TO t444->items.
    t444->save( ).
    DATA(t449) = t442.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t450.
    DATA(t451) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t450.
    IF t451 IS BOUND.
      CREATE OBJECT t450.
      t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t450->cval = t451.
    ENDIF.
    t449->load( ).
    APPEND t450 TO t449->items.
    t449->save( ).
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t452.
    DATA(t453) = t417.
    DATA(t454) = t437.
    DATA(t455) = t442.
    t452 = zcl_lnt_st_combi_module=>seq( i_first = t453 i_second = t454 i_rest = t455 ).
    t416 = t452.
    CLEAR t415.
    IF t416 IS BOUND.
      DATA t456 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t456.
      DATA t457 TYPE REF TO object.
      CLEAR t457.
      CLEAR t456.
      t457 = t416.
      TRY.
          t415 ?= t457.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t415 IS NOT BOUND.
        TRY.
            t456 ?= t416.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t456 IS BOUND.
          t415 = t456->source( ).
        ENDIF.
        IF t415 IS NOT BOUND.
          CREATE OBJECT t415.
          t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t415->oval = t416.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t458 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t458.
    t407 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t408 i_first = t415 i_opts = t458 ).
    t406 = t407.
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t459.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t460.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA t462 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t462.
    DATA t463 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t463.
    DATA t464 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t464.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t464 = zcl_lnt_version_module=>release_b8cd.
    DATA(t465) = |v757|.
    t463 = t464->get( p0 = t465 ).
    t462 = t463.
    CLEAR t461.
    IF t462 IS BOUND.
      DATA t466 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t466.
      DATA t467 TYPE REF TO object.
      CLEAR t467.
      CLEAR t466.
      t467 = t462.
      TRY.
          t461 ?= t467.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t461 IS NOT BOUND.
        TRY.
            t466 ?= t462.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t466 IS BOUND.
          t461 = t466->source( ).
        ENDIF.
        IF t461 IS NOT BOUND.
          CREATE OBJECT t461.
          t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t461->oval = t462.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    DATA t469 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    DATA t472 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    DATA(t475) = |LEAD|.
    CLEAR t474.
    CREATE OBJECT t474.
    t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t474->sval = t475.
    t473 = t474.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA(t478) = |LAG|.
    CLEAR t477.
    CREATE OBJECT t477.
    t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t477->sval = t478.
    t476 = t477.
    DATA t479 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t479.
    DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t480.
    CREATE OBJECT t480.
    t479 = t480.
    DATA t481 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t481.
    DATA(t482) = t473.
    DATA(t483) = t476.
    DATA(t484) = t479.
    t481 = zcl_lnt_st_combi_module=>alt_prio( i_first = t482 i_second = t483 i_rest = t484 ).
    t472 = t481.
    CLEAR t471.
    IF t472 IS BOUND.
      DATA t485 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t485.
      DATA t486 TYPE REF TO object.
      CLEAR t486.
      CLEAR t485.
      t486 = t472.
      TRY.
          t471 ?= t486.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t471 IS NOT BOUND.
        TRY.
            t485 ?= t472.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t485 IS BOUND.
          t471 = t485->source( ).
        ENDIF.
        IF t471 IS NOT BOUND.
          CREATE OBJECT t471.
          t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t471->oval = t472.
        ENDIF.
      ENDIF.
    ENDIF.
    t470 = t471.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t487.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    DATA t489 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t489.
    DATA(t490) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t489 = zcl_lnt_st_combi_module=>tok( i_t = t490 ).
    CLEAR t488.
    IF t489 IS BOUND.
      DATA t491 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t491.
      DATA t492 TYPE REF TO object.
      CLEAR t492.
      CLEAR t491.
      t492 = t489.
      TRY.
          t488 ?= t492.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t488 IS NOT BOUND.
        TRY.
            t491 ?= t489.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t491 IS BOUND.
          t488 = t491->source( ).
        ENDIF.
        IF t488 IS NOT BOUND.
          CREATE OBJECT t488.
          t488->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t488->oval = t489.
        ENDIF.
      ENDIF.
    ENDIF.
    t487 = t488.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t494.
    CREATE OBJECT t494.
    t493 = t494.
    DATA(t495) = t493.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t496.
    DATA(t497) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t496.
    IF t497 IS BOUND.
      CREATE OBJECT t496.
      t496->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t496->cval = t497.
    ENDIF.
    t495->load( ).
    APPEND t496 TO t495->items.
    t495->save( ).
    DATA(t498) = t493.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    DATA t500 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t500.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    DATA t502 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA(t505) = |,|.
    CLEAR t504.
    CREATE OBJECT t504.
    t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t504->sval = t505.
    t503 = t504.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA(t508) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t507.
    IF t508 IS BOUND.
      CREATE OBJECT t507.
      t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t507->cval = t508.
    ENDIF.
    t506 = t507.
    DATA t509 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t509.
    DATA t510 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t510.
    CREATE OBJECT t510.
    t509 = t510.
    DATA(t511) = t509.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    DATA t513 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t513.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA t515 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t515.
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t516.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t517.
    DATA(t518) = |,|.
    CLEAR t517.
    CREATE OBJECT t517.
    t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t517->sval = t518.
    t516 = t517.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t519.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t520.
    DATA(t521) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t520.
    IF t521 IS BOUND.
      CREATE OBJECT t520.
      t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t520->cval = t521.
    ENDIF.
    t519 = t520.
    DATA t522 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t522.
    DATA t523 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t523.
    CREATE OBJECT t523.
    t522 = t523.
    DATA t524 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t524.
    DATA(t525) = t516.
    DATA(t526) = t519.
    DATA(t527) = t522.
    t524 = zcl_lnt_st_combi_module=>seq( i_first = t525 i_second = t526 i_rest = t527 ).
    t515 = t524.
    CLEAR t514.
    IF t515 IS BOUND.
      DATA t528 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t528.
      DATA t529 TYPE REF TO object.
      CLEAR t529.
      CLEAR t528.
      t529 = t515.
      TRY.
          t514 ?= t529.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t514 IS NOT BOUND.
        TRY.
            t528 ?= t515.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t528 IS BOUND.
          t514 = t528->source( ).
        ENDIF.
        IF t514 IS NOT BOUND.
          CREATE OBJECT t514.
          t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t514->oval = t515.
        ENDIF.
      ENDIF.
    ENDIF.
    t513 = zcl_lnt_st_combi_module=>opt_prio( i_first = t514 ).
    CLEAR t512.
    IF t513 IS BOUND.
      DATA t530 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t530.
      DATA t531 TYPE REF TO object.
      CLEAR t531.
      CLEAR t530.
      t531 = t513.
      TRY.
          t512 ?= t531.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t512 IS NOT BOUND.
        TRY.
            t530 ?= t513.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t530 IS BOUND.
          t512 = t530->source( ).
        ENDIF.
        IF t512 IS NOT BOUND.
          CREATE OBJECT t512.
          t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t512->oval = t513.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t512 TO t511->items.
    t511->save( ).
    DATA t532 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t532.
    DATA(t533) = t503.
    DATA(t534) = t506.
    DATA(t535) = t509.
    t532 = zcl_lnt_st_combi_module=>seq( i_first = t533 i_second = t534 i_rest = t535 ).
    t502 = t532.
    CLEAR t501.
    IF t502 IS BOUND.
      DATA t536 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t536.
      DATA t537 TYPE REF TO object.
      CLEAR t537.
      CLEAR t536.
      t537 = t502.
      TRY.
          t501 ?= t537.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t501 IS NOT BOUND.
        TRY.
            t536 ?= t502.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t536 IS BOUND.
          t501 = t536->source( ).
        ENDIF.
        IF t501 IS NOT BOUND.
          CREATE OBJECT t501.
          t501->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t501->oval = t502.
        ENDIF.
      ENDIF.
    ENDIF.
    t500 = zcl_lnt_st_combi_module=>opt_prio( i_first = t501 ).
    CLEAR t499.
    IF t500 IS BOUND.
      DATA t538 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t538.
      DATA t539 TYPE REF TO object.
      CLEAR t539.
      CLEAR t538.
      t539 = t500.
      TRY.
          t499 ?= t539.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t499 IS NOT BOUND.
        TRY.
            t538 ?= t500.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t538 IS BOUND.
          t499 = t538->source( ).
        ENDIF.
        IF t499 IS NOT BOUND.
          CREATE OBJECT t499.
          t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t499->oval = t500.
        ENDIF.
      ENDIF.
    ENDIF.
    t498->load( ).
    APPEND t499 TO t498->items.
    t498->save( ).
    DATA(t540) = t493.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA t542 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t542.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t542 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t541.
    IF t542 IS BOUND.
      DATA t543 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t543.
      DATA t544 TYPE REF TO object.
      CLEAR t544.
      CLEAR t543.
      t544 = t542.
      TRY.
          t541 ?= t544.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t541 IS NOT BOUND.
        TRY.
            t543 ?= t542.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t543 IS BOUND.
          t541 = t543->source( ).
        ENDIF.
        IF t541 IS NOT BOUND.
          CREATE OBJECT t541.
          t541->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t541->oval = t542.
        ENDIF.
      ENDIF.
    ENDIF.
    t540->load( ).
    APPEND t541 TO t540->items.
    t540->save( ).
    DATA(t545) = t493.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t546.
    DATA(t547) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t546.
    IF t547 IS BOUND.
      CREATE OBJECT t546.
      t546->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t546->cval = t547.
    ENDIF.
    t545->load( ).
    APPEND t546 TO t545->items.
    t545->save( ).
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t548.
    DATA(t549) = t470.
    DATA(t550) = t487.
    DATA(t551) = t493.
    t548 = zcl_lnt_st_combi_module=>seq( i_first = t549 i_second = t550 i_rest = t551 ).
    t469 = t548.
    CLEAR t468.
    IF t469 IS BOUND.
      DATA t552 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t552.
      DATA t553 TYPE REF TO object.
      CLEAR t553.
      CLEAR t552.
      t553 = t469.
      TRY.
          t468 ?= t553.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t468 IS NOT BOUND.
        TRY.
            t552 ?= t469.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t552 IS BOUND.
          t468 = t552->source( ).
        ENDIF.
        IF t468 IS NOT BOUND.
          CREATE OBJECT t468.
          t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t468->oval = t469.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t554 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t554.
    t460 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t461 i_first = t468 i_opts = t554 ).
    t459 = t460.
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t555.
    DATA t556 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t556.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA t558 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t558.
    DATA t559 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t559.
    DATA t560 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t560.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t560 = zcl_lnt_version_module=>release_b8cd.
    DATA(t561) = |v757|.
    t559 = t560->get( p0 = t561 ).
    t558 = t559.
    CLEAR t557.
    IF t558 IS BOUND.
      DATA t562 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t562.
      DATA t563 TYPE REF TO object.
      CLEAR t563.
      CLEAR t562.
      t563 = t558.
      TRY.
          t557 ?= t563.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t557 IS NOT BOUND.
        TRY.
            t562 ?= t558.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t562 IS BOUND.
          t557 = t562->source( ).
        ENDIF.
        IF t557 IS NOT BOUND.
          CREATE OBJECT t557.
          t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t557->oval = t558.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t564.
    DATA t565 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t565.
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
    DATA(t571) = |FIRST_VALUE|.
    CLEAR t570.
    CREATE OBJECT t570.
    t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t570->sval = t571.
    t569 = t570.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t572.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    DATA(t574) = |LAST_VALUE|.
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
    DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t583.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA t585 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t585.
    DATA(t586) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t585 = zcl_lnt_st_combi_module=>tok( i_t = t586 ).
    CLEAR t584.
    IF t585 IS BOUND.
      DATA t587 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t587.
      DATA t588 TYPE REF TO object.
      CLEAR t588.
      CLEAR t587.
      t588 = t585.
      TRY.
          t584 ?= t588.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t584 IS NOT BOUND.
        TRY.
            t587 ?= t585.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t587 IS BOUND.
          t584 = t587->source( ).
        ENDIF.
        IF t584 IS NOT BOUND.
          CREATE OBJECT t584.
          t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t584->oval = t585.
        ENDIF.
      ENDIF.
    ENDIF.
    t583 = t584.
    DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t589.
    DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t590.
    CREATE OBJECT t590.
    t589 = t590.
    DATA(t591) = t589.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA(t593) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t592.
    IF t593 IS BOUND.
      CREATE OBJECT t592.
      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t592->cval = t593.
    ENDIF.
    t591->load( ).
    APPEND t592 TO t591->items.
    t591->save( ).
    DATA(t594) = t589.
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t595.
    DATA t596 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t596.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t596 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t595.
    IF t596 IS BOUND.
      DATA t597 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t597.
      DATA t598 TYPE REF TO object.
      CLEAR t598.
      CLEAR t597.
      t598 = t596.
      TRY.
          t595 ?= t598.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t595 IS NOT BOUND.
        TRY.
            t597 ?= t596.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t597 IS BOUND.
          t595 = t597->source( ).
        ENDIF.
        IF t595 IS NOT BOUND.
          CREATE OBJECT t595.
          t595->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t595->oval = t596.
        ENDIF.
      ENDIF.
    ENDIF.
    t594->load( ).
    APPEND t595 TO t594->items.
    t594->save( ).
    DATA(t599) = t589.
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t600.
    DATA(t601) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t600.
    IF t601 IS BOUND.
      CREATE OBJECT t600.
      t600->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t600->cval = t601.
    ENDIF.
    t599->load( ).
    APPEND t600 TO t599->items.
    t599->save( ).
    DATA t602 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t602.
    DATA(t603) = t566.
    DATA(t604) = t583.
    DATA(t605) = t589.
    t602 = zcl_lnt_st_combi_module=>seq( i_first = t603 i_second = t604 i_rest = t605 ).
    t565 = t602.
    CLEAR t564.
    IF t565 IS BOUND.
      DATA t606 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t606.
      DATA t607 TYPE REF TO object.
      CLEAR t607.
      CLEAR t606.
      t607 = t565.
      TRY.
          t564 ?= t607.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t564 IS NOT BOUND.
        TRY.
            t606 ?= t565.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t606 IS BOUND.
          t564 = t606->source( ).
        ENDIF.
        IF t564 IS NOT BOUND.
          CREATE OBJECT t564.
          t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t564->oval = t565.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t608 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t608.
    t556 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t557 i_first = t564 i_opts = t608 ).
    t555 = t556.
    DATA t609 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t609.
    DATA t610 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t610.
    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t611.
    DATA t612 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t612.
    DATA t613 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t613.
    DATA t614 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t614.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t614 = zcl_lnt_version_module=>release_b8cd.
    DATA(t615) = |v757|.
    t613 = t614->get( p0 = t615 ).
    t612 = t613.
    CLEAR t611.
    IF t612 IS BOUND.
      DATA t616 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t616.
      DATA t617 TYPE REF TO object.
      CLEAR t617.
      CLEAR t616.
      t617 = t612.
      TRY.
          t611 ?= t617.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t611 IS NOT BOUND.
        TRY.
            t616 ?= t612.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t616 IS BOUND.
          t611 = t616->source( ).
        ENDIF.
        IF t611 IS NOT BOUND.
          CREATE OBJECT t611.
          t611->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t611->oval = t612.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t618.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t619.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t620.
    DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t621.
    DATA(t622) = |STRING_AGG|.
    CLEAR t621.
    CREATE OBJECT t621.
    t621->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t621->sval = t622.
    t620 = t621.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t623.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t624.
    DATA t625 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t625.
    DATA(t626) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t625 = zcl_lnt_st_combi_module=>tok( i_t = t626 ).
    CLEAR t624.
    IF t625 IS BOUND.
      DATA t627 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t627.
      DATA t628 TYPE REF TO object.
      CLEAR t628.
      CLEAR t627.
      t628 = t625.
      TRY.
          t624 ?= t628.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t624 IS NOT BOUND.
        TRY.
            t627 ?= t625.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t627 IS BOUND.
          t624 = t627->source( ).
        ENDIF.
        IF t624 IS NOT BOUND.
          CREATE OBJECT t624.
          t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t624->oval = t625.
        ENDIF.
      ENDIF.
    ENDIF.
    t623 = t624.
    DATA t629 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t629.
    DATA t630 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t630.
    CREATE OBJECT t630.
    t629 = t630.
    DATA(t631) = t629.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    DATA(t633) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t632.
    IF t633 IS BOUND.
      CREATE OBJECT t632.
      t632->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t632->cval = t633.
    ENDIF.
    t631->load( ).
    APPEND t632 TO t631->items.
    t631->save( ).
    DATA(t634) = t629.
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t635.
    DATA t636 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t636.
    DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t637.
    DATA t638 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t638.
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t639.
    DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t640.
    DATA(t641) = |,|.
    CLEAR t640.
    CREATE OBJECT t640.
    t640->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t640->sval = t641.
    t639 = t640.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t643.
    DATA(t644) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t643.
    IF t644 IS BOUND.
      CREATE OBJECT t643.
      t643->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t643->cval = t644.
    ENDIF.
    t642 = t643.
    DATA t645 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t645.
    DATA t646 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t646.
    CREATE OBJECT t646.
    t645 = t646.
    DATA t647 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t647.
    DATA(t648) = t639.
    DATA(t649) = t642.
    DATA(t650) = t645.
    t647 = zcl_lnt_st_combi_module=>seq( i_first = t648 i_second = t649 i_rest = t650 ).
    t638 = t647.
    CLEAR t637.
    IF t638 IS BOUND.
      DATA t651 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t651.
      DATA t652 TYPE REF TO object.
      CLEAR t652.
      CLEAR t651.
      t652 = t638.
      TRY.
          t637 ?= t652.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t637 IS NOT BOUND.
        TRY.
            t651 ?= t638.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t651 IS BOUND.
          t637 = t651->source( ).
        ENDIF.
        IF t637 IS NOT BOUND.
          CREATE OBJECT t637.
          t637->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t637->oval = t638.
        ENDIF.
      ENDIF.
    ENDIF.
    t636 = zcl_lnt_st_combi_module=>opt_prio( i_first = t637 ).
    CLEAR t635.
    IF t636 IS BOUND.
      DATA t653 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t653.
      DATA t654 TYPE REF TO object.
      CLEAR t654.
      CLEAR t653.
      t654 = t636.
      TRY.
          t635 ?= t654.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t635 IS NOT BOUND.
        TRY.
            t653 ?= t636.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t653 IS BOUND.
          t635 = t653->source( ).
        ENDIF.
        IF t635 IS NOT BOUND.
          CREATE OBJECT t635.
          t635->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t635->oval = t636.
        ENDIF.
      ENDIF.
    ENDIF.
    t634->load( ).
    APPEND t635 TO t634->items.
    t634->save( ).
    DATA(t655) = t629.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    DATA t657 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t657.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t657 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t656.
    IF t657 IS BOUND.
      DATA t658 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t658.
      DATA t659 TYPE REF TO object.
      CLEAR t659.
      CLEAR t658.
      t659 = t657.
      TRY.
          t656 ?= t659.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t656 IS NOT BOUND.
        TRY.
            t658 ?= t657.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t658 IS BOUND.
          t656 = t658->source( ).
        ENDIF.
        IF t656 IS NOT BOUND.
          CREATE OBJECT t656.
          t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t656->oval = t657.
        ENDIF.
      ENDIF.
    ENDIF.
    t655->load( ).
    APPEND t656 TO t655->items.
    t655->save( ).
    DATA(t660) = t629.
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t661.
    DATA t662 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t662.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t663.
    DATA(t664) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t663.
    IF t664 IS BOUND.
      CREATE OBJECT t663.
      t663->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t663->cval = t664.
    ENDIF.
    t662 = zcl_lnt_st_combi_module=>opt_prio( i_first = t663 ).
    CLEAR t661.
    IF t662 IS BOUND.
      DATA t665 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t665.
      DATA t666 TYPE REF TO object.
      CLEAR t666.
      CLEAR t665.
      t666 = t662.
      TRY.
          t661 ?= t666.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t661 IS NOT BOUND.
        TRY.
            t665 ?= t662.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t665 IS BOUND.
          t661 = t665->source( ).
        ENDIF.
        IF t661 IS NOT BOUND.
          CREATE OBJECT t661.
          t661->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t661->oval = t662.
        ENDIF.
      ENDIF.
    ENDIF.
    t660->load( ).
    APPEND t661 TO t660->items.
    t660->save( ).
    DATA t667 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t667.
    DATA(t668) = t620.
    DATA(t669) = t623.
    DATA(t670) = t629.
    t667 = zcl_lnt_st_combi_module=>seq( i_first = t668 i_second = t669 i_rest = t670 ).
    t619 = t667.
    CLEAR t618.
    IF t619 IS BOUND.
      DATA t671 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t671.
      DATA t672 TYPE REF TO object.
      CLEAR t672.
      CLEAR t671.
      t672 = t619.
      TRY.
          t618 ?= t672.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t618 IS NOT BOUND.
        TRY.
            t671 ?= t619.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t671 IS BOUND.
          t618 = t671->source( ).
        ENDIF.
        IF t618 IS NOT BOUND.
          CREATE OBJECT t618.
          t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t618->oval = t619.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t673 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t673.
    t610 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t611 i_first = t618 i_opts = t673 ).
    t609 = t610.
    DATA t674 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t674.
    DATA t675 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t675.
    DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t676.
    DATA t677 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t677.
    DATA t678 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t678.
    DATA t679 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t679.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t679 = zcl_lnt_version_module=>release_b8cd.
    DATA(t680) = |v757|.
    t678 = t679->get( p0 = t680 ).
    t677 = t678.
    CLEAR t676.
    IF t677 IS BOUND.
      DATA t681 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t681.
      DATA t682 TYPE REF TO object.
      CLEAR t682.
      CLEAR t681.
      t682 = t677.
      TRY.
          t676 ?= t682.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t676 IS NOT BOUND.
        TRY.
            t681 ?= t677.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t681 IS BOUND.
          t676 = t681->source( ).
        ENDIF.
        IF t676 IS NOT BOUND.
          CREATE OBJECT t676.
          t676->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t676->oval = t677.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t683.
    DATA t684 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t684.
    DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t685.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t686.
    DATA(t687) = |NTILE|.
    CLEAR t686.
    CREATE OBJECT t686.
    t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t686->sval = t687.
    t685 = t686.
    DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t688.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t689.
    DATA t690 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t690.
    DATA(t691) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t690 = zcl_lnt_st_combi_module=>tok( i_t = t691 ).
    CLEAR t689.
    IF t690 IS BOUND.
      DATA t692 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t692.
      DATA t693 TYPE REF TO object.
      CLEAR t693.
      CLEAR t692.
      t693 = t690.
      TRY.
          t689 ?= t693.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t689 IS NOT BOUND.
        TRY.
            t692 ?= t690.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t692 IS BOUND.
          t689 = t692->source( ).
        ENDIF.
        IF t689 IS NOT BOUND.
          CREATE OBJECT t689.
          t689->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t689->oval = t690.
        ENDIF.
      ENDIF.
    ENDIF.
    t688 = t689.
    DATA t694 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t694.
    DATA t695 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t695.
    CREATE OBJECT t695.
    t694 = t695.
    DATA(t696) = t694.
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t697.
    DATA(t698) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t697.
    IF t698 IS BOUND.
      CREATE OBJECT t697.
      t697->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t697->cval = t698.
    ENDIF.
    t696->load( ).
    APPEND t697 TO t696->items.
    t696->save( ).
    DATA(t699) = t694.
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t700.
    DATA t701 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t701.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t701 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t700.
    IF t701 IS BOUND.
      DATA t702 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t702.
      DATA t703 TYPE REF TO object.
      CLEAR t703.
      CLEAR t702.
      t703 = t701.
      TRY.
          t700 ?= t703.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t700 IS NOT BOUND.
        TRY.
            t702 ?= t701.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t702 IS BOUND.
          t700 = t702->source( ).
        ENDIF.
        IF t700 IS NOT BOUND.
          CREATE OBJECT t700.
          t700->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t700->oval = t701.
        ENDIF.
      ENDIF.
    ENDIF.
    t699->load( ).
    APPEND t700 TO t699->items.
    t699->save( ).
    DATA(t704) = t694.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t705.
    DATA(t706) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t705.
    IF t706 IS BOUND.
      CREATE OBJECT t705.
      t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t705->cval = t706.
    ENDIF.
    t704->load( ).
    APPEND t705 TO t704->items.
    t704->save( ).
    DATA t707 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t707.
    DATA(t708) = t685.
    DATA(t709) = t688.
    DATA(t710) = t694.
    t707 = zcl_lnt_st_combi_module=>seq( i_first = t708 i_second = t709 i_rest = t710 ).
    t684 = t707.
    CLEAR t683.
    IF t684 IS BOUND.
      DATA t711 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t711.
      DATA t712 TYPE REF TO object.
      CLEAR t712.
      CLEAR t711.
      t712 = t684.
      TRY.
          t683 ?= t712.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t683 IS NOT BOUND.
        TRY.
            t711 ?= t684.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t711 IS BOUND.
          t683 = t711->source( ).
        ENDIF.
        IF t683 IS NOT BOUND.
          CREATE OBJECT t683.
          t683->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t683->oval = t684.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t713 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t713.
    t675 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t676 i_first = t683 i_opts = t713 ).
    t674 = t675.
    DATA t714 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t714.
    DATA t715 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t715.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t716.
    DATA t717 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t717.
    DATA t718 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t718.
    DATA t719 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t719.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t719 = zcl_lnt_version_module=>release_b8cd.
    DATA(t720) = |v757|.
    t718 = t719->get( p0 = t720 ).
    t717 = t718.
    CLEAR t716.
    IF t717 IS BOUND.
      DATA t721 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t721.
      DATA t722 TYPE REF TO object.
      CLEAR t722.
      CLEAR t721.
      t722 = t717.
      TRY.
          t716 ?= t722.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t716 IS NOT BOUND.
        TRY.
            t721 ?= t717.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t721 IS BOUND.
          t716 = t721->source( ).
        ENDIF.
        IF t716 IS NOT BOUND.
          CREATE OBJECT t716.
          t716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t716->oval = t717.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t723.
    DATA t724 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t724.
    DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t725.
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t726.
    DATA t727 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t727.
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t728.
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t729.
    DATA(t730) = |CORR_SPEARMAN|.
    CLEAR t729.
    CREATE OBJECT t729.
    t729->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t729->sval = t730.
    t728 = t729.
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t731.
    DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t732.
    DATA(t733) = |CORR|.
    CLEAR t732.
    CREATE OBJECT t732.
    t732->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t732->sval = t733.
    t731 = t732.
    DATA t734 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t734.
    DATA t735 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t735.
    CREATE OBJECT t735.
    t734 = t735.
    DATA t736 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t736.
    DATA(t737) = t728.
    DATA(t738) = t731.
    DATA(t739) = t734.
    t736 = zcl_lnt_st_combi_module=>alt_prio( i_first = t737 i_second = t738 i_rest = t739 ).
    t727 = t736.
    CLEAR t726.
    IF t727 IS BOUND.
      DATA t740 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t740.
      DATA t741 TYPE REF TO object.
      CLEAR t741.
      CLEAR t740.
      t741 = t727.
      TRY.
          t726 ?= t741.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t726 IS NOT BOUND.
        TRY.
            t740 ?= t727.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t740 IS BOUND.
          t726 = t740->source( ).
        ENDIF.
        IF t726 IS NOT BOUND.
          CREATE OBJECT t726.
          t726->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t726->oval = t727.
        ENDIF.
      ENDIF.
    ENDIF.
    t725 = t726.
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t742.
    DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t743.
    DATA t744 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t744.
    DATA(t745) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t744 = zcl_lnt_st_combi_module=>tok( i_t = t745 ).
    CLEAR t743.
    IF t744 IS BOUND.
      DATA t746 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t746.
      DATA t747 TYPE REF TO object.
      CLEAR t747.
      CLEAR t746.
      t747 = t744.
      TRY.
          t743 ?= t747.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t743 IS NOT BOUND.
        TRY.
            t746 ?= t744.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t746 IS BOUND.
          t743 = t746->source( ).
        ENDIF.
        IF t743 IS NOT BOUND.
          CREATE OBJECT t743.
          t743->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t743->oval = t744.
        ENDIF.
      ENDIF.
    ENDIF.
    t742 = t743.
    DATA t748 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t748.
    DATA t749 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t749.
    CREATE OBJECT t749.
    t748 = t749.
    DATA(t750) = t748.
    DATA t751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t751.
    DATA(t752) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t751.
    IF t752 IS BOUND.
      CREATE OBJECT t751.
      t751->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t751->cval = t752.
    ENDIF.
    t750->load( ).
    APPEND t751 TO t750->items.
    t750->save( ).
    DATA(t753) = t748.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t754.
    DATA(t755) = |,|.
    CLEAR t754.
    CREATE OBJECT t754.
    t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t754->sval = t755.
    t753->load( ).
    APPEND t754 TO t753->items.
    t753->save( ).
    DATA(t756) = t748.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    DATA(t758) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t757.
    IF t758 IS BOUND.
      CREATE OBJECT t757.
      t757->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t757->cval = t758.
    ENDIF.
    t756->load( ).
    APPEND t757 TO t756->items.
    t756->save( ).
    DATA(t759) = t748.
    DATA t760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t760.
    DATA t761 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t761.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t761 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t760.
    IF t761 IS BOUND.
      DATA t762 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t762.
      DATA t763 TYPE REF TO object.
      CLEAR t763.
      CLEAR t762.
      t763 = t761.
      TRY.
          t760 ?= t763.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t760 IS NOT BOUND.
        TRY.
            t762 ?= t761.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t762 IS BOUND.
          t760 = t762->source( ).
        ENDIF.
        IF t760 IS NOT BOUND.
          CREATE OBJECT t760.
          t760->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t760->oval = t761.
        ENDIF.
      ENDIF.
    ENDIF.
    t759->load( ).
    APPEND t760 TO t759->items.
    t759->save( ).
    DATA(t764) = t748.
    DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t765.
    DATA t766 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t766.
    DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t767.
    DATA(t768) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t767.
    IF t768 IS BOUND.
      CREATE OBJECT t767.
      t767->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t767->cval = t768.
    ENDIF.
    t766 = zcl_lnt_st_combi_module=>opt_prio( i_first = t767 ).
    CLEAR t765.
    IF t766 IS BOUND.
      DATA t769 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t769.
      DATA t770 TYPE REF TO object.
      CLEAR t770.
      CLEAR t769.
      t770 = t766.
      TRY.
          t765 ?= t770.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t765 IS NOT BOUND.
        TRY.
            t769 ?= t766.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t769 IS BOUND.
          t765 = t769->source( ).
        ENDIF.
        IF t765 IS NOT BOUND.
          CREATE OBJECT t765.
          t765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t765->oval = t766.
        ENDIF.
      ENDIF.
    ENDIF.
    t764->load( ).
    APPEND t765 TO t764->items.
    t764->save( ).
    DATA t771 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t771.
    DATA(t772) = t725.
    DATA(t773) = t742.
    DATA(t774) = t748.
    t771 = zcl_lnt_st_combi_module=>seq( i_first = t772 i_second = t773 i_rest = t774 ).
    t724 = t771.
    CLEAR t723.
    IF t724 IS BOUND.
      DATA t775 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t775.
      DATA t776 TYPE REF TO object.
      CLEAR t776.
      CLEAR t775.
      t776 = t724.
      TRY.
          t723 ?= t776.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t723 IS NOT BOUND.
        TRY.
            t775 ?= t724.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t775 IS BOUND.
          t723 = t775->source( ).
        ENDIF.
        IF t723 IS NOT BOUND.
          CREATE OBJECT t723.
          t723->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t723->oval = t724.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t777 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t777.
    t715 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t716 i_first = t723 i_opts = t777 ).
    t714 = t715.
    DATA t778 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t778.
    DATA t779 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t779.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t780.
    DATA t781 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t781.
    DATA t782 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t782.
    DATA t783 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t783.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t783 = zcl_lnt_version_module=>release_b8cd.
    DATA(t784) = |v757|.
    t782 = t783->get( p0 = t784 ).
    t781 = t782.
    CLEAR t780.
    IF t781 IS BOUND.
      DATA t785 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t785.
      DATA t786 TYPE REF TO object.
      CLEAR t786.
      CLEAR t785.
      t786 = t781.
      TRY.
          t780 ?= t786.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t780 IS NOT BOUND.
        TRY.
            t785 ?= t781.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t785 IS BOUND.
          t780 = t785->source( ).
        ENDIF.
        IF t780 IS NOT BOUND.
          CREATE OBJECT t780.
          t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t780->oval = t781.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t787.
    DATA t788 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t788.
    DATA t789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t789.
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t790.
    DATA t791 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t791.
    DATA t792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t792.
    DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t793.
    DATA(t794) = |PRODUCT|.
    CLEAR t793.
    CREATE OBJECT t793.
    t793->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t793->sval = t794.
    t792 = t793.
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t795.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t796.
    DATA(t797) = |MEDIAN|.
    CLEAR t796.
    CREATE OBJECT t796.
    t796->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t796->sval = t797.
    t795 = t796.
    DATA t798 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t798.
    DATA t799 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t799.
    CREATE OBJECT t799.
    t798 = t799.
    DATA(t800) = t798.
    DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t801.
    DATA(t802) = |VAR|.
    CLEAR t801.
    CREATE OBJECT t801.
    t801->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t801->sval = t802.
    t800->load( ).
    APPEND t801 TO t800->items.
    t800->save( ).
    DATA(t803) = t798.
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t804.
    DATA(t805) = |STDDEV|.
    CLEAR t804.
    CREATE OBJECT t804.
    t804->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t804->sval = t805.
    t803->load( ).
    APPEND t804 TO t803->items.
    t803->save( ).
    DATA t806 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t806.
    DATA(t807) = t792.
    DATA(t808) = t795.
    DATA(t809) = t798.
    t806 = zcl_lnt_st_combi_module=>alt_prio( i_first = t807 i_second = t808 i_rest = t809 ).
    t791 = t806.
    CLEAR t790.
    IF t791 IS BOUND.
      DATA t810 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t810.
      DATA t811 TYPE REF TO object.
      CLEAR t811.
      CLEAR t810.
      t811 = t791.
      TRY.
          t790 ?= t811.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t790 IS NOT BOUND.
        TRY.
            t810 ?= t791.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t810 IS BOUND.
          t790 = t810->source( ).
        ENDIF.
        IF t790 IS NOT BOUND.
          CREATE OBJECT t790.
          t790->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t790->oval = t791.
        ENDIF.
      ENDIF.
    ENDIF.
    t789 = t790.
    DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t812.
    DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t813.
    DATA t814 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t814.
    DATA(t815) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t814 = zcl_lnt_st_combi_module=>tok( i_t = t815 ).
    CLEAR t813.
    IF t814 IS BOUND.
      DATA t816 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t816.
      DATA t817 TYPE REF TO object.
      CLEAR t817.
      CLEAR t816.
      t817 = t814.
      TRY.
          t813 ?= t817.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t813 IS NOT BOUND.
        TRY.
            t816 ?= t814.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t816 IS BOUND.
          t813 = t816->source( ).
        ENDIF.
        IF t813 IS NOT BOUND.
          CREATE OBJECT t813.
          t813->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t813->oval = t814.
        ENDIF.
      ENDIF.
    ENDIF.
    t812 = t813.
    DATA t818 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t818.
    DATA t819 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t819.
    CREATE OBJECT t819.
    t818 = t819.
    DATA(t820) = t818.
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t821.
    DATA(t822) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t821.
    IF t822 IS BOUND.
      CREATE OBJECT t821.
      t821->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t821->cval = t822.
    ENDIF.
    t820->load( ).
    APPEND t821 TO t820->items.
    t820->save( ).
    DATA(t823) = t818.
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t824.
    DATA t825 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t825.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t825 = zcl_lnt_sql_aggregation_module=>rparen.
    CLEAR t824.
    IF t825 IS BOUND.
      DATA t826 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t826.
      DATA t827 TYPE REF TO object.
      CLEAR t827.
      CLEAR t826.
      t827 = t825.
      TRY.
          t824 ?= t827.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t824 IS NOT BOUND.
        TRY.
            t826 ?= t825.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t826 IS BOUND.
          t824 = t826->source( ).
        ENDIF.
        IF t824 IS NOT BOUND.
          CREATE OBJECT t824.
          t824->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t824->oval = t825.
        ENDIF.
      ENDIF.
    ENDIF.
    t823->load( ).
    APPEND t824 TO t823->items.
    t823->save( ).
    DATA(t828) = t818.
    DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t829.
    DATA t830 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t830.
    DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t831.
    DATA(t832) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    CLEAR t831.
    IF t832 IS BOUND.
      CREATE OBJECT t831.
      t831->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t831->cval = t832.
    ENDIF.
    t830 = zcl_lnt_st_combi_module=>opt_prio( i_first = t831 ).
    CLEAR t829.
    IF t830 IS BOUND.
      DATA t833 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t833.
      DATA t834 TYPE REF TO object.
      CLEAR t834.
      CLEAR t833.
      t834 = t830.
      TRY.
          t829 ?= t834.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t829 IS NOT BOUND.
        TRY.
            t833 ?= t830.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t833 IS BOUND.
          t829 = t833->source( ).
        ENDIF.
        IF t829 IS NOT BOUND.
          CREATE OBJECT t829.
          t829->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t829->oval = t830.
        ENDIF.
      ENDIF.
    ENDIF.
    t828->load( ).
    APPEND t829 TO t828->items.
    t828->save( ).
    DATA t835 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t835.
    DATA(t836) = t789.
    DATA(t837) = t812.
    DATA(t838) = t818.
    t835 = zcl_lnt_st_combi_module=>seq( i_first = t836 i_second = t837 i_rest = t838 ).
    t788 = t835.
    CLEAR t787.
    IF t788 IS BOUND.
      DATA t839 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t839.
      DATA t840 TYPE REF TO object.
      CLEAR t840.
      CLEAR t839.
      t840 = t788.
      TRY.
          t787 ?= t840.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t787 IS NOT BOUND.
        TRY.
            t839 ?= t788.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t839 IS BOUND.
          t787 = t839->source( ).
        ENDIF.
        IF t787 IS NOT BOUND.
          CREATE OBJECT t787.
          t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t787->oval = t788.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t841 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t841.
    t779 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t780 i_first = t787 i_opts = t841 ).
    t778 = t779.
    DATA t842 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t842.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t843.
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t844.
    DATA(t845) = t406.
    CLEAR t844.
    IF t845 IS BOUND.
      DATA t846 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t846.
      DATA t847 TYPE REF TO object.
      CLEAR t847.
      CLEAR t846.
      t847 = t845.
      TRY.
          t844 ?= t847.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t844 IS NOT BOUND.
        TRY.
            t846 ?= t845.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t846 IS BOUND.
          t844 = t846->source( ).
        ENDIF.
        IF t844 IS NOT BOUND.
          CREATE OBJECT t844.
          t844->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t844->oval = t845.
        ENDIF.
      ENDIF.
    ENDIF.
    t843 = t844.
    DATA t848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t848.
    DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t849.
    DATA(t850) = t459.
    CLEAR t849.
    IF t850 IS BOUND.
      DATA t851 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t851.
      DATA t852 TYPE REF TO object.
      CLEAR t852.
      CLEAR t851.
      t852 = t850.
      TRY.
          t849 ?= t852.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t849 IS NOT BOUND.
        TRY.
            t851 ?= t850.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t851 IS BOUND.
          t849 = t851->source( ).
        ENDIF.
        IF t849 IS NOT BOUND.
          CREATE OBJECT t849.
          t849->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t849->oval = t850.
        ENDIF.
      ENDIF.
    ENDIF.
    t848 = t849.
    DATA t853 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t853.
    DATA t854 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t854.
    CREATE OBJECT t854.
    t853 = t854.
    DATA(t855) = t853.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t856.
    DATA(t857) = t555.
    CLEAR t856.
    IF t857 IS BOUND.
      DATA t858 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t858.
      DATA t859 TYPE REF TO object.
      CLEAR t859.
      CLEAR t858.
      t859 = t857.
      TRY.
          t856 ?= t859.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t856 IS NOT BOUND.
        TRY.
            t858 ?= t857.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t858 IS BOUND.
          t856 = t858->source( ).
        ENDIF.
        IF t856 IS NOT BOUND.
          CREATE OBJECT t856.
          t856->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t856->oval = t857.
        ENDIF.
      ENDIF.
    ENDIF.
    t855->load( ).
    APPEND t856 TO t855->items.
    t855->save( ).
    DATA(t860) = t853.
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t861.
    DATA(t862) = t609.
    CLEAR t861.
    IF t862 IS BOUND.
      DATA t863 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t863.
      DATA t864 TYPE REF TO object.
      CLEAR t864.
      CLEAR t863.
      t864 = t862.
      TRY.
          t861 ?= t864.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t861 IS NOT BOUND.
        TRY.
            t863 ?= t862.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t863 IS BOUND.
          t861 = t863->source( ).
        ENDIF.
        IF t861 IS NOT BOUND.
          CREATE OBJECT t861.
          t861->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t861->oval = t862.
        ENDIF.
      ENDIF.
    ENDIF.
    t860->load( ).
    APPEND t861 TO t860->items.
    t860->save( ).
    DATA(t865) = t853.
    DATA t866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t866.
    DATA(t867) = t674.
    CLEAR t866.
    IF t867 IS BOUND.
      DATA t868 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t868.
      DATA t869 TYPE REF TO object.
      CLEAR t869.
      CLEAR t868.
      t869 = t867.
      TRY.
          t866 ?= t869.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t866 IS NOT BOUND.
        TRY.
            t868 ?= t867.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t868 IS BOUND.
          t866 = t868->source( ).
        ENDIF.
        IF t866 IS NOT BOUND.
          CREATE OBJECT t866.
          t866->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t866->oval = t867.
        ENDIF.
      ENDIF.
    ENDIF.
    t865->load( ).
    APPEND t866 TO t865->items.
    t865->save( ).
    DATA(t870) = t853.
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t871.
    DATA(t872) = t714.
    CLEAR t871.
    IF t872 IS BOUND.
      DATA t873 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t873.
      DATA t874 TYPE REF TO object.
      CLEAR t874.
      CLEAR t873.
      t874 = t872.
      TRY.
          t871 ?= t874.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t871 IS NOT BOUND.
        TRY.
            t873 ?= t872.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t873 IS BOUND.
          t871 = t873->source( ).
        ENDIF.
        IF t871 IS NOT BOUND.
          CREATE OBJECT t871.
          t871->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t871->oval = t872.
        ENDIF.
      ENDIF.
    ENDIF.
    t870->load( ).
    APPEND t871 TO t870->items.
    t870->save( ).
    DATA(t875) = t853.
    DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t876.
    DATA(t877) = t778.
    CLEAR t876.
    IF t877 IS BOUND.
      DATA t878 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t878.
      DATA t879 TYPE REF TO object.
      CLEAR t879.
      CLEAR t878.
      t879 = t877.
      TRY.
          t876 ?= t879.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t876 IS NOT BOUND.
        TRY.
            t878 ?= t877.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t878 IS BOUND.
          t876 = t878->source( ).
        ENDIF.
        IF t876 IS NOT BOUND.
          CREATE OBJECT t876.
          t876->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t876->oval = t877.
        ENDIF.
      ENDIF.
    ENDIF.
    t875->load( ).
    APPEND t876 TO t875->items.
    t875->save( ).
    DATA(t880) = t853.
    DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t881.
    DATA(t882) = t156.
    CLEAR t881.
    IF t882 IS BOUND.
      DATA t883 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t883.
      DATA t884 TYPE REF TO object.
      CLEAR t884.
      CLEAR t883.
      t884 = t882.
      TRY.
          t881 ?= t884.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t881 IS NOT BOUND.
        TRY.
            t883 ?= t882.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t883 IS BOUND.
          t881 = t883->source( ).
        ENDIF.
        IF t881 IS NOT BOUND.
          CREATE OBJECT t881.
          t881->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t881->oval = t882.
        ENDIF.
      ENDIF.
    ENDIF.
    t880->load( ).
    APPEND t881 TO t880->items.
    t880->save( ).
    DATA(t885) = t853.
    DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t886.
    DATA(t887) = t210.
    CLEAR t886.
    IF t887 IS BOUND.
      DATA t888 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t888.
      DATA t889 TYPE REF TO object.
      CLEAR t889.
      CLEAR t888.
      t889 = t887.
      TRY.
          t886 ?= t889.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t886 IS NOT BOUND.
        TRY.
            t888 ?= t887.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t888 IS BOUND.
          t886 = t888->source( ).
        ENDIF.
        IF t886 IS NOT BOUND.
          CREATE OBJECT t886.
          t886->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t886->oval = t887.
        ENDIF.
      ENDIF.
    ENDIF.
    t885->load( ).
    APPEND t886 TO t885->items.
    t885->save( ).
    DATA(t890) = t853.
    DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t891.
    DATA(t892) = t250.
    CLEAR t891.
    IF t892 IS BOUND.
      DATA t893 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t893.
      DATA t894 TYPE REF TO object.
      CLEAR t894.
      CLEAR t893.
      t894 = t892.
      TRY.
          t891 ?= t894.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t891 IS NOT BOUND.
        TRY.
            t893 ?= t892.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t893 IS BOUND.
          t891 = t893->source( ).
        ENDIF.
        IF t891 IS NOT BOUND.
          CREATE OBJECT t891.
          t891->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t891->oval = t892.
        ENDIF.
      ENDIF.
    ENDIF.
    t890->load( ).
    APPEND t891 TO t890->items.
    t890->save( ).
    DATA(t895) = t853.
    DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t896.
    DATA(t897) = t290.
    CLEAR t896.
    IF t897 IS BOUND.
      DATA t898 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t898.
      DATA t899 TYPE REF TO object.
      CLEAR t899.
      CLEAR t898.
      t899 = t897.
      TRY.
          t896 ?= t899.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t896 IS NOT BOUND.
        TRY.
            t898 ?= t897.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t898 IS BOUND.
          t896 = t898->source( ).
        ENDIF.
        IF t896 IS NOT BOUND.
          CREATE OBJECT t896.
          t896->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t896->oval = t897.
        ENDIF.
      ENDIF.
    ENDIF.
    t895->load( ).
    APPEND t896 TO t895->items.
    t895->save( ).
    DATA(t900) = t853.
    DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t901.
    DATA(t902) = t330.
    CLEAR t901.
    IF t902 IS BOUND.
      DATA t903 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t903.
      DATA t904 TYPE REF TO object.
      CLEAR t904.
      CLEAR t903.
      t904 = t902.
      TRY.
          t901 ?= t904.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t901 IS NOT BOUND.
        TRY.
            t903 ?= t902.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t903 IS BOUND.
          t901 = t903->source( ).
        ENDIF.
        IF t901 IS NOT BOUND.
          CREATE OBJECT t901.
          t901->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t901->oval = t902.
        ENDIF.
      ENDIF.
    ENDIF.
    t900->load( ).
    APPEND t901 TO t900->items.
    t900->save( ).
    DATA t905 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t905.
    DATA(t906) = t843.
    DATA(t907) = t848.
    DATA(t908) = t853.
    t905 = zcl_lnt_st_combi_module=>alt_prio( i_first = t906 i_second = t907 i_rest = t908 ).
    t842 = t905.
    result = t842.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
  ENDMETHOD.
ENDCLASS.
