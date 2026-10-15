* TS: src/abap/2_statements/expressions/component_compare.ts:7:1 ComponentCompare
CLASS zcl_lnt_st_component_compare DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_component_compare IMPLEMENTATION.
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
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
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
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
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
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    CLEAR t18.
    IF t19 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      CLEAR t21.
      t22 = t19.
      TRY.
          t18 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t21 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t18 = t21->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t17 = t18.
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
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = |,|.
    CLEAR t36.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = t1.
    CLEAR t39.
    IF t40 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t41.
      DATA t42 TYPE REF TO object.
      CLEAR t42.
      CLEAR t41.
      t42 = t40.
      TRY.
          t39 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t41 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t39 = t41->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t38 = t39.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = t35.
    DATA(t47) = t38.
    DATA(t48) = t43.
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t47 i_rest = t48 ).
    t34 = t45.
    CLEAR t33.
    IF t34 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      CLEAR t49.
      t50 = t34.
      TRY.
          t33 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t49 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t33 = t49->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t32 = zcl_lnt_st_combi_module=>plus( i_first = t33 ).
    CLEAR t31.
    IF t32 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t51.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      CLEAR t51.
      t52 = t32.
      TRY.
          t31 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t51 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t31 = t51->source( ).
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
    DATA(t53) = t28.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t55 = zcl_lnt_st_combi_module=>tok( i_t = t56 ).
    CLEAR t54.
    IF t55 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t57.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      CLEAR t57.
      t58 = t55.
      TRY.
          t54 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t57 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t54 = t57->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA(t60) = t17.
    DATA(t61) = t23.
    DATA(t62) = t28.
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t61 i_rest = t62 ).
    t16 = t59.
    t15 = t16.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = |NOT|.
    CLEAR t68.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = zcl_lnt_st_combi_module=>opt( i_first = t68 ).
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      CLEAR t70.
      t71 = t67.
      TRY.
          t66 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t70 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t66 = t70->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = t66.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = |IN|.
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
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t81.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = t15.
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
    t83 = t84.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    CREATE OBJECT t89.
    t88 = t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA(t91) = t80.
    DATA(t92) = t83.
    DATA(t93) = t88.
    t90 = zcl_lnt_st_combi_module=>alt_prio( i_first = t91 i_second = t92 i_rest = t93 ).
    t79 = t90.
    CLEAR t78.
    IF t79 IS BOUND.
      DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t94.
      DATA t95 TYPE REF TO object.
      CLEAR t95.
      CLEAR t94.
      t95 = t79.
      TRY.
          t78 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t94 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t94 IS BOUND.
          t78 = t94->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    t77->load( ).
    APPEND t78 TO t77->items.
    t77->save( ).
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = t65.
    DATA(t98) = t72.
    DATA(t99) = t75.
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t98 i_rest = t99 ).
    t64 = t96.
    t63 = t64.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = |IS|.
    CLEAR t103.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = t104.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = |NOT|.
    CLEAR t108.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    t107 = zcl_lnt_st_combi_module=>opt( i_first = t108 ).
    CLEAR t106.
    IF t107 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t110.
      DATA t111 TYPE REF TO object.
      CLEAR t111.
      CLEAR t110.
      t111 = t107.
      TRY.
          t106 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t110 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t106 = t110->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    t105 = t106.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    CREATE OBJECT t113.
    t112 = t113.
    DATA(t114) = t112.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = |SUPPLIED|.
    CLEAR t118.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = |BOUND|.
    CLEAR t121.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    CREATE OBJECT t124.
    t123 = t124.
    DATA(t125) = t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t129.
    DATA t130 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t131.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t131 = zcl_lnt_version_module=>release_b8cd.
    DATA(t132) = |v750|.
    t130 = t131->get( p0 = t132 ).
    t129 = t130.
    CLEAR t128.
    IF t129 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t133.
      DATA t134 TYPE REF TO object.
      CLEAR t134.
      CLEAR t133.
      t134 = t129.
      TRY.
          t128 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t133 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t128 = t133->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = |INSTANCE OF|.
    CLEAR t138.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
    t137 = t138.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t141.
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t141->cval = t142.
    ENDIF.
    t140 = t141.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t144.
    CREATE OBJECT t144.
    t143 = t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA(t146) = t137.
    DATA(t147) = t140.
    DATA(t148) = t143.
    t145 = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t147 i_rest = t148 ).
    t136 = t145.
    CLEAR t135.
    IF t136 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t149.
      DATA t150 TYPE REF TO object.
      CLEAR t150.
      CLEAR t149.
      t150 = t136.
      TRY.
          t135 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t149 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t135 = t149->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t151.
    t127 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t128 i_first = t135 i_opts = t151 ).
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      CLEAR t152.
      t153 = t127.
      TRY.
          t126 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t152 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t126 = t152->source( ).
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
    DATA(t154) = t123.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = |REQUESTED|.
    CLEAR t155.
    CREATE OBJECT t155.
    t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t155->sval = t156.
    t154->load( ).
    APPEND t155 TO t154->items.
    t154->save( ).
    DATA(t157) = t123.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = |ASSIGNED|.
    CLEAR t158.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157->load( ).
    APPEND t158 TO t157->items.
    t157->save( ).
    DATA(t160) = t123.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = |INITIAL|.
    CLEAR t161.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = t162.
    t160->load( ).
    APPEND t161 TO t160->items.
    t160->save( ).
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA(t164) = t117.
    DATA(t165) = t120.
    DATA(t166) = t123.
    t163 = zcl_lnt_st_combi_module=>alt_prio( i_first = t164 i_second = t165 i_rest = t166 ).
    t116 = t163.
    CLEAR t115.
    IF t116 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t167.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      CLEAR t167.
      t168 = t116.
      TRY.
          t115 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t167 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t115 = t167->source( ).
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
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA(t170) = t102.
    DATA(t171) = t105.
    DATA(t172) = t112.
    t169 = zcl_lnt_st_combi_module=>seq( i_first = t170 i_second = t171 i_rest = t172 ).
    t101 = t169.
    t100 = t101.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = |NOT|.
    CLEAR t178.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t179.
    t177 = zcl_lnt_st_combi_module=>opt( i_first = t178 ).
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
    t175 = t176.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = |BETWEEN|.
    CLEAR t183.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    t182 = t183.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t186.
    CREATE OBJECT t186.
    t185 = t186.
    DATA(t187) = t185.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t188.
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t188->cval = t189.
    ENDIF.
    t187->load( ).
    APPEND t188 TO t187->items.
    t187->save( ).
    DATA(t190) = t185.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = |AND|.
    CLEAR t191.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t190->load( ).
    APPEND t191 TO t190->items.
    t190->save( ).
    DATA(t193) = t185.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t194.
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t194->cval = t195.
    ENDIF.
    t193->load( ).
    APPEND t194 TO t193->items.
    t193->save( ).
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA(t197) = t175.
    DATA(t198) = t182.
    DATA(t199) = t185.
    t196 = zcl_lnt_st_combi_module=>seq( i_first = t197 i_second = t198 i_rest = t199 ).
    t174 = t196.
    t173 = t174.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    CLEAR t203.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    t202 = t203.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
    CLEAR t212.
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA(t216) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t215.
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t215->cval = t216.
    ENDIF.
    t214 = t215.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t218.
    CREATE OBJECT t218.
    t217 = t218.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA(t220) = t211.
    DATA(t221) = t214.
    DATA(t222) = t217.
    t219 = zcl_lnt_st_combi_module=>seq( i_first = t220 i_second = t221 i_rest = t222 ).
    t210 = t219.
    CLEAR t209.
    IF t210 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t223.
      DATA t224 TYPE REF TO object.
      CLEAR t224.
      CLEAR t223.
      t224 = t210.
      TRY.
          t209 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t209 IS NOT BOUND.
        TRY.
            t223 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t209 = t223->source( ).
        ENDIF.
        IF t209 IS NOT BOUND.
          CREATE OBJECT t209.
          t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t209->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    t208 = t209.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = t63.
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
    t225 = t226.
    DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t231.
    CREATE OBJECT t231.
    t230 = t231.
    DATA(t232) = t230.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = t173.
    CLEAR t233.
    IF t234 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t235.
      DATA t236 TYPE REF TO object.
      CLEAR t236.
      CLEAR t235.
      t236 = t234.
      TRY.
          t233 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t233 IS NOT BOUND.
        TRY.
            t235 ?= t234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t233 = t235->source( ).
        ENDIF.
        IF t233 IS NOT BOUND.
          CREATE OBJECT t233.
          t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t233->oval = t234.
        ENDIF.
      ENDIF.
    ENDIF.
    t232->load( ).
    APPEND t233 TO t232->items.
    t232->save( ).
    DATA(t237) = t230.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = t100.
    CLEAR t238.
    IF t239 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t240.
      DATA t241 TYPE REF TO object.
      CLEAR t241.
      CLEAR t240.
      t241 = t239.
      TRY.
          t238 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t240 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t238 = t240->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t237->load( ).
    APPEND t238 TO t237->items.
    t237->save( ).
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA(t243) = t208.
    DATA(t244) = t225.
    DATA(t245) = t230.
    t242 = zcl_lnt_st_combi_module=>alt_prio( i_first = t243 i_second = t244 i_rest = t245 ).
    t207 = t242.
    CLEAR t206.
    IF t207 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t246.
      DATA t247 TYPE REF TO object.
      CLEAR t247.
      CLEAR t246.
      t247 = t207.
      TRY.
          t206 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t246 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t206 = t246->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    t205 = t206.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t249.
    CREATE OBJECT t249.
    t248 = t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA(t251) = t202.
    DATA(t252) = t205.
    DATA(t253) = t248.
    t250 = zcl_lnt_st_combi_module=>seq( i_first = t251 i_second = t252 i_rest = t253 ).
    t201 = t250.
    t200 = t201.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA(t260) = |NOT|.
    CLEAR t259.
    CREATE OBJECT t259.
    t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t259->sval = t260.
    t258 = zcl_lnt_st_combi_module=>opt( i_first = t259 ).
    CLEAR t257.
    IF t258 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t261.
      DATA t262 TYPE REF TO object.
      CLEAR t262.
      CLEAR t261.
      t262 = t258.
      TRY.
          t257 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t261 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t257 = t261->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t256 = t257.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA(t265) = t200.
    CLEAR t264.
    IF t265 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t266.
      DATA t267 TYPE REF TO object.
      CLEAR t267.
      CLEAR t266.
      t267 = t265.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t265.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t265.
        ENDIF.
      ENDIF.
    ENDIF.
    t263 = t264.
    DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t269.
    CREATE OBJECT t269.
    t268 = t269.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t270.
    DATA(t271) = t256.
    DATA(t272) = t263.
    DATA(t273) = t268.
    t270 = zcl_lnt_st_combi_module=>seq( i_first = t271 i_second = t272 i_rest = t273 ).
    t255 = t270.
    t254 = t255.
    DATA(t274) = t254.
    result = t274.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
  ENDMETHOD.
ENDCLASS.
