* TS: src/abap/2_statements/statements/convert.ts:7:1 Convert
CLASS zcl_lnt_st_convert DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_convert IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |TIME|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = |DATE|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA(t26) = t17.
    DATA(t27) = t20.
    DATA(t28) = t23.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = |INTO|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
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
    DATA(t39) = t1.
    CLEAR t38.
    IF t39 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      CLEAR t40.
      t41 = t39.
      TRY.
          t38 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t40 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t38 = t40->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    t37 = t38.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = t15.
    CLEAR t43.
    IF t44 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      CLEAR t45.
      t46 = t44.
      TRY.
          t43 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t45 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t43 = t45->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = t43.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    CREATE OBJECT t48.
    t47 = t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA(t50) = t37.
    DATA(t51) = t42.
    DATA(t52) = t47.
    t49 = zcl_lnt_st_combi_module=>per( i_first = t50 i_second = t51 i_rest = t52 ).
    t36 = t49.
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t53.
      DATA t54 TYPE REF TO object.
      CLEAR t54.
      CLEAR t53.
      t54 = t36.
      TRY.
          t35 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t53 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t35 = t53->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = t35.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    CREATE OBJECT t56.
    t55 = t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA(t58) = t31.
    DATA(t59) = t34.
    DATA(t60) = t55.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t59 i_rest = t60 ).
    t30 = t57.
    t29 = t30.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = |DAYLIGHT SAVING TIME|.
    CLEAR t64.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t61 = t62.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = |DAYLIGHT SAVING TIME|.
    CLEAR t78.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t81.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    CREATE OBJECT t84.
    t83 = t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA(t86) = t77.
    DATA(t87) = t80.
    DATA(t88) = t83.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t87 i_rest = t88 ).
    t76 = t85.
    t75 = t76.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = |TIME ZONE|.
    CLEAR t92.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = t93.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t95.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    CREATE OBJECT t98.
    t97 = t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA(t100) = t91.
    DATA(t101) = t94.
    DATA(t102) = t97.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t100 i_second = t101 i_rest = t102 ).
    t90 = t99.
    t89 = t90.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = |TIME STAMP|.
    CLEAR t106.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA(t113) = t111.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = t89.
    CLEAR t117.
    IF t118 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t119.
      DATA t120 TYPE REF TO object.
      CLEAR t120.
      CLEAR t119.
      t120 = t118.
      TRY.
          t117 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t118.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t118.
        ENDIF.
      ENDIF.
    ENDIF.
    t116 = t117.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = t29.
    CLEAR t122.
    IF t123 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t124.
      DATA t125 TYPE REF TO object.
      CLEAR t125.
      CLEAR t124.
      t125 = t123.
      TRY.
          t122 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    t121 = t122.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    CREATE OBJECT t127.
    t126 = t127.
    DATA(t128) = t126.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = t75.
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
    t128->load( ).
    APPEND t129 TO t128->items.
    t128->save( ).
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA(t134) = t116.
    DATA(t135) = t121.
    DATA(t136) = t126.
    t133 = zcl_lnt_st_combi_module=>per( i_first = t134 i_second = t135 i_rest = t136 ).
    t115 = t133.
    CLEAR t114.
    IF t115 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t137.
      DATA t138 TYPE REF TO object.
      CLEAR t138.
      CLEAR t137.
      t138 = t115.
      TRY.
          t114 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t137 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t114 = t137->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113->load( ).
    APPEND t114 TO t113->items.
    t113->save( ).
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA(t140) = t105.
    DATA(t141) = t108.
    DATA(t142) = t111.
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t141 i_rest = t142 ).
    t104 = t139.
    t103 = t104.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = |DATE|.
    CLEAR t146.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t149.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t152.
    CREATE OBJECT t152.
    t151 = t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA(t154) = t145.
    DATA(t155) = t148.
    DATA(t156) = t151.
    t153 = zcl_lnt_st_combi_module=>seq( i_first = t154 i_second = t155 i_rest = t156 ).
    t144 = t153.
    t143 = t144.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = |TIME|.
    CLEAR t160.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = t161.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t163.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    CREATE OBJECT t166.
    t165 = t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA(t168) = t159.
    DATA(t169) = t162.
    DATA(t170) = t165.
    t167 = zcl_lnt_st_combi_module=>seq( i_first = t168 i_second = t169 i_rest = t170 ).
    t158 = t167.
    t157 = t158.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = |INTO TIME STAMP|.
    CLEAR t174.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t177.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    CREATE OBJECT t180.
    t179 = t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA(t182) = t173.
    DATA(t183) = t176.
    DATA(t184) = t179.
    t181 = zcl_lnt_st_combi_module=>seq( i_first = t182 i_second = t183 i_rest = t184 ).
    t172 = t181.
    t171 = t172.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t188.
    DATA t189 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t190.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t190 = zcl_lnt_version_module=>release_b8cd.
    DATA(t191) = |v754|.
    t189 = t190->get( p0 = t191 ).
    t188 = t189.
    CLEAR t187.
    IF t188 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t192.
      DATA t193 TYPE REF TO object.
      CLEAR t193.
      CLEAR t192.
      t193 = t188.
      TRY.
          t187 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t192 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t187 = t192->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = |INTO UTCLONG|.
    CLEAR t197.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = t198.
    t196 = t197.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t200.
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t200->cval = t201.
    ENDIF.
    t199 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t203.
    CREATE OBJECT t203.
    t202 = t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA(t205) = t196.
    DATA(t206) = t199.
    DATA(t207) = t202.
    t204 = zcl_lnt_st_combi_module=>seq( i_first = t205 i_second = t206 i_rest = t207 ).
    t195 = t204.
    CLEAR t194.
    IF t195 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      CLEAR t208.
      t209 = t195.
      TRY.
          t194 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t208 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t194 = t208->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t210.
    t186 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t187 i_first = t194 i_opts = t210 ).
    t185 = t186.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = |INTO INVERTED-DATE|.
    CLEAR t214.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t217.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    t216 = t217.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    CREATE OBJECT t220.
    t219 = t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA(t222) = t213.
    DATA(t223) = t216.
    DATA(t224) = t219.
    t221 = zcl_lnt_st_combi_module=>seq( i_first = t222 i_second = t223 i_rest = t224 ).
    t212 = t221.
    t211 = t212.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = t143.
    CLEAR t231.
    IF t232 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t233.
      DATA t234 TYPE REF TO object.
      CLEAR t234.
      CLEAR t233.
      t234 = t232.
      TRY.
          t231 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t231 IS NOT BOUND.
        TRY.
            t233 ?= t232.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t231 = t233->source( ).
        ENDIF.
        IF t231 IS NOT BOUND.
          CREATE OBJECT t231.
          t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t231->oval = t232.
        ENDIF.
      ENDIF.
    ENDIF.
    t230 = t231.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = t157.
    CLEAR t236.
    IF t237 IS BOUND.
      DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t238.
      DATA t239 TYPE REF TO object.
      CLEAR t239.
      CLEAR t238.
      t239 = t237.
      TRY.
          t236 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t238 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS BOUND.
          t236 = t238->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t235 = t236.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t241.
    CREATE OBJECT t241.
    t240 = t241.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA(t243) = t230.
    DATA(t244) = t235.
    DATA(t245) = t240.
    t242 = zcl_lnt_st_combi_module=>per( i_first = t243 i_second = t244 i_rest = t245 ).
    t229 = t242.
    CLEAR t228.
    IF t229 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t246.
      DATA t247 TYPE REF TO object.
      CLEAR t247.
      CLEAR t246.
      t247 = t229.
      TRY.
          t228 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t246 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t228 = t246->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    t227 = t228.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA(t253) = t61.
    CLEAR t252.
    IF t253 IS BOUND.
      DATA t254 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t254.
      DATA t255 TYPE REF TO object.
      CLEAR t255.
      CLEAR t254.
      t255 = t253.
      TRY.
          t252 ?= t255.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t254 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t254 IS BOUND.
          t252 = t254->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    t251 = t252.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = t171.
    CLEAR t257.
    IF t258 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t259.
      DATA t260 TYPE REF TO object.
      CLEAR t260.
      CLEAR t259.
      t260 = t258.
      TRY.
          t257 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t259 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t257 = t259->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t256 = t257.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t262.
    CREATE OBJECT t262.
    t261 = t262.
    DATA(t263) = t261.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA(t265) = t89.
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
    t263->load( ).
    APPEND t264 TO t263->items.
    t263->save( ).
    DATA(t268) = t261.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA(t270) = t211.
    CLEAR t269.
    IF t270 IS BOUND.
      DATA t271 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t271.
      DATA t272 TYPE REF TO object.
      CLEAR t272.
      CLEAR t271.
      t272 = t270.
      TRY.
          t269 ?= t272.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t269 IS NOT BOUND.
        TRY.
            t271 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t271 IS BOUND.
          t269 = t271->source( ).
        ENDIF.
        IF t269 IS NOT BOUND.
          CREATE OBJECT t269.
          t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t269->oval = t270.
        ENDIF.
      ENDIF.
    ENDIF.
    t268->load( ).
    APPEND t269 TO t268->items.
    t268->save( ).
    DATA(t273) = t261.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = t185.
    CLEAR t274.
    IF t275 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t276.
      DATA t277 TYPE REF TO object.
      CLEAR t277.
      CLEAR t276.
      t277 = t275.
      TRY.
          t274 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t274 IS NOT BOUND.
        TRY.
            t276 ?= t275.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t274 = t276->source( ).
        ENDIF.
        IF t274 IS NOT BOUND.
          CREATE OBJECT t274.
          t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t274->oval = t275.
        ENDIF.
      ENDIF.
    ENDIF.
    t273->load( ).
    APPEND t274 TO t273->items.
    t273->save( ).
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA(t279) = t251.
    DATA(t280) = t256.
    DATA(t281) = t261.
    t278 = zcl_lnt_st_combi_module=>per( i_first = t279 i_second = t280 i_rest = t281 ).
    t250 = t278.
    CLEAR t249.
    IF t250 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t282.
      DATA t283 TYPE REF TO object.
      CLEAR t283.
      CLEAR t282.
      t283 = t250.
      TRY.
          t249 ?= t283.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t282 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t249 = t282->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t248 = t249.
    DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t285.
    CREATE OBJECT t285.
    t284 = t285.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA(t287) = t227.
    DATA(t288) = t248.
    DATA(t289) = t284.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t287 i_second = t288 i_rest = t289 ).
    t226 = t286.
    t225 = t226.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA(t294) = |INVERTED-DATE|.
    CLEAR t293.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    t292 = t293.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t296.
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t296->cval = t297.
    ENDIF.
    t295 = t296.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t299.
    CREATE OBJECT t299.
    t298 = t299.
    DATA(t300) = t298.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = |INTO DATE|.
    CLEAR t301.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    t300->load( ).
    APPEND t301 TO t300->items.
    t300->save( ).
    DATA(t303) = t298.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t304.
    IF t305 IS BOUND.
      CREATE OBJECT t304.
      t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t304->cval = t305.
    ENDIF.
    t303->load( ).
    APPEND t304 TO t303->items.
    t303->save( ).
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA(t307) = t292.
    DATA(t308) = t295.
    DATA(t309) = t298.
    t306 = zcl_lnt_st_combi_module=>seq( i_first = t307 i_second = t308 i_rest = t309 ).
    t291 = t306.
    t290 = t291.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t313.
    DATA t314 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t315.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t315 = zcl_lnt_version_module=>release_b8cd.
    DATA(t316) = |v754|.
    t314 = t315->get( p0 = t316 ).
    t313 = t314.
    CLEAR t312.
    IF t313 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t317.
      DATA t318 TYPE REF TO object.
      CLEAR t318.
      CLEAR t317.
      t318 = t313.
      TRY.
          t312 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t312 IS NOT BOUND.
        TRY.
            t317 ?= t313.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t312 = t317->source( ).
        ENDIF.
        IF t312 IS NOT BOUND.
          CREATE OBJECT t312.
          t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t312->oval = t313.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = |UTCLONG|.
    CLEAR t322.
    CREATE OBJECT t322.
    t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t322->sval = t323.
    t321 = t322.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t325.
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t325->cval = t326.
    ENDIF.
    t324 = t325.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t328.
    CREATE OBJECT t328.
    t327 = t328.
    DATA(t329) = t327.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = t89.
    CLEAR t333.
    IF t334 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t335.
      DATA t336 TYPE REF TO object.
      CLEAR t336.
      CLEAR t335.
      t336 = t334.
      TRY.
          t333 ?= t336.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t333 IS NOT BOUND.
        TRY.
            t335 ?= t334.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t333 = t335->source( ).
        ENDIF.
        IF t333 IS NOT BOUND.
          CREATE OBJECT t333.
          t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t333->oval = t334.
        ENDIF.
      ENDIF.
    ENDIF.
    t332 = t333.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA(t339) = t29.
    CLEAR t338.
    IF t339 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t340.
      DATA t341 TYPE REF TO object.
      CLEAR t341.
      CLEAR t340.
      t341 = t339.
      TRY.
          t338 ?= t341.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t340 ?= t339.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t338 = t340->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t339.
        ENDIF.
      ENDIF.
    ENDIF.
    t337 = t338.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t343.
    CREATE OBJECT t343.
    t342 = t343.
    DATA(t344) = t342.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = t61.
    CLEAR t345.
    IF t346 IS BOUND.
      DATA t347 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t347.
      DATA t348 TYPE REF TO object.
      CLEAR t348.
      CLEAR t347.
      t348 = t346.
      TRY.
          t345 ?= t348.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t345 IS NOT BOUND.
        TRY.
            t347 ?= t346.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t347 IS BOUND.
          t345 = t347->source( ).
        ENDIF.
        IF t345 IS NOT BOUND.
          CREATE OBJECT t345.
          t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t345->oval = t346.
        ENDIF.
      ENDIF.
    ENDIF.
    t344->load( ).
    APPEND t345 TO t344->items.
    t344->save( ).
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t349.
    DATA(t350) = t332.
    DATA(t351) = t337.
    DATA(t352) = t342.
    t349 = zcl_lnt_st_combi_module=>per( i_first = t350 i_second = t351 i_rest = t352 ).
    t331 = t349.
    CLEAR t330.
    IF t331 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t353.
      DATA t354 TYPE REF TO object.
      CLEAR t354.
      CLEAR t353.
      t354 = t331.
      TRY.
          t330 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t353 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t330 = t353->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    t329->load( ).
    APPEND t330 TO t329->items.
    t329->save( ).
    DATA t355 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t355.
    DATA(t356) = t321.
    DATA(t357) = t324.
    DATA(t358) = t327.
    t355 = zcl_lnt_st_combi_module=>seq( i_first = t356 i_second = t357 i_rest = t358 ).
    t320 = t355.
    CLEAR t319.
    IF t320 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t359.
      DATA t360 TYPE REF TO object.
      CLEAR t360.
      CLEAR t359.
      t360 = t320.
      TRY.
          t319 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t319 IS NOT BOUND.
        TRY.
            t359 ?= t320.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t319 = t359->source( ).
        ENDIF.
        IF t319 IS NOT BOUND.
          CREATE OBJECT t319.
          t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t319->oval = t320.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t361 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t361.
    DATA(t362) = abap_true.
    IF t362 = abap_true.
      DATA t363 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t363.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t364.
      DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t365.
      DATA(t366) = abap_true.
      IF t366 = abap_true.
        DATA(t367) = |OpenABAP|.
        DATA(t368) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t368->has = abap_true.
        t368->value = t367.
        t365 = t368.
      ELSE.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        t365 = t369.
      ENDIF.
      t364 = t365.
      t363 = NEW zcl_lnt_iver_options( i_also = t364 ).
      CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
      t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t370.
      IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t370 ).
      ENDIF.
      CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
      t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t371) = |also|.
      DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t372.
      IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t371 p1 = t372 ).
      ENDIF.
      t361 = t363.
    ELSE.
      DATA t373 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t373.
      t361 = t373.
    ENDIF.
    t311 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t312 i_first = t319 i_opts = t361 ).
    t310 = t311.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA(t377) = |CONVERT|.
    CLEAR t376.
    CREATE OBJECT t376.
    t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t376->sval = t377.
    t375 = t376.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA(t383) = t103.
    CLEAR t382.
    IF t383 IS BOUND.
      DATA t384 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t384.
      DATA t385 TYPE REF TO object.
      CLEAR t385.
      CLEAR t384.
      t385 = t383.
      TRY.
          t382 ?= t385.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t382 IS NOT BOUND.
        TRY.
            t384 ?= t383.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t384 IS BOUND.
          t382 = t384->source( ).
        ENDIF.
        IF t382 IS NOT BOUND.
          CREATE OBJECT t382.
          t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t382->oval = t383.
        ENDIF.
      ENDIF.
    ENDIF.
    t381 = t382.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA(t388) = t225.
    CLEAR t387.
    IF t388 IS BOUND.
      DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t389.
      DATA t390 TYPE REF TO object.
      CLEAR t390.
      CLEAR t389.
      t390 = t388.
      TRY.
          t387 ?= t390.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t389 ?= t388.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t389 IS BOUND.
          t387 = t389->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t388.
        ENDIF.
      ENDIF.
    ENDIF.
    t386 = t387.
    DATA t391 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t392.
    CREATE OBJECT t392.
    t391 = t392.
    DATA(t393) = t391.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA(t395) = t290.
    CLEAR t394.
    IF t395 IS BOUND.
      DATA t396 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t396.
      DATA t397 TYPE REF TO object.
      CLEAR t397.
      CLEAR t396.
      t397 = t395.
      TRY.
          t394 ?= t397.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t394 IS NOT BOUND.
        TRY.
            t396 ?= t395.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t396 IS BOUND.
          t394 = t396->source( ).
        ENDIF.
        IF t394 IS NOT BOUND.
          CREATE OBJECT t394.
          t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t394->oval = t395.
        ENDIF.
      ENDIF.
    ENDIF.
    t393->load( ).
    APPEND t394 TO t393->items.
    t393->save( ).
    DATA(t398) = t391.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA(t400) = t310.
    CLEAR t399.
    IF t400 IS BOUND.
      DATA t401 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t401.
      DATA t402 TYPE REF TO object.
      CLEAR t402.
      CLEAR t401.
      t402 = t400.
      TRY.
          t399 ?= t402.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t399 IS NOT BOUND.
        TRY.
            t401 ?= t400.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t401 IS BOUND.
          t399 = t401->source( ).
        ENDIF.
        IF t399 IS NOT BOUND.
          CREATE OBJECT t399.
          t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t399->oval = t400.
        ENDIF.
      ENDIF.
    ENDIF.
    t398->load( ).
    APPEND t399 TO t398->items.
    t398->save( ).
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t403.
    DATA(t404) = t381.
    DATA(t405) = t386.
    DATA(t406) = t391.
    t403 = zcl_lnt_st_combi_module=>alt( i_first = t404 i_second = t405 i_rest = t406 ).
    t380 = t403.
    CLEAR t379.
    IF t380 IS BOUND.
      DATA t407 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t407.
      DATA t408 TYPE REF TO object.
      CLEAR t408.
      CLEAR t407.
      t408 = t380.
      TRY.
          t379 ?= t408.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t407 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t407 IS BOUND.
          t379 = t407->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t380.
        ENDIF.
      ENDIF.
    ENDIF.
    t378 = t379.
    DATA t409 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t410.
    CREATE OBJECT t410.
    t409 = t410.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t411.
    DATA(t412) = t375.
    DATA(t413) = t378.
    DATA(t414) = t409.
    t411 = zcl_lnt_st_combi_module=>seq( i_first = t412 i_second = t413 i_rest = t414 ).
    t374 = t411.
    result = t374.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d432_7686102e757b.
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
