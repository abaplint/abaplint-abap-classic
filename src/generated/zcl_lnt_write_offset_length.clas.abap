* TS: src/abap/2_statements/expressions/write_offset_length.ts:6:1 WriteOffsetLength
CLASS zcl_lnt_write_offset_length DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_write_offset_length IMPLEMENTATION.
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
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    CLEAR t7.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t12.
    DATA(t13) = `^[\d]+$`.
    DATA(t14) = |^[0-9]+$|.
    DATA(t15) = ||.
    CREATE OBJECT t12 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t14 flags = t15.
    t12->source = t13.
    t11 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t12 ).
    CLEAR t10.
    IF t11 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      CLEAR t16.
      t17 = t11.
      TRY.
          t10 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t16 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t10 = t16->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    t9 = t10.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t20) = t18.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t23.
    DATA(t24) = `^\*$`.
    DATA(t25) = ||.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t24 flags = t25.
    t22 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t23 ).
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      CLEAR t26.
      t27 = t22.
      TRY.
          t21 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t26 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t21 = t26->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA(t29) = t6.
    DATA(t30) = t9.
    DATA(t31) = t18.
    t28 = zcl_lnt_st_combi_module=>alt( i_first = t29 i_second = t30 i_rest = t31 ).
    t5 = t28.
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      CLEAR t32.
      t33 = t5.
      TRY.
          t4 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t32 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t4 = t32->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t39 = zcl_lnt_st_combi_module=>tok( i_t = t40 ).
    CLEAR t38.
    IF t39 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t41.
      DATA t42 TYPE REF TO object.
      CLEAR t42.
      CLEAR t41.
      t42 = t39.
      TRY.
          t38 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t41 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t38 = t41->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    t37 = t38.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
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
    t43 = t44.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    CREATE OBJECT t50.
    t49 = t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA(t52) = t37.
    DATA(t53) = t43.
    DATA(t54) = t49.
    t51 = zcl_lnt_st_combi_module=>alt( i_first = t52 i_second = t53 i_rest = t54 ).
    t36 = t51.
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t55.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      CLEAR t55.
      t56 = t36.
      TRY.
          t35 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t55 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t35 = t55->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = t35.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    CREATE OBJECT t58.
    t57 = t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA(t60) = t3.
    DATA(t61) = t34.
    DATA(t62) = t57.
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t61 i_rest = t62 ).
    t2 = t59.
    t1 = t2.
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
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t67 = zcl_lnt_st_combi_module=>tok( i_t = t68 ).
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t69.
      DATA t70 TYPE REF TO object.
      CLEAR t70.
      CLEAR t69.
      t70 = t67.
      TRY.
          t66 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t69 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t66 = t69->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = t66.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = t1.
    CLEAR t72.
    IF t73 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t74.
      DATA t75 TYPE REF TO object.
      CLEAR t75.
      CLEAR t74.
      t75 = t73.
      TRY.
          t72 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t74 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t72 = t74->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    t71 = t72.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    CREATE OBJECT t77.
    t76 = t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA(t79) = t65.
    DATA(t80) = t71.
    DATA(t81) = t76.
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t80 i_rest = t81 ).
    t64 = t78.
    t63 = t64.
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
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t89 = zcl_lnt_st_combi_module=>tok( i_t = t90 ).
    CLEAR t88.
    IF t89 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t91.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      CLEAR t91.
      t92 = t89.
      TRY.
          t88 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t91 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t88 = t91->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t87 = t88.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t95 = zcl_lnt_st_combi_module=>tok( i_t = t96 ).
    CLEAR t94.
    IF t95 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t95.
      TRY.
          t94 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t97 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t94 = t97->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t93 = t94.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    CREATE OBJECT t100.
    t99 = t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA(t102) = t87.
    DATA(t103) = t93.
    DATA(t104) = t99.
    t101 = zcl_lnt_st_combi_module=>alt( i_first = t102 i_second = t103 i_rest = t104 ).
    t86 = t101.
    CLEAR t85.
    IF t86 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      CLEAR t105.
      t106 = t86.
      TRY.
          t85 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t105 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t85 = t105->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t84 = t85.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = t1.
    CLEAR t108.
    IF t109 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t110.
      DATA t111 TYPE REF TO object.
      CLEAR t111.
      CLEAR t110.
      t111 = t109.
      TRY.
          t108 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t110 ?= t109.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t108 = t110->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t109.
        ENDIF.
      ENDIF.
    ENDIF.
    t107 = t108.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    CREATE OBJECT t113.
    t112 = t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA(t115) = t84.
    DATA(t116) = t107.
    DATA(t117) = t112.
    t114 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t116 i_rest = t117 ).
    t83 = t114.
    t82 = t83.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = t63.
    CLEAR t121.
    IF t122 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t122.
      TRY.
          t121 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t123 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t121 = t123->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    t120 = t121.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
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
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    CLEAR t132.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t137.
    DATA(t138) = `^\/?[\w\d]+$`.
    DATA(t139) = `^\/?[A-Za-z0-9_0-9]+$`.
    DATA(t140) = ||.
    CREATE OBJECT t137 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t139 flags = t140.
    t137->source = t138.
    t136 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t137 ).
    CLEAR t135.
    IF t136 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t141.
      DATA t142 TYPE REF TO object.
      CLEAR t142.
      CLEAR t141.
      t142 = t136.
      TRY.
          t135 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t141 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t135 = t141->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    t134 = t135.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t144.
    CREATE OBJECT t144.
    t143 = t144.
    DATA(t145) = t143.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = |/|.
    CLEAR t146.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    t145->load( ).
    APPEND t146 TO t145->items.
    t145->save( ).
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA(t149) = t131.
    DATA(t150) = t134.
    DATA(t151) = t143.
    t148 = zcl_lnt_st_combi_module=>alt( i_first = t149 i_second = t150 i_rest = t151 ).
    t130 = t148.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      CLEAR t152.
      t153 = t130.
      TRY.
          t129 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t152 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t129 = t152->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t128 = t129.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = t82.
    CLEAR t157.
    IF t158 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t159.
      DATA t160 TYPE REF TO object.
      CLEAR t160.
      CLEAR t159.
      t160 = t158.
      TRY.
          t157 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t159 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t157 = t159->source( ).
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
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t161.
      DATA t162 TYPE REF TO object.
      CLEAR t162.
      CLEAR t161.
      t162 = t156.
      TRY.
          t155 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t161 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t155 = t161->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    t154 = t155.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t164.
    CREATE OBJECT t164.
    t163 = t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA(t166) = t128.
    DATA(t167) = t154.
    DATA(t168) = t163.
    t165 = zcl_lnt_st_combi_module=>seq( i_first = t166 i_second = t167 i_rest = t168 ).
    t127 = t165.
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t169.
      DATA t170 TYPE REF TO object.
      CLEAR t170.
      CLEAR t169.
      t170 = t127.
      TRY.
          t126 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t169 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t126 = t169->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125 = t126.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t172.
    CREATE OBJECT t172.
    t171 = t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA(t174) = t120.
    DATA(t175) = t125.
    DATA(t176) = t171.
    t173 = zcl_lnt_st_combi_module=>alt( i_first = t174 i_second = t175 i_rest = t176 ).
    t119 = t173.
    t118 = t119.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = |AT|.
    CLEAR t182.
    CREATE OBJECT t182.
    t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t182->sval = t183.
    t181 = zcl_lnt_st_combi_module=>opt( i_first = t182 ).
    CLEAR t180.
    IF t181 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t184.
      DATA t185 TYPE REF TO object.
      CLEAR t185.
      CLEAR t184.
      t185 = t181.
      TRY.
          t180 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t184 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t180 = t184->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    t179 = t180.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA(t188) = t118.
    CLEAR t187.
    IF t188 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t189.
      DATA t190 TYPE REF TO object.
      CLEAR t190.
      CLEAR t189.
      t190 = t188.
      TRY.
          t187 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t189 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t187 = t189->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    t186 = t187.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t192.
    CREATE OBJECT t192.
    t191 = t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA(t194) = t179.
    DATA(t195) = t186.
    DATA(t196) = t191.
    t193 = zcl_lnt_st_combi_module=>seq( i_first = t194 i_second = t195 i_rest = t196 ).
    t178 = t193.
    t177 = t178.
    DATA(t197) = t177.
    result = t197.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d357_2e2dc8c80a68.
  ENDMETHOD.
ENDCLASS.
