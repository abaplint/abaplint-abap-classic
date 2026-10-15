* TS: src/abap/2_statements/statements/call_dialog.ts:7:1 CallDialog
CLASS zcl_lnt_call_dialog DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_call_dialog IMPLEMENTATION.
  METHOD get_matcher.
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
    DATA(t13) = |FROM|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA(t37) = |EXPORTING|.
    CLEAR t36.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = t1.
    CLEAR t41.
    IF t42 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      CLEAR t43.
      t44 = t42.
      TRY.
          t41 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t43 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t41 = t43->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>plus( i_first = t41 ).
    CLEAR t39.
    IF t40 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      CLEAR t45.
      t46 = t40.
      TRY.
          t39 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t45 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t39 = t45->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t38 = t39.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    CREATE OBJECT t48.
    t47 = t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA(t50) = t35.
    DATA(t51) = t38.
    DATA(t52) = t47.
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t51 i_rest = t52 ).
    t34 = t49.
    t33 = t34.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t56.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = |TO|.
    CLEAR t64.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t67.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    t66 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA(t72) = t63.
    DATA(t73) = t66.
    DATA(t74) = t69.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t62 = t71.
    CLEAR t61.
    IF t62 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t62.
      TRY.
          t61 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t75 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t61 = t75->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>opt_prio( i_first = t61 ).
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t77.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      CLEAR t77.
      t78 = t60.
      TRY.
          t59 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t77 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t59 = t77->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58 = t59.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    CREATE OBJECT t80.
    t79 = t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA(t82) = t55.
    DATA(t83) = t58.
    DATA(t84) = t79.
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t83 i_rest = t84 ).
    t54 = t81.
    t53 = t54.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = |IMPORTING|.
    CLEAR t88.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = t53.
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
    t92 = zcl_lnt_st_combi_module=>plus( i_first = t93 ).
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
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA(t102) = t87.
    DATA(t103) = t90.
    DATA(t104) = t99.
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t103 i_rest = t104 ).
    t86 = t101.
    t85 = t86.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = |CALL DIALOG|.
    CLEAR t108.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    t107 = t108.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t114.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
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
    t121 = zcl_lnt_st_combi_module=>alt( i_first = t122 i_second = t123 i_rest = t124 ).
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
    t110 = t111.
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
    DATA(t133) = t33.
    CLEAR t132.
    IF t133 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t134.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      CLEAR t134.
      t135 = t133.
      TRY.
          t132 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t134 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t132 = t134->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    t131 = zcl_lnt_st_combi_module=>opt( i_first = t132 ).
    CLEAR t130.
    IF t131 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t136.
      DATA t137 TYPE REF TO object.
      CLEAR t137.
      CLEAR t136.
      t137 = t131.
      TRY.
          t130 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t136 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t130 = t136->source( ).
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
    DATA(t138) = t127.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA(t142) = t85.
    CLEAR t141.
    IF t142 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t143.
      DATA t144 TYPE REF TO object.
      CLEAR t144.
      CLEAR t143.
      t144 = t142.
      TRY.
          t141 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t143 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t141 = t143->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    t140 = zcl_lnt_st_combi_module=>opt( i_first = t141 ).
    CLEAR t139.
    IF t140 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      CLEAR t145.
      t146 = t140.
      TRY.
          t139 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t145 ?= t140.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t139 = t145->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    t138->load( ).
    APPEND t139 TO t138->items.
    t138->save( ).
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA(t148) = t107.
    DATA(t149) = t110.
    DATA(t150) = t127.
    t147 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t149 i_rest = t150 ).
    t106 = t147.
    t105 = t106.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA(t152) = |Cloud|.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = t105.
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
    t151 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t152 i_first = t153 ).
    result = t151.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d391_fa1cccd26d80.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
