* TS: src/abap/2_statements/statements/generate_report.ts:7:1 GenerateReport
CLASS zcl_lnt_generate_report DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_generate_report IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA(t3) = |WITHOUT SELECTION-SCREEN|.
    t2 = zcl_lnt_st_combi_module=>str( i_s = t3 ).
    t1 = t2.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |MESSAGE|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = t6.
    DATA(t16) = t9.
    DATA(t17) = t12.
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t5 = t14.
    t4 = t5.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |INCLUDE|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t24.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA(t29) = t20.
    DATA(t30) = t23.
    DATA(t31) = t26.
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t30 i_rest = t31 ).
    t19 = t28.
    t18 = t19.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = |LINE|.
    CLEAR t35.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t38.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    CREATE OBJECT t41.
    t40 = t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA(t43) = t34.
    DATA(t44) = t37.
    DATA(t45) = t40.
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t33 = t42.
    t32 = t33.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = |WORD|.
    CLEAR t49.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t52.
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA(t57) = t48.
    DATA(t58) = t51.
    DATA(t59) = t54.
    t56 = zcl_lnt_st_combi_module=>seq( i_first = t57 i_second = t58 i_rest = t59 ).
    t47 = t56.
    t46 = t47.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = |OFFSET|.
    CLEAR t63.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t66.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    CREATE OBJECT t69.
    t68 = t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA(t71) = t62.
    DATA(t72) = t65.
    DATA(t73) = t68.
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t72 i_rest = t73 ).
    t61 = t70.
    t60 = t61.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA(t76) = |WITH PRECOMPILED HEADERS|.
    t75 = zcl_lnt_st_combi_module=>str( i_s = t76 ).
    t74 = t75.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA(t79) = |WITH TEST CODE|.
    t78 = zcl_lnt_st_combi_module=>str( i_s = t79 ).
    t77 = t78.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = |MESSAGE-ID|.
    CLEAR t83.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = t84.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t86.
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t86->cval = t87.
    ENDIF.
    t85 = t86.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    CREATE OBJECT t89.
    t88 = t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA(t91) = t82.
    DATA(t92) = t85.
    DATA(t93) = t88.
    t90 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t92 i_rest = t93 ).
    t81 = t90.
    t80 = t81.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = |TRACE-FILE|.
    CLEAR t97.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = t98.
    t96 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t100.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA(t105) = t96.
    DATA(t106) = t99.
    DATA(t107) = t102.
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t106 i_rest = t107 ).
    t95 = t104.
    t94 = t95.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = |SHORTDUMP-ID|.
    CLEAR t111.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = t112.
    t110 = t111.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t114.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    CREATE OBJECT t117.
    t116 = t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA(t119) = t110.
    DATA(t120) = t113.
    DATA(t121) = t116.
    t118 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t120 i_rest = t121 ).
    t109 = t118.
    t108 = t109.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = |DIRECTORY ENTRY|.
    CLEAR t125.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t128.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t131.
    CREATE OBJECT t131.
    t130 = t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA(t133) = t124.
    DATA(t134) = t127.
    DATA(t135) = t130.
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t134 i_rest = t135 ).
    t123 = t132.
    t122 = t123.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = t1.
    CLEAR t139.
    IF t140 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t141.
      DATA t142 TYPE REF TO object.
      CLEAR t142.
      CLEAR t141.
      t142 = t140.
      TRY.
          t139 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t141 ?= t140.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t139 = t141->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    t138 = t139.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = t4.
    CLEAR t144.
    IF t145 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t146.
      DATA t147 TYPE REF TO object.
      CLEAR t147.
      CLEAR t146.
      t147 = t145.
      TRY.
          t144 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t146 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t144 = t146->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    t143 = t144.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    CREATE OBJECT t149.
    t148 = t149.
    DATA(t150) = t148.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = t18.
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
    DATA(t155) = t148.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = t94.
    CLEAR t156.
    IF t157 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t158.
      DATA t159 TYPE REF TO object.
      CLEAR t159.
      CLEAR t158.
      t159 = t157.
      TRY.
          t156 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t158 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t156 = t158->source( ).
        ENDIF.
        IF t156 IS NOT BOUND.
          CREATE OBJECT t156.
          t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t156->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t155->load( ).
    APPEND t156 TO t155->items.
    t155->save( ).
    DATA(t160) = t148.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = t32.
    CLEAR t161.
    IF t162 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t163.
      DATA t164 TYPE REF TO object.
      CLEAR t164.
      CLEAR t163.
      t164 = t162.
      TRY.
          t161 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t163 ?= t162.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t161 = t163->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t162.
        ENDIF.
      ENDIF.
    ENDIF.
    t160->load( ).
    APPEND t161 TO t160->items.
    t160->save( ).
    DATA(t165) = t148.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = t46.
    CLEAR t166.
    IF t167 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t168.
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      CLEAR t168.
      t169 = t167.
      TRY.
          t166 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t168 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t166 = t168->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t166 TO t165->items.
    t165->save( ).
    DATA(t170) = t148.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = t60.
    CLEAR t171.
    IF t172 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t173.
      DATA t174 TYPE REF TO object.
      CLEAR t174.
      CLEAR t173.
      t174 = t172.
      TRY.
          t171 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t173 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t171 = t173->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t170->load( ).
    APPEND t171 TO t170->items.
    t170->save( ).
    DATA(t175) = t148.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = t74.
    CLEAR t176.
    IF t177 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t178.
      DATA t179 TYPE REF TO object.
      CLEAR t179.
      CLEAR t178.
      t179 = t177.
      TRY.
          t176 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t178 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t176 = t178->source( ).
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
    DATA(t180) = t148.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = t77.
    CLEAR t181.
    IF t182 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t183.
      DATA t184 TYPE REF TO object.
      CLEAR t184.
      CLEAR t183.
      t184 = t182.
      TRY.
          t181 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t183 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t181 = t183->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    t180->load( ).
    APPEND t181 TO t180->items.
    t180->save( ).
    DATA(t185) = t148.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = t80.
    CLEAR t186.
    IF t187 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t188.
      DATA t189 TYPE REF TO object.
      CLEAR t189.
      CLEAR t188.
      t189 = t187.
      TRY.
          t186 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t188 ?= t187.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t186 = t188->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t187.
        ENDIF.
      ENDIF.
    ENDIF.
    t185->load( ).
    APPEND t186 TO t185->items.
    t185->save( ).
    DATA(t190) = t148.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = t108.
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
    t190->load( ).
    APPEND t191 TO t190->items.
    t190->save( ).
    DATA(t195) = t148.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA(t197) = t122.
    CLEAR t196.
    IF t197 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t198.
      DATA t199 TYPE REF TO object.
      CLEAR t199.
      CLEAR t198.
      t199 = t197.
      TRY.
          t196 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t196 IS NOT BOUND.
        TRY.
            t198 ?= t197.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t196 = t198->source( ).
        ENDIF.
        IF t196 IS NOT BOUND.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t196->oval = t197.
        ENDIF.
      ENDIF.
    ENDIF.
    t195->load( ).
    APPEND t196 TO t195->items.
    t195->save( ).
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA(t201) = t138.
    DATA(t202) = t143.
    DATA(t203) = t148.
    t200 = zcl_lnt_st_combi_module=>per( i_first = t201 i_second = t202 i_rest = t203 ).
    t137 = t200.
    t136 = t137.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = |GENERATE REPORT|.
    CLEAR t207.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = t208.
    t206 = t207.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t210.
    IF t211 IS BOUND.
      CREATE OBJECT t210.
      t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t210->cval = t211.
    ENDIF.
    t209 = t210.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t213.
    CREATE OBJECT t213.
    t212 = t213.
    DATA(t214) = t212.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = t136.
    CLEAR t217.
    IF t218 IS BOUND.
      DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t219.
      DATA t220 TYPE REF TO object.
      CLEAR t220.
      CLEAR t219.
      t220 = t218.
      TRY.
          t217 ?= t220.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t219 ?= t218.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t219 IS BOUND.
          t217 = t219->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t218.
        ENDIF.
      ENDIF.
    ENDIF.
    t216 = zcl_lnt_st_combi_module=>opt( i_first = t217 ).
    CLEAR t215.
    IF t216 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t221.
      DATA t222 TYPE REF TO object.
      CLEAR t222.
      CLEAR t221.
      t222 = t216.
      TRY.
          t215 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t215 IS NOT BOUND.
        TRY.
            t221 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t215 = t221->source( ).
        ENDIF.
        IF t215 IS NOT BOUND.
          CREATE OBJECT t215.
          t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t215->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    t214->load( ).
    APPEND t215 TO t214->items.
    t214->save( ).
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t223.
    DATA(t224) = t206.
    DATA(t225) = t209.
    DATA(t226) = t212.
    t223 = zcl_lnt_st_combi_module=>seq( i_first = t224 i_second = t225 i_rest = t226 ).
    t205 = t223.
    t204 = t205.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t227.
    DATA(t228) = |Cloud|.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = t204.
    CLEAR t229.
    IF t230 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t231.
      DATA t232 TYPE REF TO object.
      CLEAR t232.
      CLEAR t231.
      t232 = t230.
      TRY.
          t229 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t231 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t229 = t231->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t227 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t228 i_first = t229 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d509_83ce94d67b86.
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
