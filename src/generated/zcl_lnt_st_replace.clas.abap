* TS: src/abap/2_statements/statements/replace.ts:6:1 Replace
CLASS zcl_lnt_st_replace DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_replace IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |LENGTH|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA(t19) = |OFFSET|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
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
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = |IN|.
    CLEAR t34.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    t33 = zcl_lnt_st_combi_module=>opt( i_first = t34 ).
    CLEAR t32.
    IF t33 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      CLEAR t36.
      t37 = t33.
      TRY.
          t32 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t36 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t32 = t36->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t31 = t32.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |SECTION|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38 = t39.
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
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = t15.
    CLEAR t47.
    IF t48 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      CLEAR t49.
      t50 = t48.
      TRY.
          t47 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46 = t47.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = t1.
    CLEAR t52.
    IF t53 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t54.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      CLEAR t54.
      t55 = t53.
      TRY.
          t52 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t54 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t52 = t54->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t51 = t52.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    CREATE OBJECT t57.
    t56 = t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA(t59) = t46.
    DATA(t60) = t51.
    DATA(t61) = t56.
    t58 = zcl_lnt_st_combi_module=>per( i_first = t59 i_second = t60 i_rest = t61 ).
    t45 = t58.
    CLEAR t44.
    IF t45 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t62.
      DATA t63 TYPE REF TO object.
      CLEAR t63.
      CLEAR t62.
      t63 = t45.
      TRY.
          t44 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t62 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t44 = t62->source( ).
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
    DATA(t64) = t41.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = |OF|.
    CLEAR t65.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    t64->load( ).
    APPEND t65 TO t64->items.
    t64->save( ).
    DATA(t67) = t41.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t68.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    t67->load( ).
    APPEND t68 TO t67->items.
    t67->save( ).
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA(t71) = t31.
    DATA(t72) = t38.
    DATA(t73) = t41.
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t72 i_rest = t73 ).
    t30 = t70.
    t29 = t30.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = |OF|.
    CLEAR t79.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = t80.
    t78 = zcl_lnt_st_combi_module=>opt( i_first = t79 ).
    CLEAR t77.
    IF t78 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      CLEAR t81.
      t82 = t78.
      TRY.
          t77 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t81 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t77 = t81->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    t76 = t77.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d176_70730c0e7184.
    CLEAR t84.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    t83 = t84.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    CREATE OBJECT t87.
    t86 = t87.
    DATA(t88) = t86.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t89.
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t89->cval = t90.
    ENDIF.
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA(t92) = t76.
    DATA(t93) = t83.
    DATA(t94) = t86.
    t91 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t93 i_rest = t94 ).
    t75 = t91.
    t74 = t75.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = |IGNORING CASE|.
    CLEAR t98.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = |RESPECTING CASE|.
    CLEAR t101.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
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
    t105 = zcl_lnt_st_combi_module=>alt_prio( i_first = t106 i_second = t107 i_rest = t108 ).
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
    DATA(t113) = |REPLACEMENT COUNT|.
    CLEAR t112.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t115.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA(t120) = t111.
    DATA(t121) = t114.
    DATA(t122) = t117.
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t110 = t119.
    t109 = t110.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = |REPLACEMENT OFFSET|.
    CLEAR t126.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = t127.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t129.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t132.
    CREATE OBJECT t132.
    t131 = t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA(t134) = t125.
    DATA(t135) = t128.
    DATA(t136) = t131.
    t133 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t135 i_rest = t136 ).
    t124 = t133.
    t123 = t124.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = |REPLACEMENT LENGTH|.
    CLEAR t140.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = t141.
    t139 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t143.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t146.
    CREATE OBJECT t146.
    t145 = t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA(t148) = t139.
    DATA(t149) = t142.
    DATA(t150) = t145.
    t147 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t149 i_rest = t150 ).
    t138 = t147.
    t137 = t138.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA(t155) = |REPLACEMENT LINE|.
    CLEAR t154.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = t155.
    t153 = t154.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t157.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t160.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA(t162) = t153.
    DATA(t163) = t156.
    DATA(t164) = t159.
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t163 i_rest = t164 ).
    t152 = t161.
    t151 = t152.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = |ALL OCCURRENCES|.
    CLEAR t168.
    CREATE OBJECT t168.
    t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t168->sval = t169.
    t167 = t168.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = |ALL OCCURENCES|.
    CLEAR t171.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t174.
    CREATE OBJECT t174.
    t173 = t174.
    DATA(t175) = t173.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = |FIRST OCCURENCE|.
    CLEAR t176.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    t175->load( ).
    APPEND t176 TO t175->items.
    t175->save( ).
    DATA(t178) = t173.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = |FIRST OCCURRENCE|.
    CLEAR t179.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = t180.
    t178->load( ).
    APPEND t179 TO t178->items.
    t178->save( ).
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA(t182) = t167.
    DATA(t183) = t170.
    DATA(t184) = t173.
    t181 = zcl_lnt_st_combi_module=>alt_prio( i_first = t182 i_second = t183 i_rest = t184 ).
    t166 = t181.
    t165 = t166.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = |IN CHARACTER MODE|.
    CLEAR t188.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = t189.
    t187 = t188.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = |IN BYTE MODE|.
    CLEAR t191.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t194.
    CREATE OBJECT t194.
    t193 = t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA(t196) = t187.
    DATA(t197) = t190.
    DATA(t198) = t193.
    t195 = zcl_lnt_st_combi_module=>alt( i_first = t196 i_second = t197 i_rest = t198 ).
    t186 = t195.
    t185 = t186.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = |WITH|.
    CLEAR t202.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
    t201 = t202.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t205.
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t205->cval = t206.
    ENDIF.
    t204 = t205.
    DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t208.
    CREATE OBJECT t208.
    t207 = t208.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t209.
    DATA(t210) = t201.
    DATA(t211) = t204.
    DATA(t212) = t207.
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t210 i_second = t211 i_rest = t212 ).
    t200 = t209.
    t199 = t200.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = |INTO|.
    CLEAR t216.
    CREATE OBJECT t216.
    t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t216->sval = t217.
    t215 = t216.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA(t220) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t219.
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t219->cval = t220.
    ENDIF.
    t218 = t219.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t222.
    CREATE OBJECT t222.
    t221 = t222.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t223.
    DATA(t224) = t215.
    DATA(t225) = t218.
    DATA(t226) = t221.
    t223 = zcl_lnt_st_combi_module=>seq( i_first = t224 i_second = t225 i_rest = t226 ).
    t214 = t223.
    t213 = t214.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = |REPLACE|.
    CLEAR t229.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = t230.
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = t29.
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
    t234 = t235.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = t165.
    CLEAR t245.
    IF t246 IS BOUND.
      DATA t247 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t247.
      DATA t248 TYPE REF TO object.
      CLEAR t248.
      CLEAR t247.
      t248 = t246.
      TRY.
          t245 ?= t248.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t247 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t247 IS BOUND.
          t245 = t247->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t244 = zcl_lnt_st_combi_module=>opt( i_first = t245 ).
    CLEAR t243.
    IF t244 IS BOUND.
      DATA t249 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t249.
      DATA t250 TYPE REF TO object.
      CLEAR t250.
      CLEAR t249.
      t250 = t244.
      TRY.
          t243 ?= t250.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t243 IS NOT BOUND.
        TRY.
            t249 ?= t244.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t249 IS BOUND.
          t243 = t249->source( ).
        ENDIF.
        IF t243 IS NOT BOUND.
          CREATE OBJECT t243.
          t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t243->oval = t244.
        ENDIF.
      ENDIF.
    ENDIF.
    t242 = t243.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA(t253) = t74.
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
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t257.
    CREATE OBJECT t257.
    t256 = t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA(t259) = t242.
    DATA(t260) = t251.
    DATA(t261) = t256.
    t258 = zcl_lnt_st_combi_module=>seq( i_first = t259 i_second = t260 i_rest = t261 ).
    t241 = t258.
    CLEAR t240.
    IF t241 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t262.
      DATA t263 TYPE REF TO object.
      CLEAR t263.
      CLEAR t262.
      t263 = t241.
      TRY.
          t240 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t262 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t240 = t262->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t239 = t240.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t265.
    CREATE OBJECT t265.
    t264 = t265.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t266.
    DATA(t267) = t234.
    DATA(t268) = t239.
    DATA(t269) = t264.
    t266 = zcl_lnt_st_combi_module=>per( i_first = t267 i_second = t268 i_rest = t269 ).
    t233 = t266.
    CLEAR t232.
    IF t233 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t270.
      DATA t271 TYPE REF TO object.
      CLEAR t271.
      CLEAR t270.
      t271 = t233.
      TRY.
          t232 ?= t271.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t270 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t232 = t270->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    t231 = t232.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t273.
    CREATE OBJECT t273.
    t272 = t273.
    DATA(t274) = t272.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA(t281) = |IN|.
    CLEAR t280.
    CREATE OBJECT t280.
    t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t280->sval = t281.
    t279 = t280.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA(t286) = |TABLE|.
    CLEAR t285.
    CREATE OBJECT t285.
    t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t285->sval = t286.
    t284 = zcl_lnt_st_combi_module=>opt( i_first = t285 ).
    CLEAR t283.
    IF t284 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t287.
      DATA t288 TYPE REF TO object.
      CLEAR t288.
      CLEAR t287.
      t288 = t284.
      TRY.
          t283 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t287 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t287 IS BOUND.
          t283 = t287->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t282 = t283.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t290.
    CREATE OBJECT t290.
    t289 = t290.
    DATA(t291) = t289.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA(t293) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t292.
    IF t293 IS BOUND.
      CREATE OBJECT t292.
      t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t292->cval = t293.
    ENDIF.
    t291->load( ).
    APPEND t292 TO t291->items.
    t291->save( ).
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t294.
    DATA(t295) = t279.
    DATA(t296) = t282.
    DATA(t297) = t289.
    t294 = zcl_lnt_st_combi_module=>seq( i_first = t295 i_second = t296 i_rest = t297 ).
    t278 = t294.
    CLEAR t277.
    IF t278 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t298.
      DATA t299 TYPE REF TO object.
      CLEAR t299.
      CLEAR t298.
      t299 = t278.
      TRY.
          t277 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t298 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t277 = t298->source( ).
        ENDIF.
        IF t277 IS NOT BOUND.
          CREATE OBJECT t277.
          t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t277->oval = t278.
        ENDIF.
      ENDIF.
    ENDIF.
    t276 = zcl_lnt_st_combi_module=>opt( i_first = t277 ).
    CLEAR t275.
    IF t276 IS BOUND.
      DATA t300 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t300.
      DATA t301 TYPE REF TO object.
      CLEAR t301.
      CLEAR t300.
      t301 = t276.
      TRY.
          t275 ?= t301.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t300 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t300 IS BOUND.
          t275 = t300->source( ).
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
    DATA(t302) = t272.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = t199.
    CLEAR t308.
    IF t309 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t310.
      DATA t311 TYPE REF TO object.
      CLEAR t311.
      CLEAR t310.
      t311 = t309.
      TRY.
          t308 ?= t311.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t308 IS NOT BOUND.
        TRY.
            t310 ?= t309.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t308 = t310->source( ).
        ENDIF.
        IF t308 IS NOT BOUND.
          CREATE OBJECT t308.
          t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t308->oval = t309.
        ENDIF.
      ENDIF.
    ENDIF.
    t307 = t308.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = t213.
    CLEAR t313.
    IF t314 IS BOUND.
      DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t315.
      DATA t316 TYPE REF TO object.
      CLEAR t316.
      CLEAR t315.
      t316 = t314.
      TRY.
          t313 ?= t316.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t313 IS NOT BOUND.
        TRY.
            t315 ?= t314.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t315 IS BOUND.
          t313 = t315->source( ).
        ENDIF.
        IF t313 IS NOT BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t313->oval = t314.
        ENDIF.
      ENDIF.
    ENDIF.
    t312 = t313.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t317.
    DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t318.
    CREATE OBJECT t318.
    t317 = t318.
    DATA(t319) = t317.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = t95.
    CLEAR t320.
    IF t321 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t322.
      DATA t323 TYPE REF TO object.
      CLEAR t323.
      CLEAR t322.
      t323 = t321.
      TRY.
          t320 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t322 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t320 = t322->source( ).
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
    DATA(t324) = t317.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = t185.
    CLEAR t325.
    IF t326 IS BOUND.
      DATA t327 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t327.
      DATA t328 TYPE REF TO object.
      CLEAR t328.
      CLEAR t327.
      t328 = t326.
      TRY.
          t325 ?= t328.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t327 ?= t326.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t327 IS BOUND.
          t325 = t327->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t326.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t325 TO t324->items.
    t324->save( ).
    DATA(t329) = t317.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA(t331) = t109.
    CLEAR t330.
    IF t331 IS BOUND.
      DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t332.
      DATA t333 TYPE REF TO object.
      CLEAR t333.
      CLEAR t332.
      t333 = t331.
      TRY.
          t330 ?= t333.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t332 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t332 IS BOUND.
          t330 = t332->source( ).
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
    DATA(t334) = t317.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = t123.
    CLEAR t335.
    IF t336 IS BOUND.
      DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t337.
      DATA t338 TYPE REF TO object.
      CLEAR t338.
      CLEAR t337.
      t338 = t336.
      TRY.
          t335 ?= t338.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t335 IS NOT BOUND.
        TRY.
            t337 ?= t336.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t337 IS BOUND.
          t335 = t337->source( ).
        ENDIF.
        IF t335 IS NOT BOUND.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t335->oval = t336.
        ENDIF.
      ENDIF.
    ENDIF.
    t334->load( ).
    APPEND t335 TO t334->items.
    t334->save( ).
    DATA(t339) = t317.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = t137.
    CLEAR t340.
    IF t341 IS BOUND.
      DATA t342 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t342.
      DATA t343 TYPE REF TO object.
      CLEAR t343.
      CLEAR t342.
      t343 = t341.
      TRY.
          t340 ?= t343.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t342 ?= t341.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t342 IS BOUND.
          t340 = t342->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t341.
        ENDIF.
      ENDIF.
    ENDIF.
    t339->load( ).
    APPEND t340 TO t339->items.
    t339->save( ).
    DATA(t344) = t317.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = t151.
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
    DATA(t349) = t317.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = t1.
    CLEAR t350.
    IF t351 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t352.
      DATA t353 TYPE REF TO object.
      CLEAR t353.
      CLEAR t352.
      t353 = t351.
      TRY.
          t350 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t350 IS NOT BOUND.
        TRY.
            t352 ?= t351.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t350 = t352->source( ).
        ENDIF.
        IF t350 IS NOT BOUND.
          CREATE OBJECT t350.
          t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t350->oval = t351.
        ENDIF.
      ENDIF.
    ENDIF.
    t349->load( ).
    APPEND t350 TO t349->items.
    t349->save( ).
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t354.
    DATA(t355) = t307.
    DATA(t356) = t312.
    DATA(t357) = t317.
    t354 = zcl_lnt_st_combi_module=>per( i_first = t355 i_second = t356 i_rest = t357 ).
    t306 = t354.
    CLEAR t305.
    IF t306 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t358.
      DATA t359 TYPE REF TO object.
      CLEAR t359.
      CLEAR t358.
      t359 = t306.
      TRY.
          t305 ?= t359.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t358 ?= t306.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t305 = t358->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t306.
        ENDIF.
      ENDIF.
    ENDIF.
    t304 = zcl_lnt_st_combi_module=>opt( i_first = t305 ).
    CLEAR t303.
    IF t304 IS BOUND.
      DATA t360 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t360.
      DATA t361 TYPE REF TO object.
      CLEAR t361.
      CLEAR t360.
      t361 = t304.
      TRY.
          t303 ?= t361.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t360 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t360 IS BOUND.
          t303 = t360->source( ).
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
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA(t363) = t228.
    DATA(t364) = t231.
    DATA(t365) = t272.
    t362 = zcl_lnt_st_combi_module=>seq( i_first = t363 i_second = t364 i_rest = t365 ).
    t227 = t362.
    result = t227.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d600_5c4ef0d6a35d.
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
