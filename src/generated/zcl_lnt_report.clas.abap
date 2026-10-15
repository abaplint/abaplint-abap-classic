* TS: src/abap/2_statements/statements/report.ts:8:1 Report
CLASS zcl_lnt_report DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_report IMPLEMENTATION.
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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    CLEAR t10.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
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
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t25 = zcl_lnt_st_combi_module=>tok( i_t = t26 ).
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      CLEAR t27.
      t28 = t25.
      TRY.
          t24 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t27 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t24 = t27->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    t23 = t24.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA(t32) = t17.
    DATA(t33) = t23.
    DATA(t34) = t29.
    t31 = zcl_lnt_st_combi_module=>alt( i_first = t32 i_second = t33 i_rest = t34 ).
    t16 = t31.
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      CLEAR t35.
      t36 = t16.
      TRY.
          t15 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t35 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t15 = t35->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA(t38) = t3.
    DATA(t39) = t9.
    DATA(t40) = t12.
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t39 i_rest = t40 ).
    t2 = t37.
    t1 = t2.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA(t43) = |NO STANDARD PAGE HEADING|.
    t42 = zcl_lnt_st_combi_module=>str( i_s = t43 ).
    t41 = t42.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = |LINE-SIZE|.
    CLEAR t47.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    CLEAR t50.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    CREATE OBJECT t53.
    t52 = t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA(t55) = t46.
    DATA(t56) = t49.
    DATA(t57) = t52.
    t54 = zcl_lnt_st_combi_module=>seq( i_first = t55 i_second = t56 i_rest = t57 ).
    t45 = t54.
    t44 = t45.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = |LINE-COUNT|.
    CLEAR t61.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    CLEAR t64.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    CREATE OBJECT t67.
    t66 = t67.
    DATA(t68) = t66.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = t1.
    CLEAR t71.
    IF t72 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t73.
      DATA t74 TYPE REF TO object.
      CLEAR t74.
      CLEAR t73.
      t74 = t72.
      TRY.
          t71 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t73 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t71 = t73->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    t70 = zcl_lnt_st_combi_module=>opt( i_first = t71 ).
    CLEAR t69.
    IF t70 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t70.
      TRY.
          t69 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t75 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t69 = t75->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t68->load( ).
    APPEND t69 TO t68->items.
    t68->save( ).
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA(t78) = t60.
    DATA(t79) = t63.
    DATA(t80) = t66.
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t79 i_rest = t80 ).
    t59 = t77.
    t58 = t59.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = |MESSAGE-ID|.
    CLEAR t84.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    t83 = t84.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f.
    CLEAR t87.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t90.
    CREATE OBJECT t90.
    t89 = t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA(t92) = t83.
    DATA(t93) = t86.
    DATA(t94) = t89.
    t91 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t93 i_rest = t94 ).
    t82 = t91.
    t81 = t82.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = |USING DATABASE|.
    CLEAR t98.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t101.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t104.
    CREATE OBJECT t104.
    t103 = t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA(t106) = t97.
    DATA(t107) = t100.
    DATA(t108) = t103.
    t105 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t107 i_rest = t108 ).
    t96 = t105.
    t95 = t96.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = |REPORT|.
    CLEAR t112.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
    CLEAR t117.
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116 = zcl_lnt_st_combi_module=>opt( i_first = t117 ).
    CLEAR t115.
    IF t116 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t119.
      DATA t120 TYPE REF TO object.
      CLEAR t120.
      CLEAR t119.
      t120 = t116.
      TRY.
          t115 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t119 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t115 = t119->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    t114 = t115.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    CREATE OBJECT t122.
    t121 = t122.
    DATA(t123) = t121.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = t41.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t131.
      DATA t132 TYPE REF TO object.
      CLEAR t132.
      CLEAR t131.
      t132 = t130.
      TRY.
          t129 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t131 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t129 = t131->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t128 = t129.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = t44.
    CLEAR t134.
    IF t135 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t136.
      DATA t137 TYPE REF TO object.
      CLEAR t137.
      CLEAR t136.
      t137 = t135.
      TRY.
          t134 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t136 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t134 = t136->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    t133 = t134.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t139.
    CREATE OBJECT t139.
    t138 = t139.
    DATA(t140) = t138.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA(t142) = t58.
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
    t140->load( ).
    APPEND t141 TO t140->items.
    t140->save( ).
    DATA(t145) = t138.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = t95.
    CLEAR t146.
    IF t147 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t148.
      DATA t149 TYPE REF TO object.
      CLEAR t149.
      CLEAR t148.
      t149 = t147.
      TRY.
          t146 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t148 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t146 = t148->source( ).
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
    DATA(t150) = t138.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = t81.
    CLEAR t151.
    IF t152 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t153.
      DATA t154 TYPE REF TO object.
      CLEAR t154.
      CLEAR t153.
      t154 = t152.
      TRY.
          t151 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t153 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t151 = t153->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    t150->load( ).
    APPEND t151 TO t150->items.
    t150->save( ).
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA(t156) = t128.
    DATA(t157) = t133.
    DATA(t158) = t138.
    t155 = zcl_lnt_st_combi_module=>per( i_first = t156 i_second = t157 i_rest = t158 ).
    t127 = t155.
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t159.
      DATA t160 TYPE REF TO object.
      CLEAR t160.
      CLEAR t159.
      t160 = t127.
      TRY.
          t126 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t159 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t126 = t159->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125 = zcl_lnt_st_combi_module=>opt( i_first = t126 ).
    CLEAR t124.
    IF t125 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t161.
      DATA t162 TYPE REF TO object.
      CLEAR t162.
      CLEAR t161.
      t162 = t125.
      TRY.
          t124 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t161 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t124 = t161->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t125.
        ENDIF.
      ENDIF.
    ENDIF.
    t123->load( ).
    APPEND t124 TO t123->items.
    t123->save( ).
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA(t164) = t111.
    DATA(t165) = t114.
    DATA(t166) = t121.
    t163 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t165 i_rest = t166 ).
    t110 = t163.
    t109 = t110.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA(t168) = |Cloud|.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = t109.
    CLEAR t169.
    IF t170 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t171.
      DATA t172 TYPE REF TO object.
      CLEAR t172.
      CLEAR t171.
      t172 = t170.
      TRY.
          t169 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t169 IS NOT BOUND.
        TRY.
            t171 ?= t170.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t169 = t171->source( ).
        ENDIF.
        IF t169 IS NOT BOUND.
          CREATE OBJECT t169.
          t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t169->oval = t170.
        ENDIF.
      ENDIF.
    ENDIF.
    t167 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t168 i_first = t169 ).
    result = t167.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d601_ac953f6bd165.
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
