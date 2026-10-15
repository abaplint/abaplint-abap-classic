* TS: src/abap/2_statements/statements/export.ts:9:1 Export
CLASS zcl_lnt_st_export DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_export IMPLEMENTATION.
  METHOD get_matcher.
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
    DATA(t8) = |FROM|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = |=|.
    CLEAR t10.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = t6.
    DATA(t16) = t9.
    DATA(t17) = t12.
    t14 = zcl_lnt_st_combi_module=>alt_prio( i_first = t15 i_second = t16 i_rest = t17 ).
    t5 = t14.
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t18.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      CLEAR t18.
      t19 = t5.
      TRY.
          t4 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t18 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t4 = t18->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t21.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA(t26) = t3.
    DATA(t27) = t20.
    DATA(t28) = t23.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t2 = t25.
    t1 = t2.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = |CLIENT|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t35.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA(t40) = t31.
    DATA(t41) = t34.
    DATA(t42) = t37.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t41 i_rest = t42 ).
    t30 = t39.
    t29 = t30.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = |ID|.
    CLEAR t46.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t49.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA(t54) = t45.
    DATA(t55) = t48.
    DATA(t56) = t51.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t44 = t53.
    t43 = t44.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = |USING|.
    CLEAR t60.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t63.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA(t68) = t59.
    DATA(t69) = t62.
    DATA(t70) = t65.
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t58 = t67.
    t57 = t58.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t74.
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t78 = zcl_lnt_st_combi_module=>tok( i_t = t79 ).
    CLEAR t77.
    IF t78 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t78.
      TRY.
          t77 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t80 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t77 = t80->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    t76 = t77.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    CREATE OBJECT t83.
    t82 = t83.
    DATA(t84) = t82.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t87.
    DATA(t88) = `^[\w$%\^~]{2}$`.
    DATA(t89) = `^[A-Za-z0-9_$%\^~]{2}$`.
    DATA(t90) = ||.
    CREATE OBJECT t87 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t89 flags = t90.
    t87->source = t88.
    t86 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t87 ).
    CLEAR t85.
    IF t86 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t91.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      CLEAR t91.
      t92 = t86.
      TRY.
          t85 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t91 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t85 = t91->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t84->load( ).
    APPEND t85 TO t84->items.
    t84->save( ).
    DATA(t93) = t82.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
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
    t93->load( ).
    APPEND t94 TO t93->items.
    t93->save( ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA(t100) = t73.
    DATA(t101) = t76.
    DATA(t102) = t82.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t100 i_second = t101 i_rest = t102 ).
    t72 = t99.
    t71 = t72.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = |DATA BUFFER|.
    CLEAR t106.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t109.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    CREATE OBJECT t112.
    t111 = t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA(t114) = t105.
    DATA(t115) = t108.
    DATA(t116) = t111.
    t113 = zcl_lnt_st_combi_module=>seq( i_first = t114 i_second = t115 i_rest = t116 ).
    t104 = t113.
    t103 = t104.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA(t119) = |KeyUser|.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = |MEMORY|.
    CLEAR t123.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = t124.
    t122 = t123.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = |ID|.
    CLEAR t131.
    CREATE OBJECT t131.
    t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t131->sval = t132.
    t130 = t131.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t134.
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    t133 = t134.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t137.
    CREATE OBJECT t137.
    t136 = t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA(t139) = t130.
    DATA(t140) = t133.
    DATA(t141) = t136.
    t138 = zcl_lnt_st_combi_module=>seq( i_first = t139 i_second = t140 i_rest = t141 ).
    t129 = t138.
    CLEAR t128.
    IF t129 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t142.
      DATA t143 TYPE REF TO object.
      CLEAR t143.
      CLEAR t142.
      t143 = t129.
      TRY.
          t128 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t142 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t128 = t142->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>opt( i_first = t128 ).
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t144.
      DATA t145 TYPE REF TO object.
      CLEAR t145.
      CLEAR t144.
      t145 = t127.
      TRY.
          t126 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t144 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t126 = t144->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125 = t126.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t147.
    CREATE OBJECT t147.
    t146 = t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA(t149) = t122.
    DATA(t150) = t125.
    DATA(t151) = t146.
    t148 = zcl_lnt_st_combi_module=>seq( i_first = t149 i_second = t150 i_rest = t151 ).
    t121 = t148.
    CLEAR t120.
    IF t121 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      CLEAR t152.
      t153 = t121.
      TRY.
          t120 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t152 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t120 = t152->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t118 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t119 i_first = t120 ).
    t117 = t118.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = |INTERNAL TABLE|.
    CLEAR t157.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t160.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = t156.
    DATA(t166) = t159.
    DATA(t167) = t162.
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t166 i_rest = t167 ).
    t155 = t164.
    t154 = t155.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA(t170) = |KeyUser|.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = |SHARED MEMORY|.
    CLEAR t177.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = t178.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA(t181) = |SHARED BUFFER|.
    CLEAR t180.
    CREATE OBJECT t180.
    t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t180->sval = t181.
    t179 = t180.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t183.
    CREATE OBJECT t183.
    t182 = t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA(t185) = t176.
    DATA(t186) = t179.
    DATA(t187) = t182.
    t184 = zcl_lnt_st_combi_module=>alt( i_first = t185 i_second = t186 i_rest = t187 ).
    t175 = t184.
    CLEAR t174.
    IF t175 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t188.
      DATA t189 TYPE REF TO object.
      CLEAR t189.
      CLEAR t188.
      t189 = t175.
      TRY.
          t174 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t188 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t174 = t188->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = t174.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = t71.
    CLEAR t191.
    IF t192 IS BOUND.
      DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t193.
      DATA t194 TYPE REF TO object.
      CLEAR t194.
      CLEAR t193.
      t194 = t192.
      TRY.
          t191 ?= t194.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t193 ?= t192.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t193 IS BOUND.
          t191 = t193->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t192.
        ENDIF.
      ENDIF.
    ENDIF.
    t190 = t191.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    CREATE OBJECT t196.
    t195 = t196.
    DATA(t197) = t195.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA(t202) = t1.
    CLEAR t201.
    IF t202 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t203.
      DATA t204 TYPE REF TO object.
      CLEAR t204.
      CLEAR t203.
      t204 = t202.
      TRY.
          t201 ?= t204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t203 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t201 = t203->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    t200 = t201.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = t29.
    CLEAR t206.
    IF t207 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      CLEAR t208.
      t209 = t207.
      TRY.
          t206 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t208 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t206 = t208->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    t205 = t206.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t211.
    CREATE OBJECT t211.
    t210 = t211.
    DATA(t212) = t210.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = t43.
    CLEAR t213.
    IF t214 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t215.
      DATA t216 TYPE REF TO object.
      CLEAR t216.
      CLEAR t215.
      t216 = t214.
      TRY.
          t213 ?= t216.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t213 IS NOT BOUND.
        TRY.
            t215 ?= t214.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t213 = t215->source( ).
        ENDIF.
        IF t213 IS NOT BOUND.
          CREATE OBJECT t213.
          t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t213->oval = t214.
        ENDIF.
      ENDIF.
    ENDIF.
    t212->load( ).
    APPEND t213 TO t212->items.
    t212->save( ).
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA(t218) = t200.
    DATA(t219) = t205.
    DATA(t220) = t210.
    t217 = zcl_lnt_st_combi_module=>per( i_first = t218 i_second = t219 i_rest = t220 ).
    t199 = t217.
    CLEAR t198.
    IF t199 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t221.
      DATA t222 TYPE REF TO object.
      CLEAR t222.
      CLEAR t221.
      t222 = t199.
      TRY.
          t198 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t221 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t198 = t221->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t197->load( ).
    APPEND t198 TO t197->items.
    t197->save( ).
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t223.
    DATA(t224) = t173.
    DATA(t225) = t190.
    DATA(t226) = t195.
    t223 = zcl_lnt_st_combi_module=>seq( i_first = t224 i_second = t225 i_rest = t226 ).
    t172 = t223.
    CLEAR t171.
    IF t172 IS BOUND.
      DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t227.
      DATA t228 TYPE REF TO object.
      CLEAR t228.
      CLEAR t227.
      t228 = t172.
      TRY.
          t171 ?= t228.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t227 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t227 IS BOUND.
          t171 = t227->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t169 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t170 i_first = t171 ).
    t168 = t169.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA(t231) = |KeyUser|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = |DATABASE|.
    CLEAR t235.
    CREATE OBJECT t235.
    t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t235->sval = t236.
    t234 = t235.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = t71.
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
    t237 = t238.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t243.
    CREATE OBJECT t243.
    t242 = t243.
    DATA(t244) = t242.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = t1.
    CLEAR t248.
    IF t249 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t250.
      DATA t251 TYPE REF TO object.
      CLEAR t251.
      CLEAR t250.
      t251 = t249.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t249.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t249.
        ENDIF.
      ENDIF.
    ENDIF.
    t247 = t248.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = t29.
    CLEAR t253.
    IF t254 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t255.
      DATA t256 TYPE REF TO object.
      CLEAR t256.
      CLEAR t255.
      t256 = t254.
      TRY.
          t253 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t253 IS NOT BOUND.
        TRY.
            t255 ?= t254.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t253 = t255->source( ).
        ENDIF.
        IF t253 IS NOT BOUND.
          CREATE OBJECT t253.
          t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t253->oval = t254.
        ENDIF.
      ENDIF.
    ENDIF.
    t252 = t253.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t257.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t258.
    CREATE OBJECT t258.
    t257 = t258.
    DATA(t259) = t257.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA(t261) = t43.
    CLEAR t260.
    IF t261 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t262.
      DATA t263 TYPE REF TO object.
      CLEAR t263.
      CLEAR t262.
      t263 = t261.
      TRY.
          t260 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t262 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t260 = t262->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    t259->load( ).
    APPEND t260 TO t259->items.
    t259->save( ).
    DATA(t264) = t257.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA(t266) = t57.
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
    t264->load( ).
    APPEND t265 TO t264->items.
    t264->save( ).
    DATA t269 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t269.
    DATA(t270) = t247.
    DATA(t271) = t252.
    DATA(t272) = t257.
    t269 = zcl_lnt_st_combi_module=>per( i_first = t270 i_second = t271 i_rest = t272 ).
    t246 = t269.
    CLEAR t245.
    IF t246 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t273.
      DATA t274 TYPE REF TO object.
      CLEAR t274.
      CLEAR t273.
      t274 = t246.
      TRY.
          t245 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t273 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t245 = t273->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t244->load( ).
    APPEND t245 TO t244->items.
    t244->save( ).
    DATA t275 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t275.
    DATA(t276) = t234.
    DATA(t277) = t237.
    DATA(t278) = t242.
    t275 = zcl_lnt_st_combi_module=>seq( i_first = t276 i_second = t277 i_rest = t278 ).
    t233 = t275.
    CLEAR t232.
    IF t233 IS BOUND.
      DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t279.
      DATA t280 TYPE REF TO object.
      CLEAR t280.
      CLEAR t279.
      t280 = t233.
      TRY.
          t232 ?= t280.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t279 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t279 IS BOUND.
          t232 = t279->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    t230 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t231 i_first = t232 ).
    t229 = t230.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA(t285) = t103.
    CLEAR t284.
    IF t285 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t286.
      DATA t287 TYPE REF TO object.
      CLEAR t287.
      CLEAR t286.
      t287 = t285.
      TRY.
          t284 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t284 IS NOT BOUND.
        TRY.
            t286 ?= t285.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t284 = t286->source( ).
        ENDIF.
        IF t284 IS NOT BOUND.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t284->oval = t285.
        ENDIF.
      ENDIF.
    ENDIF.
    t283 = t284.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA(t290) = t117.
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
    t288 = t289.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t294.
    CREATE OBJECT t294.
    t293 = t294.
    DATA(t295) = t293.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = t229.
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
    t295->load( ).
    APPEND t296 TO t295->items.
    t295->save( ).
    DATA(t300) = t293.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = t154.
    CLEAR t301.
    IF t302 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t303.
      DATA t304 TYPE REF TO object.
      CLEAR t304.
      CLEAR t303.
      t304 = t302.
      TRY.
          t301 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t303 ?= t302.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t301 = t303->source( ).
        ENDIF.
        IF t301 IS NOT BOUND.
          CREATE OBJECT t301.
          t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t301->oval = t302.
        ENDIF.
      ENDIF.
    ENDIF.
    t300->load( ).
    APPEND t301 TO t300->items.
    t300->save( ).
    DATA(t305) = t293.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = t168.
    CLEAR t306.
    IF t307 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t308.
      DATA t309 TYPE REF TO object.
      CLEAR t309.
      CLEAR t308.
      t309 = t307.
      TRY.
          t306 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t308 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t306 = t308->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t307.
        ENDIF.
      ENDIF.
    ENDIF.
    t305->load( ).
    APPEND t306 TO t305->items.
    t305->save( ).
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA(t311) = t283.
    DATA(t312) = t288.
    DATA(t313) = t293.
    t310 = zcl_lnt_st_combi_module=>alt( i_first = t311 i_second = t312 i_rest = t313 ).
    t282 = t310.
    t281 = t282.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t314.
    DATA t315 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    DATA(t318) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    CLEAR t317.
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t317->cval = t318.
    ENDIF.
    t316 = t317.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    CLEAR t320.
    IF t321 IS BOUND.
      CREATE OBJECT t320.
      t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t320->cval = t321.
    ENDIF.
    t319 = t320.
    DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t323.
    CREATE OBJECT t323.
    t322 = t323.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA(t325) = t316.
    DATA(t326) = t319.
    DATA(t327) = t322.
    t324 = zcl_lnt_st_combi_module=>alt( i_first = t325 i_second = t326 i_rest = t327 ).
    t315 = t324.
    t314 = t315.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t328.
    DATA t329 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t329.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA(t340) = t314.
    CLEAR t339.
    IF t340 IS BOUND.
      DATA t341 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t341.
      DATA t342 TYPE REF TO object.
      CLEAR t342.
      CLEAR t341.
      t342 = t340.
      TRY.
          t339 ?= t342.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t339 IS NOT BOUND.
        TRY.
            t341 ?= t340.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t341 IS BOUND.
          t339 = t341->source( ).
        ENDIF.
        IF t339 IS NOT BOUND.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t339->oval = t340.
        ENDIF.
      ENDIF.
    ENDIF.
    t338 = t339.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = t1.
    CLEAR t344.
    IF t345 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t346.
      DATA t347 TYPE REF TO object.
      CLEAR t347.
      CLEAR t346.
      t347 = t345.
      TRY.
          t344 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t344 IS NOT BOUND.
        TRY.
            t346 ?= t345.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t344 = t346->source( ).
        ENDIF.
        IF t344 IS NOT BOUND.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t344->oval = t345.
        ENDIF.
      ENDIF.
    ENDIF.
    t343 = t344.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t349.
    CREATE OBJECT t349.
    t348 = t349.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t350.
    DATA(t351) = t338.
    DATA(t352) = t343.
    DATA(t353) = t348.
    t350 = zcl_lnt_st_combi_module=>seq( i_first = t351 i_second = t352 i_rest = t353 ).
    t337 = t350.
    CLEAR t336.
    IF t337 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t354.
      DATA t355 TYPE REF TO object.
      CLEAR t355.
      CLEAR t354.
      t355 = t337.
      TRY.
          t336 ?= t355.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t336 IS NOT BOUND.
        TRY.
            t354 ?= t337.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t336 = t354->source( ).
        ENDIF.
        IF t336 IS NOT BOUND.
          CREATE OBJECT t336.
          t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t336->oval = t337.
        ENDIF.
      ENDIF.
    ENDIF.
    t335 = t336.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = t314.
    CLEAR t357.
    IF t358 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t359.
      DATA t360 TYPE REF TO object.
      CLEAR t360.
      CLEAR t359.
      t360 = t358.
      TRY.
          t357 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t357 IS NOT BOUND.
        TRY.
            t359 ?= t358.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t357 = t359->source( ).
        ENDIF.
        IF t357 IS NOT BOUND.
          CREATE OBJECT t357.
          t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t357->oval = t358.
        ENDIF.
      ENDIF.
    ENDIF.
    t356 = t357.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t362.
    CREATE OBJECT t362.
    t361 = t362.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA(t364) = t335.
    DATA(t365) = t356.
    DATA(t366) = t361.
    t363 = zcl_lnt_st_combi_module=>alt_prio( i_first = t364 i_second = t365 i_rest = t366 ).
    t334 = t363.
    CLEAR t333.
    IF t334 IS BOUND.
      DATA t367 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t367.
      DATA t368 TYPE REF TO object.
      CLEAR t368.
      CLEAR t367.
      t368 = t334.
      TRY.
          t333 ?= t368.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t333 IS NOT BOUND.
        TRY.
            t367 ?= t334.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t367 IS BOUND.
          t333 = t367->source( ).
        ENDIF.
        IF t333 IS NOT BOUND.
          CREATE OBJECT t333.
          t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t333->oval = t334.
        ENDIF.
      ENDIF.
    ENDIF.
    t332 = zcl_lnt_st_combi_module=>plus( i_first = t333 ).
    CLEAR t331.
    IF t332 IS BOUND.
      DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t369.
      DATA t370 TYPE REF TO object.
      CLEAR t370.
      CLEAR t369.
      t370 = t332.
      TRY.
          t331 ?= t370.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t369 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t369 IS BOUND.
          t331 = t369->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    t330 = t331.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t372.
    IF t373 IS BOUND.
      CREATE OBJECT t372.
      t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t372->cval = t373.
    ENDIF.
    t371 = t372.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t375.
    CREATE OBJECT t375.
    t374 = t375.
    DATA(t376) = t374.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA(t378) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t377.
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t377->cval = t378.
    ENDIF.
    t376->load( ).
    APPEND t377 TO t376->items.
    t376->save( ).
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t379.
    DATA(t380) = t330.
    DATA(t381) = t371.
    DATA(t382) = t374.
    t379 = zcl_lnt_st_combi_module=>alt( i_first = t380 i_second = t381 i_rest = t382 ).
    t329 = t379.
    t328 = t329.
    DATA t383 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t383.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA(t387) = |COMPRESSION|.
    CLEAR t386.
    CREATE OBJECT t386.
    t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t386->sval = t387.
    t385 = t386.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA(t393) = |ON|.
    CLEAR t392.
    CREATE OBJECT t392.
    t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t392->sval = t393.
    t391 = t392.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA(t396) = |OFF|.
    CLEAR t395.
    CREATE OBJECT t395.
    t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t395->sval = t396.
    t394 = t395.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t398.
    CREATE OBJECT t398.
    t397 = t398.
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t399.
    DATA(t400) = t391.
    DATA(t401) = t394.
    DATA(t402) = t397.
    t399 = zcl_lnt_st_combi_module=>alt( i_first = t400 i_second = t401 i_rest = t402 ).
    t390 = t399.
    CLEAR t389.
    IF t390 IS BOUND.
      DATA t403 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t403.
      DATA t404 TYPE REF TO object.
      CLEAR t404.
      CLEAR t403.
      t404 = t390.
      TRY.
          t389 ?= t404.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t389 IS NOT BOUND.
        TRY.
            t403 ?= t390.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t403 IS BOUND.
          t389 = t403->source( ).
        ENDIF.
        IF t389 IS NOT BOUND.
          CREATE OBJECT t389.
          t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t389->oval = t390.
        ENDIF.
      ENDIF.
    ENDIF.
    t388 = t389.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t405.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t406.
    CREATE OBJECT t406.
    t405 = t406.
    DATA t407 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t407.
    DATA(t408) = t385.
    DATA(t409) = t388.
    DATA(t410) = t405.
    t407 = zcl_lnt_st_combi_module=>seq( i_first = t408 i_second = t409 i_rest = t410 ).
    t384 = t407.
    t383 = t384.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t411.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t412.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA(t415) = |CODE PAGE HINT|.
    CLEAR t414.
    CREATE OBJECT t414.
    t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t414->sval = t415.
    t413 = t414.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA(t418) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t417.
    IF t418 IS BOUND.
      CREATE OBJECT t417.
      t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t417->cval = t418.
    ENDIF.
    t416 = t417.
    DATA t419 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t419.
    DATA t420 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t420.
    CREATE OBJECT t420.
    t419 = t420.
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t421.
    DATA(t422) = t413.
    DATA(t423) = t416.
    DATA(t424) = t419.
    t421 = zcl_lnt_st_combi_module=>seq( i_first = t422 i_second = t423 i_rest = t424 ).
    t412 = t421.
    t411 = t412.
    DATA t425 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA(t428) = |EXPORT|.
    CLEAR t427.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = t428.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA(t431) = t328.
    CLEAR t430.
    IF t431 IS BOUND.
      DATA t432 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t432.
      DATA t433 TYPE REF TO object.
      CLEAR t433.
      CLEAR t432.
      t433 = t431.
      TRY.
          t430 ?= t433.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t432 ?= t431.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t432 IS BOUND.
          t430 = t432->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t431.
        ENDIF.
      ENDIF.
    ENDIF.
    t429 = t430.
    DATA t434 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t435.
    CREATE OBJECT t435.
    t434 = t435.
    DATA(t436) = t434.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA(t438) = |TO|.
    CLEAR t437.
    CREATE OBJECT t437.
    t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t437->sval = t438.
    t436->load( ).
    APPEND t437 TO t436->items.
    t436->save( ).
    DATA(t439) = t434.
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t440.
    DATA(t441) = t281.
    CLEAR t440.
    IF t441 IS BOUND.
      DATA t442 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t442.
      DATA t443 TYPE REF TO object.
      CLEAR t443.
      CLEAR t442.
      t443 = t441.
      TRY.
          t440 ?= t443.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t440 IS NOT BOUND.
        TRY.
            t442 ?= t441.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t442 IS BOUND.
          t440 = t442->source( ).
        ENDIF.
        IF t440 IS NOT BOUND.
          CREATE OBJECT t440.
          t440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t440->oval = t441.
        ENDIF.
      ENDIF.
    ENDIF.
    t439->load( ).
    APPEND t440 TO t439->items.
    t439->save( ).
    DATA(t444) = t434.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA t446 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t446.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = t383.
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
    t446 = zcl_lnt_st_combi_module=>opt( i_first = t447 ).
    CLEAR t445.
    IF t446 IS BOUND.
      DATA t451 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t451.
      DATA t452 TYPE REF TO object.
      CLEAR t452.
      CLEAR t451.
      t452 = t446.
      TRY.
          t445 ?= t452.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t445 IS NOT BOUND.
        TRY.
            t451 ?= t446.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t451 IS BOUND.
          t445 = t451->source( ).
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
    DATA(t453) = t434.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA t455 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t455.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t456.
    DATA(t457) = t411.
    CLEAR t456.
    IF t457 IS BOUND.
      DATA t458 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t458.
      DATA t459 TYPE REF TO object.
      CLEAR t459.
      CLEAR t458.
      t459 = t457.
      TRY.
          t456 ?= t459.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t456 IS NOT BOUND.
        TRY.
            t458 ?= t457.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t458 IS BOUND.
          t456 = t458->source( ).
        ENDIF.
        IF t456 IS NOT BOUND.
          CREATE OBJECT t456.
          t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t456->oval = t457.
        ENDIF.
      ENDIF.
    ENDIF.
    t455 = zcl_lnt_st_combi_module=>opt( i_first = t456 ).
    CLEAR t454.
    IF t455 IS BOUND.
      DATA t460 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t460.
      DATA t461 TYPE REF TO object.
      CLEAR t461.
      CLEAR t460.
      t461 = t455.
      TRY.
          t454 ?= t461.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t454 IS NOT BOUND.
        TRY.
            t460 ?= t455.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t460 IS BOUND.
          t454 = t460->source( ).
        ENDIF.
        IF t454 IS NOT BOUND.
          CREATE OBJECT t454.
          t454->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t454->oval = t455.
        ENDIF.
      ENDIF.
    ENDIF.
    t453->load( ).
    APPEND t454 TO t453->items.
    t453->save( ).
    DATA t462 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t462.
    DATA(t463) = t426.
    DATA(t464) = t429.
    DATA(t465) = t434.
    t462 = zcl_lnt_st_combi_module=>seq( i_first = t463 i_second = t464 i_rest = t465 ).
    t425 = t462.
    result = t425.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d491_a57d7381546f.
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
